# --
# Kernel/Modules/AgentQueueView.pm - the queue view of all tickets
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentQueueView.pm,v 1.34 2003-04-24 10:41:19 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentQueueView;

use strict;
use Kernel::System::State;
use Kernel::System::Lock;
use Kernel::System::CustomerUser;

use vars qw($VERSION);
$VERSION = '$Revision: 1.34 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;
    # allocate new hash for object
    my $Self = {}; 
    bless ($Self, $Type);
    # get common opjects
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }
    # check all needed objects
    foreach (qw(ParamObject DBObject QueueObject LayoutObject ConfigObject LogObject UserObject)) {
        die "Got no $_" if (!$Self->{$_});
    }
    # --
    # some new objects
    # --
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);
    $Self->{StateObject} = Kernel::System::State->new(%Param);
    $Self->{LockObject} = Kernel::System::Lock->new(%Param);

    # --
    # get config data
    # --
    $Self->{ViewableSenderTypes} = $Self->{ConfigObject}->Get('ViewableSenderTypes')
           || die 'No Config entry "ViewableSenderTypes"!';
    $Self->{CustomQueue} = $Self->{ConfigObject}->Get('CustomQueue') || '???';
    # default viewable tickets a page
    $Self->{ViewableTickets} = $Self->{ConfigObject}->Get('ViewableTickets');

    # --
    # get params
    # --
    $Self->{Start} = $Self->{ParamObject}->GetParam(Param => 'Start') || 1;
    # viewable tickets a page
    $Self->{Limit} =  $Self->{ViewableTickets} + $Self->{Start};
    # sure is sure!
    $Self->{MaxLimit} = $Self->{ConfigObject}->Get('MaxLimit') || 1200;
    if ($Self->{Limit} > $Self->{MaxLimit}) {
        $Self->{Limit} = $Self->{MaxLimit};
    }
    # --
    # all static variables
    # --
    my @ViewableStateIDs = $Self->{StateObject}->StateGetStatesByType(
        Type => 'Viewable',
        Result => 'ID',
    );
    $Self->{ViewableStateIDs} = \@ViewableStateIDs;
    my @ViewableLockIDs = $Self->{LockObject}->LockViewableLock(Type => 'ID');
    $Self->{ViewableLockIDs} = \@ViewableLockIDs;

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $QueueID = $Self->{QueueID};

    # --
    # store last screen
    # --
    if (!$Self->{SessionObject}->UpdateSessionID(
        SessionID => $Self->{SessionID},
        Key => 'LastScreen',
        Value => $Self->{RequestedURL},
    )) {
        my $Output = $Self->{LayoutObject}->Header(Title => 'Error');
        $Output .= $Self->{LayoutObject}->Error();
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # starting with page ...
    my $Refresh = '';
    if ($Self->{UserRefreshTime}) {
        $Refresh = 60 * $Self->{UserRefreshTime};
    }
    my $Output = $Self->{LayoutObject}->Header(
        Title => 'QueueView',
        Refresh => $Refresh,
    );
    # get user lock data
    my %LockedData = $Self->{TicketObject}->GetLockedCount(UserID => $Self->{UserID});
    # build NavigationBar 
    $Output .= $Self->{LayoutObject}->NavigationBar(LockData => \%LockedData);
    # --
    # check old tickets, show it and return if needed
    # --
    if (my @ViewableTickets = $Self->{TicketObject}->GetOverTimeTickets(UserID=> $Self->{UserID})) {
        # --
        # show ticket's
        # --
        $Output .= $Self->{LayoutObject}->TicketEscalation(
            Message => 'Please answer this ticket(s) to get back to the normal queue view!',
        );
        foreach my $DataTmp (@ViewableTickets) {
          my %Data = %$DataTmp;
          $Output .= $Self->ShowTicket(
            %Data,
            QueueID => $QueueID,
          );
        }
        # get page footer
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
    # --
    # build queue view ...
    # --
    my @ViewableQueueIDs = ();
    if ($QueueID == 0) {
        @ViewableQueueIDs = $Self->{QueueObject}->GetAllCustomQueues(
            UserID => $Self->{UserID}
        );
    }
    else {
        @ViewableQueueIDs = ($QueueID);
    }
    $Output .= $Self->BuildQueueView(
        QueueIDs => \@ViewableQueueIDs,
        QueueID => $QueueID
    );

    # to get the output faster!
    print $Output; $Output = '';
    # get user groups
    my $Type = 'rw';
    if ($Self->{ConfigObject}->Get('QueueViewAllPossibleTickets')) {
        $Type = 'ro';
    }
    my @GroupIDs = $Self->{GroupObject}->GroupUserList(
        UserID => $Self->{UserID},
        Type => $Type,
        Result => 'ID',
    );
    # --
    # get data (viewable tickets...)
    # --
    my @ViewableTickets = ();
    if (@ViewableQueueIDs && @GroupIDs) {
        my $SQL = "SELECT st.id, st.queue_id FROM ".
          " ticket st, queue sq ".
          " WHERE ".
          " sq.id = st.queue_id ".
          " AND ".
          " st.ticket_state_id in ( ${\(join ', ', @{$Self->{ViewableStateIDs}})} ) ".
          " AND ".
          " st.ticket_lock_id in ( ${\(join ', ', @{$Self->{ViewableLockIDs}})} ) ".
          " AND ".
          " st.queue_id in ( ${\(join ', ', @ViewableQueueIDs)} ) ".
          " AND ".
          " sq.group_id IN ( ${\(join ', ', @GroupIDs)} ) ".
          " ORDER BY st.ticket_priority_id DESC, st.create_time_unix ASC ";

          $Self->{DBObject}->Prepare(SQL => $SQL, Limit => $Self->{Limit});
          my $Counter = 0;
          while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
              my $Data = {
                TicketID => $RowTmp[0],
                TicketQueueID => $RowTmp[1],
              };
              if ($Counter >= ($Self->{Start}-1)) {
                  push (@ViewableTickets, $Data);
              }
              $Counter++;
          }
    }
    # --
    # show ticket's
    # --
    foreach my $DataTmp (@ViewableTickets) {
      my %Data = %$DataTmp;
      print $Self->ShowTicket(
        %Data,
        QueueID => $QueueID,
      );
    }

    # get page footer
    $Output .= $Self->{LayoutObject}->Footer();

    # return page
    return $Output;
}
# --
# ShowTicket
# --
sub ShowTicket {
    my $Self = shift;
    my %Param = @_;
    my $TicketID = $Param{TicketID} || return;
    my $QueueID = $Param{QueueID} || 0;
    my $TicketQueueID = $Param{TicketQueueID} || '';
    my $Output = '';

    my %MoveQueues = ();
    if ($Self->{ConfigObject}->Get('MoveInToAllQueues')) {
        %MoveQueues = $Self->{QueueObject}->GetAllQueues();
    }
    else {
        %MoveQueues = $Self->{QueueObject}->GetAllQueues(UserID => $Self->{UserID});
    }

    # fetch all std. responses ...
    my %StdResponses = $Self->{QueueObject}->GetStdResponses(QueueID => $TicketQueueID);

    # --
    # get atrticles
    # --
    my @ShownViewableTicket = ();
    my %Ticket = ();
    my $SQL = "SELECT sa.ticket_id, sa.a_from, sa.a_to, sa.a_cc, sa.a_subject, ".
        " sa.a_body, st.create_time_unix, sa.a_freekey1, sa.a_freetext1, sa.a_freekey2, ".
        " sa.a_freetext2, sa.a_freekey3, sa.a_freetext3, st.freekey1, st.freekey2, ".
        " st.freetext1, st.freetext2, st.customer_id, st.customer_user_id, ".
        " sq.name as queue, sa.id as article_id, st.id, st.tn, sp.name, ".
        " sp.id as priority_id, sd.name as state, st.queue_id, st.create_time, ".
        " sa.incoming_time, sq.escalation_time, st.ticket_answered, sa.a_content_type ".
        " FROM ".
        " article sa, ticket st, ticket_priority sp, ticket_state sd, article_sender_type sdt, queue sq ".
        " WHERE ".
        " sa.ticket_id = st.id ".
        " AND ".
        " sa.article_sender_type_id = sdt.id ".
        " AND ".
        " sq.id = st.queue_id".
        " AND ".
        " sp.id = st.ticket_priority_id ".
        " AND ".
        " st.ticket_state_id = sd.id ".
        " AND ".
        " sa.ticket_id = $TicketID ".
        " AND ".
        " sdt.name in ( ${\(join ', ', @{$Self->{ViewableSenderTypes}})} ) ".
        " ORDER BY sa.create_time DESC ";
    $Self->{DBObject}->Prepare(SQL => $SQL, Limit => 1);
    while (my $Data = $Self->{DBObject}->FetchrowHashref() ) {
        my $Age = time() - $$Data{create_time_unix};
        my $TicketOverTime = ''; 
        if ($$Data{escalation_time} && !$$Data{ticket_answered}) {
            $TicketOverTime = (($$Data{incoming_time} + ($$Data{escalation_time}*60)) - time()); 
        }
        if ($$Data{a_content_type} && $$Data{a_content_type} =~ /charset=(.*)(| |\n)/i) {
            $$Data{ContentCharset} = $1;
        }
        if ($$Data{a_content_type} && $$Data{a_content_type} =~ /^(.+?\/.+?)( |;)/i) {
            $$Data{MimeType} = $1;
        }

        %Ticket = (
            TicketNumber => $$Data{tn},
            Priority => $$Data{name},
            PriorityID => $$Data{priority_id},
            State => $$Data{state},
            TicketID => $$Data{id},
            ArticleID => $$Data{article_id},
            From => $$Data{a_from},
            To => $$Data{a_to},
            Cc => $$Data{a_cc},
            Subject => $$Data{a_subject},
            Body => $$Data{a_body},
            ContentCharset => $$Data{ContentCharset},
            MimeType => $$Data{MimeType},
            Age => $Age,
            TicketOverTime => $TicketOverTime,
            Answered => $$Data{ticket_answered},
            Created => $$Data{create_time},
            StdResponses => \%StdResponses,
        #       QueueID => $$Data{queue_id},
            QueueID => $QueueID,
            Queue => $$Data{queue},
            MoveQueues => \%MoveQueues,
            CustomerID => $$Data{customer_id},
            CustomerUserID => $$Data{customer_user_id},
            ArticleFreeKey1 => $$Data{a_freekey1},
            ArticleFreeValue1 => $$Data{a_freetext1},
            ArticleFreeKey2 => $$Data{a_freekey2},
            ArticleFreeValue2 => $$Data{a_freetext2},
            ArticleFreeKey3 => $$Data{a_freekey3},
            ArticleFreeValue3 => $$Data{a_freetext3},
            TicketFreeKey1 => $$Data{freekey1},
            TicketFreeValue1 => $$Data{freetext1},
            TicketFreeKey2 => $$Data{freekey2},
            TicketFreeValue2 => $$Data{freetext2},
            # view type
            ViewType => $Self->{UserQueueView},
        );
        push (@ShownViewableTicket, $$Data{id});
    }
    # --
    # customer info
    # --
    my %CustomerData = (); 
    if ($Self->{ConfigObject}->Get('ShowCustomerInfoQueue')) {
        if ($Ticket{CustomerUserID}) { 
            %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                User => $Ticket{CustomerUserID},
            );
        }
        elsif ($Ticket{CustomerID}) { 
            %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                CustomerID => $Ticket{CustomerID},
            );
        }
    }
    # --
    # build ticket view
    # --
    $Output .= $Self->{LayoutObject}->TicketView(
        %Ticket,
        CustomerData => \%CustomerData,
    );
    # if there is no customer article avalible! Error!
    my $Hit = 0;
    foreach (@ShownViewableTicket) {
        if ($_ == $TicketID) {
            $Hit = 1;
        }
    }
    if ($Hit == 0) {
        $Output .= $Self->{LayoutObject}->Error(
            Message => "No customer article found!! (TicketID=$TicketID)",
            Comment => 'Please contact your admin',
        );
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "No customer article found!! (TicketID=$TicketID)",
            Comment => 'Please contact your admin',
        );
    }
    # return page
    return $Output;
}
# --
sub BuildQueueView {
    my $Self = shift;
    my %Param = @_;
    my $QueueID = $Param{QueueID};
    my $Output = '';
    my @Queues;

    my %Data = $Self->{TicketObject}->TicketAcceleratorIndex(
        UserID => $Self->{UserID},
        QueueID => $QueueID,
        ShownQueueIDs => $Param{QueueIDs},
    ); 
    # --
    # check shown tickets
    # --
    if ($Self->{MaxLimit} < $Data{TicketsAvail}) {
        # set max shown
        $Data{TicketsAvail} = $Self->{MaxLimit};
    }
    # --
    # build output ...
    # --
    my %AllQueues = $Self->{QueueObject}->GetAllQueues();
    $Output .= $Self->{LayoutObject}->QueueView(
        %Data,
        QueueID => $QueueID,
        AllQueues => \%AllQueues,
        Start => $Self->{Start},
    );

    return $Output;
}
# --

1;
