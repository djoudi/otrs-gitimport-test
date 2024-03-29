#!/usr/bin/perl -w
# --
# bin/fcgi-bin/installer.pl - the global FastCGI handle for installer
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: installer.pl,v 1.7 2012-11-20 16:04:38 mh Exp $
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
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
# or see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;

# use ../../ as lib location
use FindBin qw($Bin);
use lib "$Bin/../..";
use lib "$Bin/../../Kernel/cpan-lib";
use lib "$Bin/../../Custom";

use vars qw($VERSION);
$VERSION = qw($Revision: 1.7 $) [1];

# Imports the library; required line
use CGI::Fast;

# load agent web interface
use Kernel::System::Web::InterfaceInstaller();

# 0=off;1=on;
my $Debug = 0;

#my $Cnt = 0;

# Response loop
while ( my $WebRequest = new CGI::Fast ) {

    # create new object
    my $Interface = Kernel::System::Web::InterfaceInstaller->new(
        Debug      => $Debug,
        WebRequest => $WebRequest
    );

    # execute object
    $Interface->Run();

    #    $Cnt++;
    #    print STDERR "This is connection number $Cnt\n";
}
