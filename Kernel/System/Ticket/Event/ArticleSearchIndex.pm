# --
# Kernel/System/Ticket/Event/ArticleSearchIndex.pm - update article search index
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: ArticleSearchIndex.pm,v 1.2 2008-05-16 09:50:21 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::System::Ticket::Event::ArticleSearchIndex;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

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
    for (qw(TicketID Event Config)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    return 1 if !$Param{ArticleID};

    $Self->{TicketObject}->ArticleIndexBuild(
        ArticleID => $Param{ArticleID},
        UserID    => 1,
    );

    return 1;
}

1;
