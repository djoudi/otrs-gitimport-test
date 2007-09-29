# --
# Kernel/Output/HTML/TicketMenuTicketWatcher.pm
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: TicketMenuTicketWatcher.pm,v 1.4 2007-09-29 10:49:13 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Output::HTML::TicketMenuTicketWatcher;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.4 $) [1];

sub new {
    my $Type  = shift;
    my %Param = @_;

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
    my $Self  = shift;
    my %Param = @_;

    # check needed stuff
    if ( !$Param{Ticket} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need Ticket!" );
        return;
    }

    # check if feature is aktive
    if ( !$Self->{ConfigObject}->Get('Ticket::Watcher') ) {
        return $Param{Counter};
    }

    if ( !defined( $Param{ACL}->{ $Param{Config}->{Action} } )
        || $Param{ACL}->{ $Param{Config}->{Action} } )
    {
        my @Groups = ();
        if ( $Self->{ConfigObject}->Get('Ticket::WatcherGroup') ) {
            @Groups = @{ $Self->{ConfigObject}->Get('Ticket::WatcherGroup') };
        }

        # check access
        my $Access = 0;
        if ( !@Groups ) {
            $Access = 1;
        }
        else {
            for my $Group (@Groups) {
                if (   $Self->{LayoutObject}->{"UserIsGroup[$Group]"}
                    && $Self->{LayoutObject}->{"UserIsGroup[$Group]"} eq 'Yes' )
                {
                    $Access = 1;
                }
            }
        }
        if ($Access) {
            $Self->{LayoutObject}->Block(
                Name => 'Menu',
                Data => {},
            );
            if ( $Param{Counter} ) {
                $Self->{LayoutObject}->Block(
                    Name => 'MenuItemSplit',
                    Data => {},
                );
            }
            my %Watch = $Self->{TicketObject}->TicketWatchGet(
                TicketID => $Param{TicketID},
                UserID   => $Self->{UserID},
            );
            if ( $Watch{CreateBy} ) {
                $Self->{LayoutObject}->Block(
                    Name => 'MenuItem',
                    Data => {
                        %{ $Param{Config} },
                        %{ $Param{Ticket} },
                        %Param,
                        Name        => 'Unsubscribe',
                        Description => 'Unsubscribe it to watch it not longer!',
                        Link =>
                            'Action=AgentTicketWatcher&Subaction=Unsubscribe&TicketID=$QData{"TicketID"}',
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
                        Description => 'Subscribe it to watch it!',
                        Link =>
                            'Action=AgentTicketWatcher&Subaction=Subscribe&TicketID=$QData{"TicketID"}',
                    },
                );
            }
        }
        $Param{Counter}++;
    }
    return $Param{Counter};
}

1;
