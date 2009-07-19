# --
# Kernel/Modules/AgentTicketBulk.pm - to do bulk actions on tickets
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: AgentTicketBulk.pm,v 1.37 2009-07-19 23:00:31 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AgentTicketBulk;

use strict;
use warnings;

use Kernel::System::State;
use Kernel::System::Priority;
use Kernel::System::LinkObject;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.37 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(ParamObject DBObject QueueObject LayoutObject ConfigObject LogObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    $Self->{StateObject}    = Kernel::System::State->new(%Param);
    $Self->{PriorityObject} = Kernel::System::Priority->new(%Param);
    $Self->{LinkObject}     = Kernel::System::LinkObject->new(%Param);

    $Self->{Config} = $Self->{ConfigObject}->Get("Ticket::Frontend::$Self->{Action}");

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check if bulk feature is enabled
    if ( !$Self->{ConfigObject}->Get('Ticket::Frontend::BulkFeature') ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Bulk feature is not enabled!",
        );
    }

    # get involved tickets
    my @TicketIDs;
    my @TicketIDsRaw = $Self->{ParamObject}->GetArray( Param => 'TicketID' );
    for my $TicketID (@TicketIDsRaw) {
        next if !$TicketID;
        push @TicketIDs, $TicketID;
    }

    # check needed stuff
    if ( !@TicketIDs ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "No TicketID is given!",
            Comment => 'You need min. one selected Ticket!',
        );
    }
    my $Output = $Self->{LayoutObject}->Header();

    # process tickets
    for my $TicketID (@TicketIDs) {
        my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $TicketID );

        # check permissions
        my $Access = $Self->{TicketObject}->Permission(
            Type     => 'rw',
            TicketID => $TicketID,
            UserID   => $Self->{UserID}
        );
        if ( !$Access ) {

            # error screen, don't show ticket
            $Output .= $Self->{LayoutObject}->Notify(
                Info => 'No access to %s!", "$Quote{"' . $Ticket{TicketNumber} . '"}',
            );
            next;
        }

        # check if it's already locked by somebody else
        if ( $Self->{TicketObject}->LockIsTicketLocked( TicketID => $TicketID ) ) {
            my $AccessOk = $Self->{TicketObject}->OwnerCheck(
                TicketID => $TicketID,
                OwnerID  => $Self->{UserID},
            );
            if ( !$AccessOk ) {
                $Output .= $Self->{LayoutObject}->Notify(
                    Info => 'Ticket %s is locked for an other agent!", "$Quote{"'
                        . $Ticket{TicketNumber}
                        . '"}',
                );
                next;
            }
        }

        $Param{TicketIDHidden} .= "<input type='hidden' name='TicketID' value='$TicketID'>\n";

        # set lock
        $Self->{TicketObject}->LockSet(
            TicketID => $TicketID,
            Lock     => 'lock',
            UserID   => $Self->{UserID},
        );

        # set user id
        $Self->{TicketObject}->OwnerSet(
            TicketID  => $TicketID,
            UserID    => $Self->{UserID},
            NewUserID => $Self->{UserID},
        );
        $Output .= $Self->{LayoutObject}->Notify(
            Data => $Ticket{TicketNumber} . ': $Text{"Ticket locked!"}',
        );

        # do some actions on tickets
        if ( $Self->{Subaction} eq 'Do' ) {

            # challenge token check for write action
            $Self->{LayoutObject}->ChallengeTokenCheck();

            # set owner
            my $OwnerID = $Self->{ParamObject}->GetParam( Param => 'OwnerID' ) || '';
            my $Owner   = $Self->{ParamObject}->GetParam( Param => 'Owner' )   || '';
            if ( $Self->{Config}->{Owner} && ( $OwnerID || $Owner ) ) {
                $Self->{TicketObject}->OwnerSet(
                    TicketID  => $TicketID,
                    UserID    => $Self->{UserID},
                    NewUser   => $Owner,
                    NewUserID => $OwnerID,
                );
            }

            # set responsible
            my $ResponsibleID = $Self->{ParamObject}->GetParam( Param => 'ResponsibleID' ) || '';
            my $Responsible   = $Self->{ParamObject}->GetParam( Param => 'Responsible' )   || '';
            if ( $Self->{Config}->{Responsible} && ( $ResponsibleID || $Responsible ) ) {
                $Self->{TicketObject}->ResponsibleSet(
                    TicketID  => $TicketID,
                    UserID    => $Self->{UserID},
                    NewUser   => $Responsible,
                    NewUserID => $ResponsibleID,
                );
            }

            # set priority
            my $PriorityID = $Self->{ParamObject}->GetParam( Param => 'PriorityID' ) || '';
            my $Priority   = $Self->{ParamObject}->GetParam( Param => 'Priority' )   || '';
            if ( $Self->{Config}->{Priority} && ( $PriorityID || $Priority ) ) {
                $Self->{TicketObject}->PrioritySet(
                    TicketID   => $TicketID,
                    UserID     => $Self->{UserID},
                    Priority   => $Priority,
                    PriorityID => $PriorityID,
                );
            }

            # set queue
            my $QueueID = $Self->{ParamObject}->GetParam( Param => 'QueueID' ) || '';
            my $Queue   = $Self->{ParamObject}->GetParam( Param => 'Queue' )   || '';
            if ( $QueueID || $Queue ) {
                $Self->{TicketObject}->MoveTicket(
                    QueueID  => $QueueID,
                    Queue    => $Queue,
                    TicketID => $TicketID,
                    UserID   => $Self->{UserID},
                );
            }

            # add note
            my $Subject       = $Self->{ParamObject}->GetParam( Param => 'Subject' )       || '';
            my $Body          = $Self->{ParamObject}->GetParam( Param => 'Body' )          || '';
            my $ArticleTypeID = $Self->{ParamObject}->GetParam( Param => 'ArticleTypeID' ) || '';
            my $ArticleType   = $Self->{ParamObject}->GetParam( Param => 'ArticleType' )   || '';

            my $ArticleID;
            if ( $Subject && $Body && ( $ArticleTypeID || $ArticleType ) ) {
                my $MimeType = 'text/plain';
                if ( $Self->{ConfigObject}->{'Frontend::RichText'} ) {
                    $MimeType = 'text/html';

                    # verify html document
                    $Body = $Self->{LayoutObject}->RichTextDocumentComplete(
                        String  => $Body,
                    );
                }
                $ArticleID = $Self->{TicketObject}->ArticleCreate(
                    TicketID      => $TicketID,
                    ArticleTypeID => $ArticleTypeID,
                    ArticleType   => $ArticleType,
                    SenderType    => 'agent',
                    From     => "$Self->{UserFirstname} $Self->{UserLastname} <$Self->{UserEmail}>",
                    Subject  => $Subject,
                    Body     => $Body,
                    MimeType => $MimeType,
                    Charset  => $Self->{LayoutObject}->{UserCharset},
                    UserID   => $Self->{UserID},
                    HistoryType    => 'AddNote',
                    HistoryComment => '%%Bulk',
                );
            }

            # set state
            my $StateID = $Self->{ParamObject}->GetParam( Param => 'StateID' ) || '';
            my $State   = $Self->{ParamObject}->GetParam( Param => 'State' )   || '';
            if ( $Self->{Config}->{Priority} && ( $StateID || $State ) ) {
                $Self->{TicketObject}->StateSet(
                    TicketID => $TicketID,
                    StateID  => $StateID,
                    State    => $State,
                    UserID   => $Self->{UserID},
                );
                my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $TicketID );
                my %StateData = $Self->{TicketObject}->{StateObject}->StateGet(
                    ID => $Ticket{StateID},
                );

                # should I set an unlock?
                if ( $Ticket{StateType} =~ /^close/i ) {
                    $Self->{TicketObject}->LockSet(
                        TicketID => $TicketID,
                        Lock     => 'unlock',
                        UserID   => $Self->{UserID},
                    );
                }
            }

            # time units
            my $TimeUnits = $Self->{ParamObject}->GetParam( Param => 'TimeUnits' );
            if ($TimeUnits) {
                $Self->{TicketObject}->TicketAccountTime(
                    TicketID  => $TicketID,
                    ArticleID => $ArticleID,
                    TimeUnit  => $TimeUnits,
                    UserID    => $Self->{UserID},
                );
            }

            # merge to
            my $MergeToSelection = $Self->{ParamObject}->GetParam(
                Param => 'MergeToSelection'
            ) || '';
            my $MergeTo = $Self->{ParamObject}->GetParam(
                Param => 'MergeTo'
            ) || '';
            if ( $MergeToSelection eq 'MergeTo' && $MergeTo ) {
                $MergeTo =~ s/\s+$//g;
                $MergeTo =~ s/^\s+//g;
                my $MainTicketID = $Self->{TicketObject}->TicketIDLookup(
                    TicketNumber => $MergeTo,
                );
                if ( $MainTicketID ne $TicketID ) {
                    $Self->{TicketObject}->TicketMerge(
                        MainTicketID  => $MainTicketID,
                        MergeTicketID => $TicketID,
                        UserID        => $Self->{UserID},
                    );
                }
            }

            # merge to oldest
            if ( $MergeToSelection eq 'MergeToOldest' ) {

                # find oldest
                my $TicketIDOldest;
                my $TicketIDOldestID;
                for my $TicketIDCheck (@TicketIDs) {
                    my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $TicketIDCheck );
                    if ( !defined $TicketIDOldest ) {
                        $TicketIDOldest   = $Ticket{CreateTimeUnix};
                        $TicketIDOldestID = $TicketIDCheck;
                    }
                    if ( $TicketIDOldest > $Ticket{CreateTimeUnix} ) {
                        $TicketIDOldest   = $Ticket{CreateTimeUnix};
                        $TicketIDOldestID = $TicketIDCheck;
                    }
                }

                # merge
                if ( $TicketIDOldestID ne $TicketID ) {
                    $Self->{TicketObject}->TicketMerge(
                        MainTicketID  => $TicketIDOldestID,
                        MergeTicketID => $TicketID,
                        UserID        => $Self->{UserID},
                    );
                }
            }

            # link with

            # link togehter
            my $LinkTogether = $Self->{ParamObject}->GetParam( Param => 'LinkTogether' );
            my $LinkTogetherParent
                = $Self->{ParamObject}->GetParam( Param => 'LinkTogetherParent' );
            if ($LinkTogether) {

                # link parent
                if ($LinkTogetherParent) {
                    $LinkTogetherParent =~ s/\s+$//g;
                    $LinkTogetherParent =~ s/^\s+//g;
                    my $MainTicketID = $Self->{TicketObject}->TicketIDLookup(
                        TicketNumber => $LinkTogetherParent,
                    );
                    if ( $MainTicketID ne $TicketID ) {
                        $Self->{LinkObject}->LinkAdd(
                            SourceObject => 'Ticket',
                            SourceKey    => $MainTicketID,
                            TargetObject => 'Ticket',
                            TargetKey    => $TicketID,
                            Type         => 'ParentChild',
                            State        => 'Valid',
                            UserID       => $Self->{UserID},
                        );
                    }
                }

                # link normal
                else {
                    for my $TicketIDPartner (@TicketIDs) {
                        if ( $TicketID ne $TicketIDPartner ) {
                            $Self->{LinkObject}->LinkAdd(
                                SourceObject => 'Ticket',
                                SourceKey    => $TicketID,
                                TargetObject => 'Ticket',
                                TargetKey    => $TicketIDPartner,
                                Type         => 'Normal',
                                State        => 'Valid',
                                UserID       => $Self->{UserID},
                            );
                        }
                    }
                }
            }

            # Should I unlock tickets at user request?
            if ( $Self->{ParamObject}->GetParam( Param => 'Unlock' ) ) {
                $Self->{TicketObject}->LockSet(
                    TicketID => $TicketID,
                    Lock     => 'unlock',
                    UserID   => $Self->{UserID},
                );
            }
        }
    }

    # redirect
    if ( $Self->{Subaction} eq 'Do' ) {
        return $Self->{LayoutObject}->Redirect( OP => $Self->{LastScreenOverview} );
    }

    $Output .= $Self->_Mask( %Param, TicketIDs => \@TicketIDs );
    $Output .= $Self->{LayoutObject}->Footer();
    return $Output;
}

sub _Mask {
    my ( $Self, %Param ) = @_;

    $Self->{LayoutObject}->Block(
        Name => 'BulkAction',
        Data => \%Param,
    );

    # build ArticleTypeID string
    my %DefaultNoteTypes = %{ $Self->{Config}->{ArticleTypes} };
    my %NoteTypes = $Self->{TicketObject}->ArticleTypeList( Result => 'HASH' );
    for ( keys %NoteTypes ) {
        if ( !$DefaultNoteTypes{ $NoteTypes{$_} } ) {
            delete $NoteTypes{$_};
        }
    }
    $Param{NoteStrg} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data     => \%NoteTypes,
        Name     => 'ArticleTypeID',
        Selected => $Self->{Config}->{ArticleTypeDefault},
    );

    # build next states string
    if ( $Self->{Config}->{State} ) {
        my %State;
        my %StateList = $Self->{StateObject}->StateGetStatesByType(
            StateType => $Self->{Config}->{StateType},
            Result    => 'HASH',
            Action    => $Self->{Action},
            UserID    => $Self->{UserID},
        );
        if ( !$Self->{Config}->{StateDefault} ) {
            $StateList{''} = '-';
        }
        if ( !$Param{StateID} ) {
            if ( $Self->{Config}->{StateDefault} ) {
                $State{Selected} = $Self->{Config}->{StateDefault};
            }
        }
        else {
            $State{SelectedID} = $Param{StateID};
        }

        $Param{NextStatesStrg} = $Self->{LayoutObject}->OptionStrgHashRef(
            Data => \%StateList,
            Name => 'StateID',
            %State,
        );
        $Self->{LayoutObject}->Block(
            Name => 'State',
            Data => \%Param,
        );
        for my $StateID ( sort keys %StateList ) {
            next if !$StateID;
            my %StateData = $Self->{TicketObject}->{StateObject}->StateGet( ID => $StateID );
            next if $StateData{TypeName} !~ /pending/i;
            $Param{DateString} = $Self->{LayoutObject}->BuildDateSelection(
                Format => 'DateInputFormatLong',
                DiffTime => $Self->{ConfigObject}->Get('Ticket::Frontend::PendingDiffTime') || 0,
                %Param,
            );
            $Self->{LayoutObject}->Block(
                Name => 'StatePending',
                Data => \%Param,
            );
            last;
        }
    }

    # owner list
    if ( $Self->{Config}->{Owner} ) {
        my %AllGroupsMembers = $Self->{UserObject}->UserList( Type => 'Long', Valid => 1 );

        # only put possible rw agents to possible owner list
        if ( !$Self->{ConfigObject}->Get('Ticket::ChangeOwnerToEveryone') ) {
            my %AllGroupsMembersNew;
            for my $TicketID ( @{ $Param{TicketIDs} } ) {
                my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $TicketID );
                my $GroupID = $Self->{QueueObject}->GetQueueGroupID( QueueID => $Ticket{QueueID} );
                my %GroupMember = $Self->{GroupObject}->GroupMemberList(
                    GroupID => $GroupID,
                    Type    => 'rw',
                    Result  => 'HASH',
                    Cached  => 1,
                );
                for my $UserID ( sort keys %GroupMember ) {
                    next if !$AllGroupsMembers{$UserID};
                    $AllGroupsMembersNew{$UserID} = $AllGroupsMembers{$UserID};
                }
                %AllGroupsMembers = %AllGroupsMembersNew;
            }
        }
        $Param{OwnerStrg} = $Self->{LayoutObject}->OptionStrgHashRef(
            Data => { '' => '-', %AllGroupsMembers },
            Name => 'OwnerID',
            LanguageTranslation => 0,
        );
        $Self->{LayoutObject}->Block(
            Name => 'Owner',
            Data => \%Param,
        );
    }

    # owner list
    if ( $Self->{ConfigObject}->Get('Ticket::Responsible') && $Self->{Config}->{Responsible} ) {
        my %AllGroupsMembers = $Self->{UserObject}->UserList( Type => 'Long', Valid => 1 );

        # only put possible rw agents to possible owner list
        if ( !$Self->{ConfigObject}->Get('Ticket::ChangeOwnerToEveryone') ) {
            my %AllGroupsMembersNew;
            for my $TicketID ( @{ $Param{TicketIDs} } ) {
                my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $TicketID );
                my $GroupID = $Self->{QueueObject}->GetQueueGroupID( QueueID => $Ticket{QueueID} );
                my %GroupMember = $Self->{GroupObject}->GroupMemberList(
                    GroupID => $GroupID,
                    Type    => 'rw',
                    Result  => 'HASH',
                    Cached  => 1,
                );
                for my $UserID ( sort keys %GroupMember ) {
                    next if !$AllGroupsMembers{$UserID};
                    $AllGroupsMembersNew{$UserID} = $AllGroupsMembers{$UserID};
                }
                %AllGroupsMembers = %AllGroupsMembersNew;
            }
        }
        $Param{ResponsibleStrg} = $Self->{LayoutObject}->OptionStrgHashRef(
            Data => { '' => '-', %AllGroupsMembers },
            Name => 'ResponsibleID',
            LanguageTranslation => 0,
        );
        $Self->{LayoutObject}->Block(
            Name => 'Responsible',
            Data => \%Param,
        );
    }

    # build move queue string
    my %MoveQueues = $Self->{TicketObject}->MoveList(
        UserID => $Self->{UserID},
        Action => $Self->{Action},
        Type   => 'move_into',
    );
    $Param{MoveQueuesStrg} = $Self->{LayoutObject}->AgentQueueListOption(
        Data => { %MoveQueues, '' => '-' },
        Multiple => 0,
        Size     => 0,
        Name     => 'QueueID',

        #       SelectedID => $Self->{DestQueueID},
        OnChangeSubmit => 0,
    );

    # get priority
    if ( $Self->{Config}->{Priority} ) {
        my %Priority;
        my %PriorityList = $Self->{PriorityObject}->PriorityList(
            Valid  => 1,
            UserID => $Self->{UserID},
        );
        if ( !$Self->{Config}->{PriorityDefault} ) {
            $PriorityList{''} = '-';
        }
        if ( !$Param{PriorityID} ) {
            if ( $Self->{Config}->{PriorityDefault} ) {
                $Priority{Selected} = $Self->{Config}->{PriorityDefault};
            }
        }
        else {
            $Priority{SelectedID} = $Param{PriorityID};
        }
        $Param{PriorityStrg} = $Self->{LayoutObject}->OptionStrgHashRef(
            Data => \%PriorityList,
            Name => 'PriorityID',
            %Priority,
        );
        $Self->{LayoutObject}->Block(
            Name => 'Priority',
            Data => \%Param,
        );
    }

    # show time accounting box
    if ( $Self->{ConfigObject}->Get('Ticket::Frontend::AccountTime') ) {
        $Self->{LayoutObject}->Block(
            Name => 'TimeUnitsJs',
            Data => \%Param,
        );
        $Self->{LayoutObject}->Block(
            Name => 'TimeUnits',
            Data => \%Param,
        );
    }

    $Param{LinkTogetherYesNoOption} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data       => $Self->{ConfigObject}->Get('YesNoOptions'),
        Name       => 'LinkTogether',
        SelectedID => 0,
    );

    $Param{UnlockYesNoOption} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data       => $Self->{ConfigObject}->Get('YesNoOptions'),
        Name       => 'Unlock',
        SelectedID => 1,
    );

    # show spell check
    if (
        $Self->{ConfigObject}->Get('SpellChecker')
        && $Self->{LayoutObject}->{BrowserJavaScriptSupport}
        )
    {
        $Self->{LayoutObject}->Block(
            Name => 'SpellCheck',
            Data => {},
        );
    }

    # prepare and reformat note text
    my @NewNoteText = $Self->{LayoutObject}->ToFromRichText(
        Content => $Self->{ConfigObject}->Get('Ticket::Frontend::NoteText') || '',
    );
    $Param{NoteText} = $NewNoteText[0];

    # add YUI editor
    if ( $Self->{ConfigObject}->{'Frontend::RichText'} ) {
        $Self->{LayoutObject}->Block(
            Name => 'RichText',
            Data => \%Param,
        );
    }

    # get output back
    return $Self->{LayoutObject}->Output( TemplateFile => 'AgentTicketBulk', Data => \%Param );
}

1;
