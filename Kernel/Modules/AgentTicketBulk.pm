# --
# Kernel/Modules/AgentTicketBulk.pm - to do bulk actions on tickets
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AgentTicketBulk.pm,v 1.58 2010-07-12 20:55:53 cg Exp $
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
$VERSION = qw($Revision: 1.58 $) [1];

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

    $Self->{StateObject}     = Kernel::System::State->new(%Param);
    $Self->{PriorityObject}  = Kernel::System::Priority->new(%Param);
    $Self->{LinkObject}      = Kernel::System::LinkObject->new(%Param);
    $Self->{CheckItemObject} = Kernel::System::CheckItem->new(%Param);

    $Self->{Config} = $Self->{ConfigObject}->Get("Ticket::Frontend::$Self->{Action}");

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check if bulk feature is enabled
    if ( !$Self->{ConfigObject}->Get('Ticket::Frontend::BulkFeature') ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => 'Bulk feature is not enabled!',
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
            Message => 'No TicketID is given!',
            Comment => 'You need min. one selected Ticket!',
        );
    }
    my $Output .= $Self->{LayoutObject}->Header(
        Type => 'Small',
    );

    # declare the variables for all the parameters
    my %Error;
    my %Time;
    my %GetParam;

    # get all parameters and check for errors
    if ( $Self->{Subaction} eq 'Do' ) {

        # get all parameters
        for my $Key (
            qw(OwnerID Owner ResponsibleID Responsible PriorityID Priority QueueID Queue Subject
            Body ArticleTypeID ArticleType StateID State MergeToSelection MergeTo LinkTogether
            LinkTogetherParent Unlock MergeToChecked MergeToOldestChecked TimeUnits)
            )
        {
            $GetParam{$Key} = $Self->{ParamObject}->GetParam( Param => $Key ) || '';
        }

        # get time stamp based on user time zone
        %Time = $Self->{LayoutObject}->TransfromDateSelection(
            Year   => $Self->{ParamObject}->GetParam( Param => 'Year' ),
            Month  => $Self->{ParamObject}->GetParam( Param => 'Month' ),
            Day    => $Self->{ParamObject}->GetParam( Param => 'Day' ),
            Hour   => $Self->{ParamObject}->GetParam( Param => 'Hour' ),
            Minute => $Self->{ParamObject}->GetParam( Param => 'Minute' ),
        );

        if ( $GetParam{'MergeToSelection'} eq 'OptionMergeTo' ) {
            $GetParam{'MergeToChecked'} = 'checked';
        }
        elsif ( $GetParam{'MergeToSelection'} eq 'OptionMergeToOldest' ) {
            $GetParam{'MergeToOldestChecked'} = 'checked';
        }

        # check some stuff
        if ( !$GetParam{'Subject'} ) {
            $Error{'SubjectInvalid'} = 'ServerError';
        }
        if ( !$GetParam{'Body'} ) {
            $Error{'RichTextInvalid'} = 'ServerError';
        }
        if ( !$Self->{TimeObject}->Date2SystemTime( %Time, Second => 0 ) ) {
            $Error{'DateInvalid'} = 'ServerError';
        }
        if (
            $Self->{TimeObject}->Date2SystemTime( %Time, Second => 0 )
            < $Self->{TimeObject}->SystemTime()
            )
        {
            $Error{'DateInvalid'} = 'ServerError';
        }
        if ( $GetParam{'MergeToSelection'} eq 'OptionMergeTo' && $GetParam{'MergeTo'} ) {
            $Self->{CheckItemObject}->StringClean(
                StringRef => \$GetParam{'MergeTo'},
                TrimLeft  => 1,
                TrimRight => 1,
            );
            my $TicketID = $Self->{TicketObject}->TicketCheckNumber(
                Tn => $GetParam{'MergeTo'},
            );
            if ( !$TicketID ) {
                $Error{'MergeToInvalid'} = 'ServerError';
            }
        }
        if ( $GetParam{'LinkTogetherParent'} ) {
            $Self->{CheckItemObject}->StringClean(
                StringRef => \$GetParam{'LinkTogetherParent'},
                TrimLeft  => 1,
                TrimRight => 1,
            );
            my $TicketID = $Self->{TicketObject}->TicketCheckNumber(
                Tn => $GetParam{'LinkTogetherParent'},
            );
            if ( !$TicketID ) {
                $Error{'LinkTogetherParentInvalid'} = 'ServerError';
            }
        }
    }

    # process tickets
    my @TicketIDSelected;
    for my $TicketID (@TicketIDs) {
        my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $TicketID );

        # check permissions
        my $Access = $Self->{TicketObject}->TicketPermission(
            Type     => 'rw',
            TicketID => $TicketID,
            UserID   => $Self->{UserID}
        );
        if ( !$Access ) {

            # error screen, don't show ticket
            $Output .= $Self->{LayoutObject}->Notify(
                Data => $Ticket{TicketNumber} . ': $Text{"No access to ticket!"}',
            );
            next;
        }

        $Param{IsUnlock} = 0;

        # check if it's already locked by somebody else
        if ( !$Self->{Config}->{RequiredLock} ) {
            $Output .= $Self->{LayoutObject}->Notify(
                Data => $Ticket{TicketNumber} . ': $Text{"Ticket is used!"}',
            );
        }
        else {
            if ( $Self->{TicketObject}->TicketLockGet( TicketID => $TicketID ) ) {
                my $AccessOk = $Self->{TicketObject}->OwnerCheck(
                    TicketID => $TicketID,
                    OwnerID  => $Self->{UserID},
                );
                if ( !$AccessOk ) {
                    $Output .= $Self->{LayoutObject}->Notify(
                        Data => $Ticket{TicketNumber}
                            . ': $Text{"Ticket is locked for another agent!"}',
                    );
                    next;
                }
            }
            else {
                $Param{IsUnlock} = 1;
            }

            # set lock
            $Self->{TicketObject}->TicketLockSet(
                TicketID => $TicketID,
                Lock     => 'lock',
                UserID   => $Self->{UserID},
            );

            # set user id
            $Self->{TicketObject}->TicketOwnerSet(
                TicketID  => $TicketID,
                UserID    => $Self->{UserID},
                NewUserID => $Self->{UserID},
            );
            $Output .= $Self->{LayoutObject}->Notify(
                Data => $Ticket{TicketNumber} . ': $Text{"Ticket locked!"}',
            );
        }

        # remember selected ticket ids
        push @TicketIDSelected, $TicketID;

        # do some actions on tickets
        if ( ( $Self->{Subaction} eq 'Do' ) && ( !%Error ) ) {

            # challenge token check for write action
            $Self->{LayoutObject}->ChallengeTokenCheck();

            # set owner
            if ( $Self->{Config}->{Owner} && ( $GetParam{'OwnerID'} || $GetParam{'Owner'} ) ) {
                $Self->{TicketObject}->TicketOwnerSet(
                    TicketID  => $TicketID,
                    UserID    => $Self->{UserID},
                    NewUser   => $GetParam{'Owner'},
                    NewUserID => $GetParam{'OwnerID'},
                );
            }

            # set responsible
            if (
                $Self->{Config}->{Responsible}
                && ( $GetParam{'ResponsibleID'} || $GetParam{'Responsible'} )
                )
            {
                $Self->{TicketObject}->TicketResponsibleSet(
                    TicketID  => $TicketID,
                    UserID    => $Self->{UserID},
                    NewUser   => $GetParam{'Responsible'},
                    NewUserID => $GetParam{'ResponsibleID'},
                );
            }

            # set priority
            if (
                $Self->{Config}->{Priority}
                && ( $GetParam{'PriorityID'} || $GetParam{'Priority'} )
                )
            {
                $Self->{TicketObject}->TicketPrioritySet(
                    TicketID   => $TicketID,
                    UserID     => $Self->{UserID},
                    Priority   => $GetParam{'Priority'},
                    PriorityID => $GetParam{'PriorityID'},
                );
            }

            # set queue
            if ( $GetParam{'QueueID'} || $GetParam{'Queue'} ) {
                $Self->{TicketObject}->TicketQueueSet(
                    QueueID  => $GetParam{'QueueID'},
                    Queue    => $GetParam{'Queue'},
                    TicketID => $TicketID,
                    UserID   => $Self->{UserID},
                );
            }

            # add note
            my $ArticleID;
            if (
                $GetParam{'Subject'}
                && $GetParam{'Body'}
                && ( $GetParam{'ArticleTypeID'} || $GetParam{'ArticleType'} )
                )
            {
                my $MimeType = 'text/plain';
                if ( $Self->{LayoutObject}->{BrowserRichText} ) {
                    $MimeType = 'text/html';

                    # verify html document
                    $GetParam{'Body'} = $Self->{LayoutObject}->RichTextDocumentComplete(
                        String => $GetParam{'Body'},
                    );
                }
                $ArticleID = $Self->{TicketObject}->ArticleCreate(
                    TicketID      => $TicketID,
                    ArticleTypeID => $GetParam{'ArticleTypeID'},
                    ArticleType   => $GetParam{'ArticleType'},
                    SenderType    => 'agent',
                    From     => "$Self->{UserFirstname} $Self->{UserLastname} <$Self->{UserEmail}>",
                    Subject  => $GetParam{'Subject'},
                    Body     => $GetParam{'Body'},
                    MimeType => $MimeType,
                    Charset  => $Self->{LayoutObject}->{UserCharset},
                    UserID   => $Self->{UserID},
                    HistoryType    => 'AddNote',
                    HistoryComment => '%%Bulk',
                );
            }

            # set state
            if ( $Self->{Config}->{State} && ( $GetParam{'StateID'} || $GetParam{'State'} ) ) {
                $Self->{TicketObject}->TicketStateSet(
                    TicketID => $TicketID,
                    StateID  => $GetParam{'StateID'},
                    State    => $GetParam{'State'},
                    UserID   => $Self->{UserID},
                );
                my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $TicketID );
                my %StateData = $Self->{TicketObject}->{StateObject}->StateGet(
                    ID => $Ticket{StateID},
                );

                # should i set the pending date?
                if ( $Ticket{StateType} =~ /^pending/i ) {

                    # set pending time
                    $Self->{TicketObject}->TicketPendingTimeSet(
                        %Time,
                        TicketID => $TicketID,
                        UserID   => $Self->{UserID},
                    );
                }

                # should I set an unlock?
                if ( $Ticket{StateType} =~ /^close/i ) {
                    $Self->{TicketObject}->TicketLockSet(
                        TicketID => $TicketID,
                        Lock     => 'unlock',
                        UserID   => $Self->{UserID},
                    );
                }
            }

            # time units
            if ( $GetParam{'TimeUnits'} ) {
                $Self->{TicketObject}->TicketAccountTime(
                    TicketID  => $TicketID,
                    ArticleID => $ArticleID,
                    TimeUnit  => $GetParam{'TimeUnits'},
                    UserID    => $Self->{UserID},
                );
            }

            # merge to
            if ( $GetParam{'MergeToSelection'} eq 'OptionMergeTo' && $GetParam{'MergeTo'} ) {
                my $MainTicketID = $Self->{TicketObject}->TicketIDLookup(
                    TicketNumber => $GetParam{'MergeTo'},
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
            if ( $GetParam{'MergeToSelection'} eq 'OptionMergeToOldest' ) {

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
            if ( $GetParam{'LinkTogether'} ) {

                # link parent
                if ( $GetParam{'LinkTogetherParent'} ) {
                    my $MainTicketID = $Self->{TicketObject}->TicketIDLookup(
                        TicketNumber => $GetParam{'LinkTogetherParent'},
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
            if ( $GetParam{'Unlock'} ) {
                $Self->{TicketObject}->TicketLockSet(
                    TicketID => $TicketID,
                    Lock     => 'unlock',
                    UserID   => $Self->{UserID},
                );
            }

            # redirect
            my $Output = $Self->{LayoutObject}->Header( Type => 'Small' );
            $Self->{LayoutObject}->Block(
                Name => 'LoadParentURLAndClose',
                Data => {
                    URL => $Self->{LastScreenOverview},
                },
            );
            $Output .= $Self->{LayoutObject}
                ->Output( TemplateFile => 'AgentTicketActionBulkClose' );
            $Output .= $Self->{LayoutObject}->Footer( Type => 'Small' );
            return $Output;
        }
    }

    $Output .= $Self->_Mask(
        %Param,
        %GetParam,
        %Time,
        TicketIDs => \@TicketIDSelected,
        Errors    => \%Error,
    );
    $Output .= $Self->{LayoutObject}->Footer(
        Type => 'Small',
    );
    return $Output;
}

sub _Mask {
    my ( $Self, %Param ) = @_;

    # prepare errors!
    if ( $Param{Errors} ) {
        for ( keys %{ $Param{Errors} } ) {
            $Param{$_} = $Self->{LayoutObject}->Ascii2Html( Text => $Param{Errors}->{$_} );
        }
    }

    $Self->{LayoutObject}->Block(
        Name => 'BulkAction',
        Data => \%Param,
    );

    # remember ticket ids
    if ( $Param{TicketIDs} ) {
        for my $TicketID ( @{ $Param{TicketIDs} } ) {
            $Self->{LayoutObject}->Block(
                Name => 'UsedTicketID',
                Data => {
                    TicketID => $TicketID,
                },
            );
        }
    }

    # build ArticleTypeID string
    my %DefaultNoteTypes = %{ $Self->{Config}->{ArticleTypes} };
    my %NoteTypes = $Self->{TicketObject}->ArticleTypeList( Result => 'HASH' );
    for ( keys %NoteTypes ) {
        if ( !$DefaultNoteTypes{ $NoteTypes{$_} } ) {
            delete $NoteTypes{$_};
        }
    }
    $Param{NoteStrg} = $Self->{LayoutObject}->BuildSelection(
        Data       => \%NoteTypes,
        Name       => 'ArticleTypeID',
        SelectedID => $Param{ArticleTypeID} || $Self->{Config}->{ArticleTypeDefault},
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

        $Param{NextStatesStrg} = $Self->{LayoutObject}->BuildSelection(
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
                %Param,
                Format   => 'DateInputFormatLong',
                DiffTime => $Self->{ConfigObject}->Get('Ticket::Frontend::PendingDiffTime') || 0,
                Validate => 1,
                Class    => $Param{Errors}->{DateInvalid} || '',
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
                );
                for my $UserID ( sort keys %GroupMember ) {
                    next if !$AllGroupsMembers{$UserID};
                    $AllGroupsMembersNew{$UserID} = $AllGroupsMembers{$UserID};
                }
                %AllGroupsMembers = %AllGroupsMembersNew;
            }
        }
        $Param{OwnerStrg} = $Self->{LayoutObject}->BuildSelection(
            Data => { '' => '-', %AllGroupsMembers },
            Name => 'OwnerID',
            LanguageTranslation => 0,
            SelectedID          => $Param{OwnerID},
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
                );
                for my $UserID ( sort keys %GroupMember ) {
                    next if !$AllGroupsMembers{$UserID};
                    $AllGroupsMembersNew{$UserID} = $AllGroupsMembers{$UserID};
                }
                %AllGroupsMembers = %AllGroupsMembersNew;
            }
        }
        $Param{ResponsibleStrg} = $Self->{LayoutObject}->BuildSelection(
            Data => { '' => '-', %AllGroupsMembers },
            Name => 'ResponsibleID',
            LanguageTranslation => 0,
            SelectedID          => $Param{ResponsibleID},
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
        $Param{PriorityStrg} = $Self->{LayoutObject}->BuildSelection(
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
            Name => 'TimeUnits',
            Data => \%Param,
        );
    }

    $Param{LinkTogetherYesNoOption} = $Self->{LayoutObject}->BuildSelection(
        Data       => $Self->{ConfigObject}->Get('YesNoOptions'),
        Name       => 'LinkTogether',
        SelectedID => $Param{LinkTogether} || 0,
    );

    $Param{UnlockYesNoOption} = $Self->{LayoutObject}->BuildSelection(
        Data       => $Self->{ConfigObject}->Get('YesNoOptions'),
        Name       => 'Unlock',
        SelectedID => $Param{Unlock} || 1,
    );

    # show spell check
    if ( $Self->{LayoutObject}->{BrowserSpellChecker} ) {
        $Self->{LayoutObject}->Block(
            Name => 'SpellCheck',
            Data => {},
        );
    }

    # add rich text editor
    if ( $Self->{LayoutObject}->{BrowserRichText} ) {
        $Self->{LayoutObject}->Block(
            Name => 'RichText',
            Data => \%Param,
        );
    }

    # reload parent window
    if ( $Param{IsUnlock} ) {
        $Self->{LayoutObject}->Block(
            Name => 'ParentReload',
        );
    }

    # get output back
    return $Self->{LayoutObject}->Output( TemplateFile => 'AgentTicketBulk', Data => \%Param );
}

1;
