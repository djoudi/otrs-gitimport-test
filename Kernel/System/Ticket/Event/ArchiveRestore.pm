# --
# Kernel/System/Ticket/Event/ArchiveRestore.pm - restore ticket from archive
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: ArchiveRestore.pm,v 1.4 2012-11-12 18:37:59 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.
# --

package Kernel::System::Ticket::Event::ArchiveRestore;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.4 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (
        qw(ConfigObject TicketObject LogObject UserObject CustomerUserObject SendmailObject TimeObject EncodeObject)
        )
    {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Data Event Config)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    for (qw(TicketID)) {
        if ( !$Param{Data}->{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_ in Data!" );
            return;
        }
    }

    # return if no archive feature is enabled
    return 1 if !$Self->{ConfigObject}->Get('Ticket::ArchiveSystem');

    # get ticket
    my %Ticket = $Self->{TicketObject}->TicketGet(
        TicketID      => $Param{Data}->{TicketID},
        UserID        => 1,
        DynamicFields => 0,
    );
    return if !%Ticket;

    # do not restore until ticket is closed, removed or merged
    # (restore just open tickets)
    return 1 if $Ticket{StateType} eq 'closed';
    return 1 if $Ticket{StateType} eq 'removed';
    return 1 if $Ticket{StateType} eq 'merged';

    # restore ticket from archive
    return if !$Self->{TicketObject}->TicketArchiveFlagSet(
        TicketID    => $Param{Data}->{TicketID},
        UserID      => 1,
        ArchiveFlag => 'n',
    );

    return 1;
}

1;
