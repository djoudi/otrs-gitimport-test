# --
# Kernel/Modules/AgentInfo.pm - to show an agent an login/changes info
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentInfo.pm,v 1.2 2005-02-15 11:58:12 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentInfo;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check needed Opjects
    foreach (qw(ParamObject DBObject LayoutObject LogObject ConfigObject)) {
        die "Got no $_!" if (!$Self->{$_});
    }

    $Self->{InfoKey} = $Self->{ConfigObject}->Get('InfoKey');
    $Self->{InfoFile} = $Self->{ConfigObject}->Get('InfoFile');

    return $Self;
}
# --
sub PreRun {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    if (!$Self->{RequestedURL}) {
        $Self->{RequestedURL} = 'Action=';
    }
    # redirect if no primary group is selected
    if (!$Self->{$Self->{InfoKey}} && $Self->{Action} ne 'AgentInfo') {
        # remove requested url from sesseion storage
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key => 'UserRequestedURL',
            Value => $Self->{RequestedURL},
        );
        return $Self->{LayoutObject}->Redirect(OP => "Action=AgentInfo");
    }
    else {
        return;
    }
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    if (!$Self->{RequestedURL}) {
        $Self->{RequestedURL} = 'Action=';
    }
    my $Accept = $Self->{ParamObject}->GetParam(Param => 'Accept') || '';
    if ($Self->{$Self->{InfoKey}}) {
        # remove requested url from sesseion storage
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key => 'UserRequestedURL',
            Value => '',
        );
        # redirect
        return $Self->{LayoutObject}->Redirect(OP => "$Self->{UserRequestedURL}");
    }
    elsif ($Accept) {
        # set session
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key => $Self->{InfoKey},
            Value => 1,
        );
        # set preferences
        $Self->{UserObject}->SetPreferences(
            UserID => $Self->{UserID},
            Key => $Self->{InfoKey},
            Value => 1,
        );
        # remove requested url from sesseion storage
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key => 'UserRequestedURL',
            Value => '',
        );
        # redirect
        return $Self->{LayoutObject}->Redirect(OP => "$Self->{UserRequestedURL}");
    }
    else {
        # show info
        $Output = $Self->{LayoutObject}->Header(Title => 'Info');
        $Output .= $Self->{LayoutObject}->Output(TemplateFile => $Self->{InfoFile}, Data => \%Param);
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}
# --
1;
