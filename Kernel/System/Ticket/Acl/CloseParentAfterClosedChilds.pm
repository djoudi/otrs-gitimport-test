# --
# Kernel/System/Ticket/Acl/CloseParentAfterClosedChilds.pm - acl module
# - allow no parent close till all clients are closed -
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: CloseParentAfterClosedChilds.pm,v 1.3 2008-03-21 00:46:43 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::System::Ticket::Acl::CloseParentAfterClosedChilds;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.3 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # get needed objects
    foreach (qw(ConfigObject DBObject TicketObject LogObject UserObject CustomerUserObject MainObject TimeObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    foreach (qw(Config Acl)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # check if child tickets are not closed
    if ( $Param{TicketID} && $Param{UserID} ) {
        my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Param{TicketID} );
        $Self->{LinkObject} = Kernel::System::LinkObject->new( %Param, %{$Self} );
        my %Link = $Self->{LinkObject}->LinkedObjects(
            LinkType    => 'Child',
            LinkObject1 => 'Ticket',
            LinkID1     => $Param{TicketID},
            LinkObject2 => 'Ticket',
        );
        my $OpenSubTickets = 0;
        foreach my $TicketID ( sort keys %Link ) {
            my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $TicketID );
            if ( $Ticket{StateType} !~ /^(close|merge|remove)/ ) {
                $OpenSubTickets = 1;
                last;
            }
        }
        # generate acl
        if ( $OpenSubTickets ) {
            $Param{Acl}->{CloseParentAfterClosedChilds} = {

                # match properties
                Properties => {

                    # current ticket match properties
                    Ticket => {
                        TicketID => [$Param{TicketID}],
                    }
                },

                # return possible options (black list)
                PossibleNot => {

                    # possible ticket options (black list)
                    Ticket => {
                        State => $Param{Config}->{State},
                    },
                },

                # return possible options (white list)
                Possible => {

                    # possible action options
                    Action => {
                        AgentTicketLock        => 1,
                        AgentTicketZoom        => 1,
                        AgentTicketClose       => 0,
                        AgentTicketPending     => 1,
                        AgentTicketNote        => 1,
                        AgentTicketHistory     => 1,
                        AgentTicketPriority    => 1,
                        AgentTicketFreeText    => 1,
                        AgentTicketHistory     => 1,
                        AgentTicketCompose     => 1,
                        AgentTicketBounce      => 1,
                        AgentTicketForward     => 1,
                        AgentLinkObject        => 1,
                        AgentTicketPrint       => 1,
                        AgentTicketPhone       => 1,
                        AgentTicketCustomer    => 1,
                        AgentTicketOwner       => 1,
                        AgentTicketResponsible => 1,
                    },
                },
            };
        }
    }
    return 1;
}

1;
