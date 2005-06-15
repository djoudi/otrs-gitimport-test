# --
# Kernel/Modules/Calendar.pm - spelling module
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentCalendarSmall.pm,v 1.2 2005-06-15 11:47:25 rk Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentCalendarSmall;

use strict;

use Date::Pcalc qw(Today Days_in_Month Day_of_Week);

use vars qw($VERSION);

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # get common opjects
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check all needed objects
    foreach (qw(TicketObject ParamObject DBObject QueueObject LayoutObject ConfigObject LogObject)) {
        if (!$Self->{$_}) {
            $Self->{LayoutObject}->FatalError(Message => "Got no $_!");
        }
    }

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    my $Year  = 0;
    my $Month = 0;
    my $Day   = 1;
    my $Prefix = "";
    # Prefix
    if ($Self->{ParamObject}->GetParam(Param => 'Prefix')) {
        $Prefix = $Self->{ParamObject}->GetParam(Param => 'Prefix');
    }
    my $TimeVacationDays = $Self->{ConfigObject}->Get('TimeVacationDays');
    my $TimeVacationDaysOneTime = $Self->{ConfigObject}->Get('TimeVacationDaysOneTime');
    # Today
    {
      (my $yyyy,my $mm,my $tt) = Today;
      $TimeVacationDaysOneTime->{$yyyy}->{$mm}->{$tt} = 'Today';
    }
    my @MonthArray = (
        '',
        'January', 
        'February', 
        'March', 
        'April', 
        'May', 
        'Juny', 
        'July', 
        'August', 
        'September', 
        'October', 
        'November', 
        'December',
    );

    # show month
    if ($Self->{ParamObject}->GetParam(Param => 'Month')) {
        my @Date = split /,/, $Self->{ParamObject}->GetParam(Param => 'Month');
        $Month = $Date[0];
        $Year = $Date[1];
    }
    else {
        ($Year, $Month, $Day) = Today;
    }
    my $DaysOfMonth = Days_in_Month($Year, $Month);
    my $FirstWeekDay = Day_of_Week($Year, $Month, 1);
    $Param{Month} = $MonthArray[$Month];
    $Param{Year} = $Year;
    # Last Month
    if ($Month == 1) {
        $Param{Back} = '12,'.($Year - 1);
    }
    else {
        $Param{Back} = ($Month - 1).','.$Year;
    }
    # Next Month
    if ($Month == 12) {
        $Param{Next} = '1,'.($Year + 1);
    }
    else {
        $Param{Next} = ($Month + 1).','.$Year;
    }
    
    # TimeInputFormat
    my $DateFormat = 'Option';
    if ($Self->{ConfigObject}->Get('TimeInputFormat') eq 'Input') {
        $DateFormat = 'Input';
    }
    $Self->{LayoutObject}->Block(
        Name => "DateFormat".$DateFormat,
        Data => {Prefix => $Prefix},
    );    
    # generate Calendar sheet
    my $CalDay = 1;
    while ($CalDay <= $DaysOfMonth) {
        $Self->{LayoutObject}->Block(
            Name => "ArticleTime",
            Data => {},
        );
        for (my $Col=1;$Col<8 && $CalDay <= $DaysOfMonth; $Col++) {
            if ($CalDay == 1 && $FirstWeekDay > $Col) {
                $Self->{LayoutObject}->Block(
                    Name => "ColEmpty",
                    Data => {},
                );
            }
            else {
                #styles
                my $Style = '';
                if (defined($TimeVacationDaysOneTime->{$Year}->{$Month}->{$CalDay}) && $TimeVacationDaysOneTime->{$Year}->{$Month}->{$CalDay} eq 'Today') {
                    $Style = 'bgcolor="orange"';
                }
                elsif (defined($TimeVacationDays->{$Month}->{$CalDay}) || defined($TimeVacationDaysOneTime->{$Year}->{$Month}->{$CalDay})) {
                    $Style = 'bgcolor="#ffcf00"';
                }
                elsif ($Col == 7 || $Col == 6) {
                    $Style = 'bgcolor="#FFE0E0"';
                }
                $Self->{LayoutObject}->Block(
                    Name => "Col",
                    Data => {
                        Day   => $CalDay,
                        Month => $Month,
                        Year  => $Year,
                        Style => $Style,
                    },                
                );  
                $CalDay++;
            }
        }
    }
    # --
    # start with page ...
    # --
    $Output .= $Self->{LayoutObject}->Header(Type => 'Small');
    $Output .= $Self->{LayoutObject}->Output(TemplateFile => 'AgentCalendarSmall', Data => \%Param);
    $Output .= $Self->{LayoutObject}->Footer(Type => 'Small');
    return $Output;
}

1;
