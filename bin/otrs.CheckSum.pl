#!/usr/bin/perl -w
# --
# bin/otrs.CheckSum.pl - a tool to compare changes in a installation
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: otrs.CheckSum.pl,v 1.2 2009-11-04 12:27:57 mn Exp $
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

use vars qw($VERSION $RealBin);
$VERSION = qw($Revision: 1.2 $) [1];

use Getopt::Std;
use Digest::MD5 qw(md5_hex);

my $Start   = $RealBin . '/../';
my $Archive = '';
my $Action  = 'compare';
my %Compare = ();

# get options
my %Opts = ();
getopt( 'habd', \%Opts );
if ( $Opts{h} ) {
    print "otrs.CheckSum.pl <Revision $VERSION> - OTRS check sum\n";
    print "Copyright (C) 2001-2009 OTRS AG, http://otrs.org/\n";
    print
        "usage: otrs.CheckSum.pl -a create|compare [-b /path/to/ARCHIVE] [-d /path/to/framework]\n";
    exit 1;
}

if ( $Opts{a} && $Opts{'a'} eq 'create' ) {
    $Action = $Opts{'a'};
}
if ( $Opts{d} ) {
    $Start = $Opts{d};
}
if ( $Opts{b} ) {
    $Archive = $Opts{b};
}
else {
    $Archive = $Start . 'ARCHIVE';
}

if ( $Action eq 'create' ) {
    print "Writing $Archive ...";
    open( OUT, '>', $Archive ) || die "ERROR: Can't open: $Archive";
}
else {
    open( IN, '<', $Archive ) || die "ERROR: Can't open: $Archive";
    while (<IN>) {
        my @Row = split( /::/, $_ );
        chomp( $Row[1] );
        $Compare{ $Row[1] } = $Row[0];
    }
    close IN;
}

my @Dirs = ();
R($Start);
for my $File ( sort keys %Compare ) {

    #print "Notice: Removed $Compare{$File}\n";
    print "Notice: Removed $File\n";
}
if ( $Action eq 'create' ) {
    print " done.\n";
    close OUT;
}

sub R {
    my $In = shift;

    my @List = glob("$In/*");
    for my $File (@List) {

        # clean up directory name
        $File =~ s/\/\//\//g;

        # ignote cvs directories
        next if $File =~ /Entries|Repository|Root|CVS|ARCHIVE/;

        # if it's a directory
        if ( -d $File ) {
            R($File);
            next;

            # print "Directory: $File\n";
        }

        # if it's a file
        my $OrigFile = $File;
        $File =~ s/$Start//;
        $File =~ s/^\/(.*)$/$1/;

        # ignore var directories
        next if $File =~ /^doc\//;
        next if $File =~ /^var\/tmp/;
        next if $File =~ /^var\/article/;

        # print "File: $File\n";
        my $Content = '';
        open( IN, '<', $OrigFile ) || die "ERROR: $!";
        while (<IN>) {
            $Content .= $_;
        }
        close IN;
        my $Digest = md5_hex($Content);
        if ( $Action eq 'create' ) {
            print OUT $Digest . '::' . $File . "\n";
        }
        else {
            if ( !$Compare{$File} ) {
                print "Notice: New $File\n";
            }
            elsif ( $Compare{$File} ne $Digest ) {
                print "Notice: Dif $File\n";
            }
            if ( defined( $Compare{$File} ) ) {
                delete $Compare{$File};
            }
        }
    }
    return 1;
}
