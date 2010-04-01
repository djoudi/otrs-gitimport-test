# --
# Kernel/Modules/AgentTicketCompose.pm - to compose and send a message
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AgentTicketCompose.pm,v 1.81.2.8 2010-04-01 17:59:52 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AgentTicketCompose;

use strict;
use warnings;

use Kernel::System::CheckItem;
use Kernel::System::StdAttachment;
use Kernel::System::State;
use Kernel::System::CustomerUser;
use Kernel::System::Web::UploadCache;
use Kernel::System::SystemAddress;
use Kernel::System::TemplateGenerator;
use Mail::Address;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.81.2.8 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    $Self->{Debug} = $Param{Debug} || 0;

    # check all needed objects
    for (qw(TicketObject ParamObject DBObject QueueObject LayoutObject ConfigObject LogObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    # some new objects
    $Self->{CustomerUserObject}  = Kernel::System::CustomerUser->new(%Param);
    $Self->{CheckItemObject}     = Kernel::System::CheckItem->new(%Param);
    $Self->{StdAttachmentObject} = Kernel::System::StdAttachment->new(%Param);
    $Self->{StateObject}         = Kernel::System::State->new(%Param);
    $Self->{UploadCachObject}    = Kernel::System::Web::UploadCache->new(%Param);
    $Self->{SystemAddress}       = Kernel::System::SystemAddress->new(%Param);

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

    # check needed stuff
    if ( !$Self->{TicketID} ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => 'No TicketID is given!',
            Comment => 'Please contact the admin.',
        );
    }

    # check permissions
    my $Access = $Self->{TicketObject}->Permission(
        Type     => $Self->{Config}->{Permission},
        TicketID => $Self->{TicketID},
        UserID   => $Self->{UserID}
    );

    # error screen, don't show ticket
    if ( !$Access ) {
        return $Self->{LayoutObject}->NoPermission(
            Message    => "You need $Self->{Config}->{Permission} permissions!",
            WithHeader => 'yes',
        );
    }
    my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Self->{TicketID} );

    # get lock state
    if ( $Self->{Config}->{RequiredLock} ) {
        if ( !$Self->{TicketObject}->LockIsTicketLocked( TicketID => $Self->{TicketID} ) ) {
            $Self->{TicketObject}->LockSet(
                TicketID => $Self->{TicketID},
                Lock     => 'lock',
                UserID   => $Self->{UserID}
            );
            my $Owner = $Self->{TicketObject}->OwnerSet(
                TicketID  => $Self->{TicketID},
                UserID    => $Self->{UserID},
                NewUserID => $Self->{UserID},
            );

            # show lock state
            if ($Owner) {
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
                    Message => "Sorry, you need to be the owner to do this action!",
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
    my %GetParam = ();
    for (
        qw(
        From To Cc Bcc Subject Body InReplyTo References ResponseID ReplyArticleID StateID
        ArticleID TimeUnits Year Month Day Hour Minute AttachmentUpload
        AttachmentDelete1 AttachmentDelete2 AttachmentDelete3 AttachmentDelete4
        AttachmentDelete5 AttachmentDelete6 AttachmentDelete7 AttachmentDelete8
        AttachmentDelete9 AttachmentDelete10 AttachmentDelete11 AttachmentDelete12
        AttachmentDelete13 AttachmentDelete14 AttachmentDelete15 AttachmentDelete16
        FormID
        )
        )
    {
        $GetParam{$_} = $Self->{ParamObject}->GetParam( Param => $_ );
    }

    # get ticket free text params
    for ( 1 .. 16 ) {
        $GetParam{"TicketFreeKey$_"} = $Self->{ParamObject}->GetParam(
            Param => "TicketFreeKey$_",
        );
        $GetParam{"TicketFreeText$_"} = $Self->{ParamObject}->GetParam(
            Param => "TicketFreeText$_",
        );
    }

    # get ticket free time params
    for ( 1 .. 6 ) {
        for my $Type (qw(Used Year Month Day Hour Minute)) {
            $GetParam{ "TicketFreeTime" . $_ . $Type } = $Self->{ParamObject}->GetParam(
                Param => "TicketFreeTime" . $_ . $Type,
            );
        }
        $GetParam{ 'TicketFreeTime' . $_ . 'Optional' }
            = $Self->{ConfigObject}->Get( 'TicketFreeTimeOptional' . $_ ) || 0;
        if ( !$Self->{ConfigObject}->Get( 'TicketFreeTimeOptional' . $_ ) ) {
            $GetParam{ 'TicketFreeTime' . $_ . 'Used' } = 1;
        }
    }

    # get article free text params
    for ( 1 .. 3 ) {
        $GetParam{"ArticleFreeKey$_"}
            = $Self->{ParamObject}->GetParam( Param => "ArticleFreeKey$_" );
        $GetParam{"ArticleFreeText$_"}
            = $Self->{ParamObject}->GetParam( Param => "ArticleFreeText$_" );
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

    # send email
    if ( $Self->{Subaction} eq 'SendEmail' ) {
        my %Error = ();
        my %StateData = $Self->{TicketObject}->{StateObject}->StateGet( ID => $GetParam{StateID}, );

        # check pending date
        if ( $StateData{TypeName} && $StateData{TypeName} =~ /^pending/i ) {
            if ( !$Self->{TimeObject}->Date2SystemTime( %GetParam, Second => 0 ) ) {
                $Error{"Date invalid"} = 'invalid';
            }
        }

        # check required FreeTextField (if configured)
        for ( 1 .. 16 ) {
            if ( $Self->{Config}{'TicketFreeText'}{$_} == 2 && $GetParam{"TicketFreeText$_"} eq '' )
            {
                $Error{"TicketFreeTextField$_ invalid"} = 'invalid';
            }
        }

        # attachment delete
        for ( 1 .. 16 ) {
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
                Param  => 'file_upload',
                Source => 'string',
            );
            $Self->{UploadCachObject}->FormIDAddFile(
                FormID => $Self->{FormID},
                %UploadStuff,
            );
        }

        # get all attachments meta data
        my @Attachments = $Self->{UploadCachObject}->FormIDGetAllFilesMeta(
            FormID => $Self->{FormID},
        );

        # check some values
        for my $Line (qw(From To Cc Bcc)) {
            next if !$GetParam{$Line};
            for my $Email ( Mail::Address->parse( $GetParam{$Line} ) ) {
                if ( !$Self->{CheckItemObject}->CheckEmail( Address => $Email->address() ) ) {
                    $Error{"$Line invalid"} .= $Self->{CheckItemObject}->CheckError();
                }
            }
        }

        # prepare subject
        my $Tn = $Self->{TicketObject}->TicketNumberLookup( TicketID => $Self->{TicketID} );
        $GetParam{Subject} = $Self->{TicketObject}->TicketSubjectBuild(
            TicketNumber => $Tn,
            Subject => $GetParam{Subject} || '',
        );

        my %ArticleParam = ();

        # run compose modules
        if ( ref $Self->{ConfigObject}->Get('Ticket::Frontend::ArticleComposeModule') eq 'HASH' )
        {
            my %Jobs = %{ $Self->{ConfigObject}->Get('Ticket::Frontend::ArticleComposeModule') };
            for my $Job ( sort keys %Jobs ) {

                # load module
                if ( !$Self->{MainObject}->Require( $Jobs{$Job}->{Module} ) ) {
                    return $Self->{LayoutObject}->FatalError();
                }
                my $Object = $Jobs{$Job}->{Module}->new( %{$Self}, Debug => $Self->{Debug} );

                # get params
                for ( $Object->Option( %GetParam, Config => $Jobs{$Job} ) ) {
                    $GetParam{$_} = $Self->{ParamObject}->GetParam( Param => $_ );
                }

                # run module
                $Object->Run( %GetParam, Config => $Jobs{$Job} );

                # ticket params
                %ArticleParam = (
                    %ArticleParam,
                    $Object->ArticleOption( %GetParam, Config => $Jobs{$Job} ),
                );

                # get errors
                %Error = (
                    %Error,
                    $Object->Error( %GetParam, Config => $Jobs{$Job} ),
                );
            }
        }

        # check if there is an error
        if (%Error) {

            # get free text config options
            my %TicketFreeText = ();
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

            # ticket free time
            my %TicketFreeTimeHTML = $Self->{LayoutObject}->AgentFreeDate(
                %Param,
                Ticket => \%GetParam,
            );

            # article free text
            my %ArticleFreeText = ();
            for ( 1 .. 3 ) {
                $ArticleFreeText{"ArticleFreeKey$_"} = $Self->{TicketObject}->ArticleFreeTextGet(
                    TicketID => $Self->{TicketID},
                    Type     => "ArticleFreeKey$_",
                    Action   => $Self->{Action},
                    UserID   => $Self->{UserID},
                );
                $ArticleFreeText{"ArticleFreeText$_"} = $Self->{TicketObject}->ArticleFreeTextGet(
                    TicketID => $Self->{TicketID},
                    Type     => "ArticleFreeText$_",
                    Action   => $Self->{Action},
                    UserID   => $Self->{UserID},
                );
            }
            my %ArticleFreeTextHTML = $Self->{LayoutObject}->TicketArticleFreeText(
                Config  => \%ArticleFreeText,
                Article => \%GetParam,
            );
            my $Output = $Self->{LayoutObject}->Header( Value => $Ticket{TicketNumber} );
            $GetParam{StdResponse} = $GetParam{Body};
            $Output .= $Self->_Mask(
                TicketID       => $Self->{TicketID},
                NextStates     => $Self->_GetNextStates(),
                ResponseFormat => $Self->{LayoutObject}->Ascii2Html( Text => $GetParam{Body} ),
                Errors         => \%Error,
                Attachments    => \@Attachments,
                GetParam       => \%GetParam,
                %Ticket,
                %TicketFreeTextHTML,
                %TicketFreeTimeHTML,
                %ArticleFreeTextHTML,
                %GetParam,
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }

        # replace <OTRS_TICKET_STATE> with next ticket state name
        if ( $StateData{Name} ) {
            $GetParam{Body} =~ s/<OTRS_TICKET_STATE>/$StateData{Name}/g;
            $GetParam{Body} =~ s/&lt;OTRS_TICKET_STATE&gt;/$StateData{Name}/g;
        }

        # get pre loaded attachments
        my @AttachmentData = $Self->{UploadCachObject}->FormIDGetAllFilesData(
            FormID => $Self->{FormID},
        );

        # get submit attachment
        my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
            Param  => 'file_upload',
            Source => 'String',
        );
        if (%UploadStuff) {
            push( @AttachmentData, \%UploadStuff );
        }

        # get recipients
        my $Recipients = '';
        for my $Line (qw(To Cc Bcc)) {
            if ( $GetParam{$Line} ) {
                if ($Recipients) {
                    $Recipients .= ',';
                }
                $Recipients .= $GetParam{$Line};
            }
        }

        my $MimeType = 'text/plain';
        if ( $Self->{ConfigObject}->Get('Frontend::RichText') ) {
            $MimeType = 'text/html';

            # remove unused inline images
            my @NewAttachmentData = ();
            REMOVEINLINE:
            for my $Attachment (@AttachmentData) {
                my $ContentID = $Attachment->{ContentID};
                if ($ContentID) {
                    my $ContentIDHTMLQuote = $Self->{LayoutObject}->Ascii2Html(
                        Text => $ContentID,
                    );
                    next REMOVEINLINE
                        if $GetParam{Body} !~ /(\Q$ContentIDHTMLQuote\E|\Q$ContentID\E)/i;
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

        # send email
        my $ArticleID = $Self->{TicketObject}->ArticleSend(
            ArticleType    => 'email-external',
            SenderType     => 'agent',
            TicketID       => $Self->{TicketID},
            HistoryType    => 'SendAnswer',
            HistoryComment => "\%\%$Recipients",
            From           => $GetParam{From},
            To             => $GetParam{To},
            Cc             => $GetParam{Cc},
            Bcc            => $GetParam{Bcc},
            Subject        => $GetParam{Subject},
            UserID         => $Self->{UserID},
            Body           => $GetParam{Body},
            InReplyTo      => $GetParam{InReplyTo},
            References     => $GetParam{References},
            Charset        => $Self->{LayoutObject}->{UserCharset},
            MimeType       => $MimeType,
            Attachment     => \@AttachmentData,
            %ArticleParam,
        );

        # error page
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

        # set ticket free text
        for ( 1 .. 16 ) {
            if ( defined $GetParam{"TicketFreeKey$_"} ) {
                $Self->{TicketObject}->TicketFreeTextSet(
                    Key      => $GetParam{"TicketFreeKey$_"},
                    Value    => $GetParam{"TicketFreeText$_"},
                    Counter  => $_,
                    TicketID => $Self->{TicketID},
                    UserID   => $Self->{UserID},
                );
            }
        }

        # set ticket free time
        for ( 1 .. 6 ) {
            if (
                defined $GetParam{ "TicketFreeTime" . $_ . "Year" }
                && defined $GetParam{ "TicketFreeTime" . $_ . "Month" }
                && defined $GetParam{ "TicketFreeTime" . $_ . "Day" }
                && defined $GetParam{ "TicketFreeTime" . $_ . "Hour" }
                && defined $GetParam{ "TicketFreeTime" . $_ . "Minute" }
                )
            {

                # set time stamp to NULL if field is not used/checked
                if ( !$GetParam{ 'TicketFreeTime' . $_ . 'Used' } ) {
                    $GetParam{ 'TicketFreeTime' . $_ . 'Year' }   = 0;
                    $GetParam{ 'TicketFreeTime' . $_ . 'Month' }  = 0;
                    $GetParam{ 'TicketFreeTime' . $_ . 'Day' }    = 0;
                    $GetParam{ 'TicketFreeTime' . $_ . 'Hour' }   = 0;
                    $GetParam{ 'TicketFreeTime' . $_ . 'Minute' } = 0;
                }

                # set free time
                $Self->{TicketObject}->TicketFreeTimeSet(
                    %GetParam,
                    Prefix   => "TicketFreeTime",
                    TicketID => $Self->{TicketID},
                    Counter  => $_,
                    UserID   => $Self->{UserID},
                );
            }
        }

        # set article free text
        for ( 1 .. 3 ) {
            if ( defined $GetParam{"ArticleFreeKey$_"} ) {
                $Self->{TicketObject}->ArticleFreeTextSet(
                    TicketID  => $Self->{TicketID},
                    ArticleID => $ArticleID,
                    Key       => $GetParam{"ArticleFreeKey$_"},
                    Value     => $GetParam{"ArticleFreeText$_"},
                    Counter   => $_,
                    UserID    => $Self->{UserID},
                );
            }
        }

        # set state
        $Self->{TicketObject}->StateSet(
            TicketID  => $Self->{TicketID},
            ArticleID => $ArticleID,
            StateID   => $GetParam{StateID},
            UserID    => $Self->{UserID},
        );

        # should I set an unlock?
        if ( $StateData{TypeName} =~ /^close/i ) {
            $Self->{TicketObject}->LockSet(
                TicketID => $Self->{TicketID},
                Lock     => 'unlock',
                UserID   => $Self->{UserID},
            );
        }

        # set pending time
        elsif ( $StateData{TypeName} =~ /^pending/i ) {
            $Self->{TicketObject}->TicketPendingTimeSet(
                UserID   => $Self->{UserID},
                TicketID => $Self->{TicketID},
                Year     => $GetParam{Year},
                Month    => $GetParam{Month},
                Day      => $GetParam{Day},
                Hour     => $GetParam{Hour},
                Minute   => $GetParam{Minute},
            );
        }

        # log use response id and reply article id (useful for response diagnostics)
        $Self->{TicketObject}->HistoryAdd(
            Name => "ResponseTemplate ($GetParam{ResponseID}/$GetParam{ReplyArticleID}/$ArticleID)",
            HistoryType  => 'Misc',
            TicketID     => $Self->{TicketID},
            CreateUserID => $Self->{UserID},
        );

        # remove pre submited attachments
        $Self->{UploadCachObject}->FormIDRemove( FormID => $GetParam{FormID} );

        # redirect
        if ( $StateData{TypeName} =~ /^close/i ) {
            return $Self->{LayoutObject}->Redirect( OP => $Self->{LastScreenOverview} );
        }
        else {
            return $Self->{LayoutObject}->Redirect(
                OP => "Action=AgentTicketZoom&TicketID=$Self->{TicketID}&ArticleID=$ArticleID"
            );
        }
    }
    else {
        my %Error = ();
        my $Output = $Self->{LayoutObject}->Header( Value => $Ticket{TicketNumber} );

        # add std. attachments to email
        if ( $GetParam{ResponseID} ) {
            my %AllStdAttachments = $Self->{StdAttachmentObject}->StdAttachmentsByResponseID(
                ID => $GetParam{ResponseID},
            );
            for ( sort keys %AllStdAttachments ) {
                my %Data = $Self->{StdAttachmentObject}->StdAttachmentGet( ID => $_ );
                $Self->{UploadCachObject}->FormIDAddFile(
                    FormID => $Self->{FormID},
                    %Data,
                );
            }
        }

        # get all attachments meta data
        my @Attachments = $Self->{UploadCachObject}->FormIDGetAllFilesMeta(
            FormID => $Self->{FormID},
        );

        # get last customer article or selecte article ...
        my %Data = ();
        if ( $GetParam{ArticleID} ) {
            %Data = $Self->{TicketObject}->ArticleGet( ArticleID => $GetParam{ArticleID} );
        }
        else {
            %Data = $Self->{TicketObject}->ArticleLastCustomerArticle(
                TicketID => $Self->{TicketID}
            );
        }

        # check article type and replace To with From (in case)
        if ( $Data{SenderType} !~ /customer/ ) {
            my $To   = $Data{To};
            my $From = $Data{From};

            # set OrigFrom for correct email quoteing (xxxx wrote)
            $Data{OrigFrom} = $Data{From};

            # replace From/To, To/From because sender is agent
            $Data{From}    = $To;
            $Data{To}      = $Data{From};
            $Data{ReplyTo} = '';
        }
        else {

            # set OrigFrom for correct email quoteing (xxxx wrote)
            $Data{OrigFrom} = $Data{From};
        }

        # build OrigFromName (to only use the realname)
        $Data{OrigFromName} = $Data{OrigFrom};
        $Data{OrigFromName} =~ s/<.*>|\(.*\)|\"|;|,//g;
        $Data{OrigFromName} =~ s/( $)|(  $)//g;

        # get customer data
        my %Customer = ();
        if ( $Ticket{CustomerUserID} ) {
            %Customer = $Self->{CustomerUserObject}->CustomerUserDataGet(
                User => $Ticket{CustomerUserID}
            );
        }

        # get article to quote
        $Data{Body} = $Self->{LayoutObject}->ArticleQuote(
            TicketID         => $Self->{TicketID},
            ArticleID        => $Data{ArticleID},
            FormID           => $Self->{FormID},
            UploadCachObject => $Self->{UploadCachObject},
        );

        if ( $Self->{ConfigObject}->Get('Frontend::RichText') ) {

            # prepare body, subject, ReplyTo ...
            # rewrap body if exists
            if ( $Data{Body} ) {
                $Data{Body} =~ s/\t/ /g;
                my $Quote = $Self->{LayoutObject}->Ascii2Html(
                    Text => $Self->{ConfigObject}->Get('Ticket::Frontend::Quote') || '',
                    HTMLResultMode => 1,
                );
                if ($Quote) {

                    # quote text
                    $Data{Body} = "<blockquote type=\"cite\">$Data{Body}</blockquote>\n";

                    # cleanup not compat. tags
                    $Data{Body} = $Self->{LayoutObject}->RichTextDocumentCleanup(
                        String => $Data{Body},
                    );

                }
                else {
                    $Data{Body} = "<br/>" . $Data{Body};
                    if ( $Data{Created} ) {
                        $Data{Body} = "Date: $Data{Created}<br/>" . $Data{Body};
                    }
                    for (qw(Subject ReplyTo Reply-To Cc To From)) {
                        if ( $Data{$_} ) {
                            $Data{Body} = "$_: $Data{$_}<br/>" . $Data{Body};
                        }
                    }
                    $Data{Body} = "<br/>---- Message from $Data{From} ---<br/><br/>" . $Data{Body};
                    $Data{Body} .= "<br/>---- End Message ---<br/>";
                }
            }
        }
        else {

            # prepare body, subject, ReplyTo ...
            # rewrap body if exists
            if ( $Data{Body} ) {
                $Data{Body} =~ s/\t/ /g;
                my $Quote = $Self->{ConfigObject}->Get('Ticket::Frontend::Quote');
                if ($Quote) {
                    $Data{Body} =~ s/\n/\n$Quote /g;
                    $Data{Body} = "\n$Quote " . $Data{Body};
                }
                else {
                    $Data{Body} = "\n" . $Data{Body};
                    if ( $Data{Created} ) {
                        $Data{Body} = "Date: $Data{Created}\n" . $Data{Body};
                    }
                    for (qw(Subject ReplyTo Reply-To Cc To From)) {
                        if ( $Data{$_} ) {
                            $Data{Body} = "$_: $Data{$_}\n" . $Data{Body};
                        }
                    }
                    $Data{Body} = "\n---- Message from $Data{From} ---\n\n" . $Data{Body};
                    $Data{Body} .= "\n---- End Message ---\n";
                }
            }
        }

        # check if Cc recipients should be used
        if ( $Self->{ConfigObject}->Get('Ticket::Frontend::ComposeExcludeCcRecipients') ) {
            $Data{Cc} = '';
        }

        # add not local To addresses to Cc
        for my $Email ( Mail::Address->parse( $Data{To} ) ) {
            my $IsLocal = $Self->{SystemAddress}->SystemAddressIsLocalAddress(
                Address => $Email->address(),
            );
            if ( !$IsLocal ) {
                if ( $Data{Cc} ) {
                    $Data{Cc} .= ', ';
                }
                $Data{Cc} .= $Email->format();
            }
        }

        # check ReplyTo
        if ( $Data{ReplyTo} ) {
            $Data{To} = $Data{ReplyTo};
        }
        else {
            $Data{To} = $Data{From};

            # try to remove some wrong text to from line (by way of ...)
            # added by some strange mail programs on bounce
            $Data{To} =~ s/(.+?\<.+?\@.+?\>)\s+\(by\s+way\s+of\s+.+?\)/$1/ig;
        }

        # get to email (just "some@example.com")
        for my $Email ( Mail::Address->parse( $Data{To} ) ) {
            $Data{ToEmail} = $Email->address();
        }

        # use customer database email
        if ( $Self->{ConfigObject}->Get('Ticket::Frontend::ComposeAddCustomerAddress') ) {

            # check if customer is in recipient list
            if ( $Customer{UserEmail} && $Data{ToEmail} !~ /^\Q$Customer{UserEmail}\E$/i ) {

                # replace To with customers database address
                if ( $Self->{ConfigObject}->Get('Ticket::Frontend::ComposeReplaceSenderAddress') ) {
                    $Self->{LayoutObject}->Block(
                        Name => 'PropertiesRecipientTo',
                        Data => { To => $Data{To} },
                    );
                    $Data{To} = $Customer{UserEmail};
                }

                # add customers database address to Cc
                else {
                    $Self->{LayoutObject}->Block(
                        Name => 'PropertiesRecipientCc',
                        Data => { Cc => $Customer{UserEmail}, },
                    );
                    if ( $Data{Cc} ) {
                        $Data{Cc} .= ', ' . $Customer{UserEmail};
                    }
                    else {
                        $Data{Cc} = $Customer{UserEmail};
                    }
                }
            }
        }

        # find duplicate addresses
        my %Recipient = ();
        for my $Type (qw(To Cc Bcc)) {
            if ( $Data{$Type} ) {
                my $NewLine = '';
                for my $Email ( Mail::Address->parse( $Data{$Type} ) ) {
                    my $Address = lc $Email->address();

                    # only use email addresses with @ inside
                    if ( $Address && $Address =~ /@/ && !$Recipient{$Address} ) {
                        $Recipient{$Address} = 1;
                        my $IsLocal = $Self->{SystemAddress}->SystemAddressIsLocalAddress(
                            Address => $Address,
                        );
                        if ( !$IsLocal ) {
                            if ($NewLine) {
                                $NewLine .= ', ';
                            }
                            $NewLine .= $Email->format();
                        }
                    }
                }
                $Data{$Type} = $NewLine;
            }
        }

        # get template
        my $TemplateGenerator = Kernel::System::TemplateGenerator->new( %{$Self} );
        my %Response          = $TemplateGenerator->Response(
            TicketID   => $Self->{TicketID},
            ArticleID  => $GetParam{ArticleID},
            ResponseID => $GetParam{ResponseID},
            Data       => \%Data,
            UserID     => $Self->{UserID},
        );
        $Data{Salutation}  = $Response{Salutation};
        $Data{Signature}   = $Response{Signature};
        $Data{StdResponse} = $Response{StdResponse};

        %Data = $TemplateGenerator->Attributes(
            TicketID   => $Self->{TicketID},
            ArticleID  => $GetParam{ArticleID},
            ResponseID => $GetParam{ResponseID},
            Data       => \%Data,
            UserID     => $Self->{UserID},
        );

        my $ResponseFormat = $Self->{ConfigObject}->Get('Ticket::Frontend::ResponseFormat')
            || '$QData{"Salutation"}
$QData{"OrigFrom"} $Text{"wrote"}:
$QData{"Body"}

$QData{"StdResponse"}

$QData{"Signature"}
';

        # make sure body is rich text
        my %DataHTML = %Data;
        if ( $Self->{ConfigObject}->Get('Frontend::RichText') ) {
            $ResponseFormat = $Self->{LayoutObject}->Ascii2RichText(
                String => $ResponseFormat,
            );

            # restore qdata formatting for Output replacement
            $ResponseFormat =~ s/&quot;/"/gi;

            # html quote to have it correct in edit area
            $ResponseFormat = $Self->{LayoutObject}->Ascii2Html(
                Text => $ResponseFormat,
            );

            # restore qdata formatting for Output replacement
            $ResponseFormat =~ s/&quot;/"/gi;

            # quote all non html content to have it correct in edit area
            for my $Key ( keys %DataHTML ) {
                next if !$DataHTML{$Key};
                next if $Key eq 'Salutation';
                next if $Key eq 'Body';
                next if $Key eq 'StdResponse';
                next if $Key eq 'Signature';
                $DataHTML{$Key} = $Self->{LayoutObject}->Ascii2RichText(
                    String => $DataHTML{$Key},
                );
            }
        }

        # build new repsonse format based on template
        $Data{ResponseFormat} = $Self->{LayoutObject}->Output(
            Template => $ResponseFormat,
            Data => { %Param, %DataHTML },
        );

        # check some values
        for my $Line (qw(From To Cc Bcc)) {
            next if !$Data{$Line};
            for my $Email ( Mail::Address->parse( $Data{$Line} ) ) {
                if ( !$Self->{CheckItemObject}->CheckEmail( Address => $Email->address() ) ) {
                    $Error{"$Line invalid"} .= $Self->{CheckItemObject}->CheckError();
                }
            }
        }

        # get free text config options
        my %TicketFreeText = ();
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
            Ticket => \%Ticket,
            Config => \%TicketFreeText,
        );

        # free time
        my %TicketFreeTime = ();
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
        my %TicketFreeTimeHTML = $Self->{LayoutObject}->AgentFreeDate(
            Ticket => \%TicketFreeTime,
        );

        # article free text
        my %ArticleFreeText = ();
        for ( 1 .. 3 ) {
            $ArticleFreeText{"ArticleFreeKey$_"} = $Self->{TicketObject}->ArticleFreeTextGet(
                TicketID => $Self->{TicketID},
                Type     => "ArticleFreeKey$_",
                Action   => $Self->{Action},
                UserID   => $Self->{UserID},
            );
            $ArticleFreeText{"ArticleFreeText$_"} = $Self->{TicketObject}->ArticleFreeTextGet(
                TicketID => $Self->{TicketID},
                Type     => "ArticleFreeText$_",
                Action   => $Self->{Action},
                UserID   => $Self->{UserID},
            );
        }
        my %ArticleFreeTextHTML = $Self->{LayoutObject}->TicketArticleFreeText(
            Config  => \%ArticleFreeText,
            Article => \%GetParam,
        );

        # build view ...
        $Output .= $Self->_Mask(
            TicketID       => $Self->{TicketID},
            NextStates     => $Self->_GetNextStates(),
            Attachments    => \@Attachments,
            Errors         => \%Error,
            GetParam       => \%GetParam,
            ResponseID     => $GetParam{ResponseID},
            ReplyArticleID => $GetParam{ArticleID},
            %Ticket,
            %Data,
            InReplyTo  => $Data{MessageID},
            References => "$Data{References} $Data{MessageID}",
            %TicketFreeTextHTML,
            %TicketFreeTimeHTML,
            %ArticleFreeTextHTML,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}

sub _GetNextStates {
    my ( $Self, %Param ) = @_;

    # get next states
    my %NextStates = $Self->{TicketObject}->StateList(
        Action   => $Self->{Action},
        TicketID => $Self->{TicketID},
        UserID   => $Self->{UserID},
    );
    return \%NextStates;
}

sub _Mask {
    my ( $Self, %Param ) = @_;

    # build next states string
    if ( !$Self->{Config}->{StateDefault} ) {
        $Param{NextStates}->{''} = '-';
    }
    my %State;
    if ( $Param{GetParams}->{StateID} ) {
        $State{SelectedID} = $Param{GetParams}->{StateID};
    }
    else {
        $State{Selected} = $Param{NextState} || $Self->{Config}->{StateDefault};
    }
    $Param{NextStatesStrg} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => $Param{NextStates},
        Name => 'StateID',
        %State,
    );

    # prepare errors!
    if ( $Param{Errors} ) {
        for ( keys %{ $Param{Errors} } ) {
            $Param{$_} = "* " . $Self->{LayoutObject}->Ascii2Html( Text => $Param{Errors}->{$_} );
        }
    }

    # pending data string
    $Param{PendingDateString} = $Self->{LayoutObject}->BuildDateSelection(
        %Param,
        Format => 'DateInputFormatLong',
        DiffTime => $Self->{ConfigObject}->Get('Ticket::Frontend::PendingDiffTime') || 0,
    );

    # js for time accounting
    if ( $Self->{ConfigObject}->Get('Ticket::Frontend::AccountTime') ) {
        $Self->{LayoutObject}->Block(
            Name => 'TimeUnitsJs',
            Data => \%Param,
        );
    }
    $Self->{LayoutObject}->Block(
        Name => 'Content',
        Data => {
            FormID => $Self->{FormID},
            %Param,
        },
    );

    # run compose modules
    if ( ref $Self->{ConfigObject}->Get('Ticket::Frontend::ArticleComposeModule') eq 'HASH' ) {
        my %Jobs = %{ $Self->{ConfigObject}->Get('Ticket::Frontend::ArticleComposeModule') };
        for my $Job ( sort keys %Jobs ) {

            # load module
            if ( !$Self->{MainObject}->Require( $Jobs{$Job}->{Module} ) ) {
                return $Self->{LayoutObject}->FatalError();
            }
            my $Object = $Jobs{$Job}->{Module}->new( %{$Self}, Debug => $Self->{Debug}, );

            # get params
            for ( sort keys %{ $Param{GetParam} } ) {
                if ( !$Param{GetParam}->{$_} && $Param{$_} ) {
                    $Param{GetParam}->{$_} = $Param{$_};
                }
            }
            for ( $Object->Option( %Param, %{ $Param{GetParam} }, Config => $Jobs{$Job} ) ) {
                $Param{GetParam}->{$_} = $Self->{ParamObject}->GetParam( Param => $_ );
            }

            # run module
            $Object->Run( %Param, %{ $Param{GetParam} }, Config => $Jobs{$Job} );

            # get errors
            %{ $Param{Errors} } = (
                %{ $Param{Errors} },
                $Object->Error( %{ $Param{GetParam} }, Config => $Jobs{$Job} )
            );
        }
    }

    # ticket free text
    for my $Count ( 1 .. 16 ) {
        if ( $Self->{Config}->{'TicketFreeText'}->{$Count} ) {
            $Self->{LayoutObject}->Block(
                Name => 'TicketFreeText',
                Data => {
                    TicketFreeKeyField  => $Param{ 'TicketFreeKeyField' . $Count },
                    TicketFreeTextField => $Param{ 'TicketFreeTextField' . $Count },
                    Count               => $Count,
                    %Param,
                },
            );
            $Self->{LayoutObject}->Block(
                Name => 'TicketFreeText' . $Count,
                Data => { %Param, Count => $Count, },
            );
        }
    }
    for my $Count ( 1 .. 6 ) {
        if ( $Self->{Config}->{'TicketFreeTime'}->{$Count} ) {
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
    }

    # article free text
    for my $Count ( 1 .. 3 ) {
        if ( $Self->{Config}->{'ArticleFreeText'}->{$Count} ) {
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
    }

    # show time accounting box
    if ( $Self->{ConfigObject}->Get('Ticket::Frontend::AccountTime') ) {
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

    # show address book
    if ( $Self->{LayoutObject}->{BrowserJavaScriptSupport} ) {
        $Self->{LayoutObject}->Block(
            Name => 'AddressBook',
            Data => {},
        );
    }

    # add rich text editor
    if ( $Self->{ConfigObject}->Get('Frontend::RichText') ) {
        $Self->{LayoutObject}->Block(
            Name => 'RichText',
            Data => \%Param,
        );
    }

    # show attachments
    for my $DataRef ( @{ $Param{Attachments} } ) {
        next if $DataRef->{ContentID} && $Self->{ConfigObject}->Get('Frontend::RichText');
        $Self->{LayoutObject}->Block(
            Name => 'Attachment',
            Data => $DataRef,
        );
    }

    # java script check for required free text fields by form submit
    for my $Key ( keys %{ $Self->{Config}->{TicketFreeText} } ) {
        if ( $Self->{Config}->{TicketFreeText}->{$Key} == 2 ) {
            $Self->{LayoutObject}->Block(
                Name => 'TicketFreeTextCheckJs',
                Data => {
                    TicketFreeTextField => "TicketFreeText$Key",
                    TicketFreeKeyField  => "TicketFreeKey$Key",
                },
            );
        }
    }

    # java script check for required free time fields by form submit
    for my $Key ( keys %{ $Self->{Config}->{TicketFreeTime} } ) {
        if ( $Self->{Config}->{TicketFreeTime}->{$Key} == 2 ) {
            $Self->{LayoutObject}->Block(
                Name => 'TicketFreeTimeCheckJs',
                Data => {
                    TicketFreeTimeCheck => 'TicketFreeTime' . $Key . 'Used',
                    TicketFreeTimeField => 'TicketFreeTime' . $Key,
                    TicketFreeTimeKey   => $Self->{ConfigObject}->Get( 'TicketFreeTimeKey' . $Key ),
                },
            );
        }
    }

    # create & return output
    return $Self->{LayoutObject}->Output( TemplateFile => 'AgentTicketCompose', Data => \%Param );
}

1;
