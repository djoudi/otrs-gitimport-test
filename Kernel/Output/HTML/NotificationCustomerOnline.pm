# --
# Kernel/Output/HTML/NotificationCustomerOnline.pm  
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: NotificationCustomerOnline.pm,v 1.1 2004-04-23 08:00:53 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Output::HTML::NotificationCustomerOnline;

use strict;
use Kernel::System::AuthSession;

use vars qw($VERSION);
$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {}; 
    bless ($Self, $Type);

    # get needed objects
    foreach (qw(ConfigObject LogObject DBObject LayoutObject UserID)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    $Self->{SessionObject} = Kernel::System::AuthSession->new(%Param);
    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # get session info
    my %Online = ();
    my @Sessions = $Self->{SessionObject}->GetAllSessionIDs();
    foreach (@Sessions) {
        my %Data = $Self->{SessionObject}->GetSessionIDData(
            SessionID => $_,
        );
        if ($Data{UserType} eq 'Customer' && $Data{UserFirstname} && $Data{UserLastname}) {
            $Online{$Data{UserID}} = "$Data{UserFirstname} $Data{UserLastname} ($Data{UserEmail})";
        }
    }
    foreach (sort {$Online{$a} cmp $Online{$b}} keys %Online) {
        if ($Param{Message}) {
            $Param{Message} .= ', ';
        }
        $Param{Message} .= "$Online{$_}";
    }
    if ($Param{Message}) {
        return $Self->{LayoutObject}->Notify(Info => 'Online Customer: %s", "'.$Param{Message});
    }
    else {
        return '';
    }
}
# --

1;
