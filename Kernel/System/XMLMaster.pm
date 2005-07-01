# --
# Kernel/System/XMLMaster.pm - the global XMLMaster module for OTRS
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: XMLMaster.pm,v 1.1 2005-07-01 09:57:31 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::XMLMaster;

use strict;
use Kernel::System::XML;
use Kernel::System::Main;

use vars qw(@ISA $VERSION);

$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);
    # get common opjects
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }
    # check needed objects
    foreach (qw(DBObject LogObject ConfigObject TimeObject)) {
        die "Got no $_" if (!$Param{$_});
    }

    # for debug
    $Self->{Debug} = $Param{Debug} || 0;

    # create common objects
    $Self->{XMLObject} = Kernel::System::XML->new(%Param);
    $Self->{MainObject} = Kernel::System::Main->new(%Param);

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(XML)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_ !");
        return;
      }
    }

    my @XMLHash = $Self->{XMLObject}->XMLParse2XMLHash(String => ${$Param{XML}});

    # run all XMLMasterModules
    if (ref($Self->{ConfigObject}->Get('XMLMaster::Module')) eq 'HASH') {
        my %Jobs = %{$Self->{ConfigObject}->Get('XMLMaster::Module')};
        foreach my $Job (sort keys %Jobs) {
            if ($Self->{MainObject}->Require($Jobs{$Job}->{Module})) {
                my $FilterObject = $Jobs{$Job}->{Module}->new(
                    ConfigObject => $Self->{ConfigObject},
                    LogObject => $Self->{LogObject},
                    DBObject => $Self->{DBObject},
                    TimeObject => $Self->{TimeObject},
                    Debug => $Self->{Debug},
                );
                # modify params
                if (!$FilterObject->Run(
                    XMLHash => \@XMLHash,
                    JobConfig => $Jobs{$Job},
                )) {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message => "Execute Run() of XMLModule $Jobs{$Job}->{Module} not successfully!",
                    );
                }
            }
        }
    }
    return 1;
}
# --
1;
