# --
# Kernel/Modules/AgentTicketPhoneOutbound.pm - to handle phone calls
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AgentTicketPhoneOutbound.pm,v 1.45 2010-04-02 15:21:32 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AgentTicketPhoneOutbound;

use strict;
use warnings;

use Kernel::System::SystemAddress;
use Kernel::System::CustomerUser;
use Kernel::System::CheckItem;
use Kernel::System::Web::UploadCache;
use Kernel::System::State;
use Mail::Address;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.45 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check needed objects
    for (qw(ParamObject DBObject TicketObject LayoutObject LogObject QueueObject ConfigObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    $Self->{SystemAddress}      = Kernel::System::SystemAddress->new(%Param);
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);
    $Self->{CheckItemObject}    = Kernel::System::CheckItem->new(%Param);
    $Self->{StateObject}        = Kernel::System::State->new(%Param);
    $Self->{UploadCacheObject}  = Kernel::System::Web::UploadCache->new(%Param);

    # get form id
    $Self->{FormID} = $Self->{ParamObject}->GetParam( Param => 'FormID' );

    # create form id
    if ( !$Self->{FormID} ) {
        $Self->{FormID} = $Self->{UploadCacheObject}->FormIDCreate();
    }
    $Self->{Config} = $Self->{ConfigObject}->Get("Ticket::Frontend::$Self->{Action}");

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Self->{TicketID} ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => 'Got no TicketID!',
            Comment => 'System Error!',
        );
    }

    # get ticket data
    my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Self->{TicketID} );

    # check permissions
    my $Access = $Self->{TicketObject}->Permission(
        Type     => $Self->{Config}->{Permission},
        TicketID => $Self->{TicketID},
        UserID   => $Self->{UserID}
    );

    # error screen, don't show ticket
    if ( !$Access ) {
        return $Self->{LayoutObject}->NoPermission( WithHeader => 'yes' );
    }

    # get lock state && write (lock) permissions
    if ( $Self->{Config}->{RequiredLock} ) {
        if ( !$Self->{TicketObject}->LockIsTicketLocked( TicketID => $Self->{TicketID} ) ) {
            $Self->{TicketObject}->LockSet(
                TicketID => $Self->{TicketID},
                Lock     => 'lock',
                UserID   => $Self->{UserID},
            );
            if (
                $Self->{TicketObject}->OwnerSet(
                    TicketID  => $Self->{TicketID},
                    UserID    => $Self->{UserID},
                    NewUserID => $Self->{UserID},
                )
                )
            {

                # show lock state
                $Self->{LayoutObject}->Block(
                    Name => 'PropertiesLock',
                    Data => { %Param, TicketID => $Self->{TicketID}, },
                );
            }
        }
        else {
            my $AccessOk = $Self->{TicketObject}->OwnerCheck(
                TicketID => $Self->{TicketID},
                OwnerID  => $Self->{UserID},
            );
            if ( !$AccessOk ) {
                my $Output = $Self->{LayoutObject}->Header( Value => $Ticket{Number} );
                $Output .= $Self->{LayoutObject}->Warning(
                    Message => 'Sorry, you need to be the owner to do this action!',
                    Comment => 'Please change the owner first.',
                );
                $Output .= $Self->{LayoutObject}->Footer();
                return $Output;
            }
            else {
                $Self->{LayoutObject}->Block(
                    Name => 'TicketBack',
                    Data => { %Param, TicketID => $Self->{TicketID}, },
                );
            }
        }
    }
    else {
        $Self->{LayoutObject}->Block(
            Name => 'TicketBack',
            Data => { %Param, %Ticket, },
        );
    }

    # get params
    my %GetParam;
    for my $Key (qw(Body Subject TimeUnits NextStateID Year Month Day Hour Minute)) {
        $GetParam{$Key} = $Self->{ParamObject}->GetParam( Param => $Key );
    }

    # get ticket free text params
    for my $Count ( 1 .. 16 ) {
        my $Key  = 'TicketFreeKey' . $Count;
        my $Text = 'TicketFreeText' . $Count;
        $GetParam{$Key}  = $Self->{ParamObject}->GetParam( Param => $Key );
        $GetParam{$Text} = $Self->{ParamObject}->GetParam( Param => $Text );
    }

    # get ticket free time params
    for my $Count ( 1 .. 6 ) {

        # create freetime prefix
        my $FreeTimePrefix = 'TicketFreeTime' . $Count;

        # get form params
        for my $Type (qw(Used Year Month Day Hour Minute)) {
            $GetParam{ $FreeTimePrefix . $Type } = $Self->{ParamObject}->GetParam(
                Param => $FreeTimePrefix . $Type,
            );
        }

        # set additional params
        $GetParam{ $FreeTimePrefix . 'Optional' } = 1;
        $GetParam{ $FreeTimePrefix . 'Used' } = $GetParam{ $FreeTimePrefix . 'Used' } || 0;
        if ( !$Self->{ConfigObject}->Get( 'TicketFreeTimeOptional' . $Count ) ) {
            $GetParam{ $FreeTimePrefix . 'Optional' } = 0;
            $GetParam{ $FreeTimePrefix . 'Used' }     = 1;
        }
    }

    # get article free text params
    for my $Count ( 1 .. 3 ) {
        my $Key  = 'ArticleFreeKey' . $Count;
        my $Text = 'ArticleFreeText' . $Count;
        $GetParam{$Key}  = $Self->{ParamObject}->GetParam( Param => $Key );
        $GetParam{$Text} = $Self->{ParamObject}->GetParam( Param => $Text );
    }

    # transform pending time, time stamp based on user time zone
    if (
        defined $GetParam{Year}
        && defined $GetParam{Month}
        && defined $GetParam{Day}
        && defined $GetParam{Hour}
        && defined $GetParam{Minute}
        )
    {
        %GetParam = $Self->{LayoutObject}->TransfromDateSelection(
            %GetParam,
        );
    }

    # transform free time, time stamp based on user time zone
    for my $Count ( 1 .. 6 ) {
        my $Prefix = 'TicketFreeTime' . $Count;
        next if !defined $GetParam{ $Prefix . 'Year' };
        next if !defined $GetParam{ $Prefix . 'Month' };
        next if !defined $GetParam{ $Prefix . 'Day' };
        next if !defined $GetParam{ $Prefix . 'Hour' };
        next if !defined $GetParam{ $Prefix . 'Minute' };
        %GetParam = $Self->{LayoutObject}->TransfromDateSelection(
            %GetParam,
            Prefix => $Prefix
        );
    }

    if ( !$Self->{Subaction} ) {

        # get ticket info
        my %CustomerData;
        if ( $Self->{ConfigObject}->Get('Ticket::Frontend::CustomerInfoCompose') ) {
            if ( $Ticket{CustomerUserID} ) {
                %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                    User => $Ticket{CustomerUserID},
                );
            }
            elsif ( $Ticket{CustomerID} ) {
                %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                    CustomerID => $Ticket{CustomerID},
                );
            }
        }

        # get free text config options
        my %TicketFreeText;
        for my $Count ( 1 .. 16 ) {
            my $Key  = 'TicketFreeKey' . $Count;
            my $Text = 'TicketFreeText' . $Count;
            $TicketFreeText{$Key} = $Self->{TicketObject}->TicketFreeTextGet(
                TicketID => $Self->{TicketID},
                Type     => $Key,
                Action   => $Self->{Action},
                UserID   => $Self->{UserID},
            );
            $TicketFreeText{$Text} = $Self->{TicketObject}->TicketFreeTextGet(
                TicketID => $Self->{TicketID},
                Type     => $Text,
                Action   => $Self->{Action},
                UserID   => $Self->{UserID},
            );
        }
        my %TicketFreeTextHTML = $Self->{LayoutObject}->AgentFreeText(
            Ticket => \%Ticket,
            Config => \%TicketFreeText,
        );

        # free time
        my %TicketFreeTime;
        for ( 1 .. 6 ) {
            $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Optional' }
                = $Self->{ConfigObject}->Get( 'TicketFreeTimeOptional' . $_ ) || 0;
            $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Used' }
                = $GetParam{ 'TicketFreeTime' . $_ . 'Used' };

            if ( $Ticket{ 'TicketFreeTime' . $_ } ) {
                (
                    $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Secunde' },
                    $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Minute' },
                    $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Hour' },
                    $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Day' },
                    $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Month' },
                    $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Year' }
                    )
                    = $Self->{TimeObject}->SystemTime2Date(
                    SystemTime => $Self->{TimeObject}->TimeStamp2SystemTime(
                        String => $Ticket{ 'TicketFreeTime' . $_ },
                    ),
                    );
                $TicketFreeTime{ 'TicketFreeTime' . $_ . 'Used' } = 1;
            }
        }
        my %TicketFreeTimeHTML = $Self->{LayoutObject}->AgentFreeDate( Ticket => \%TicketFreeTime );

        # get article free text default selections
        my %ArticleFreeDefault;
        for my $Count ( 1 .. 3 ) {
            my $Key  = 'ArticleFreeKey' . $Count;
            my $Text = 'ArticleFreeText' . $Count;
            $ArticleFreeDefault{$Key} = $GetParam{$Key}
                || $Self->{ConfigObject}->Get( $Key . '::DefaultSelection' );
            $ArticleFreeDefault{$Text} = $GetParam{$Text}
                || $Self->{ConfigObject}->Get( $Text . '::DefaultSelection' );
        }

        # article free text
        my %ArticleFreeText;
        for my $Count ( 1 .. 3 ) {
            my $Key  = 'ArticleFreeKey' . $Count;
            my $Text = 'ArticleFreeText' . $Count;
            $ArticleFreeText{$Key} = $Self->{TicketObject}->ArticleFreeTextGet(
                TicketID => $Self->{TicketID},
                Type     => $Key,
                Action   => $Self->{Action},
                UserID   => $Self->{UserID},
            );
            $ArticleFreeText{$Text} = $Self->{TicketObject}->ArticleFreeTextGet(
                TicketID => $Self->{TicketID},
                Type     => $Text,
                Action   => $Self->{Action},
                UserID   => $Self->{UserID},
            );
        }
        my %ArticleFreeTextHTML = $Self->{LayoutObject}->TicketArticleFreeText(
            Config => \%ArticleFreeText,
            Article => { %GetParam, %ArticleFreeDefault, },
        );

        # get and format default subject and body
        my $Subject = $Self->{LayoutObject}->Output(
            Template => $Self->{Config}->{Subject} || '',
        );
        my $Body = $Self->{LayoutObject}->Output(
            Template => $Self->{Config}->{Body} || '',
        );
        if ( $Self->{LayoutObject}->{BrowserRichText} ) {
            $Body = $Self->{LayoutObject}->Ascii2RichText(
                String => $Body,
            );
        }

        # print form ...
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->_MaskPhone(
            TicketID     => $Self->{TicketID},
            QueueID      => $Self->{QueueID},
            TicketNumber => $Ticket{TicketNumber},
            NextStates   => $Self->_GetNextStates(),
            CustomerData => \%CustomerData,
            Subject      => $Subject,
            Body         => $Body,
            %TicketFreeTextHTML,
            %TicketFreeTimeHTML,
            %ArticleFreeTextHTML,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # save new phone article to existing ticket
    elsif ( $Self->{Subaction} eq 'Store' ) {
        my %Error;

        # rewrap body if exists
        if ( $Self->{LayoutObject}->{BrowserRichText} && $GetParam{Body} ) {
            $GetParam{Body}
                =~ s/(^>.+|.{4,$Self->{ConfigObject}->Get('Ticket::Frontend::TextAreaNote')})(?:\s|\z)/$1\n/gm;
        }

        # check required FreeTextField (if configured)
        for my $Count ( 1 .. 16 ) {
            if (
                $Self->{Config}{'TicketFreeText'}->{$Count} == 2
                && $GetParam{"TicketFreeText$Count"} eq ''
                && !$Self->{ParamObject}->GetParam( Param => 'AttachmentUpload' )
                )
            {
                $Error{"TicketFreeTextField$Count invalid"} = 'invalid';
            }
        }

        # attachment delete
        for my $Count ( 1 .. 32 ) {
            my $Delete = $Self->{ParamObject}->GetParam( Param => "AttachmentDelete$Count" );
            next if !$Delete;
            $Error{AttachmentDelete} = 1;
            $Self->{UploadCacheObject}->FormIDRemoveFile(
                FormID => $Self->{FormID},
                FileID => $Count,
            );
        }

        # attachment upload
        if ( $Self->{ParamObject}->GetParam( Param => 'AttachmentUpload' ) ) {
            $Error{AttachmentUpload} = 1;
            my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
                Param  => 'file_upload',
                Source => 'string',
            );
            $Self->{UploadCacheObject}->FormIDAddFile(
                FormID => $Self->{FormID},
                %UploadStuff,
            );
        }

        # check subject
        if ( !$GetParam{Subject} && !$Self->{ParamObject}->GetParam( Param => 'AttachmentUpload' ) )
        {
            $Error{'Subject invalid'} = 'invalid';
        }

        # get all attachments meta data
        my @Attachments = $Self->{UploadCacheObject}->FormIDGetAllFilesMeta(
            FormID => $Self->{FormID},
        );

        # check if date is valid
        my %StateData = $Self->{StateObject}->StateGet( ID => $GetParam{NextStateID} );
        if ( $StateData{TypeName} =~ /^pending/i ) {
            if ( !$Self->{TimeObject}->Date2SystemTime( %GetParam, Second => 0 ) ) {
                $Error{'Date invalid'} = 'invalid';
            }
            if (
                $Self->{TimeObject}->Date2SystemTime( %GetParam, Second => 0 )
                < $Self->{TimeObject}->SystemTime()
                )
            {
                $Error{'Date invalid'} = 'invalid';
            }
        }
        if (%Error) {

            # get free text config options
            my %TicketFreeText;
            for ( 1 .. 16 ) {
                $TicketFreeText{"TicketFreeKey$_"} = $Self->{TicketObject}->TicketFreeTextGet(
                    TicketID => $Self->{TicketID},
                    Type     => "TicketFreeKey$_",
                    Action   => $Self->{Action},
                    UserID   => $Self->{UserID},
                );
                $TicketFreeText{"TicketFreeText$_"} = $Self->{TicketObject}->TicketFreeTextGet(
                    TicketID => $Self->{TicketID},
                    Type     => "TicketFreeText$_",
                    Action   => $Self->{Action},
                    UserID   => $Self->{UserID},
                );
            }
            my %TicketFreeTextHTML = $Self->{LayoutObject}->AgentFreeText(
                Config => \%TicketFreeText,
                Ticket => \%GetParam,
            );

            # free time
            my %TicketFreeTimeHTML = $Self->{LayoutObject}->AgentFreeDate( Ticket => \%GetParam, );

            # article free text
            my %ArticleFreeText;
            for my $Count ( 1 .. 3 ) {
                my $Key  = 'ArticleFreeKey' . $Count;
                my $Text = 'ArticleFreeText' . $Count;
                $ArticleFreeText{$Key} = $Self->{TicketObject}->ArticleFreeTextGet(
                    TicketID => $Self->{TicketID},
                    Type     => $Key,
                    Action   => $Self->{Action},
                    UserID   => $Self->{UserID},
                );
                $ArticleFreeText{$Text} = $Self->{TicketObject}->ArticleFreeTextGet(
                    TicketID => $Self->{TicketID},
                    Type     => $Text,
                    Action   => $Self->{Action},
                    UserID   => $Self->{UserID},
                );
            }
            my %ArticleFreeTextHTML = $Self->{LayoutObject}->TicketArticleFreeText(
                Config  => \%ArticleFreeText,
                Article => \%GetParam,
            );

            # get ticket info if ticket id is given
            my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Self->{TicketID} );

            # check permissions if it's a existing ticket
            if (
                !$Self->{TicketObject}->Permission(
                    Type     => 'ro',
                    TicketID => $Self->{TicketID},
                    UserID   => $Self->{UserID},
                )
                )
            {

                # error screen, don't show ticket
                return $Self->{LayoutObject}->NoPermission( WithHeader => 'yes' );
            }

            # get ticket info
            my $Tn = $Ticket{TicketNumber};
            my %CustomerData;
            if ( $Self->{ConfigObject}->Get('Ticket::Frontend::CustomerInfoCompose') ) {
                if ( $Ticket{CustomerUserID} ) {
                    %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                        User => $Ticket{CustomerUserID},
                    );
                }
                elsif ( $Ticket{CustomerID} ) {
                    %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                        CustomerID => $Ticket{CustomerID},
                    );
                }
            }

            # header
            my $Output = $Self->{LayoutObject}->Header();
            $Output .= $Self->{LayoutObject}->NavigationBar();
            $Output .= $Self->_MaskPhone(
                TicketID     => $Self->{TicketID},
                TicketNumber => $Tn,
                NextStates   => $Self->_GetNextStates(),
                CustomerData => \%CustomerData,
                Attachments  => \@Attachments,
                %GetParam,
                %TicketFreeTextHTML,
                %TicketFreeTimeHTML,
                %ArticleFreeTextHTML,
                Errors => \%Error,
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
        else {

            # get pre loaded attachment
            my @AttachmentData = $Self->{UploadCacheObject}->FormIDGetAllFilesData(
                FormID => $Self->{FormID},
            );

            # get submit attachment
            my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
                Param  => 'file_upload',
                Source => 'String',
            );
            if (%UploadStuff) {
                push @AttachmentData, \%UploadStuff;
            }

            my $MimeType = 'text/plain';
            if ( $Self->{LayoutObject}->{BrowserRichText} ) {
                $MimeType = 'text/html';

                # remove unused inline images
                my @NewAttachmentData;
                for my $Attachment (@AttachmentData) {
                    my $ContentID = $Attachment->{ContentID};
                    if ($ContentID) {
                        my $ContentIDHTMLQuote = $Self->{LayoutObject}->Ascii2Html(
                            Text => $ContentID,
                        );
                        next if $GetParam{Body} !~ /(\Q$ContentIDHTMLQuote\E|\Q$ContentID\E)/i;
                    }

                    # remember inline images and normal attachments
                    push @NewAttachmentData, \%{$Attachment};
                }
                @AttachmentData = @NewAttachmentData;

                # verify html document
                $GetParam{Body} = $Self->{LayoutObject}->RichTextDocumentComplete(
                    String => $GetParam{Body},
                );
            }

            my $ArticleID = $Self->{TicketObject}->ArticleCreate(
                TicketID    => $Self->{TicketID},
                ArticleType => $Self->{Config}->{ArticleType},
                SenderType  => $Self->{Config}->{SenderType},
                From        => "$Self->{UserFirstname} $Self->{UserLastname} <$Self->{UserEmail}>",
                Subject     => $GetParam{Subject},
                Body        => $GetParam{Body},
                MimeType    => $MimeType,
                Charset     => $Self->{LayoutObject}->{UserCharset},
                UserID      => $Self->{UserID},
                HistoryType => $Self->{Config}->{HistoryType},
                HistoryComment => $Self->{Config}->{HistoryComment} || '%%',
            );

            # show error of creating article
            if ( !$ArticleID ) {
                return $Self->{LayoutObject}->ErrorScreen();
            }

            # time accounting
            if ( $GetParam{TimeUnits} ) {
                $Self->{TicketObject}->TicketAccountTime(
                    TicketID  => $Self->{TicketID},
                    ArticleID => $ArticleID,
                    TimeUnit  => $GetParam{TimeUnits},
                    UserID    => $Self->{UserID},
                );
            }

            # write attachments
            for my $Attachment (@AttachmentData) {
                $Self->{TicketObject}->ArticleWriteAttachment(
                    %{$Attachment},
                    ArticleID => $ArticleID,
                    UserID    => $Self->{UserID},
                );
            }

            # remove pre submitted attachments
            $Self->{UploadCacheObject}->FormIDRemove( FormID => $Self->{FormID} );

            # set ticket free text
            for ( 1 .. 16 ) {
                if ( defined $GetParam{"TicketFreeKey$_"} ) {
                    $Self->{TicketObject}->TicketFreeTextSet(
                        TicketID => $Self->{TicketID},
                        Key      => $GetParam{"TicketFreeKey$_"},
                        Value    => $GetParam{"TicketFreeText$_"},
                        Counter  => $_,
                        UserID   => $Self->{UserID},
                    );
                }
            }

            # set ticket free time
            for my $Count ( 1 .. 6 ) {
                my $Prefix = 'TicketFreeTime' . $Count;
                next if !defined $GetParam{ $Prefix . 'Year' };
                next if !defined $GetParam{ $Prefix . 'Month' };
                next if !defined $GetParam{ $Prefix . 'Day' };
                next if !defined $GetParam{ $Prefix . 'Hour' };
                next if !defined $GetParam{ $Prefix . 'Minute' };

                # set time stamp to NULL if field is not used/checked
                if ( !$GetParam{ $Prefix . 'Used' } ) {
                    $GetParam{ $Prefix . 'Year' }   = 0;
                    $GetParam{ $Prefix . 'Month' }  = 0;
                    $GetParam{ $Prefix . 'Day' }    = 0;
                    $GetParam{ $Prefix . 'Hour' }   = 0;
                    $GetParam{ $Prefix . 'Minute' } = 0;
                }

                # set free time
                $Self->{TicketObject}->TicketFreeTimeSet(
                    %GetParam,
                    Prefix   => 'TicketFreeTime',
                    TicketID => $Self->{TicketID},
                    Counter  => $Count,
                    UserID   => $Self->{UserID},
                );
            }

            # set article free text
            for my $Count ( 1 .. 3 ) {
                my $Key  = 'ArticleFreeKey' . $Count;
                my $Text = 'ArticleFreeText' . $Count;
                if ( defined $GetParam{$Key} ) {
                    $Self->{TicketObject}->ArticleFreeTextSet(
                        TicketID  => $Self->{TicketID},
                        ArticleID => $ArticleID,
                        Key       => $GetParam{$Key},
                        Value     => $GetParam{$Text},
                        Counter   => $Count,
                        UserID    => $Self->{UserID},
                    );
                }
            }

            # set state
            $Self->{TicketObject}->StateSet(
                TicketID  => $Self->{TicketID},
                ArticleID => $ArticleID,
                StateID   => $GetParam{NextStateID},
                UserID    => $Self->{UserID},
            );

            # should i set an unlock? yes if the ticket is closed
            my %StateData = $Self->{StateObject}->StateGet( ID => $GetParam{NextStateID} );
            if ( $StateData{TypeName} =~ /^close/i ) {

                # set lock
                $Self->{TicketObject}->LockSet(
                    TicketID => $Self->{TicketID},
                    Lock     => 'unlock',
                    UserID   => $Self->{UserID},
                );
            }

            # set pending time if next state is a pending state
            elsif ( $StateData{TypeName} =~ /^pending/i ) {

                # set pending time
                $Self->{TicketObject}->TicketPendingTimeSet(
                    UserID   => $Self->{UserID},
                    TicketID => $Self->{TicketID},
                    %GetParam,
                );
            }

            # redirect to last screen (e. g. zoom view) and to queue view if
            # the ticket is closed (move to the next task).
            if ( $StateData{TypeName} =~ /^close/i ) {
                return $Self->{LayoutObject}->Redirect( OP => $Self->{LastScreenOverview} );
            }
            return $Self->{LayoutObject}->Redirect( OP => $Self->{LastScreenView} );
        }
    }
    return $Self->{LayoutObject}->ErrorScreen(
        Message => 'No Subaction!!',
        Comment => 'Please contact your admin',
    );
}

sub _GetNextStates {
    my ( $Self, %Param ) = @_;

    my %NextStates = $Self->{TicketObject}->StateList(
        TicketID => $Self->{TicketID},
        Action   => $Self->{Action},
        UserID   => $Self->{UserID},
    );
    return \%NextStates;
}

sub _GetUsers {
    my ( $Self, %Param ) = @_;

    # get users
    my %ShownUsers;
    my %AllGroupsMembers = $Self->{UserObject}->UserList(
        Type  => 'Long',
        Valid => 1,
    );

    # just show only users with selected custom queue
    if ( $Param{QueueID} && !$Param{AllUsers} ) {
        my @UserIDs = $Self->{TicketObject}->GetSubscribedUserIDsByQueueID(%Param);
        for ( keys %AllGroupsMembers ) {
            my $Hit = 0;
            for my $UID (@UserIDs) {
                if ( $UID eq $_ ) {
                    $Hit = 1;
                }
            }
            if ( !$Hit ) {
                delete $AllGroupsMembers{$_};
            }
        }
    }

    # show all system users
    if ( $Self->{ConfigObject}->Get('Ticket::ChangeOwnerToEveryone') ) {
        %ShownUsers = %AllGroupsMembers;
    }

    # show all users who are rw in the queue group
    elsif ( $Param{QueueID} ) {
        my $GID = $Self->{QueueObject}->GetQueueGroupID( QueueID => $Param{QueueID} );
        my %MemberList = $Self->{GroupObject}->GroupMemberList(
            GroupID => $GID,
            Type    => 'rw',
            Result  => 'HASH',
        );
        for ( keys %MemberList ) {
            $ShownUsers{$_} = $AllGroupsMembers{$_};
        }
    }
    return \%ShownUsers;
}

sub _GetTos {
    my ( $Self, %Param ) = @_;

    # check own selection
    my %NewTos;
    if ( $Self->{ConfigObject}->{'Ticket::Frontend::NewQueueOwnSelection'} ) {
        %NewTos = %{ $Self->{ConfigObject}->{'Ticket::Frontend::NewQueueOwnSelection'} };
    }
    else {

        # SelectionType Queue or SystemAddress?
        my %Tos;
        if ( $Self->{ConfigObject}->Get('Ticket::Frontend::NewQueueSelectionType') eq 'Queue' ) {
            %Tos = $Self->{TicketObject}->MoveList(
                Type    => 'create',
                Action  => $Self->{Action},
                QueueID => $Self->{QueueID},
                UserID  => $Self->{UserID},
            );
        }
        else {
            %Tos = $Self->{DBObject}->GetTableData(
                Table => 'system_address',
                What  => 'queue_id, id',
                Valid => 1,
                Clamp => 1,
            );
        }

        # get create permission queues
        my %UserGroups = $Self->{GroupObject}->GroupMemberList(
            UserID => $Self->{UserID},
            Type   => 'create',
            Result => 'HASH',
        );
        for ( keys %Tos ) {
            if ( $UserGroups{ $Self->{QueueObject}->GetQueueGroupID( QueueID => $_ ) } ) {
                $NewTos{$_} = $Tos{$_};
            }
        }

        # build selection string
        for ( keys %NewTos ) {
            my %QueueData = $Self->{QueueObject}->QueueGet( ID => $_ );
            my $Srting = $Self->{ConfigObject}->Get('Ticket::Frontend::NewQueueSelectionString')
                || '<Realname> <<Email>> - Queue: <Queue>';
            $Srting =~ s/<Queue>/$QueueData{Name}/g;
            $Srting =~ s/<QueueComment>/$QueueData{Comment}/g;
            if ( $Self->{ConfigObject}->Get('Ticket::Frontend::NewQueueSelectionType') ne 'Queue' )
            {
                my %SystemAddressData
                    = $Self->{SystemAddress}->SystemAddressGet( ID => $NewTos{$_} );
                $Srting =~ s/<Realname>/$SystemAddressData{Realname}/g;
                $Srting =~ s/<Email>/$SystemAddressData{Name}/g;
            }
            $NewTos{$_} = $Srting;
        }
    }

    # adde empty selection
    $NewTos{''} = '-';
    return \%NewTos;
}

sub _MaskPhone {
    my ( $Self, %Param ) = @_;

    $Param{FormID} = $Self->{FormID};

    # build next states string
    my %Selected;
    if ( $Param{NextStateID} ) {
        $Selected{SelectedID} = $Param{NextStateID};
    }
    elsif ( $Self->{Config}->{State} ) {
        $Selected{Selected} = $Self->{Config}->{State};
    }
    else {
        $Param{NextStates}->{''} = '-';
    }
    $Param{NextStatesStrg} = $Self->{LayoutObject}->BuildSelection(
        Data => $Param{NextStates},
        Name => 'NextStateID',
        %Selected,
    );

    # customer info string
    if ( $Self->{ConfigObject}->Get('Ticket::Frontend::CustomerInfoCompose') ) {
        $Param{CustomerTable} = $Self->{LayoutObject}->AgentCustomerViewTable(
            Data => $Param{CustomerData},
            Max  => $Self->{ConfigObject}->Get('Ticket::Frontend::CustomerInfoComposeMaxSize'),
        );
        $Self->{LayoutObject}->Block(
            Name => 'CustomerTable',
            Data => \%Param,
        );
    }

    # pending data string
    $Param{PendingDateString} = $Self->{LayoutObject}->BuildDateSelection(
        %Param,
        Format           => 'DateInputFormatLong',
        YearPeriodPast   => 0,
        YearPeriodFuture => 5,
        DiffTime         => $Self->{ConfigObject}->Get('Ticket::Frontend::PendingDiffTime') || 0,
    );

    # do html quoting
    for (qw(From To Cc)) {
        $Param{$_} = $Self->{LayoutObject}->Ascii2Html( Text => $Param{$_} ) || '';
    }

    # prepare errors!
    if ( $Param{Errors} ) {
        for ( keys %{ $Param{Errors} } ) {
            $Param{$_} = '* ' . $Self->{LayoutObject}->Ascii2Html( Text => $Param{Errors}->{$_} );
        }
    }

    # ticket free text
    for my $Count ( 1 .. 16 ) {
        next if !$Self->{Config}->{TicketFreeText}->{$Count};
        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeText',
            Data => {
                TicketFreeKeyField  => $Param{ 'TicketFreeKeyField' . $Count },
                TicketFreeTextField => $Param{ 'TicketFreeTextField' . $Count },
                %Param,
            },
        );
        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeText' . $Count,
            Data => { %Param, Count => $Count, },
        );
    }
    for my $Count ( 1 .. 6 ) {
        next if !$Self->{Config}->{TicketFreeTime}->{$Count};
        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeTime',
            Data => {
                TicketFreeTimeKey => $Self->{ConfigObject}->Get( 'TicketFreeTimeKey' . $Count ),
                TicketFreeTime    => $Param{ 'TicketFreeTime' . $Count },
                Count             => $Count,
            },
        );
        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeTime' . $Count,
            Data => { %Param, Count => $Count, },
        );
    }

    # article free text
    for my $Count ( 1 .. 3 ) {
        next if !$Self->{Config}->{ArticleFreeText}->{$Count};
        $Self->{LayoutObject}->Block(
            Name => 'ArticleFreeText',
            Data => {
                ArticleFreeKeyField  => $Param{ 'ArticleFreeKeyField' . $Count },
                ArticleFreeTextField => $Param{ 'ArticleFreeTextField' . $Count },
                Count                => $Count,
            },
        );
        $Self->{LayoutObject}->Block(
            Name => 'ArticleFreeText' . $Count,
            Data => { %Param, Count => $Count, },
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

    # show spell check
    if ( $Self->{LayoutObject}->{BrowserSpellChecker} ) {
        $Self->{LayoutObject}->Block(
            Name => 'SpellCheck',
            Data => {},
        );
    }

    # show attachments
    for my $Attachment ( @{ $Param{Attachments} } ) {
        next if $Attachment->{ContentID} && $Self->{LayoutObject}->{BrowserRichText};
        $Self->{LayoutObject}->Block(
            Name => 'Attachment',
            Data => $Attachment,
        );
    }

    # java script check for required free text fields by form submit
    for my $Key ( keys %{ $Self->{Config}->{TicketFreeText} } ) {
        next if $Self->{Config}->{TicketFreeText}->{$Key} != 2;
        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeTextCheckJs',
            Data => {
                TicketFreeTextField => "TicketFreeText$Key",
                TicketFreeKeyField  => "TicketFreeKey$Key",
            },
        );
    }

    # java script check for required free time fields by form submit
    for my $Key ( keys %{ $Self->{Config}->{TicketFreeTime} } ) {
        next if $Self->{Config}->{TicketFreeTime}->{$Key} != 2;
        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeTimeCheckJs',
            Data => {
                TicketFreeTimeCheck => 'TicketFreeTime' . $Key . 'Used',
                TicketFreeTimeField => 'TicketFreeTime' . $Key,
                TicketFreeTimeKey   => $Self->{ConfigObject}->Get( 'TicketFreeTimeKey' . $Key ),
            },
        );
    }

    # add rich text editor
    if ( $Self->{LayoutObject}->{BrowserRichText} ) {
        $Self->{LayoutObject}->Block(
            Name => 'RichText',
            Data => \%Param,
        );
    }

    # get output back
    return $Self->{LayoutObject}->Output(
        TemplateFile => 'AgentTicketPhoneOutbound',
        Data         => \%Param,
    );
}

1;
