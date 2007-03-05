# --
# Kernel/System/GenericAgent/AutoPriorityIncrease.pm - generic agent auto priority increase
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: AutoPriorityIncrease.pm,v 1.4 2007-03-05 02:06:33 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::GenericAgent::AutoPriorityIncrease;

use strict;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.4 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # check needed objects
    foreach (qw(DBObject ConfigObject LogObject TicketObject TimeObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    # 0=off; 1=on;
    $Self->{Debug} = $Param{Debug} || 0;

    return $Self;
}

sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Update = 0;
    my $LatestAutoIncrease = 0;
    # check needed param
    if (!$Param{New}->{"TimeInterval"}) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Need TimeInterval param for GenericAgent module!",
        );
        return;
    }
    else {
        $Param{New}->{"TimeInterval"} = $Param{New}->{"TimeInterval"} * 60;
    }
    # get ticket data
    my %Ticket = $Self->{TicketObject}->TicketGet(%Param);
    my @HistoryLines = $Self->{TicketObject}->HistoryGet(%Param, UserID => 1);

    # find latest auto priority update
    foreach my $History (@HistoryLines) {
        if ($History->{Name} =~ /^AutoPriorityIncrease/) {
            $LatestAutoIncrease = $History->{CreateTime};
        }
    }
    if (!$LatestAutoIncrease) {
        $LatestAutoIncrease = $Ticket{Created};
    }
    $LatestAutoIncrease = $Self->{TimeObject}->TimeStamp2SystemTime(
        String => $LatestAutoIncrease,
    );
    if (($Self->{TimeObject}->SystemTime() - $LatestAutoIncrease) > $Param{New}->{"TimeInterval"}) {
        $Update = 1;
    }

    # check if priority needs to be increased
    if (!$Update) {
        # do nothing
        if ($Self->{Debug}) {
            $Self->{LogObject}->Log(
                Priority => 'debug',
                Message => "Nothing to do on (Ticket=$Ticket{TicketNumber}/TicketID=$Ticket{TicketID})!",
            );
        }
        return 1;
    }
    else {
        # increase priority
        my $Priority = $Self->{PriorityObject}->PriorityLookup(PriorityID => ($Ticket{PriorityID}+1));
        # do nothing if already highest priority
        if (!$Priority) {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message => "Ticket=$Ticket{TicketNumber}/TicketID=$Ticket{TicketID} already set to higest priority! Can't increase priority!",
            );
            return 1;
        }
        # increase priority
        else {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message => "Increase priority of (Ticket=$Ticket{TicketNumber}/TicketID=$Ticket{TicketID}) to $Priority!",
            );

            $Self->{TicketObject}->PrioritySet(
                TicketID => $Param{TicketID},
                PriorityID => ($Ticket{PriorityID}+1),
                UserID => 1,
            );

            $Self->{TicketObject}->HistoryAdd(
                Name => "AutoPriorityIncrease (Priority=$Priority/PriorityID=".($Ticket{PriorityID}+1).")",
                HistoryType => 'Misc',
                TicketID => $Param{TicketID},
                UserID => 1,
                CreateUserID => 1,
            );
            return 1;
        }
    }
    return 1;
}

1;
