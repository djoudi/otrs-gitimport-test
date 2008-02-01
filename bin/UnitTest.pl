#!/usr/bin/perl -w
# --
# UnitTest.pl - the global test handle
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: UnitTest.pl,v 1.13 2008-02-01 12:49:20 tr Exp $
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

use strict;
use warnings;

# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin) . "/Kernel/cpan-lib";

use vars qw($VERSION);
$VERSION = qw($Revision: 1.13 $) [1];

use Getopt::Std;
use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::Time;
use Kernel::System::Encode;
use Kernel::System::DB;
use Kernel::System::UnitTest;
use Kernel::System::Main;

# get options
my %Opts = ();
getopt( 'hqtdno', \%Opts );
if ( $Opts{'h'} ) {
    print "UnitTest.pl <Revision $VERSION> - OTRS test handle\n";
    print "Copyright (c) 2001-2007 OTRS GmbH, http://otrs.org/\n";
    print "usage: UnitTest.pl [-n Name e.g. Ticket or Queue] [-o ASCII|HTML|XML]\n";
    exit 1;
}

# create common objects
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject}    = Kernel::System::Log->new(
    LogPrefix => 'OTRS-Test',
    %CommonObject,
);
$CommonObject{MainObject}   = Kernel::System::Main->new(%CommonObject);
$CommonObject{EncodeObject} = Kernel::System::Encode->new(%CommonObject);
$CommonObject{TimeObject}   = Kernel::System::Time->new( %CommonObject, );

# create needed objects
$CommonObject{DBObject} = Kernel::System::DB->new(%CommonObject);
$CommonObject{UnitTestObject}
    = Kernel::System::UnitTest->new( %CommonObject, Output => $Opts{o} || '', );

$CommonObject{UnitTestObject}->Run( Name => $Opts{n} || '', );

exit(0);
