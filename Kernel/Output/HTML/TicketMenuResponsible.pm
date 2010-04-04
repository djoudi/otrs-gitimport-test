# --
# Kernel/Output/HTML/TicketMenuResponsible.pm
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: TicketMenuResponsible.pm,v 1.13 2010-04-04 17:09:11 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::TicketMenuResponsible;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.13 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (qw(ConfigObject LogObject DBObject LayoutObject UserID TicketObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Ticket} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need Ticket!' );
        return;
    }

    # check if feature is enabled
    if ( !$Self->{ConfigObject}->Get('Ticket::Responsible') ) {
        return $Param{Counter};
    }

    # check if frontend module registered, if not, do not show action
    if ( $Param{Config}->{Action} ) {
        my $Module = $Self->{ConfigObject}->Get('Frontend::Module')->{ $Param{Config}->{Action} };
        return $Param{Counter} if !$Module;
    }

    # check permission
    my $Config = $Self->{ConfigObject}->Get("Ticket::Frontend::$Param{Config}->{Action}");
    if ($Config) {
        if ( $Config->{Permission} ) {
            my $AccessOk = $Self->{TicketObject}->Permission(
                Type     => $Config->{Permission},
                TicketID => $Param{Ticket}->{TicketID},
                UserID   => $Self->{UserID},
                LogNo    => 1,
            );
            return $Param{Counter} if !$AccessOk;
        }
        if ( $Config->{RequiredLock} ) {
            if (
                $Self->{TicketObject}->LockIsTicketLocked( TicketID => $Param{Ticket}->{TicketID} )
                )
            {
                my $AccessOk = $Self->{TicketObject}->OwnerCheck(
                    TicketID => $Param{Ticket}->{TicketID},
                    OwnerID  => $Self->{UserID},
                );
                return $Param{Counter} if !$AccessOk;
            }
        }
    }
    if (
        !defined $Param{ACL}->{ $Param{Config}->{Action} }
        || $Param{ACL}->{ $Param{Config}->{Action} }
        )
    {
        $Self->{LayoutObject}->Block(
            Name => 'Menu',
        );
        if ( $Param{Counter} ) {
            $Self->{LayoutObject}->Block(
                Name => 'MenuItemSplit',
            );
        }
        $Self->{LayoutObject}->Block(
            Name => 'MenuItem',
            Data => { %{ $Param{Config} }, %{ $Param{Ticket} }, %Param, },
        );
        $Param{Counter}++;
    }

    return $Param{Counter};
}

1;
