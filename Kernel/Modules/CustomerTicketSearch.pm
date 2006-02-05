# --
# Kernel/Modules/CustomerTicketSearch.pm - Utilities for tickets
# Copyright (C) 2001-2006 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: CustomerTicketSearch.pm,v 1.16 2006-02-05 20:58:45 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::CustomerTicketSearch;

use strict;
use Kernel::System::CustomerUser;
use Kernel::System::User;
use Kernel::System::Priority;
use Kernel::System::State;
use Kernel::System::SearchProfile;

use vars qw($VERSION);
$VERSION = '$Revision: 1.16 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check needed Opjects
    foreach (qw(ParamObject DBObject TicketObject LayoutObject LogObject ConfigObject)) {
        if (!$Self->{$_}) {
            $Self->{LayoutObject}->FatalError(Message => "Got no $_!");
        }
    }
    $Self->{UserObject} = Kernel::System::User->new(%Param);
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);
    $Self->{PriorityObject} = Kernel::System::Priority->new(%Param);
    $Self->{StateObject} = Kernel::System::State->new(%Param);
    $Self->{SearchProfileObject} = Kernel::System::SearchProfile->new(%Param);

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    # get confid data
    $Self->{StartHit} = $Self->{ParamObject}->GetParam(Param => 'StartHit') || 1;
    $Self->{SearchLimit} = $Self->{ConfigObject}->Get('Ticket::CustomerTicketSearch::SearchLimit') || 200;
    $Self->{SearchPageShown} = $Self->{ConfigObject}->Get('Ticket::CustomerTicketSearch::SearchPageShown') || 40;
    $Self->{SortBy} = $Self->{ParamObject}->GetParam(Param => 'SortBy') || $Self->{ConfigObject}->Get('Ticket::CustomerTicketSearch::SortBy::Default') || 'Age';
    $Self->{Order} = $Self->{ParamObject}->GetParam(Param => 'Order') || $Self->{ConfigObject}->Get('Ticket::CustomerTicketSearch::Order::Default') || 'Down';
    $Self->{Profile} = $Self->{ParamObject}->GetParam(Param => 'Profile') || '';
    $Self->{SaveProfile} = $Self->{ParamObject}->GetParam(Param => 'SaveProfile') || '';
    $Self->{TakeLastSearch} = $Self->{ParamObject}->GetParam(Param => 'TakeLastSearch') || '';
    $Self->{SelectTemplate} = $Self->{ParamObject}->GetParam(Param => 'SelectTemplate') || '';
    $Self->{EraseTemplate} = $Self->{ParamObject}->GetParam(Param => 'EraseTemplate') || '';
    # check request
    if ($Self->{ParamObject}->GetParam(Param => 'SearchTemplate') && $Self->{Profile}) {
        return $Self->{LayoutObject}->Redirect(OP => "Action=CustomerTicketSearchSubaction=Search&TakeLastSearch=1&SaveProfile=1&Profile=$Self->{Profile}");
    }
    # get signle params
    my %GetParam = ();
    # load profiles string params (press load profile)
    if (($Self->{Subaction} eq 'LoadProfile' && $Self->{Profile}) || $Self->{TakeLastSearch}) {
        %GetParam = $Self->{SearchProfileObject}->SearchProfileGet(
            Base => 'CustomerTicketSearch',
            Name => $Self->{Profile},
            UserLogin => $Self->{UserLogin},
        );
    }
    # get search string params (get submitted params)
    else {
        foreach (qw(TicketNumber From To Cc Subject Body CustomerID ResultForm TimeSearchType
          TicketCreateTimePointFormat TicketCreateTimePoint
          TicketCreateTimePointStart
          TicketCreateTimeStart TicketCreateTimeStartDay TicketCreateTimeStartMonth
          TicketCreateTimeStartYear
          TicketCreateTimeStop TicketCreateTimeStopDay TicketCreateTimeStopMonth
          TicketCreateTimeStopYear
        )) {
            # get search string params (get submitted params)
            $GetParam{$_} = $Self->{ParamObject}->GetParam(Param => $_);
            # remove white space on the start and end
            if ($GetParam{$_}) {
                $GetParam{$_} =~ s/\s+$//g;
                $GetParam{$_} =~ s/^\s+//g;
            }
        }
        # get array params
        foreach (qw(StateIDs StateTypeIDs PriorityIDs
          TicketFreeKey1 TicketFreeText1 TicketFreeKey2 TicketFreeText2
          TicketFreeKey3 TicketFreeText3 TicketFreeKey4 TicketFreeText4
          TicketFreeKey5 TicketFreeText5 TicketFreeKey6 TicketFreeText6
          TicketFreeKey7 TicketFreeText7 TicketFreeKey8 TicketFreeText8
        )) {
            # get search array params (get submitted params)
            my @Array = $Self->{ParamObject}->GetArray(Param => $_);
            if (@Array) {
                $GetParam{$_} = \@Array;
            }
        }
    }
    # get time option
    if (!$GetParam{TimeSearchType}) {
        $GetParam{'TimeSearchType::None'} = 'checked';
    }
    elsif ($GetParam{TimeSearchType} eq 'TimePoint') {
        $GetParam{'TimeSearchType::TimePoint'} = 'checked';
    }
    elsif ($GetParam{TimeSearchType} eq 'TimeSlot') {
        $GetParam{'TimeSearchType::TimeSlot'} = 'checked';
    }
    # set result form env
    if (!$GetParam{ResultForm}) {
        $GetParam{ResultForm} = '';
    }
    if ($GetParam{ResultForm} eq 'Print' || $GetParam{ResultForm} eq 'CSV') {
        $Self->{SearchPageShown} = $Self->{SearchLimit};
    }
    # show result site
    if ($Self->{Subaction} eq 'Search' && !$Self->{EraseTemplate}) {
        # fill up profile name (e.g. with last-search)
        if (!$Self->{Profile} || !$Self->{SaveProfile}) {
            $Self->{Profile} = 'last-search';
        }
        # save search profile (under last-search or real profile name)
        $Self->{SaveProfile} = 1;
        # remember last search values
        if ($Self->{SaveProfile} && $Self->{Profile}) {
            # remove old profile stuff
            $Self->{SearchProfileObject}->SearchProfileDelete(
                Base => 'CustomerTicketSearch',
                Name => $Self->{Profile},
                UserLogin => $Self->{UserLogin},
            );
            # insert new profile params
            foreach my $Key (keys %GetParam) {
                if ($GetParam{$Key}) {
                    $Self->{SearchProfileObject}->SearchProfileAdd(
                        Base => 'CustomerTicketSearch',
                        Name => $Self->{Profile},
                        Key => $Key,
                        Value => $GetParam{$Key},
                        UserLogin => $Self->{UserLogin},
                    );
                }
            }
        }

        # get time settings
        if (!$GetParam{TimeSearchType}) {
            # do noting ont time stuff
        }
        elsif ($GetParam{TimeSearchType} eq 'TimeSlot') {
          foreach (qw(Month Day)) {
              if ($GetParam{"TicketCreateTimeStart$_"} <= 9) {
                  $GetParam{"TicketCreateTimeStart$_"} = '0'.$GetParam{"TicketCreateTimeStart$_"};
              }
          }
          foreach (qw(Month Day)) {
              if ($GetParam{"TicketCreateTimeStop$_"} <= 9) {
                  $GetParam{"TicketCreateTimeStop$_"} = '0'.$GetParam{"TicketCreateTimeStop$_"};
              }
          }
          if ($GetParam{TicketCreateTimeStartDay} && $GetParam{TicketCreateTimeStartMonth} && $GetParam{TicketCreateTimeStartYear}) {
              $GetParam{TicketCreateTimeNewerDate} = $GetParam{TicketCreateTimeStartYear}.
                '-'.$GetParam{TicketCreateTimeStartMonth}.
                '-'.$GetParam{TicketCreateTimeStartDay}.
                ' 00:00:01';
          }
          if ($GetParam{TicketCreateTimeStopDay} && $GetParam{TicketCreateTimeStopMonth} && $GetParam{TicketCreateTimeStopYear}) {
              $GetParam{TicketCreateTimeOlderDate} = $GetParam{TicketCreateTimeStopYear}.
                '-'.$GetParam{TicketCreateTimeStopMonth}.
                '-'.$GetParam{TicketCreateTimeStopDay}.
                ' 23:59:59';
          }
        }
        elsif ($GetParam{TimeSearchType} eq 'TimePoint') {
          if ($GetParam{TicketCreateTimePoint} && $GetParam{TicketCreateTimePointStart} && $GetParam{TicketCreateTimePointFormat}) {
            my $Time = 0;
            if ($GetParam{TicketCreateTimePointFormat} eq 'minute') {
                $Time = $GetParam{TicketCreateTimePoint};
            }
            elsif ($GetParam{TicketCreateTimePointFormat} eq 'hour') {
                $Time = $GetParam{TicketCreateTimePoint} * 60;
            }
            elsif ($GetParam{TicketCreateTimePointFormat} eq 'day') {
                $Time = $GetParam{TicketCreateTimePoint} * 60 * 24;
            }
            elsif ($GetParam{TicketCreateTimePointFormat} eq 'week') {
                $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 7;
            }
            elsif ($GetParam{TicketCreateTimePointFormat} eq 'month') {
                $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 30;
            }
            elsif ($GetParam{TicketCreateTimePointFormat} eq 'year') {
                $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 365;
            }
            if ($GetParam{TicketCreateTimePointStart} eq 'Before') {
                $GetParam{TicketCreateTimeOlderMinutes} = $Time;
            }
            else {
                $GetParam{TicketCreateTimeNewerMinutes} = $Time;
            }
          }
        }
        # focus of "From To Cc Subject Body"
        foreach (qw(From To Cc Subject Body)) {
            if (defined($GetParam{$_}) && $GetParam{$_} ne '') {
                $GetParam{$_} = "*$GetParam{$_}*";
            }
        }
        # perform ticket search
        my $Counter = 0;
        my @ViewableIDs = $Self->{TicketObject}->TicketSearch(
            Result => 'ARRAY',
            SortBy => $Self->{SortBy},
            OrderBy => $Self->{Order},
            Limit => $Self->{SearchLimit},
            CustomerUserID => $Self->{UserID},
            %GetParam,
        );

        foreach (@ViewableIDs) {
          $Counter++;
          # build search result
          if ($Counter >= $Self->{StartHit} && $Counter < ($Self->{SearchPageShown}+$Self->{StartHit}) ) {
            # get first article data
            my %Data = $Self->{TicketObject}->ArticleFirstArticle(TicketID => $_);
            # get whole article (if configured!)
            if ($Self->{ConfigObject}->Get('CustomerSearchArticleTreeCSV') && $GetParam{ResultForm} eq 'CSV') {
                my @Article = $Self->{TicketObject}->ArticleGet(
                    TicketID => $_
                );
                foreach my $Articles (@Article) {
                    if ($Articles->{Body}) {
                        $Data{ArticleTree} .= "\n-->||$Articles->{ArticleType}||$Articles->{From}||".$Articles->{Created}."||<--------------\n".$Articles->{Body};
                    }
                }
            }
            # customer info
            my %CustomerData = ();
            if ($Data{CustomerUserID}) {
                %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                    User => $Data{CustomerUserID},
                );
            }
            elsif ($Data{CustomerID}) {
                %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                    CustomerID => $Data{CustomerID},
                );
            }
            # customer info (customer name)
            if ($CustomerData{UserLogin}) {
                $Data{CustomerName} = $Self->{CustomerUserObject}->CustomerName(
                    UserLogin => $CustomerData{UserLogin},
                );
            }
            # user info
            my %UserInfo = $Self->{UserObject}->GetUserData(
                User => $Data{Owner},
                Cached => 1
            );
            # generate ticket result
            if ($GetParam{ResultForm} eq 'CSV') {
                # csv quote
                foreach (keys %Data) {
                    $Data{$_} =~ s/"/""/g if ($Data{$_});
                }
                $Param{StatusTable} .= $Self->MaskCSVResult(
                    %Data,
                    %UserInfo,
                    AccountedTime => $Self->{TicketObject}->TicketAccountedTimeGet(TicketID => $_),
                );
            }
            else {
                # Condense down the subject
                my $Subject = $Self->{TicketObject}->TicketSubjectClean(
                    TicketNumber => $Data{TicketNumber},
                    Subject => $Data{Subject} || '',
                );
                $Data{Age} = $Self->{LayoutObject}->CustomerAge(Age => $Data{Age}, Space => ' ');
                # customer info string
                $Data{CustomerName} = '('.$Data{CustomerName}.')' if ($Data{CustomerName});
                # add blocks to template
                $Self->{LayoutObject}->Block(
                    Name => 'Record',
                    Data => {
                        %Data,
                        Subject => $Subject,
                        %UserInfo,
                    },
                );
            }
          }
        }
        # start html page
        my $Output = $Self->{LayoutObject}->CustomerHeader();
        $Output .= $Self->{LayoutObject}->CustomerNavigationBar();

        # build search navigation bar
        my %PageNav = $Self->{LayoutObject}->PageNavBar(
            Limit => $Self->{SearchLimit},
            StartHit => $Self->{StartHit},
            PageShown => $Self->{SearchPageShown},
            AllHits => $Counter,
            Action => "Action=CustomerTicketSearch&Subaction=Search",
            Link => "Profile=$Self->{Profile}&SortBy=$Self->{SortBy}&Order=$Self->{Order}&TakeLastSearch=1&",
        );
        # build shown ticket
        if ($GetParam{ResultForm} eq 'Print') {
            $Output = $Self->{LayoutObject}->PrintHeader(Width => 800);
            if (@ViewableIDs == $Self->{SearchLimit}) {
                $Param{Warning} = '$Text{"Reached max. count of %s search hits!", "'.$Self->{SearchLimit}.'"}';
            }
            $Output .= $Self->{LayoutObject}->Output(
                TemplateFile => 'CustomerTicketSearchResultPrint',
                Data => \%Param,
            );
            # add footer
            $Output .= $Self->{LayoutObject}->PrintFooter();
            # return output
            return $Output;
        }
        elsif ($GetParam{ResultForm} eq 'CSV') {
            # return csv to download
            my $CSVFile = 'search';
            my ($s,$m,$h, $D,$M,$Y, $wd,$yd,$dst) = localtime(time);
            $Y = $Y+1900;
            $M++;
            $M = sprintf("%02d", $M);
            $D = sprintf("%02d", $D);
            $h = sprintf("%02d", $h);
            $m = sprintf("%02d", $m);
            return $Self->{LayoutObject}->Attachment(
                Filename => $CSVFile."_"."$Y-$M-$D"."_"."$h-$m.csv",
                ContentType => "text/csv",
                Content => $Param{StatusTable},
            );
        }
        else {
            $Output .= $Self->{LayoutObject}->Output(
                TemplateFile => 'CustomerTicketSearchResultShort',
                Data => { %Param, %PageNav, Profile => $Self->{Profile}, },
            );
        }
        # build footer
        $Output .= $Self->{LayoutObject}->CustomerFooter();
        return $Output;
    }
    # empty search site
    else {
        # delete profile
        if ($Self->{EraseTemplate} && $Self->{Profile}) {
            # remove old profile stuff
            $Self->{SearchProfileObject}->SearchProfileDelete(
                Base => 'CustomerTicketSearch',
                Name => $Self->{Profile},
                UserLogin => $Self->{UserLogin},
            );
            %GetParam = ();
            $Self->{Profile} = '';
        }
        # set profile to zero
        elsif (!$Self->{SelectTemplate}) {
#            $Self->{Profile} = '';
        }
        # get free text config options
        my %TicketFreeText = ();
        foreach (1..16) {
            $TicketFreeText{"TicketFreeKey$_"} = $Self->{TicketObject}->TicketFreeTextGet(
                Type => "TicketFreeKey$_",
                Action => $Self->{Action},
                CustomerUserID => $Self->{UserID},
            );
            $TicketFreeText{"TicketFreeText$_"} = $Self->{TicketObject}->TicketFreeTextGet(
                Type => "TicketFreeText$_",
                Action => $Self->{Action},
                CustomerUserID => $Self->{UserID},
            );
        }
        my %TicketFreeTextHTML = $Self->{LayoutObject}->AgentFreeText(
            NullOption => 1,
            Ticket => \%GetParam,
            Config => \%TicketFreeText,
        );
        # generate search mask
        my $Output = $Self->{LayoutObject}->CustomerHeader();
        $Output .= $Self->{LayoutObject}->CustomerNavigationBar();
        $Output .= $Self->MaskForm(
            %GetParam,
            Profile => $Self->{Profile},
           Area => 'Customer',
            %TicketFreeTextHTML,
        );
        $Output .= $Self->{LayoutObject}->CustomerFooter();
        return $Output;
    }
}
# --
sub MaskForm {
    my $Self = shift;
    my %Param = @_;

    $Param{'ResultFormStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => {
            Normal => 'Normal',
            Print => 'Print',
            CSV => 'CSV',
        },
        Name => 'ResultForm',
        SelectedID => $Param{ResultForm} || 'Normal',
    );
    $Param{'StatesStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => { $Self->{StateObject}->StateList(
             UserID => $Self->{UserID},
             Action => $Self->{Action},
             )
        },
        Name => 'StateIDs',
        Multiple => 1,
        Size => 5,
        SelectedIDRefArray => $Param{StateIDs},
    );
    $Param{'PriotitiesStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => { $Self->{PriorityObject}->PriorityList(
            UserID => $Self->{UserID},
            Action => $Self->{Action},
            ),
        },
        Name => 'PriorityIDs',
        Multiple => 1,
        Size => 5,
        SelectedIDRefArray => $Param{PriorityIDs},
    );
    $Param{'TicketCreateTimePoint'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => {
            1 => ' 1',
            2 => ' 2',
            3 => ' 3',
            4 => ' 4',
            5 => ' 5',
            6 => ' 6',
            7 => ' 7',
            8 => ' 8',
            9 => ' 9',
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
        Name => 'TicketCreateTimePoint',
        SelectedID => $Param{TicketCreateTimePoint},
    );
    $Param{'TicketCreateTimePointStart'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => {
            'Last' => 'last',
            'Before' => 'before',
        },
        Name => 'TicketCreateTimePointStart',
        SelectedID => $Param{TicketCreateTimePointStart} || 'Last',
    );
    $Param{'TicketCreateTimePointFormat'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => {
            minute => 'minute(s)',
            hour => 'hour(s)',
            day => 'day(s)',
            week => 'week(s)',
            month => 'month(s)',
            year => 'year(s)',
        },
        Name => 'TicketCreateTimePointFormat',
        SelectedID => $Param{TicketCreateTimePointFormat},
    );
    $Param{TicketCreateTimeStart} = $Self->{LayoutObject}->BuildDateSelection(
        %Param,
        Prefix => 'TicketCreateTimeStart',
        Format => 'DateInputFormat',
        DiffTime => -((60*60*24)*30),
    );
    $Param{TicketCreateTimeStop} = $Self->{LayoutObject}->BuildDateSelection(
        %Param,
        Prefix => 'TicketCreateTimeStop',
        Format => 'DateInputFormat',
    );
    # html search mask output
    return $Self->{LayoutObject}->Output(
        TemplateFile => 'CustomerTicketSearch',
        Data => \%Param,
    );
}
# --
sub MaskCSVResult {
    my $Self = shift;
    my %Param = @_;
    $Param{Age} = $Self->{LayoutObject}->CustomerAge(Age => $Param{Age}, Space => ' ');
    # customer info string
    $Param{CustomerName} = '('.$Param{CustomerName}.')' if ($Param{CustomerName});
    # create & return output
    return $Self->{LayoutObject}->Output(
        TemplateFile => 'CustomerTicketSearchResultCSV',
        Data => \%Param,
    );
}
# --
sub MaskPrintResult {
    my $Self = shift;
    my %Param = @_;
    $Param{Age} = $Self->{LayoutObject}->CustomerAge(Age => $Param{Age}, Space => ' ');
    # customer info string
    $Param{CustomerName} = '('.$Param{CustomerName}.')' if ($Param{CustomerName});
    # create & return output
    return $Self->{LayoutObject}->Output(
        TemplateFile => 'CustomerTicketSearchResultPrintTable',
        Data => \%Param,
    );
}
# --
1;
