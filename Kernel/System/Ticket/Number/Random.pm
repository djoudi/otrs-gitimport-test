# --
# Ticket/Number/Random.pm - a ticket number random generator
# Copyright (C) 2002-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Random.pm,v 1.7.2.1 2003-06-01 18:05:47 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
# Note: 
# available objects are: ConfigObject, LogObject and DBObject
# 
# Generates random ticket numbers like ss.... (e. g. 100057866352, 103745394596, ...)
# --
 
package Kernel::System::Ticket::Number::Random;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.7.2.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub CreateTicketNr {
    my $Self = shift;
    # get needed config options 
    my $SystemID = $Self->{ConfigObject}->Get('SystemID');
    # random counter
    my $Count = int(rand(9999999999));
    my $Length = length($Count);
    $Length = 10 - $Length;
    # fill up 
    foreach (1..$Length) {
        $Count = "0$Count";
    }
    # create new ticket number
    my $Tn = $SystemID.$Count;
    # Check ticket number. If exists generate new one! 
    if ($Self->CheckTicketNr(Tn=>$Tn)) {
        $Self->{LoopProtectionCounter}++;
        if ($Self->{LoopProtectionCounter} >= 1000) {
          # loop protection
          $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "CounterLoopProtection is now $Self->{LoopProtectionCounter}!".
                   " Stoped CreateTicketNr()!",
          );
          return;
        }
        # create new ticket number again
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "Tn ($Tn) exists! Creating new one.",
        );
        $Tn = $Self->CreateTicketNr();
    }
    return $Tn;
}
# --
sub GetTNByString {
    my $Self = shift;
    my $String = shift || return;
    # get needed config options 
    my $SystemID = $Self->{ConfigObject}->Get('SystemID');
    my $TicketHook = $Self->{ConfigObject}->Get('TicketHook');
    # check ticket number
    if ($String =~ /$TicketHook:+.{0,1}($SystemID\d{2,12})-FW/i) {
        return $1;
    }
    else {
        if ($String =~ /$TicketHook:+.{0,1}($SystemID\d{2,12})/i) {
            return $1;
        }
        else {
            return;
        }
    }
}
# --
1;
