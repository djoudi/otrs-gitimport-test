#!/usr/bin/perl -w
# --
# scripts/test/CustomerBackend.pl - test script of customer backend
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: CustomerBackend.pl,v 1.2 2003-10-13 20:29:54 martin Exp $
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
use lib dirname($RealBin).'/..';
use lib dirname($RealBin).'/../Kernel/cpan-lib';

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::DB;
use Kernel::System::CustomerUser;

# --
# common objects
# --
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => 'OTRS-test-CustomerBackend.pl',
    %CommonObject,
);
$CommonObject{DBObject} = Kernel::System::DB->new(%CommonObject);
$CommonObject{CustomerObject} = Kernel::System::CustomerUser->new(%CommonObject);

my $SearchUser = shift || '*';

print "OTRS::CustomerBackend::Test ($VERSION)\n";
print "===========================\n";
print "Filter: '$SearchUser'\n";
print "\n";
print "CustomerSearch()\n";
print "----------------\n";
my $LastCustomer = '';
my %Customers = $CommonObject{CustomerObject}->CustomerSearch(Search => $SearchUser);
foreach (keys %Customers) {
    $LastCustomer = $_;
    print "$_: $Customers{$_}\n";
}
print "\n";
print "CustomerUserDataGet()\n";
print "---------------------\n";
if ($LastCustomer) {
    print "Show Customer User Data of '$LastCustomer':\n";
    my %CustomerData = $CommonObject{CustomerObject}->CustomerUserDataGet(User => $LastCustomer);
    foreach (keys %CustomerData) {
        print "$_: $CustomerData{$_}\n";
    }
}
else {
    print "No Customer Found!\n";
}
print "\n";

print "CustomerName()\n";
print "--------------\n";
if ($LastCustomer) {
    print "Show Customer User Name of '$LastCustomer':\n";
    my $Customer = $CommonObject{CustomerObject}->CustomerName(UserLogin => $LastCustomer) || '';
    print "Name: '$Customer'\n";
}
else {
    print "No Customer Found!\n";
}
print "\n";

