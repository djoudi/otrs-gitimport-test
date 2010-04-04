# --
# Kernel/Output/HTML/TicketMenuTicketWatcher.pm
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: TicketMenuTicketWatcher.pm,v 1.16 2010-04-04 17:09:11 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::TicketMenuTicketWatcher;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.16 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (qw(ConfigObject LogObject DBObject LayoutObject UserID TicketObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Ticket} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need Ticket!' );
        return;
    }

    # check if feature is aktive
    if ( !$Self->{ConfigObject}->Get('Ticket::Watcher') ) {
        return $Param{Counter};
    }

    # check if frontend module registered, if not, do not show action
    if ( $Param{Config}->{Action} ) {
        my $Module = $Self->{ConfigObject}->Get('Frontend::Module')->{ $Param{Config}->{Action} };
        return $Param{Counter} if !$Module;
    }

    if (
        !defined $Param{ACL}->{ $Param{Config}->{Action} }
        || $Param{ACL}->{ $Param{Config}->{Action} }
        )
    {
        my @Groups;
        if ( $Self->{ConfigObject}->Get('Ticket::WatcherGroup') ) {
            @Groups = @{ $Self->{ConfigObject}->Get('Ticket::WatcherGroup') };
        }

        # check access
        my $Access = 1;
        if (@Groups) {
            $Access = 0;
            for my $Group (@Groups) {
                next if !$Self->{LayoutObject}->{"UserIsGroup[$Group]"};
                if ( $Self->{LayoutObject}->{"UserIsGroup[$Group]"} eq 'Yes' ) {
                    $Access = 1;
                    last;
                }
            }
        }
        if ($Access) {
            $Self->{LayoutObject}->Block(
                Name => 'Menu',
            );
            if ( $Param{Counter} ) {
                $Self->{LayoutObject}->Block(
                    Name => 'MenuItemSplit',
                );
            }
            my %Watch = $Self->{TicketObject}->TicketWatchGet(
                TicketID => $Param{Ticket}->{TicketID},
            );
            if ( $Watch{ $Self->{UserID} } ) {
                $Self->{LayoutObject}->Block(
                    Name => 'MenuItem',
                    Data => {
                        %{ $Param{Config} },
                        %{ $Param{Ticket} },
                        %Param,
                        Name        => 'Unsubscribe',
                        Description => 'Remove from list of subscribed tickets',
                        Link =>
                            'Action=AgentTicketWatcher&amp;Subaction=Unsubscribe&amp;TicketID=$QData{"TicketID"}',
                    },
                );
            }
            else {
                $Self->{LayoutObject}->Block(
                    Name => 'MenuItem',
                    Data => {
                        %{ $Param{Config} },
                        %Param,
                        Name        => 'Subscribe',
                        Description => 'Add to list of subscribed tickets',
                        Link =>
                            'Action=AgentTicketWatcher&amp;Subaction=Subscribe&amp;TicketID=$QData{"TicketID"}',
                    },
                );
            }
        }
        $Param{Counter}++;
    }
    return $Param{Counter};
}

1;
