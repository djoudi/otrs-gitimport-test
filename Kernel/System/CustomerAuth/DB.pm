# --
# Kernel/System/CustomerAuth/DB.pm - provides the db authentification
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: DB.pm,v 1.10 2004-08-10 10:07:15 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
# Note:
# available objects are: ConfigObject, LogObject and DBObject
# --

package Kernel::System::CustomerAuth::DB;

use strict;
use Kernel::System::CustomerUser;

use vars qw($VERSION);
$VERSION = '$Revision: 1.10 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # check needed objects
    foreach (qw(LogObject ConfigObject DBObject)) {
        $Self->{$_} = $Param{$_} || die "No $_!";
    }

    # Debug 0=off 1=on
    $Self->{Debug} = 0;

    # get customer user object to validate customers
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);

    # config options
    $Self->{Table} = $Self->{ConfigObject}->Get('Customer::AuthModule::DB::Table')
      || die "Need CustomerAuthModule::DB::Table in Kernel/Config.pm!";
    $Self->{Key} = $Self->{ConfigObject}->Get('Customer::AuthModule::DB::CustomerKey')
      || die "Need CustomerAuthModule::DB::CustomerKey in Kernel/Config.pm!";
    $Self->{Pw} = $Self->{ConfigObject}->Get('Customer::AuthModule::DB::CustomerPassword')
      || die "Need CustomerAuthModule::DB::CustomerPw in Kernel/Config.pm!";


    if ($Self->{ConfigObject}->Get('Customer::AuthModule::DB::DSN')) {
        $Self->{DBObject} = Kernel::System::DB->new(
            LogObject => $Param{LogObject},
            ConfigObject => $Param{ConfigObject},
            DatabaseDSN => $Self->{ConfigObject}->Get('Customer::AuthModule::DB::DSN'),
            DatabaseUser => $Self->{ConfigObject}->Get('Customer::AuthModule::DB::User'),
            DatabasePw => $Self->{ConfigObject}->Get('Customer::AuthModule::DB::Password'),
        ) || die "Can't connect to ".$Self->{ConfigObject}->Get('Customer::AuthModule::DB::DSN');
        # remember that we have the DBObject not from parent call
        $Self->{NotParentDBObject} = 1;
    }

    return $Self;
}
# --
sub GetOption {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{What}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need What!");
        return;
    }
    # module options
    my %Option = (
        PreAuth => 0,
    );
    # return option
    return $Option{$Param{What}};
}
# --
sub Auth {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{User}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need User!");
      return;
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # get params
    my $User = $Param{User} || '';
    my $Pw = $Param{Pw} || '';
    my $RemoteAddr = $ENV{REMOTE_ADDR} || 'Got no REMOTE_ADDR env!';
    my $UserID = '';
    my $GetPw = '';

    # sql query
    my $SQL = "SELECT $Self->{Pw}, $Self->{Key}".
      " FROM ".
      " $Self->{Table} ".
      " WHERE ".
      " $Self->{Key} = '$User'";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $GetPw = $Row[0];
        $UserID = $Row[1];
    }

    # check if user exists in auth table
    if (!$UserID) {
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "CustomerUser: No auth record in '$Self->{Table}' for '$User'  (REMOTE_ADDR: $RemoteAddr)",
        );
        return;
    }

    # if recorde exists, check if user is vaild
    my %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(User => $UserID);
    if (defined($CustomerData{ValidID}) && $CustomerData{ValidID} ne 1) {
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "CustomerUser: '$User' is set to invalid (REMOTE_ADDR: $RemoteAddr)",
        );
        return;
    }

    # crypt given pw
    my $CryptedPw = '';
    my $Salt = $GetPw;
    # strip Salt only for (Extended) DES, not for any of Modular crypt's
    if ($Salt !~ /^\$\d\$/) {
        $Salt =~ s/^(..).*/$1/;
    }
    # and do this check only in such case (unfortunately there is a mod_perl2
    # bug on RH8 - check if crypt() is working correctly) :-/
    if (($Salt =~ /^\$\d\$/) || (crypt('root', 'root@localhost') eq 'roK20XGbWEsSM')) {
        $CryptedPw = crypt($Pw, $Salt);
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "The crypt() of your mod_perl(2) is not working correctly! Update mod_perl!",
        );
        my $TempSalt = quotemeta($Salt);
        my $TempPw = quotemeta($Pw);
        my $CMD = "perl -e \"print crypt('$TempPw', '$TempSalt');\"";
        open (IO, " $CMD | ") || print STDERR "Can't open $CMD: $!";
        while (<IO>) {
            $CryptedPw .= $_;
        }
        close (IO);
        chomp $CryptedPw;
    }

    # just in case!
    if ($Self->{Debug} > 0) {
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "CustomerUser: '$User' tried to login with Pw: '$Pw' ($UserID/$CryptedPw/$GetPw/$Salt/$RemoteAddr)",
        );
    }

    # just a note
    if (!$Pw) {
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "CustomerUser: $User without Pw!!! (REMOTE_ADDR: $RemoteAddr)",
        );
        return;
    }
    # login note
    elsif ((($GetPw)&&($User)&&($UserID)) && $CryptedPw eq $GetPw) {
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "CustomerUser: $User logged in (REMOTE_ADDR: $RemoteAddr).",
        );
        return $User;
    }
    # just a note
    elsif (($UserID) && ($GetPw)) {
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "CustomerUser: $User with wrong Pw!!! (REMOTE_ADDR: $RemoteAddr)"
        );
        return;
    }
    # just a note
    else {
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "CustomerUser: $User doesn't exist or is invalid!!! (REMOTE_ADDR: $RemoteAddr)"
        );
        return;
    }
}
# --
sub DESTROY {
    my $Self = shift;
    # disconnect if it's not a parent DBObject
    if ($Self->{NotParentDBObject}) {
        if ($Self->{DBObject}) {
            $Self->{DBObject}->Disconnect();
        }
    }
}
# --
1;
