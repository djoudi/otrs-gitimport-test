#!/usr/bin/perl -w
# --
# syncuser_csv2otrs.pl - sync csv user list or otrs
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: syncuser_csv2otrs.pl,v 1.5 2007-04-05 14:36:47 martin Exp $
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

# example of csv file (0;1;2;...)
# [...]
# me1;me1@example.com;Nils;Example;somepass;Mr.;
# [...]

# config options / csv file - column 0-...
my %Fields = ();
$Fields{UserLogin} = 0;
$Fields{UserEmail} = 1;
$Fields{UserSalutation} = 5;
$Fields{UserFirstname} = 2;
$Fields{UserLastname} = 3;
$Fields{UserPw} = 4;

# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use lib dirname($RealBin)."/Kernel/cpan-lib";
use strict;
use Getopt::Std;
use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::Main;
use Kernel::System::Time;
use Kernel::System::DB;
use Kernel::System::User;

# common objects
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => 'OTRS-syncuser_csv2otrs.pl',
    %CommonObject
);
$CommonObject{MainObject} = Kernel::System::Main->new(%CommonObject);
$CommonObject{TimeObject} = Kernel::System::Time->new(%CommonObject);
$CommonObject{DBObject} = Kernel::System::DB->new(%CommonObject);
$CommonObject{UserObject} = Kernel::System::User->new(%CommonObject);

# get options
my %Opts = ();
getopt('s',  \%Opts);
my $End = "\n";
if (!$Opts{'s'}) {
    die "Need -s <CSV_FILE>\n";
}

# read csv file
open (IN, "< $Opts{'s'}") || die "Can't read $Opts{'s'}: $!";
while (<IN>) {
    my @Line = split(/;/, $_);
    # check if user extsis
    my %UserData = $CommonObject{UserObject}->GetUserData(User => $Line[$Fields{Login}]);
    # if there is no pw in the csv list, gererate one
    if (!$Line[$Fields{Pw}]) {
        $Line[$Fields{Pw}] = $CommonObject{UserObject}->GenerateRandomPassword();
    }
    # update user
    if (%UserData) {
        print "Update user '$Line[$Fields{Login}]'\n";
        $CommonObject{UserObject}->UserUpdate(
            UserID => $UserData{UserID},
            UserSalutation => $Line[$Fields{Salutation}],
            UserFirstname => $Line[$Fields{Firstname}],
            UserLastname => $Line[$Fields{Lastname}],
            UserLogin => $Line[$Fields{Login}],
            UserPw => $Line[$Fields{Pw}],
            UserEmail => $Line[$Fields{Email}],
            UserType => 'User',
            ValidID => 1,
            ChangeUserID => 1,
        );
    }
    # add user
    else {
        print "Add user '$Line[$Fields{Login}]'\n";
        $CommonObject{UserObject}->UserAdd(
            UserSalutation => $Line[$Fields{Salutation}],
            UserFirstname => $Line[$Fields{Firstname}],
            UserLastname => $Line[$Fields{Lastname}],
            UserLogin => $Line[$Fields{Login}],
            UserPw => $Line[$Fields{Pw}],
            UserEmail => $Line[$Fields{Email}],
            UserType => 'User',
            ValidID => 1,
            ChangeUserID => 1,
        );
    }
}
close (IN);
