# --
# Kernel/System/Ticket.pm - the global ticket handle
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Ticket.pm,v 1.64 2004-01-09 16:45:17 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Ticket;

use strict;
use Time::Local;
use Kernel::System::Ticket::Article;
use Kernel::System::Ticket::State;
use Kernel::System::Ticket::History;
use Kernel::System::Ticket::Lock;
use Kernel::System::Ticket::Priority;
use Kernel::System::Ticket::Owner;
use Kernel::System::Ticket::SendAutoResponse;
use Kernel::System::Ticket::SendNotification;
use Kernel::System::Ticket::SendArticle;
use Kernel::System::Ticket::TimeAccounting;
use Kernel::System::State;
use Kernel::System::Lock;
use Kernel::System::Queue;
use Kernel::System::User;
use Kernel::System::Group;
use Kernel::System::CustomerUser;
use Kernel::System::CustomerGroup;
use Kernel::System::Email;
use Kernel::System::AutoResponse;
use Kernel::System::StdAttachment;
use Kernel::System::PostMaster::LoopProtection;
use Kernel::System::CustomerUser;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.64 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

@ISA = (
    'Kernel::System::Ticket::Article',
    'Kernel::System::Ticket::State',
    'Kernel::System::Ticket::History',
    'Kernel::System::Ticket::Lock',
    'Kernel::System::Ticket::Priority',
    'Kernel::System::Ticket::Owner',
    'Kernel::System::Ticket::TimeAccounting',
    'Kernel::System::Ticket::SendAutoResponse',
    'Kernel::System::Ticket::SendNotification',
    'Kernel::System::Ticket::SendArticle',
);

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {}; 
    bless ($Self, $Type);

    # 0=off; 1=on;
    $Self->{Debug} = 0;
    # --
    # create common needed module objects
    # --
    $Self->{UserObject} = Kernel::System::User->new(%Param);
    $Self->{GroupObject} = Kernel::System::Group->new(%Param);
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);
    $Self->{CustomerGroupObject} = Kernel::System::CustomerGroup->new(%Param);
    $Self->{QueueObject} = Kernel::System::Queue->new(%Param);
    $Self->{SendmailObject} = Kernel::System::Email->new(%Param);
    $Self->{AutoResponse} = Kernel::System::AutoResponse->new(%Param);
    $Self->{LoopProtectionObject} = Kernel::System::PostMaster::LoopProtection->new(%Param);
    $Self->{StdAttachmentObject} = Kernel::System::StdAttachment->new(%Param);
    $Self->{StateObject} = Kernel::System::State->new(%Param);
    $Self->{LockObject} = Kernel::System::Lock->new(%Param);
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);
    # --
    # get needed objects
    # --
    foreach (qw(ConfigObject LogObject DBObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    # --
    # get static var
    # --
    my @ViewableStates = $Self->{StateObject}->StateGetStatesByType(
        Type => 'Viewable', 
        Result => 'Name',
    );
    $Self->{ViewableStates} = \@ViewableStates;
    my @ViewableStateIDs = $Self->{StateObject}->StateGetStatesByType( 
        Type => 'Viewable',
        Result => 'ID',
    );
    $Self->{ViewableStateIDs} = \@ViewableStateIDs;
    my @ViewableLocks = $Self->{LockObject}->LockViewableLock(Type => 'Name');
    $Self->{ViewableLocks} = \@ViewableLocks;
    my @ViewableLockIDs = $Self->{LockObject}->LockViewableLock(Type => 'ID');
    $Self->{ViewableLockIDs} = \@ViewableLockIDs;
    # --
    # load ticket number generator 
    # --
    my $GeneratorModule = $Self->{ConfigObject}->Get('TicketNumberGenerator') 
      || 'Kernel::System::Ticket::Number::AutoIncrement';
    if (!eval "require $GeneratorModule") {
        die "Can't load ticket number generator backend module $GeneratorModule! $@";
    }
    push(@ISA, $GeneratorModule); 
    # --
    # load ticket index generator 
    # --
    my $GeneratorIndexModule = $Self->{ConfigObject}->Get('TicketIndexModule')
      || 'Kernel::System::Ticket::IndexAccelerator::RuntimeDB';
    if (!eval "require $GeneratorIndexModule") {
        die "Can't load ticket index backend module $GeneratorIndexModule! $@";
    }
    push(@ISA, $GeneratorIndexModule);
    # --
    # load article storage module 
    # --
    my $StorageModule = $Self->{ConfigObject}->Get('TicketStorageModule')
      || 'Kernel::System::Ticket::ArticleStorageDB';
    if (!eval "require $StorageModule") {
        die "Can't load ticket storage backend module $StorageModule! $@";
    }
    push(@ISA, $StorageModule);

    $Self->Init();

    return $Self;
}
# --
sub Init {
    my $Self = shift;
    $Self->InitSendArticle();
    $Self->InitArticleStorage();
    return 1;
}
# --
sub CheckTicketNr {
    my $Self = shift;
    my %Param = @_;
    my $Id = '';
    # --
    # check needed stuff
    # --
    if (!$Param{Tn}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need TN!");
      return;
    }
    # --
    # db query
    # --
    $Self->{DBObject}->Prepare(
        SQL => "SELECT id FROM ticket " .
          " WHERE " .
          " tn = '$Param{Tn}' ",
    );
    while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
        $Id = $RowTmp[0];
    }
    return $Id;
}
# --
sub CreateTicketDB {
    my $Self = shift;
    my %Param = @_;
    my $GroupID = $Param{GroupID};
    my $Answered = $Param{Answered} || 0;
    my $ValidID = $Param{ValidID} || 1;
    my $Age = time();
    # check needed stuff
    foreach (qw(QueueID UserID CreateUserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # StateID/State lookup!
    if (!$Param{StateID}) {
        my %State = $Self->{StateObject}->StateGet(Name => $Param{State});
        $Param{StateID} = $State{ID}; 
    }
    elsif (!$Param{State}) {
        my %State = $Self->{StateObject}->StateGet(ID => $Param{StateID}); 
        $Param{State} = $State{Name}; 
    }
    if (!$Param{StateID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "No StateID!!!");
        return;
    }
    # LockID lookup!
    if (!$Param{LockID} && $Param{Lock}) {
        $Param{LockID} = $Self->LockLookup(Type => $Param{Lock});
    }
    if (!$Param{LockID} && !$Param{Lock}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "No LockID and no LockType!!!");
        return;
    }
    # PriorityID/Priority lookup!
    if (!$Param{PriorityID} && $Param{Priority}) {
        $Param{PriorityID} = $Self->PriorityLookup(Type => $Param{Priority});
    }
    elsif ($Param{PriorityID} && !$Param{Priority}) {
        $Param{Priority} = $Self->PriorityLookup(ID => $Param{PriorityID});
    }
    if (!$Param{PriorityID} && !$Param{Priority}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "No PriorityID and no PriorityType!!!");
        return;
    }
    # create ticket number if not given
    if (!$Param{TN}) {
        $Param{TN} = $Self->CreateTicketNr();
    }
    # create db record
    my $SQL = "INSERT INTO ticket (tn, create_time_unix, queue_id, ticket_lock_id, ".
    " user_id, group_id, ticket_priority_id, ticket_state_id, ticket_answered, ".
    " valid_id, create_time, create_by, change_time, change_by) " .
    " VALUES ('$Param{TN}', $Age, $Param{QueueID}, $Param{LockID}, $Param{UserID}, ".
    " $GroupID, $Param{PriorityID}, $Param{StateID}, ".
    " $Answered, $ValidID, " .
    " current_timestamp, $Param{CreateUserID}, current_timestamp, $Param{CreateUserID})";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # get ticket id
        my $TicketID = $Self->GetIdOfTN(TN => $Param{TN}, Age => $Age);
        # history insert
        my $Queue = $Self->{QueueObject}->QueueLookup(QueueID => $Param{QueueID});
        $Self->AddHistoryRow(
            TicketID => $TicketID,
            HistoryType => 'NewTicket',
            Name => "Ticket=[$Param{TN}], ID=[$TicketID] created (Q=$Queue;P=$Param{Priority};S=$Param{State}).",
            CreateUserID => $Param{UserID},
        );
        # set customer data if given
        if ($Param{CustomerNo} || $Param{CustomerUser}) {
            $Self->SetCustomerData(
                TicketID => $TicketID,
                No => $Param{CustomerNo} || '',
                User => $Param{CustomerUser} || '',
                UserID => $Param{UserID},
            );
        }
        # update ticket view index
        $Self->TicketAcceleratorAdd(TicketID => $TicketID);
        # return ticket id
        return $TicketID;
    }
    else {
        $Self->{LogObject}->Log(Priority => 'error', Message => "create db record failed!!!");
        return;
    } 
}
# --
sub DeleteTicket {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    if ($Self->{DBObject}->Do(SQL => "DELETE FROM ticket WHERE id = $Param{TicketID}")) {
        $Self->TicketAcceleratorDelete(%Param);
        $Self->DeleteArticleOfTicket(%Param);
        return 1;
    }
    else {
        return;
    }
}
# --
sub GetIdOfTN {
    my $Self = shift;
    my %Param = @_;
    my $Id;
    # --
    # check needed stuff
    # --
    if (!$Param{TN}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need TN!");
      return;
    }
    # --
    # db query
    # --
    my $SQL = "SELECT id FROM ticket " .
    " WHERE " .
    " tn = '$Param{TN}' ";
    if ($Param{Age}) {
        $SQL .= " AND create_time_unix = $Param{Age}";
    }
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
        $Id = $RowTmp[0];
    }
    return $Id;
}
# --
sub GetTNOfId {
    my $Self = shift;
    my %Param = @_;
    my $Tn = '';
    # --
    # check needed stuff
    # --
    if (!$Param{ID}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need ID!");
      return;
    }
    # --
    # db query
    # --
    my $SQL = "SELECT tn FROM ticket WHERE id = $Param{ID}";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
        $Tn = $RowTmp[0];
    }
    return $Tn;
}
# --
sub GetTicket {
    my $Self = shift;
    my %Param = @_;
    my %Ticket = ();
    # check needed stuff
    if (!$Param{TicketID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need TicketID!");
        return;
    }
    # check if result is cached 
    if ($Param{Cached} && $Self->{'GetTicket'.$Param{TicketID}}) {
        return %{$Self->{'GetTicket'.$Param{TicketID}}};
    }

    # db query
    my $SQL = "SELECT st.id, st.queue_id, sq.name, st.ticket_state_id, slt.id, slt.name, ".
        " sp.id, sp.name, st.create_time_unix, st.create_time, sq.group_id, st.tn, ".
        " st.customer_id, st.user_id, su.$Self->{ConfigObject}->{DatabaseUserTableUserID}, ".
        " su.$Self->{ConfigObject}->{DatabaseUserTableUser}, st.ticket_answered, st.until_time, ".
        " st.customer_user_id, st.freekey1, st.freetext1, st.freekey2, st.freetext2,".
        " st.freekey3, st.freetext3, st.freekey4, st.freetext4,".
        " st.freekey5, st.freetext5, st.freekey6, st.freetext6,".
        " st.freekey7, st.freetext7, st.freekey8, st.freetext8 ".
        " FROM ".
        " ticket st, ticket_lock_type slt, ticket_priority sp, ".
        " queue sq, $Self->{ConfigObject}->{DatabaseUserTable} su ".
        " WHERE ".
        " slt.id = st.ticket_lock_id ".
        " AND ".
        " sp.id = st.ticket_priority_id ".
        " AND ".
        " sq.id = st.queue_id ".
        " AND ".
        " st.user_id = su.$Self->{ConfigObject}->{DatabaseUserTableUserID} ".
        " AND ".
        " st.id = $Param{TicketID} ";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Ticket{TicketID} = $Row[0];
        $Ticket{QueueID} = $Row[1];
        $Ticket{Queue} = $Row[2];
        $Ticket{StateID} = $Row[3];
        $Ticket{LockID} = $Row[4];
        $Ticket{Lock} = $Row[5];
        $Ticket{PriorityID} = $Row[6];
        $Ticket{Priority} = $Row[7];
        $Ticket{Age} = time() - $Row[8];
        $Ticket{CreateTimeUnix} = $Row[8];
        $Ticket{Created} = $Row[9];
        $Ticket{GroupID} = $Row[10];
        $Ticket{TicketNumber} = $Row[11];
        $Ticket{CustomerID} = $Row[12];
        $Ticket{CustomerUserID} = $Row[18];
        $Ticket{UserID} = $Row[13];
        $Ticket{OwnerID} = $Row[14];
        $Ticket{Owner} = $Row[15];
        $Ticket{Answered} = $Row[16];
        $Ticket{RealTillTimeNotUsed} = $Row[17];
        $Ticket{TicketFreeKey1} = $Row[19] || '';
        $Ticket{TicketFreeText1} = $Row[20] || '';
        $Ticket{TicketFreeKey2} = $Row[21] || '';
        $Ticket{TicketFreeText2} = $Row[22] || '';
        $Ticket{TicketFreeKey3} = $Row[23] || '';
        $Ticket{TicketFreeText3} = $Row[24] || '';
        $Ticket{TicketFreeKey4} = $Row[25] || '';
        $Ticket{TicketFreeText4} = $Row[26] || '';
        $Ticket{TicketFreeKey5} = $Row[27] || '';
        $Ticket{TicketFreeText5} = $Row[28] || '';
        $Ticket{TicketFreeKey6} = $Row[29] || '';
        $Ticket{TicketFreeText6} = $Row[30] || '';
        $Ticket{TicketFreeKey7} = $Row[31] || '';
        $Ticket{TicketFreeText7} = $Row[32] || '';
        $Ticket{TicketFreeKey8} = $Row[33] || '';
        $Ticket{TicketFreeText8} = $Row[34] || '';
    }
    # check ticket
    if (!$Ticket{TicketID}) {
        $Self->{LogObject}->Log(
            Priority => 'error', 
            Message => "No such TicketID ($Param{TicketID})!",
        );
        return;
    }
    # get state info
    my %StateData = $Self->{StateObject}->StateGet(ID => $Ticket{StateID}, Cache => 1);
    $Ticket{StateType} = $StateData{TypeName};
    $Ticket{State} = $StateData{Name};
    if (!$Ticket{RealTillTimeNotUsed} || $StateData{TypeName} !~ /^pending/i) {
        $Ticket{UntilTime} = 0;
    }
    else {
        $Ticket{UntilTime} = $Ticket{RealTillTimeNotUsed} - time();
    }
    # cache user result
    $Self->{'GetTicket'.$Param{TicketID}} = \%Ticket;
    # return ticket data
    return %Ticket;
}
# --
sub GetQueueIDOfTicketID {
    my $Self = shift;
    my %Param = @_;
    my $Id;
    # check needed stuff
    if (!$Param{TicketID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need TicketID!");
        return;
    } 
    # check cache
    if ($Self->{"GetQueueIDOfTicketID::$Param{TicketID}"}) {
        return $Self->{"GetQueueIDOfTicketID::$Param{TicketID}"};
    }
    # db query
    my $SQL = "SELECT queue_id FROM ticket WHERE id = $Param{TicketID}";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
        $Id = $RowTmp[0];
    }
    if (!$Id) {
        $Self->{LogObject}->Log(
            Priority => 'error', 
            Message => "No such TicketID '$Param{TicketID}'!",
        );
        return;
    }
    # store
    $Self->{"GetQueueIDOfTicketID::$Param{TicketID}"} = $Id;
    return $Id;
}
# --
sub MoveByTicketID {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(TicketID QueueID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # move needed?
    if ($Param{QueueID} == $Self->GetQueueIDOfTicketID(TicketID => $Param{TicketID})) {
        # update not needed
        return 1;
    }
    # db update
    my $SQL = "UPDATE ticket SET queue_id = $Param{QueueID} where id = $Param{TicketID}";
    if ($Self->{DBObject}->Do(SQL => $SQL) ) {
        # queue lookup
        my $Queue = $Self->{QueueObject}->QueueLookup(QueueID => $Param{QueueID}); 
        # update ticket view index
        $Self->TicketAcceleratorUpdate(TicketID => $Param{TicketID});
        # history insert
        $Self->AddHistoryRow(
            TicketID => $Param{TicketID},
            HistoryType => 'Move',
            Name => "Ticket moved to Queue '$Queue' (ID=$Param{QueueID}).",
            CreateUserID => $Param{UserID},
        );
        # send move notify to queue subscriber 
        my $To = '';
        foreach ($Self->{QueueObject}->GetAllUserIDsByQueueID(QueueID => $Param{QueueID})) {
            my %UserData = $Self->{UserObject}->GetUserData(UserID => $_);
            if ($UserData{UserEmail} && $UserData{UserSendMoveNotification}) {
                $To .= "$UserData{UserEmail}, ";
            }
        }
        # send agent notification
        $Self->SendNotification(
            Type => 'Move',
            To => $To,
            CustomerMessageParams => { Queue => $Queue },
            TicketNumber => $Self->GetTNOfId(ID => $Param{TicketID}),
            TicketID => $Param{TicketID},
            UserID => $Param{UserID},
        );
        # send customer notification email
        my %Preferences = $Self->{UserObject}->GetUserData(UserID => $Param{UserID});
        $Self->SendCustomerNotification(
            Type => 'QueueUpdate',
            CustomerMessageParams => { %Preferences, Queue => $Queue },
            TicketID => $Param{TicketID},
            UserID => $Param{UserID},
        ); 

        return 1;
    }
    else {
        return;
    }
}
# --
sub GetMoveQueueList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(TicketID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db query
    my @Queue = ();
    my $SQL = "SELECT sh.name, ht.name, sh.create_by ".
        " FROM ".
        " ticket_history sh, ticket_history_type ht ".
        " WHERE ".
        " sh.ticket_id = $Param{TicketID} ".
        " AND ".
        " ht.name IN ('Move', 'NewTicket')  ".
        " AND ".
        " ht.id = sh.history_type_id".
        " ORDER BY sh.id";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        # store result
        if ($Row[1] eq 'NewTicket') {
            if ($Row[2] ne '1') {
#                push (@Queue, $Row[2]);
            }
        }
        elsif ($Row[1] eq 'Move') {
            if ($Row[0] =~ /^Ticket moved to Queue '.+?' \(ID=(.+?)\)/) {
                push (@Queue, $1);
            }
        }
    }
    my @QueueInfo = ();
    foreach (@Queue) {
        # queue lookup
        my $Queue = $Self->{QueueObject}->QueueLookup(QueueID => $_, Cache => 1);
        push (@QueueInfo, $Queue);
    }
    return @Queue;
}
# --
sub SetCustomerData {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(TicketID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    if (!defined($Param{No}) && !defined($Param{User})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need User or No for update!");
        return;
    }
    # db customer id update
    if (defined($Param{No})) {
        $Param{No} = $Self->{DBObject}->Quote(lc($Param{No}));
        my $SQL = "UPDATE ticket SET customer_id = '$Param{No}', " .
          " change_time = current_timestamp, change_by = $Param{UserID} " .
          " WHERE id = $Param{TicketID} ";
        if ($Self->{DBObject}->Do(SQL => $SQL)) {
            $Param{History} = "CustomerID updated to '$Param{No}'. ";
        }
    }
    # db customer user update
    if (defined($Param{User})) {
        $Param{User} = $Self->{DBObject}->Quote(lc($Param{User}));
        my $SQL = "UPDATE ticket SET customer_user_id = '$Param{User}', " .
          " change_time = current_timestamp, change_by = $Param{UserID} " .
          " WHERE id = $Param{TicketID} ";
        if ($Self->{DBObject}->Do(SQL => $SQL)) {
            $Param{History} .= "CustomerUser updated to '$Param{User}'.";
        }
    }
    if ($Param{History}) {
        # history insert
        $Self->AddHistoryRow(
            TicketID => $Param{TicketID},
            HistoryType => 'CustomerUpdate',
            Name => $Param{History}, 
            CreateUserID => $Param{UserID},
        );
        return 1;
    }
    else {
        return;
    }
}
# --
sub SetTicketFreeText {
    my $Self = shift;
    my %Param = @_;
    my $Value = $Param{Value} || '';
    my $Key = $Param{Key} || '';
    # check needed stuff
    foreach (qw(TicketID UserID Counter)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # check if update is needed
    my %Ticket = $Self->GetTicket(TicketID => $Param{TicketID});
    if ($Value eq $Ticket{"TicketFreeText$Param{Counter}"} && 
        $Key eq $Ticket{"TicketFreeKey$Param{Counter}"}) {
        return 1;
    }
    # db quote
    my $DBValue = $Self->{DBObject}->Quote($Value);
    my $DBKey = $Self->{DBObject}->Quote($Key);
    # db update
    my $SQL = "UPDATE ticket SET freekey$Param{Counter} = '$DBKey', " .
    " freetext$Param{Counter} = '$DBValue', " .
    " change_time = current_timestamp, change_by = $Param{UserID} " .
    " WHERE id = $Param{TicketID}";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # history insert
        $Self->AddHistoryRow(
            TicketID => $Param{TicketID},
            HistoryType => 'TicketFreeTextUpdate',
            Name => "FreeKey$Param{Counter}: '$Key' FreeText$Param{Counter}: '$Value'", 
            CreateUserID => $Param{UserID},
        );
        return 1;
    }
    else {
        return;
    }
}
# --
sub SetAnswered {
    my $Self = shift;
    my %Param = @_;
    my $Answered = $Param{Answered} || 0;
    # check needed stuff
    foreach (qw(TicketID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db update
    my $SQL = "UPDATE ticket SET ticket_answered = $Answered, " .
    " change_time = current_timestamp, change_by = $Param{UserID} " .
    " WHERE id = $Param{TicketID} ";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}
# --
sub Permission {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Type TicketID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my $AccessOk = 0;
    # run all TicketPermission modules 
    if (ref($Self->{ConfigObject}->Get('Ticket::Permission')) eq 'HASH') { 
        my %Modules = %{$Self->{ConfigObject}->Get('Ticket::Permission')};
        foreach my $Module (sort keys %Modules) {
            # log try of load module
            if ($Self->{Debug} > 1) {
                $Self->{LogObject}->Log(
                    Priority => 'debug',
                    Message => "Try to load module: $Modules{$Module}->{Module}!",
                );
            }
            # load module
            if (eval "require $Modules{$Module}->{Module}") {
                # create object
                my $ModuleObject = $Modules{$Module}->{Module}->new(
                    ConfigObject => $Self->{ConfigObject},
                    LogObject => $Self->{LogObject},
                    DBObject => $Self->{DBObject},
                    TicketObject => $Self,
                    QueueObject => $Self->{QueueObject},
                    UserObject => $Self->{UserObject},
                    GroupObject => $Self->{GroupObject},
                    Debug => $Self->{Debug},
                );
                # execute Run()
                if ($ModuleObject->Run(%Param)) {
                    if ($Self->{Debug} > 0) {
                      $Self->{LogObject}->Log(
                        Priority => 'debug',
                        Message => "Got '$Param{Type}' true for TicketID '$Param{TicketID}' ".
                            "through $Modules{$Module}->{Module}!",
                      );
                    }
                    # set access ok
                    $AccessOk = 1;
                }
                else {
                    # return because true is required
                    if ($Modules{$Module}->{Required}) {
                        $Self->{LogObject}->Log(
                            Priority => 'notice', 
                            Message => "Permission denied because module ".
                             "($Modules{$Module}->{Module}) is requred ".
                             "(UserID: $Param{UserID} '$Param{Type}' on ".
                             "TicketID: $Param{TicketID})!",
                        );
                        return;
                    }
                }
            }
            else {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Can't load module $Modules{$Module}->{Module}!",
                );
            }
        }
    }
    # grant access to the ticket
    if ($AccessOk) {
        return 1;
    }
    # don't grant access to the ticket
    else {
        $Self->{LogObject}->Log(
            Priority => 'notice', 
            Message => "Permission denied (UserID: $Param{UserID} '$Param{Type}' on TicketID: $Param{TicketID})!",
        );
        return;
    }
}
# --
sub CustomerPermission {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Type TicketID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # run all CustomerTicketPermission modules 
    my $AccessOk = 0;
    if (ref($Self->{ConfigObject}->Get('CustomerTicket::Permission')) eq 'HASH') { 
        my %Modules = %{$Self->{ConfigObject}->Get('CustomerTicket::Permission')};
        foreach my $Module (sort keys %Modules) {
            # log try of load module
            if ($Self->{Debug} > 1) {
                $Self->{LogObject}->Log(
                    Priority => 'debug',
                    Message => "Try to load module: $Modules{$Module}->{Module}!",
                );
            }
            # load module
            if (eval "require $Modules{$Module}->{Module}") {
                # create object
                my $ModuleObject = $Modules{$Module}->{Module}->new(
                    ConfigObject => $Self->{ConfigObject},
                    LogObject => $Self->{LogObject},
                    DBObject => $Self->{DBObject},
                    TicketObject => $Self,
                    QueueObject => $Self->{QueueObject},
                    CustomerUserObject => $Self->{CustomerUserObject},
                    CustomerGroupObject => $Self->{CustomerGroupObject},
                    Debug => $Self->{Debug},
                );
                # execute Run()
                if ($ModuleObject->Run(%Param)) {
                    if ($Self->{Debug} > 0) {
                      $Self->{LogObject}->Log(
                        Priority => 'debug',
                        Message => "Got '$Param{Type}' true for TicketID '$Param{TicketID}' ".
                            "through $Modules{$Module}->{Module}!",
                      );
                    }
                    # set access ok
                    $AccessOk = 1;
                }
                else {
                    # return because true is required
                    if ($Modules{$Module}->{Required}) {
                        $Self->{LogObject}->Log(
                            Priority => 'notice', 
                            Message => "Permission denied because module ".
                             "($Modules{$Module}->{Module}) is requred ".
                             "(UserID: $Param{UserID} '$Param{Type}' on ".
                             "TicketID: $Param{TicketID})!",
                        );
                        return;
                    }
                }
            }
            else {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Can't load module $Modules{$Module}->{Module}!",
                );
            }
        }
    }
    # grant access to the ticket
    if ($AccessOk) {
        return 1;
    }
    # don't grant access to the ticket
    else {
        $Self->{LogObject}->Log(
            Priority => 'notice', 
            Message => "Permission denied (UserID: $Param{UserID} '$Param{Type}' on TicketID: $Param{TicketID})!",
        );
        return;
    }
}
# --
sub GetLockedTicketIDs {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{UserID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need UserID!");
        return;
    }
    my @ViewableTickets;
    my @ViewableLocks = @{$Self->{ConfigObject}->Get('ViewableLocks')};
    my $SQL = "SELECT ti.id " .
      " FROM " .
      " ticket ti, ticket_lock_type slt, queue sq" .
      " WHERE " .
      " ti.user_id = $Param{UserID} " .
      " AND ".
      " slt.id = ti.ticket_lock_id " .
      " AND ".
      " sq.id = ti.queue_id".
      " AND ".
      " slt.name not in ( ${\(join ', ', @ViewableLocks)} ) ORDER BY ";
    # sort by
    if (!$Param{SortBy} || $Param{SortBy} =~ /^CreateTime$/i) {
        $SQL .= "ti.create_time";
    }
    elsif ($Param{SortBy} =~ /^Queue$/i) {
        $SQL .= " sq.name";
    }
    elsif ($Param{SortBy} =~ /^CustomerID$/i) {
        $SQL .= " ti.customer_id";
    }
    elsif ($Param{SortBy} =~ /^Priority$/i) {
        $SQL .= " ti.ticket_priority_id";
    }
    else {
        $SQL .= "ti.create_time";
    }
    # order
    if ($Param{OrderBy} && $Param{OrderBy} eq 'Down') {
        $SQL .= " DESC";
    }
    else {
        $SQL .= " ASC";
    }

    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @RowTmp = $Self->{DBObject}->FetchrowArray()) {
        push (@ViewableTickets, $RowTmp[0]);
    }
    return @ViewableTickets;
}
# --
sub SetPendingTime {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Year Month Day Hour Minute TicketID UserID)) {
      if (!defined($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my $time = timelocal(1,$Param{Minute},$Param{Hour},$Param{Day},($Param{Month}-1),$Param{Year});
    # db update
    my $SQL = "UPDATE ticket SET until_time = $time, " .
    " change_time = current_timestamp, change_by = $Param{UserID} " .
    " WHERE id = $Param{TicketID} ";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # --
        # history insert
        # --
        $Self->AddHistoryRow(
            TicketID => $Param{TicketID},
            HistoryType => 'SetPendingTime',
            Name => 'Set Pending Time to '.sprintf("%02d", $Param{Year}).
              '/'.sprintf("%02d", $Param{Month}).'/'.sprintf("%02d", $Param{Day}).' '.
              sprintf("%02d", $Param{Hour}).':'.sprintf("%02d", $Param{Minute}).'.',
            CreateUserID => $Param{UserID},
        );
        return 1;
    }
    else {
        return;
    }
}
# --
sub GetCustomerTickets {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(CustomerID UserID)) {
      if (!defined($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my @TicketIDs = ();
    my @GroupIDs = $Self->{GroupObject}->GroupMemberList(
        UserID => $Param{UserID},
        Type => 'ro',
        Result => 'ID',
    );
    my $SQL = "SELECT st.id, st.tn ".
        " FROM ".
        " ticket st, queue q ".
        " WHERE ".
        " st.queue_id = q.id ".
        " AND ".
        " st.customer_id = '".$Self->{DBObject}->Quote($Param{CustomerID})."' ".
        " AND ".
        " q.group_id IN ( ${\(join ', ', @GroupIDs)} ) ".
        " ORDER BY st.create_time_unix DESC ";
    $Self->{DBObject}->Prepare(SQL => $SQL, Limit => 60);
    while (my @Row = $Self->{DBObject}->FetchrowArray() ) {
        push(@TicketIDs, $Row[0]);
    }
    return @TicketIDs;
}
# --
sub SearchTicket {
    my $Self = shift;
    my %Param = @_;
    my $Result = $Param{Result} || 'HASH';
    my $OrderBy = $Param{OrderBy} || 'Down';
    my $SortBy = $Param{SortBy} || 'Age';
    my $Limit = $Param{Limit} || 10000;
    my %SortOptions = (
        Owner => 'st.user_id',
        CustomerID => 'st.customer_id',
        State => 'st.ticket_state_id', 
        Ticket => 'st.tn',
        Queue => 'sq.name', 
        Age => 'st.create_time_unix',
    );
    # check options
    if (!$SortOptions{$SortBy}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need valid SortBy!");
        return;
    }
    if ($OrderBy ne 'Down' && $OrderBy ne 'Up') {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need valid OrderBy!");
        return;
    }
    # sql
    my $SQLExt = '';
    my $SQL = "SELECT DISTINCT st.id, st.tn, $SortOptions{$SortBy} FROM ".
    " ticket st, queue sq ";
    # use also article table it required
    my $UseArticleTable = 0;
    foreach (qw(From To Cc Subject Body)) {
        if ($Param{$_} && !$UseArticleTable) {
            $SQL .= ", article at ";
            $UseArticleTable = 1;
        }
    }
    $SQL .= " WHERE sq.id = st.queue_id";
    
    # if article table used
    if ($UseArticleTable) {
        $SQLExt .= " AND st.id = at.ticket_id";
    }
    # ticket states
    if ($Param{States}) {
        foreach (@{$Param{States}}) {
            my %State = $Self->{StateObject}->StateGet(Name => $_, Cache => 1);
            if ($State{ID}) {
                push (@{$Param{StateIDs}}, $State{ID}); 
            }
        }
    }
    if ($Param{StateIDs}) {
        $SQLExt .= " AND st.ticket_state_id IN (${\(join ', ' , @{$Param{StateIDs}})})";
    }
    # ticket locks
    if ($Param{Locks}) {
        foreach (@{$Param{Locks}}) {
            if ($Self->LockLookup(Type => $_)) {
                push (@{$Param{LockIDs}}, $Self->LockLookup(Type => $_)); 
            }
        }
    } 
    if ($Param{LockIDs}) {
        $SQLExt .= " AND st.ticket_lock_id IN (${\(join ', ' , @{$Param{LockIDs}})})";
    }
    # ticket queues
    if ($Param{Queues}) {
        foreach (@{$Param{Queues}}) {
            if ($Self->{QueueObject}->QueueLookup(Queue => $_)) {
                push (@{$Param{QueueIDs}}, $Self->{QueueObject}->QueueLookup(Queue => $_));
            }
        }
    }
    if ($Param{QueueIDs}) {
        $SQLExt .= " AND st.queue_id IN (${\(join ', ' , @{$Param{QueueIDs}})})";
    }
    # user groups
    if ($Param{UserID}) {
        # get users groups
        my @GroupIDs = $Self->{GroupObject}->GroupMemberList(
            UserID => $Param{UserID},
            Type => 'ro',
            Result => 'ID',
        );
        $SQLExt .= " AND sq.group_id IN (${\(join ', ' , @GroupIDs)}) ";
    }
    # ticket number
    if ($Param{TicketNumber}) {
        my $TicketNumber = $Param{TicketNumber};
        $TicketNumber =~ s/\*/%/gi;
        $SQLExt .= " AND st.tn LIKE '".$Self->{DBObject}->Quote($TicketNumber)."'";
    }
    # other ticket stuff 
    my %FieldSQLMap = (
        CustomerID => 'st.customer_id',
        CustomerUserLogin => 'st.customer_user_id',
    );
    foreach my $Key (keys %FieldSQLMap) {
        if ($Param{$Key}) {
            $Param{$Key} =~ s/\*/%/gi;
                $SQLExt .= " AND $FieldSQLMap{$Key} LIKE '".$Self->{DBObject}->Quote($Param{$Key})."'";
        }
    }
    # article stuff
    my %FieldSQLMapFullText = (
        From => 'at.a_from',
        To => 'at.a_to',
        Cc => 'at.a_cc',
        Subject => 'at.a_subject',
        Body => 'at.a_body',
    );
    foreach my $Key (keys %FieldSQLMapFullText) {
        if ($Param{$Key}) {
            $Param{$Key} =~ s/\*/%/gi;
            $SQLExt .= " AND $FieldSQLMapFullText{$Key} LIKE '\%".$Self->{DBObject}->Quote($Param{$Key})."%'";
        }
    }
    # ticket free text
    foreach (1..8) {
        if ($Param{"TicketFreeKey$_"}) {
            $Param{"TicketFreeKey$_"} =~ s/\*/%/gi;
            $SQLExt .= " AND st.freekey$_ LIKE '".$Self->{DBObject}->Quote($Param{"TicketFreeKey$_"})."'";
        }
    }
    foreach (1..8) {
        if ($Param{"TicketFreeText$_"}) {
            $Param{"TicketFreeText$_"} =~ s/\*/%/gi;
            $SQLExt .= " AND st.freetext$_ LIKE '".$Self->{DBObject}->Quote($Param{"TicketFreeText$_"})."'";
        }
    }
    # database query
    $SQLExt .= " ORDER BY $SortOptions{$SortBy}";
    if ($OrderBy eq 'Up') {
        $SQLExt .= ' ASC';
    }
    else {
        $SQLExt .= ' DESC';
    }
    my %Tickets = ();
    my @TicketIDs = ();
    $Self->{DBObject}->Prepare(SQL => $SQL.$SQLExt, Limit => $Limit);
#print STDERR "SQL: $SQL$SQLExt\n";
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Tickets{$Row[0]} = $Row[1];
        push (@TicketIDs, $Row[0]);
    }
    if ($Result eq 'HASH') {
        return %Tickets;
    }
    else {
        return @TicketIDs;
    }
}
# --
1;
