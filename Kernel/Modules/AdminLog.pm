# --
# Kernel/Modules/AdminLog.pm - provides a log view for admins
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AdminLog.pm,v 1.10 2004-09-16 22:35:56 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AdminLog;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.10 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check needed Opjects
    foreach (qw(ParamObject LayoutObject LogObject ConfigObject)) {
        die "Got no $_!" if (!$Self->{$_});
    }

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # print form
    my $Output = $Self->{LayoutObject}->Header(Area => 'Admin', Title => 'System Log');
    $Output .= $Self->{LayoutObject}->NavigationBar(Type => 'Admin');
    $Output .= $Self->{LayoutObject}->Output(TemplateFile => 'AdminNavigationBar', Data => \%Param);
    # create table
    my @Lines = split(/\n/, $Self->{LogObject}->GetLog(Limit => 400));
    foreach (@Lines) {
        my @Row = split(/;;/, $_);
        if ($Row[3]) {
            if ($Row[1] =~ /error/) {
                $Self->{LayoutObject}->Block(
                    Name => 'Row',
                    Data => {
                        StartFont => '<font color ="red">',
                        StopFont => '</font>',
                        Time => $Row[0],
                        Priority => $Row[1],
                        Facility => $Row[2],
                        Message => $Row[3],
                    },
                );
            }
            else {
                $Self->{LayoutObject}->Block(
                    Name => 'Row',
                    Data => {
                        Time => $Row[0],
                        Priority => $Row[1],
                        Facility => $Row[2],
                        Message => $Row[3],
                    },
                );
            }
        }
    }
    # create & return output
    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'AdminLog',
        Data => \%Param,
    );
    $Output .= $Self->{LayoutObject}->Footer();
    return $Output;
}
# --
1;
