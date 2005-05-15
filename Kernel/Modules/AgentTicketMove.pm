# --
# Kernel/Modules/AgentTicketMove.pm - move tickets to queues
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentTicketMove.pm,v 1.5 2005-05-15 09:08:59 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentTicketMove;

use strict;
use Kernel::System::State;

use vars qw($VERSION);
$VERSION = '$Revision: 1.5 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # make all Params to local
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check needed Opjects
    foreach (qw(ParamObject DBObject TicketObject LayoutObject LogObject)) {
        if (!$Self->{$_}) {
            $Self->{LayoutObject}->FatalError(Message => "Got no $_!");
        }
    }
    $Self->{StateObject} = Kernel::System::State->new(%Param);

    # get params
    $Self->{DestQueueID} = $Self->{ParamObject}->GetParam(Param => 'DestQueueID');
    $Self->{DestQueue} = $Self->{ParamObject}->GetParam(Param => 'DestQueue');
    $Self->{TicketUnlock} = $Self->{ParamObject}->GetParam(Param => 'TicketUnlock');
    $Self->{ExpandQueueUsers} = $Self->{ParamObject}->GetParam(Param => 'ExpandQueueUsers') || 0;
    $Self->{AllUsers} = $Self->{ParamObject}->GetParam(Param => 'AllUsers') || 0;
    $Self->{Comment} = $Self->{ParamObject}->GetParam(Param => 'Comment') || '';
    $Self->{NewStateID} = $Self->{ParamObject}->GetParam(Param => 'NewStateID') || '';
    # DestQueueID lookup
    if (!$Self->{DestQueueID} && $Self->{DestQueue}) {
        $Self->{DestQueueID} = $Self->{QueueObject}->QueueLookup(Queue => $Self->{DestQueue}); 
    }

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;

    # check needed stuff
    foreach (qw(TicketID)) {
      if (!$Self->{$_}) {
        # error page
        return $Self->{LayoutObject}->ErrorScreen(
          Message => "Need $_!",
        );
      }
    }
    # check permissions
    if (!$Self->{TicketObject}->Permission(
        Type => 'move',
        TicketID => $Self->{TicketID},
        UserID => $Self->{UserID})) {
        # error screen, don't show ticket
        return $Self->{LayoutObject}->NoPermission(WithHeader => 'yes');
    }
    # check if ticket is locked
    if ($Self->{TicketObject}->LockIsTicketLocked(TicketID => $Self->{TicketID})) {
        my ($OwnerID, $OwnerLogin) = $Self->{TicketObject}->OwnerCheck(
            TicketID => $Self->{TicketID},
        );
        if ($OwnerID != $Self->{UserID}) {
            my $Output = $Self->{LayoutObject}->Header(Title => 'Error');
            $Output .= $Self->{LayoutObject}->Warning(
                Message => "Can't move, the current owner is $OwnerLogin!",
                Comment => 'Please change the owner first.',
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
        else {
            $Self->{LayoutObject}->Block(
                Name => 'TicketBack',
                Data => {
                    %Param,
                    TicketID => $Self->{TicketID},
                },
            );
        }
    }
    # move queue
    if (!$Self->{DestQueueID} || $Self->{ExpandQueueUsers}) {
        $Output .= $Self->{LayoutObject}->Header();
        # get lock state && write (lock) permissions
        if (!$Self->{TicketObject}->LockIsTicketLocked(TicketID => $Self->{TicketID})) {
            # set owner
            $Self->{TicketObject}->OwnerSet(
                TicketID => $Self->{TicketID},
                UserID => $Self->{UserID},
                NewUserID => $Self->{UserID},
            );
            # set lock
            if ($Self->{TicketObject}->LockSet(
                TicketID => $Self->{TicketID},
                Lock => 'lock',
                UserID => $Self->{UserID}
            )) {
                # show lock state
                $Self->{LayoutObject}->Block(
                    Name => 'TicketLocked',
                    Data => {
                        %Param,
                        TicketID => $Self->{TicketID},
                    },
                );
                $Self->{TicketUnlock} = 1;
            }
        }
        else {
#            $Self->{TicketUnlock} = 0;
            my ($OwnerID, $OwnerLogin) = $Self->{TicketObject}->OwnerCheck(
                TicketID => $Self->{TicketID},
            );
            if ($OwnerID != $Self->{UserID}) {
                $Output .= $Self->{LayoutObject}->Warning(
                    Message => "Sorry, the current owner is $OwnerLogin!",
                    Comment => 'Please change the owner first.',
                );
                $Output .= $Self->{LayoutObject}->Footer();
                return $Output;
            }
        }
        # fetch all queues
        my %MoveQueues = $Self->{TicketObject}->MoveList(
            TicketID => $Self->{TicketID},
            UserID => $Self->{UserID},
            Action => $Self->{Action},
            Type => 'move_into',
        );
        # build header
        my %Ticket = $Self->{TicketObject}->TicketGet(TicketID => $Self->{TicketID});
        # get next states
        my %NextStates = $Self->{TicketObject}->StateList(
            Type => 'DefaultNextMove',
            Action => $Self->{Action},
            TicketID => $Self->{TicketID},
            UserID => $Self->{UserID},
        );
        $NextStates{''} = '-';
        # get old owners
        my @OldUserInfo = $Self->{TicketObject}->OwnerList(TicketID => $Self->{TicketID});
        # get lod queues
        my @OldQueue = $Self->{TicketObject}->MoveQueueList(TicketID => $Self->{TicketID});
        # print change form
        $Output .= $Self->AgentMove(
            OldQueue => \@OldQueue,
            OldUser => \@OldUserInfo,
            MoveQueues => \%MoveQueues,
            TicketID => $Self->{TicketID},
            NextStates => \%NextStates,
            TicketUnlock => $Self->{TicketUnlock},
            Comment => $Self->{Comment},
            %Ticket,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
    elsif ($Self->{TicketObject}->MoveTicket(
          QueueID => $Self->{DestQueueID},
          UserID => $Self->{UserID},
          TicketID => $Self->{TicketID},
      ) ) {
        # set state
        if ($Self->{ConfigObject}->Get('Ticket::Frontend::MoveSetState') && $Self->{NewStateID}) {
            $Self->{TicketObject}->StateSet(
                TicketID => $Self->{TicketID},
                StateID => $Self->{NewStateID},
                UserID => $Self->{UserID},
            );
            # unlock the ticket after close
            my %StateData = $Self->{TicketObject}->{StateObject}->StateGet(
                ID => $Self->{NewStateID},
            );
            # set unlock on close
            if ($StateData{TypeName} =~ /^close/i) {
                $Self->{TicketObject}->LockSet(
                    TicketID => $Self->{TicketID},
                    Lock => 'unlock',
                    UserID => $Self->{UserID},
                );
            }
        }
        # new owner!
        my $UserSelection = $Self->{ParamObject}->GetParam(Param => 'UserSelection') || '';
        my $NewUserID = $Self->{ParamObject}->GetParam(Param => 'NewUserID') || '';
        my $OldUserID = $Self->{ParamObject}->GetParam(Param => 'OldUserID') || '';
        # check new/old user selection
        if ($UserSelection eq 'Old') {
            if ($OldUserID) {
                $NewUserID = $OldUserID;
            }
        }
        # check if new user is given
        if ($NewUserID) {
            # lock
            $Self->{TicketObject}->LockSet(
                TicketID => $Self->{TicketID},
                Lock => 'lock',
                UserID => $Self->{UserID},
            );
            # set owner
            $Self->{TicketObject}->OwnerSet(
                TicketID => $Self->{TicketID},
                UserID => $Self->{UserID},
                NewUserID => $NewUserID,
                Comment => $Self->{Comment},
            );
        }
        else {
            # unlock
            if ($Self->{TicketUnlock}) {
                $Self->{TicketObject}->LockSet(
                    TicketID => $Self->{TicketID},
                    Lock => 'unlock',
                    UserID => $Self->{UserID},
                );
            }
        }
        if ($Self->{Comment}) {
            # add note
            my $ArticleID = $Self->{TicketObject}->ArticleCreate(
                TicketID => $Self->{TicketID},
                ArticleType => 'note-internal',
                SenderType => 'agent',
                From => "$Self->{UserFirstname} $Self->{UserLastname} <$Self->{UserEmail}>",
                Subject => 'Move Note',
                Body => $Self->{Comment},
                ContentType => "text/plain; charset=$Self->{LayoutObject}->{'UserCharset'}",
                UserID => $Self->{UserID},
                HistoryType => 'AddNote',
                HistoryComment => '%%Move',
            );
        }
        # redirect
        return $Self->{LayoutObject}->Redirect(OP => $Self->{LastScreenView});
    }
    else {
        # error?!
        $Output = $Self->{LayoutObject}->Header(Title => 'Warning');
        $Output .= $Self->{LayoutObject}->Warning(
            Message => "",
            Comment => 'Please contact your admin',
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}
# --
sub AgentMove {
    my $Self = shift;
    my %Param = @_;
    my %Data = %{$Param{MoveQueues}};
    my %MoveQueues = %Data;
    my %UsedData = ();
    my %UserHash = ();
    my @OldQueue = @{$Param{OldQueue}};
    my $LatestQueueID = '';
    if ($#OldQueue >= 1) {
        $LatestQueueID = $OldQueue[$#OldQueue-1] || '';
    }
    if ($Param{OldUser}) {
        my $Counter = 0;
        foreach my $User (reverse @{$Param{OldUser}}) {
          if ($Counter) {
            if (!$UserHash{$User->{UserID}}) {
                $UserHash{$User->{UserID}} = "$Counter: $User->{UserLastname} ".
                  "$User->{UserFirstname} ($User->{UserLogin})";
            }
          }
          $Counter++;
        }
    }
    if (!%UserHash) {
        $UserHash{''} = '-';
    }
    # build string
    $Param{'OldUserStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => \%UserHash,
        SelectedID => $Param{OldUser}->[0]->{UserID}.'1',
        Name => 'OldUserID',
        OnClick => "change_selected(2)",
    );
    # build next states string
    $Param{'NextStatesStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => $Param{NextStates},
        Name => 'NewStateID',
        SelectedID => $Self->{NewStateID},
    );
    # build owner string
    $Param{'OwnerStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => $Self->_GetUsers(QueueID => $Self->{DestQueueID}, AllUsers => $Self->{AllUsers}),
#        Selected => $Param{OwnerID},
        Name => 'NewUserID',
#       Size => 5,
        OnClick => "change_selected(0)",
    );
    if ($LatestQueueID && $MoveQueues{$LatestQueueID}) {
        $Param{LatestQueue} = '$Text{"Latest Queue!"} "'.$MoveQueues{$LatestQueueID}.'"';
    }
    # set state
    if ($Self->{ConfigObject}->Get('Ticket::Frontend::MoveSetState')) {
        $Self->{LayoutObject}->Block(
            Name => 'State',
            Data => { %Param },
        );
    }
    $Param{MoveQueuesStrg} = $Self->{LayoutObject}->AgentQueueListOption(
            Data => { %MoveQueues, '' => '-' },
            Multiple => 0,
            Size => 0,
            Name => 'DestQueueID',
            SelectedID => $Self->{DestQueueID},
            OnChangeSubmit => 0,
            OnChange => "document.compose.ExpandQueueUsers.value='3'; document.compose.submit(); return false;",
        );

    return $Self->{LayoutObject}->Output(TemplateFile => 'AgentTicketMove', Data => \%Param);
}
# --
sub _GetUsers {
    my $Self = shift;
    my %Param = @_;
    # get users
    my %ShownUsers = ();
    my %AllGroupsMembers = $Self->{UserObject}->UserList(
        Type => 'Long',
        Valid => 1,
    );
    # just show only users with selected custom queue
    if ($Param{QueueID} && !$Param{AllUsers}) {
        my @UserIDs = $Self->{TicketObject}->GetSubscribedUserIDsByQueueID(%Param);
        foreach (keys %AllGroupsMembers) {
            my $Hit = 0;
            foreach my $UID (@UserIDs) {
                if ($UID eq $_) {
                    $Hit = 1;
                }
            }
            if (!$Hit) {
                delete $AllGroupsMembers{$_};
            }
        }
    }
    $ShownUsers{''} = '-';
    # show all system users
    if ($Self->{ConfigObject}->Get('Ticket::ChangeOwnerToEveryone')) {
        %ShownUsers = %AllGroupsMembers;
    }
    # show all users who are rw in the queue group
    elsif ($Param{QueueID}) {
        my $GID = $Self->{QueueObject}->GetQueueGroupID(QueueID => $Param{QueueID});
        my %MemberList = $Self->{GroupObject}->GroupMemberList(
            GroupID => $GID,
            Type => 'rw',
            Result => 'HASH',
            Cached => 1,
        );
        foreach (keys %MemberList) {
            $ShownUsers{$_} = $AllGroupsMembers{$_};
        }
    }
    return \%ShownUsers;
}
# --
1;
