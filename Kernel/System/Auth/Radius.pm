# --
# Kernel/System/Auth/Radius.pm - provides the radius authentification
# based on Martin Edenhofer's Kernel::System::Auth::DB
# Copyright (C) 2004 Andreas Jobs <Andreas.Jobs+dev@ruhr-uni-bochum.de>
# --
# $Id: Radius.pm,v 1.6 2007-01-04 12:14:47 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Auth::Radius;

use strict;
use Authen::Radius;

use vars qw($VERSION);
$VERSION = '$Revision: 1.6 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

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
    # get config
    $Self->{Die} = $Self->{ConfigObject}->Get('AuthModule::Radius::Die'.$Param{Count});
    # get user table
    $Self->{RadiusHost} = $Self->{ConfigObject}->Get('AuthModule::Radius::Host'.$Param{Count})
        || die "Need AuthModule::Radius::Host$Param{Count} in Kernel/Config.pm";
    $Self->{RadiusSecret} = $Self->{ConfigObject}->Get('AuthModule::Radius::Password'.$Param{Count})
        || die "Need AuthModule::Radius::Password$Param{Count} in Kernel/Config.pm";

    return $Self;
}

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

sub Auth {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{User}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need User!");
        return;
    }
    # get params
    my $User = $Param{User} || '';
    my $Pw = $Param{Pw} || '';
    my $RemoteAddr = $ENV{REMOTE_ADDR} || 'Got no REMOTE_ADDR env!';
    my $UserID = '';
    my $GetPw = '';

    # just in case for debug!
    if ($Self->{Debug} > 0) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "User: '$User' tried to authenticate with Pw: '$Pw' ($RemoteAddr)",
        );
    }
    # just a note
    if (!$User) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "No User given!!! (REMOTE_ADDR: $RemoteAddr)",
        );
        return;
    }
    # just a note
    if (!$Pw) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "User: $User authentication without Pw!!! (REMOTE_ADDR: $RemoteAddr)",
        );
        return;
    }
    # Create a radius object
    my $Radius = Authen::Radius->new(Host => $Self->{RadiusHost}, Secret => $Self->{RadiusSecret});
    if (!$Radius) {
        if ($Self->{Die}) {
            die "Can't connect to $Self->{RadiusHost}: $@";
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Can't connect to $Self->{RadiusHost}: $@",
            );
            return;
        }
    }
    my $AuthResult = $Radius->check_pwd ($User, $Pw);

    # login note
    if (defined($AuthResult) && $AuthResult == 1) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "User: $User authentication ok (REMOTE_ADDR: $RemoteAddr).",
        );
        return $User;
    }
    # just a note
    else {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "User: $User authentication with wrong Pw!!! (REMOTE_ADDR: $RemoteAddr)"
        );
        return;
    }
}

1;
