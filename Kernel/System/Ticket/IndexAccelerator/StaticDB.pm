# --
# Kernel/System/Ticket/IndexAccelerator/StaticDB.pm - static db queue ticket index module
# Copyright (C) 2002-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: StaticDB.pm,v 1.8 2003-03-04 00:12:52 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Ticket::IndexAccelerator::StaticDB;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.8 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub TicketAcceleratorUpdate {
    my $Self = shift;
    my %Param = @_;
    my @ViewableLocks = @{$Self->{ViewableLocks}};
    my @ViewableStates = @{$Self->{ViewableStates}};
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # --
    # check if ticket is shown or not
    # --
    my $IndexUpdateNeeded = 0;
    my $IndexSelcected = 0;
    my %TicketData = $Self->GetTicket(%Param);
    my %IndexTicketData = $Self->GetIndexTicket(%Param);
    if (!%IndexTicketData) {
        $IndexUpdateNeeded = 1;
    }
    else {
        # --
        # check if we need to update
        # --
        if ($TicketData{Lock} ne $IndexTicketData{Lock}) {
          $IndexUpdateNeeded = 1;
        }
        elsif ($TicketData{State} ne $IndexTicketData{State}) {
          $IndexUpdateNeeded = 1;
        }
        elsif ($TicketData{QueueID} ne $IndexTicketData{QueueID}) {
          $IndexUpdateNeeded = 1;
        }
    }
    # --
    # check if this ticket ist still viewable
    # --
    my $ViewableStatsHit = 0;
    foreach (@ViewableStates) {
        if ($_ =~ /^$TicketData{State}$/i) {
            $ViewableStatsHit = 1;
        }
    }
    my $ViewableLocksHit = 0;
    foreach (@ViewableLocks) {
        if ($_ =~ /^$TicketData{Lock}$/i) {
            $ViewableLocksHit = 1;
        }
    }
    if ($ViewableStatsHit && $ViewableLocksHit) {
        $IndexSelcected = 1;
    }
    # --
    # write index back
    # --
    if ($IndexUpdateNeeded) {
      if ($IndexSelcected) {
        if ($IndexTicketData{TicketID}) {
          my $SQL = "UPDATE ticket_index SET ".
            " queue_id = $TicketData{QueueID}, ".
            " queue = '$TicketData{Queue}', group_id = $TicketData{GroupID}, ".
            " s_lock = '$TicketData{Lock}', s_state = '$TicketData{State}' ".
            " WHERE  ".
            " ticket_id = $Param{TicketID} ";
          $Self->{DBObject}->Do(SQL => $SQL);
        }
        else {
          $Self->TicketAcceleratorAdd(%TicketData);
        }
      }
      else {
        $Self->TicketAcceleratorDelete(%Param);
      }
    }
    # --
    # write lock index
    # --
    if (!$ViewableLocksHit) {
        # check if there is already an lock index entry
        if (!$Self->GetIndexTicketLock(%Param)) {
            # add lock index entry
            $Self->TicketLockAcceleratorAdd(%TicketData);
        }
    }
    else {
        # delete lock index entry if tickst is unlocked
        $Self->TicketLockAcceleratorDelete(%Param);
    }
    return 1;
}
# --
sub TicketAcceleratorDelete {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my $SQL = "DELETE FROM ticket_index WHERE ticket_id = $Param{TicketID} ";
    $Self->{DBObject}->Do(SQL => $SQL);
    return;
}
# --
sub TicketAcceleratorAdd {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # --
    # get ticket data
    # --
    my %TicketData = $Self->GetTicket(%Param);
    # --
    # write/append index 
    # --
    foreach (keys %TicketData) {
        $TicketData{$_} = $Self->{DBObject}->Quote($TicketData{$_});
    }
    my $SQL = "INSERT INTO ticket_index ".
        " (ticket_id, queue_id, queue, group_id, s_lock, s_state, create_time_unix)".
        " VALUES ".
        " ($Param{TicketID}, $TicketData{QueueID}, '$TicketData{Queue}', ".
        " $TicketData{GroupID}, '$TicketData{Lock}', '$TicketData{State}', ".
        " $TicketData{CreateTimeUnix})";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    } 
    else {
        return;
    }
}
# --
sub TicketLockAcceleratorDelete {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my $SQL = "DELETE FROM ticket_lock_index WHERE ticket_id = $Param{TicketID} ";
    $Self->{DBObject}->Do(SQL => $SQL);
    return;
}
# --
sub TicketLockAcceleratorAdd {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # --
    # get ticket data
    # --
    my %TicketData = $Self->GetTicket(%Param);
    # --
    # write/append index 
    # --
    foreach (keys %TicketData) {
        $TicketData{$_} = $Self->{DBObject}->Quote($TicketData{$_});
    }
    my $SQL = "INSERT INTO ticket_lock_index ".
        " (ticket_id)".
        " VALUES ".
        " ($Param{TicketID})";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    } 
    else {
        return;
    }
}
# --
sub TicketAcceleratorIndex {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(UserID QueueID ShownQueueIDs)) {
      if (!exists($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my %Queues = ();
    $Queues{MaxAge} = 0;
    $Queues{TicketsShown} = 0;
    $Queues{TicketsAvail} = 0;
    my @QueueIDs = @{$Param{ShownQueueIDs}};
    # --
    # prepar "All tickets: ??" in Queue
    # --
    if (@QueueIDs) {
        my $SQL = "SELECT count(*) as count " .
          " FROM " .
          " ticket st " .
          " WHERE " .
          " st.ticket_state_id in ( ${\(join ', ', @{$Self->{ViewableStateIDs}})} ) " .
          " and " .
          " st.queue_id in ( ${\(join ', ', @QueueIDs)} ) " .
          " ";

        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $Queues{AllTickets} = $Row[0];
        }
    }
    # -- 
    # get user groups
    # --
    my %Groups = $Self->{UserObject}->GetGroups(%Param);
    my @GroupIDs = ();
    foreach (keys %Groups) {
        push (@GroupIDs, $_);
    }
    # --
    # get index 
    # --
    $Queues{MaxAge} = 0;
    # --
    # CustomQueue add on
    # --
    my $SQL = "SELECT count(*) FROM ".
    " ticket_index as ti, personal_queues as suq ".
    " WHERE ".
    " suq.queue_id = ti.queue_id ".
    " AND ".
    " ti.group_id in ( ${\(join ', ', @GroupIDs)} ) ".
    " AND ".
    " suq.user_id = $Param{UserID}";
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
    $SQL = "SELECT queue_id, queue, min(create_time_unix), count(*) as count ".
    " FROM " .
    " ticket_index ".
    " WHERE " .
    " group_id in ( ${\(join ', ', @GroupIDs)} ) ".
    " GROUP BY queue_id, queue " .
    " ORDER BY queue";
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
        if ($Param{QueueID} == $RowTmp[0]) {
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
    # --
    # get all viewable tickets
    # --
    my $SQL = "SELECT st.id, st.queue_id, sq.name, sq.group_id, slt.name, ".
    " tsd.name, st.create_time_unix ".
    " FROM " .
    " ticket as st, queue as sq, ticket_state tsd, " .
    " ticket_lock_type slt " .
    " WHERE " .
    " st.ticket_state_id = tsd.id " .
    " AND " .
    " st.queue_id = sq.id " .
    " AND " .
    " st.ticket_lock_id = slt.id " .
    " AND " .
    " st.ticket_state_id in ( ${\(join ', ', @{$Self->{ViewableStateIDs}})} ) " .
    " AND " .
    " st.ticket_lock_id in ( ${\(join ', ', @{$Self->{ViewableLockIDs}})} ) " .
    " ";

    $Self->{DBObject}->Prepare(SQL => $SQL);
    my @RowBuffer = ();
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my %Data = ();
        $Data{TicketID} = $Row[0];
        $Data{QueueID} = $Row[1];
        $Data{Queue} = $Row[2];
        $Data{GroupID} = $Row[3];
        $Data{Lock} = $Row[4];
        $Data{State} = $Row[5];
        $Data{CreateTimeUnix} = $Row[6];
        push (@RowBuffer, \%Data);
    }
    # --
    # write index 
    # --
    $Self->{DBObject}->Do(SQL => "DELETE FROM ticket_index");
    foreach (@RowBuffer) {
        my %Data = %{$_};
        foreach (keys %Data) {
            $Data{$_} = $Self->{DBObject}->Quote($Data{$_});
        }
        my $SQL = "INSERT INTO ticket_index ".
          " (ticket_id, queue_id, queue, group_id, s_lock, s_state, create_time_unix)".
          " VALUES ".
          " ($Data{TicketID}, $Data{QueueID}, '$Data{Queue}', $Data{GroupID}, ".
          " '$Data{Lock}', '$Data{State}', $Data{CreateTimeUnix})";
        $Self->{DBObject}->Do(SQL => $SQL)
    }
    # --
    # write lock index
    # --
    $Self->{DBObject}->Prepare(
       SQL => "SELECT ti.id, ti.user_id ".
         " FROM ".
         " ticket ti ".
         " WHERE ".
         " ti.ticket_lock_id not in ( ${\(join ', ', @{$Self->{ViewableLockIDs}})} ) ",
    );
    my @LockRowBuffer = ();
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        push (@LockRowBuffer, $Row[0]);
    }
    $Self->{DBObject}->Do(SQL => "DELETE FROM ticket_lock_index");
    foreach (@LockRowBuffer) {
        # add lock index entry
        $Self->TicketLockAcceleratorAdd(TicketID => $_);
    }
    return 1;
}
# --
sub GetIndexTicket {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID)) {
      if (!exists($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # --
    # sql query
    # --
    my $SQL = "SELECT ticket_id, queue_id, queue, group_id, s_lock, s_state, create_time_unix ".
      " FROM ticket_index ".
      " WHERE ticket_id = $Param{TicketID}";
    my %Data = ();
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Data{TicketID} = $Row[0];
        $Data{QueueID} = $Row[1];
        $Data{Queue} = $Row[2];
        $Data{GroupID} = $Row[3];
        $Data{Lock} = $Row[4];
        $Data{State} = $Row[5];
        $Data{CreateTimeUnix} = $Row[6];
    }
    return %Data;
}
# --
sub GetIndexTicketLock {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID)) {
      if (!exists($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # --
    # sql query
    # --
    my $SQL = "SELECT ticket_id ".
      " FROM ticket_lock_index ".
      " WHERE ticket_id = $Param{TicketID}";
    my $Hit = 0;
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Hit = 1;
    }
    return $Hit;
}
# --
sub GetLockedCount {
    my $Self = shift;
    my %Param = @_;
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
              " ti.until_time, ts.name ".
              " FROM ".
              " ticket ti, article ar, article_sender_type st, ".
              " ticket_state ts, ticket_lock_index tli".
              " WHERE ". 
              " tli.ticket_id = ti.id".
              " AND ".
              " tli.ticket_id = ar.ticket_id".
              " AND ".
              " st.id = ar.article_sender_type_id ".
              " AND ".
              " ts.id = ti.ticket_state_id ".
              " AND ".
              " ti.user_id = $Param{UserID} ".
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
    my $SQL = "SELECT t.queue_id, a.ticket_id, a.id, ast.name, a.incoming_time, ".
    " q.name, q.escalation_time, t.tn ".
    " FROM ".
    " article a, article_sender_type ast, queue q, ticket t, ".
    " group_user as ug, ticket_index ti ".
    " WHERE ".
    " t.ticket_state_id in ( ${\(join ', ', @{$Self->{ViewableStateIDs}})} ) " .
    " AND " .
    " t.ticket_lock_id in ( ${\(join ', ', @{$Self->{ViewableLockIDs}})} ) " .
    " AND ".
    " ti.ticket_id = t.id".
    " AND ".
    " ast.id = a.article_sender_type_id ".
    " AND ".
    " t.id = a.ticket_id ".
    " AND ".
    " q.id = t.queue_id ".
    " AND ".
    " q.group_id = ug.group_id ".
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
