#!/usr/bin/perl -w
# --
# xml2docbook.pl - config xml to docbook
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: xml2docbook.pl,v 1.2 2005-07-23 16:26:49 cs Exp $
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
use lib dirname($RealBin)."/../";
use lib dirname($RealBin)."/../Kernel/cpan-lib";

use strict;
use Getopt::Std;

use vars qw($VERSION);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

use Kernel::Config;
use Kernel::System::Time;
use Kernel::System::DB;
use Kernel::System::Log;
use Kernel::System::Config;

# create common objects
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{TimeObject} = Kernel::System::Time->new(
    %CommonObject,
);
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => 'OTRS-xml2docbook',
    %CommonObject,
);
$CommonObject{DBObject} = Kernel::System::DB->new(%CommonObject);
$CommonObject{SysConfigObject} = Kernel::System::Config->new(%CommonObject);

# list Groups
#my %List = $CommonObject{SysConfigObject}->ConfigGroupList();
my @Groups = (qw(Framework Ticket FAQ));
my $UserLang = '';

# --
# get options
# --
my %Opts = ();

getopt('l',  \%Opts);

if ($Opts{'l'}) {
    $UserLang = $Opts{'l'};
}
else {
   die "Need -l <Language>\n";
}

# --
# start xml output
# --

print '<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.4//EN"
  "http://www.oasis-open.org/docbook/xml/4.4/docbookx.dtd">
';
print "\n<appendix id=\"config\"><title>Config Referenzliste</title>\n";
foreach my $Group (@Groups) {
    my %SubList = $CommonObject{SysConfigObject}->ConfigSubGroupList(Name => $Group);
    print "<sect1 id=\"$Group\"><title>$Group</title> \n";
    foreach my $SubGroup (sort keys %SubList) {
        print "<sect2 id=\"$Group:$SubGroup\"><title>$SubGroup</title> \n";
        my @List = $CommonObject{SysConfigObject}->ConfigSubGroupConfigItemList(Group => $Group, SubGroup => $SubGroup);
        foreach my $Name (@List) {
            my %Item = $CommonObject{SysConfigObject}->ConfigItemGet(Name => $Name);
            my $Link = $Name;
            $Link =~ s/###/_/g;
            $Link =~ s/\///g;
            print "<sect3 id=\"$Group:$SubGroup:$Link\"><title>$Name</title> \n";
	    print "<informaltable>\n<tgroup cols=\"1\">\n";
	    print "<thead>\n<row>\n<entry>Description</entry>\n";
	    print "<entry>Value</entry>\n</row>\n</thead>\n<tbody>\n";
            #Description
            my %HashLang;
            foreach my $Index (1...$#{$Item{Description}}) {
                $HashLang{$Item{Description}[$Index]{Lang}} = $Item{Description}[$Index]{Content};
            }
            my $Description;
            # Description in User Language
            if (defined $HashLang{$UserLang}) {
                $Description = $HashLang{$UserLang};
            }
            # Description in Default Language
            else {
	        $Description = $HashLang{'en'};
            }
            $Description =~ s/&/&amp;/g;
            $Description =~ s/</&lt;/g;
            $Description =~ s/>/&gt;/g;
	    print "<row>\n<entry>Description:</entry>\n";
            print "<entry>$Description</entry>\n</row>\n";
            foreach my $Area (qw(Group SubGroup)) {
                foreach (1..10) {
                    if ($Item{$Area}->[$_]) {
                        print "<row>\n<entry>$Area:</entry>\n<entry>$Item{$Area}->[$_]->{Content}</entry>\n</row>\n";
                    }
                }
            }
            my %ConfigItemDefault = $CommonObject{SysConfigObject}->ConfigItemGet(
                Name => $Name,
                Default => 1,
            );
            my $Key = $Name;
            $Key =~ s/\\/\\\\/g;
            $Key =~ s/'/\'/g;
            $Key =~ s/###/'}->{'/g;

            my $Config = " \$Self->{'$Key'} = ".$CommonObject{SysConfigObject}->_XML2Perl(Data => \%ConfigItemDefault);
            $Config =~ s/&/&amp;/g;
            $Config =~ s/</&lt;/g;
            $Config =~ s/>/&gt;/g;
            print "<row>\n<entry>Config-Setting:</entry>\n<entry><programlisting>\n";
            print $Config;
            print "</programlisting>\n";
            print "</entry>\n</row>\n";
	    print "</tbody>\n</tgroup>\n</informaltable>\n";
            print "</sect3> \n";
        }
        print "</sect2> \n";
    }
    print "</sect1> \n";
}
print "</appendix> \n";

exit;

