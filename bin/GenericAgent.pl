#!/usr/bin/perl -w
# --
# bin/GenericAgent.pl - a generic agent -=> e. g. close ale emails in a specific queue
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: GenericAgent.pl,v 1.35 2005-02-10 11:48:09 martin Exp $
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


# --                                              -- #
# Config file is under Kernel/Config/GenericAgent.pm #
# --                                              -- #


# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin)."/Kernel/cpan-lib";

use strict;

use vars qw($VERSION $Debug $Limit %Opts %Jobs);

use Getopt::Std;
use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::DB;
use Kernel::System::PID;
use Kernel::System::Time;
use Kernel::System::Ticket;
use Kernel::System::Queue;
use Kernel::System::GenericAgent;

# import %jobs
#use Kernel::Config::GenericAgent qw(%Jobs);

BEGIN {
    # get file version
    $VERSION = '$Revision: 1.35 $';
    $VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;
    # get options
    getopt('fhcdl', \%Opts);
    if ($Opts{'h'}) {
        print "GenericAgent.pl <Revision $VERSION> - OTRS generic agent\n";
        print "Copyright (c) 2001-2004 Martin Edenhofer <martin\@otrs.org>\n";
        print "usage: GenericAgent.pl [-c 'Kernel::Config::GenericAgentJobModule'] [-d 1] [-l <limit>] [-f force]\n";
        exit 1;
    }
    # set debug
    if (!$Opts{'d'}) {
        $Debug = 0;
    }
    else {
        $Debug = $Opts{'d'};
    }
    # set limit
    if (!$Opts{'l'}) {
        $Limit = 3000;
    }
    else {
        $Limit = $Opts{'l'};
    }
    # get generic agent config (job file)
    if (!$Opts{'c'}) {
        $Opts{'c'} = 'Kernel::Config::GenericAgent';
    }
    if ($Opts{'c'} eq 'db') {
        %Jobs = ();
    }
    # load jobs file
    elsif (!eval "require $Opts{'c'};") {
        print STDERR "Can't load agent job file '$Opts{'c'}': $!\n";
        exit 1;
    }
    else {
        # import %Jobs
        eval "import $Opts{'c'}";
    }
}
# set generic agent uid
my $UserIDOfGenericAgent = 1;

# common objects
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => 'OTRS-GenericAgent',
    %CommonObject,
);
$CommonObject{DBObject} = Kernel::System::DB->new(%CommonObject);
$CommonObject{PIDObject} = Kernel::System::PID->new(%CommonObject);
$CommonObject{TimeObject} = Kernel::System::Time->new(%CommonObject);
$CommonObject{TicketObject} = Kernel::System::Ticket->new(
    %CommonObject,
    Debug => $Debug,
);
$CommonObject{QueueObject} = Kernel::System::Queue->new(%CommonObject);
$CommonObject{GenericAgentObject} = Kernel::System::GenericAgent->new(
    %CommonObject,
    Debug => $Debug,
    NoticeSTDOUT => 1,
);
# --
# process all jobs
# --
if ($Opts{'c'} eq 'db') {
    # create pid lock
    if (!$Opts{'f'} && !$CommonObject{PIDObject}->PIDCreate(Name => 'GenericAgent')) {
        print "Notice: GenericAgent.pl is already running!\n";
        exit 1;
    }
    elsif ($Opts{'f'} && !$CommonObject{PIDObject}->PIDCreate(Name => 'GenericAgent')) {
        print "Notice: GenericAgent.pl is already running but is starting again!\n";
    }
    # process jobs
    my %DBJobs = $CommonObject{GenericAgentObject}->JobList();
    foreach my $DBJob (sort keys %DBJobs) {
        my %DBJobRaw = $CommonObject{GenericAgentObject}->JobGet(Name => $DBJob);
        my $Run = 0;
        my $False = 0;
        # check last run
        my ($Sec, $Min, $Hour, $Day, $Month, $Year, $WDay) = $CommonObject{TimeObject}->SystemTime2Date(
            SystemTime => $CommonObject{TimeObject}->SystemTime(),
        );
        $Year = $Year+1900;
        $Month = $Month+1;
#print STDERR "0000 $DBJobRaw{Name}\n";
        if ($Min =~ /(.)./) {
            $Min = ($1)."0";
        }
        if ($DBJobRaw{ScheduleDays}) {
            my $Match = 0;
            foreach (@{$DBJobRaw{ScheduleDays}}) {
                if ($_ eq $WDay) {
                    $Match = 1;
                    $Run = 1;
                }
            }
            if (!$Match) {
#print STDERR "f:ScheduleDays $WDay\n";
                $False = 1;
            }
        }
        if (!defined($DBJobRaw{ScheduleMinutes})) {
            @{$DBJobRaw{ScheduleMinutes}} = qw(00 10 20 30 40 50);
        }
        my $Match = 0;
        foreach (@{$DBJobRaw{ScheduleMinutes}}) {
            if ($_ == $Min) {
                 $Match = 1;
                 $Run = 1;
            }
        }
        if (!$Match) {
#print STDERR "f:ScheduleM\n";
            $False = 1;
        }
        if (!defined($DBJobRaw{ScheduleHours})) {
            @{$DBJobRaw{ScheduleHours}} = qw(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23);
        }
        $Match = 0;
        foreach (@{$DBJobRaw{ScheduleHours}}) {
            if ($_ == $Hour) {
                $Match = 1;
                $Run = 1;
            }
        }
        if (!$Match) {
#print STDERR "f:ScheduleHours\n";
            $False = 1;
        }
        # check if job is invalid
        if (!$DBJobRaw{Valid}) {
            $False = 1;
        }
        # check if job already was running
        my $CurrentTime = $CommonObject{TimeObject}->SystemTime();
        if ($DBJobRaw{ScheduleLastRunUnixTime} && $CurrentTime < $DBJobRaw{ScheduleLastRunUnixTime}+(10*60)) {
            print "Job '$DBJob' already finished!\n";
            $False = 1;
        }
        if (!$False) {
#print "RUN: $Run\n";
            # log event
            $CommonObject{GenericAgentObject}->JobRun(
                Job => $DBJob,
                UserID => $UserIDOfGenericAgent,
            );
        }
    }
    # delete pid lock
    $CommonObject{PIDObject}->PIDDelete(Name => 'GenericAgent');
}
# --
# process all config file jobs
# --
else {
    foreach my $Job (sort keys %Jobs) {
        # log event
        $CommonObject{GenericAgentObject}->JobRun(
            Job => $Job,
            Config => $Jobs{$Job},
            UserID => $UserIDOfGenericAgent,
        );
    }
}

exit;
