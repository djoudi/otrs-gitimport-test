#!/usr/bin/perl -w
# --
# PostMaster.pl - the global eMail handle for email2db
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: PostMaster.pl,v 1.13.2.1 2003-05-18 20:20:50 martin Exp $
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

# --
# to get it readable for the webserver user and writable for otrs 
# group (just in case)
# --
umask 002;

use vars qw($VERSION);
$VERSION = '$Revision: 1.13.2.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

my $Debug = 1;

use Getopt::Std;
use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::PostMaster;

# --
# get options
# --
my %Opts = ();
getopt('hqtd', \%Opts);
if ($Opts{'h'}) {
    print "PostMaster.pl <Revision $VERSION> - OTRS cmd postmaster\n";
    print "Copyright (c) 2001-2003 Martin Edenhofer <martin\@otrs.org>\n";
    print "usage: PostMaster.pl -q <QUEUE> -t <TRUSTED> \n";
    exit 1;
}
if (!$Opts{'d'}) {
    $Opts{'d'} = 0;
}
if (! defined($Opts{'t'})) {
    $Opts{'t'} = 1;
}
if (!$Opts{'q'}) {
    $Opts{'q'} = '';
}

# --
# create common objects 
# --
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => 'OTRS-PM',
    %CommonObject,
);
# debug info
if ($Debug) {
    $CommonObject{LogObject}->Log(
        Priority => 'debug',
        Message => 'Global OTRS email handle (PostMaster.pl) started...',
    );
}
# ... common objects ...
my @Email = <STDIN>;
$CommonObject{PostMaster} = Kernel::System::PostMaster->new(
    %CommonObject, 
    Email => \@Email,
    Trusted => $Opts{'t'},
    Debug => $Opts{'d'},
);
$CommonObject{PostMaster}->Run(
    Queue => $Opts{'q'},
);

# debug info
if ($Debug) {
    $CommonObject{LogObject}->Log(
        Priority => 'debug',
        Message => 'Global OTRS email handle (PostMaster.pl) stoped.',
    );
}
# --
exit (0);
