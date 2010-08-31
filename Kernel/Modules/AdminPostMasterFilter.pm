# --
# Kernel/Modules/AdminPostMasterFilter.pm - to add/update/delete filters
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AdminPostMasterFilter.pm,v 1.32 2010-08-31 16:21:54 cg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AdminPostMasterFilter;

use strict;
use warnings;

use Kernel::System::PostMaster::Filter;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.32 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(ParamObject DBObject LayoutObject ConfigObject LogObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    $Self->{PostMasterFilter} = Kernel::System::PostMaster::Filter->new(%Param);

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $Name           = $Self->{ParamObject}->GetParam( Param => 'Name' );
    my $OldName        = $Self->{ParamObject}->GetParam( Param => 'OldName' );
    my $StopAfterMatch = $Self->{ParamObject}->GetParam( Param => 'StopAfterMatch' ) || 0;
    my %GetParam = ();
    for ( 1 .. 12 ) {
        $GetParam{"MatchHeader$_"} = $Self->{ParamObject}->GetParam( Param => "MatchHeader$_" );
        $GetParam{"MatchValue$_"}  = $Self->{ParamObject}->GetParam( Param => "MatchValue$_" );
        $GetParam{"SetHeader$_"}   = $Self->{ParamObject}->GetParam( Param => "SetHeader$_" );
        $GetParam{"SetValue$_"}    = $Self->{ParamObject}->GetParam( Param => "SetValue$_" );
    }

    # ------------------------------------------------------------ #
    # delete
    # ------------------------------------------------------------ #
    if ( $Self->{Subaction} eq 'Delete' ) {
        if ( !$Self->{PostMasterFilter}->FilterDelete( Name => $Name ) ) {
            return $Self->{LayoutObject}->ErrorScreen();
        }
        return $Self->{LayoutObject}->Redirect( OP => "Action=$Self->{Action}" );
    }

    # ------------------------------------------------------------ #
    # add action
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'AddAction' ) {
        return $Self->_MaskUpdate( Data => {} );
    }

    # ------------------------------------------------------------ #
    # update
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'Update' ) {
        my %Data = $Self->{PostMasterFilter}->FilterGet( Name => $Name );
        if ( !%Data ) {
            return $Self->{LayoutObject}->ErrorScreen( Message => "No such filter: $Name" );
        }
        return $Self->_MaskUpdate(
            Name => $Name,
            Data => \%Data,
        );
    }

    # ------------------------------------------------------------ #
    # update action
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'UpdateAction' ) {

        # challenge token check for write action
        $Self->{LayoutObject}->ChallengeTokenCheck();

        my %Match = ();
        my %Set   = ();
        for ( 1 .. 12 ) {
            if ( $GetParam{"MatchHeader$_"} && $GetParam{"MatchValue$_"} ) {
                $Match{ $GetParam{"MatchHeader$_"} } = $GetParam{"MatchValue$_"};
            }
            if ( $GetParam{"SetHeader$_"} && $GetParam{"SetValue$_"} ) {
                $Set{ $GetParam{"SetHeader$_"} } = $GetParam{"SetValue$_"};
            }
        }
        my %Invalid = ();
        if (%Match) {
            my $InvalidCount = 0;
            for ( sort keys %Match ) {
                $InvalidCount++;
                my $I = $Match{$_};
                if ( !eval { $I =~ /(.|$Match{$_})/i } ) {
                    $Invalid{ 'InvalidMatch' . $InvalidCount } = 'invalid';
                }
            }
        }
        if ( !%Set ) {
            $Invalid{'InvalidSet1'} = 'invalid';
        }
        if ( !%Match ) {
            $Invalid{'InvalidMatch1'} = 'invalid';
        }

        # Name validation
        my $NameServerError = '';
        if ( $Name eq '' ) {
            $NameServerError = 'ServerError';
        }

        if ( %Invalid || $NameServerError ) {
            return $Self->_MaskUpdate(
                Name => $Name,
                Data => {
                    %Invalid,
                    Name            => $Name,
                    Set             => \%Set,
                    Match           => \%Match,
                    StopAfterMatch  => $StopAfterMatch,
                    NameServerError => $NameServerError,
                },
            );
        }
        $Self->{PostMasterFilter}->FilterDelete( Name => $OldName );
        $Self->{PostMasterFilter}->FilterAdd(
            Name           => $Name,
            Match          => \%Match,
            Set            => \%Set,
            StopAfterMatch => $StopAfterMatch,
        );
        return $Self->{LayoutObject}->Redirect( OP => "Action=$Self->{Action}" );
    }

    # ------------------------------------------------------------ #
    # overview
    # ------------------------------------------------------------ #
    else {
        my %List = $Self->{PostMasterFilter}->FilterList();

        $Self->{LayoutObject}->Block(
            Name => 'Overview',
            Data => { %Param, },
        );
        $Self->{LayoutObject}->Block( Name => 'ActionList' );
        $Self->{LayoutObject}->Block( Name => 'ActionAdd' );

        $Self->{LayoutObject}->Block(
            Name => 'OverviewResult',
            Data => { %Param, },
        );
        if (%List) {
            for my $Key ( sort keys %List ) {
                $Self->{LayoutObject}->Block(
                    Name => 'OverviewResultRow',
                    Data => { Name => $Key, },
                );
            }
        }
        else {
            $Self->{LayoutObject}->Block(
                Name => 'NoDataFoundMsg',
                Data => {},
            );
        }

        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminPostMasterFilter',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}

sub _MaskUpdate {
    my ( $Self, %Param ) = @_;

    my %Data    = %{ $Param{Data} };
    my $Counter = 0;
    if ( $Data{Match} ) {
        for ( sort keys %{ $Data{Match} } ) {
            if ( $_ && $Data{Match}->{$_} ) {
                $Counter++;
                $Data{"MatchValue$Counter"}  = $Data{Match}->{$_};
                $Data{"MatchHeader$Counter"} = $_;
            }
        }
    }
    $Counter = 0;
    if ( $Data{Set} ) {
        for ( sort keys %{ $Data{Set} } ) {
            if ( $_ && $Data{Set}->{$_} ) {
                $Counter++;
                $Data{"SetValue$Counter"}  = $Data{Set}->{$_};
                $Data{"SetHeader$Counter"} = $_;
            }
        }
    }

    my $Output = $Self->{LayoutObject}->Header();
    $Output .= $Self->{LayoutObject}->NavigationBar();

    $Self->{LayoutObject}->Block( Name => 'Overview' );
    $Self->{LayoutObject}->Block( Name => 'ActionList' );
    $Self->{LayoutObject}->Block( Name => 'ActionOverview' );

    # all headers
    my %Header = ();
    for ( @{ $Self->{ConfigObject}->Get('PostmasterX-Header') } ) {
        $Header{$_} = $_;
    }
    $Header{''} = '-';
    $Header{Body} = 'Body';

    # otrs header
    my %SetHeader = ();
    for ( keys %Header ) {
        if ( $_ =~ /^x-otrs/i ) {
            $SetHeader{$_} = $_;
        }
    }
    $SetHeader{''} = '-';

    # build strings
    for ( 1 .. 12 ) {
        $Data{"MatchHeader$_"} = $Self->{LayoutObject}->BuildSelection(
            Data                => \%Header,
            Name                => "MatchHeader$_",
            SelectedID          => $Data{"MatchHeader$_"},
            LanguageTranslation => 0,
            HTMLQuote           => 1,
        );
        $Data{"SetHeader$_"} = $Self->{LayoutObject}->BuildSelection(
            Data                => \%SetHeader,
            Name                => "SetHeader$_",
            SelectedID          => $Data{"SetHeader$_"},
            LanguageTranslation => 0,
            HTMLQuote           => 1,
        );
    }
    $Data{"StopAfterMatch"} = $Self->{LayoutObject}->BuildSelection(
        Data => { 0 => 'No', 1 => 'Yes' },
        Name => 'StopAfterMatch',
        SelectedID          => $Data{StopAfterMatch},
        LanguageTranslation => 1,
        HTMLQuote           => 1,
    );

    $Self->{LayoutObject}->Block(
        Name => 'OverviewUpdate',
        Data => { %Param, %Data, OldName => $Data{Name}, },
    );

    # shows header
    if ( $Self->{Subaction} eq 'AddAction' ) {
        $Self->{LayoutObject}->Block( Name => 'HeaderAdd' );
    }
    else {
        $Self->{LayoutObject}->Block( Name => 'HeaderEdit' );
    }

    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'AdminPostMasterFilter',
        Data         => \%Param,
    );
    $Output .= $Self->{LayoutObject}->Footer();
    return $Output;
}

1;
