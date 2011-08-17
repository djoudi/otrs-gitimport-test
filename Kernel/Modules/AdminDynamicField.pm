# --
# Kernel/Modules/AdminDynamicField.pm - provides a dynamic fields view for admins
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: AdminDynamicField.pm,v 1.5 2011-08-17 21:26:25 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AdminDynamicField;

use strict;
use warnings;

use Kernel::System::Valid;
use Kernel::System::CheckItem;
use Kernel::System::DynamicField;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.5 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {%Param};
    bless( $Self, $Type );

    for (qw(ParamObject LayoutObject LogObject ConfigObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    # create addtional objects
    $Self->{ValidObject} = Kernel::System::Valid->new( %{$Self} );

    $Self->{DynamicFieldObject} = Kernel::System::DynamicField->new( %{$Self} );

    # get configured ticket modules
    $Self->{DFTicketModuleConfig} = $Self->{ConfigObject}->Get('DynamicFields::Ticket::Module');

    # get configured article modules
    $Self->{DFArticleModuleConfig} = $Self->{ConfigObject}->Get('DynamicFields::Article::Module');

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    return $Self->_ShowOverview(
        %Param,
        Action => 'Overview',
    );
}

sub _ShowOverview {
    my ( $Self, %Param ) = @_;

    my $Output = $Self->{LayoutObject}->Header();
    $Output .= $Self->{LayoutObject}->NavigationBar();

    # set transports data
    my %GITransports;
    for my $Transport ( keys %{ $Self->{GITransportConfig} } ) {
        next if !$Transport;
        $GITransports{$Transport} = $Self->{GITransportConfig}->{$Transport}->{ConfigDialog};
    }

    # call all needed dtl blocks
    $Self->{LayoutObject}->Block(
        Name => 'Main',
        Data => \%Param,
    );

    my @TicketFieldBackends;
    my %TicketFieldsBackendsConfig;

    TICKETFIELDBACKEND:
    for my $FieldBackend ( keys %{ $Self->{DFTicketModuleConfig} } ) {
        next TICKETFIELDBACKEND if !$FieldBackend;
        push @TicketFieldBackends, $FieldBackend;

        $TicketFieldsBackendsConfig{$FieldBackend} =
            $Self->{DFTicketModuleConfig}->{$FieldBackend}->{ConfigDialog};
    }

    # create the Add Ticket Dynamic Field select
    my $AddTicketDynamicFieldStrg = $Self->{LayoutObject}->BuildSelection(
        Data          => \@TicketFieldBackends,
        Name          => 'TicketDynamicField',
        PossibleNone  => 1,
        Translate     => 0,
        Sort          => 'AlphanumericValue',
        SelectedValue => '-',
        Class         => 'W75pc',
    );

    # call ActionAddTicketDynamicField block
    $Self->{LayoutObject}->Block(
        Name => 'ActionAddTicketDynamicField',
        Data => {
            %Param,
            AddTicketDynamicFieldStrg => $AddTicketDynamicFieldStrg,
        },
    );

    my @ArticleFieldBackends;
    my %ArticleFieldsBackendsConfig;

    ARTICLEFIELDBACKEND:
    for my $FieldBackend ( keys %{ $Self->{DFArticleModuleConfig} } ) {
        next ARTICLEFIELDBACKEND if !$FieldBackend;
        push @ArticleFieldBackends, $FieldBackend;

        $ArticleFieldsBackendsConfig{$FieldBackend} =
            $Self->{DFArticleModuleConfig}->{$FieldBackend}->{ConfigDialog};
    }

    # create the Add Article Dynamic Field select
    my $AddArticleDynamicFieldStrg = $Self->{LayoutObject}->BuildSelection(
        Data          => \@ArticleFieldBackends,
        Name          => 'ArticleDynamicField',
        PossibleNone  => 1,
        Translate     => 0,
        Sort          => 'AlphanumericValue',
        SelectedValue => '-',
        Class         => 'W75pc',
    );

    # call ActionAddArticleDynamicField block
    $Self->{LayoutObject}->Block(
        Name => 'ActionAddArticleDynamicField',
        Data => {
            %Param,
            AddArticleDynamicFieldStrg => $AddArticleDynamicFieldStrg,
        },
    );

    # parse the ticket backends config as JSON strucutre
    my $TicketFieldsConfig = $Self->{LayoutObject}->JSONEncode(
        Data => \%TicketFieldsBackendsConfig,
    );

    # parse the article backends config as JSON strucutre
    my $ArticleFieldsConfig = $Self->{LayoutObject}->JSONEncode(
        Data => \%ArticleFieldsBackendsConfig,
    );

    # set JS configuration
    $Self->{LayoutObject}->Block(
        Name => 'ConfigSet',
        Data => {
            TicketFieldsConfig  => $TicketFieldsConfig,
            ArticleFieldsConfig => $ArticleFieldsConfig,
        },
    );

    # call hint block
    $Self->{LayoutObject}->Block(
        Name => 'Hint',
        Data => \%Param,
    );

    # get dynamic fields list
    my $DynamicFieldsList = $Self->{DynamicFieldObject}->DynamicFieldList(
        Valid => 0,
    );

    # print the list of dynamic fields
    $Self->_DynamicFieldsListShow(
        DynamicFields       => $DynamicFieldsList,
        Total               => scalar keys %{$DynamicFieldsList},
        TicketFieldsConfig  => \%TicketFieldsBackendsConfig,
        ArticleFieldsConfig => \%ArticleFieldsBackendsConfig,
    );

    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'AdminDynamicField',
        Data         => {
            %Param,
        },
    );

    $Output .= $Self->{LayoutObject}->Footer();
    return $Output;
}

sub _DynamicFieldsListShow {
    my ( $Self, %Param ) = @_;

    # check start option, if higher than fields available, set
    # it to the last field page
    my $StartHit = $Self->{ParamObject}->GetParam( Param => 'StartHit' ) || 1;

    # get personal page shown count
    my $PageShownPreferencesKey = 'AdminDynamicFieldsOverviewPageShown';
    my $PageShown               = $Self->{$PageShownPreferencesKey} || 10;
    my $Group                   = 'DynamicFieldsOverviewPageShown';

    # get data selection
    my %Data;
    my $Config = $Self->{ConfigObject}->Get('PreferencesGroups');
    if ( $Config && $Config->{$Group} && $Config->{$Group}->{Data} ) {
        %Data = %{ $Config->{$Group}->{Data} };
    }

    # calculate max. shown per page
    if ( $StartHit > $Param{Total} ) {
        my $Pages = int( ( $Param{Total} / $PageShown ) + 0.99999 );
        $StartHit = ( ( $Pages - 1 ) * $PageShown ) + 1;
    }

    # build nav bar
    my $Limit = $Param{Limit} || 20_000;
    my %PageNav = $Self->{LayoutObject}->PageNavBar(
        Limit     => $Limit,
        StartHit  => $StartHit,
        PageShown => $PageShown,
        AllHits   => $Param{Total} || 0,
        Action    => 'Action=' . $Self->{LayoutObject}->{Action},
        Link      => $Param{LinkPage},
        IDPrefix  => $Self->{LayoutObject}->{Action},
    );

    # build shown ticket per page
    $Param{RequestedURL}    = "Action=$Self->{Action}";
    $Param{Group}           = $Group;
    $Param{PreferencesKey}  = $PageShownPreferencesKey;
    $Param{PageShownString} = $Self->{LayoutObject}->BuildSelection(
        Name        => $PageShownPreferencesKey,
        SelectedID  => $PageShown,
        Translation => 0,
        Data        => \%Data,
    );

    if (%PageNav) {
        $Self->{LayoutObject}->Block(
            Name => 'OverviewNavBarPageNavBar',
            Data => \%PageNav,
        );

        $Self->{LayoutObject}->Block(
            Name => 'ContextSettings',
            Data => { %PageNav, %Param, },
        );
    }

    # check if at least 1 dynamic field is registered in the system
    if ( $Param{Total} ) {

        # get dynamic fields details
        my $Counter = 0;
        for my $DynamicFieldID ( keys %{ $Param{DynamicFields} } ) {
            $Counter++;
            if ( $Counter >= $StartHit && $Counter < ( $PageShown + $StartHit ) ) {

                my $DynamicFieldData = $Self->{DynamicFieldObject}->DynamicFieldGet(
                    ID => $DynamicFieldID,
                );

                # convert ValidID to Validity string
                my $Valid = $Self->{ValidObject}->ValidLookup(
                    ValidID => $DynamicFieldData->{ValidID},
                );

                # convert BelongsArticle to object string
                my $Object = 'Ticket';
                if ( $DynamicFieldData->{ValidID} && $DynamicFieldData->{BelongsToArticle} eq 1 ) {
                    $Object = 'Article';
                }

                # get the field backend dialog
                my $BackendDialog =
                    $Param{ $Object . 'FieldsConfig' }->{ $DynamicFieldData->{Type} } || '';

                # print each dinamic field row
                $Self->{LayoutObject}->Block(
                    Name => 'DynamicFieldsRow',
                    Data => {
                        %{$DynamicFieldData},
                        Valid         => $Valid,
                        Object        => $Object,
                        BackendDialog => $BackendDialog,
                    },
                );
            }
        }
    }

    # otherwise show a no data found message
    else {
        $Self->{LayoutObject}->Block(
            Name => 'NoDataFound',
            Data => \%Param,
        );
    }
    return;
}

1;
