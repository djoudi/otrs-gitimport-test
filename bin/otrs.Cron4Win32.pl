#!/usr/bin/perl -w
# --
# bin/otrs.Cron4Win32.pl - a script tp generate a full crontab file for OTRS
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: otrs.Cron4Win32.pl,v 1.1 2009-11-03 14:33:17 mn Exp $
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
use lib dirname($RealBin) . "/Kernel/cpan-lib";

use vars qw($VERSION);
$VERSION = qw($Revision: 1.1 $) [1];

my $PerlExe   = "";
my $Directory = "";
my $CronTab   = "";
my $OTRSHome  = "";

#system ('NSISINSTDIR\cronHelper.pl  --install');
#system ('NSISCronplfile');
#system ('NET START CRON');

if ( !open( DATOUT, ">$CronTab" ) ) {
    print STDERR "ERROR: Can't open directory 'crontab.txt: $!";
}
else {
    flock( DATOUT, 2 );
    seek DATOUT, 0, 0;
    truncate DATOUT, 0;

    if ( !opendir( DIR, $Directory ) ) {
        print STDERR "ERROR: Can't open directory '$Directory': $!";
        exit(1);
    }
    else {
        my @Eintraege = readdir(DIR);
        for my $CronData (@Eintraege) {

            if ( !-d $CronData ) {

                if ( !open( DAT, "<$Directory/$CronData" ) ) {

                    # print STDERR "ERROR: Can't open directory '$Directory/$CronData: $!";
                    # exit (1);
                }
                else {
                    flock( DAT, 2 );

                    while ( my $Line = <DAT> ) {
                        if ( $Line =~ /^#/ ) {
                            next;
                        }
                        else {
                            $Line =~ s/\$HOME/$PerlExe\ $OTRSHome/;
                            $Line =~ s/>> \/dev\/null//;
                            print DATOUT "$Line";
                        }
                    }
                }
            }
        }
    }

    closedir(DIR);
    close(DAT);
    close(DATOUT);

    1;
}
