#!/usr/bin/perl -w
# --
# UnitTest.pl - the global test handle
# Copyright (C) 2001-2006 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: UnitTest.pl,v 1.3 2006-03-23 09:27:32 tr Exp $
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

# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin)."/Kernel/cpan-lib";

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.3 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

use Getopt::Std;
use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::Time;
use Kernel::System::DB;
use Kernel::System::UnitTest;

# --
# get options
# --
my %Opts = ();
getopt('hqtdno', \%Opts);
if ($Opts{'h'}) {
    print "UnitTest.pl <Revision $VERSION> - OTRS test handle\n";
    print "Copyright (c) 2001-2005 Martin Edenhofer <martin\@otrs.org>\n";
    print "usage: UnitTest.pl [-n FileTemp] [-o ASCII|HTML]\n";
    exit 1;
}
# --
# create common objects
# --
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => 'OTRS-Test',
    %CommonObject,
);
$CommonObject{TimeObject} = Kernel::System::Time->new(
    %CommonObject,
);

# create needed objects
$CommonObject{DBObject} = Kernel::System::DB->new(%CommonObject);
$CommonObject{UnitTestObject} = Kernel::System::UnitTest->new(
    %CommonObject,
    Output => $Opts{o} || '',
);

$CommonObject{UnitTestObject}->Run(
    Name => $Opts{n} || '',
);

exit (0);
