# --
# Kernel/GenericInterface/Operation/Ticket/TicketSearch.pm - GenericInterface Ticket Get operation backend
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: TicketSearch.pm,v 1.2 2012-01-07 00:06:37 cg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::GenericInterface::Operation::Ticket::TicketSearch;

use strict;
use warnings;

use MIME::Base64;
use Kernel::System::Ticket;
use Kernel::GenericInterface::Operation::Ticket::Common;
use Kernel::System::VariableCheck qw(IsArrayRefWithData IsHashRefWithData IsStringWithData);

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

=head1 NAME

Kernel::GenericInterface::Operation::Ticket::TicketSearch - GenericInterface Ticket Get Operation backend

=head1 SYNOPSIS

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

usually, you want to create an instance of this
by using Kernel::GenericInterface::Operation->new();

=cut

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Needed (
        qw(DebuggerObject ConfigObject MainObject LogObject TimeObject DBObject EncodeObject WebserviceID)
        )
    {
        if ( !$Param{$Needed} ) {
            return {
                Success      => 0,
                ErrorMessage => "Got no $Needed!"
            };
        }

        $Self->{$Needed} = $Param{$Needed};
    }

    # create additional objects
    $Self->{TicketCommonObject}
        = Kernel::GenericInterface::Operation::Ticket::Common->new( %{$Self} );
    $Self->{TicketObject} = Kernel::System::Ticket->new( %{$Self} );

    return $Self;
}

=item Run()

perform TicketSearch Operation. This will return a Ticket entry.

    my $Result = $OperationObject->Run(
        Data => {
            TicketID => '32,33',
            DynamicFields     => 0, # Optional, 0 as default
            Extended          => 1, # Optional 0 as default
            AllArticles       => 1, # Optional 0 as default
            ArticleSenderType => [ $ArticleSenderType1, $ArticleSenderType2 ], # Optional, only requested article sender types
            ArticleOrder      => 'DESC', # Optional, DESC,ASC - default is ASC
            ArticleLimit      => 5, # Optional
            Attachments       => 1, # Optional, 1 as default
        },
    );

    $Result = {
        Success      => 1,                                # 0 or 1
        ErrorMessage => '',                               # In case of an error
        Data         => {},
    };

=cut

sub Run {
    my ( $Self, %Param ) = @_;

    my ( $UserID, $UserType ) = $Self->{TicketCommonObject}->Auth(
        %Param
    );

    return $Self->{TicketCommonObject}->ReturnError(
        ErrorCode    => 'TicketSearch.AuthFail',
        ErrorMessage => "TicketSearch: Authorization failing!",
    ) if !$UserID;

    # check needed stuff
    for my $Needed (qw(TicketID)) {
        if ( !$Param{Data}->{$Needed} ) {
            return $Self->{TicketCommonObject}->ReturnError(
                ErrorCode    => 'TicketSearch.MissingParameter',
                ErrorMessage => "TicketSearch: $Needed parameter is missing!",
            );
        }
    }
    my $ErrorMessage = '';

    # all needed variables
    my $ReturnData = {
        Success => 1,
    };
    my @Item;
    $Self->{SearchLimit} = $Self->{Config}->{SearchLimit} || 500;
    $Self->{SortBy} = $Param{Data}->{SortBy}
        || $Self->{Config}->{'SortBy::Default'}
        || 'Age';
    $Self->{OrderBy} = $Param{Data}->{OrderBy}
        || $Self->{Config}->{'Order::Default'}
        || 'Down';

    # get parameter from data
    my %GetParam = $Self->_GetParams( %{ $Param{Data} } );

    # create time settings
    %GetParam = $Self->_CreateTimeSettings(%GetParam);

    my %AttributeLookup;

    # create attibute lookup table
    for my $Attribute ( @{ $GetParam{ShownAttributes} || [] } ) {
        $AttributeLookup{$Attribute} = 1;
    }

    # dynamic fields search parameters for ticket search
    my %DynamicFieldSearchParameters;

    # cycle trough the activated Dynamic Fields for this screen
    DYNAMICFIELD:
    for my $DynamicFieldConfig ( @{ $Self->{DynamicField} } ) {
        next DYNAMICFIELD if !IsHashRefWithData($DynamicFieldConfig);
        next DYNAMICFIELD
            if !$AttributeLookup{ 'LabelSearch_DynamicField_' . $DynamicFieldConfig->{Name} };

        # extract the dynamic field value form the profile
        my $SearchParameter = $Self->{BackendObject}->SearchFieldParameterBuild(
            DynamicFieldConfig => $DynamicFieldConfig,
            Profile            => \%GetParam,
            LayoutObject       => $Self->{LayoutObject},
        );

        # set search parameter
        if ( defined $SearchParameter ) {
            $DynamicFieldSearchParameters{ 'DynamicField_' . $DynamicFieldConfig->{Name} }
                = $SearchParameter->{Parameter};
        }

        # set value to display
    }

    # perform ticket search
    my @TicketIDs = $Self->{TicketObject}->TicketSearch(
        Result              => 'ARRAY',
        SortBy              => $Self->{SortBy},
        OrderBy             => $Self->{OrderBy},
        Limit               => $Self->{SearchLimit},
        UserID              => $UserID,
        ConditionInline     => $Self->{Config}->{ExtendedSearchCondition},
        ContentSearchPrefix => '*',
        ContentSearchSuffix => '*',
        FullTextIndex       => 1,
        %GetParam,
        %DynamicFieldSearchParameters,
    );

    if ( !IsArrayRefWithData( \@TicketIDs ) ) {

        $ErrorMessage = 'Could not get Ticket data'
            . ' in Kernel::GenericInterface::Operation::Ticket::TicketSearch::Run()';

        return $Self->{TicketCommonObject}->ReturnError(
            ErrorCode    => 'TicketSearch.NotTicketData',
            ErrorMessage => "TicketSearch: $ErrorMessage",
        );

    }

    # set ticket data into return structure
    $ReturnData->{Data}->{Item} = \@TicketIDs;

    # return result
    return $ReturnData;
}

=begin Internal:

=item _GetParams()

get search parameters.

    my %GetParam = GetParams(
        %Params,                          # all ticket parameters
    );

    returns:

    %GetParam = {
        Success => 1,                               # if everething is OK
    }

=cut

sub _GetParams {
    my ( $Self, %Param ) = @_;

    # get single params
    my %GetParam;

    for my $Item (
        qw(TicketNumber Title From To Cc Subject Body CustomerID CustomerUserLogin StateType
        Agent ResultForm TimeSearchType ChangeTimeSearchType CloseTimeSearchType UseSubQueues
        ArticleTimeSearchType SearchInArchive
        Fulltext ShownAttributes
        ArticleCreateTimePointFormat ArticleCreateTimePoint
        ArticleCreateTimePointStart
        ArticleCreateTimeStart ArticleCreateTimeStartDay ArticleCreateTimeStartMonth
        ArticleCreateTimeStartYear
        ArticleCreateTimeStop ArticleCreateTimeStopDay ArticleCreateTimeStopMonth
        ArticleCreateTimeStopYear
        TicketCreateTimePointFormat TicketCreateTimePoint
        TicketCreateTimePointStart
        TicketCreateTimeStart TicketCreateTimeStartDay TicketCreateTimeStartMonth
        TicketCreateTimeStartYear
        TicketCreateTimeStop TicketCreateTimeStopDay TicketCreateTimeStopMonth
        TicketCreateTimeStopYear
        TicketChangeTimePointFormat TicketChangeTimePoint
        TicketChangeTimePointStart
        TicketChangeTimeStart TicketChangeTimeStartDay TicketChangeTimeStartMonth
        TicketChangeTimeStartYear
        TicketChangeTimeStop TicketChangeTimeStopDay TicketChangeTimeStopMonth
        TicketChangeTimeStopYear
        TicketCloseTimePointFormat TicketCloseTimePoint
        TicketCloseTimePointStart
        TicketCloseTimeStart TicketCloseTimeStartDay TicketCloseTimeStartMonth
        TicketCloseTimeStartYear
        TicketCloseTimeStop TicketCloseTimeStopDay TicketCloseTimeStopMonth
        TicketCloseTimeStopYear
        )
        )
    {

        # get search string params (get submitted params)
        $GetParam{$Item} = $Param{$Item};

        # remove white space on the start and end
        if ( $GetParam{$Item} ) {
            $GetParam{$Item} =~ s/\s+$//g;
            $GetParam{$Item} =~ s/^\s+//g;
        }
    }

    # get array params
    for my $Item (
        qw(StateIDs StateTypeIDs QueueIDs PriorityIDs OwnerIDs
        CreatedQueueIDs CreatedUserIDs WatchUserIDs ResponsibleIDs
        TypeIDs ServiceIDs SLAIDs LockIDs)
        )
    {

        # get search array params
        my @Values;
        if ( IsArrayRefWithData( $Param{$Item} ) ) {
            @Values = @{ $Param{$Item} };
        }
        elsif ( IsStringWithData() ) {
            @Values = ( $Param{$Item} );
        }
        $GetParam{$Item} = \@Values if scalar @Values;
    }

    return %GetParam;

}

=item _CreateTimeSettings()

get search parameters.

    my %GetParam = _CreateTimeSettings(
        %Params,                          # all ticket parameters
    );

    returns:

    %GetParam = {
        Success => 1,                               # if everething is OK
    }

=cut

sub _CreateTimeSettings {
    my ( $Self, %Param ) = @_;

    # get single params
    my %GetParam = %Param;

    # get close time settings
    if ( !$GetParam{ChangeTimeSearchType} ) {

        # do nothing on time stuff
        return %GetParam;
    }
    elsif ( $GetParam{ChangeTimeSearchType} eq 'TimeSlot' ) {
        for (qw(Month Day)) {
            $GetParam{"TicketChangeTimeStart$_"}
                = sprintf( "%02d", $GetParam{"TicketChangeTimeStart$_"} );
        }
        for (qw(Month Day)) {
            $GetParam{"TicketChangeTimeStop$_"}
                = sprintf( "%02d", $GetParam{"TicketChangeTimeStop$_"} );
        }
        if (
            $GetParam{TicketChangeTimeStartDay}
            && $GetParam{TicketChangeTimeStartMonth}
            && $GetParam{TicketChangeTimeStartYear}
            )
        {
            $GetParam{TicketChangeTimeNewerDate}
                = $GetParam{TicketChangeTimeStartYear} . '-'
                . $GetParam{TicketChangeTimeStartMonth} . '-'
                . $GetParam{TicketChangeTimeStartDay}
                . ' 00:00:00';
        }
        if (
            $GetParam{TicketChangeTimeStopDay}
            && $GetParam{TicketChangeTimeStopMonth}
            && $GetParam{TicketChangeTimeStopYear}
            )
        {
            $GetParam{TicketChangeTimeOlderDate}
                = $GetParam{TicketChangeTimeStopYear} . '-'
                . $GetParam{TicketChangeTimeStopMonth} . '-'
                . $GetParam{TicketChangeTimeStopDay}
                . ' 23:59:59';
        }
    }
    elsif ( $GetParam{ChangeTimeSearchType} eq 'TimePoint' ) {
        if (
            $GetParam{TicketChangeTimePoint}
            && $GetParam{TicketChangeTimePointStart}
            && $GetParam{TicketChangeTimePointFormat}
            )
        {
            my $Time = 0;
            if ( $GetParam{TicketChangeTimePointFormat} eq 'minute' ) {
                $Time = $GetParam{TicketChangeTimePoint};
            }
            elsif ( $GetParam{TicketChangeTimePointFormat} eq 'hour' ) {
                $Time = $GetParam{TicketChangeTimePoint} * 60;
            }
            elsif ( $GetParam{TicketChangeTimePointFormat} eq 'day' ) {
                $Time = $GetParam{TicketChangeTimePoint} * 60 * 24;
            }
            elsif ( $GetParam{TicketChangeTimePointFormat} eq 'week' ) {
                $Time = $GetParam{TicketChangeTimePoint} * 60 * 24 * 7;
            }
            elsif ( $GetParam{TicketChangeTimePointFormat} eq 'month' ) {
                $Time = $GetParam{TicketChangeTimePoint} * 60 * 24 * 30;
            }
            elsif ( $GetParam{TicketChangeTimePointFormat} eq 'year' ) {
                $Time = $GetParam{TicketChangeTimePoint} * 60 * 24 * 365;
            }
            if ( $GetParam{TicketChangeTimePointStart} eq 'Before' ) {
                $GetParam{TicketChangeTimeOlderMinutes} = $Time;
            }
            else {
                $GetParam{TicketChangeTimeNewerMinutes} = $Time;
            }
        }
    }

    # get close time settings
    if ( !$GetParam{CloseTimeSearchType} ) {

        # do nothing on time stuff
    }
    elsif ( $GetParam{CloseTimeSearchType} eq 'TimeSlot' ) {
        for (qw(Month Day)) {
            $GetParam{"TicketCloseTimeStart$_"}
                = sprintf( "%02d", $GetParam{"TicketCloseTimeStart$_"} );
        }
        for (qw(Month Day)) {
            $GetParam{"TicketCloseTimeStop$_"}
                = sprintf( "%02d", $GetParam{"TicketCloseTimeStop$_"} );
        }
        if (
            $GetParam{TicketCloseTimeStartDay}
            && $GetParam{TicketCloseTimeStartMonth}
            && $GetParam{TicketCloseTimeStartYear}
            )
        {
            $GetParam{TicketCloseTimeNewerDate}
                = $GetParam{TicketCloseTimeStartYear} . '-'
                . $GetParam{TicketCloseTimeStartMonth} . '-'
                . $GetParam{TicketCloseTimeStartDay}
                . ' 00:00:00';
        }
        if (
            $GetParam{TicketCloseTimeStopDay}
            && $GetParam{TicketCloseTimeStopMonth}
            && $GetParam{TicketCloseTimeStopYear}
            )
        {
            $GetParam{TicketCloseTimeOlderDate}
                = $GetParam{TicketCloseTimeStopYear} . '-'
                . $GetParam{TicketCloseTimeStopMonth} . '-'
                . $GetParam{TicketCloseTimeStopDay}
                . ' 23:59:59';
        }
    }
    elsif ( $GetParam{CloseTimeSearchType} eq 'TimePoint' ) {
        if (
            $GetParam{TicketCloseTimePoint}
            && $GetParam{TicketCloseTimePointStart}
            && $GetParam{TicketCloseTimePointFormat}
            )
        {
            my $Time = 0;
            if ( $GetParam{TicketCloseTimePointFormat} eq 'minute' ) {
                $Time = $GetParam{TicketCloseTimePoint};
            }
            elsif ( $GetParam{TicketCloseTimePointFormat} eq 'hour' ) {
                $Time = $GetParam{TicketCloseTimePoint} * 60;
            }
            elsif ( $GetParam{TicketCloseTimePointFormat} eq 'day' ) {
                $Time = $GetParam{TicketCloseTimePoint} * 60 * 24;
            }
            elsif ( $GetParam{TicketCloseTimePointFormat} eq 'week' ) {
                $Time = $GetParam{TicketCloseTimePoint} * 60 * 24 * 7;
            }
            elsif ( $GetParam{TicketCloseTimePointFormat} eq 'month' ) {
                $Time = $GetParam{TicketCloseTimePoint} * 60 * 24 * 30;
            }
            elsif ( $GetParam{TicketCloseTimePointFormat} eq 'year' ) {
                $Time = $GetParam{TicketCloseTimePoint} * 60 * 24 * 365;
            }
            if ( $GetParam{TicketCloseTimePointStart} eq 'Before' ) {
                $GetParam{TicketCloseTimeOlderMinutes} = $Time;
            }
            else {
                $GetParam{TicketCloseTimeNewerMinutes} = $Time;
            }
        }
    }

    # Special behaviour for the fulltext search toolbar module:
    # - Check full text string to see if contents is a ticket number.
    # - If exists and not in print or CSV mode, redirect to the ticket.
    # See http://bugs.otrs.org/show_bug.cgi?id=4238 for details.
    #   The original problem was that tickets with customer reply will be
    #   found by a fulltext search (ticket number is in the subjects), but
    #   'new' tickets will not be found.
    if (
        $GetParam{Fulltext}
        && $Self->{ParamObject}->GetParam( Param => 'CheckTicketNumberAndRedirect' )
        && $GetParam{ResultForm} ne 'Normal'
        && $GetParam{ResultForm} ne 'Print'
        )
    {
        my $TicketID = $Self->{TicketObjectSearch}->TicketIDLookup(
            TicketNumber => $GetParam{Fulltext},
            UserID       => $Self->{UserID},
        );
        if ($TicketID) {
            return $Self->{LayoutObject}->Redirect(
                OP => "Action=AgentTicketZoom;TicketID=$TicketID",
            );
        }
    }

    # prepare full text search
    if ( $GetParam{Fulltext} ) {
        $GetParam{ContentSearch} = 'OR';
        for (qw(From To Cc Subject Body)) {
            $GetParam{$_} = $GetParam{Fulltext};
        }
    }

    # prepare archive flag
    if ( $Self->{ConfigObject}->Get('Ticket::ArchiveSystem') ) {

        $GetParam{SearchInArchive} ||= '';
        if ( $GetParam{SearchInArchive} eq 'AllTickets' ) {
            $GetParam{ArchiveFlags} = [ 'y', 'n' ];
        }
        elsif ( $GetParam{SearchInArchive} eq 'ArchivedTickets' ) {
            $GetParam{ArchiveFlags} = ['y'];
        }
        else {
            $GetParam{ArchiveFlags} = ['n'];
        }
    }

    return %GetParam;

}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut

=head1 VERSION

$Revision: 1.2 $ $Date: 2012-01-07 00:06:37 $

=cut
