# --
# Kernel/Modules/CustomerTicketPrint.pm - print layout for customer interface
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: CustomerTicketPrint.pm,v 1.37 2010-11-26 01:51:26 en Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::CustomerTicketPrint;

use strict;
use warnings;

use Kernel::System::CustomerUser;
use Kernel::System::User;
use Kernel::System::PDF;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.37 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check needed objects
    for my $Needed (
        qw(ParamObject DBObject TicketObject LayoutObject LogObject QueueObject ConfigObject MainObject)
        )
    {
        if ( !$Self->{$Needed} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $Needed!" );
        }
    }

    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);
    $Self->{UserObject}         = Kernel::System::User->new(%Param);
    $Self->{PDFObject}          = Kernel::System::PDF->new(%Param);

    # get the configuration to check for printable objects
    $Self->{Config} = $Self->{ConfigObject}->Get("Ticket::Frontend::CustomerTicketZoom");

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $Output;
    my $QueueID;

    # check needed stuff
    if ( !$Self->{TicketID} ) {
        return $Self->{LayoutObject}->ErrorScreen( Message => 'Need TicketID!' );
    }
    $QueueID = $Self->{TicketObject}->TicketQueueID( TicketID => $Self->{TicketID} );
    if ( !$QueueID ) {
        return $Self->{LayoutObject}->ErrorScreen( Message => 'Need TicketID!' );
    }

    # check permissions
    if (
        !$Self->{TicketObject}->TicketCustomerPermission(
            Type     => 'ro',
            TicketID => $Self->{TicketID},
            UserID   => $Self->{UserID}
        )
        )
    {

        # error screen, don't show ticket
        return $Self->{LayoutObject}->CustomerNoPermission( WithHeader => 'yes' );
    }

    # get content
    my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Self->{TicketID} );
    my @CustomerArticleTypes = $Self->{TicketObject}->ArticleTypeList( Type => 'Customer' );
    my @ArticleBox = $Self->{TicketObject}->ArticleContentIndex(
        TicketID                   => $Self->{TicketID},
        ArticleType                => \@CustomerArticleTypes,
        StripPlainBodyAsAttachment => 1,
        UserID                     => $Self->{UserID},
    );

    # customer info
    my %CustomerData;
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

    # do some html quoting
    $Ticket{Age} = $Self->{LayoutObject}->CustomerAge( Age => $Ticket{Age}, Space => ' ' );
    if ( $Ticket{UntilTime} ) {
        $Ticket{PendingUntil} = $Self->{LayoutObject}->CustomerAge(
            Age   => $Ticket{UntilTime},
            Space => ' ',
        );
    }
    else {
        $Ticket{PendingUntil} = '-';
    }

    # generate pdf output
    if ( $Self->{PDFObject} ) {
        my $PrintedBy = $Self->{LayoutObject}->{LanguageObject}->Get('printed by');
        my $Time      = $Self->{LayoutObject}->Output( Template => '$Env{"Time"}' );
        my $Url       = ' ';
        if ( $ENV{REQUEST_URI} ) {
            $Url = $Self->{ConfigObject}->Get('HttpType') . '://'
                . $Self->{ConfigObject}->Get('FQDN')
                . $ENV{REQUEST_URI};
        }
        my %Page;

        # get maximum number of pages
        $Page{MaxPages} = $Self->{ConfigObject}->Get('PDF::MaxPages');
        if ( !$Page{MaxPages} || $Page{MaxPages} < 1 || $Page{MaxPages} > 1000 ) {
            $Page{MaxPages} = 100;
        }
        my $HeaderRight  = $Self->{ConfigObject}->Get('Ticket::Hook') . $Ticket{TicketNumber};
        my $HeadlineLeft = $HeaderRight;
        my $Title        = $HeaderRight;
        if ( $Ticket{Title} ) {
            $HeadlineLeft = $Ticket{Title};
            $Title .= ' / ' . $Ticket{Title};
        }

        $Page{MarginTop}    = 30;
        $Page{MarginRight}  = 40;
        $Page{MarginBottom} = 40;
        $Page{MarginLeft}   = 40;
        $Page{HeaderRight}  = $HeaderRight;
        $Page{HeadlineLeft} = $HeadlineLeft;
        $Page{HeadlineRight}
            = $PrintedBy . ' '
            . $Self->{UserFirstname} . ' '
            . $Self->{UserLastname} . ' ('
            . $Self->{UserEmail} . ') '
            . $Time;
        $Page{FooterLeft} = $Url;
        $Page{PageText}   = $Self->{LayoutObject}->{LanguageObject}->Get('Page');
        $Page{PageCount}  = 1;

        # create new pdf document
        $Self->{PDFObject}->DocumentNew(
            Title  => $Self->{ConfigObject}->Get('Product') . ': ' . $Title,
            Encode => $Self->{LayoutObject}->{UserCharset},
        );

        # create first pdf page
        $Self->{PDFObject}->PageNew(
            %Page, FooterRight => $Page{PageText} . ' ' . $Page{PageCount},
        );
        $Page{PageCount}++;

        # type of print tag
        my $PrintTag = '';

        $PrintTag = ( $Self->{LayoutObject}->{LanguageObject}->Get('Ticket') ) . ' ' .
            ( $Self->{LayoutObject}->{LanguageObject}->Get('Print') );

        # output headline
        $Self->{PDFObject}->Text(
            Text     => $PrintTag,
            Height   => 9,
            Type     => 'Cut',
            Font     => 'ProportionalBold',
            Align    => 'right',
            FontSize => 9,
            Color    => '#666666',
        );

        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -6,
        );

        # output ticket infos
        $Self->_PDFOutputTicketInfos(
            PageData   => \%Page,
            TicketData => \%Ticket,
        );

        # output ticket freetext fields
        $Self->_PDFOutputTicketFreeText(
            PageData   => \%Page,
            TicketData => \%Ticket,
        );

        # output ticket freetime fields
        $Self->_PDFOutputTicketFreeTime(
            PageData   => \%Page,
            TicketData => \%Ticket,
        );

        # output customer infos
        if (%CustomerData) {
            $Self->_PDFOutputCustomerInfos(
                PageData     => \%Page,
                CustomerData => \%CustomerData,
            );
        }

        # output articles
        $Self->_PDFOutputArticles(
            PageData    => \%Page,
            ArticleData => \@ArticleBox,
        );

        # return the pdf document
        my $Filename = 'Ticket_' . $Ticket{TicketNumber};
        my ( $s, $m, $h, $D, $M, $Y ) = $Self->{TimeObject}->SystemTime2Date(
            SystemTime => $Self->{TimeObject}->SystemTime(),
        );
        $M = sprintf( "%02d", $M );
        $D = sprintf( "%02d", $D );
        $h = sprintf( "%02d", $h );
        $m = sprintf( "%02d", $m );
        my $PDFString = $Self->{PDFObject}->DocumentOutput();
        return $Self->{LayoutObject}->Attachment(
            Filename    => $Filename . "_" . "$Y-$M-$D" . "_" . "$h-$m.pdf",
            ContentType => "application/pdf",
            Content     => $PDFString,
            Type        => 'attachment',
        );
    }

    # generate html output
    else {

        # output header
        $Output .= $Self->{LayoutObject}->PrintHeader( Value => $Ticket{TicketNumber} );

        # output customer infos
        if (%CustomerData) {
            $Param{CustomerTable} = $Self->{LayoutObject}->AgentCustomerViewTable(
                Data => \%CustomerData,
                Max  => 100,
            );
        }

        # show ticket
        $Output .= $Self->_HTMLMask(
            TicketID   => $Self->{TicketID},
            QueueID    => $QueueID,
            ArticleBox => \@ArticleBox,
            %Param,
            %Ticket,
        );

        # add footer
        $Output .= $Self->{LayoutObject}->PrintFooter();

        # return output
        return $Output;
    }
}

sub _PDFOutputTicketInfos {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Needed (qw(PageData TicketData)) {
        if ( !defined( $Param{$Needed} ) ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $Needed!" );
            return;
        }
    }
    my %Ticket = %{ $Param{TicketData} };
    my %Page   = %{ $Param{PageData} };

    # create left table
    my $TableLeft = [
        {
            Key   => $Self->{LayoutObject}->{LanguageObject}->Get('State') . ':',
            Value => $Self->{LayoutObject}->{LanguageObject}->Get( $Ticket{State} ),
        },
        {
            Key   => $Self->{LayoutObject}->{LanguageObject}->Get('Priority') . ':',
            Value => $Self->{LayoutObject}->{LanguageObject}->Get( $Ticket{Priority} ),
        },
        {
            Key   => $Self->{LayoutObject}->{LanguageObject}->Get('Queue') . ':',
            Value => $Ticket{Queue},
        },
    ];

    # add type row, if feature is enabled
    if ( $Self->{ConfigObject}->Get('Ticket::Type') ) {
        my $Row = {
            Key   => $Self->{LayoutObject}->{LanguageObject}->Get('Type') . ':',
            Value => $Ticket{Type},
        };
        push( @{$TableLeft}, $Row );
    }

    # add service and sla row, if feature is enabled
    if ( $Self->{ConfigObject}->Get('Ticket::Service') ) {
        my $RowService = {
            Key => $Self->{LayoutObject}->{LanguageObject}->Get('Service') . ':',
            Value => $Ticket{Service} || '-',
        };
        push( @{$TableLeft}, $RowService );
        my $RowSLA = {
            Key => $Self->{LayoutObject}->{LanguageObject}->Get('SLA') . ':',
            Value => $Ticket{SLA} || '-',
        };
        push( @{$TableLeft}, $RowSLA );
    }

    # create right table
    my $TableRight = [
        {
            Key   => $Self->{LayoutObject}->{LanguageObject}->Get('CustomerID') . ':',
            Value => $Ticket{CustomerID},
        },
        {
            Key   => $Self->{LayoutObject}->{LanguageObject}->Get('Age') . ':',
            Value => $Self->{LayoutObject}->{LanguageObject}->Get( $Ticket{Age} ),
        },
        {
            Key   => $Self->{LayoutObject}->{LanguageObject}->Get('Created') . ':',
            Value => $Self->{LayoutObject}->Output(
                Template => '$TimeLong{"$Data{"Created"}"}',
                Data     => \%Ticket,
            ),
        },
    ];

    my $Rows = @{$TableLeft};
    if ( @{$TableRight} > $Rows ) {
        $Rows = @{$TableRight};
    }

    my %TableParam;
    for my $Row ( 1 .. $Rows ) {
        $Row--;
        $TableParam{CellData}[$Row][0]{Content}         = $TableLeft->[$Row]->{Key};
        $TableParam{CellData}[$Row][0]{Font}            = 'ProportionalBold';
        $TableParam{CellData}[$Row][1]{Content}         = $TableLeft->[$Row]->{Value};
        $TableParam{CellData}[$Row][2]{Content}         = ' ';
        $TableParam{CellData}[$Row][2]{BackgroundColor} = '#FFFFFF';
        $TableParam{CellData}[$Row][3]{Content}         = $TableRight->[$Row]->{Key};
        $TableParam{CellData}[$Row][3]{Font}            = 'ProportionalBold';
        $TableParam{CellData}[$Row][4]{Content}         = $TableRight->[$Row]->{Value};
    }

    $TableParam{ColumnData}[0]{Width} = 80;
    $TableParam{ColumnData}[1]{Width} = 170.5;
    $TableParam{ColumnData}[2]{Width} = 4;
    $TableParam{ColumnData}[3]{Width} = 80;
    $TableParam{ColumnData}[4]{Width} = 170.5;

    $TableParam{Type}                = 'Cut';
    $TableParam{Border}              = 0;
    $TableParam{FontSize}            = 6;
    $TableParam{BackgroundColorEven} = '#AAAAAA';
    $TableParam{BackgroundColorOdd}  = '#DDDDDD';
    $TableParam{Padding}             = 1;
    $TableParam{PaddingTop}          = 3;
    $TableParam{PaddingBottom}       = 3;

    # output table
    for ( $Page{PageCount} .. $Page{MaxPages} ) {

        # output table (or a fragment of it)
        %TableParam = $Self->{PDFObject}->Table( %TableParam, );

        # stop output or output next page
        if ( $TableParam{State} ) {
            last;
        }
        else {
            $Self->{PDFObject}->PageNew(
                %Page, FooterRight => $Page{PageText} . ' ' . $Page{PageCount},
            );
            $Page{PageCount}++;
        }
    }
    return 1;
}

sub _PDFOutputTicketFreeText {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Needed (qw(PageData TicketData)) {
        if ( !defined( $Param{$Needed} ) ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $Needed!" );
            return;
        }
    }
    my $Output = 0;
    my %Ticket = %{ $Param{TicketData} };
    my %Page   = %{ $Param{PageData} };

    my %TableParam;
    my $Row = 0;

    # generate table
    for my $Number ( 1 .. 16 ) {
        next if !$Ticket{"TicketFreeText$Number"};
        next if !$Self->{Config}->{AttributesView}->{ 'TicketFreeText' . $Number };
        $TableParam{CellData}[$Row][0]{Content} = $Ticket{"TicketFreeKey$Number"} . ':';
        $TableParam{CellData}[$Row][0]{Font}    = 'ProportionalBold';
        $TableParam{CellData}[$Row][1]{Content} = $Ticket{"TicketFreeText$Number"};

        $Row++;
        $Output = 1;
    }
    $TableParam{ColumnData}[0]{Width} = 80;
    $TableParam{ColumnData}[1]{Width} = 431;

    # output ticket freetext
    if ($Output) {

        # set new position
        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -15,
        );

        # output headline
        $Self->{PDFObject}->Text(
            Text     => $Self->{LayoutObject}->{LanguageObject}->Get('TicketFreeText'),
            Height   => 7,
            Type     => 'Cut',
            Font     => 'ProportionalBoldItalic',
            FontSize => 7,
            Color    => '#666666',
        );

        # set new position
        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -4,
        );

        # table params
        $TableParam{Type}            = 'Cut';
        $TableParam{Border}          = 0;
        $TableParam{FontSize}        = 6;
        $TableParam{BackgroundColor} = '#DDDDDD';
        $TableParam{Padding}         = 1;
        $TableParam{PaddingTop}      = 3;
        $TableParam{PaddingBottom}   = 3;

        # output table
        for ( $Page{PageCount} .. $Page{MaxPages} ) {

            # output table (or a fragment of it)
            %TableParam = $Self->{PDFObject}->Table( %TableParam, );

            # stop output or output next page
            if ( $TableParam{State} ) {
                last;
            }
            else {
                $Self->{PDFObject}->PageNew(
                    %Page, FooterRight => $Page{PageText} . ' ' . $Page{PageCount},
                );
                $Page{PageCount}++;
            }
        }
    }
    return 1;
}

sub _PDFOutputTicketFreeTime {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Needed (qw(PageData TicketData)) {
        if ( !defined( $Param{$Needed} ) ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $Needed!" );
            return;
        }
    }
    my $Output = 0;
    my %Ticket = %{ $Param{TicketData} };
    my %Page   = %{ $Param{PageData} };

    my %TableParam;
    my $Row = 0;

    # generate table
    for my $Number ( 1 .. 6 ) {
        next if !$Ticket{"TicketFreeTime$Number"};
        next if !$Self->{Config}->{AttributesView}->{ 'TicketFreeTime' . $Number };

        my $TicketFreeTimeKey = $Self->{ConfigObject}->Get( 'TicketFreeTimeKey' . $Number ) || '';
        my $TicketFreeTime = $Ticket{"TicketFreeTime$Number"};

        $TableParam{CellData}[$Row][0]{Content} = $TicketFreeTimeKey . ':';
        $TableParam{CellData}[$Row][0]{Font}    = 'ProportionalBold';
        $TableParam{CellData}[$Row][1]{Content} = $Self->{LayoutObject}->Output(
            Template => '$TimeLong{"$Data{"TicketFreeTime"}"}',
            Data => { TicketFreeTime => $TicketFreeTime, },
        );

        $Row++;
        $Output = 1;
    }
    $TableParam{ColumnData}[0]{Width} = 80;
    $TableParam{ColumnData}[1]{Width} = 431;

    # output ticket freetime
    if ($Output) {

        # set new position
        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -15,
        );

        # output headline
        $Self->{PDFObject}->Text(
            Text     => $Self->{LayoutObject}->{LanguageObject}->Get('TicketFreeTime'),
            Height   => 7,
            Type     => 'Cut',
            Font     => 'ProportionalBoldItalic',
            FontSize => 7,
            Color    => '#666666',
        );

        # set new position
        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -4,
        );

        # table params
        $TableParam{Type}            = 'Cut';
        $TableParam{Border}          = 0;
        $TableParam{FontSize}        = 6;
        $TableParam{BackgroundColor} = '#DDDDDD';
        $TableParam{Padding}         = 1;
        $TableParam{PaddingTop}      = 3;
        $TableParam{PaddingBottom}   = 3;

        # output table
        for ( $Page{PageCount} .. $Page{MaxPages} ) {

            # output table (or a fragment of it)
            %TableParam = $Self->{PDFObject}->Table( %TableParam, );

            # stop output or output next page
            if ( $TableParam{State} ) {
                last;
            }
            else {
                $Self->{PDFObject}->PageNew(
                    %Page, FooterRight => $Page{PageText} . ' ' . $Page{PageCount},
                );
                $Page{PageCount}++;
            }
        }
    }
    return 1;
}

sub _PDFOutputCustomerInfos {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Needed (qw(PageData CustomerData)) {
        if ( !defined( $Param{$Needed} ) ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $Needed!" );
            return;
        }
    }
    my $Output       = 0;
    my %CustomerData = %{ $Param{CustomerData} };
    my %Page         = %{ $Param{PageData} };
    my %TableParam;
    my $Row = 0;
    my $Map = $CustomerData{Config}->{Map};

    # check if customer company support is enabled
    if ( $CustomerData{Config}->{CustomerCompanySupport} ) {
        my $Map2 = $CustomerData{CompanyConfig}->{Map};
        if ($Map2) {
            push( @{$Map}, @{$Map2} );
        }
    }
    for my $Field ( @{$Map} ) {
        if ( ${$Field}[3] && $CustomerData{ ${$Field}[0] } ) {
            $TableParam{CellData}[$Row][0]{Content}
                = $Self->{LayoutObject}->{LanguageObject}->Get( ${$Field}[1] ) . ':';
            $TableParam{CellData}[$Row][0]{Font}    = 'ProportionalBold';
            $TableParam{CellData}[$Row][1]{Content} = $CustomerData{ ${$Field}[0] };

            $Row++;
            $Output = 1;
        }
    }
    $TableParam{ColumnData}[0]{Width} = 80;
    $TableParam{ColumnData}[1]{Width} = 431;

    if ($Output) {

        # set new position
        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -15,
        );

        # output headline
        $Self->{PDFObject}->Text(
            Text     => $Self->{LayoutObject}->{LanguageObject}->Get('Customer Information'),
            Height   => 7,
            Type     => 'Cut',
            Font     => 'ProportionalBoldItalic',
            FontSize => 7,
            Color    => '#666666',
        );

        # set new position
        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -4,
        );

        # table params
        $TableParam{Type}            = 'Cut';
        $TableParam{Border}          = 0;
        $TableParam{FontSize}        = 6;
        $TableParam{BackgroundColor} = '#DDDDDD';
        $TableParam{Padding}         = 1;
        $TableParam{PaddingTop}      = 3;
        $TableParam{PaddingBottom}   = 3;

        # output table
        for ( $Page{PageCount} .. $Page{MaxPages} ) {

            # output table (or a fragment of it)
            %TableParam = $Self->{PDFObject}->Table( %TableParam, );

            # stop output or output next page
            if ( $TableParam{State} ) {
                last;
            }
            else {
                $Self->{PDFObject}->PageNew(
                    %Page, FooterRight => $Page{PageText} . ' ' . $Page{PageCount},
                );
                $Page{PageCount}++;
            }
        }
    }
    return 1;
}

sub _PDFOutputArticles {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Needed (qw(PageData ArticleData)) {
        if ( !defined( $Param{$Needed} ) ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $Needed!" );
            return;
        }
    }
    my %Page = %{ $Param{PageData} };

    my $ArticleCounter = 1;
    for my $ArticleTmp ( @{ $Param{ArticleData} } ) {
        if ( $ArticleCounter == 1 ) {
            $Self->{PDFObject}->PositionSet(
                Move => 'relativ',
                Y    => -15,
            );

            # output headline
            $Self->{PDFObject}->Text(
                Text     => $Self->{LayoutObject}->{LanguageObject}->Get('Articles'),
                Height   => 7,
                Type     => 'Cut',
                Font     => 'ProportionalBoldItalic',
                FontSize => 7,
                Color    => '#666666',
            );
            $Self->{PDFObject}->PositionSet(
                Move => 'relativ',
                Y    => 2,
            );
        }

        my %Article = %{$ArticleTmp};

        # get attachment string
        my %AtmIndex = ();
        if ( $Article{Atms} ) {
            %AtmIndex = %{ $Article{Atms} };
        }
        my $Attachments;
        for my $FileID ( keys %AtmIndex ) {
            my %File = %{ $AtmIndex{$FileID} };
            $Attachments .= $File{Filename} . ' (' . $File{Filesize} . ")\n";
        }

        # generate article info table
        my %TableParam1;
        my $Row = 0;

        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -6,
        );

        # article number tag
        $Self->{PDFObject}->Text(
            Text     => '    # ' . $ArticleCounter,
            Height   => 7,
            Type     => 'Cut',
            Font     => 'ProportionalBoldItalic',
            FontSize => 7,
            Color    => '#666666',
        );

        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => 2,
        );

        for my $Parameter (qw(From To Cc Subject)) {
            if ( $Article{$Parameter} ) {
                $TableParam1{CellData}[$Row][0]{Content}
                    = $Self->{LayoutObject}->{LanguageObject}->Get($Parameter) . ':';
                $TableParam1{CellData}[$Row][0]{Font}    = 'ProportionalBold';
                $TableParam1{CellData}[$Row][1]{Content} = $Article{$Parameter};
                $Row++;
            }
        }
        $TableParam1{CellData}[$Row][0]{Content}
            = $Self->{LayoutObject}->{LanguageObject}->Get('Created') . ':';
        $TableParam1{CellData}[$Row][0]{Font}    = 'ProportionalBold';
        $TableParam1{CellData}[$Row][1]{Content} = $Self->{LayoutObject}->Output(
            Template => '$TimeLong{"$Data{"Created"}"}',
            Data     => \%Article,
        );
        $TableParam1{CellData}[$Row][1]{Content}
            .= ' ' . $Self->{LayoutObject}->{LanguageObject}->Get('by');
        $TableParam1{CellData}[$Row][1]{Content} .= ' ' . $Article{SenderType};
        $Row++;
        for my $Number ( 1 .. 3 ) {

            if ( $Article{"ArticleFreeText$Number"} ) {
                $TableParam1{CellData}[$Row][0]{Content} = $Article{"ArticleFreeKey$Number"} . ':';
                $TableParam1{CellData}[$Row][0]{Font}    = 'ProportionalBold';
                $TableParam1{CellData}[$Row][1]{Content} = $Article{"ArticleFreeText$Number"};
                $Row++;
            }
        }

        $TableParam1{CellData}[$Row][0]{Content}
            = $Self->{LayoutObject}->{LanguageObject}->Get('Type') . ':';
        $TableParam1{CellData}[$Row][0]{Font}    = 'ProportionalBold';
        $TableParam1{CellData}[$Row][1]{Content} = $Article{ArticleType};
        $Row++;

        if ($Attachments) {
            $TableParam1{CellData}[$Row][0]{Content}
                = $Self->{LayoutObject}->{LanguageObject}->Get('Attachment') . ':';
            $TableParam1{CellData}[$Row][0]{Font} = 'ProportionalBold';
            chomp($Attachments);
            $TableParam1{CellData}[$Row][1]{Content} = $Attachments;
        }
        $TableParam1{ColumnData}[0]{Width} = 80;
        $TableParam1{ColumnData}[1]{Width} = 431;

        $Self->{PDFObject}->PositionSet(
            Move => 'relativ',
            Y    => -6,
        );

        # table params (article infos)
        $TableParam1{Type}            = 'Cut';
        $TableParam1{Border}          = 0;
        $TableParam1{FontSize}        = 6;
        $TableParam1{BackgroundColor} = '#DDDDDD';
        $TableParam1{Padding}         = 1;
        $TableParam1{PaddingTop}      = 3;
        $TableParam1{PaddingBottom}   = 3;

        # output table (article infos)
        for ( $Page{PageCount} .. $Page{MaxPages} ) {

            # output table (or a fragment of it)
            %TableParam1 = $Self->{PDFObject}->Table( %TableParam1, );

            # stop output or output next page
            if ( $TableParam1{State} ) {
                last;
            }
            else {
                $Self->{PDFObject}->PageNew(
                    %Page, FooterRight => $Page{PageText} . ' ' . $Page{PageCount},
                );
                $Page{PageCount}++;
            }
        }

        # table params (article body)
        my %TableParam2;
        $TableParam2{CellData}[0][0]{Content} = $Article{Body} || ' ';
        $TableParam2{Type}                    = 'Cut';
        $TableParam2{Border}                  = 0;
        $TableParam2{Font}                    = 'Monospaced';
        $TableParam2{FontSize}                = 7;
        $TableParam2{BackgroundColor}         = '#DDDDDD';
        $TableParam2{Padding}                 = 4;
        $TableParam2{PaddingTop}              = 8;
        $TableParam2{PaddingBottom}           = 8;

        # output table (article body)
        for ( $Page{PageCount} .. $Page{MaxPages} ) {

            # output table (or a fragment of it)
            %TableParam2 = $Self->{PDFObject}->Table( %TableParam2, );

            # stop output or output next page
            if ( $TableParam2{State} ) {
                last;
            }
            else {
                $Self->{PDFObject}->PageNew(
                    %Page, FooterRight => $Page{PageText} . ' ' . $Page{PageCount},
                );
                $Page{PageCount}++;
            }
        }
        $ArticleCounter++;
    }
    return 1;
}

sub _HTMLMask {
    my ( $Self, %Param ) = @_;

    # output type, if feature is enabled
    if ( $Self->{ConfigObject}->Get('Ticket::Type') ) {
        $Self->{LayoutObject}->Block(
            Name => 'TicketType',
            Data => { %Param, },
        );
    }

    # output service and sla, if feature is enabled
    if ( $Self->{ConfigObject}->Get('Ticket::Service') ) {
        $Self->{LayoutObject}->Block(
            Name => 'TicketService',
            Data => {
                Service => $Param{Service} || '-',
                SLA     => $Param{SLA}     || '-',
            },
        );
    }

    # flag to control the header print
    my $HeaderFlag = 0;

    # ticket free text
    for my $Number ( 1 .. 16 ) {
        next if !$Param{"TicketFreeText$Number"};
        next if !$Self->{Config}->{AttributesView}->{ 'TicketFreeText' . $Number };

        # display the header only once
        if ( !$HeaderFlag ) {
            $Self->{LayoutObject}->Block( Name => 'TicketFreeTextHeader' );
            $HeaderFlag = 1;
        }

        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeText' . $Number,
            Data => {%Param},
        );
        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeText',
            Data => {
                %Param,
                TicketFreeKey  => $Param{ 'TicketFreeKey' . $Number },
                TicketFreeText => $Param{ 'TicketFreeText' . $Number },
                Count          => $Number,
            },
        );
    }

    $HeaderFlag = 0;

    # ticket free time
    for my $Number ( 1 .. 6 ) {
        next if !$Param{"TicketFreeTime$Number"};
        next if !$Self->{Config}->{AttributesView}->{ 'TicketFreeTime' . $Number };

        # display the header only once
        if ( !$HeaderFlag ) {
            $Self->{LayoutObject}->Block( Name => 'TicketFreeTimeHeader' );
            $HeaderFlag = 1;
        }

        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeTime' . $Number,
            Data => {%Param},
        );
        $Self->{LayoutObject}->Block(
            Name => 'TicketFreeTime',
            Data => {
                %Param,
                TicketFreeTimeKey => $Self->{ConfigObject}->Get( 'TicketFreeTimeKey' . $Number ),
                TicketFreeTime    => $Param{ 'TicketFreeTime' . $Number },
                Count             => $Number,
            },
        );
    }

    # build article stuff
    my $SelectedArticleID = $Param{ArticleID} || '';
    my @ArticleBox = @{ $Param{ArticleBox} };

    # get last customer article
    for my $ArticleTmp (@ArticleBox) {
        my %Article = %{$ArticleTmp};

        # get attachment string
        my %AtmIndex = ();
        if ( $Article{Atms} ) {
            %AtmIndex = %{ $Article{Atms} };
        }
        $Param{'Article::ATM'} = '';
        for my $FileID ( keys %AtmIndex ) {
            my %File = %{ $AtmIndex{$FileID} };
            $File{Filename} = $Self->{LayoutObject}->Ascii2Html( Text => $File{Filename} );
            $Param{'Article::ATM'}
                .= '<a href="$Env{"CGIHandle"}/$QData{"Filename"}?Action=CustomerTicketAttachment&'
                . "ArticleID=$Article{ArticleID};FileID=$FileID\" target=\"attachment\" "
                . "onmouseover=\"window.status='\$Text{\"Download\"}: $File{Filename}';"
                . ' return true;" onmouseout="window.status=\'\';">'
                . "$File{Filename}</a> $File{Filesize}<br/>";
        }

        # check if just a only html email
        my $MimeTypeText = $Self->{LayoutObject}->CheckMimeType(
            %Param, %Article, Action => 'AgentTicketZoom',
        );
        if ($MimeTypeText) {
            $Param{TextNote} = $MimeTypeText;
            $Article{Body}   = '';
        }
        else {

            # html quoting
            $Article{Body} = $Self->{LayoutObject}->Ascii2Html(
                NewLine => $Self->{ConfigObject}->Get('DefaultViewNewLine'),
                Text    => $Article{Body},
                VMax    => $Self->{ConfigObject}->Get('DefaultViewLines') || 5000,
            );

            # do charset check
            my $CharsetText = $Self->{LayoutObject}->CheckCharset(
                %Param, %Article, Action => 'AgentTicketZoom',
            );
            if ($CharsetText) {
                $Param{'Article::TextNote'} = $CharsetText;
            }
        }
        $Self->{LayoutObject}->Block(
            Name => 'Article',
            Data => { %Param, %Article },
        );

        # do some strips && quoting
        for my $Parameter (qw(From To Cc Subject)) {
            if ( $Article{$Parameter} ) {
                $Self->{LayoutObject}->Block(
                    Name => 'Row',
                    Data => {
                        Key   => $Parameter,
                        Value => $Article{$Parameter},
                    },
                );
            }
        }

        # show article free text
        for my $Number ( 1 .. 3 ) {
            next if !$Param{"ArticleFreeText$Number"};
            next if !$Self->{Config}->{AttributesView}->{ 'ArticleFreeText' . $Number };

            $Self->{LayoutObject}->Block(
                Name => 'ArticleFreeText',
                Data => {
                    Key   => $Article{"ArticleFreeKey$Number"},
                    Value => $Article{"ArticleFreeText$Number"},
                },
            );
        }
    }

    return $Self->{LayoutObject}->Output(
        TemplateFile => 'CustomerTicketPrint',
        Data         => \%Param,
    );
}

1;
