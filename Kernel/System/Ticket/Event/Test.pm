# --
# Kernel/System/Ticket/Event/Test.pm - test event module
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: Test.pm,v 1.6 2007-10-02 10:34:25 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Ticket::Event::Test;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.6 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (qw(ConfigObject TicketObject LogObject UserObject CustomerUserObject SendmailObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TicketID Event Config)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    if ( $Param{Event} eq 'TicketCreate' ) {
        my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Param{TicketID} );
        if ( $Ticket{State} eq 'Test' ) {

            # do some stuff
            $Self->{TicketObject}->HistoryAdd(
                TicketID     => $Param{TicketID},
                CreateUserID => $Param{UserID},
                HistoryType  => 'Misc',
                Name         => "Some Info about Changes!",
            );
        }
    }
    elsif ( $Param{Event} eq 'MoveTicket' ) {
        my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Param{TicketID} );
        if ( $Ticket{Queue} eq 'Test' ) {

            # do some stuff
            $Self->{TicketObject}->HistoryAdd(
                TicketID     => $Param{TicketID},
                CreateUserID => $Param{UserID},
                HistoryType  => 'Misc',
                Name         => "Some Info about Changes!",
            );
        }
    }
}

1;
