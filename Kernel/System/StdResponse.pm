# --
# Kernel/System/StdResponse.pm - lib for std responses
# Copyright (C) 2002-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: StdResponse.pm,v 1.8 2003-11-02 00:11:59 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see 
# the enclosed file COPYING for license information (GPL). If you 
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::StdResponse;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.8 $';
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
    foreach (qw(DBObject ConfigObject LogObject)) {
        die "Got no $_" if (!$Self->{$_});
    }

    return $Self;
}
# --
sub StdResponseAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name ValidID Response UserID)) {
      if (!defined($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    # sql
    my $SQL = "INSERT INTO standard_response ".
        " (name, valid_id, comment, text, ".
        " create_time, create_by, change_time, change_by)".
        " VALUES ".
        " ('$Param{Name}', $Param{ValidID}, '$Param{Comment}', '$Param{Response}', ".
        " current_timestamp, $Param{UserID}, current_timestamp,  $Param{UserID})";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        my $Id = 0;
        $Self->{DBObject}->Prepare(
            SQL => "SELECT id FROM standard_response WHERE ".
              "name = '$Param{Name}' AND text = '$Param{Response}'",
        );
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $Id = $Row[0];
        }
        return $Id;
    }
    else {
        return;
    }
}
# --
sub StdResponseGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{ID}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need ID!");
      return;
    }
    # sql 
    my $SQL = "SELECT name, valid_id, comment, text ".
        " FROM ".
        " standard_response ".
        " WHERE ".
        " id = $Param{ID}";
    if (!$Self->{DBObject}->Prepare(SQL => $SQL)) {
        return;
    }
    if (my @Data = $Self->{DBObject}->FetchrowArray()) {
        my %Data = ( 
            ID => $Param{ID},
            Name => $Data[0],
            Comment => $Data[2],
            Response => $Data[3],
            ValidID => $Data[1],
        );
        return %Data;
    }
    else { 
        return;
    }
}
# --
sub StdResponseDelete {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{ID}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need ID!");
      return;
    }
    # sql 
    if ($Self->{DBObject}->Prepare(SQL => "DELETE FROM standard_response WHERE ID = $Param{ID}")) {
        return 1;
    }
    else {
        return;
    }
}
# --
sub StdResponseUpdate {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(ID Name ValidID Response UserID)) {
      if (!defined($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # --
    # db quote
    # --
    foreach (keys %Param) {
            $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    # --
    # sql
    # --
    my $SQL = "UPDATE standard_response SET " .
        " name = '$Param{Name}', " .
        " text = '$Param{Response}', " .
        " comment = '$Param{Comment}', " .
        " valid_id = $Param{ValidID}, " . 
        " change_time = current_timestamp, " .
        " change_by = $Param{UserID} " .
        " WHERE " .
        " id = $Param{ID}";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}
# --
sub StdResponseLookup {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    if (!$Param{StdResponse} && !$Param{StdResponseID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Got no StdResponse or StdResponseID!");
        return;
    }
    # --
    # check if we ask the same request?
    # --
    if ($Param{StdResponseID} && $Self->{"StdResponseLookup$Param{StdResponseID}"}) {
        return $Self->{"StdResponseLookup$Param{StdResponseID}"};
    }
    if ($Param{StdResponse} && $Self->{"StdResponseLookup$Param{StdResponse}"}) {
        return $Self->{"StdResponseLookup$Param{StdResponse}"};
    }
    # --
    # get data
    # --
    my $SQL = '';
    my $Suffix = '';
    if ($Param{StdResponse}) {
        $Suffix = 'StdResponseID';
        $SQL = "SELECT id FROM standard_response WHERE name = '$Param{StdResponse}'";
    }
    else {
        $Suffix = 'StdResponse';
        $SQL = "SELECT name FROM standard_response WHERE id = $Param{StdResponseID}";
    }
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        # store result
        $Self->{"StdResponse$Suffix"} = $Row[0];
    }
    # --
    # check if data exists
    # --
    if (!exists $Self->{"StdResponse$Suffix"}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Found no \$$Suffix!");
        return;
    }

    return $Self->{"StdResponse$Suffix"};
}
# --
sub GetAllStdResponses {
    my $Self = shift;
    my %Param = @_;
    if (!defined $Param{Valid}) {
        $Param{Valid} = 1;
    }
    # --
    # return data
    # --
    return $Self->{DBObject}->GetTableData(
        Table => 'standard_response',
        What => 'id, name',
        Valid => $Param{Valid},
    );
}   
# --

1;
