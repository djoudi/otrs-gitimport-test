# --
# Kernel/System/Ticket/CustomerPermission/GroupCheck.pm -
# the sub module of the global ticket handle
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: GroupCheck.pm,v 1.5 2004-10-02 08:14:58 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Ticket::CustomerPermission::GroupCheck;

use strict;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.5 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # get needed objects
    foreach (qw(ConfigObject LogObject DBObject TicketObject QueueObject CustomerGroupObject CustomerUserObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(TicketID UserID Type)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # get ticket data
    my %Ticket = $Self->{TicketObject}->TicketGet(TicketID => $Param{TicketID});
    # get ticket group
    my $GID = $Self->{QueueObject}->GetQueueGroupID(QueueID => $Ticket{QueueID});
    # get user groups
    my @GroupIDs = $Self->{CustomerGroupObject}->GroupMemberList(
        UserID => $Param{UserID},
        Type => $Param{Type},
        Result => 'ID',
        Cached => 1,
    );
    foreach (@GroupIDs) {
        if ($_ eq $GID) {
            return 1;
        }
    }
    return;
}
# --

1;
