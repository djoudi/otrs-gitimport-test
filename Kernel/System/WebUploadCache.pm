# --
# Kernel/System/Kernel/System/WebUploadCache.pm - a fs upload cache
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: WebUploadCache.pm,v 1.2 2004-07-22 05:39:34 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::WebUploadCache;

use strict;

use vars qw($VERSION);

$VERSION = '$Revision: 1.2 $ ';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::WebUploadCache - a upload file system cache

=head1 SYNOPSIS

All upload cache functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create param object

  use Kernel::Config;
  use Kernel::System::WebUploadCache;

  my $ConfigObject = Kernel::Config->new();
  my $ParamObject = Kernel::System::WebUploadCache->new(
      ConfigObject => $ConfigObject,
  );

=cut

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);
    # check needed objects
    foreach (qw(ConfigObject LogObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    $Self->{TempDir} = $Self->{ConfigObject}->Get('TempDir')."/upload_cache/";
    if (! -d $Self->{TempDir}) {
        mkdir $Self->{TempDir};
    }

    return $Self;
}

sub FormIDCreate {
    my $Self = shift;
    my %Param = @_;
    return time().rand(12341241);
}

sub FormIDRemove {
    my $Self = shift;
    my %Param = @_;
    foreach (qw(FormID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my @List = glob("$Self->{TempDir}/$Param{FormID}.*");
    my $Counter = 0;
    my @Data = ();
    foreach my $File (@List) {
        unlink "$File" || die "$!";
    }
}

sub FormIDAddFile {
    my $Self = shift;
    my %Param = @_;
    foreach (qw(FormID Filename Content ContentType)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # files hust readable for creater
    umask(066);
    open (OUT, "> $Self->{TempDir}/$Param{FormID}.$Param{Filename}") || die "$!";
    print OUT $Param{Content};
    close (OUT);
    open (OUT, "> $Self->{TempDir}/$Param{FormID}.$Param{Filename}.ContentType") || die "$!";
    print OUT $Param{ContentType};
    close (OUT);
    return 1;
}

sub FormIDRemoveFile {
    my $Self = shift;
    my %Param = @_;
    foreach (qw(FormID FileID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my @Index = $Self->FormIDGetAllFilesMeta(%Param);
    my $ID = $Param{FileID}-1;
    my %File = %{$Index[$ID]};
    unlink "$Self->{TempDir}/$Param{FormID}.$File{Filename}" || die "$!: /tmp/up/$File{Filename}";
    unlink "$Self->{TempDir}/$Param{FormID}.$File{Filename}.ContentType" || die "$!: /tmp/up/$File{Filename}.ContentType";
    return 1;
}

sub FormIDGetAllFilesData {
    my $Self = shift;
    my %Param = @_;
    foreach (qw(FormID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my @List = glob("$Self->{TempDir}/$Param{FormID}.*");
    my $Counter = 0;
    my @Data = ();
    foreach my $File (@List) {
        if ($File !~ /\.ContentType$/) {
            $Counter++;
            my $FileSize = -s $File;
            # human readable file size
            if ($FileSize) {
                # remove meta data in files
                $FileSize = $FileSize - 30 if ($FileSize > 30);
                if ($FileSize > (1024*1024)) {
                    $FileSize = sprintf "%.1f MBytes", ($FileSize/(1024*1024));
                }
                elsif ($FileSize > 1024) {
                    $FileSize = sprintf "%.1f KBytes", (($FileSize/1024));
                }
                else {
                    $FileSize = $FileSize.' Bytes';
                }
            }
            my $Content = '';
            open (IN, "< $File") || die "$!";
            while (<IN>) {
                $Content .= $_;
            }
            close (IN);
            my $ContentType = '';
            open (IN, "< $File.ContentType") || die "$!";
            while (<IN>) {
                $ContentType .= $_;
            }
            close (IN);
            # strip filename
            $File =~ s/^.*\/$Param{FormID}\.(.+?)$/$1/;
            push (@Data, {
                Content => $Content,
                ContentType => $ContentType,
                Filename => $File,
                Filesize => $FileSize,
                FileID => $Counter,
            });
        }
    }
    return @Data;

}

sub FormIDGetAllFilesMeta {
    my $Self = shift;
    my %Param = @_;
    foreach (qw(FormID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my @List = glob("$Self->{TempDir}/$Param{FormID}.*");
    my $Counter = 0;
    my @Data = ();
    foreach my $File (@List) {
        if ($File !~ /\.ContentType$/) {
            $Counter++;
            my $FileSize = -s $File;
            # human readable file size
            if ($FileSize) {
                # remove meta data in files
                $FileSize = $FileSize - 30 if ($FileSize > 30);
                if ($FileSize > (1024*1024)) {
                    $FileSize = sprintf "%.1f MBytes", ($FileSize/(1024*1024));
                }
                elsif ($FileSize > 1024) {
                    $FileSize = sprintf "%.1f KBytes", (($FileSize/1024));
                }
                else {
                    $FileSize = $FileSize.' Bytes';
                }
            }
            # strip filename
            $File =~ s/^.*\/$Param{FormID}\.(.+?)$/$1/;
            push (@Data, {
                Filename => $File,
                Filesize => $FileSize,
                FileID => $Counter,
            });
        }
    }
    return @Data;
}

# --
1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.2 $ $Date: 2004-07-22 05:39:34 $

=cut
