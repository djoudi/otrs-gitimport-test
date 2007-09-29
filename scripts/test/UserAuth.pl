#!/usr/bin/perl -w
# --
# scripts/test/UserAuth.pl - test script of user auth
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: UserAuth.pl,v 1.6 2007-09-29 11:09:57 mh Exp $
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
use lib dirname($RealBin) . '/..';
use lib dirname($RealBin) . '/../Kernel/cpan-lib';

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.6 $) [1];

use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::Main;
use Kernel::System::DB;
use Kernel::System::Auth;

# common objects
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject}    = Kernel::System::Log->new(
    LogPrefix => 'OTRS-test-UserAuth.pl',
    %CommonObject,
);
$CommonObject{MainObject} = Kernel::System::Main->new(%CommonObject);
$CommonObject{DBObject}   = Kernel::System::DB->new(%CommonObject);
$CommonObject{AuthObject} = Kernel::System::Auth->new(%CommonObject);

my $User = shift || die "Need User as argument!\n";

print "OTRS::UserAuth::Test ($VERSION)\n";
print "====================\n";
print "User: '$User'\n";
print "Password: ";

my $Pw = <STDIN>;
chomp $Pw;

print "\n";
print "Auth()\n";
print "------\n";

if ( $CommonObject{AuthObject}->Auth( User => $User, Pw => $Pw ) ) {
    print "Successfully!\n";
}
else {
    print "Faild!\n";
}

print "\n";
