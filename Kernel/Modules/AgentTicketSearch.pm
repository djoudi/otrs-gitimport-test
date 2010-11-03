# --
# Kernel/Modules/AgentTicketSearch.pm - Utilities for tickets
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AgentTicketSearch.pm,v 1.103 2010-11-03 08:06:17 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AgentTicketSearch;

use strict;
use warnings;

use Kernel::System::CustomerUser;
use Kernel::System::Priority;
use Kernel::System::SearchProfile;
use Kernel::System::Service;
use Kernel::System::SLA;
use Kernel::System::State;
use Kernel::System::Type;
use Kernel::System::CSV;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.103 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check needed objects
    for (
        qw(ParamObject DBObject TicketObject LayoutObject LogObject ConfigObject MainObject EncodeObject)
        )
    {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }
    $Self->{CustomerUserObject}  = Kernel::System::CustomerUser->new(%Param);
    $Self->{PriorityObject}      = Kernel::System::Priority->new(%Param);
    $Self->{StateObject}         = Kernel::System::State->new(%Param);
    $Self->{SearchProfileObject} = Kernel::System::SearchProfile->new(%Param);
    $Self->{ServiceObject}       = Kernel::System::Service->new(%Param);
    $Self->{SLAObject}           = Kernel::System::SLA->new(%Param);
    $Self->{TypeObject}          = Kernel::System::Type->new(%Param);
    $Self->{CSVObject}           = Kernel::System::CSV->new(%Param);
    $Self->{LockObject}          = Kernel::System::Lock->new(%Param);

    # if we need to do a fulltext search on an external mirror database
    if ( $Self->{ConfigObject}->Get('Core::MirrorDB::DSN') ) {
        my $ExtraDatabaseObject = Kernel::System::DB->new(
            LogObject    => $Param{LogObject},
            ConfigObject => $Param{ConfigObject},
            MainObject   => $Param{MainObject},
            EncodeObject => $Param{EncodeObject},
            DatabaseDSN  => $Self->{ConfigObject}->Get('Core::MirrorDB::DSN'),
            DatabaseUser => $Self->{ConfigObject}->Get('Core::MirrorDB::User'),
            DatabasePw   => $Self->{ConfigObject}->Get('Core::MirrorDB::Password'),
        );
        if ( !$ExtraDatabaseObject ) {
            $Self->{LayoutObject}->FatalError();
        }
        $Self->{TicketObjectSearch} = Kernel::System::Ticket->new(
            %Param,
            DBObject => $ExtraDatabaseObject,
        );
    }
    else {
        $Self->{TicketObjectSearch} = $Self->{TicketObject};
    }

    $Self->{Config} = $Self->{ConfigObject}->Get("Ticket::Frontend::$Self->{Action}");

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $Output;

    # get config data
    $Self->{StartHit} = int( $Self->{ParamObject}->GetParam( Param => 'StartHit' ) || 1 );
    $Self->{SearchLimit} = $Self->{Config}->{SearchLimit} || 500;
    $Self->{SortBy} = $Self->{ParamObject}->GetParam( Param => 'SortBy' )
        || $Self->{Config}->{'SortBy::Default'}
        || 'Age';
    $Self->{OrderBy} = $Self->{ParamObject}->GetParam( Param => 'OrderBy' )
        || $Self->{Config}->{'Order::Default'}
        || 'Down';
    $Self->{Profile}        = $Self->{ParamObject}->GetParam( Param => 'Profile' )        || '';
    $Self->{SaveProfile}    = $Self->{ParamObject}->GetParam( Param => 'SaveProfile' )    || '';
    $Self->{TakeLastSearch} = $Self->{ParamObject}->GetParam( Param => 'TakeLastSearch' ) || '';
    $Self->{SelectTemplate} = $Self->{ParamObject}->GetParam( Param => 'SelectTemplate' ) || '';
    $Self->{EraseTemplate}  = $Self->{ParamObject}->GetParam( Param => 'EraseTemplate' )  || '';

    # check request
    if ( $Self->{Subaction} eq 'OpenSearchDescriptionTicketNumber' ) {
        my $Output = $Self->{LayoutObject}->Output(
            TemplateFile => 'AgentTicketSearchOpenSearchDescriptionTicketNumber',
            Data         => \%Param,
        );
        return $Self->{LayoutObject}->Attachment(
            Filename    => 'OpenSearchDescriptionTicketNumber.xml',
            ContentType => 'text/xml',
            Content     => $Output,
            Type        => 'inline',
        );
    }
    if ( $Self->{Subaction} eq 'OpenSearchDescriptionFulltext' ) {
        my $Output = $Self->{LayoutObject}->Output(
            TemplateFile => 'AgentTicketSearchOpenSearchDescriptionFulltext',
            Data         => \%Param,
        );
        return $Self->{LayoutObject}->Attachment(
            Filename    => 'OpenSearchDescriptionFulltext.xml',
            ContentType => 'text/xml',
            Content     => $Output,
            Type        => 'inline',
        );
    }

    # check request
    if ( $Self->{ParamObject}->GetParam( Param => 'SearchTemplate' ) && $Self->{Profile} ) {
        return $Self->{LayoutObject}->Redirect(
            OP =>
                "Action=AgentTicketSearch;Subaction=Search;TakeLastSearch=1;SaveProfile=1;Profile=$Self->{Profile}"
        );
    }

    # get single params
    my %GetParam;

    # load profiles string params (press load profile)
    if ( ( $Self->{Subaction} eq 'LoadProfile' && $Self->{Profile} ) || $Self->{TakeLastSearch} ) {
        %GetParam = $Self->{SearchProfileObject}->SearchProfileGet(
            Base      => 'TicketSearch',
            Name      => $Self->{Profile},
            UserLogin => $Self->{UserLogin},
        );
    }

    # get search string params (get submitted params)
    else {
        for (
            qw(TicketNumber Title From To Cc Subject Body CustomerID CustomerUserLogin StateType
            Agent ResultForm TimeSearchType ChangeTimeSearchType CloseTimeSearchType UseSubQueues
            ArticleTimeSearchType SearchInArchive
            Fulltext
            TicketFreeTime1
            TicketFreeTime1Start TicketFreeTime1StartDay TicketFreeTime1StartMonth
            TicketFreeTime1StartYear
            TicketFreeTime1Stop TicketFreeTime1StopDay TicketFreeTime1StopMonth
            TicketFreeTime1StopYear
            TicketFreeTime2
            TicketFreeTime2Start TicketFreeTime2StartDay TicketFreeTime2StartMonth
            TicketFreeTime2StartYear
            TicketFreeTime2Stop TicketFreeTime2StopDay TicketFreeTime2StopMonth
            TicketFreeTime2StopYear
            TicketFreeTime3
            TicketFreeTime3Start TicketFreeTime3StartDay TicketFreeTime3StartMonth
            TicketFreeTime3StartYear
            TicketFreeTime3Stop TicketFreeTime3StopDay TicketFreeTime3StopMonth
            TicketFreeTime3StopYear
            TicketFreeTime4
            TicketFreeTime4Start TicketFreeTime4StartDay TicketFreeTime4StartMonth
            TicketFreeTime4StartYear
            TicketFreeTime4Stop TicketFreeTime4StopDay TicketFreeTime4StopMonth
            TicketFreeTime4StopYear
            TicketFreeTime5
            TicketFreeTime5Start TicketFreeTime5StartDay TicketFreeTime5StartMonth
            TicketFreeTime5StartYear
            TicketFreeTime5Stop TicketFreeTime5StopDay TicketFreeTime5StopMonth
            TicketFreeTime5StopYear
            TicketFreeTime6
            TicketFreeTime6Start TicketFreeTime6StartDay TicketFreeTime6StartMonth
            TicketFreeTime6StartYear
            TicketFreeTime6Stop TicketFreeTime6StopDay TicketFreeTime6StopMonth
            TicketFreeTime6StopYear
            TicketFreeTime7
            TicketFreeTime7Start TicketFreeTime7StartDay TicketFreeTime7StartMonth
            TicketFreeTime7StartYear
            TicketFreeTime7Stop TicketFreeTime7StopDay TicketFreeTime7StopMonth
            TicketFreeTime7StopYear
            TicketFreeTime8
            TicketFreeTime8Start TicketFreeTime8StartDay TicketFreeTime8StartMonth
            TicketFreeTime8StartYear
            TicketFreeTime8Stop TicketFreeTime8StopDay TicketFreeTime8StopMonth
            TicketFreeTime8StopYear
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
            $GetParam{$_} = $Self->{ParamObject}->GetParam( Param => $_ );

            # remove white space on the start and end
            if ( $GetParam{$_} ) {
                $GetParam{$_} =~ s/\s+$//g;
                $GetParam{$_} =~ s/^\s+//g;
            }
        }

        # get array params
        for (
            qw(StateIDs StateTypeIDs QueueIDs PriorityIDs OwnerIDs
            CreatedQueueIDs CreatedUserIDs WatchUserIDs ResponsibleIDs
            TypeIDs ServiceIDs SLAIDs LockIDs
            TicketFreeKey1 TicketFreeText1 TicketFreeKey2 TicketFreeText2
            TicketFreeKey3 TicketFreeText3 TicketFreeKey4 TicketFreeText4
            TicketFreeKey5 TicketFreeText5 TicketFreeKey6 TicketFreeText6
            TicketFreeKey7 TicketFreeText7 TicketFreeKey8 TicketFreeText8
            TicketFreeKey9 TicketFreeText9 TicketFreeKey10 TicketFreeText10
            TicketFreeKey11 TicketFreeText11 TicketFreeKey12 TicketFreeText12
            TicketFreeKey13 TicketFreeText13 TicketFreeKey14 TicketFreeText14
            TicketFreeKey15 TicketFreeText15 TicketFreeKey16 TicketFreeText16)
            )
        {

            # get search array params (get submitted params)
            my @Array = $Self->{ParamObject}->GetArray( Param => $_ );
            if (@Array) {
                $GetParam{$_} = \@Array;
            }
        }
    }

    # get article create time option
    if ( !$GetParam{ArticleTimeSearchType} ) {
        $GetParam{'ArticleTimeSearchType::None'} = 1;
    }
    elsif ( $GetParam{ArticleTimeSearchType} eq 'TimePoint' ) {
        $GetParam{'ArticleTimeSearchType::TimePoint'} = 1;
    }
    elsif ( $GetParam{ArticleTimeSearchType} eq 'TimeSlot' ) {
        $GetParam{'ArticleTimeSearchType::TimeSlot'} = 1;
    }

    # get create time option
    if ( !$GetParam{TimeSearchType} ) {
        $GetParam{'TimeSearchType::None'} = 1;
    }
    elsif ( $GetParam{TimeSearchType} eq 'TimePoint' ) {
        $GetParam{'TimeSearchType::TimePoint'} = 1;
    }
    elsif ( $GetParam{TimeSearchType} eq 'TimeSlot' ) {
        $GetParam{'TimeSearchType::TimeSlot'} = 1;
    }

    # get change time option
    if ( !$GetParam{ChangeTimeSearchType} ) {
        $GetParam{'ChangeTimeSearchType::None'} = 1;
    }
    elsif ( $GetParam{ChangeTimeSearchType} eq 'TimePoint' ) {
        $GetParam{'ChangeTimeSearchType::TimePoint'} = 1;
    }
    elsif ( $GetParam{ChangeTimeSearchType} eq 'TimeSlot' ) {
        $GetParam{'ChangeTimeSearchType::TimeSlot'} = 1;
    }

    # get close time option
    if ( !$GetParam{CloseTimeSearchType} ) {
        $GetParam{'CloseTimeSearchType::None'} = 1;
    }
    elsif ( $GetParam{CloseTimeSearchType} eq 'TimePoint' ) {
        $GetParam{'CloseTimeSearchType::TimePoint'} = 1;
    }
    elsif ( $GetParam{CloseTimeSearchType} eq 'TimeSlot' ) {
        $GetParam{'CloseTimeSearchType::TimeSlot'} = 1;
    }

    # set result form env
    if ( !$GetParam{ResultForm} ) {
        $GetParam{ResultForm} = '';
    }

    # show result site
    if ( $Self->{Subaction} eq 'Search' && !$Self->{EraseTemplate} ) {

        # fill up profile name (e.g. with last-search)
        if ( !$Self->{Profile} || !$Self->{SaveProfile} ) {
            $Self->{Profile} = 'last-search';
        }

        # store last queue screen
        my $URL
            = "Action=AgentTicketSearch;Subaction=Search;Profile=$Self->{Profile};SortBy=$Self->{SortBy}"
            . ";OrderBy=$Self->{OrderBy};TakeLastSearch=1;StartHit=$Self->{StartHit}";
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key       => 'LastScreenOverview',
            Value     => $URL,
        );
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key       => 'LastScreenView',
            Value     => $URL,
        );

        # save search profile (under last-search or real profile name)
        $Self->{SaveProfile} = 1;

        # remember last search values
        if ( $Self->{SaveProfile} && $Self->{Profile} ) {

            # remove old profile stuff
            $Self->{SearchProfileObject}->SearchProfileDelete(
                Base      => 'TicketSearch',
                Name      => $Self->{Profile},
                UserLogin => $Self->{UserLogin},
            );

            # insert new profile params
            for my $Key ( keys %GetParam ) {
                if ( $GetParam{$Key} ) {
                    $Self->{SearchProfileObject}->SearchProfileAdd(
                        Base      => 'TicketSearch',
                        Name      => $Self->{Profile},
                        Key       => $Key,
                        Value     => $GetParam{$Key},
                        UserLogin => $Self->{UserLogin},
                    );
                }
            }
        }

        # get create time settings
        if ( !$GetParam{ArticleTimeSearchType} ) {

            # do nothing with time stuff
        }
        elsif ( $GetParam{ArticleTimeSearchType} eq 'TimeSlot' ) {
            for (qw(Month Day)) {
                $GetParam{"ArticleCreateTimeStart$_"}
                    = sprintf( "%02d", $GetParam{"ArticleCreateTimeStart$_"} );
            }
            for (qw(Month Day)) {
                $GetParam{"ArticleCreateTimeStop$_"}
                    = sprintf( "%02d", $GetParam{"ArticleCreateTimeStop$_"} );
            }
            if (
                $GetParam{ArticleCreateTimeStartDay}
                && $GetParam{ArticleCreateTimeStartMonth}
                && $GetParam{ArticleCreateTimeStartYear}
                )
            {
                $GetParam{ArticleCreateTimeNewerDate}
                    = $GetParam{ArticleCreateTimeStartYear} . '-'
                    . $GetParam{ArticleCreateTimeStartMonth} . '-'
                    . $GetParam{ArticleCreateTimeStartDay}
                    . ' 00:00:01';
            }
            if (
                $GetParam{ArticleCreateTimeStopDay}
                && $GetParam{ArticleCreateTimeStopMonth}
                && $GetParam{ArticleCreateTimeStopYear}
                )
            {
                $GetParam{ArticleCreateTimeOlderDate}
                    = $GetParam{ArticleCreateTimeStopYear} . '-'
                    . $GetParam{ArticleCreateTimeStopMonth} . '-'
                    . $GetParam{ArticleCreateTimeStopDay}
                    . ' 23:59:59';
            }
        }
        elsif ( $GetParam{ArticleTimeSearchType} eq 'TimePoint' ) {
            if (
                $GetParam{ArticleCreateTimePoint}
                && $GetParam{ArticleCreateTimePointStart}
                && $GetParam{ArticleCreateTimePointFormat}
                )
            {
                my $Time = 0;
                if ( $GetParam{ArticleCreateTimePointFormat} eq 'minute' ) {
                    $Time = $GetParam{ArticleCreateTimePoint};
                }
                elsif ( $GetParam{ArticleCreateTimePointFormat} eq 'hour' ) {
                    $Time = $GetParam{ArticleCreateTimePoint} * 60;
                }
                elsif ( $GetParam{ArticleCreateTimePointFormat} eq 'day' ) {
                    $Time = $GetParam{ArticleCreateTimePoint} * 60 * 24;
                }
                elsif ( $GetParam{ArticleCreateTimePointFormat} eq 'week' ) {
                    $Time = $GetParam{ArticleCreateTimePoint} * 60 * 24 * 7;
                }
                elsif ( $GetParam{ArticleCreateTimePointFormat} eq 'month' ) {
                    $Time = $GetParam{ArticleCreateTimePoint} * 60 * 24 * 30;
                }
                elsif ( $GetParam{ArticleCreateTimePointFormat} eq 'year' ) {
                    $Time = $GetParam{ArticleCreateTimePoint} * 60 * 24 * 365;
                }
                if ( $GetParam{ArticleCreateTimePointStart} eq 'Before' ) {
                    $GetParam{ArticleCreateTimeOlderMinutes} = $Time;
                }
                else {
                    $GetParam{ArticleCreateTimeNewerMinutes} = $Time;
                }
            }
        }

        # get create time settings
        if ( !$GetParam{TimeSearchType} ) {

            # do noting with time stuff
        }
        elsif ( $GetParam{TimeSearchType} eq 'TimeSlot' ) {
            for (qw(Month Day)) {
                $GetParam{"TicketCreateTimeStart$_"}
                    = sprintf( "%02d", $GetParam{"TicketCreateTimeStart$_"} );
            }
            for (qw(Month Day)) {
                $GetParam{"TicketCreateTimeStop$_"}
                    = sprintf( "%02d", $GetParam{"TicketCreateTimeStop$_"} );
            }
            if (
                $GetParam{TicketCreateTimeStartDay}
                && $GetParam{TicketCreateTimeStartMonth}
                && $GetParam{TicketCreateTimeStartYear}
                )
            {
                $GetParam{TicketCreateTimeNewerDate}
                    = $GetParam{TicketCreateTimeStartYear} . '-'
                    . $GetParam{TicketCreateTimeStartMonth} . '-'
                    . $GetParam{TicketCreateTimeStartDay}
                    . ' 00:00:01';
            }
            if (
                $GetParam{TicketCreateTimeStopDay}
                && $GetParam{TicketCreateTimeStopMonth}
                && $GetParam{TicketCreateTimeStopYear}
                )
            {
                $GetParam{TicketCreateTimeOlderDate}
                    = $GetParam{TicketCreateTimeStopYear} . '-'
                    . $GetParam{TicketCreateTimeStopMonth} . '-'
                    . $GetParam{TicketCreateTimeStopDay}
                    . ' 23:59:59';
            }
        }
        elsif ( $GetParam{TimeSearchType} eq 'TimePoint' ) {
            if (
                $GetParam{TicketCreateTimePoint}
                && $GetParam{TicketCreateTimePointStart}
                && $GetParam{TicketCreateTimePointFormat}
                )
            {
                my $Time = 0;
                if ( $GetParam{TicketCreateTimePointFormat} eq 'minute' ) {
                    $Time = $GetParam{TicketCreateTimePoint};
                }
                elsif ( $GetParam{TicketCreateTimePointFormat} eq 'hour' ) {
                    $Time = $GetParam{TicketCreateTimePoint} * 60;
                }
                elsif ( $GetParam{TicketCreateTimePointFormat} eq 'day' ) {
                    $Time = $GetParam{TicketCreateTimePoint} * 60 * 24;
                }
                elsif ( $GetParam{TicketCreateTimePointFormat} eq 'week' ) {
                    $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 7;
                }
                elsif ( $GetParam{TicketCreateTimePointFormat} eq 'month' ) {
                    $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 30;
                }
                elsif ( $GetParam{TicketCreateTimePointFormat} eq 'year' ) {
                    $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 365;
                }
                if ( $GetParam{TicketCreateTimePointStart} eq 'Before' ) {
                    $GetParam{TicketCreateTimeOlderMinutes} = $Time;
                }
                else {
                    $GetParam{TicketCreateTimeNewerMinutes} = $Time;
                }
            }
        }

        # get close time settings
        if ( !$GetParam{ChangeTimeSearchType} ) {

            # do noting ont time stuff
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
                    . ' 00:00:01';
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

            # do noting ont time stuff
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
                    . ' 00:00:01';
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

        # free time
        for ( 1 .. 6 ) {
            if ( !$GetParam{ 'TicketFreeTime' . $_ } ) {
                for my $Type (qw(Year Month Day)) {
                    $GetParam{ 'TicketFreeTime' . $_ . 'Start' . $Type } = undef;
                    $GetParam{ 'TicketFreeTime' . $_ . 'Stop' . $Type }  = undef;
                }
                $GetParam{ 'TicketFreeTime' . $_ . 'NewerDate' } = undef;
                $GetParam{ 'TicketFreeTime' . $_ . 'OlderDate' } = undef;
            }
            else {
                $GetParam{ 'TicketFreeTime' . $_ } = 'checked="checked"';
                if (
                    $GetParam{ 'TicketFreeTime' . $_ . 'StartDay' }
                    && $GetParam{ 'TicketFreeTime' . $_ . 'StartMonth' }
                    && $GetParam{ 'TicketFreeTime' . $_ . 'StartYear' }
                    )
                {
                    $GetParam{ 'TicketFreeTime' . $_ . 'NewerDate' }
                        = $GetParam{ 'TicketFreeTime' . $_ . 'StartYear' } . '-'
                        . $GetParam{ 'TicketFreeTime' . $_ . 'StartMonth' } . '-'
                        . $GetParam{ 'TicketFreeTime' . $_ . 'StartDay' }
                        . ' 00:00:01';
                }
                if (
                    $GetParam{ 'TicketFreeTime' . $_ . 'StopDay' }
                    && $GetParam{ 'TicketFreeTime' . $_ . 'StopMonth' }
                    && $GetParam{ 'TicketFreeTime' . $_ . 'StopYear' }
                    )
                {
                    $GetParam{ 'TicketFreeTime' . $_ . 'OlderDate' }
                        = $GetParam{ 'TicketFreeTime' . $_ . 'StopYear' } . '-'
                        . $GetParam{ 'TicketFreeTime' . $_ . 'StopMonth' } . '-'
                        . $GetParam{ 'TicketFreeTime' . $_ . 'StopDay' }
                        . ' 23:59:59';
                }
            }
        }

        # prepare fulltext search
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

        # perform ticket search
        my @ViewableTicketIDs = $Self->{TicketObjectSearch}->TicketSearch(
            Result              => 'ARRAY',
            SortBy              => $Self->{SortBy},
            OrderBy             => $Self->{OrderBy},
            Limit               => $Self->{SearchLimit},
            UserID              => $Self->{UserID},
            ConditionInline     => $Self->{Config}->{ExtendedSearchCondition},
            ContentSearchPrefix => '*',
            ContentSearchSuffix => '*',
            FullTextIndex       => 1,
            %GetParam,
        );

        # CSV output
        if ( $GetParam{ResultForm} eq 'CSV' ) {
            my @CSVHead;
            my @CSVData;

            for (@ViewableTicketIDs) {

                # get first article data
                my %Data = $Self->{TicketObjectSearch}->ArticleFirstArticle(
                    TicketID => $_,
                    Extended => 1,
                );

                $Data{Age} = $Self->{LayoutObject}->CustomerAge( Age => $Data{Age}, Space => ' ' );

                # get whole article (if configured!)
                if ( $Self->{Config}->{SearchArticleCSVTree} ) {
                    my @Article = $Self->{TicketObjectSearch}->ArticleGet(
                        TicketID => $_,
                    );
                    for my $Articles (@Article) {
                        if ( $Articles->{Body} ) {
                            $Data{ArticleTree}
                                .= "\n-->||$Articles->{ArticleType}||$Articles->{From}||"
                                . $Articles->{Created}
                                . "||<--------------\n"
                                . $Articles->{Body};
                        }
                    }
                }

                # customer info (customer name)
                if ( $Data{CustomerUserID} ) {
                    $Data{CustomerName} = $Self->{CustomerUserObject}->CustomerName(
                        UserLogin => $Data{CustomerUserID},
                    );
                }

                # user info
                my %UserInfo = $Self->{UserObject}->GetUserData(
                    User => $Data{Owner},
                );

                # merge row data
                my %Info = (
                    %Data,
                    %UserInfo,
                    AccountedTime =>
                        $Self->{TicketObjectSearch}->TicketAccountedTimeGet( TicketID => $_ ),
                );

                # csv quote
                if ( !@CSVHead ) {
                    @CSVHead = @{ $Self->{Config}->{SearchCSVData} };
                }
                my @Data;
                for (@CSVHead) {
                    push @Data, $Info{$_};
                }
                push @CSVData, \@Data;
            }

            my $CSV = $Self->{CSVObject}->Array2CSV(
                Head      => \@CSVHead,
                Data      => \@CSVData,
                Separator => $Self->{UserCSVSeparator},
            );

            # return csv to download
            my $CSVFile = 'ticket_search';
            my ( $s, $m, $h, $D, $M, $Y ) = $Self->{TimeObject}->SystemTime2Date(
                SystemTime => $Self->{TimeObject}->SystemTime(),
            );
            $M = sprintf( "%02d", $M );
            $D = sprintf( "%02d", $D );
            $h = sprintf( "%02d", $h );
            $m = sprintf( "%02d", $m );
            return $Self->{LayoutObject}->Attachment(
                Filename    => $CSVFile . "_" . "$Y-$M-$D" . "_" . "$h-$m.csv",
                ContentType => "text/csv; charset=" . $Self->{LayoutObject}->{UserCharset},
                Content     => $CSV,
            );
        }
        elsif ( $GetParam{ResultForm} eq 'Print' ) {

            my @PDFData;
            for (@ViewableTicketIDs) {

                # get first article data
                my %Data = $Self->{TicketObjectSearch}->ArticleFirstArticle( TicketID => $_ );

                # customer info
                my %CustomerData;
                if ( $Data{CustomerUserID} ) {
                    %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                        User => $Data{CustomerUserID},
                    );
                }
                elsif ( $Data{CustomerID} ) {
                    %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                        CustomerID => $Data{CustomerID},
                    );
                }

                # customer info (customer name)
                if ( $CustomerData{UserLogin} ) {
                    $Data{CustomerName} = $Self->{CustomerUserObject}->CustomerName(
                        UserLogin => $CustomerData{UserLogin},
                    );
                }

                # user info
                my %UserInfo = $Self->{UserObject}->GetUserData(
                    User => $Data{Owner},
                );

                # get age
                $Data{Age} = $Self->{LayoutObject}->CustomerAge( Age => $Data{Age}, Space => ' ' );

                # customer info string
                $UserInfo{CustomerName} = '(' . $UserInfo{CustomerName} . ')'
                    if ( $UserInfo{CustomerName} );

                use Kernel::System::PDF;
                $Self->{PDFObject} = Kernel::System::PDF->new( %{$Self} );
                if ( $Self->{PDFObject} ) {
                    my %Info = ( %Data, %UserInfo );
                    my $Created = $Self->{LayoutObject}->Output(
                        Template => '$TimeLong{"$Data{"Created"}"}',
                        Data     => \%Data,
                    );
                    my $Owner = $Self->{LayoutObject}->Output(
                        Template =>
                            '$QData{"Owner","30"} ($Quote{"$Data{"UserFirstname"} $Data{"UserLastname"}","30"})',
                        Data => \%Info
                    );
                    my $Customer = $Self->{LayoutObject}->Output(
                        Template => '$QData{"CustomerID","15"} $QData{"CustomerName","15"}',
                        Data     => \%Data
                    );

                    my @PDFRow;
                    push @PDFRow,  $Data{TicketNumber};
                    push @PDFRow,  $Created;
                    push @PDFRow,  $Data{From};
                    push @PDFRow,  $Data{Subject};
                    push @PDFRow,  $Data{State};
                    push @PDFRow,  $Data{Queue};
                    push @PDFRow,  $Owner;
                    push @PDFRow,  $Customer;
                    push @PDFData, \@PDFRow;
                }
                else {

                    # add table block
                    $Self->{LayoutObject}->Block(
                        Name => 'Record',
                        Data => { %Data, %UserInfo, },
                    );
                }
            }

            # PDF Output
            if ( $Self->{PDFObject} ) {
                my $Title = $Self->{LayoutObject}->{LanguageObject}->Get('Ticket') . ' '
                    . $Self->{LayoutObject}->{LanguageObject}->Get('Search');
                my $PrintedBy = $Self->{LayoutObject}->{LanguageObject}->Get('printed by');
                my $Page      = $Self->{LayoutObject}->{LanguageObject}->Get('Page');
                my $Time      = $Self->{LayoutObject}->Output( Template => '$Env{"Time"}' );
                my $Url       = '';
                if ( $ENV{REQUEST_URI} ) {
                    $Url
                        = $Self->{ConfigObject}->Get('HttpType') . '://'
                        . $Self->{ConfigObject}->Get('FQDN')
                        . $ENV{REQUEST_URI};
                }

                # get maximum number of pages
                my $MaxPages = $Self->{ConfigObject}->Get('PDF::MaxPages');
                if ( !$MaxPages || $MaxPages < 1 || $MaxPages > 1000 ) {
                    $MaxPages = 100;
                }

                # create the header
                my $CellData;
                $CellData->[0]->[0]->{Content} = $Self->{ConfigObject}->Get('Ticket::Hook');
                $CellData->[0]->[0]->{Font}    = 'ProportionalBold';
                $CellData->[0]->[1]->{Content}
                    = $Self->{LayoutObject}->{LanguageObject}->Get('Created');
                $CellData->[0]->[1]->{Font} = 'ProportionalBold';
                $CellData->[0]->[2]->{Content}
                    = $Self->{LayoutObject}->{LanguageObject}->Get('From');
                $CellData->[0]->[2]->{Font} = 'ProportionalBold';
                $CellData->[0]->[3]->{Content}
                    = $Self->{LayoutObject}->{LanguageObject}->Get('Subject');
                $CellData->[0]->[3]->{Font} = 'ProportionalBold';
                $CellData->[0]->[4]->{Content}
                    = $Self->{LayoutObject}->{LanguageObject}->Get('State');
                $CellData->[0]->[4]->{Font} = 'ProportionalBold';
                $CellData->[0]->[5]->{Content}
                    = $Self->{LayoutObject}->{LanguageObject}->Get('Queue');
                $CellData->[0]->[5]->{Font} = 'ProportionalBold';
                $CellData->[0]->[6]->{Content}
                    = $Self->{LayoutObject}->{LanguageObject}->Get('Owner');
                $CellData->[0]->[6]->{Font} = 'ProportionalBold';
                $CellData->[0]->[7]->{Content}
                    = $Self->{LayoutObject}->{LanguageObject}->Get('CustomerID');
                $CellData->[0]->[7]->{Font} = 'ProportionalBold';

                # create the content array
                my $CounterRow = 1;
                for my $Row (@PDFData) {
                    my $CounterColumn = 0;
                    for my $Content ( @{$Row} ) {
                        $CellData->[$CounterRow]->[$CounterColumn]->{Content} = $Content;
                        $CounterColumn++;
                    }
                    $CounterRow++;
                }

                # output 'No Result', if no content was given
                if ( !$CellData->[0]->[0] ) {
                    $CellData->[0]->[0]->{Content}
                        = $Self->{LayoutObject}->{LanguageObject}->Get('No Result!');
                }

                # page params
                my %PageParam;
                $PageParam{PageOrientation} = 'landscape';
                $PageParam{MarginTop}       = 30;
                $PageParam{MarginRight}     = 40;
                $PageParam{MarginBottom}    = 40;
                $PageParam{MarginLeft}      = 40;
                $PageParam{HeaderRight}     = $Title;
                $PageParam{FooterLeft}      = $Url;
                $PageParam{HeadlineLeft}    = $Title;
                $PageParam{HeadlineRight}   = $PrintedBy . ' '
                    . $Self->{UserFirstname} . ' '
                    . $Self->{UserLastname} . ' ('
                    . $Self->{UserEmail} . ') '
                    . $Time;

                # table params
                my %TableParam;
                $TableParam{CellData}            = $CellData;
                $TableParam{Type}                = 'Cut';
                $TableParam{FontSize}            = 6;
                $TableParam{Border}              = 0;
                $TableParam{BackgroundColorEven} = '#AAAAAA';
                $TableParam{BackgroundColorOdd}  = '#DDDDDD';
                $TableParam{Padding}             = 1;
                $TableParam{PaddingTop}          = 3;
                $TableParam{PaddingBottom}       = 3;

                # create new pdf document
                $Self->{PDFObject}->DocumentNew(
                    Title  => $Self->{ConfigObject}->Get('Product') . ': ' . $Title,
                    Encode => $Self->{LayoutObject}->{UserCharset},
                );

                # start table output
                $Self->{PDFObject}->PageNew( %PageParam, FooterRight => $Page . ' 1', );
                for ( 2 .. $MaxPages ) {

                    # output table (or a fragment of it)
                    %TableParam = $Self->{PDFObject}->Table( %TableParam, );

                    # stop output or another page
                    if ( $TableParam{State} ) {
                        last;
                    }
                    else {
                        $Self->{PDFObject}->PageNew( %PageParam, FooterRight => $Page . ' ' . $_, );
                    }
                }

                # return the pdf document
                my $Filename = 'ticket_search';
                my ( $s, $m, $h, $D, $M, $Y )
                    = $Self->{TimeObject}->SystemTime2Date(
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
            else {
                $Output = $Self->{LayoutObject}->PrintHeader( Width => 800 );
                if ( @ViewableTicketIDs == $Self->{SearchLimit} ) {
                    $Param{Warning} = '$Text{"Reached max. count of %s search hits!", "'
                        . $Self->{SearchLimit} . '"}';
                }
                $Output .= $Self->{LayoutObject}->Output(
                    TemplateFile => 'AgentTicketSearchResultPrint',
                    Data         => \%Param,
                );

                # add footer
                $Output .= $Self->{LayoutObject}->PrintFooter();

                # return output
                return $Output;
            }
        }
        else {

            # start html page
            my $Output = $Self->{LayoutObject}->Header();
            $Output .= $Self->{LayoutObject}->NavigationBar();
            $Self->{LayoutObject}->Print( Output => \$Output );
            $Output = '';

            $Self->{Filter} = $Self->{ParamObject}->GetParam( Param => 'Filter' ) || '';
            $Self->{View}   = $Self->{ParamObject}->GetParam( Param => 'View' )   || '';

            # show ticket's
            my $LinkPage = 'Filter='
                . $Self->{LayoutObject}->LinkEncode( $Self->{Filter} )
                . ';View=' . $Self->{LayoutObject}->LinkEncode( $Self->{View} )
                . ';SortBy=' . $Self->{LayoutObject}->LinkEncode( $Self->{SortBy} )
                . ';OrderBy=' . $Self->{LayoutObject}->LinkEncode( $Self->{OrderBy} )
                . ';Profile=' . $Self->{Profile} . ';TakeLastSearch=1;Subaction=Search'
                . ';';
            my $LinkSort = 'Filter='
                . $Self->{LayoutObject}->LinkEncode( $Self->{Filter} )
                . ';View=' . $Self->{LayoutObject}->LinkEncode( $Self->{View} )
                . ';Profile=' . $Self->{Profile} . ';TakeLastSearch=1;Subaction=Search'
                . ';';
            my $LinkFilter = 'TakeLastSearch=1;Subaction=Search;Profile='
                . $Self->{LayoutObject}->LinkEncode( $Self->{Profile} )
                . ';';
            my $LinkBack = 'Subaction=LoadProfile;Profile='
                . $Self->{LayoutObject}->LinkEncode( $Self->{Profile} )
                . ';TakeLastSearch=1&';

            my $FilterLink
                = 'SortBy=' . $Self->{LayoutObject}->LinkEncode( $Self->{SortBy} )
                . ';OrderBy=' . $Self->{LayoutObject}->LinkEncode( $Self->{OrderBy} )
                . ';View=' . $Self->{LayoutObject}->LinkEncode( $Self->{View} )
                . ';Profile=' . $Self->{Profile} . ';TakeLastSearch=1;Subaction=Search'
                . ';';
            $Output .= $Self->{LayoutObject}->TicketListShow(
                TicketIDs => \@ViewableTicketIDs,
                Total     => scalar @ViewableTicketIDs,

                View => $Self->{View},

                Env        => $Self,
                LinkPage   => $LinkPage,
                LinkSort   => $LinkSort,
                LinkFilter => $LinkFilter,
                LinkBack   => $LinkBack,
                Profile    => $Self->{Profile},

                TitleName => 'Search Result',
                Bulk      => 1,
                Limit     => $Self->{SearchLimit},

                Filter     => $Self->{Filter},
                FilterLink => $FilterLink,

                OrderBy => $Self->{OrderBy},
                SortBy  => $Self->{SortBy},
            );

            # build footer
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
    }
    elsif ( $Self->{Subaction} eq 'AJAXProfileDelete' ) {
        my $Profile = $Self->{ParamObject}->GetParam( Param => 'Profile' );

        # remove old profile stuff
        $Self->{SearchProfileObject}->SearchProfileDelete(
            Base      => 'TicketSearch',
            Name      => $Profile,
            UserLogin => $Self->{UserLogin},
        );
        my $Output = $Self->{LayoutObject}->JSONEncode(
            Data => 1,
        );
        return $Self->{LayoutObject}->Attachment(
            NoCache     => 1,
            ContentType => 'text/html',
            Content     => $Output,
            Type        => 'inline'
        );
    }
    elsif ( $Self->{Subaction} eq 'AJAX' ) {
        my $Profile = $Self->{ParamObject}->GetParam( Param => 'Profile' ) || '';

        my %GetParam = $Self->{SearchProfileObject}->SearchProfileGet(
            Base      => 'TicketSearch',
            Name      => $Profile,
            UserLogin => $Self->{UserLogin},
        );
        my @Attributes = (
            {
                Key   => 'TicketNumber',
                Value => 'Ticket Number',
            },
            {
                Key   => 'Fulltext',
                Value => 'Fulltext',
            },
            {
                Key   => 'Title',
                Value => 'Title',
            },
            {
                Key   => '',
                Value => '-',
            },
            {
                Key   => 'From',
                Value => 'From',
            },
            {
                Key   => 'To',
                Value => 'To',
            },
            {
                Key   => 'Cc',
                Value => 'Cc',
            },
            {
                Key   => 'Subject',
                Value => 'Subject',
            },
            {
                Key   => 'Body',
                Value => 'Body',
            },
            {
                Key   => '',
                Value => '-',
            },
            {
                Key   => 'CustomerID',
                Value => 'CustomerID',
            },
            {
                Key   => 'CustomerUserLogin',
                Value => 'Customer User Login',
            },
            {
                Key   => 'StateIDs',
                Value => 'State',
            },
            {
                Key   => 'QueueIDs',
                Value => 'Queue',
            },
            {
                Key   => 'PriorityIDs',
                Value => 'Priority',
            },
            {
                Key   => 'OwnerIDs',
                Value => 'Owner',
            },
            {
                Key   => 'CreatedQueueIDs',
                Value => 'Created in Queue',
            },
            {
                Key   => 'CreatedUserIDs',
                Value => 'Created by',
            },
        );
        if ( $Self->{ConfigObject}->Get('Ticket::Watcher') ) {
            push @Attributes, (
                {
                    Key   => 'WatchUserIDs',
                    Value => 'Watcher',
                },
            );
        }
        if ( $Self->{ConfigObject}->Get('Ticket::Responsible') ) {
            push @Attributes, (
                {
                    Key   => 'ResponsibleIDs',
                    Value => 'Responsible',
                },
            );
        }
        if ( $Self->{ConfigObject}->Get('Ticket::Type') ) {
            push @Attributes, (
                {
                    Key   => 'TypeIDs',
                    Value => 'Type',
                },
            );
        }
        if ( $Self->{ConfigObject}->Get('Ticket::Service') ) {
            push @Attributes, (
                {
                    Key   => 'ServiceIDs',
                    Value => 'Service',
                },
                {
                    Key   => 'SLAIDs',
                    Value => 'SLA',
                },
            );
        }

        # get free text config options
        my %TicketFreeText;
        for ( 1 .. 16 ) {
            $TicketFreeText{"TicketFreeKey$_"} = $Self->{TicketObject}->TicketFreeTextGet(
                Type   => "TicketFreeKey$_",
                FillUp => 1,
                Action => $Self->{Action},
                UserID => $Self->{UserID},
            );
            $TicketFreeText{"TicketFreeText$_"} = $Self->{TicketObject}->TicketFreeTextGet(
                Type   => "TicketFreeText$_",
                FillUp => 1,
                Action => $Self->{Action},
                UserID => $Self->{UserID},
            );
        }
        my %TicketFreeTextHTML = $Self->{LayoutObject}->AgentFreeText(
            NullOption => 1,
            Ticket     => \%GetParam,
            Config     => \%TicketFreeText,
        );
        for my $Count ( 1 .. 16 ) {
            next if !$Self->{Config}->{TicketFreeText}->{$Count};
            my $Config = $Self->{ConfigObject}->Get( 'TicketFreeKey' . $Count );
            next if !$Config;
            my $Name = '';
            for my $Key ( sort keys %{$Config} ) {
                next if !$Config->{$Key};
                if ($Name) {
                    $Name .= '/';
                }
                $Name .= $Config->{$Key};
            }
            next if !$Name;
            push @Attributes, (
                {
                    Key   => 'TicketFreeText' . $Count,
                    Value => $Name,
                },
            );
        }

        for my $Count ( 1 .. 6 ) {
            next if !$Self->{Config}->{TicketFreeTime}->{$Count};
            my $Config = $Self->{ConfigObject}->Get( 'TicketFreeTimeKey' . $Count );
            next if !$Config;
            my $Name = $Config;
            push @Attributes, (
                {
                    Key   => 'TicketFreeTime' . $Count,
                    Value => $Name,
                },
            );
        }

        push @Attributes, (
            {
                Key   => 'LockIDs',
                Value => 'Lock',
            },
            {
                Key   => 'TicketCreateTimePoint',
                Value => 'Ticket Create Time (before/after)',
            },
            {
                Key   => 'TicketCreateTimeSlot',
                Value => 'Ticket Create Time (between)',
            },
            {
                Key   => 'TicketChangeTimePoint',
                Value => 'Ticket Change Time (before/after)',
            },
            {
                Key   => 'TicketChangeTimeSlot',
                Value => 'Ticket Change Time (between)',
            },
            {
                Key   => 'TicketCloseTimePoint',
                Value => 'Ticket Close Time (before/after)',
            },
            {
                Key   => 'TicketCloseTimeSlot',
                Value => 'Ticket Close Time (between)',
            },
            {
                Key   => 'ArticleCreateTimePoint',
                Value => 'Article Create Time (before/after)',
            },
            {
                Key   => 'ArticleCreateTimeSlot',
                Value => 'Article Create Time (between)',
            },
        );
        if ( $Self->{ConfigObject}->Get('Ticket::ArchiveSystem') ) {
            push @Attributes, (
                {
                    Key   => 'SearchInArchive',
                    Value => 'Archive Search',
                },
            );
        }
        $Param{AttributesStrg} = $Self->{LayoutObject}->BuildSelection(
            Data     => \@Attributes,
            Name     => 'Attribute',
            Multiple => 0,
        );
        $Param{AttributesOrigStrg} = $Self->{LayoutObject}->BuildSelection(
            Data     => \@Attributes,
            Name     => 'AttributeOrig',
            Multiple => 0,
        );

        # get user of own groups
        my %ShownUsers = $Self->{UserObject}->UserList(
            Type  => 'Long',
            Valid => 1,
        );
        if ( !$Self->{ConfigObject}->Get('Ticket::ChangeOwnerToEveryone') ) {
            my %Involved = $Self->{GroupObject}->GroupMemberInvolvedList(
                UserID => $Self->{UserID},
                Type   => 'ro',
            );
            for my $UserID ( keys %ShownUsers ) {
                if ( !$Involved{$UserID} ) {
                    delete $ShownUsers{$UserID};
                }
            }
        }
        $Param{UserStrg} = $Self->{LayoutObject}->BuildSelection(
            Data       => \%ShownUsers,
            Name       => 'OwnerIDs',
            Multiple   => 1,
            Size       => 5,
            SelectedID => $GetParam{OwnerIDs},
        );
        $Param{CreatedUserStrg} = $Self->{LayoutObject}->BuildSelection(
            Data       => \%ShownUsers,
            Name       => 'CreatedUserIDs',
            Multiple   => 1,
            Size       => 5,
            SelectedID => $GetParam{CreatedUserIDs},
        );
        if ( $Self->{ConfigObject}->Get('Ticket::Watcher') ) {
            $Param{WatchdUserStrg} = $Self->{LayoutObject}->BuildSelection(
                Data       => \%ShownUsers,
                Name       => 'WatchdUserIDs',
                Multiple   => 1,
                Size       => 5,
                SelectedID => $GetParam{WatchdUserIDs},
            );
        }
        if ( $Self->{ConfigObject}->Get('Ticket::Responsible') ) {
            $Param{ResponsibleStrg} = $Self->{LayoutObject}->BuildSelection(
                Data       => \%ShownUsers,
                Name       => 'ResponsibleIDs',
                Multiple   => 1,
                Size       => 5,
                SelectedID => $GetParam{ResponsibleIDs},
            );
        }

        # build service string
        if ( $Self->{ConfigObject}->Get('Ticket::Service') ) {

            # get list type
            my $TreeView = 0;
            if ( $Self->{ConfigObject}->Get('Ticket::Frontend::ListType') eq 'tree' ) {
                $TreeView = 1;
            }
            my %Service = $Self->{ServiceObject}->ServiceList( UserID => $Self->{UserID}, );
            $Param{ServicesStrg} = $Self->{LayoutObject}->BuildSelection(
                Data        => \%Service,
                Name        => 'ServiceIDs',
                SelectedID  => $GetParam{ServiceIDs},
                TreeView    => $TreeView,
                Sort        => 'TreeView',
                Size        => 5,
                Multiple    => 1,
                Translation => 0,
                Max         => 200,
            );
            my %SLA = $Self->{SLAObject}->SLAList( UserID => $Self->{UserID}, );
            $Param{SLAsStrg} = $Self->{LayoutObject}->BuildSelection(
                Data        => \%SLA,
                Name        => 'SLAIDs',
                SelectedID  => $GetParam{SLAIDs},
                Sort        => 'AlphanumericValue',
                Size        => 5,
                Multiple    => 1,
                Translation => 0,
                Max         => 200,
            );
        }

        $Param{ResultFormStrg} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                Normal => 'Normal',
                Print  => 'Print',
                CSV    => 'CSV',
            },
            Name => 'ResultForm',
            SelectedID => $GetParam{ResultForm} || 'Normal',
        );

        if ( $Self->{ConfigObject}->Get('Ticket::ArchiveSystem') ) {

            $Param{SearchInArchiveStrg} = $Self->{LayoutObject}->BuildSelection(
                Data => {
                    ArchivedTickets    => 'Search in archived tickets only',
                    NotArchivedTickets => 'Search in not archived tickets only',
                    AllTickets         => 'Search in all tickets',
                },
                Name => 'SearchInArchive',
                SelectedID => $GetParam{SearchInArchive} || 'NotArchivedTickets',
            );
        }

        my %Profiles = $Self->{SearchProfileObject}->SearchProfileList(
            Base      => 'TicketSearch',
            UserLogin => $Self->{UserLogin},
        );
        delete $Profiles{''};
        $Profiles{'last-search'} = '-';
        $Param{ProfilesStrg} = $Self->{LayoutObject}->BuildSelection(
            Data       => \%Profiles,
            Name       => 'Profile',
            ID         => 'SearchProfile',
            SelectedID => $Profile,
        );

        $Param{StatesStrg} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                $Self->{StateObject}->StateList(
                    UserID => $Self->{UserID},
                    Action => $Self->{Action},
                ),
            },
            Name       => 'StateIDs',
            Multiple   => 1,
            Size       => 5,
            SelectedID => $GetParam{StateIDs},
        );
        my %AllQueues = $Self->{QueueObject}->GetAllQueues(
            UserID => $Self->{UserID},
            Type   => 'ro',
        );
        $Param{QueuesStrg} = $Self->{LayoutObject}->AgentQueueListOption(
            Data           => \%AllQueues,
            Size           => 5,
            Multiple       => 1,
            Name           => 'QueueIDs',
            SelectedID     => $GetParam{QueueIDs},
            OnChangeSubmit => 0,
        );
        $Param{CreatedQueuesStrg} = $Self->{LayoutObject}->AgentQueueListOption(
            Data           => \%AllQueues,
            Size           => 5,
            Multiple       => 1,
            Name           => 'CreatedQueueIDs',
            SelectedID     => $GetParam{CreatedQueueIDs},
            OnChangeSubmit => 0,
        );
        $Param{PrioritiesStrg} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                $Self->{PriorityObject}->PriorityList(
                    UserID => $Self->{UserID},
                    Action => $Self->{Action},
                ),
            },
            Name       => 'PriorityIDs',
            Multiple   => 1,
            Size       => 5,
            SelectedID => $GetParam{PriorityIDs},
        );
        $Param{LocksStrg} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                $Self->{LockObject}->LockList(
                    UserID => $Self->{UserID},
                    Action => $Self->{Action},
                ),
            },
            Name       => 'LockIDs',
            Multiple   => 1,
            Size       => 5,
            SelectedID => $GetParam{LockIDs},
        );

        $Param{ArticleCreateTimePoint} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                1  => ' 1',
                2  => ' 2',
                3  => ' 3',
                4  => ' 4',
                5  => ' 5',
                6  => ' 6',
                7  => ' 7',
                8  => ' 8',
                9  => ' 9',
                10 => '10',
                11 => '11',
                12 => '12',
                13 => '13',
                14 => '14',
                15 => '15',
                16 => '16',
                17 => '17',
                18 => '18',
                19 => '19',
                20 => '20',
                21 => '21',
                22 => '22',
                23 => '23',
                24 => '24',
                25 => '25',
                26 => '26',
                27 => '27',
                28 => '28',
                29 => '29',
                30 => '30',
                31 => '31',
                32 => '32',
                33 => '33',
                34 => '34',
                35 => '35',
                36 => '36',
                37 => '37',
                38 => '38',
                39 => '39',
                40 => '40',
                41 => '41',
                42 => '42',
                43 => '43',
                44 => '44',
                45 => '45',
                46 => '46',
                47 => '47',
                48 => '48',
                49 => '49',
                50 => '50',
                51 => '51',
                52 => '52',
                53 => '53',
                54 => '54',
                55 => '55',
                56 => '56',
                57 => '57',
                58 => '58',
                59 => '59',
            },
            Name       => 'ArticleCreateTimePoint',
            SelectedID => $GetParam{ArticleCreateTimePoint},
        );
        $Param{ArticleCreateTimePointStart} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                'Last'   => 'last',
                'Before' => 'before',
            },
            Name => 'ArticleCreateTimePointStart',
            SelectedID => $GetParam{ArticleCreateTimePointStart} || 'Last',
        );
        $Param{ArticleCreateTimePointFormat} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                minute => 'minute(s)',
                hour   => 'hour(s)',
                day    => 'day(s)',
                week   => 'week(s)',
                month  => 'month(s)',
                year   => 'year(s)',
            },
            Name       => 'ArticleCreateTimePointFormat',
            SelectedID => $GetParam{ArticleCreateTimePointFormat},
        );
        $Param{ArticleCreateTimeStart} = $Self->{LayoutObject}->BuildDateSelection(
            %GetParam,
            Prefix   => 'ArticleCreateTimeStart',
            Format   => 'DateInputFormat',
            DiffTime => -( ( 60 * 60 * 24 ) * 30 ),
        );
        $Param{ArticleCreateTimeStop} = $Self->{LayoutObject}->BuildDateSelection(
            %GetParam,
            Prefix => 'ArticleCreateTimeStop',
            Format => 'DateInputFormat',
        );
        $Param{TicketCreateTimePoint} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                1  => ' 1',
                2  => ' 2',
                3  => ' 3',
                4  => ' 4',
                5  => ' 5',
                6  => ' 6',
                7  => ' 7',
                8  => ' 8',
                9  => ' 9',
                10 => '10',
                11 => '11',
                12 => '12',
                13 => '13',
                14 => '14',
                15 => '15',
                16 => '16',
                17 => '17',
                18 => '18',
                19 => '19',
                20 => '20',
                21 => '21',
                22 => '22',
                23 => '23',
                24 => '24',
                25 => '25',
                26 => '26',
                27 => '27',
                28 => '28',
                29 => '29',
                30 => '30',
                31 => '31',
                32 => '32',
                33 => '33',
                34 => '34',
                35 => '35',
                36 => '36',
                37 => '37',
                38 => '38',
                39 => '39',
                40 => '40',
                41 => '41',
                42 => '42',
                43 => '43',
                44 => '44',
                45 => '45',
                46 => '46',
                47 => '47',
                48 => '48',
                49 => '49',
                50 => '50',
                51 => '51',
                52 => '52',
                53 => '53',
                54 => '54',
                55 => '55',
                56 => '56',
                57 => '57',
                58 => '58',
                59 => '59',
            },
            Name       => 'TicketCreateTimePoint',
            SelectedID => $GetParam{TicketCreateTimePoint},
        );
        $Param{TicketCreateTimePointStart} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                'Last'   => 'last',
                'Before' => 'before',
            },
            Name => 'TicketCreateTimePointStart',
            SelectedID => $GetParam{TicketCreateTimePointStart} || 'Last',
        );
        $Param{TicketCreateTimePointFormat} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                minute => 'minute(s)',
                hour   => 'hour(s)',
                day    => 'day(s)',
                week   => 'week(s)',
                month  => 'month(s)',
                year   => 'year(s)',
            },
            Name       => 'TicketCreateTimePointFormat',
            SelectedID => $GetParam{TicketCreateTimePointFormat},
        );
        $Param{TicketCreateTimeStart} = $Self->{LayoutObject}->BuildDateSelection(
            %GetParam,
            Prefix   => 'TicketCreateTimeStart',
            Format   => 'DateInputFormat',
            DiffTime => -( ( 60 * 60 * 24 ) * 30 ),
        );
        $Param{TicketCreateTimeStop} = $Self->{LayoutObject}->BuildDateSelection(
            %GetParam,
            Prefix => 'TicketCreateTimeStop',
            Format => 'DateInputFormat',
        );

        for ( 1 .. 6 ) {
            $Param{ 'TicketFreeTime' . $_ . 'Start' } = $Self->{LayoutObject}->BuildDateSelection(
                %GetParam,
                Prefix   => 'TicketFreeTime' . $_ . 'Start',
                Format   => 'DateInputFormat',
                DiffTime => -( ( 60 * 60 * 24 ) * 30 ),
            );
            $Param{ 'TicketFreeTime' . $_ . 'Stop' } = $Self->{LayoutObject}->BuildDateSelection(
                %GetParam,
                Prefix   => 'TicketFreeTime' . $_ . 'Stop',
                Format   => 'DateInputFormat',
                DiffTime => +( ( 60 * 60 * 24 ) * 30 ),
            );
        }

        $Param{TicketChangeTimePoint} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                1  => ' 1',
                2  => ' 2',
                3  => ' 3',
                4  => ' 4',
                5  => ' 5',
                6  => ' 6',
                7  => ' 7',
                8  => ' 8',
                9  => ' 9',
                10 => '10',
                11 => '11',
                12 => '12',
                13 => '13',
                14 => '14',
                15 => '15',
                16 => '16',
                17 => '17',
                18 => '18',
                19 => '19',
                20 => '20',
                21 => '21',
                22 => '22',
                23 => '23',
                24 => '24',
                25 => '25',
                26 => '26',
                27 => '27',
                28 => '28',
                29 => '29',
                30 => '30',
                31 => '31',
                32 => '32',
                33 => '33',
                34 => '34',
                35 => '35',
                36 => '36',
                37 => '37',
                38 => '38',
                39 => '39',
                40 => '40',
                41 => '41',
                42 => '42',
                43 => '43',
                44 => '44',
                45 => '45',
                46 => '46',
                47 => '47',
                48 => '48',
                49 => '49',
                50 => '50',
                51 => '51',
                52 => '52',
                53 => '53',
                54 => '54',
                55 => '55',
                56 => '56',
                57 => '57',
                58 => '58',
                59 => '59',
            },
            Name       => 'TicketChangeTimePoint',
            SelectedID => $GetParam{TicketChangeTimePoint},
        );
        $Param{TicketChangeTimePointStart} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                'Last'   => 'last',
                'Before' => 'before',
            },
            Name => 'TicketChangeTimePointStart',
            SelectedID => $GetParam{TicketChangeTimePointStart} || 'Last',
        );
        $Param{TicketChangeTimePointFormat} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                minute => 'minute(s)',
                hour   => 'hour(s)',
                day    => 'day(s)',
                week   => 'week(s)',
                month  => 'month(s)',
                year   => 'year(s)',
            },
            Name       => 'TicketChangeTimePointFormat',
            SelectedID => $GetParam{TicketChangeTimePointFormat},
        );
        $Param{TicketChangeTimeStart} = $Self->{LayoutObject}->BuildDateSelection(
            %GetParam,
            Prefix   => 'TicketChangeTimeStart',
            Format   => 'DateInputFormat',
            DiffTime => -( ( 60 * 60 * 24 ) * 30 ),
        );
        $Param{TicketChangeTimeStop} = $Self->{LayoutObject}->BuildDateSelection(
            %GetParam,
            Prefix => 'TicketChangeTimeStop',
            Format => 'DateInputFormat',
        );

        $Param{TicketCloseTimePoint} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                1  => ' 1',
                2  => ' 2',
                3  => ' 3',
                4  => ' 4',
                5  => ' 5',
                6  => ' 6',
                7  => ' 7',
                8  => ' 8',
                9  => ' 9',
                10 => '10',
                11 => '11',
                12 => '12',
                13 => '13',
                14 => '14',
                15 => '15',
                16 => '16',
                17 => '17',
                18 => '18',
                19 => '19',
                20 => '20',
                21 => '21',
                22 => '22',
                23 => '23',
                24 => '24',
                25 => '25',
                26 => '26',
                27 => '27',
                28 => '28',
                29 => '29',
                30 => '30',
                31 => '31',
                32 => '32',
                33 => '33',
                34 => '34',
                35 => '35',
                36 => '36',
                37 => '37',
                38 => '38',
                39 => '39',
                40 => '40',
                41 => '41',
                42 => '42',
                43 => '43',
                44 => '44',
                45 => '45',
                46 => '46',
                47 => '47',
                48 => '48',
                49 => '49',
                50 => '50',
                51 => '51',
                52 => '52',
                53 => '53',
                54 => '54',
                55 => '55',
                56 => '56',
                57 => '57',
                58 => '58',
                59 => '59',
            },
            Name       => 'TicketCloseTimePoint',
            SelectedID => $GetParam{TicketCloseTimePoint},
        );
        $Param{TicketCloseTimePointStart} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                'Last'   => 'last',
                'Before' => 'before',
            },
            Name => 'TicketCloseTimePointStart',
            SelectedID => $GetParam{TicketCloseTimePointStart} || 'Last',
        );
        $Param{TicketCloseTimePointFormat} = $Self->{LayoutObject}->BuildSelection(
            Data => {
                minute => 'minute(s)',
                hour   => 'hour(s)',
                day    => 'day(s)',
                week   => 'week(s)',
                month  => 'month(s)',
                year   => 'year(s)',
            },
            Name       => 'TicketCloseTimePointFormat',
            SelectedID => $GetParam{TicketCloseTimePointFormat},
        );
        $Param{TicketCloseTimeStart} = $Self->{LayoutObject}->BuildDateSelection(
            %GetParam,
            Prefix   => 'TicketCloseTimeStart',
            Format   => 'DateInputFormat',
            DiffTime => -( ( 60 * 60 * 24 ) * 30 ),
        );
        $Param{TicketCloseTimeStop} = $Self->{LayoutObject}->BuildDateSelection(
            %GetParam,
            Prefix => 'TicketCloseTimeStop',
            Format => 'DateInputFormat',
        );
        for my $Key (qw(TicketClose TicketChange TicketCreate ArticleCreate)) {
            for my $SubKey (qw(TimeStart TimeStop TimePoint TimePointStart TimePointFormat)) {
                delete $GetParam{ $Key . $SubKey };
            }
        }

        for ( 1 .. 6 ) {
            $Param{ 'TicketFreeTime' . $_ . 'Start' } = $Self->{LayoutObject}->BuildDateSelection(
                %GetParam,
                Prefix   => 'TicketFreeTime' . $_ . 'Start',
                Format   => 'DateInputFormat',
                DiffTime => -( ( 60 * 60 * 24 ) * 30 ),
            );
            $Param{ 'TicketFreeTime' . $_ . 'Stop' } = $Self->{LayoutObject}->BuildDateSelection(
                %GetParam,
                Prefix   => 'TicketFreeTime' . $_ . 'Stop',
                Format   => 'DateInputFormat',
                DiffTime => +( ( 60 * 60 * 24 ) * 30 ),
            );
        }

        # build type string
        if ( $Self->{ConfigObject}->Get('Ticket::Type') ) {
            my %Type = $Self->{TypeObject}->TypeList( UserID => $Self->{UserID}, );
            $Param{TypesStrg} = $Self->{LayoutObject}->BuildSelection(
                Data        => \%Type,
                Name        => 'TypeIDs',
                SelectedID  => $GetParam{TypeIDs},
                Sort        => 'AlphanumericValue',
                Size        => 3,
                Multiple    => 1,
                Translation => 0,
            );
        }

        # html search mask output
        $Self->{LayoutObject}->Block(
            Name => 'SearchAJAX',
            Data => { %Param, %GetParam, %TicketFreeTextHTML },
        );

        # show attributes
        for my $Key ( sort keys %GetParam ) {
            next if !$Key;
            next if !defined $GetParam{$Key};
            next if $GetParam{$Key} eq '';

            # show time attributes
            for my $Type (qw(Ticket Article)) {
                for my $Item (qw(Change Create Close)) {
                    next if $Type eq 'Article' && $Item =~ /^(Change|Close)$/;
                    for my $ItemSubSub (qw(Point Slot)) {

                        # compat.
                        my $ItemSub;
                        if ( $Item eq 'Create' && $Type eq 'Ticket' ) {
                            $ItemSub = 'TimeSearchType::Time' . $ItemSubSub;
                        }
                        else {
                            if ( $Type eq 'Ticket' ) {
                                $ItemSub = $Item . 'TimeSearchType::Time' . $ItemSubSub;
                            }
                            else {
                                $ItemSub = $Type . 'TimeSearchType::Time' . $ItemSubSub;
                            }
                        }
                        if ( $Key eq $ItemSub && $GetParam{$ItemSub} && $GetParam{$ItemSub} eq 1 ) {
                            $Key = $Type . $Item . 'Time' . $ItemSubSub;
                        }
                    }
                }
            }

            $Self->{LayoutObject}->Block(
                Name => 'SearchAJAXShow',
                Data => {
                    Attribute => $Key,
                },
            );
        }

        # if no attribute is shown, show fulltext search
        if ( !$Profile ) {
            if ( $Self->{Config}->{Default} ) {
                for my $Key ( sort keys %{ $Self->{Config}->{Default} } ) {
                    next if !$Self->{Config}->{Default}->{$Key};
                    $Self->{LayoutObject}->Block(
                        Name => 'SearchAJAXShow',
                        Data => {
                            Attribute => $Key,
                        },
                    );
                }
            }
            else {
                $Self->{LayoutObject}->Block(
                    Name => 'SearchAJAXShow',
                    Data => {
                        Attribute => 'Fulltext',
                    },
                );
            }
        }

        my $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AgentTicketSearch',
            Data         => \%Param,
        );
        return $Self->{LayoutObject}->Attachment(
            NoCache     => 1,
            ContentType => 'text/html',
            Content     => $Output,
            Type        => 'inline'
        );
    }

    # show default search screen
    $Output = $Self->{LayoutObject}->Header();
    $Output .= $Self->{LayoutObject}->NavigationBar();
    $Self->{LayoutObject}->Block(
        Name => 'Search',
        Data => \%Param,
    );
    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'AgentTicketSearch',
        Data         => \%Param,
    );
    $Output .= $Self->{LayoutObject}->Footer();
    return $Output;
}

1;
