# --
# Kernel/System/Main.pm - main core components
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: Main.pm,v 1.6 2007-05-04 14:26:24 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Main;

use strict;
use Digest::MD5 qw(md5_hex);

use vars qw($VERSION);
$VERSION = '$Revision: 1.6 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::Main - main object

=head1 SYNOPSIS

All main functions to load modules or to die.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create new object

    use Kernel::Config;
    use Kernel::System::Log;
    use Kernel::System::Main;

    my $ConfigObject = Kernel::Config->new();
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        LogObject => $LogObject,
    );

=cut

sub new {
    my $Type = shift;
    my %Param = @_;
    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    $Self->{Debug} = $Param{Debug} || 0;

    # get common objects
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check all needed objects
    foreach (qw(ConfigObject LogObject)) {
        die "Got no $_" if (!$Self->{$_});
    }
    return $Self;
}

=item Require()

require/load a module

    my $Loaded = $MainObject->Require('Kernel::System::Example');

=cut

sub Require {
    my $Self = shift;
    my $Module = shift;
    if (!$Module) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Need module!",
        );
    }
    if (eval "require $Module") {
        # log loaded module
        if ($Self->{Debug} > 1) {
            $Self->{LogObject}->Log(
                Priority => 'debug',
                Message => "Module: $Module loaded!",
            );
        }
        return 1;
    }
    else {
        # check if file name exists
        my $FileName = $Module.'.pm';
        $FileName =~ s/::/\//g;
        my $Error = 0;
        foreach my $Prefix (@INC) {
            my $File = "$Prefix/$FileName";
            if (-f $File) {
                $Error = $File;
                last;
            }
        }
        # if file name exists, show syntax error
        if ($Error) {
            my $R = do $Error;
            $Self->{LogObject}->Log(
                Caller => 1,
                Priority => 'error',
                Message => "$@",
            );
        }
        # if there is no file, show not found error
        else {
            $Self->{LogObject}->Log(
                Caller => 1,
                Priority => 'error',
                Message => "Module '$Module' not found!",
            );
        }
        return;
    }
}

=item FilenameCleanUp()

to clean up filenames which can be used in any case (also quoting is done)

    my $Filename = $MainObject->FilenameCleanUp(
        Filename => 'c:\some\location\me_to/alal.xml',
        Type => 'Local', # Local|Attachment|MD5
    );

    my $Filename = $MainObject->FilenameCleanUp(
        Filename => 'some:file.xml',
        Type => 'MD5', # Local|Attachment|MD5
    );

=cut

sub FilenameCleanUp {
    my $Self = shift;
    my %Param = @_;

    if (!$Param{Filename}) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Need Filename!"
        );
        return;
    }

    if ($Param{Type} && $Param{Type} =~ /md5/i) {
        $Param{Filename} = md5_hex($Param{Filename});
    }
    # replace invalid token for attachment file names
    elsif ($Param{Type} && $Param{Type} =~ /attachment/i) {
        # replace invalid token like < > ? " : ; | \ / or *
        $Param{Filename} =~ s/[ <>\?":\\\*\|\/;]/-/g;
        $Param{Filename} =~ s/ä/ae/g;
        $Param{Filename} =~ s/ö/oe/g;
        $Param{Filename} =~ s/ü/ue/g;
        $Param{Filename} =~ s/Ä/Ae/g;
        $Param{Filename} =~ s/Ö/Oe/g;
        $Param{Filename} =~ s/Ü/Ue/g;
        $Param{Filename} =~ s/ß/ss/g;
        $Param{Filename} =~ s/-+/-/g;
        # Cut the String if to long
        if (length($Param{Filename}) > 100) {
            $Param{Filename} = substr($Param{Filename},0,100);
        }

    }
    else {
        # replace invalid token like < > ; | \ /
        $Param{Filename} =~ s/[ <>\?":\\\*\|\/;]/-/g;
    }

    return $Param{Filename};
}

=item Die()

to die

    $MainObject->Die('some message to die');

=cut

sub Die {
    my $Self = shift;
    my %Param = @_;
    if ($Param{Message}) {
        $Self->{LogObject}->Log(
            Caller => 1,
            Priority => 'error',
            Message => "$Param{Message}",
        );
    }
    else {
        $Self->{LogObject}->Log(
            Caller => 1,
            Priority => 'error',
            Message => "Died!",
        );
    }
    exit;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.6 $ $Date: 2007-05-04 14:26:24 $

=cut
