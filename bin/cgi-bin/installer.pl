#!/usr/bin/perl -w
# --
# instaler.pl - the OTRS Installer
# Copyright (C) 2002 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: installer.pl,v 1.10 2002-12-20 12:28:31 martin Exp $
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

# OTRS root directory
use FindBin qw($Bin);
use lib "$Bin/../..";
use lib "$Bin/../../Kernel/cpan-lib";

use strict;

use vars qw($VERSION $Debug);
$VERSION = '$Revision: 1.10 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

# --
# check @INC for mod_perl (add lib path for "require module"!)
# --
push (@INC, "$Bin/../..", "$Bin/../../Kernel/cpan-lib");

# --
# all OTRS Installer modules
# --
use Kernel::Config;
use Kernel::System::Log;
use Kernel::System::WebRequest;
use Kernel::System::DB;
use Kernel::Modules::Test;
use Kernel::Modules::Installer;
use Kernel::Output::HTML::Generic;

# --
# create common objects 
# --
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => 'OTRS-Installer',
    %CommonObject,
);
# debug info
if ($Debug) {
    $CommonObject{LogObject}->Log(
        Priority => 'debug', 
        Message => 'OTRS installer handle started...',
    );
}
# ... common objects ...
$CommonObject{ParamObject} = Kernel::System::WebRequest->new(%CommonObject);
$CommonObject{LayoutObject} = Kernel::Output::HTML::Generic->new(%CommonObject);

# --
# get common parameters
# --
my %Param = ();
$Param{Action} = $CommonObject{ParamObject}->GetParam(Param => 'Action') || 'Installer';
$Param{Subaction} = $CommonObject{ParamObject}->GetParam(Param => 'Subaction') || '';
$Param{NextScreen} = $CommonObject{ParamObject}->GetParam(Param => 'NextScreen') || '';

# --
# check secure mode
# --
if ($CommonObject{ConfigObject}->Get('SecureMode')) {
    print $CommonObject{LayoutObject}->Header();
    print $CommonObject{LayoutObject}->Error(
       Message => "SecureMode activ!",
       Comment => "If you want to run the Installler, disable SecureMode in Config.pm!",
       );
    print $CommonObject{LayoutObject}->Footer();
}
# --
# run modules if exists a version value
# --
elsif (eval '$Kernel::Modules::'. $Param{Action} .'::VERSION'){
    $CommonObject{LayoutObject} = Kernel::Output::HTML::Generic->new(
        %CommonObject, 
        %Param,
    );
    GenericModules(%CommonObject, %Param);
}
# --
# else print an error screen
# --
else { 
    # create new LayoutObject with '%Param'
    print $CommonObject{LayoutObject}->Header();
    print $CommonObject{LayoutObject}->Error(
       Message => "Action '$Param{Action}' not found!",
       Comment => "Contact your admin!",
       );
    print $CommonObject{LayoutObject}->Footer();
}
# --
# debug info
# --
if ($Debug) {
    $CommonObject{LogObject}->Log(
        Priority => 'debug',
        Message => 'OTRS installer handle stopped.',
    );
}

# --
# generic funktion
# --
sub GenericModules {
    my %Data = @_;

    # debug info
    if ($Debug) {
        $Data{LogObject}->Log(
            Priority => 'debug',
            Message => 'Kernel::Modules::' . $Data{Action} .'->new',
        );
    }

    # --
    # prove of concept! - create $GenericObject
    # --
    my $GenericObject = ('Kernel::Modules::' . $Data{Action})->new (%Data);

    # --
    # ->Run $Action with $GenericObject
    # --
    print $GenericObject->Run();

    # debug info
    if ($Debug) {
        $Data{LogObject}->Log(
            Priority => 'debug', 
            Message => ''. 'Kernel::Modules::' . $Data{Action} .'->run',
        );
    }

}



