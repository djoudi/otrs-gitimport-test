# --
# Kernel/System/Ticket/IndexAccelerator/RuntimeDB.pm - realtime database 
# queue ticket index module
# Copyright (C) 2002-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: RuntimeDB.pm,v 1.6 2003-01-19 18:23:52 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Ticket::IndexAccelerator::RuntimeDB;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.6 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

sub TicketAcceleratorUpdate {
    my $Self = shift;
    my %Param = @_;
    return 1;
}
# --
sub TicketAcceleratorDelete {
    my $Self = shift;
    my %Param = @_;
    return 1;
}
# --
sub TicketAcceleratorAdd {
    my $Self = shift;
    my %Param = @_;
    return 1;
}
# --
sub TicketAcceleratorIndex {
    my $Self = shift;
    my %Param = @_;
    my @ViewableLocks = @{$Self->{ConfigObject}{ViewableLocks}};
    my @ViewableStats = @{$Self->{ConfigObject}{ViewableStats}};
    # --
    # check needed stuff
    # --
    foreach (qw(UserID QueueID ShownQueueIDs)) {
      if (!exists($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my @QueueIDs = @{$Param{ShownQueueIDs}};
    my %Queues = ();
    $Queues{MaxAge} = 0;
    $Queues{TicketsShown} = 0;
    $Queues{TicketsAvail} = 0;
    # --
    # prepar "All tickets: ??" in Queue
    # --
    if (@QueueIDs) {
        my $SQL = "SELECT count(*) as count " .
          " FROM " .
          " ticket st, ticket_state tsd " .
          " WHERE " .
          " tsd.id = st.ticket_state_id ".
          " AND " .
          " tsd.name in ( ${\(join ', ', @ViewableStats)} ) " .
          " and " .
          " st.queue_id in ( ${\(join ', ', @QueueIDs)} ) " .
          " ";
    
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $Queues{AllTickets} = $Row[0];
        }
    }
    # --
    # CustomQueue add on
    # --
    my $SQL = "SELECT count(*) FROM " .
    " ticket as st, queue as sq, personal_queues as suq, " .
    " ticket_state tsd, ticket_lock_type slt " .
    " WHERE " .
    " st.ticket_state_id = tsd.id " .
    " AND " .
    " st.queue_id = sq.id " .
    " AND " .
    " st.ticket_lock_id = slt.id " .
    " AND " .
    " suq.queue_id = st.queue_id " .
    " AND " .
    " tsd.name in ( ${\(join ', ', @ViewableStats)} ) " .
    " AND " .
    " slt.name in ( ${\(join ', ', @ViewableLocks)} ) " .
    " AND " .
    # get all custom queues
    " suq.user_id = $Param{UserID} " .
    #/ get all custom queues /
    "";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my %Hashes;
        $Hashes{QueueID} = 0;
        $Hashes{Queue} = $Self->{ConfigObject}->Get('CustomQueue') || '???';
        $Hashes{MaxAge} = 0;
        $Hashes{Count} = $Row[0];
        push (@{$Queues{Queues}}, \%Hashes);
        # set some things
        if ($Param{QueueID} == 0) {
            $Queues{TicketsShown} = $Row[0];
            $Queues{TicketsAvail} = $Row[0];
        }
    }
    # prepar the tickets in Queue bar (all data only with my/your Permission)
    $SQL = "SELECT st.queue_id, sq.name, min(st.create_time_unix), count(*) as count ".
    " FROM " .
    " ticket as st, queue as sq, group_user as sug, ticket_state tsd, " .
    " ticket_lock_type slt " .
    " WHERE " .
    " st.ticket_state_id = tsd.id " .
    " AND " .
    " st.queue_id = sq.id " .
    " AND " .
    " st.ticket_lock_id = slt.id " .
    " AND " .
    " sq.group_id = sug.group_id" .
    " AND " .
    " tsd.name in ( ${\(join ', ', @ViewableStats)} ) " .
    " AND " .
    " slt.name in ( ${\(join ', ', @ViewableLocks)} ) " .
    " AND " .
    " sug.user_id = $Param{UserID} " .
    " GROUP BY st.queue_id,sq.name " .
    " ORDER BY sq.name";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
        # store the data into a array
        my %Hashes;
        $Hashes{QueueID} = $RowTmp[0];
        $Hashes{Queue} = $RowTmp[1];
        $Hashes{MaxAge} = time() - $RowTmp[2];
        $Hashes{Count} = $RowTmp[3];
        push (@{$Queues{Queues}}, \%Hashes);
        # set some things
        if ($Param{QueueID} eq $RowTmp[0]) {
            $Queues{TicketsShown} = $RowTmp[3];
            $Queues{TicketsAvail} = $RowTmp[3];
        }
        # get the oldes queue id
        if ($Hashes{MaxAge} > $Queues{MaxAge}) {
            $Queues{MaxAge} = $Hashes{MaxAge};
            $Queues{QueueIDOfMaxAge} = $Hashes{QueueID};
        }
    }

    return %Queues;
}
# --
sub TicketAcceleratorRebuild {
    my $Self = shift;
    my %Param = @_;
    return 1;
}
# --
sub GetLockedCount {
    my $Self = shift;
    my %Param = @_;

    my @ViewableLocks = @{$Self->{ConfigObject}->Get('ViewableLocks')};
    
    # --
    # check needed stuff
    # --
    foreach (qw(UserID)) {
      if (!exists($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    $Self->{DBObject}->Prepare(
       SQL => "SELECT ar.id as ca, st.name, ti.id, ar.create_by, ti.create_time_unix, ".
              " ti.until_time, ts.name " .
              " FROM " .
              " ticket ti, article ar, article_sender_type st, ticket_lock_type slt, " .
              " ticket_state ts" .
              " WHERE " .
              " slt.name not in ( ${\(join ', ', @ViewableLocks)} ) " .
              " AND " .
              " ti.user_id = $Param{UserID} " .
              " AND " .
              " slt.id = ti.ticket_lock_id " .
              " AND " .
              " ar.ticket_id = ti.id " .
              " AND " .
              " st.id = ar.article_sender_type_id " .
              " AND " .
              " ts.id = ti.ticket_state_id " .
              " ORDER BY ar.create_time DESC",
    ); 
    my %Data = ();
    $Data{'Reminder'} = 0;
    $Data{'Pending'} = 0;
    $Data{'All'} = 0;
    $Data{'New'} = 0;
    $Data{'Open'} = 0;
    while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
        if (!$Param{"ID$RowTmp[2]"}) {
          $Data{'All'}++;
          # --
          # put all tickets to ToDo where last sender type is customer or ! UserID
          # --
          if ($RowTmp[3] ne $Param{UserID} || $RowTmp[1] eq 'customer') {
              $Data{'New'}++;
          }
          if ($RowTmp[5] && $RowTmp[6] =~ /^pending/i) {
              $Data{'Pending'}++;
              if ($RowTmp[6] !~ /^pending auto/i && $RowTmp[5] <= time()) {
                  $Data{'Reminder'}++;
              }
          }
        }
        $Param{"ID$RowTmp[2]"} = 1;
        $Data{"MaxAge"} = $RowTmp[4];
    }
    $Data{'Open'} = $Data{'All'} - $Data{'Pending'};
    return %Data;
}
# --
sub GetOverTimeTickets {
    my $Self = shift;
    my %Param = @_;
    # --
    # get data (viewable tickets...)
    # --
    my @TicketIDsOverTime = ();
    my %TicketIDs = ();
    my @ViewableStats = @{$Self->{ConfigObject}->Get('ViewableStats')};
    my @ViewableLocks = @{$Self->{ConfigObject}->Get('ViewableLocks')};
    my $SQL = "SELECT t.queue_id, a.ticket_id, a.id, ast.name, a.incoming_time, ".
    " q.name, q.escalation_time, t.tn ".
    " FROM ".
    " article a, article_sender_type ast, queue q, ticket t, ".
    " ticket_state tsd, ticket_lock_type slt, group_user as ug ".
    " WHERE ".
    " tsd.id = t.ticket_state_id " .
    " AND " .
    " slt.id = t.ticket_lock_id " .
    " AND " .
    " ast.id = a.article_sender_type_id ".
    " AND ".
    " t.id = a.ticket_id ".
    " AND ".
    " q.id = t.queue_id ".
    " AND ".
    " q.group_id = ug.group_id ".
    " AND ".
    " tsd.name in ( ${\(join ', ', @ViewableStats)} ) ".
    " AND " .
    " slt.name in ( ${\(join ', ', @ViewableLocks)} ) ".
    " AND ";
    if ($Param{UserID}) {
        $SQL .= " ug.user_id = $Param{UserID} ".
          " AND ";
    }
    $SQL .= " ast.name = 'customer' ".
    " AND " .
    " t.ticket_answered != 1 ".
    " AND " .
    " q.escalation_time != 0 ".
#    " GROUP BY t.id, t.queue_id, a.ticket_id, a.id, ast.name, a.incoming_time, ".
#    " q.name, q.escalation_time, t.ticket_priority_id ".
    " ORDER BY t.ticket_priority_id, a.incoming_time DESC";
   $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
      if ($RowTmp[6] && !exists($TicketIDs{$RowTmp[1]})) {
         $TicketIDs{$RowTmp[1]} = 1;
         my $OverTime = (time() - ($RowTmp[4] + ($RowTmp[6]*60)));
         my $Data = {
              TicketID => $RowTmp[1],
              TicketNumber => $RowTmp[7],
              TicketQueueID => $RowTmp[0],
              TicketOverTime => $OverTime,
              ArticleSenderType => $RowTmp[3],
              ArticleID => $RowTmp[2],
              QueueID => $RowTmp[0],
              Queue => $RowTmp[5],
          };
          if ($OverTime >= 0) {
              push (@TicketIDsOverTime, $Data);
          }
      }
    }
    # --
    # return overtime tickets
    # --
    return @TicketIDsOverTime;
}
# --

1;
