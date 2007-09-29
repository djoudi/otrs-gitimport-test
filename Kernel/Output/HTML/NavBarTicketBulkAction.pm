# --
# Kernel/Output/HTML/NavBarTicketBulkAction.pm
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: NavBarTicketBulkAction.pm,v 1.5 2007-09-29 10:49:27 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Output::HTML::NavBarTicketBulkAction;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.5 $) [1];

sub new {
    my $Type  = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (qw(ConfigObject LogObject DBObject TicketObject LayoutObject UserID)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    return $Self;
}

sub Run {
    my $Self   = shift;
    my %Param  = @_;
    my %Return = ();

    if ( $Self->{ConfigObject}->Get('Ticket::Frontend::BulkFeature') && $Param{Type} eq 'Ticket' ) {
        $Return{'0009999'} = {
            Description => 'Bulk Actions on Tickets',
            Name        => 'Bulk-Action',
            Image       => 'misc.png',
            Link        => '',
            LinkOption  => 'onclick="BulkSubmit(); return false;"',
        };
    }

    return %Return;
}

1;
