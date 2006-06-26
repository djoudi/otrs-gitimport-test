# --
# Kernel/Modules/AgentTicketWatcher.pm - a ticketwatcher module
# Copyright (C) 2001-2006 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentTicketWatcher.pm,v 1.1 2006-06-26 08:26:01 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentTicketWatcher;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

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

    return $Self;
}

sub Run {
    my $Self = shift;
    my %Param = @_;
    # ------------------------------------------------------------ #
    # check if feature is aktive
    # ------------------------------------------------------------ #
    if (!$Self->{ConfigObject}->Get('Ticket::Watcher')) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => 'Feature is not aktive',
        );
    }
    # ------------------------------------------------------------ #
    # check access
    # ------------------------------------------------------------ #
    my @Groups = ();
    if ($Self->{ConfigObject}->Get('Ticket::WatcherGroup')) {
        @Groups = @{$Self->{ConfigObject}->Get('Ticket::WatcherGroup')};
    }
    my $Access = 0;
    if (!@Groups) {
        $Access = 1;
    }
    else {
        foreach my $Group (@Groups) {
            if ($Self->{LayoutObject}->{"UserIsGroup[$Group]"} eq 'Yes') {
                $Access = 1;
            }
        }
    }
    # ------------------------------------------------------------ #
    # subscribe a ticket
    # ------------------------------------------------------------ #
    if ($Self->{Subaction} eq 'Subscribe') {
        # set subscribe
        if ($Self->{TicketObject}->TicketWatchSubscribe(
                TicketID => $Self->{TicketID},
                UserID => $Self->{UserID},
        )) {
            # add history
            $Self->{TicketObject}->HistoryAdd(
                TicketID => $Self->{TicketID},
                CreateUserID => $Self->{UserID},
                HistoryType => 'Misc',
                Name => "Subscribe the ticket to watch it.",
            );
            # redirect
            return $Self->{LayoutObject}->Redirect(OP => $Self->{LastScreenView});
        }
        else {
            return $Self->{LayoutObject}->ErrorScreen();
        }
    }
    # ------------------------------------------------------------ #
    # unsubscribe a ticket
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'Unsubscribe') {
        if ($Self->{TicketObject}->TicketWatchUnsubscribe(
            TicketID => $Self->{TicketID},
            UserID => $Self->{UserID},
        )) {
            return $Self->{LayoutObject}->Redirect(OP => $Self->{LastScreenView});
        }
        else {
            return $Self->{LayoutObject}->ErrorScreen();
        }
    }
    # ------------------------------------------------------------ #
    # show overview
    # ------------------------------------------------------------ #
    my $Output = $Self->{LayoutObject}->Header(Title => 'Overview');
    $Output .= $Self->{LayoutObject}->NavigationBar();

    # print the main table.
    $Self->{LayoutObject}->Block(
        Name => 'Overview',
        Data => {},
    );
    # get a list of all watched tickets
    my @List = $Self->{TicketObject}->TicketWatchList(
        Type => 'ARRAY',
        UserID => $Self->{UserID},
    );
    my $TableColor = 'searchactive';

    foreach my $TicketID (@List) {
        my %WatchedTicket = $Self->{TicketObject}->TicketWatchGet(
            TicketID => $TicketID,
            UserID => $Self->{UserID},
        );
        my %Article = $Self->{TicketObject}->ArticleLastCustomerArticle(
            TicketID => $TicketID,
        );
        # output watched ticket
        $Self->{LayoutObject}->Block(
                Name => 'OverviewWatched',
                Data => {
                    %Article,
                    %WatchedTicket,
                },
        );
        # switch the table color
        if ($TableColor eq 'searchactive') {
            $TableColor = 'searchpassiv';
        }
        else {
            $TableColor = 'searchactive';
        }
    }
    # output
    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'AgentTicketWatcher',
        Data => {%Param}
    );

    $Output .= $Self->{LayoutObject}->Footer();
    return $Output;
}

1;
