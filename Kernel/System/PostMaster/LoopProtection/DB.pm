# --
# Kernel/System/PostMaster/LoopProtection/DB.pm - backend module of LoopProtection
# Copyright (C) 2002-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: DB.pm,v 1.3 2003-02-08 15:09:40 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see 
# the enclosed file COPYING for license information (GPL). If you 
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::PostMaster::LoopProtection::DB;

use strict;

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

    # --
    # get needed  objects
    # --
    foreach (qw(DBObject LogObject ConfigObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    # --
    # get config options
    # --
    $Self->{PostmasterMaxEmails} = $Self->{ConfigObject}->Get('PostmasterMaxEmails')
        || 40;
    # --
    # create logfile name
    # --
    my ($Sec, $Min, $Hour, $Day, $Month, $Year) = localtime(time);
    $Year=$Year+1900;
    $Month++;
    $Self->{LoopProtectionDate} .= $Year.'-'.$Month.'-'.$Day;    

    return $Self;
}
# --
sub SendEmail {
    my $Self = shift;
    my %Param = @_;
    my $To = $Param{To} || return;

    # --
    # insert log
    # --
    
    if ($Self->{DBObject}->Do(
        SQL => "INSERT INTO ticket_loop_protection (sent_to, sent_date)".
        " VALUES ('".$Self->{DBObject}->Quote($To)."', '$Self->{LoopProtectionDate}')",
    )) {
        # --
        # delete old enrties
        # --
        $Self->{DBObject}->Do(
            SQL => "DELETE FROM ticket_loop_protection WHERE ".
            " sent_date != '$Self->{LoopProtectionDate}'",
        );
        return 1;
    }
    else {
        return;
    }
}
# -- 
sub Check {
    my $Self = shift;
    my %Param = @_;
    my $To = $Param{To} || return;
    my $Count = 0;

    # --
    # check existing logfile
    # --
    my $SQL = "SELECT count(*) FROM ticket_loop_protection " .
    " WHERE " .
    " sent_to = '".$Self->{DBObject}->Quote($To)."' ".
    " AND ".
    " sent_date = '$Self->{LoopProtectionDate}'";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Count = $Row[0];
    }
    # --
    # check possible loop
    # --
    if ($Count >= $Self->{PostmasterMaxEmails}) {
        $Self->{LogObject}->Log(
          Priority => 'error',
          Message => "LoopProtection!!! Send no more emails to '$To'! Max. count of $Count has been reached!",
        );
        return;
    }
    else {
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "Sent email to '$To'! The count is '$Count' today!",
        );
        return 1;
    }
}
# --

1;
