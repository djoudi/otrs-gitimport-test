#!/usr/bin/perl -w
# --
# PostMasterClient.pl - the PostMasterDaemon.pl client 
# Copyright (C) 2001 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: PostMasterClient.pl,v 1.1 2002-01-02 00:41:42 martin Exp $
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

use IO::Socket;

my $Client = IO::Socket::UNIX->new(
    PeerAddr => "/tmp/Postmaster.sock",
    Type => SOCK_DGRAM,
    Timeout => 10,
) || die $@;


print $Client "hallo\n";

my $Answer = <$Client>;

print $Answer."\n";

close ($Client);
