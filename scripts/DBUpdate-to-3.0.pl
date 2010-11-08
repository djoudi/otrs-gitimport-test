#!/usr/bin/perl -w
# --
# DBUpdate-to-3.0.pl - update script to migrate OTRS 2.4.x to 3.0.x
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: DBUpdate-to-3.0.pl,v 1.2 2010-11-08 15:34:19 martin Exp $
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
# or see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;

# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin) . '/Kernel/cpan-lib';

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

use Getopt::Std;
use Kernel::Config;
use Kernel::System::CheckItem;
use Kernel::System::Log;
use Kernel::System::Time;
use Kernel::System::Encode;
use Kernel::System::DB;
use Kernel::System::Main;
use Kernel::System::State;
use Kernel::System::SysConfig;
use Kernel::System::User;

# get options
my %Opts;
getopt( 'h', \%Opts );
if ( $Opts{h} ) {
    print "DBUpdate-to-3.0.pl <Revision $VERSION> - Database migration script\n";
    print "Copyright (C) 2001-2010 OTRS AG, http://otrs.org/\n";
    exit 1;
}

print "Start migration of the system...\n\n";

# instantiate needed objects (1/2)
my %CommonObject;
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject}    = Kernel::System::Log->new(
    LogPrefix => 'OTRS-DBUpdate-to-3.0',
    %CommonObject,
);
$CommonObject{EncodeObject}    = Kernel::System::Encode->new(%CommonObject);
$CommonObject{MainObject}      = Kernel::System::Main->new(%CommonObject);
$CommonObject{TimeObject}      = Kernel::System::Time->new(%CommonObject);
$CommonObject{DBObject}        = Kernel::System::DB->new(%CommonObject);
$CommonObject{SysConfigObject} = Kernel::System::SysConfig->new(%CommonObject);

# start migration process 1/2
RebuildConfig();

$CommonObject{StateObject} = Kernel::System::State->new(%CommonObject);
$CommonObject{UserObject}  = Kernel::System::User->new(%CommonObject);

# start migration process 2/2
MigrateThemes();
PermissionTableCleanup();
RemovePendingTime();

print "\nMigration of the system completed!\n";

exit 0;

=item RebuildConfig()

migrate all themes from the database to SysConfig

    RebuildConfig();

=cut

sub RebuildConfig {

    print "NOTICE: Rebuild Config...\n";

    if ( !$CommonObject{SysConfigObject}->WriteDefault() ) {
        die "ERROR: Can't write default config files!";
    }

    $CommonObject{MainObject}   = Kernel::System::Main->new(%CommonObject);
    $CommonObject{ConfigObject} = Kernel::Config->new(%CommonObject);

    return 1;
}

=item MigrateThemes()

migrate all themes from the database to SysConfig

    MigrateThemes();

=cut

sub MigrateThemes {

    print "NOTICE: Migrating themes...\n";

    (
        my %Themes
            =
            $CommonObject{DBObject}->GetTableData(
            What  => 'theme, valid_id',
            Table => 'theme',
            )
    ) || die "ERROR: reading themes from database. Migration halted.\n";

    my $Update = $CommonObject{SysConfigObject}->ConfigItemUpdate(
        Key   => 'Frontend::Themes',
        Value => \%Themes,
        Valid => 1,

    ) || die "ERROR: Can't write SysConfig. Migration halted. $!\n";

    return 1;
}

=item PermissionTableCleanup()

remove all not necessary values from permission table

    PermissionTableCleanup();

=cut

sub PermissionTableCleanup {

    print "NOTICE: Permission table cleanup ...";

    my $Success = $CommonObject{DBObject}->Do(
        SQL => 'DELETE FROM group_user WHERE permission_value = \'0\'',
    );

    if ( !$Success ) {
        print "failed!\n";
        return;
    }

    $Success = $CommonObject{DBObject}->Do(
        SQL => 'DELETE FROM group_customer_user WHERE permission_value = \'0\'',
    );

    if ( !$Success ) {
        print "failed!\n";
        return;
    }

    print "done!\n";

    return 1;
}

=item RemovePendingTime()

Set Pending Time to NULL if the ticket does not have a pending-type state.

    RemovePendingTime();

=cut

sub RemovePendingTime {

    print "NOTICE: Setting pending time to null...";

    # read pending state types from config
    my $PendingReminderStateType =
        $CommonObject{ConfigObject}->Get('Ticket::PendingReminderStateType:') || 'pending reminder';
    my $PendingAutoStateType =
        $CommonObject{ConfigObject}->Get('Ticket::PendingAutoStateType:') || 'pending auto';

    # read states
    my @PendingStateIDs = $CommonObject{StateObject}->StateGetStatesByType(
        StateType => [ $PendingReminderStateType, $PendingAutoStateType ],
        Result => 'ID',
    );

    if ( !@PendingStateIDs ) {
        print "done (no pendig states found)!\n";
        return 1;
    }

    # update ticket table via DB driver.
    my $Success = $CommonObject{DBObject}->Do(
        SQL => "UPDATE ticket SET until_time = 0 WHERE until_time > 0"
            . " AND ticket_state_id NOT IN (${\(join ', ', sort @PendingStateIDs)})",
    );

    print "done!\n";

    return 1;
}

1;
