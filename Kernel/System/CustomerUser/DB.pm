# --
# Kernel/System/CustomerUser/DB.pm - some customer user functions
# Copyright (C) 2001-2006 OTRS GmbH, http://otrs.org/
# --
# $Id: DB.pm,v 1.40 2006-10-12 14:27:39 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::CustomerUser::DB;

use strict;
use Kernel::System::CheckItem;
use Crypt::PasswdMD5 qw(unix_md5_crypt);

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.40 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);
    # check needed objects
    foreach (qw(DBObject ConfigObject LogObject PreferencesObject CustomerUserMap)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    # max shown user a search list
    $Self->{UserSearchListLimit} = $Self->{CustomerUserMap}->{'CustomerUserSearchListLimit'} || 250;
    # config options
    $Self->{CustomerTable} = $Self->{CustomerUserMap}->{Params}->{Table}
        || die "Need CustomerUser->Params->Table in Kernel/Config.pm!";
    $Self->{CustomerKey} = $Self->{CustomerUserMap}->{CustomerKey}
        || $Self->{CustomerUserMap}->{Key}
        || die "Need CustomerUser->CustomerKey in Kernel/Config.pm!";
    $Self->{CustomerID} = $Self->{CustomerUserMap}->{CustomerID}
        || die "Need CustomerUser->CustomerID in Kernel/Config.pm!";
    $Self->{ReadOnly} = $Self->{CustomerUserMap}->{ReadOnly};
    $Self->{ExcludePrimaryCustomerID} = $Self->{CustomerUserMap}->{CustomerUserExcludePrimaryCustomerID} || 0;
    $Self->{SearchPrefix} = $Self->{CustomerUserMap}->{'CustomerUserSearchPrefix'};
    if (!defined($Self->{SearchPrefix})) {
        $Self->{SearchPrefix} = '';
    }
    $Self->{SearchSuffix} = $Self->{CustomerUserMap}->{'CustomerUserSearchSuffix'};
    if (!defined($Self->{SearchSuffix})) {
        $Self->{SearchSuffix} = '*';
    }

    # create new db connect if DSN is given
    if ($Self->{CustomerUserMap}->{Params}->{DSN}) {
        $Self->{DBObject} = Kernel::System::DB->new(
            LogObject => $Param{LogObject},
            ConfigObject => $Param{ConfigObject},
            DatabaseDSN => $Self->{CustomerUserMap}->{Params}->{DSN},
            DatabaseUser => $Self->{CustomerUserMap}->{Params}->{User},
            DatabasePw => $Self->{CustomerUserMap}->{Params}->{Password},
        ) || die ('Can\'t connect to database!');
        # remember that we have the DBObject not from parent call
        $Self->{NotParentDBObject} = 1;
    }
    # create check item object
    $Self->{CheckItemObject} = Kernel::System::CheckItem->new(%Param);
    return $Self;
}

sub CustomerName {
    my $Self = shift;
    my %Param = @_;
    my $Name = '';
    # check needed stuff
    if (!$Param{UserLogin}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need UserLogin!");
        return;
    }
    # build SQL string 1/2
    my $SQL = "SELECT $Self->{CustomerKey} ";
    if ($Self->{CustomerUserMap}->{CustomerUserNameFields}) {
        foreach my $Entry (@{$Self->{CustomerUserMap}->{CustomerUserNameFields}}) {
            $SQL .= ", $Entry";
        }
    }
    else {
        $SQL .= " , first_name, last_name ";
    }
    $SQL .= " FROM $Self->{CustomerTable} WHERE ".
        " $Self->{CustomerKey} = '".$Self->{DBObject}->Quote($Param{UserLogin})."'";
    # get data
    $Self->{DBObject}->Prepare(SQL => $SQL, Limit => 1);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        foreach (1..8) {
            if ($Row[$_]) {
                if (!$Name) {
                    $Name = $Row[$_];
                }
                else {
                    $Name .= ' '.$Row[$_];
                }
            }
        }
    }
    return $Name;
}

sub CustomerSearch {
    my $Self = shift;
    my %Param = @_;
    my %Users = ();
    my $Valid = defined $Param{Valid} ? $Param{Valid} : 1;
    # check needed stuff
    if (!$Param{Search} && !$Param{UserLogin} && !$Param{PostMasterSearch}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Search, UserLogin or PostMasterSearch!");
        return;
    }
    # build SQL string 1/2
    my $SQL = "SELECT $Self->{CustomerKey} ";
    if ($Self->{CustomerUserMap}->{CustomerUserListFields}) {
        foreach my $Entry (@{$Self->{CustomerUserMap}->{CustomerUserListFields}}) {
            $SQL .= ", $Entry";
        }
    }
    else {
        $SQL .= " , first_name, last_name, email ";
    }
    # build SQL string 2/2
    $SQL .= " FROM " .
        " $Self->{CustomerTable} ".
        " WHERE ";
    if ($Param{Search}) {
        my $Count = 0;
        my @Parts = split(/\+/, $Param{Search}, 6);
        foreach my $Part (@Parts) {
            $Part = $Self->{SearchPrefix}.$Part.$Self->{SearchSuffix};
            $Part =~ s/\*/%/g;
            $Part =~ s/%%/%/g;
            if ($Count) {
                $SQL .= " AND ";
            }
            $Count ++;
            if ($Self->{CustomerUserMap}->{CustomerUserSearchFields}) {
                my $SQLExt = '';
                foreach (@{$Self->{CustomerUserMap}->{CustomerUserSearchFields}}) {
                    if ($SQLExt) {
                        $SQLExt .= ' OR ';
                    }
                    $SQLExt .= " LOWER($_) LIKE LOWER('".$Self->{DBObject}->Quote($Part)."') ";
                }
                if ($SQLExt) {
                    $SQL .= "($SQLExt)";
                }
            }
            else {
                $SQL .= " LOWER($Self->{CustomerKey}) LIKE LOWER('".$Self->{DBObject}->Quote($Part)."') ";
            }
        }
    }
    elsif ($Param{PostMasterSearch}) {
        if ($Self->{CustomerUserMap}->{CustomerUserPostMasterSearchFields}) {
            my $SQLExt = '';
            foreach (@{$Self->{CustomerUserMap}->{CustomerUserPostMasterSearchFields}}) {
                if ($SQLExt) {
                    $SQLExt .= ' OR ';
                }
                $SQLExt .= " LOWER($_) LIKE LOWER('".$Self->{DBObject}->Quote($Param{PostMasterSearch})."') ";
            }
            $SQL .= $SQLExt;
        }
    }
    elsif ($Param{UserLogin}) {
        $Param{UserLogin} =~ s/\*/%/g;
        $SQL .= " LOWER($Self->{CustomerKey}) LIKE LOWER('".$Self->{DBObject}->Quote($Param{UserLogin})."')";
    }
    # add valid option
    if ($Self->{CustomerUserMap}->{CustomerValid} && $Valid) {
        $SQL .= "AND ".$Self->{CustomerUserMap}->{CustomerValid}.
        " IN ( ${\(join ', ', $Self->{DBObject}->GetValidIDs())} ) ";
    }
    # get data
    $Self->{DBObject}->Prepare(SQL => $SQL, Limit => $Self->{UserSearchListLimit});
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
         foreach (1..8) {
             if ($Row[$_]) {
                  $Users{$Row[0]} .= $Row[$_].' ';
             }
         }
         $Users{$Row[0]} =~ s/^(.*)\s(.+?\@.+?\..+?)(\s|)$/"$1" <$2>/;
    }
    return %Users;
}

sub CustomerUserList {
    my $Self = shift;
    my %Param = @_;
    my $Valid = defined $Param{Valid} ? $Param{Valid} : 1;
    # get data
    my %Users = $Self->{DBObject}->GetTableData(
        What => "$Self->{CustomerKey}, $Self->{CustomerKey}, $Self->{CustomerID}",
        Table => $Self->{CustomerTable},
        Clamp => 1,
        Valid => $Valid,
    );
    return %Users;
}

sub CustomerIDs {
    my $Self = shift;
    my %Param = @_;
    my @CustomerIDs = ();
    # check needed stuff
    if (!$Param{User}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need User!");
        return;
    }
    # get customer data
    my %Data = $Self->CustomerUserDataGet(
        User => $Param{User},
    );
    # there are multi customer ids
    if ($Data{UserCustomerIDs}) {
        foreach my $Split (';', ',', '|') {
            if ($Data{UserCustomerIDs} =~ /$Split/) {
                my @IDs = split(/$Split/, $Data{UserCustomerIDs});
                foreach my $ID (@IDs) {
                    $ID =~ s/^\s+//g;
                    $ID =~ s/\s+$//g;
                    push (@CustomerIDs, $ID);
                }
            }
            else {
                $Data{UserCustomerIDs} =~ s/^\s+//g;
                $Data{UserCustomerIDs} =~ s/\s+$//g;
                push (@CustomerIDs, $Data{UserCustomerIDs});
            }
        }
    }
    # use also the primary customer id
    if ($Data{UserCustomerID} && !$Self->{ExcludePrimaryCustomerID}) {
        push (@CustomerIDs, $Data{UserCustomerID});
    }
    return @CustomerIDs;
}

sub CustomerUserDataGet {
    my $Self = shift;
    my %Param = @_;
    my %Data;
    # check needed stuff
    if (!$Param{User} && !$Param{CustomerID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need User or CustomerID!");
        return;
    }
    # build select
    my $SQL = "SELECT ";
    foreach my $Entry (@{$Self->{CustomerUserMap}->{Map}}) {
        $SQL .= " $Entry->[2], ";
    }
    $SQL .= $Self->{CustomerKey}." FROM $Self->{CustomerTable} WHERE ";
    if ($Param{User}) {
        $SQL .= $Self->{CustomerKey}." = '".$Self->{DBObject}->Quote($Param{User})."'";
    }
    elsif ($Param{CustomerID}) {
        $SQL .= $Self->{CustomerID}." = '".$Self->{DBObject}->Quote($Param{CustomerID})."'";
    }
    # get inital data
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my $MapCounter = 0;
        foreach my $Entry (@{$Self->{CustomerUserMap}->{Map}}) {
            $Data{$Entry->[0]} = $Row[$MapCounter];
            $MapCounter++;
        }
    }
    # check data
    if (! exists $Data{UserLogin} && $Param{User}) {
#        $Self->{LogObject}->Log(
#          Priority => 'notice',
#          Message => "Panic! No UserData for customer user: '$Param{User}'!!!",
#        );
        return;
    }
    if (! exists $Data{UserLogin} && $Param{CustomerID}) {
#        $Self->{LogObject}->Log(
#          Priority => 'notice',
#          Message => "Panic! No UserData for customer id: '$Param{CustomerID}'!!!",
#        );
        return;
    }
    # compat!
    $Data{UserID} = $Data{UserLogin};
    # get preferences
    my %Preferences = $Self->{PreferencesObject}->GetPreferences(UserID => $Data{UserID});

    # return data
    return (%Data, %Preferences);
}

sub CustomerUserAdd {
    my $Self = shift;
    my %Param = @_;
    # check ro/rw
    if ($Self->{ReadOnly}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Customer backend is ro!");
        return;
    }
    # check needed stuff
    foreach my $Entry (@{$Self->{CustomerUserMap}->{Map}}) {
        if (!$Param{$Entry->[0]} && $Entry->[4]) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $Entry->[0]!");
            return;
        }
    }
    if (!$Param{UserID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need UserID!");
        return;
    }
    # just if no UserLogin is given
    if (!$Param{UserLogin} && $Self->{CustomerUserMap}->{AutoLoginCreation}) {
        my ($Sec, $Min, $Hour, $Day, $Month, $Year, $WDay) = localtime(time());
        $Year = $Year-100;
        $Year = "0$Year" if ($Year <10);
        $Month = $Month+1;
        $Month = "0$Month" if ($Month <10);
        $Day = "0$Day" if ($Day <10);
        $Hour = "0$Hour" if ($Hour <10);
        $Min = "0$Min" if ($Min <10);
        my $Prefix = $Self->{CustomerUserMap}->{AutoLoginCreationPrefix} || 'auto';
        $Param{UserLogin} = "$Prefix-$Year$Month$Day$Hour$Min".int(rand(99));
    }
    # check if user login exists
    if (!$Param{UserLogin}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need UserLogin!");
        return;
    }
    # check email address if already exists
    if ($Param{UserEmail} && $Self->{CustomerUserMap}->{CustomerUserEmailUniqCheck}) {
        my %Result = $Self->CustomerSearch(
            Valid => 1,
            PostMasterSearch => $Param{UserEmail},
        );
        if (%Result) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Email already exists!");
            return;
        }
    }
    # check email address mx
    if ($Param{UserEmail} && !$Self->{CheckItemObject}->CheckEmail(Address => $Param{UserEmail})) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Email address ($Param{UserEmail}) not valid (".
              $Self->{CheckItemObject}->CheckError().")!",
        );
        return;
    }
    # build insert
    my $SQL = "INSERT INTO $Self->{CustomerTable} (";
    foreach my $Entry (@{$Self->{CustomerUserMap}->{Map}}) {
        $SQL .= " $Entry->[2], ";
    }
    $SQL .= "create_time, create_by, change_time, change_by)";
    $SQL .= " VALUES (";
    foreach my $Entry (@{$Self->{CustomerUserMap}->{Map}}) {
        if ($Entry->[5] =~ /^int$/i) {
            $SQL .= " ".$Self->{DBObject}->Quote($Param{$Entry->[0]}).", ";
        }
        else {
            $SQL .= " '".$Self->{DBObject}->Quote($Param{$Entry->[0]})."', ";
        }
    }
    $SQL .= "current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
      # log notice
      $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "CustomerUser: '$Param{UserLogin}' created successfully ($Param{UserID})!",
      );
      # set password
      if ($Param{UserPassword}) {
          $Self->SetPassword(UserLogin => $Param{UserLogin}, PW => $Param{UserPassword});
      }
      return $Param{UserLogin};
    }
    else {
        return;
    }
}

sub CustomerUserUpdate {
    my $Self = shift;
    my %Param = @_;
    # check ro/rw
    if ($Self->{ReadOnly}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Customer backend is ro!");
        return;
    }
    # check needed stuff
    foreach my $Entry (@{$Self->{CustomerUserMap}->{Map}}) {
        if (!$Param{$Entry->[0]} && $Entry->[4] && $Entry->[0] ne 'UserPassword') {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $Entry->[0]!");
            return;
        }
    }
    # check email address
    if ($Param{UserEmail} && !$Self->{CheckItemObject}->CheckEmail(Address => $Param{UserEmail})) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Email address ($Param{UserEmail}) not valid (".
                $Self->{CheckItemObject}->CheckError().")!",
        );
        return;
    }
    # get old user data (pw)
    my %UserData = $Self->CustomerUserDataGet(User => $Param{ID});
    # update db
    my $SQL = "UPDATE $Self->{CustomerTable} SET ";
    foreach my $Entry (@{$Self->{CustomerUserMap}->{Map}}) {
        if ($Entry->[5] =~ /^int$/i) {
            $SQL .= " $Entry->[2] = ".$Self->{DBObject}->Quote($Param{$Entry->[0]}).", ";
        }
        elsif ($Entry->[0] !~ /^UserPassword$/i) {
            $SQL .= " $Entry->[2] = '".$Self->{DBObject}->Quote($Param{$Entry->[0]})."', ";
        }
    }
    $SQL .= " change_time = current_timestamp, ";
    $SQL .= " change_by = $Param{UserID} ";
    $SQL .= " WHERE ".$Self->{CustomerKey}." = '".$Self->{DBObject}->Quote($Param{ID})."'";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # log notice
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "CustomerUser: '$Param{UserLogin}' updated successfully ($Param{UserID})!",
        );
        # check pw
        if ($Param{UserPassword}) {
            $Self->SetPassword(UserLogin => $Param{UserLogin}, PW => $Param{UserPassword});
        }
        return 1;
    }
    else {
        return;
    }
}

sub SetPassword {
    my $Self = shift;
    my %Param = @_;
    my $Pw = $Param{PW} || '';
    # check ro/rw
    if ($Self->{ReadOnly}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Customer backend is ro!");
        return;
    }
    # check needed stuff
    if (!$Param{UserLogin}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need UserLogin!");
        return;
    }
    my $CryptedPw = '';
    # md5 pw
    if ($Self->{ConfigObject}->Get('Customer::AuthModule::DB::CryptType') &&
        $Self->{ConfigObject}->Get('Customer::AuthModule::DB::CryptType') eq 'md5') {
        $CryptedPw = unix_md5_crypt($Pw, $Param{UserLogin});
    }
    # crypt pw
    else {
        # crypt given pw (unfortunately there is a mod_perl2 bug on RH8 - check if
        # crypt() is working correctly) :-/
        if (crypt('root', 'root@localhost') eq 'roK20XGbWEsSM') {
            $CryptedPw = crypt($Pw, $Param{UserLogin});
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message => "The crypt() of your mod_perl(2) is not working correctly! Update mod_perl!",
            );
            my $TempUser = quotemeta($Param{UserLogin});
            my $TempPw = quotemeta($Pw);
            my $CMD = "perl -e \"print crypt('$TempPw', '$TempUser');\"";
            open (IO, " $CMD | ") || print STDERR "Can't open $CMD: $!";
            while (<IO>) {
                $CryptedPw .= $_;
            }
            close (IO);
            chomp $CryptedPw;
        }
    }
    # update db
    foreach my $Entry (@{$Self->{CustomerUserMap}->{Map}}) {
        if ($Entry->[0] =~ /^UserPassword$/i) {
            $Param{PasswordCol} = $Entry->[2];
        }
        if ($Entry->[0] =~ /^UserLogin$/i) {
            $Param{LoginCol} = $Entry->[2];
        }
    }
    # check if needed pw col. exists (else there is no pw col.)
    if ($Param{PasswordCol} && $Param{LoginCol}) {
        if ($Self->{DBObject}->Do(
            SQL => "UPDATE $Self->{CustomerTable} ".
                " SET ".
                " $Param{PasswordCol} = '".$Self->{DBObject}->Quote($CryptedPw)."' ".
                " WHERE ".
                " $Param{LoginCol} = '".$Self->{DBObject}->Quote($Param{UserLogin})."'",
        )) {
            # log notice
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message => "CustomerUser: '$Param{UserLogin}' changed password successfully!",
            );
            return 1;
        }
        else {
            return;
        }
    }
    else {
        # need no pw to set
        return 1;
    }
}

sub GenerateRandomPassword {
    my $Self = shift;
    my %Param = @_;
    # Generated passwords are eight characters long by default.
    my $Size = $Param{Size} || 8;

    # The list of characters that can appear in a randomly generated password.
    # Note that users can put any character into a password they choose themselves.
    my @PwChars = (0..9, 'A'..'Z', 'a'..'z', '-', '_', '!', '@', '#', '$', '%', '^', '&', '*');

    # The number of characters in the list.
    my $PwCharsLen = scalar(@PwChars);

    # Generate the password.
    my $Password = '';
    for ( my $i=0 ; $i<$Size ; $i++ ) {
        $Password .= $PwChars[rand($PwCharsLen)];
    }

    # Return the password.
    return $Password;
}

sub DESTROY {
    my $Self = shift;
    # disconnect if it's not a parent DBObject
    if ($Self->{NotParentDBObject}) {
        if ($Self->{DBObject}) {
            $Self->{DBObject}->Disconnect();
        }
    }
}

1;
