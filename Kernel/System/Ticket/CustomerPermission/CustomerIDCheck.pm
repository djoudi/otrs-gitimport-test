# --
# Kernel/System/Ticket/CustomerPermission/CustomerIDCheck.pm - the sub
# module of the global ticket handle
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: CustomerIDCheck.pm,v 1.1 2003-11-26 00:41:27 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Ticket::CustomerPermission::CustomerIDCheck;

use strict;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {}; 
    bless ($Self, $Type);

    # get needed objects
    foreach (qw(ConfigObject LogObject DBObject TicketObject CustomerUserObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    
    return $Self;
}   
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(TicketID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # get ticket data
    my %Ticket = $Self->{TicketObject}->GetTicket(TicketID => $Param{TicketID}, Cached => 1);
    # check customer id
    my %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(User => $Param{UserID});
    # check customer id
    if ($Ticket{CustomerID} && $Ticket{CustomerID} =~ /^\Q$CustomerData{UserCustomerID}\E$/i) {
        return 1;
    }
    else {
        return;
    }
}
# --

1;
