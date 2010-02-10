# --
# Kernel/System/CustomerUser/DB.pm - some customer user functions
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: DB.pm,v 1.80 2010-02-10 17:05:09 mb Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::CustomerUser::DB;

use strict;
use warnings;

use Crypt::PasswdMD5 qw(unix_md5_crypt);

use Kernel::System::CheckItem;
use Kernel::System::Valid;
use Kernel::System::Cache;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.80 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for (
        qw(DBObject ConfigObject LogObject PreferencesObject CustomerUserMap MainObject EncodeObject)
        )
    {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    # create valid object
    $Self->{ValidObject} = Kernel::System::Valid->new( %{$Self} );

    # create check item object
    $Self->{CheckItemObject} = Kernel::System::CheckItem->new( %{$Self} );

    # max shown user a search list
    $Self->{UserSearchListLimit} = $Self->{CustomerUserMap}->{CustomerUserSearchListLimit} || 250;

    # config options
    $Self->{CustomerTable} = $Self->{CustomerUserMap}->{Params}->{Table}
        || die "Need CustomerUser->Params->Table in Kernel/Config.pm!";
    $Self->{CustomerKey} = $Self->{CustomerUserMap}->{CustomerKey}
        || $Self->{CustomerUserMap}->{Key}
        || die "Need CustomerUser->CustomerKey in Kernel/Config.pm!";
    $Self->{CustomerID} = $Self->{CustomerUserMap}->{CustomerID}
        || die "Need CustomerUser->CustomerID in Kernel/Config.pm!";
    $Self->{ReadOnly} = $Self->{CustomerUserMap}->{ReadOnly};
    $Self->{ExcludePrimaryCustomerID}
        = $Self->{CustomerUserMap}->{CustomerUserExcludePrimaryCustomerID} || 0;
    $Self->{SearchPrefix} = $Self->{CustomerUserMap}->{CustomerUserSearchPrefix};

    if ( !defined $Self->{SearchPrefix} ) {
        $Self->{SearchPrefix} = '';
    }
    $Self->{SearchSuffix} = $Self->{CustomerUserMap}->{CustomerUserSearchSuffix};
    if ( !defined $Self->{SearchSuffix} ) {
        $Self->{SearchSuffix} = '*';
    }

    # check if CustomerKey is var or int
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( $Entry->[0] eq 'UserLogin' && $Entry->[5] =~ /^int$/i ) {
            $Self->{CustomerKeyInteger} = 1;
            last;
        }
    }

    # create cache object
    if ( $Self->{CustomerUserMap}->{CacheTTL} ) {
        $Self->{CacheObject} = Kernel::System::Cache->new( %{$Self} );

        # set cache type
        $Self->{CacheType} = 'CustomerUser' . $Param{Count};
    }

    # create new db connect if DSN is given
    if ( $Self->{CustomerUserMap}->{Params}->{DSN} ) {
        $Self->{DBObject} = Kernel::System::DB->new(
            LogObject    => $Param{LogObject},
            ConfigObject => $Param{ConfigObject},
            MainObject   => $Param{MainObject},
            EncodeObject => $Param{EncodeObject},
            DatabaseDSN  => $Self->{CustomerUserMap}->{Params}->{DSN},
            DatabaseUser => $Self->{CustomerUserMap}->{Params}->{User},
            DatabasePw   => $Self->{CustomerUserMap}->{Params}->{Password},
            %{ $Self->{CustomerUserMap}->{Params} },
        ) || die('Can\'t connect to database!');

        # remember that we have the DBObject not from parent call
        $Self->{NotParentDBObject} = 1;
    }

    return $Self;
}

sub CustomerName {
    my ( $Self, %Param ) = @_;

    my $Name = '';

    # check needed stuff
    if ( !$Param{UserLogin} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need UserLogin!" );
        return;
    }

    # build SQL string 1/2
    my $SQL = "SELECT $Self->{CustomerKey} ";
    if ( $Self->{CustomerUserMap}->{CustomerUserNameFields} ) {
        for my $Entry ( @{ $Self->{CustomerUserMap}->{CustomerUserNameFields} } ) {
            $SQL .= ", $Entry";
        }
    }
    else {
        $SQL .= " , first_name, last_name ";
    }
    $SQL .= " FROM $Self->{CustomerTable} WHERE ";

    # check CustomerKey type
    if ( $Self->{CustomerKeyInteger} ) {
        if ( $Param{UserLogin} !~ /^(\+|\-|)\d{1,16}$/ ) {
            return;
        }
        $SQL
            .= "$Self->{CustomerKey} = " . $Self->{DBObject}->Quote( $Param{UserLogin}, 'Integer' );
    }
    else {
        $SQL .= "LOWER($Self->{CustomerKey}) = LOWER('"
            . $Self->{DBObject}->Quote( $Param{UserLogin} ) . "')";
    }

    # check cache
    if ( $Self->{CacheObject} ) {
        my $Name = $Self->{CacheObject}->Get(
            Type => $Self->{CacheType},
            Key  => "CustomerName::$SQL",
        );
        if ( defined $Name ) {
            return $Name;
        }
    }

    # get data
    $Self->{DBObject}->Prepare( SQL => $SQL, Limit => 1 );
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        for my $Position ( 1 .. 8 ) {
            if ( $Row[$Position] ) {
                if ( !$Name ) {
                    $Name = $Row[$Position];
                }
                else {
                    $Name .= ' ' . $Row[$Position];
                }
            }
        }
    }

    # cache request
    if ( $Self->{CacheObject} ) {
        $Self->{CacheObject}->Set(
            Type  => $Self->{CacheType},
            Key   => "CustomerName::$SQL",
            Value => $Name,
            TTL   => $Self->{CustomerUserMap}->{CacheTTL},
        );
    }
    return $Name;
}

sub CustomerSearch {
    my ( $Self, %Param ) = @_;

    my %Users;
    my $Valid = defined $Param{Valid} ? $Param{Valid} : 1;

    # check needed stuff
    if ( !$Param{Search} && !$Param{UserLogin} && !$Param{PostMasterSearch} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need Search, UserLogin or PostMasterSearch!",
        );
        return;
    }

    # build SQL string 1/2
    my $SQL = "SELECT $Self->{CustomerKey} ";
    if ( $Self->{CustomerUserMap}->{CustomerUserListFields} ) {
        for my $Entry ( @{ $Self->{CustomerUserMap}->{CustomerUserListFields} } ) {
            $SQL .= ", $Entry";
        }
    }
    else {
        $SQL .= " , first_name, last_name, email ";
    }

    # build SQL string 2/2
    $SQL .= " FROM $Self->{CustomerTable} WHERE ";
    if ( $Param{Search} ) {
        if ( !$Self->{CustomerUserMap}->{CustomerUserSearchFields} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message =>
                    "Need CustomerUserSearchFields in CustomerUser config, unable to search for '$Param{Search}'!",
            );
            return;
        }
        $SQL .= $Self->{DBObject}->QueryCondition(
            Key          => $Self->{CustomerUserMap}->{CustomerUserSearchFields},
            Value        => $Param{Search},
            SearchPrefix => $Self->{SearchPrefix},
            SearchSuffix => $Self->{SearchSuffix},
        ) . ' ';
    }
    elsif ( $Param{PostMasterSearch} ) {
        if ( $Self->{CustomerUserMap}->{CustomerUserPostMasterSearchFields} ) {
            my $SQLExt = '';
            for my $Field ( @{ $Self->{CustomerUserMap}->{CustomerUserPostMasterSearchFields} } ) {
                if ($SQLExt) {
                    $SQLExt .= ' OR ';
                }
                $SQLExt .= " LOWER($Field) LIKE LOWER('"
                    . $Self->{DBObject}->Quote( $Param{PostMasterSearch}, 'Like' ) . "') ";
            }
            $SQL .= $SQLExt;
        }
    }
    elsif ( $Param{UserLogin} ) {

        # check CustomerKey type
        if ( $Self->{CustomerKeyInteger} ) {
            if ( $Param{UserLogin} !~ /^(\+|\-|)\d{1,16}$/ ) {
                return;
            }
            $SQL .= "$Self->{CustomerKey} = "
                . $Self->{DBObject}->Quote( $Param{UserLogin}, 'Integer' );
        }
        else {
            $Param{UserLogin} =~ s/\*/%/g;
            $SQL .= "LOWER($Self->{CustomerKey}) LIKE LOWER('"
                . $Self->{DBObject}->Quote( $Param{UserLogin}, 'Like' ) . "')";
        }
    }

    # add valid option
    if ( $Self->{CustomerUserMap}->{CustomerValid} && $Valid ) {
        $SQL .= " AND "
            . $Self->{CustomerUserMap}->{CustomerValid}
            . " IN (" . join( ', ', $Self->{ValidObject}->ValidIDsGet() ) . ") ";
    }

    # check cache
    if ( $Self->{CacheObject} ) {
        my $Users = $Self->{CacheObject}->Get(
            Type => $Self->{CacheType},
            Key  => "CustomerSearch::$SQL",
        );
        if ($Users) {
            return %{$Users};
        }
    }

    # get data
    $Self->{DBObject}->Prepare( SQL => $SQL, Limit => $Self->{UserSearchListLimit} );
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        if ( !$Users{ $Row[0] } ) {
            for my $Position ( 1 .. 8 ) {
                if ( $Row[$Position] ) {
                    $Users{ $Row[0] } .= $Row[$Position] . ' ';
                }
            }
            $Users{ $Row[0] } =~ s/^(.*)\s(.+?\@.+?\..+?)(\s|)$/"$1" <$2>/;
        }
    }

    # cache request
    if ( $Self->{CacheObject} ) {
        $Self->{CacheObject}->Set(
            Type  => $Self->{CacheType},
            Key   => "CustomerSearch::$SQL",
            Value => \%Users,
            TTL   => $Self->{CustomerUserMap}->{CacheTTL},
        );
    }
    return %Users;
}

sub CustomerUserList {
    my ( $Self, %Param ) = @_;

    my $Valid = defined $Param{Valid} ? $Param{Valid} : 1;

    # check cache
    if ( $Self->{CacheObject} ) {
        my $Users = $Self->{CacheObject}->Get(
            Type => $Self->{CacheType},
            Key  => "CustomerUserList::$Valid",
        );
        if ($Users) {
            return %{$Users};
        }
    }

    # do not use valid option if no valid option is used
    if ( !$Self->{CustomerUserMap}->{CustomerValid} ) {
        $Valid = 0;
    }

    # get data
    my %Users = $Self->{DBObject}->GetTableData(
        What  => "$Self->{CustomerKey}, $Self->{CustomerKey}, $Self->{CustomerID}",
        Table => $Self->{CustomerTable},
        Clamp => 1,
        Valid => $Valid,
    );

    # cache request
    if ( $Self->{CacheObject} ) {
        $Self->{CacheObject}->Set(
            Type  => $Self->{CacheType},
            Key   => "CustomerUserList::$Valid",
            Value => \%Users,
            TTL   => $Self->{CustomerUserMap}->{CacheTTL},
        );
    }
    return %Users;
}

sub CustomerIDs {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{User} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need User!" );
        return;
    }

    # check cache
    if ( $Self->{CacheObject} ) {
        my $CustomerIDs = $Self->{CacheObject}->Get(
            Type => $Self->{CacheType},
            Key  => "CustomerIDs::$Param{User}",
        );
        if ($CustomerIDs) {
            return @{$CustomerIDs};
        }
    }

    # get customer data
    my %Data = $Self->CustomerUserDataGet( User => $Param{User} );

    # there are multi customer ids
    my @CustomerIDs;
    if ( $Data{UserCustomerIDs} ) {

        # used seperators
        for my $Split ( ';', ',', '|' ) {

            # next if seperator is not there
            next if $Data{UserCustomerIDs} !~ /\Q$Split\E/;

            # split it
            my @IDs = split /\Q$Split\E/, $Data{UserCustomerIDs};
            for my $ID (@IDs) {
                $ID =~ s/^\s+//g;
                $ID =~ s/\s+$//g;
                push @CustomerIDs, $ID;
            }
            last;
        }

        # fallback if no seperator got found
        if ( !@CustomerIDs ) {
            $Data{UserCustomerIDs} =~ s/^\s+//g;
            $Data{UserCustomerIDs} =~ s/\s+$//g;
            push @CustomerIDs, $Data{UserCustomerIDs};
        }
    }

    # use also the primary customer id
    if ( $Data{UserCustomerID} && !$Self->{ExcludePrimaryCustomerID} ) {
        push @CustomerIDs, $Data{UserCustomerID};
    }

    # cache request
    if ( $Self->{CacheObject} ) {
        $Self->{CacheObject}->Set(
            Type  => $Self->{CacheType},
            Key   => "CustomerIDs::$Param{User}",
            Value => \@CustomerIDs,
            TTL   => $Self->{CustomerUserMap}->{CacheTTL},
        );
    }
    return @CustomerIDs;
}

sub CustomerUserDataGet {
    my ( $Self, %Param ) = @_;

    my %Data;

    # check needed stuff
    if ( !$Param{User} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need User!" );
        return;
    }

    # build select
    my $SQL = "SELECT ";
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        $SQL .= " $Entry->[2], ";
    }
    $SQL .= $Self->{CustomerKey} . " FROM $Self->{CustomerTable} WHERE ";

    # check cache
    if ( $Self->{CacheObject} ) {
        my $Data = $Self->{CacheObject}->Get(
            Type => $Self->{CacheType},
            Key  => "CustomerUserDataGet::$Param{User}",
        );
        if ($Data) {
            return %{$Data};
        }
    }

    # check CustomerKey type
    if ( $Self->{CustomerKeyInteger} ) {
        if ( $Param{User} !~ /^(\+|\-|)\d{1,16}$/ ) {
            return;
        }
        $SQL .= "$Self->{CustomerKey} = " . $Self->{DBObject}->Quote( $Param{User}, 'Integer' );
    }
    else {
        $SQL .= "LOWER($Self->{CustomerKey}) = LOWER('"
            . $Self->{DBObject}->Quote( $Param{User} ) . "')";
    }

    # get initial data
    $Self->{DBObject}->Prepare( SQL => $SQL );
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        my $MapCounter = 0;
        for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
            $Data{ $Entry->[0] } = $Row[$MapCounter];
            $MapCounter++;
        }
    }

    # check data
    if ( !$Data{UserLogin} ) {

        # cache request
        if ( $Self->{CacheObject} ) {
            $Self->{CacheObject}->Set(
                Type  => $Self->{CacheType},
                Key   => "CustomerUserDataGet::$Param{User}",
                Value => {},
                TTL   => $Self->{CustomerUserMap}->{CacheTTL},
            );
        }
        return;
    }

    # compat!
    $Data{UserID} = $Data{UserLogin};

    # get preferences
    my %Preferences = $Self->{PreferencesObject}->GetPreferences( UserID => $Data{UserID} );

    # cache request
    if ( $Self->{CacheObject} ) {
        $Self->{CacheObject}->Set(
            Type  => $Self->{CacheType},
            Key   => "CustomerUserDataGet::$Param{User}",
            Value => { %Data, %Preferences },
            TTL   => $Self->{CustomerUserMap}->{CacheTTL},
        );
    }

    # return data
    return ( %Data, %Preferences );
}

sub CustomerUserAdd {
    my ( $Self, %Param ) = @_;

    # check ro/rw
    if ( $Self->{ReadOnly} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Customer backend is ro!" );
        return;
    }

    # check needed stuff
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( !$Param{ $Entry->[0] } && $Entry->[4] ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $Entry->[0]!" );
            return;
        }
    }
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need UserID!' );
        return;
    }

    # just if no UserLogin is given
    if ( !$Param{UserLogin} && $Self->{CustomerUserMap}->{AutoLoginCreation} ) {
        my ( $Sec, $Min, $Hour, $Day, $Month, $Year, $WDay ) = localtime( time() );
        $Year  = $Year - 100;
        $Year  = "0$Year" if ( $Year < 10 );
        $Month = $Month + 1;
        $Month = "0$Month" if ( $Month < 10 );
        $Day   = "0$Day" if ( $Day < 10 );
        $Hour  = "0$Hour" if ( $Hour < 10 );
        $Min   = "0$Min" if ( $Min < 10 );
        my $Prefix = $Self->{CustomerUserMap}->{AutoLoginCreationPrefix} || 'auto';
        $Param{UserLogin} = "$Prefix-$Year$Month$Day$Hour$Min" . int( rand(99) );
    }

    # check if user login exists
    if ( !$Param{UserLogin} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need UserLogin!' );
        return;
    }

    # check email address if already exists
    if ( $Param{UserEmail} && $Self->{CustomerUserMap}->{CustomerUserEmailUniqCheck} ) {
        my %Result = $Self->CustomerSearch(
            Valid            => 1,
            PostMasterSearch => $Param{UserEmail},
        );
        if (%Result) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => 'Email already exists!',
            );
            return;
        }
    }

    # check email address mx
    if (
        $Param{UserEmail}
        && !$Self->{CheckItemObject}->CheckEmail( Address => $Param{UserEmail} )
        )
    {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Email address ($Param{UserEmail}) not valid ("
                . $Self->{CheckItemObject}->CheckError() . ")!",
        );
        return;
    }

    # quote values
    my %Value;
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( $Entry->[5] =~ /^int$/i ) {
            if ( $Param{ $Entry->[0] } ) {
                $Value{ $Entry->[0] }
                    = $Self->{DBObject}->Quote( $Param{ $Entry->[0] }, 'Integer' );
            }
            else {
                $Value{ $Entry->[0] } = 0;
            }
        }
        else {
            if ( $Param{ $Entry->[0] } ) {
                $Value{ $Entry->[0] }
                    = "'" . $Self->{DBObject}->Quote( $Param{ $Entry->[0] } ) . "'";
            }
            else {
                $Value{ $Entry->[0] } = "''";
            }
        }
    }

    # build insert
    my $SQL = "INSERT INTO $Self->{CustomerTable} (";
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( $Entry->[0] !~ /^UserPassword$/i ) {
            $SQL .= " $Entry->[2], ";
        }
    }
    $SQL .= "create_time, create_by, change_time, change_by)";
    $SQL .= " VALUES (";
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( $Entry->[0] !~ /^UserPassword$/i ) {
            $SQL .= " $Value{ $Entry->[0] }, ";
        }
    }
    $SQL .= "current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
    return if !$Self->{DBObject}->Do( SQL => $SQL );

    # log notice
    $Self->{LogObject}->Log(
        Priority => 'notice',
        Message  => "CustomerUser: '$Param{UserLogin}' created successfully ($Param{UserID})!",
    );

    # set password
    if ( $Param{UserPassword} ) {
        $Self->SetPassword( UserLogin => $Param{UserLogin}, PW => $Param{UserPassword} );
    }

    # cache reset
    if ( $Self->{CacheObject} ) {
        $Self->{CacheObject}->Delete(
            Type => $Self->{CacheType},
            Key  => "CustomerUserDataGet::$Param{UserLogin}",
        );
    }

    return $Param{UserLogin};
}

sub CustomerUserUpdate {
    my ( $Self, %Param ) = @_;

    # check ro/rw
    if ( $Self->{ReadOnly} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Customer backend is ro!' );
        return;
    }

    # check needed stuff
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( !$Param{ $Entry->[0] } && $Entry->[4] && $Entry->[0] ne 'UserPassword' ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $Entry->[0]!" );
            return;
        }
    }

    # check email address
    if (
        $Param{UserEmail}
        && !$Self->{CheckItemObject}->CheckEmail( Address => $Param{UserEmail} )
        )
    {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Email address ($Param{UserEmail}) not valid ("
                . $Self->{CheckItemObject}->CheckError() . ")!",
        );
        return;
    }

    # get old user data (pw)
    my %UserData = $Self->CustomerUserDataGet( User => $Param{ID} );

    # quote values
    my %Value;
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( $Entry->[5] =~ /^int$/i ) {
            if ( $Param{ $Entry->[0] } ) {
                $Value{ $Entry->[0] }
                    = $Self->{DBObject}->Quote( $Param{ $Entry->[0] }, 'Integer' );
            }
            else {
                $Value{ $Entry->[0] } = 0;
            }
        }
        else {
            if ( $Param{ $Entry->[0] } ) {
                $Value{ $Entry->[0] }
                    = "'" . $Self->{DBObject}->Quote( $Param{ $Entry->[0] } ) . "'";
            }
            else {
                $Value{ $Entry->[0] } = "''";
            }
        }
    }

    # update db
    my $SQL = "UPDATE $Self->{CustomerTable} SET ";
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( $Entry->[0] !~ /^UserPassword$/i ) {
            $SQL .= " $Entry->[2] = $Value{ $Entry->[0] }, ";
        }
    }
    $SQL .= " change_time = current_timestamp, ";
    $SQL .= " change_by = $Param{UserID} ";
    $SQL .= " WHERE ";

    # check CustomerKey type
    if ( $Self->{CustomerKeyInteger} ) {
        if ( $Param{ID} !~ /^(\+|\-|)\d{1,16}$/ ) {
            return;
        }
        $SQL .= "$Self->{CustomerKey} = " . $Self->{DBObject}->Quote( $Param{ID}, 'Integer' );
    }
    else {
        $SQL .= "LOWER($Self->{CustomerKey}) = LOWER('"
            . $Self->{DBObject}->Quote( $Param{ID} ) . "')";
    }

    return if !$Self->{DBObject}->Do( SQL => $SQL );

    # check if we need to update Customer Preferences
    if ( $Param{UserLogin} ne $UserData{UserLogin} ) {

        # preferences table data
        $Self->{PreferencesTable}
            = $Self->{ConfigObject}->Get('CustomerPreferences')->{Params}->{Table}
            || 'customer_preferences';
        $Self->{PreferencesTableUserID}
            = $Self->{ConfigObject}->Get('CustomerPreferences')->{Params}->{TableUserID}
            || 'user_id';

        # update the preferences
        return if !$Self->{DBObject}->Prepare(
            SQL => "UPDATE $Self->{PreferencesTable} "
                . "SET $Self->{PreferencesTableUserID} = ? "
                . "WHERE $Self->{PreferencesTableUserID} = ?",
            Bind => [ \$Param{UserLogin}, \$Param{ID}, ],
        );
    }

    # log notice
    $Self->{LogObject}->Log(
        Priority => 'notice',
        Message  => "CustomerUser: '$Param{UserLogin}' updated successfully ($Param{UserID})!",
    );

    # check pw
    if ( $Param{UserPassword} ) {
        $Self->SetPassword( UserLogin => $Param{UserLogin}, PW => $Param{UserPassword} );
    }

    # cache reset
    if ( $Self->{CacheObject} ) {
        $Self->{CacheObject}->Delete(
            Type => $Self->{CacheType},
            Key  => "CustomerUserDataGet::$Param{UserLogin}",
        );
    }
    return 1;
}

sub SetPassword {
    my ( $Self, %Param ) = @_;

    my $Login = $Param{UserLogin};
    my $Pw = $Param{PW} || '';

    # check ro/rw
    if ( $Self->{ReadOnly} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Customer backend is ro!' );
        return;
    }

    # check needed stuff
    if ( !$Param{UserLogin} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need UserLogin!' );
        return;
    }
    my $CryptedPw = '';

    # get crypt type
    my $CryptType = $Self->{ConfigObject}->Get('Customer::AuthModule::DB::CryptType') || '';

    # crypt plain (no crypt at all)
    if ( $CryptType eq 'plain' ) {
        $CryptedPw = $Pw;
    }

    # crypt with unix crypt
    elsif ( $CryptType eq 'crypt' ) {

        # crypt given pw (unfortunately there is a mod_perl2 bug on RH8 - check if
        # crypt() is working correctly) :-/
        if ( crypt( 'root', 'root@localhost' ) eq 'roK20XGbWEsSM' ) {

            # encode output, needed by crypt() only non utf8 signs
            $Self->{EncodeObject}->EncodeOutput( \$Pw );
            $Self->{EncodeObject}->EncodeOutput( \$Login );

            $CryptedPw = crypt( $Pw, $Login );
            $Self->{EncodeObject}->Encode( \$CryptedPw );
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message =>
                    'The crypt() of your mod_perl(2) is not working correctly! Update mod_perl!',
            );
            my $TempUser = quotemeta($Login);
            my $TempPw   = quotemeta($Pw);
            my $CMD      = "perl -e \"print crypt('$TempPw', '$TempUser');\"";
            open( IO, " $CMD | " ) || print STDERR "Can't open $CMD: $!";
            while (<IO>) {
                $CryptedPw .= $_;
            }
            close(IO);
            chomp $CryptedPw;
        }
    }

    # crypt with md5 crypt
    else {

        # encode output, needed by unix_md5_crypt() only non utf8 signs
        $Self->{EncodeObject}->EncodeOutput( \$Pw );
        $Self->{EncodeObject}->EncodeOutput( \$Login );

        $CryptedPw = unix_md5_crypt( $Pw, $Login );
        $Self->{EncodeObject}->Encode( \$CryptedPw );
    }

    # update db
    for my $Entry ( @{ $Self->{CustomerUserMap}->{Map} } ) {
        if ( $Entry->[0] =~ /^UserPassword$/i ) {
            $Param{PasswordCol} = $Entry->[2];
        }
        if ( $Entry->[0] =~ /^UserLogin$/i ) {
            $Param{LoginCol} = $Entry->[2];
        }
    }

    # check if needed pw col. exists (else there is no pw col.)
    if ( $Param{PasswordCol} && $Param{LoginCol} ) {
        my $SQL = "UPDATE $Self->{CustomerTable} SET "
            . " $Param{PasswordCol} = '" . $Self->{DBObject}->Quote($CryptedPw) . "' "
            . " WHERE ";

        # check CustomerKey type
        if ( $Self->{CustomerKeyInteger} ) {
            if ( $Param{UserLogin} !~ /^(\+|\-|)\d{1,16}$/ ) {
                return;
            }
            $SQL
                .= "$Param{LoginCol} = " . $Self->{DBObject}->Quote( $Param{UserLogin}, 'Integer' );
        }
        else {
            $SQL .= "LOWER($Param{LoginCol}) = LOWER('"
                . $Self->{DBObject}->Quote( $Param{UserLogin} ) . "')";

        }
        return if !$Self->{DBObject}->Do( SQL => $SQL );

        # log notice
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message  => "CustomerUser: '$Param{UserLogin}' changed password successfully!",
        );

        # cache reset
        if ( $Self->{CacheObject} ) {
            $Self->{CacheObject}->Delete(
                Type => $Self->{CacheType},
                Key  => "CustomerUserDataGet::$Param{UserLogin}",
            );
        }
        return 1;
    }

    # need no pw to set
    return 1;
}

sub GenerateRandomPassword {
    my ( $Self, %Param ) = @_;

    # Generated passwords are eight characters long by default.
    my $Size = $Param{Size} || 8;

    # The list of characters that can appear in a randomly generated password.
    # Note that users can put any character into a password they choose themselves.
    my @PwChars
        = ( 0 .. 9, 'A' .. 'Z', 'a' .. 'z', '-', '_', '!', '@', '#', '$', '%', '^', '&', '*' );

    # The number of characters in the list.
    my $PwCharsLen = scalar(@PwChars);

    # Generate the password.
    my $Password = '';
    for ( my $i = 0; $i < $Size; $i++ ) {
        $Password .= $PwChars[ rand($PwCharsLen) ];
    }

    # Return the password.
    return $Password;
}

sub DESTROY {
    my $Self = shift;

    # disconnect if it's not a parent DBObject
    if ( $Self->{NotParentDBObject} ) {
        if ( $Self->{DBObject} ) {
            $Self->{DBObject}->Disconnect();
        }
    }
    return 1;
}

1;
