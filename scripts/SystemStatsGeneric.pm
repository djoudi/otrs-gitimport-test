# --   
# Kernel/Modules/SystemStatsGeneric.pm - generic pure SQL stats module
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --   
# $Id: SystemStatsGeneric.pm,v 1.2 2003-03-10 16:34:45 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
#
# Description: copy this file into Kernel/Modules/ and change the 
# config options ($Title, $DetailText, $SQL, ...) below.
#
# Add a html link to your OTRS agent frontend, e. g.
# <a href="$Env{"Baselink"}Action=SystemStatsGeneric">Your Stats</a>
# and you will get your printable pure SQL stats. 
#
# If you want a CSV file add the param CSV=1 to your html link e. g.
# <a href="$Env{"Baselink"}Action=SystemStatsGeneric&CSV=1">Your CVS Stats File</a>
# 
# --

package Kernel::Modules::SystemStatsGeneric;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

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
   foreach (qw(ParamObject DBObject QueueObject LayoutObject ConfigObject LogObject UserObject)) {
       die "Got no $_" if (!$Self->{$_});
   }
   $Self->{CSV} = $Self->{ParamObject}->GetParam(Param => 'CSV') || 0;
   return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # ------------------------------------------------------------------------------ #
    # Config options!
    # ------------------------------------------------------------------------------ #
    my $Title = 'Name of Stats';
    my $DetailText = 'Some text about the content! ($Text{"Stand"}: $Env{"Time"})';
    my $CSVFile = 'csv-file';
    my $SQLLimit = 5000;
    my $SQL = qq|SELECT * FROM system_user|;
    # ------------------------------------------------------------------------------ #

    # --
    # starting with page ...
    # --
    my $CSV = '';
    my $Output = '';
    # --
    # permission check
    # --
    if (!$Self->{PermissionObject}->Section(UserID => $Self->{UserID}, Section => 'Stats')) {
        $Output .= $Self->{LayoutObject}->NoPermission(
            Message => 'You have to be in the stats group!'
        );
        return $Output;
    }
    # --
    # generate csv if needed
    # --
    if ($Self->{CSV}) {
      $CSV = $Self->{LayoutObject}->Output(
        Data => { Title => $Title, DetailText => $DetailText},
        Template => '$Data{"Title"};$Text{"generated by"} $Env{"UserFirstname"} $Env{"UserLastname"} ($Env{"UserEmail"}) - $Env{"Time"}').";\n";
      $CSV .= $Self->{LayoutObject}->Output(Template => $DetailText).";\n";
    }
    else {
      $Output = $Self->{LayoutObject}->PrintHeader(Title => $Title, Width => 900);
      $Output .= $Self->{LayoutObject}->Output(
       Data => { Title => $Title, DetailText => $DetailText},
       Template => '
       <table border="0" cellspacing="1" cellpadding="0" width="100%">
       <tr>
        <td align="right" valign="top"><font size="-2">$Text{"printed by"} $Env{"UserFirstname"} $Env{"UserLastname"} ($Env{"UserEmail"}) - $Env{"Time"}</font></td>
       </td>
       </table>

       <table border="0" cellspacing="1" cellpadding="0" width="100%">
       <tr>
         <td><font size="+1"><b>$Data{"Title"}</font></b></td>
       </td>
       </table>
       <br>
       <p>
        $Data{"DetailText"}
       </p>
      ');
    }
    # --
    # get table columns names 
    # --
    my $sth = $Self->{DBObject}->{dbh}->prepare($SQL);
    $sth->execute;
    my $names = $sth->{NAME};
    if (!$Self->{CSV}) {
        $Output .= '<table border="0" width="100%" cellspacing="0" cellpadding="3">'; 
        $Output .= "<tr>\n"; 
    }
    foreach my $col (@{$names}) {
        if ($Self->{CSV}) {
            $CSV .= "$col;";
        }
        else {
            $Output .= "<th class=\"item\">$col</th>\n";
        }
    }
    if ($Self->{CSV}) {
        $CSV .= "\n";
    }
    else {
        $Output .= "</tr>\n"; 
    }
    # --
    # get table columns names
    # --
    $Self->{DBObject}->Prepare(SQL => $SQL, Limit => $SQLLimit);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        if (!$Self->{CSV}) {
            $Output .= "<tr>\n"; 
        }
        foreach (@Row) {
            if ($Self->{CSV}) {
                $CSV .= "$_;";
            }
            else {
                $Output .= "<td class=\"small\">$_</td>\n";
            }
        }
        if ($Self->{CSV}) {
            $CSV .= "\n";
        }
        else {
            $Output .= "</tr>\n"; 
        }
    }
    # -- 
    # return HTML or CSV page
    # --
    if ($Self->{CSV}) { 
        # return csv to download
        my ($s,$m,$h, $D,$M,$Y, $wd,$yd,$dst) = localtime(time);
        $Y = $Y+1900;
        $M++;
        $M = sprintf("%02d", $M);
        $D = sprintf("%02d", $D);
        $h = sprintf("%02d", $h);
        $m = sprintf("%02d", $m);
        return $Self->{LayoutObject}->Attachment(
            File => "$CSVFile"."_"."$Y-$M-$D"."_"."$h-$m.csv",
            Type => "text/csv",
            Data => "\n".$CSV,
        ); 
    }
    else {
        # return html
        $Output .= $Self->{LayoutObject}->Output(Template => '</table><br>');
        $Output .= $Self->{LayoutObject}->PrintFooter();
        return $Output;
    }
}
# --

1;
