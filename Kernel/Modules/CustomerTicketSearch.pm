# --
# Kernel/Modules/CustomerTicketSearch.pm - Utilities for tickets
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: CustomerTicketSearch.pm,v 1.3 2004-06-22 09:58:37 martin Exp $
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
    
use vars qw($VERSION);
$VERSION = '$Revision: 1.3 $';
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
        die "Got no $_!" if (!$Self->{$_});
    }
    $Self->{UserObject} = Kernel::System::User->new(%Param);
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);
    $Self->{PriorityObject} = Kernel::System::Priority->new(%Param);
    $Self->{StateObject} = Kernel::System::State->new(%Param);

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    # get confid data
    $Self->{StartHit} = $Self->{ParamObject}->GetParam(Param => 'StartHit') || 1;
    $Self->{SearchLimit} = $Self->{ConfigObject}->Get('SearchLimit') || 200;
    $Self->{SearchPageShown} = $Self->{ConfigObject}->Get('SearchPageShown') || 40;
    $Self->{SortBy} = $Self->{ParamObject}->GetParam(Param => 'SortBy') || 'Age';
    $Self->{Order} = $Self->{ParamObject}->GetParam(Param => 'Order') || 'Down';
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
    foreach (qw(TicketNumber From To Cc Subject Body CustomerID ResultForm TimeSearchType
      TicketCreateTimePointFormat TicketCreateTimePoint 
      TicketCreateTimePointStart
      TicketCreateTimeStart TicketCreateTimeStartDay TicketCreateTimeStartMonth 
      TicketCreateTimeStartYear
      TicketCreateTimeStop TicketCreateTimeStopDay TicketCreateTimeStopMonth 
      TicketCreateTimeStopYear 
    )) {
        # load profiles string params (press load profile)
        if (($Self->{Subaction} eq 'LoadProfile' && $Self->{Profile}) || $Self->{TakeLastSearch}) {
            my $SQL = "SELECT profile_value FROM search_profile".
              " WHERE ".
              " profile_name = '".$Self->{DBObject}->Quote($Self->{Profile})."' AND ".
              " profile_key = '$_' AND ".
              " login = 'Customer::".$Self->{DBObject}->Quote($Self->{UserLogin})."'";
            $Self->{DBObject}->Prepare(SQL => $SQL);
            while (my @Row = $Self->{DBObject}->FetchrowArray()) {
                $GetParam{$_} = $Row[0];
            }
        }
        # get search string params (get submitted params)
        else {
            $GetParam{$_} = $Self->{ParamObject}->GetParam(Param => $_);
            # remove white space on the end
            if ($GetParam{$_}) {
                $GetParam{$_} =~ s/\s$//g;
            }
        }
    }
    # get array params
    foreach (qw(StateIDs StateTypeIDs PriorityIDs)) { 
        # load profile array params (press load profile)
        if (($Self->{Subaction} eq 'LoadProfile' && $Self->{Profile}) || $Self->{TakeLastSearch}) {
            my $SQL = "SELECT profile_value FROM search_profile".
              " WHERE ".
              " profile_name = '".$Self->{DBObject}->Quote($Self->{Profile})."' AND ".
              " profile_key = '$_' AND ".
              " login = 'Customer::".$Self->{DBObject}->Quote($Self->{UserLogin})."'";
            $Self->{DBObject}->Prepare(SQL => $SQL);
            my @Array = ();
            while (my @Row = $Self->{DBObject}->FetchrowArray()) {
                push(@{$GetParam{$_}}, $Row[0]);
            }
        }
        # get search array params (get submitted params)
        else {
            if ($Self->{ParamObject}->GetArray(Param => $_)) {
                if ($Self->{ParamObject}->GetArray(Param => $_)) {
                    @{$GetParam{$_}} = $Self->{ParamObject}->GetArray(Param => $_);
                }
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
            my $SQL = "DELETE FROM search_profile WHERE ".
                  "profile_name = '".$Self->{DBObject}->Quote($Self->{Profile}).
                  "' AND login = 'Customer::".$Self->{DBObject}->Quote($Self->{UserLogin})."'";
            $Self->{DBObject}->Do(SQL => $SQL);
            # insert new profile params
            foreach my $Key (keys %GetParam) {
              if ($GetParam{$Key}) {
                if (ref($GetParam{$Key}) eq 'ARRAY') {
                    foreach (@{$GetParam{$Key}}) {
                      my $SQL = "INSERT INTO search_profile (login, profile_name, ".
                        "profile_key, profile_value) VALUES ".
                        " ('Customer::".$Self->{DBObject}->Quote($Self->{UserLogin})."', '".
                        $Self->{DBObject}->Quote($Self->{Profile})."', '$Key', '".
                        $Self->{DBObject}->Quote($_)."')";
                      $Self->{DBObject}->Do(SQL => $SQL);
                    }
                }
                else {
                    my $SQL = "INSERT INTO search_profile (login, profile_name, ".
                      "profile_key, profile_value) VALUES ".
                      " ('Customer::".$Self->{DBObject}->Quote($Self->{UserLogin})."', '".
                        $Self->{DBObject}->Quote($Self->{Profile})."', '$Key', '".
                        $Self->{DBObject}->Quote($GetParam{$Key})."')";
                    $Self->{DBObject}->Do(SQL => $SQL);
                }
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
            if ($GetParam{TicketCreateTimePointFormat} eq 'day') {
                $Time = $GetParam{TicketCreateTimePoint} * 60 * 24;
            }
            elsif ($GetParam{TicketCreateTimePointFormat} eq 'week') {
                $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 7;
            }
            elsif ($GetParam{TicketCreateTimePointFormat} eq 'month') {
                $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 30;
            }
            elsif ($GetParam{TicketCreateTimePointFormat} eq 'year') {
                $Time = $GetParam{TicketCreateTimePoint} * 60 * 24 * 356;
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
            if ($GetParam{ResultForm} eq 'Print') {
                $Param{StatusTable} .= $Self->MaskPrintResult(
                    %Data, 
                    %UserInfo,
                    CustomerData => \%CustomerData,
                    GetParam => \%GetParam,
                );
            }
            elsif ($GetParam{ResultForm} eq 'CSV') {
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
                my $TicketHook = $Self->{ConfigObject}->Get('TicketHook');
                my $Subject = $Data{Subject};
                $Subject =~ s/^RE://i;
                $Subject =~ s/\[${TicketHook}:\s*\d+\]//;

                $Param{StatusTable} .= $Self->MaskShortResult(
                    %Data,
                    Subject => $Subject,
                    %UserInfo,
                );
            }
          }
        }
        # start html page
        my $Output = $Self->{LayoutObject}->CustomerHeader(Area => 'Customer', Title => 'Search');
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
            $Output = $Self->{LayoutObject}->PrintHeader(Area => 'Customer', Title => 'Result', Width => 800);
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
            $Self->{DBObject}->Do(
                SQL => "DELETE FROM search_profile WHERE ".
                  "profile_name = '".$Self->{DBObject}->Quote($Self->{Profile}).
                  "' AND login = '".$Self->{DBObject}->Quote($Self->{UserLogin})."'",
            );
            %GetParam = ();
            $Self->{Profile} = '';
        }
        # set profile to zero
        elsif (!$Self->{SelectTemplate}) {
#            $Self->{Profile} = '';
        }
        # generate search mask
        my $Output = $Self->{LayoutObject}->CustomerHeader(Area => 'Customer', Title => 'Search');
        $Output .= $Self->{LayoutObject}->CustomerNavigationBar();
        $Output .= $Self->MaskForm(
            %GetParam, 
            Profile => $Self->{Profile}, 
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
            1 => 1, 
            2 => 2, 
            3 => 3, 
            4 => 4, 
            5 => 5, 
            6 => 6, 
            7 => 7, 
            8 => 8, 
            9 => 9, 
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
sub MaskShortResult {
    my $Self = shift;
    my %Param = @_;
    $Param{Age} = $Self->{LayoutObject}->CustomerAge(Age => $Param{Age}, Space => ' ');
    # customer info string 
    $Param{CustomerName} = '('.$Param{CustomerName}.')' if ($Param{CustomerName});
    foreach (qw(From To Cc Subject)) {
        $Param{$_} = $Self->{LayoutObject}->{LanguageObject}->CharsetConvert(
            Text => $Param{$_},
            From => $Param{ContentCharset},
        ) || '-';
    }
    # create & return output
    return $Self->{LayoutObject}->Output(
        TemplateFile => 'CustomerTicketSearchResultShortTable', 
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
