# --
# Kernel/System/CustomerUser.pm - some customer user functions
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: CustomerUser.pm,v 1.55.2.1 2010-04-14 19:34:55 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::CustomerUser;

use strict;
use warnings;

use Kernel::System::CustomerCompany;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.55.2.1 $) [1];

=head1 NAME

Kernel::System::CustomerUser - customer user lib

=head1 SYNOPSIS

All customer user functions. E. g. to add and updated user and other functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create an object

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Main;
    use Kernel::System::DB;
    use Kernel::System::CustomerUser;

    my $ConfigObject = Kernel::Config->new();
    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
    );
    my $DBObject = Kernel::System::DB->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );
    my $CustomerUserObject = Kernel::System::CustomerUser->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
        DBObject     => $DBObject,
        MainObject   => $MainObject,
        EncodeObject => $EncodeObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for (qw(DBObject ConfigObject LogObject MainObject EncodeObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    # load generator customer preferences module
    my $GeneratorModule = $Self->{ConfigObject}->Get('CustomerPreferences')->{Module}
        || 'Kernel::System::CustomerUser::Preferences::DB';
    if ( $Self->{MainObject}->Require($GeneratorModule) ) {
        $Self->{PreferencesObject} = $GeneratorModule->new(%Param);
    }

    # load customer user backend module
    for my $Count ( '', 1 .. 10 ) {

        # next if customer backend is used
        next if !$Self->{ConfigObject}->Get("CustomerUser$Count");

        my $GenericModule = $Self->{ConfigObject}->Get("CustomerUser$Count")->{Module};
        if ( !$Self->{MainObject}->Require($GenericModule) ) {
            $Self->{MainObject}->Die("Can't load backend module $GenericModule! $@");
        }
        $Self->{"CustomerUser$Count"} = $GenericModule->new(
            Count => $Count,
            %Param,
            PreferencesObject => $Self->{PreferencesObject},
            CustomerUserMap   => $Self->{ConfigObject}->Get("CustomerUser$Count"),
        );
    }

    $Self->{CustomerCompanyObject} = Kernel::System::CustomerCompany->new(%Param);

    return $Self;
}

=item CustomerSourceList()

return customer source list

    my %List = $CustomerUserObject->CustomerSourceList();

=cut

sub CustomerSourceList {
    my ( $Self, %Param ) = @_;

    my %Data = ();
    for ( '', 1 .. 10 ) {

        # next if customer backend is used
        next if !$Self->{ConfigObject}->Get("CustomerUser$_");

        $Data{"CustomerUser$_"} = $Self->{ConfigObject}->Get("CustomerUser$_")->{Name}
            || "No Name $_";
    }
    return %Data;
}

=item CustomerSearch()

to search users

    my %List = $CustomerUserObject->CustomerSearch(
        Search => '*some*', # also 'hans+huber' possible
        Valid  => 1, # not required, default 1
    );

    my %List = $CustomerUserObject->CustomerSearch(
        UserLogin => '*some*',
        Valid     => 1, # not required, default 1
    );

    my %List = $CustomerUserObject->CustomerSearch(
        PostMasterSearch => 'email@example.com',
        Valid            => 1, # not required, default 1
    );

=cut

sub CustomerSearch {
    my ( $Self, %Param ) = @_;

    # remove leading and ending spaces
    if ( $Param{Search} ) {
        $Param{Search} =~ s/^\s+//;
        $Param{Search} =~ s/\s+$//;
    }

    my %Data = ();
    for ( '', 1 .. 10 ) {

        # next if customer backend is used
        next if !$Self->{"CustomerUser$_"};

        # get customer search result of backend and merge it
        my %SubData = $Self->{"CustomerUser$_"}->CustomerSearch(%Param);
        %Data = ( %SubData, %Data );
    }
    return %Data;
}

=item CustomerUserList()

return a hash with all users (depreciated)

    my %List = $CustomerUserObject->CustomerUserList(
        Valid => 1, # not required
    );

=cut

sub CustomerUserList {
    my ( $Self, %Param ) = @_;

    my %Data = ();
    for ( '', 1 .. 10 ) {

        # next if customer backend is used
        next if !$Self->{"CustomerUser$_"};

        # get customer list result of backend and merge it
        my %SubData = $Self->{"CustomerUser$_"}->CustomerUserList(%Param);
        %Data = ( %Data, %SubData );
    }
    return %Data;
}

=item CustomerName()

get customer user name

    my $Name = $CustomerUserObject->CustomerName(
        UserLogin => 'some-login',
    );

=cut

sub CustomerName {
    my ( $Self, %Param ) = @_;

    for ( '', 1 .. 10 ) {

        # next if customer backend is used
        next if !$Self->{"CustomerUser$_"};

        # get customer name and return it
        my $Name = $Self->{"CustomerUser$_"}->CustomerName(%Param);
        if ($Name) {
            return $Name;
        }
    }
    return;
}

=item CustomerIDs()

get customer user customer ids

    my @CustomerIDs = $CustomerUserObject->CustomerIDs(
        User => 'some-login',
    );

=cut

sub CustomerIDs {
    my ( $Self, %Param ) = @_;

    for ( '', 1 .. 10 ) {

        # next if customer backend is used
        next if !$Self->{"CustomerUser$_"};

        # get customer id's and return it
        my @CustomerIDs = $Self->{"CustomerUser$_"}->CustomerIDs(%Param);
        if (@CustomerIDs) {
            return @CustomerIDs;
        }
    }
    return;
}

=item CustomerUserDataGet()

get user data (UserLogin, UserFirstname, UserLastname, UserEmail, ...)

    my %User = $CustomerUserObject->CustomerUserDataGet(
        User => 'franz',
    );

=cut

sub CustomerUserDataGet {
    my ( $Self, %Param ) = @_;

    for ( '', 1 .. 10 ) {

        # next if customer backend is used
        next if !$Self->{"CustomerUser$_"};

        # next if no customer got found
        my %Customer = $Self->{"CustomerUser$_"}->CustomerUserDataGet( %Param, );
        next if !%Customer;

        # add preferences defaults
        my $Config = $Self->{ConfigObject}->Get('CustomerPreferencesGroups');
        if ($Config) {
            for my $Key ( keys %{$Config} ) {

                # next if no default data exists
                next if !defined $Config->{$Key}->{DataSelected};

                # check if data is defined
                next if defined $Customer{ $Config->{$Key}->{PrefKey} };

                # set default data
                $Customer{ $Config->{$Key}->{PrefKey} } = $Config->{$Key}->{DataSelected};
            }
        }

        # check if customer company support is enabled and get company data
        my %Company = ();
        if (
            $Self->{ConfigObject}->Get("CustomerCompany")
            && $Self->{ConfigObject}->Get("CustomerUser$_")->{CustomerCompanySupport}
            )
        {
            %Company = $Self->{CustomerCompanyObject}->CustomerCompanyGet(
                CustomerID => $Customer{UserCustomerID},
            );
        }

        # return customer data
        return (
            %Company,
            %Customer,
            Source        => "CustomerUser$_",
            Config        => $Self->{ConfigObject}->Get("CustomerUser$_"),
            CompanyConfig => $Self->{ConfigObject}->Get("CustomerCompany"),
        );
    }
    return;
}

=item CustomerUserAdd()

to add new customer users

    my $UserLogin = $CustomerUserObject->CustomerUserAdd(
        Source         => 'CustomerUser', # CustomerUser source config
        UserFirstname  => 'Huber',
        UserLastname   => 'Manfred',
        UserCustomerID => 'A124',
        UserLogin      => 'mhuber',
        UserPassword   => 'some-pass', # not required
        UserEmail      => 'email@example.com',
        ValidID        => 1,
        UserID         => 123,
    );

=cut

sub CustomerUserAdd {
    my ( $Self, %Param ) = @_;

    # check data source
    if ( !$Param{Source} ) {
        $Param{Source} = 'CustomerUser';
    }

    # check if user exists
    if ( $Param{UserLogin} ) {
        my %User = $Self->CustomerUserDataGet( User => $Param{UserLogin} );
        if (%User) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "User already exists '$Param{UserLogin}'!",
            );
            return;
        }
    }
    return $Self->{ $Param{Source} }->CustomerUserAdd(%Param);
}

=item CustomerUserUpdate()

to update customer users

    $CustomerUserObject->CustomerUserUpdate(
        Source        => 'CustomerUser', # CustomerUser source config
        ID            => 'mh'            # current user login
        UserLogin     => 'mhuber',       # new user login
        UserFirstname => 'Huber',
        UserLastname  => 'Manfred',
        UserPassword  => 'some-pass',    # not required
        UserEmail     => 'email@example.com',
        ValidID       => 1,
        UserID        => 123,
    );

=cut

sub CustomerUserUpdate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserLogin} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "User UserLogin!" );
        return;
    }

    # check for UserLogin-renaming and if new UserLogin already exists...
    if ( ( $Param{ID} ) && ( $Param{UserLogin} ne $Param{ID} ) ) {
        my %User = $Self->CustomerUserDataGet( User => $Param{UserLogin} );
        if (%User) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "User already exists '$Param{UserLogin}'!",
            );
            return;
        }
    }

    # check if user exists
    my %User = $Self->CustomerUserDataGet( User => $Param{ID} || $Param{UserLogin} );
    if ( !%User ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "No such user '$Param{UserLogin}'!",
        );
        return;
    }
    return $Self->{ $User{Source} }->CustomerUserUpdate(%Param);
}

=item SetPassword()

to set customer users passwords

    $CustomerUserObject->SetPassword(
        UserLogin => 'some-login',
        PW        => 'some-new-password'
    );

=cut

sub SetPassword {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserLogin} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "User UserLogin!" );
        return;
    }

    # check if user exists
    my %User = $Self->CustomerUserDataGet( User => $Param{UserLogin} );
    if ( !%User ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "No such user '$Param{UserLogin}'!",
        );
        return;
    }
    return $Self->{ $User{Source} }->SetPassword(%Param);
}

=item GenerateRandomPassword()

generate a random password

    my $Password = $CustomerUserObject->GenerateRandomPassword();

    or

    my $Password = $CustomerUserObject->GenerateRandomPassword(
        Size => 16,
    );

=cut

sub GenerateRandomPassword {
    my $Self = shift;

    return $Self->{CustomerUser}->GenerateRandomPassword(@_);
}

=item SetPreferences()

set customer user preferences

    $CustomerUserObject->SetPreferences(
        Key    => 'UserComment',
        Value  => 'some comment',
        UserID => 'some-login',
    );

=cut

sub SetPreferences {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'User UserID!' );
        return;
    }

    # check if user exists
    my %User = $Self->CustomerUserDataGet( User => $Param{UserID} );
    if ( !%User ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "No such user '$Param{UserID}'!",
        );
        return;
    }

    # call new api (2.4.8 and higher)
    if ( $Self->{ $User{Source} }->can('SetPreferences') ) {
        return $Self->{ $User{Source} }->SetPreferences(%Param);
    }

    # call old api
    return $Self->{PreferencesObject}->SetPreferences(%Param);
}

=item GetPreferences()

get customer user preferences

    my %Preferences = $CustomerUserObject->GetPreferences(
        UserID => 'some-login',
    );

=cut

sub GetPreferences {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'User UserID!' );
        return;
    }

    # check if user exists
    my %User = $Self->CustomerUserDataGet( User => $Param{UserID} );
    if ( !%User ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "No such user '$Param{UserID}'!",
        );
        return;
    }

    # call new api (2.4.8 and higher)
    if ( $Self->{ $User{Source} }->can('GetPreferences') ) {
        return $Self->{ $User{Source} }->GetPreferences(%Param);
    }

    # call old api
    return $Self->{PreferencesObject}->GetPreferences(%Param);
}

=item SearchPreferences()

search in user preferences

    my %UserList = $CustomerUserObject->SearchPreferences(
        Key   => 'UserSomeKey',
        Value => 'SomeValue',
    );

=cut

sub SearchPreferences {
    my ( $Self, %Param ) = @_;

    my %Data;
    for my $Count ( '', 1 .. 10 ) {

        # next if customer backend is used
        next if !$Self->{"CustomerUser$Count"};

        # get customer search result of backend and merge it
        # call new api (2.4.8 and higher)
        my %SubData;
        if ( $Self->{"CustomerUser$Count"}->can('SearchPreferences') ) {
            %SubData = $Self->{"CustomerUser$Count"}->SearchPreferences(%Param);
        }

        # call old api
        else {
            %SubData = $Self->{PreferencesObject}->SearchPreferences(%Param);
        }
        %Data = ( %SubData, %Data );
    }
    return %Data;
}

=item TokenGenerate()

generate a random token

    my $Token = $UserObject->TokenGenerate(
        UserID => 123,
    );

=cut

sub TokenGenerate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need UserID!" );
        return;
    }

    # The list of characters that can appear in a randomly generated token.
    my @Chars = ( 0 .. 9, 'A' .. 'Z', 'a' .. 'z' );

    # The number of characters in the list.
    my $CharsLen = scalar @Chars;

    # Generate the token.
    my $Token = 'C';
    for ( my $i = 0; $i < 14; $i++ ) {
        $Token .= $Chars[ rand($CharsLen) ];
    }

    # save token in preferences
    $Self->SetPreferences(
        Key    => 'UserToken',
        Value  => $Token,
        UserID => $Param{UserID},
    );

    # Return the Token.
    return $Token;
}

=item TokenCheck()

check password token

    my $Valid = $UserObject->TokenCheck(
        Token  => $Token,
        UserID => 123,
    );

=cut

sub TokenCheck {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Token} || !$Param{UserID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need Token and UserID!" );
        return;
    }

    # get preferences token
    my %Preferences = $Self->GetPreferences(
        UserID => $Param{UserID},
    );

    # check requested vs. stored token
    if ( $Preferences{UserToken} && $Preferences{UserToken} eq $Param{Token} ) {

        # reset password token
        $Self->SetPreferences(
            Key    => 'UserToken',
            Value  => '',
            UserID => $Param{UserID},
        );

        # return true if token is valid
        return 1;
    }

    # return false if token is invalid
    return;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see http://www.gnu.org/licenses/agpl.txt.

=cut

=head1 VERSION

$Revision: 1.55.2.1 $ $Date: 2010-04-14 19:34:55 $

=cut
