#!/usr/bin/perl -w
# --
# PendingJobs.pl - check pending tickets
# Copyright (C) 2002-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: PendingJobs.pl,v 1.8 2003-06-23 11:19:03 martin Exp $
# --
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
# --

# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin)."/Kernel/cpan-lib";

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.8 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::DB;
use Kernel::System::Ticket;
use Kernel::System::User;
use Kernel::System::State;

# --
# common objects
# --
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => 'OTRS-PendingJobs',
    %CommonObject,
);
$CommonObject{DBObject} = Kernel::System::DB->new(%CommonObject);
$CommonObject{TicketObject} = Kernel::System::Ticket->new(%CommonObject);
$CommonObject{UserObject} = Kernel::System::User->new(%CommonObject);  
$CommonObject{StateObject} = Kernel::System::State->new(%CommonObject);

# --
# check args
# --
my $Command = shift || '--help';
print "PendingJobs.pl <Revision $VERSION> - check pending tickets\n";
print "Copyright (c) 2002-2003 Martin Edenhofer <martin\@otrs.org>\n";

# --
# do ticket auto jobs
# --
my @PendingAutoStateIDs = $CommonObject{StateObject}->StateGetStatesByType(
    Type => 'PendingAuto',
    Result => 'ID',
);
if (@PendingAutoStateIDs) {
    my @TicketIDs = ();
    my $SQL = "SELECT st.id FROM " .
      " ticket as st " .
      " WHERE " .
      " st.ticket_state_id IN ( ${\(join ', ', @PendingAutoStateIDs)} ) ";
    $CommonObject{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $CommonObject{DBObject}->FetchrowArray()) {
        push (@TicketIDs, $Row[0]);
    }
    foreach (@TicketIDs) {
      my %Ticket = $CommonObject{TicketObject}->GetTicket(TicketID => $_);
      if ($Ticket{UntilTime} < 1) {
        my %States = %{$CommonObject{ConfigObject}->Get('StateAfterPending')};
        if ($States{$Ticket{State}}) {
            print " Update ticket state for ticket $Ticket{TicketNumber} ($_) to '$States{$Ticket{State}}'...";
            if ($CommonObject{TicketObject}->SetState(TicketID => $_, State => $States{$Ticket{State}}, UserID => 1,)) {
              if ($States{$Ticket{State}} =~ /^close/i) {
                $CommonObject{TicketObject}->SetLock(
                    TicketID => $_,
                    Lock => 'unlock',
                    UserID => 1,
                    Notification => 0,
                );
              }
                print " done.\n";
            }
            else {
                print " failed.\n";
            }
        }
        else {
            print STDERR "ERROR: No StateAfterPending found for '$Ticket{State}' in Kernel/Config.pm!\n";
        }
      }
    }
}
# --
# do ticket reminder notification jobs
# --
my @PendingReminderStateIDs = $CommonObject{StateObject}->StateGetStatesByType(
    Type => 'PendingReminder',
    Result => 'ID',
);
if (@PendingReminderStateIDs) {
    my @TicketIDs = ();
    my $SQL = "SELECT st.tn, st.id, st.user_id FROM " .
      " ticket as st, ticket_state tsd " .
      " WHERE " .
      " st.ticket_state_id = tsd.id " .
      " AND " .
      " st.ticket_state_id IN ( ${\(join ', ', @PendingReminderStateIDs)} ) ";
    $CommonObject{DBObject}->Prepare(SQL => $SQL);
    while (my @RowTmp = $CommonObject{DBObject}->FetchrowArray()) {
        push (@TicketIDs, $RowTmp[1]);
    }
    foreach (@TicketIDs) {
      my %Ticket = $CommonObject{TicketObject}->GetTicket(TicketID => $_);
      if ($Ticket{UntilTime} < 1) {
        # --
        # send reminder notification
        # --
        print " Send reminder notification (TicketID=$_)\n";
        # get user data
        my %Preferences = $CommonObject{UserObject}->GetUserData(UserID => $Ticket{UserID});
        $CommonObject{TicketObject}->SendNotification(
            Type => 'PendingReminder',
            To => $Preferences{UserEmail},
            CustomerMessageParams => {}, 
            TicketNumber => $CommonObject{TicketObject}->GetTNOfId(ID => $Ticket{TicketID}),
            TicketID => $Ticket{TicketID},
            UserID => 1,
        );
      }
    }
}

exit (0);

