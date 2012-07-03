#!/usr/bin/perl -w
# --
# bin/otrs.CleanupTicketMetadata.pl - remove unneeded ticket meta data
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: otrs.CleanupTicketMetadata.pl,v 1.1 2012-07-03 12:13:18 mg Exp $
# --
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU AFFERO General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
# or see L<http://www.gnu.org/licenses/agpl.txt>.
# --

# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin) . '/Kernel/cpan-lib';
use lib dirname($RealBin) . '/Custom';

use strict;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.1 $) [1];

use Getopt::Long;
use Kernel::Config;
use Kernel::System::Encode;
use Kernel::System::Time;
use Kernel::System::Log;
use Kernel::System::Main;
use Kernel::System::DB;
use Kernel::System::User;
use Kernel::System::Group;
use Kernel::System::Queue;
use Kernel::System::Ticket;
use Kernel::System::VariableCheck qw(:all);

sub _CommonObjects {
    my %Objects;
    $Objects{ConfigObject} = Kernel::Config->new();
    $Objects{EncodeObject} = Kernel::System::Encode->new(%Objects);
    $Objects{LogObject}    = Kernel::System::Log->new(
        LogPrefix => 'OTRS-otrs.CleanupTicketMetadata.pl',
        %Objects,
    );
    $Objects{TimeObject}   = Kernel::System::Time->new(%Objects);
    $Objects{MainObject}   = Kernel::System::Main->new(%Objects);
    $Objects{DBObject}     = Kernel::System::DB->new(%Objects);
    $Objects{UserObject}   = Kernel::System::User->new(%Objects);
    $Objects{GroupObject}  = Kernel::System::Group->new(%Objects);
    $Objects{QueueObject}  = Kernel::System::Queue->new(%Objects);
    $Objects{TicketObject} = Kernel::System::Ticket->new(%Objects);

    return \%Objects;
}

sub Run {

    my %Opts = ();
    Getopt::Long::Configure('no_ignore_case');
    GetOptions(
        'archived|a' => \$Opts{Archived},
        'help|h'     => \$Opts{h},
    );

    if ( $Opts{h} || !$Opts{Archived} ) {
        print <<EOF;
otrs.CleanupTicketMetadata.pl <Revision $VERSION> - Remove unneeded ticket metadata
Copyright (C) 2001-2012 OTRS AG, http://otrs.org/

Usage:
    otrs.CleanupTicketMetadata.pl --archived

    # Deletes ticket/article seen flags and ticket watcher entries for archived tickets.
    # This does not regularly need to be run as this data will automatically be removed
    #   when tickets are archived (depending on your system's configuration).

EOF
        exit 1;
    }

    if ( $Opts{Archived} ) {
        CleanupArchived();
    }
}

sub CleanupArchived {
    my ( $Self, %Param ) = @_;

    my $CommonObject = _CommonObjects();

    # Refresh common objects after a certain number of loop iterations.
    #   This will call event handlers and clean up caches to avoid excessive mem usage.
    my $CommonObjectRefresh = 50;

    if ( !$CommonObject->{ConfigObject}->Get('Ticket::ArchiveSystem') ) {
        print 'Ticket::ArchiveSystem is not enabled!\n';
        return;
    }

    my $DBObject2 = Kernel::System::DB->new( %{$CommonObject} );

    if ( $CommonObject->{ConfigObject}->Get('Ticket::ArchiveSystem::RemoveSeenFlags') ) {

        print "Checking for archived tickets with seen flags...\n";

        # Find all archived tickets which have ticket seen flags set
        return if !$DBObject2->Prepare(
            SQL => "
                SELECT DISTINCT(ticket.id)
                FROM ticket
                    INNER JOIN ticket_flag ON ticket.id = ticket_flag.ticket_id
                WHERE ticket.archive_flag = 1
                    AND ticket_flag.ticket_key = 'Seen'",
            Limit => 1_000_000,
        );

        my $Count = 0;

        while ( my @Row = $DBObject2->FetchrowArray() ) {

            $CommonObject->{TicketObject}->TicketFlagDelete(
                TicketID => $Row[0],
                Key      => 'Seen',
                AllUsers => 1,
            );

            if ( $Count++ % $CommonObjectRefresh == 0 ) {
                print "Removing seen flags of ticket $Count\n";
                $CommonObject = _CommonObjects();
            }
        }

        print "Done (changed $Count tickets).\n";
        print "Checking for archived tickets with seen flags...\n";

        # Find all articles of archived tickets which have ticket seen flags set
        return if !$DBObject2->Prepare(
            SQL => "
                SELECT DISTINCT(article.id)
                FROM article
                    INNER JOIN ticket ON ticket.id = article.ticket_id
                    INNER JOIN article_flag ON article.id = article_flag.article_id
                WHERE ticket.archive_flag = 1
                    AND article_flag.article_key = 'Seen'",
            Limit => 1_000_000,
        );

        $Count = 0;

        while ( my @Row = $DBObject2->FetchrowArray() ) {

            $CommonObject->{TicketObject}->ArticleFlagDelete(
                ArticleID => $Row[0],
                Key       => 'Seen',
                AllUsers  => 1,
            );

            if ( $Count++ % $CommonObjectRefresh == 0 ) {
                print "Removing seen flags of article $Count\n";
                $CommonObject = _CommonObjects();
            }

        }
        print "Done (changed $Count articles).\n";

    }

    if (
        $CommonObject->{ConfigObject}->Get('Ticket::ArchiveSystem::RemoveTicketWatchers')
        && $CommonObject->{ConfigObject}->Get('Ticket::Watcher')
        )
    {

        print "Checking for archived tickets with ticket watcher entries...\n";

        # Find all archived tickets which have ticket seen flags set
        return if !$DBObject2->Prepare(
            SQL => "
                SELECT DISTINCT(ticket.id)
                FROM ticket
                    INNER JOIN ticket_watcher ON ticket.id = ticket_watcher.ticket_id
                WHERE ticket.archive_flag = 1",
            Limit => 1_000_000,
        );

        my $Count = 0;

        while ( my @Row = $DBObject2->FetchrowArray() ) {

            $CommonObject->{TicketObject}->TicketWatchUnsubscribe(
                TicketID => $Row[0],
                AllUsers => 1,
                UserID   => 1,
            );

            if ( $Count++ % $CommonObjectRefresh == 0 ) {
                print "Removing ticket watcher entries of ticket $Count\n";
                $CommonObject = _CommonObjects();
            }
        }

        print "Done (changed $Count tickets).\n";

    }
}

Run();

exit 0;
