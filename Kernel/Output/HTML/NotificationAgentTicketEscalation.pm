# --
# Kernel/Output/HTML/NotificationAgentTicketEscalation.pm
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: NotificationAgentTicketEscalation.pm,v 1.17 2008-04-14 23:17:17 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::Output::HTML::NotificationAgentTicketEscalation;

use strict;
use warnings;

use Kernel::System::Lock;
use Kernel::System::State;
use Kernel::System::Cache;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.17 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (qw(ConfigObject LogObject DBObject LayoutObject TicketObject GroupObject UserID)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    $Self->{LockObject}  = Kernel::System::Lock->new(%Param);
    $Self->{StateObject} = Kernel::System::State->new(%Param);
    $Self->{CacheObject} = Kernel::System::Cache->new(%Param);

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    return '' if $Self->{LayoutObject}->{Action} !~ /^AgentTicket(Queue|Mailbox|Status)/;

    # check result cache
    my $CacheTime = $Param{Config}->{CacheTime} || 180;
    if ( $CacheTime ) {
        my $Output = $Self->{CacheObject}->Get(
            Type => 'TicketEscalation',
            Key  => "EscalationResult::$Self->{UserID}",
        );
        if ( defined $Output ) {
            return $Output;
        }
    }

    # get all open rw ticket
    my @TicketIDs = ();
    my $Cache = $Self->{CacheObject}->Get(
        Type => 'TicketEscalation',
        Key  => "EscalationIndex::$Self->{UserID}",
    );

    if ( $Cache && ref($Cache) eq 'ARRAY' ) {
        @TicketIDs = @{$Cache};
    }
    else {
        my @ViewableStateIDs = $Self->{StateObject}->StateGetStatesByType(
            Type   => 'Viewable',
            Result => 'ID',
        );
        my $SQL = "SELECT st.id, st.tn, st.escalation_start_time, st.escalation_response_time, st.escalation_solution_time, "
            . "st.ticket_state_id, st.service_id, st.sla_id, st.create_time, st.queue_id, st.ticket_lock_id "
            . " FROM "
            . " ticket st, queue q "
            . " WHERE "
            . " st.queue_id = q.id AND "
            . " st.ticket_state_id IN ( ${\(join ', ', @ViewableStateIDs)} ) AND ";
        my @GroupIDs = $Self->{GroupObject}->GroupMemberList(
            UserID => $Self->{UserID},
            Type   => 'rw',
            Result => 'ID',
            Cached => 1,
        );
        $SQL .= " q.group_id IN ( ${\(join ', ', @GroupIDs)} )";

        # check if user is in min. one group! if not, return here
        return if !@GroupIDs;

        $SQL .= " ORDER BY st.escalation_start_time ASC";
        $Self->{DBObject}->Prepare( SQL => $SQL, Limit => 5000 );
        while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
            my $TicketData = {
                TicketID               => $Row[0],
                TicketNumber           => $Row[1],
                EscalationStartTime    => $Row[2],
                EscalationResponseTime => $Row[3],
                EscalationSolutionTime => $Row[4],
                StateID                => $Row[5],
                ServiceID              => $Row[6],
                SLAID                  => $Row[7],
                Created                => $Row[8],
                QueueID                => $Row[9],
                LockID                 => $Row[10],
            };
            push @TicketIDs, $TicketData;
        }

        # get state and lock infos
        my %LockList = $Self->{LockObject}->LockList(
                UserID => $Self->{UserID},
        );
        for my $TicketData (@TicketIDs) {

            # get state info
            my %StateData = $Self->{StateObject}->StateGet(
                ID    => $TicketData->{StateID},
                Cache => 1,
            );
            $TicketData->{StateType} = $StateData{TypeName};
            $TicketData->{State}     = $StateData{Name};
            $TicketData->{Lock}      = $LockList{$TicketData->{LockID}}
        }

        my $LastElementCount = $#TicketIDs;
        my $TTL = 12;                        # 0.2 * 60
        if ( $LastElementCount > 500 ) {
            $TTL = 330;                      # 5.5 * 60
        }
        elsif ( $LastElementCount > 250 ) {
            $TTL = 210;                      # 3.5 * 60;
        }
        elsif ( $LastElementCount > 200 ) {
            $TTL = 150;                      # 2.5 * 60;
        }
        elsif ( $LastElementCount > 150 ) {
            $TTL = 120;                      # 2.0 * 60;
        }
        elsif ( $LastElementCount > 100 ) {
            $TTL = 90;                       # 1.5 * 60;
        }
        elsif ( $LastElementCount > 60 ) {
            $TTL = 60;                       # 1.0 * 60;
        }
        elsif ( $LastElementCount > 20 ) {
            $TTL = 30;                       # 0.5 * 60;
        }
        $Self->{CacheObject}->Set(
            Type  => 'TicketEscalation',
            Key   => "EscalationIndex::$Self->{UserID}",
            Value => \@TicketIDs,
            TTL   => $TTL,
        );
    }

    # get escalations
    my $ResponseTime = '';
    my $UpdateTime   = '';
    my $SolutionTime = '';
    my $Comment      = '';
    my $Count        = 0;
    my $ShownMax     = $Param{Config}->{ShownMax} || 30;
    for my $TicketData (@TicketIDs) {
        my %Ticket   = %{$TicketData};
        my $TicketID = $Ticket{TicketID};

        # just use the oldest 30 ticktes
        if ( $Count >= $ShownMax) {
            $Count = 100;
            last;
        }
        my %Escalation = $Self->{TicketObject}->TicketEscalationState(
                TicketID => $TicketID,
                Ticket   => $TicketData,
                UserID   => $Self->{UserID},
        );
        for my $Key (keys %Escalation) {
            $Ticket{$Key} = $Escalation{$Key};
        }

        for (
            qw(FirstResponseTimeDestinationDate UpdateTimeDestinationDate SolutionTimeDestinationDate)
            )
        {
            if ( $Ticket{$_} ) {
                $Ticket{$_} = $Self->{LayoutObject}->{LanguageObject}
                    ->FormatTimeString( $Ticket{$_}, undef, 'NoSeconds' );
            }
        }

        # check response time
        if ( defined( $Ticket{FirstResponseTime} ) ) {
            my $TimeHuman = $Self->{LayoutObject}->CustomerAgeInHours(
                Age   => $Ticket{FirstResponseTime},
                Space => ' ',
            );
            if ( $Ticket{FirstResponseTimeEscalation} ) {
                $ResponseTime .= $Self->{LayoutObject}->Notify(
                    Priority => 'Error',
                    Link     => '$Env{"Baselink"}Action=AgentTicketZoom&TicketID=' . $TicketID,
                    Data     => '$Text{"Ticket %s: first response time is over (%s)!", "'
                        . $Ticket{TicketNumber}
                        . "\", \"$TimeHuman / $Ticket{'FirstResponseTimeDestinationDate'}\"}",
                );
                $Count++;
            }
            elsif ( $Ticket{FirstResponseTimeNotification} ) {
                $ResponseTime .= $Self->{LayoutObject}->Notify(
                    Priority => 'Notice',
                    Link     => '$Env{"Baselink"}Action=AgentTicketZoom&TicketID=' . $TicketID,
                    Data     => '$Text{"Ticket %s: first response time will be over in %s!", "'
                        . $Ticket{TicketNumber}
                        . "\", \"$TimeHuman / $Ticket{'FirstResponseTimeDestinationDate'}\"}",
                );
                $Count++;
            }
        }

        # check update time
        if ( defined( $Ticket{UpdateTime} ) ) {
            my $TimeHuman = $Self->{LayoutObject}->CustomerAgeInHours(
                Age   => $Ticket{UpdateTime},
                Space => ' ',
            );
            if ( $Ticket{UpdateTimeEscalation} ) {
                $UpdateTime .= $Self->{LayoutObject}->Notify(
                    Priority => 'Error',
                    Link     => '$Env{"Baselink"}Action=AgentTicketZoom&TicketID=' . $TicketID,
                    Data     => '$Text{"Ticket %s: update time is over (%s)!", "'
                        . $Ticket{TicketNumber}
                        . "\", \"$TimeHuman / $Ticket{'UpdateTimeDestinationDate'}\"}",
                );
                $Count++;
            }
            elsif ( $Ticket{UpdateTimeNotification} ) {
                $UpdateTime .= $Self->{LayoutObject}->Notify(
                    Priority => 'Notice',
                    Link     => '$Env{"Baselink"}Action=AgentTicketZoom&TicketID=' . $TicketID,
                    Data     => '$Text{"Ticket %s: update time will be over in %s!", "'
                        . $Ticket{TicketNumber}
                        . "\", \"$TimeHuman / $Ticket{'UpdateTimeDestinationDate'}\"}",
                );
                $Count++;
            }
        }

        # check solution
        if ( defined( $Ticket{SolutionTime} ) ) {
            my $TimeHuman = $Self->{LayoutObject}->CustomerAgeInHours(
                Age   => $Ticket{SolutionTime},
                Space => ' ',
            );
            if ( $Ticket{SolutionTimeEscalation} ) {
                $SolutionTime .= $Self->{LayoutObject}->Notify(
                    Priority => 'Error',
                    Link     => '$Env{"Baselink"}Action=AgentTicketZoom&TicketID=' . $TicketID,
                    Data     => '$Text{"Ticket %s: solution time is over (%s)!", "'
                        . $Ticket{TicketNumber}
                        . "\", \"$TimeHuman / $Ticket{'SolutionTimeDestinationDate'}\"}",
                );
                $Count++;
            }
            elsif ( $Ticket{SolutionTimeNotification} ) {
                $SolutionTime .= $Self->{LayoutObject}->Notify(
                    Priority => 'Notice',
                    Link     => '$Env{"Baselink"}Action=AgentTicketZoom&TicketID=' . $TicketID,
                    Data     => '$Text{"Ticket %s: solution time will be over in %s!", "'
                        . $Ticket{TicketNumber}
                        . "\", \"$TimeHuman / $Ticket{'SolutionTimeDestinationDate'}\"}",
                );
                $Count++;
            }
        }
    }
    if ( $Count == 100 ) {
        $Comment .= $Self->{LayoutObject}->Notify(
            Priority => 'Error',
            Info     => 'There are more escalated tickets!',
        );
    }
    my $Output = $ResponseTime . $UpdateTime . $SolutionTime . $Comment;

    # cache result
    if ( $CacheTime ) {
        $Self->{CacheObject}->Set(
            Type => 'TicketEscalation',
            Key  => "EscalationResult::$Self->{UserID}",
            Value => $Output,
            TTL   => $CacheTime,
        );
    }

    return $Output;
}

1;
