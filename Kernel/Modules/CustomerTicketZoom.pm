# --
# Kernel/Modules/CustomerTicketZoom.pm - to get a closer view
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: CustomerTicketZoom.pm,v 1.36 2009-04-15 22:54:27 sb Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::CustomerTicketZoom;

use strict;
use warnings;

use Kernel::System::Web::UploadCache;
use Kernel::System::State;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.36 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check needed objects
    for (
        qw(ParamObject DBObject TicketObject LayoutObject LogObject QueueObject
        ConfigObject UserObject SessionObject
        )
        )
    {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    # needed objects
    $Self->{StateObject}      = Kernel::System::State->new(%Param);
    $Self->{UploadCachObject} = Kernel::System::Web::UploadCache->new(%Param);

    # get article id
    $Self->{ArticleID} = $Self->{ParamObject}->GetParam( Param => 'ArticleID' );

    # get form id
    $Self->{FormID} = $Self->{ParamObject}->GetParam( Param => 'FormID' );

    # create form id
    if ( !$Self->{FormID} ) {
        $Self->{FormID} = $Self->{UploadCachObject}->FormIDCreate();
    }

    $Self->{Config} = $Self->{ConfigObject}->Get("Ticket::Frontend::$Self->{Action}");

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my %GetParam = ();

    # check needed stuff
    if ( !$Self->{TicketID} ) {
        my $Output = $Self->{LayoutObject}->CustomerHeader( Title => 'Error' );
        $Output .= $Self->{LayoutObject}->CustomerError( Message => 'Need TicketID!' );
        $Output .= $Self->{LayoutObject}->CustomerFooter();
        return $Output;
    }

    # check permissions
    if (
        !$Self->{TicketObject}->CustomerPermission(
            Type     => 'ro',
            TicketID => $Self->{TicketID},
            UserID   => $Self->{UserID}
        )
        )
    {

        # error screen, don't show ticket
        return $Self->{LayoutObject}->CustomerNoPermission( WithHeader => 'yes' );
    }

    # store last screen
    if ( $Self->{Subaction} ne 'ShowHTMLeMail' ) {
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key       => 'LastScreenView',
            Value     => $Self->{RequestedURL},
        );
    }

    # get ticket data
    my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Self->{TicketID} );

    # get params
    for (
        qw(
        Subject Body StateID PriorityID
        AttachmentUpload
        AttachmentDelete1 AttachmentDelete2 AttachmentDelete3 AttachmentDelete4
        AttachmentDelete5 AttachmentDelete6 AttachmentDelete7 AttachmentDelete8
        AttachmentDelete9 AttachmentDelete10
        )
        )
    {
        $GetParam{$_} = $Self->{ParamObject}->GetParam( Param => $_ );
    }

    # check follow up
    if ( $Self->{Subaction} eq 'Store' ) {
        my $NextScreen = $Self->{NextScreen} || $Self->{Config}->{NextScreenAfterFollowUp};
        my %Error = ();

        # rewrap body if exists
        if ( $GetParam{Body} ) {
            $GetParam{Body}
                =~ s/(^>.+|.{4,$Self->{ConfigObject}->Get('Ticket::Frontend::TextAreaNote')})(?:\s|\z)/$1\n/gm;
        }

        # get follow up option (possible or not)
        my $FollowUpPossible = $Self->{QueueObject}->GetFollowUpOption(
            QueueID => $Ticket{QueueID},
        );

        # get lock option (should be the ticket locked - if closed - after the follow up)
        my $Lock = $Self->{QueueObject}->GetFollowUpLockOption( QueueID => $Ticket{QueueID}, );

        # get ticket state details
        my %State = $Self->{StateObject}->StateGet(
            ID => $Ticket{StateID},
        );
        if ( $FollowUpPossible =~ /(new ticket|reject)/i && $State{TypeName} =~ /^close/i ) {
            my $Output = $Self->{LayoutObject}->CustomerHeader( Title => 'Error' );
            $Output .= $Self->{LayoutObject}->CustomerWarning(
                Message => 'Can\'t reopen ticket, not possible in this queue!',
                Comment => 'Create a new ticket!',
            );
            $Output .= $Self->{LayoutObject}->CustomerFooter();
            return $Output;
        }

        # rewrap body if exists
        if ( $GetParam{Body} ) {
            $GetParam{Body}
                =~ s/(^>.+|.{4,$Self->{ConfigObject}->Get('Ticket::Frontend::TextAreaNote')})(?:\s|\z)/$1\n/gm;
        }

        # attachment delete
        for ( 1 .. 10 ) {
            if ( $GetParam{"AttachmentDelete$_"} ) {
                $Error{AttachmentDelete} = 1;
                $Self->{UploadCachObject}->FormIDRemoveFile(
                    FormID => $Self->{FormID},
                    FileID => $_,
                );
            }
        }

        # attachment upload
        if ( $GetParam{AttachmentUpload} ) {
            $Error{AttachmentUpload} = 1;
            my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
                Param  => "file_upload",
                Source => 'string',
            );
            $Self->{UploadCachObject}->FormIDAddFile(
                FormID => $Self->{FormID},
                %UploadStuff,
            );
        }
        if ( !%Error ) {

            # set lock if ticket was closed
            if ( $Lock && $State{TypeName} =~ /^close/i && $Ticket{OwnerID} ne '1' ) {
                $Self->{TicketObject}->LockSet(
                    TicketID => $Self->{TicketID},
                    Lock     => 'lock',
                    UserID   => => $Self->{ConfigObject}->Get('CustomerPanelUserID'),
                );
            }
            my $From = "$Self->{UserFirstname} $Self->{UserLastname} <$Self->{UserEmail}>";

            my $MimeType = 'text/plain';
            if ( $Self->{ConfigObject}->{'Frontend::RichText'} ) {
                $MimeType = 'text/html';

                # replace image link with content id for uploaded images
                $GetParam{Body} =~ s{
                    ((?:<|&lt;)img.*?src=(?:"|&quot;))
                    .*?ContentID=(inline[\w\.]+?@[\w\.-]+).*?
                    ((?:"|&quot;).*?(?:>|&gt;))
                }
                {
                    $1 . "cid:" . $2 . $3;
                }esgxi;
            }

            if (
                my $ArticleID = $Self->{TicketObject}->ArticleCreate(
                    TicketID    => $Self->{TicketID},
                    ArticleType => $Self->{Config}->{ArticleType},
                    SenderType  => $Self->{Config}->{SenderType},
                    From        => $From,
                    Subject     => $GetParam{Subject},
                    Body        => $GetParam{Body},
                    MimeType    => $MimeType,
                    Charset     => $Self->{LayoutObject}->{UserCharset},
                    UserID      => $Self->{ConfigObject}->Get('CustomerPanelUserID'),
                    OrigHeader  => {
                        From    => $From,
                        To      => 'System',
                        Subject => $GetParam{Subject},
                        Body    => $GetParam{Body},
                    },
                    HistoryType      => $Self->{Config}->{HistoryType},
                    HistoryComment   => $Self->{Config}->{HistoryComment} || '%%',
                    AutoResponseType => 'auto follow up',
                )
                )
            {

                # set state
                my %NextStateData = $Self->{StateObject}->StateGet( ID => $GetParam{StateID} );
                my $NextState = $NextStateData{Name}
                    || $Self->{Config}->{StateDefault}
                    || 'open';
                $Self->{TicketObject}->StateSet(
                    TicketID  => $Self->{TicketID},
                    ArticleID => $ArticleID,
                    State     => $NextState,
                    UserID    => $Self->{ConfigObject}->Get('CustomerPanelUserID'),
                );

                # set priority
                if ( $Self->{Config}->{Priority} && $GetParam{PriorityID} ) {
                    $Self->{TicketObject}->PrioritySet(
                        TicketID   => $Self->{TicketID},
                        PriorityID => $GetParam{PriorityID},
                        UserID     => $Self->{ConfigObject}->Get('CustomerPanelUserID'),
                    );
                }

                # get pre loaded attachment
                my @AttachmentData = $Self->{UploadCachObject}->FormIDGetAllFilesData(
                    FormID => $Self->{FormID}
                );

                # get submit attachment
                my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
                    Param  => 'file_upload',
                    Source => 'String',
                );
                if (%UploadStuff) {
                    push( @AttachmentData, \%UploadStuff );
                }

                # write attachments
                WRITEATTACHMENT:
                for my $Ref (@AttachmentData) {

                    # skip deleted inline images
                    next WRITEATTACHMENT if $Ref->{ContentID}
                        && $Ref->{ContentID} =~ /^inline/
                        && $GetParam{Body} !~ /$Ref->{ContentID}/;
                    $Self->{TicketObject}->ArticleWriteAttachment(
                        %{$Ref},
                        ArticleID => $ArticleID,
                        UserID    => $Self->{ConfigObject}->Get('CustomerPanelUserID'),
                    );
                }

                # remove pre submited attachments
                $Self->{UploadCachObject}->FormIDRemove( FormID => $Self->{FormID} );

                # redirect to zoom view
                return $Self->{LayoutObject}->Redirect(
                    OP => "Action=$NextScreen&TicketID=$Self->{TicketID}",
                );
            }
            else {
                my $Output = $Self->{LayoutObject}->CustomerHeader( Title => 'Error' );
                $Output .= $Self->{LayoutObject}->CustomerError();
                $Output .= $Self->{LayoutObject}->CustomerFooter();
                return $Output;
            }
        }
    }

    $Ticket{TmpCounter}      = 0;
    $Ticket{TicketTimeUnits} = $Self->{TicketObject}->TicketAccountedTimeGet(
        TicketID => $Ticket{TicketID},
    );

    # set priority from ticket as fallback
    $GetParam{PriorityID} ||= $Ticket{PriorityID};

    # get all article of this ticket
    my @CustomerArticleTypes = $Self->{TicketObject}->ArticleTypeList( Type => 'Customer' );
    my @ArticleBox = $Self->{TicketObject}->ArticleContentIndex(
        TicketID                   => $Self->{TicketID},
        ArticleType                => \@CustomerArticleTypes,
        StripPlainBodyAsAttachment => 1,
    );

    # generate output
    my $Output = $Self->{LayoutObject}->CustomerHeader( Value => $Ticket{TicketNumber} );
    $Output .= $Self->{LayoutObject}->CustomerNavigationBar();

    # show ticket
    if ( $Self->{Subaction} eq 'ShowHTMLeMail' ) {

        # if it is a html email, drop normal header
        $Ticket{ShowHTMLeMail} = 1;
        $Output = '';
    }
    $Output .= $Self->_Mask(
        TicketID   => $Self->{TicketID},
        ArticleBox => \@ArticleBox,
        ArticleID  => $Self->{ArticleID},
        %Ticket,
        %GetParam,
    );

    # return if HTML email
    if ( $Self->{Subaction} eq 'ShowHTMLeMail' ) {

        # if it is a html email, return here
        $Ticket{ShowHTMLeMail} = 1;
        return $Output;
    }

    # add footer
    $Output .= $Self->{LayoutObject}->CustomerFooter();

    # return output
    return $Output;
}

sub _Mask {
    my ( $Self, %Param ) = @_;

    $Param{FormID} = $Self->{FormID};

    # do some html quoting
    $Param{Age} = $Self->{LayoutObject}->CustomerAge( Age => $Param{Age}, Space => ' ' );

    # build article stuff
    my $SelectedArticleID = $Param{ArticleID} || '';
    my $BaseLink          = $Self->{LayoutObject}->{Baselink} . "TicketID=$Self->{TicketID}&";
    my @ArticleBox        = @{ $Param{ArticleBox} };

    if ( !@ArticleBox ) {

        # error screen, don't show ticket
        return $Self->{LayoutObject}->CustomerNoPermission( WithHeader => 'no' );
    }

    # get last customer article
    my $CounterArray = 0;
    my $LastCustomerArticleID;
    my $LastCustomerArticle = $#ArticleBox;

    my $ArticleID = '';
    for my $ArticleTmp (@ArticleBox) {
        my %Article = %$ArticleTmp;

        # if it is a customer article
        if ( $Article{SenderType} eq 'customer' && $Article{ArticleType} !~ /int/ ) {
            $LastCustomerArticleID = $Article{'ArticleID'};
            $LastCustomerArticle   = $CounterArray;
        }
        $CounterArray++;
        if ( $SelectedArticleID eq $Article{ArticleID} ) {
            $ArticleID = $Article{ArticleID};
        }
    }

    # try to use the latest customer article
    if ( !$ArticleID && $LastCustomerArticleID ) {
        $ArticleID = $LastCustomerArticleID;
    }

    # try to use the latest non internal agent article
    if ( !$ArticleID ) {
        for my $ArticleTmp (@ArticleBox) {
            if ( $ArticleTmp->{StateType} eq 'merged' || $ArticleTmp->{ArticleType} !~ /int/ ) {
                $ArticleID = $ArticleTmp->{ArticleID};
            }
        }
    }

    # build thread string
    $Self->{LayoutObject}->Block(
        Name => 'Tree',
        Data => {%Param},
    );
    my $CounterTree    = 0;
    my $Counter        = '';
    my $Space          = '';
    my $LastSenderType = '';
    $Param{ArticleStrg} = '';
    for my $ArticleTmp (@ArticleBox) {
        my %Article = %$ArticleTmp;
        my $Start   = '';
        my $Stop    = '';
        my $Start2  = '';
        my $Stop2   = '';

        $CounterTree++;
        my $TmpSubject = $Self->{TicketObject}->TicketSubjectClean(
            TicketNumber => $Article{TicketNumber},
            Subject => $Article{Subject} || '',
        );
        if ( $LastSenderType ne $Article{SenderType} ) {
            $Counter .= "&nbsp;";
            $Space = "$Counter&nbsp;|--&gt;";
        }
        $LastSenderType = $Article{SenderType};

        # if this is the shown article -=> add <b>
        if ( $ArticleID eq $Article{ArticleID} ) {
            $Start  = '<i><u>';
            $Start2 = '<b>';
        }

        # if this is the shown article -=> add </b>
        if ( $ArticleID eq $Article{ArticleID} ) {
            $Stop  = '</u></i>';
            $Stop2 = '</b>';
        }
        $Self->{LayoutObject}->Block(
            Name => 'TreeItem',
            Data => {
                %Article,
                Subject => $TmpSubject,
                Space   => $Space,
                Start   => $Start,
                Stop    => $Stop,
                Start2  => $Start2,
                Stop2   => $Stop2,
                Count   => $CounterTree,
            },
        );

        # add attachment icon
        if (
            $Article{Atms}
            && %{ $Article{Atms} }
            && $Self->{ConfigObject}->Get('Ticket::ZoomAttachmentDisplay')
            )
        {
            my $Title = '';

            # download type
            my $Type = $Self->{ConfigObject}->Get('AttachmentDownloadType') || 'attachment';

            # if attachment will be forced to download, don't open a new download window!
            my $Target = '';
            if ( $Type =~ /inline/i ) {
                $Target = 'target="attachment" ';
            }
            for my $Count (
                1 .. ( $Self->{ConfigObject}->Get('Ticket::ZoomAttachmentDisplayCount') + 1 )
                )
            {
                if ( $Article{Atms}->{$Count} ) {
                    if ( $Count > $Self->{ConfigObject}->Get('Ticket::ZoomAttachmentDisplayCount') )
                    {
                        $Self->{LayoutObject}->Block(
                            Name => 'TreeItemAttachmentMore',
                            Data => {
                                %Article,
                                %{ $Article{Atms}->{$Count} },
                                FileID => $Count,
                                Target => $Target,
                            },
                        );
                    }
                    elsif ( $Article{Atms}->{$Count} ) {
                        $Self->{LayoutObject}->Block(
                            Name => 'TreeItemAttachment',
                            Data => {
                                %Article,
                                %{ $Article{Atms}->{$Count} },
                                FileID => $Count,
                                Target => $Target,
                            },
                        );
                    }
                }
            }
        }
    }

    my $ArticleOB = $ArticleBox[$LastCustomerArticle];
    my %Article   = %$ArticleOB;

    my $ArticleArray = 0;
    for my $ArticleTmp (@ArticleBox) {
        my %ArticleTmp1 = %$ArticleTmp;
        if ( $ArticleID eq $ArticleTmp1{ArticleID} ) {
            %Article = %ArticleTmp1;
        }
    }

    # get attachment string
    my %AtmIndex = ();
    if ( $Article{Atms} ) {
        %AtmIndex = %{ $Article{Atms} };
    }

    # add block for attachments
    if (%AtmIndex) {
        $Self->{LayoutObject}->Block(
            Name => 'ArticleAttachment',
            Data => { Key => 'Attachment', },
        );
        for my $FileID ( sort keys %AtmIndex ) {
            my %File = %{ $AtmIndex{$FileID} };
            $Self->{LayoutObject}->Block(
                Name => 'ArticleAttachmentRow',
                Data => { %File, },
            );

            # download type
            my $Type = $Self->{ConfigObject}->Get('AttachmentDownloadType') || 'attachment';

            # if attachment will be forced to download, don't open a new download window!
            my $Target = '';
            if ( $Type =~ /inline/i ) {
                $Target = 'target="attachment" ';
            }
            $Self->{LayoutObject}->Block(
                Name => 'ArticleAttachmentRowLink',
                Data => {
                    %File,
                    Action => 'Download',
                    Link =>
                        "\$Env{\"Baselink\"}Action=CustomerTicketAttachment&ArticleID=$Article{ArticleID}&FileID=$FileID",
                    Image  => 'disk-s.png',
                    Target => $Target,
                },
            );
        }
    }

    # just body if html email
    if ( $Param{"ShowHTMLeMail"} ) {

        # generate output
        return $Self->{LayoutObject}->Attachment(
            Filename => $Self->{ConfigObject}->Get('Ticket::Hook')
                . "-$Article{TicketNumber}-$Article{TicketID}-$Article{ArticleID}",
            Type        => 'inline',
            ContentType => "$Article{MimeType}; charset=$Article{Charset}",
            Content     => $Article{Body},
        );
    }

    # check if just a only html email
    if ( my $MimeTypeText = $Self->{LayoutObject}->CheckMimeType( %Param, %Article ) ) {
        $Param{'Article::TextNote'} = $MimeTypeText;
        $Param{'Article::Text'}     = '';
    }
    else {

        # html quoting
        $Param{'Article::Text'} = $Self->{LayoutObject}->Ascii2Html(
            NewLine        => $Self->{ConfigObject}->Get('DefaultViewNewLine'),
            Text           => $Article{Body},
            VMax           => $Self->{ConfigObject}->Get('DefaultViewLines') || 5000,
            HTMLResultMode => 1,
            LinkFeature    => 1,
        );

        # do charset check
        if ( my $CharsetText = $Self->{LayoutObject}->CheckCharset( %Param, %Article ) ) {
            $Param{'Article::TextNote'} = $CharsetText;
        }
    }

    # show plain or html body
    my $TextType = 'Plain';
    if ( $Article{BodyHTML} ) {
        $TextType = 'HTML';
    }
    $Self->{LayoutObject}->Block(
        Name => 'Body' . $TextType,
        Data => {
            %Param,
            %Article,
        },
    );

    # get article id
    $Param{'Article::ArticleID'} = $Article{ArticleID};

    # do some strips && quoting
    for (qw(From To Cc Subject)) {
        if ( $Article{$_} ) {
            $Self->{LayoutObject}->Block(
                Name => 'Row',
                Data => {
                    Key   => $_,
                    Value => $Article{$_},
                },
            );
        }
    }

    # check follow up permissions
    my $FollowUpPossible = $Self->{QueueObject}->GetFollowUpOption( QueueID => $Article{QueueID}, );
    my %State = $Self->{StateObject}->StateGet(
        ID => $Article{StateID},
    );
    if (
        $Self->{TicketObject}->CustomerPermission(
            Type     => 'update',
            TicketID => $Self->{TicketID},
            UserID   => $Self->{UserID}
        )
        && (
            ( $FollowUpPossible !~ /(new ticket|reject)/i && $State{TypeName} =~ /^close/i )
            || $State{TypeName} !~ /^close/i
        )
        )
    {
        $Self->{LayoutObject}->Block(
            Name => 'FollowUp',
            Data => { %Param, },
        );

        # add YUI editor
        if ( $Self->{ConfigObject}->{'Frontend::RichText'} ) {
            $Self->{LayoutObject}->Block(
                Name => 'RichText',
                Data => \%Param,
            );
        }

        # build next states string
        if ( $Self->{Config}->{State} ) {
            my %NextStates = $Self->{TicketObject}->StateList(
                TicketID       => $Self->{TicketID},
                Action         => $Self->{Action},
                CustomerUserID => $Self->{UserID},
            );
            my %StateSelected = ();
            if ( $Param{StateID} ) {
                $StateSelected{SelectedID} = $Param{StateID};
            }
            else {
                $StateSelected{Selected} = $Self->{Config}->{StateDefault};
            }
            $Param{'NextStatesStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
                Data => \%NextStates,
                Name => 'StateID',
                %StateSelected,
            );
            $Self->{LayoutObject}->Block(
                Name => 'State',
                Data => { %Param, },
            );
        }

        # get priority
        if ( $Self->{Config}->{Priority} ) {
            my %Priorities = $Self->{TicketObject}->PriorityList(
                CustomerUserID => $Self->{UserID},
                Action         => $Self->{Action},
            );
            my %PrioritySelected = ();
            if ( $Param{PriorityID} ) {
                $PrioritySelected{SelectedID} = $Param{PriorityID};
            }
            else {
                $PrioritySelected{Selected} = $Self->{Config}->{PriorityDefault} || '3 normal';
            }
            $Param{'PriorityStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
                Data => \%Priorities,
                Name => 'PriorityID',
                %PrioritySelected,
            );
            $Self->{LayoutObject}->Block(
                Name => 'Priority',
                Data => { %Param, },
            );
        }

        # show attachments
        # get all attachments meta data
        my @Attachments = $Self->{UploadCachObject}->FormIDGetAllFilesMeta(
            FormID => $Self->{FormID},
        );
        for my $DataRef (@Attachments) {
            $Self->{LayoutObject}->Block(
                Name => 'Attachment',
                Data => $DataRef,
            );
        }
    }

    # ticket type
    if ( $Self->{ConfigObject}->Get('Ticket::Type') ) {
        $Self->{LayoutObject}->Block(
            Name => 'Type',
            Data => { %Param, %Article },
        );
    }

    # ticket service
    if ( $Self->{ConfigObject}->Get('Ticket::Service') && $Article{Service} ) {
        $Self->{LayoutObject}->Block(
            Name => 'Service',
            Data => { %Param, %Article },
        );
        if ( $Article{SLA} ) {
            $Self->{LayoutObject}->Block(
                Name => 'SLA',
                Data => { %Param, %Article },
            );
        }
    }

    # ticket free text
    for my $Count ( 1 .. 16 ) {
        if ( $Article{ 'TicketFreeText' . $Count } ) {
            $Self->{LayoutObject}->Block(
                Name => 'TicketFreeText' . $Count,
                Data => { %Param, %Article },
            );
            $Self->{LayoutObject}->Block(
                Name => 'TicketFreeText',
                Data => {
                    %Param, %Article,
                    TicketFreeKey  => $Article{ 'TicketFreeKey' . $Count },
                    TicketFreeText => $Article{ 'TicketFreeText' . $Count },
                    Count          => $Count,
                },
            );
        }
    }

    # ticket free time
    for my $Count ( 1 .. 6 ) {
        if ( $Article{ 'TicketFreeTime' . $Count } ) {
            $Self->{LayoutObject}->Block(
                Name => 'TicketFreeTime' . $Count,
                Data => { %Param, %Article },
            );
            $Self->{LayoutObject}->Block(
                Name => 'TicketFreeTime',
                Data => {
                    %Param, %Article,
                    TicketFreeTimeKey => $Self->{ConfigObject}->Get( 'TicketFreeTimeKey' . $Count ),
                    TicketFreeTime    => $Article{ 'TicketFreeTime' . $Count },
                    Count             => $Count,
                },
            );
        }
    }

    # select the output template
    return $Self->{LayoutObject}->Output(
        TemplateFile => 'CustomerTicketZoom',
        Data => { %Article, %Param, },
    );
}

1;
