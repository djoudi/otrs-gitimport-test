# --
# Kernel/System/Package.pm - lib package manager
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Package.pm,v 1.35 2005-07-17 15:40:09 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Package;

use strict;
use MIME::Base64;
use File::Copy;
use LWP::UserAgent;
use Kernel::System::XML;
use Kernel::System::Config;

use vars qw($VERSION $S);
$VERSION = '$Revision: 1.35 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::Package - to application packages/modules

=head1 SYNOPSIS

All functions to manage application packages/modules.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a object

  use Kernel::Config;
  use Kernel::System::Log;
  use Kernel::System::DB;
  use Kernel::System::Time;
  use Kernel::System::Package;

  my $ConfigObject = Kernel::Config->new();
  my $LogObject    = Kernel::System::Log->new(
      ConfigObject => $ConfigObject,
  );
  my $DBObject = Kernel::System::DB->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
  );
  my $TimeObject = Kernel::System::Time->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
  );
  my $PackageObject    = Kernel::System::Package->new(
      LogObject => $LogObject,
      ConfigObject => $ConfigObject,
      TimeObject => $TimeObject,
      DBObject => $DBObject,
  );

=cut

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

    # check all needed objects
    foreach (qw(DBObject ConfigObject LogObject TimeObject)) {
        die "Got no $_" if (!$Self->{$_});
    }
    $Self->{XMLObject} = Kernel::System::XML->new(%Param);

    $Self->{PackageMap} = {
        Name => 'SCALAR',
        Version => 'SCALAR',
        Vendor => 'SCALAR',
        BuildDate => 'SCALAR',
        BuildHost => 'SCALAR',
        License => 'SCALAR',
        URL => 'SCALAR',
        ChangeLog => 'ARRAY',
        Description => 'ARRAY',
        Framework => 'ARRAY',
        OS => 'ARRAY',
        PackageRequired => 'ARRAY',
        CodeInstall => 'SCALAR',
        CodeUpgrade => 'SCALAR',
        CodeUninstall => 'SCALAR',
        CodeReinstall => 'SCALAR',
    };
    $Self->{PackageMapFileList} = {
        File => 'ARRAY',
    };

    $Self->{Home} = $Self->{ConfigObject}->Get('Home');

    # permission check
    if (!$Self->_FileSystemCheck()) {
        die "ERROR: Need write permission in OTRS home\n".
        "Try: \$OTRS_HOME/bin/SetPermissions.sh !!!\n";
    }

    return $Self;
}

=item RepositoryList()

returns a list of repository packages

    my @List = $PackageObject->RepositoryList();

=cut

sub RepositoryList {
    my $Self = shift;
    my %Param = @_;
    my @Data = ();
    # check needed stuff
    foreach (qw()) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    my $SQL = "SELECT name, version, install_status, content FROM package_repository ORDER BY name";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my %Package = (
            Name => $Row[0],
            Version => $Row[1],
            Status => $Row[2],
        );
        # get package attributes
        if ($Row[3]) {
            my %Structur = $Self->PackageParse(String => $Row[3]);
            push (@Data, {%Package, %Structur});
        }
    }

    return (@Data);
}

=item RepositoryGet()

get a package from local repository

    my $Package = $PackageObject->RepositoryGet(
        Name => 'Application A',
        Version => '1.0',
    );

=cut

sub RepositoryGet {
    my $Self = shift;
    my %Param = @_;
    my $Package = '';
    # check needed stuff
    foreach (qw(Name Version)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    my $SQL = "SELECT content FROM package_repository WHERE ".
        " name = '$Param{Name}' AND version = '$Param{Version}'";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Package = $Row[0];
    }
    if (!$Package) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "No such package $Param{Name}-$Param{Version}!",
        );
        return;
    }
    else {
        return $Package;
    }
}

=item RepositoryAdd()

add a package to local repository

    $PackageObject->RepositoryAdd(String => $FileString);

=cut

sub RepositoryAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(String)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # get package attributes
    my %Structur = $Self->PackageParse(%Param);
    if (!$Structur{Name}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Name!");
        return;
    }
    if (!$Structur{Version}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Version!");
        return;
    }
    # check if package already exists
    if ($Self->RepositoryGet(Name => $Structur{Name}->{Content}, Version => $Structur{Version}->{Content})) {
#        $Self->{LogObject}->Log(
#            Priority => 'error',
#            Message => "Package $Structur{Name}->{Content}-$Structur{Version}->{Content} already in local repository!",
#        );
#        return;
        my $SQL = "DELETE FROM package_repository WHERE ".
            " name = '".$Self->{DBObject}->Quote($Structur{Name}->{Content})."'".
            " AND ".
            " version = '".$Self->{DBObject}->Quote($Structur{Version}->{Content})."'";
        $Self->{DBObject}->Do(SQL => $SQL);
    }
    my $SQL = "INSERT INTO package_repository (name, version, vendor, filename, ".
            " content_size, content_type, content, install_status, ".
            " create_time, create_by, change_time, change_by)".
            " VALUES ".
            " ('".$Self->{DBObject}->Quote($Structur{Name}->{Content})."', ".
            " '".$Self->{DBObject}->Quote($Structur{Version}->{Content})."', ".
            " '".$Self->{DBObject}->Quote($Structur{Vendor}->{Content})."', ".
            " '".$Self->{DBObject}->Quote($Structur{Name}->{Content})."-".$Self->{DBObject}->Quote($Structur{Version}->{Content}).".xml', ".
            " '213', 'text/xml', ?, 'not installed', ".
            " current_timestamp, 1, current_timestamp, 1)";

    if ($Self->{DBObject}->Do(SQL => $SQL, Bind => [\$Param{String}])) {
        return 1;
    }
    else {
        return;
    }
}

=item RepositoryRemove()

remove a package from local repository

    $PackageObject->RepositoryRemove(
        Name => 'Application A',
        Version => '1.0',
    );

=cut

sub RepositoryRemove {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql
    my $SQL = "DELETE FROM package_repository WHERE ".
        " name = '$Param{Name}'";
    if ($Param{Version}) {
        $SQL .= " AND version = '$Param{Version}'";
    }
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}

sub _CheckFramework {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Framework)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # regexp modify
    $Param{Framework} =~ s/\./\\\./g;
    $Param{Framework} =~ s/x/.+?/gi;
    if ($Self->{ConfigObject}->Get('Version') =~ /^$Param{Framework}$/i) {
        return 1;
    }
    else {
        return;
    }
}
sub _CheckVersion {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Version1 Version2 Type)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    foreach my $Type (qw(Version1 Version2)) {
        my @Parts = split(/\./, $Param{$Type});
        $Param{$Type} = 0;
        foreach (0..4) {
            $Param{$Type} .= sprintf("%04d", $Parts[$_] || 0);
        }
        $Param{$Type} = int($Param{$Type});
    }
#print STDERR "$Param{Version2} >= $Param{Version1}\n";
    if ($Param{Type} eq 'Min') {
        if ($Param{Version2} >= $Param{Version1}) {
            return 1;
        }
        else {
            return;
        }
    }
    elsif ($Param{Type} eq 'Max') {
        if ($Param{Version2} < $Param{Version1}) {
            return 1;
        }
        else {
            return;
        }
    }
    else {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Invalid Type!");
        return;
    }
}
sub _CheckRequired {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(PackageRequired)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # check required packages
    if ($Param{PackageRequired} && ref($Param{PackageRequired}) eq 'ARRAY') {
        my $Installed = 0;
        my $InstalledVersion = 0;
        foreach my $Module (@{$Param{PackageRequired}}) {
            foreach my $Local ($Self->RepositoryList()) {
                if ($Local->{Name}->{Content} eq $Module->{Content} && $Local->{Status} eq 'installed') {
                    $Installed = 1;
                    $InstalledVersion = $Local->{Version}->{Content};
                }
            }
            if (!$Installed && !$Param{Force}) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Sorry, can't install package, because package $Module->{Content} v$Module->{Version} is required!",
                );
                return;
            }
            elsif ($Installed && !$Param{Force}) {
                if (!$Self->_CheckVersion(Version1 => $Module->{Version}, Version2 => $InstalledVersion, Type => 'Min')) {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message => "Sorry, can't install package, because package $Module->{Content} v$Module->{Version} is required!",
                    );
                    return;
                }
            }
        }
    }
    return 1;
}

=item PackageInstall()

install a package

    $PackageObject->PackageInstall(String => $FileString);

=cut

sub PackageInstall {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(String)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # conflict check
    my %Structur = $Self->PackageParse(%Param);
    # check if package is already installed
    foreach my $Package ($Self->RepositoryList()) {
        if ($Structur{Name}->{Content} eq $Package->{Name}->{Content}) {
          if ($Package->{Status} =~ /^installed$/i) {
            if (!$Param{Force}) {
                $Self->{LogObject}->Log(
                    Priority => 'notice',
                    Message => "Package already installed, try upgrade!",
                );
                return $Self->PackageUpgrade(%Param);
            }
          }
        }
    }
    # check OS
    my $OSCheckOk = 1;
    if ($Structur{OS} && ref($Structur{OS}) eq 'ARRAY') {
        $OSCheckOk = 0;
        foreach my $OS (@{$Structur{OS}}) {
            if ($^O =~ /^$OS$/i) {
                $OSCheckOk = 1;
            }
        }
    }
    if (!$OSCheckOk && !$Param{Force}) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Sorry, can't install package, because package is not for your OS!!",
        );
        return;
    }
    # check framework
    my $FWCheckOk = 0;
    if ($Structur{Framework} && ref($Structur{Framework}) eq 'ARRAY') {
        foreach my $FW (@{$Structur{Framework}}) {
            if ($Self->_CheckFramework(Framework => $FW->{Content})) {
                $FWCheckOk = 1;
            }
        }
    }
    if (!$FWCheckOk && !$Param{Force}) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Sorry, can't install package, because package is not for your Framework!!",
        );
        return;
    }
    # check required packages
    if ($Structur{PackageRequired} && ref($Structur{PackageRequired}) eq 'ARRAY') {
        if (!$Self->_CheckRequired(%Param, PackageRequired => $Structur{PackageRequired}) && !$Param{Force}) {
            return;
        }
    }
    # check files
    my $FileCheckOk = 1;
    if ($Structur{Filelist} && ref($Structur{Filelist}) eq 'ARRAY') {
        foreach my $File (@{$Structur{Filelist}}) {
            if (-e $File->{Location} && ($File->{Type} && $File->{Type} !~ /^replace$/i)) {
                $FileCheckOk = 0;
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "File $File->{Location} already exists!!",
                );
            }
            else {
                print STDERR "Notice: Want to install $File->{Location}!\n";
            }
        }
    }
    if (!$FileCheckOk && !$Param{Force}) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "File conflict, can't install package!",
        );
        return;
    }
    # add package
    if ($Self->RepositoryAdd(String => $Param{String})) {
        # update package status
        my $SQL = "UPDATE package_repository SET install_status = 'installed'".
            " WHERE ".
            " name = '".$Self->{DBObject}->Quote($Structur{Name}->{Content})."'".
            " AND ".
            " version = '".$Self->{DBObject}->Quote($Structur{Version}->{Content})."'";
        $Self->{DBObject}->Do(SQL => $SQL);

        # install files
        if ($Structur{Filelist} && ref($Structur{Filelist}) eq 'ARRAY') {
            foreach my $File (@{$Structur{Filelist}}) {
                # install file
                $Self->_FileInstall(%{$File});
            }
        }
        # install config
        $Self->{SysConfigObject} = Kernel::System::Config->new(%{$Self});
        $Self->{SysConfigObject}->WriteDefault();
        # install code
        if ($Structur{CodeInstall} && $Structur{CodeInstall}->{Content}) {
            if ($Structur{CodeInstall}->{Content}) {
                print STDERR "Code: $Structur{CodeInstall}->{Content}\n";
                if (!eval $Structur{CodeInstall}->{Content}) {
                    print STDERR "CodeError: $@\n";
                }
            }
        }
        # install database
        if ($Structur{DatabaseInstall} && ref($Structur{DatabaseInstall}) eq 'ARRAY') {
            my @SQL = $Self->{DBObject}->SQLProcessor(Database => $Structur{DatabaseInstall}, );
            foreach my $SQL (@SQL) {
                print STDERR "Notice: $SQL\n";
                $Self->{DBObject}->Do(SQL => $SQL);
            }
            my @SQLPost = $Self->{DBObject}->SQLProcessorPost();
            foreach my $SQL (@SQLPost) {
                print STDERR "Notice: $SQL\n";
                $Self->{DBObject}->Do(SQL => $SQL);
            }
        }
        return 1;
    }
    else {
        return;
    }
}

=item PackageReinstall()

reinstall files of a package

    $PackageObject->PackageReinstall(String => $FileString);

=cut

sub PackageReinstall {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(String)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # parse source file
    my %Structur = $Self->PackageParse(%Param);
    # install files
    if ($Structur{Filelist} && ref($Structur{Filelist}) eq 'ARRAY') {
        foreach my $File (@{$Structur{Filelist}}) {
            # install file
#            print STDERR "Notice: Reinstall $File->{Location}!\n";
            $Self->_FileInstall(%{$File});
        }
    }
    # install config
    $Self->{SysConfigObject} = Kernel::System::Config->new(%{$Self});
    $Self->{SysConfigObject}->WriteDefault();
    # install code
    if ($Structur{CodeReinstall} && $Structur{CodeReinstall}->{Content}) {
        if ($Structur{CodeReinstall}->{Content}) {
            print STDERR "Code: $Structur{CodeReinstall}->{Content}\n";
            if (!eval $Structur{CodeReinstall}->{Content}) {
                print STDERR "CodeError: $@\n";
            }
        }
    }
    return 1;
}

=item PackageUpgrade()

upgrade a package

    $PackageObject->PackageUpgrade(String => $FileString);

=cut

sub PackageUpgrade {
    my $Self = shift;
    my %Param = @_;
    my %InstalledStructur = ();
    # check needed stuff
    foreach (qw(String)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # conflict check
    my %Structur = $Self->PackageParse(%Param);
    # check if package is already installed
    my $Installed = 0;
    my $InstalledVersion = 0;
    foreach my $Package ($Self->RepositoryList()) {
        if ($Structur{Name}->{Content} eq $Package->{Name}->{Content}) {
            if ($Package->{Status} =~ /^installed$/i) {
                $Installed = 1;
                $InstalledVersion = $Package->{Version}->{Content};
                %InstalledStructur = %{$Package};
            }
        }
    }
    if (!$Installed) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Package is not installed, can't upgrade!");
        return;
    }
    # version check
    if (!$Self->_CheckVersion(Version1 => $Structur{Version}->{Content}, Version2 => $InstalledVersion, Type => 'Max')) {
        if ($Structur{Version}->{Content} eq $InstalledVersion) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Can't upgrade, package '$Structur{Name}->{Content}-$InstalledVersion' already installed!",
            );
            if (!$Param{Force}) {
                return;
            }
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Can't upgrade, installed package '$InstalledVersion' is newer as '$Structur{Version}->{Content}'!",
            );
            if (!$Param{Force}) {
                return;
            }
        }
    }
    # remove old packages
    $Self->RepositoryRemove(Name => $Structur{Name}->{Content});
    if ($Self->RepositoryAdd(String => $Param{String})) {
        # check OS
        my $OSCheckOk = 1;
        if ($Structur{OS} && ref($Structur{OS}) eq 'ARRAY') {
            $OSCheckOk = 0;
            foreach my $OS (@{$Structur{OS}}) {
                if ($^O =~ /^$OS$/i) {
                    $OSCheckOk = 1;
                }
            }
        }
        if (!$OSCheckOk && !$Param{Force}) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Sorry, can't install package, because package is not for your OS!!",
            );
            return;
        }
        # check framework
        my $FWCheckOk = 0;
        if ($Structur{Framework} && ref($Structur{Framework}) eq 'ARRAY') {
            foreach my $FW (@{$Structur{Framework}}) {
                if ($Self->_CheckFramework(Framework => $FW->{Content})) {
                    $FWCheckOk = 1;
                }
            }
        }
        if (!$FWCheckOk && !$Param{Force}) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Sorry, can't install package, because package is not for your Framework!!",
            );
            return;
        }
        # check required packages
        if ($Structur{PackageRequired} && ref($Structur{PackageRequired}) eq 'ARRAY') {
            if (!$Self->_CheckRequired(%Param, PackageRequired => $Structur{PackageRequired}) && !$Param{Force}) {
                return;
            }
        }
        # update package status
        my $SQL = "UPDATE package_repository SET install_status = 'installed'".
            " WHERE ".
            " name = '".$Self->{DBObject}->Quote($Structur{Name}->{Content})."'".
            " AND ".
            " version = '".$Self->{DBObject}->Quote($Structur{Version}->{Content})."'";
        $Self->{DBObject}->Do(SQL => $SQL);

        # uninstall old package files
        if ($InstalledStructur{Filelist} && ref($InstalledStructur{Filelist}) eq 'ARRAY') {
            foreach my $File (@{$InstalledStructur{Filelist}}) {
                # remove file
                $Self->_FileRemove(%{$File});
            }
        }
        # install files
        if ($Structur{Filelist} && ref($Structur{Filelist}) eq 'ARRAY') {
            foreach my $File (@{$Structur{Filelist}}) {
                # install file
                $Self->_FileInstall(%{$File});
            }
        }
        # install config
        $Self->{SysConfigObject} = Kernel::System::Config->new(%{$Self});
        $Self->{SysConfigObject}->WriteDefault();
        # install code
        if ($Structur{CodeUpgrade} && $Structur{CodeUpgrade}->{Content}) {
            if ($Structur{CodeUpgrade}->{Content}) {
                print STDERR "Code: $Structur{CodeUpgrade}->{Content}\n";
                if (!eval $Structur{CodeUpgrade}->{Content}) {
                    print STDERR "CodeError: $@\n";
                }
            }
        }
        # upgrade database
        if ($Structur{DatabaseUpgrade} && ref($Structur{DatabaseUpgrade}) eq 'ARRAY') {
            my @Part = ();
            my $Use = 0;
            foreach my $S (@{$Structur{DatabaseUpgrade}}) {
                if ($S->{TagLevel} == 3 && $S->{Version}) {
                    if (!$Self->_CheckVersion(Version1 => $S->{Version}, Version2 => $InstalledVersion, Type => 'Min')) {
                        $Use = 1;
                        @Part = ();
                        push (@Part, $S);
                    }
                }
                elsif ($Use && $S->{TagLevel} == 3 && $S->{TagType} eq 'End') {
                    $Use = 0;
                    push (@Part, $S);
                    my @SQL = $Self->{DBObject}->SQLProcessor(Database => \@Part);
                    foreach my $SQL (@SQL) {
                        print STDERR "Notice: $SQL\n";
                        $Self->{DBObject}->Do(SQL => $SQL);
                    }
                    my @SQLPost = $Self->{DBObject}->SQLProcessorPost();
                    foreach my $SQL (@SQLPost) {
                        print STDERR "Notice: $SQL\n";
                        $Self->{DBObject}->Do(SQL => $SQL);
                    }
                }
                elsif ($Use) {
                    push (@Part, $S);
                }
            }
        }
        return 1;
    }
    else {
        return;
    }
}

=item PackageUninstall()

uninstall a package

    $PackageObject->PackageUninstall(String => $FileString);

=cut

sub PackageUninstall {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(String)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # parse source file
    my %Structur = $Self->PackageParse(%Param);
    # files
    my $FileCheckOk = 1;
    if ($Structur{Filelist} && ref($Structur{Filelist}) eq 'ARRAY') {
        foreach my $File (@{$Structur{Filelist}}) {
            # remove file
            $Self->_FileRemove(%{$File});
        }
    }
    # remove old packages
    $Self->RepositoryRemove(Name => $Structur{Name}->{Content});

    # install config
    $Self->{SysConfigObject} = Kernel::System::Config->new(%{$Self});
    $Self->{SysConfigObject}->WriteDefault();
    if (!$FileCheckOk) {
#        return;
    }
    # uninstall code
    if ($Structur{CodeUninstall} && $Structur{CodeUninstall}->{Content}) {
        if ($Structur{CodeUninstall}->{Content}) {
            print STDERR "Code: $Structur{CodeUninstall}->{Content}\n";
            if (!eval $Structur{CodeUninstall}->{Content}) {
                print STDERR "CodeError: $@\n";
            }
        }
    }
    # uninstall database
    if ($Structur{DatabaseUninstall} && ref($Structur{DatabaseUninstall}) eq 'ARRAY') {
        my @SQL = $Self->{DBObject}->SQLProcessor(Database => $Structur{DatabaseUninstall}, );
        foreach my $SQL (@SQL) {
            print STDERR "Notice: $SQL\n";
            $Self->{DBObject}->Do(SQL => $SQL);
        }
        my @SQLPost = $Self->{DBObject}->SQLProcessorPost();
        foreach my $SQL (@SQLPost) {
            print STDERR "Notice: $SQL\n";
            $Self->{DBObject}->Do(SQL => $SQL);
        }
    }
    return 1;
}

=item PackageOnlineRepositories()

returns a list of available online repositories

    my %List = $PackageObject->PackageOnlineRepositories();

=cut

sub PackageOnlineRepositories {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw()) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # check if online repository should be fetched
    if (!$Self->{ConfigObject}->Get('Package::RepositoryRoot')) {
        return ();
    }
    # get repository list
    my $XML = '';
    foreach (@{$Self->{ConfigObject}->Get('Package::RepositoryRoot')}) {
        $XML = $Self->_Download(URL => $_);
        if ($XML) {
            last;
        }
    }
    if (!$XML) {
        return ();
    }
    my @XMLARRAY = $Self->{XMLObject}->XMLParse(String => $XML);
    my %List = ();
    my $Name = '';
    foreach my $Tag (@XMLARRAY) {
        # just use start tags
        if ($Tag->{TagType} ne 'Start') {
            next;
        }
        # reset package data
        if ($Tag->{Tag} eq 'Repository') {
            $Name = '';
        }
        elsif ($Tag->{Tag} eq 'Name') {
            $Name = $Tag->{Content};
        }
        elsif ($Tag->{Tag} eq 'URL') {
            if ($Name) {
                $List{$Tag->{Content}} = $Name;
            }
        }
    }
    return %List;
}

=item PackageOnlineList()

returns a list of available online packages

    my %List = $PackageObject->PackageOnlineList();

=cut

sub PackageOnlineList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(URL Lang)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    my $XML = $Self->_Download(URL => $Param{URL}."/otrs.xml");
    if (!$XML) {
        return ();
    }
    my @XMLARRAY = $Self->{XMLObject}->XMLParse(String => $XML);
    my @Packages = ();
    my %Package = ();
    foreach my $Tag (@XMLARRAY) {
        # remember package
        if ($Tag->{TagType} eq 'End' && $Tag->{Tag} eq 'Package') {
            if (%Package) {
                push (@Packages, {%Package});
            }
            next;
        }
        # just use start tags
        if ($Tag->{TagType} ne 'Start') {
            next;
        }
        # reset package data
        if ($Tag->{Tag} eq 'Package') {
            %Package = ();
        }
        elsif ($Tag->{Tag} eq 'Framework') {
            push (@{$Package{Framework}}, $Tag);
        }
        elsif ($Tag->{Tag} eq 'Description') {
            if (!$Package{Description}) {
                $Package{Description} = $Tag->{Content};
            }
            if ($Tag->{Lang} eq $Param{Lang}) {
                $Package{Description} = $Tag->{Content};
            }
        }
        else {
            $Package{$Tag->{Tag}} = $Tag->{Content};
        }
    }

    # just framework packages
    my @NewPackages = ();
    foreach my $Package (@Packages) {
        my $FWCheckOk = 0;
        if ($Package->{Framework} && ref($Package->{Framework}) eq 'ARRAY') {
            foreach my $FW (@{$Package->{Framework}}) {
                if ($Self->_CheckFramework(Framework => $FW->{Content})) {
                    $FWCheckOk = 1;
#print STDERR "FWCheckOk: $Package->{Name} $Package->{Version} -> $FW->{Content}\n";
                }
            }
        }
        if ($FWCheckOk) {
            push (@NewPackages, $Package);
        }
    }
    @Packages = @NewPackages;

    # just the newest packages
    my %Newest = ();
    foreach my $Package (@Packages) {
        if (!$Newest{$Package->{Name}}) {
            $Newest{$Package->{Name}} = $Package;
        }
        else {
            if (!$Self->_CheckVersion(Version1 => $Package->{Version}, Version2 => $Newest{$Package->{Name}}->{Version}, Type => 'Min')) {
#            if ($Newest{$Package->{Name}}->{Version} < $Package->{Version}) {
                $Newest{$Package->{Name}} = $Package;
            }
        }
    }

    # get possible actions
    @NewPackages = ();
    foreach my $Data (sort keys %Newest) {
        my $InstalledSameVersion = 0;
        foreach my $Package ($Self->RepositoryList()) {
            if ($Newest{$Data}->{Name} eq $Package->{Name}->{Content}) {
                $Newest{$Data}->{Local} = 1;
                if ($Package->{Status} eq 'installed') {
                    $Newest{$Data}->{Installed} = 1;
#                    if ($Newest{$Data}->{Version} > $Package->{Version}->{Content}) {
#                    if (!$Self->_CheckVersion(Version1 => $Package->{Version}->{Content}, Version2 => $Newest{$Data}->{Version}, Type => 'Max')) {
                    if (!$Self->_CheckVersion(Version1 => $Newest{$Data}->{Version}, Version2 => $Package->{Version}->{Content}, Type => 'Min')) {
                        $Newest{$Data}->{Upgrade} = 1;
                    }
                    # check if version or lower is already installed
#                    elsif ($Newest{$Data}->{Version} <= $Package->{Version}->{Content}) {
#                    elsif (!$Self->_CheckVersion(Version1 => $Package->{Version}->{Content}, Version2 => $Newest{$Data}->{Version}, Type => 'Min')) {
                    elsif (!$Self->_CheckVersion(Version1 => $Newest{$Data}->{Version}, Version2 => $Package->{Version}->{Content}, Type => 'Max')) {
                        $InstalledSameVersion = 1;
                    }
                }
            }
        }
        # add package if not already installed
        if (!$InstalledSameVersion) {
            push (@NewPackages, $Newest{$Data});
        }
    }
    @Packages = @NewPackages;

    return @Packages;
}

=item PackageOnlineGet()

donwload of an online package and put it int to the local reposetory

    $PackageObject->PackageOnlineGet(
        Source => 'http://host/',
        File => 'SomePackage-1.0.opm',
    );

=cut

sub PackageOnlineGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(File Source)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    return $Self->_Download(URL => $Param{Source}."/$Param{File}");
}

=item PackageBuild()

build a opm package

    my $Package = $PackageObject->PackageBuild(
        Name => 'SomePackageName',
        Version => '1.0',
        Vendor => 'OTRS GmbH',
        URL => 'http://otrs.org/',
        License => 'GNU GENERAL PUBLIC LICENSE Version 2, June 1991',
        Description => [
            {
                Lang => 'en',
                Content => 'english description',
            },
            {
                Lang => 'de',
                Content => 'german description',
            },
        ],
        Filelist = [
            {
                Location => 'Kernel/System/Lala.pm'
                Permission => '644',
                Content => $FileInString,
            },
            {
                Location => 'Kernel/System/Lulu.pm'
                Permission => '644',
                Content => $FileInString,
            },
        ],
    );

=cut

sub PackageBuild {
    my $Self = shift;
    my %Param = @_;
    my $XML = '';
    # check needed stuff
    foreach (qw(Name Version Vendor License Description)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    if (!$Param{Type}) {
        $XML .= '<?xml version="1.0" encoding="utf-8" ?>';
        $XML .= "\n";
        $XML .= '<otrs_package version="1.0">';
        $XML .= "\n";
    }
    foreach my $Tag (qw(Name Version Vendor URL License ChangeLog Description Framework OS PackageRequired CodeInstall CodeUpgrade CodeUninstall CodeReinstall)) {
        if (ref($Param{$Tag}) eq 'HASH') {
            my %OldParam = ();
            foreach (qw(Content Encode TagType Tag TagLevel TagCount TagKey TagLastLevel)) {
                $OldParam{$_} = $Param{$Tag}->{$_};
                delete $Param{$Tag}->{$_};
            }
            $XML .= "  <$Tag";
            foreach (sort keys %{$Param{$Tag}}) {
                $XML .= " $_=\"$Param{$Tag}->{$_}\"";
            }
            $XML .= ">";
            $XML .= "$OldParam{Content}</$Tag>\n";
        }
        elsif (ref($Param{$Tag}) eq 'ARRAY') {
          foreach (@{$Param{$Tag}}) {
            my %Hash = %{$_};
            my %OldParam = ();
            foreach (qw(Content Encode TagType Tag TagLevel TagCount TagKey TagLastLevel)) {
                $OldParam{$_} = $Hash{$_};
                delete $Hash{$_};
            }
            $XML .= "  <$Tag";
            foreach (keys %Hash) {
                $XML .= " $_=\"$Hash{$_}\"";
            }
            $XML .= ">";
            $XML .= "$OldParam{Content}</$Tag>\n";
          }
        }
        else {
#            $XML .= "  <$Tag></$Tag>\n";
#           die "No Hash no Array: $Tag: $Param{$Tag}\n";
#            $Self->{LogObject}->Log(Priority => 'error', Message => "Invalid Ref data in tag $Tag!");
#            return;
        }
    }
    if ($Param{Type}) {
        return $XML;
    }
    $XML .= "  <BuildDate>".$Self->{TimeObject}->SystemTime2TimeStamp(
        SystemTime => $Self->{TimeObject}->SystemTime(),
    )."</BuildDate>\n";
    $XML .= "  <BuildHost>".$Self->{ConfigObject}->Get('FQDN')."</BuildHost>\n";
    if ($Param{Filelist}) {
        $XML .= "  <Filelist>\n";
        foreach my $File (@{$Param{Filelist}}) {
            my %OldParam = ();
            foreach (qw(Content Encode TagType Tag TagLevel TagCount TagKey TagLastLevel)) {
                $OldParam{$_} = $File->{$_} || '';
                delete $File->{$_};
            }

            $XML .= "    <File";
            foreach (sort keys %{$File}) {
                if ($_ ne 'Tag' && $_ ne 'Content' && $_ ne 'TagType') {
                    $XML .= " $_=\"$File->{$_}\"";
                }
            }
            $XML .= " Encode=\"Base64\">";
            my $File = $Self->{ConfigObject}->Get('Home')."/$File->{Location}";
            my $FileContent = '';
            if (open(IN, "< $File")) {
                while (<IN>) {
                    $FileContent .= $_;
                }
                close (IN);
            }
            else {
                die "Can't open: $File: $!";
            }
            $XML .= encode_base64($FileContent, '');
            $XML .= "</File>\n";
        }
        $XML .= "  </Filelist>\n";
    }
    foreach (qw(DatabaseInstall DatabaseUpgrade DatabaseReinstall DatabaseUninstall)) {
        if ($Param{$_}) {
            $XML .= "  <$_>\n";
            my @Close = ();
            my $TB = '';
            my $LL = 0;
            my $Space = '    ';
            foreach my $Tag (@{$Param{$_}}) {
                if ($Tag->{TagType} eq 'Start') {
                    if ($Tag->{Tag} eq 'Data' || $Tag->{Tag} eq 'Column') {
                        $Space .= '    ';
                    }
                    $XML .= $Space."<$Tag->{Tag}";
                    foreach (sort keys %{$Tag}) {
                        if ($_ ne 'Tag' && $_ ne 'Content' && $_ ne 'TagType' && $_ ne 'TagLevel' && $_ ne 'TagCount' && $_ ne 'TagKey' && $_ ne 'TagLastLevel') {
                            if (defined($Tag->{$_})) {
                                $XML .= " $_=\"$Tag->{$_}\"";
                            }
                        }
                    }
                    $XML .= ">";
                    if ($Tag->{Content}) {
                        $XML .= "\n";
                    }
                    else {
                        $Space = '';
                    }
                }
                if ($Tag->{TagType} eq 'End') {
                   $XML .= $Space."</$Tag->{Tag}>\n";
                   $Space = '    ';
                }
            }
            $XML .= "  </$_>\n";
        }
    }
    $XML .= '</otrs_package>';
    return $XML;
}

=item PackageParse()

parse a package

    my %Structur = $PackageObject->PackageParse(String => $FileString);

=cut

sub PackageParse {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(String)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    my @XMLARRAY = $Self->{XMLObject}->XMLParse(%Param);
    # cleanup global vars
    undef $Self->{Package};
    # parse package
    my %PackageMap = %{$Self->{PackageMap}};

    foreach my $Tag (@XMLARRAY) {
        if ($Tag->{TagType} ne 'Start') {
            next;
        }
        if ($PackageMap{$Tag->{Tag}} && $PackageMap{$Tag->{Tag}} eq 'SCALAR') {
            $Self->{Package}->{$Tag->{Tag}} = $Tag;
        }
        elsif ($PackageMap{$Tag->{Tag}} && $PackageMap{$Tag->{Tag}} eq 'ARRAY') {
            push (@{$Self->{Package}->{$Tag->{Tag}}}, $Tag);
        }
    }
    my $Open = 0;
    foreach my $Tag (@XMLARRAY) {
        if ($Open && $Tag->{Tag} eq "Filelist") {
            $Open = 0;
        }
        elsif (!$Open && $Tag->{Tag} eq "Filelist") {
            $Open = 1;
            next;
        }
        if ($Open && $Tag->{TagType} eq 'Start') {
#print STDERR "$Tag->{Tag}\n";
            push (@{$Self->{Package}->{Filelist}}, $Tag);
        }
    }
    foreach (qw(DatabaseInstall DatabaseUpgrade DatabaseReinstall DatabaseUninstall)) {
        foreach my $Tag (@XMLARRAY) {
            if ($Open && $Tag->{Tag} eq $_) {
                $Open = 0;
            }
            elsif (!$Open && $Tag->{Tag} eq $_) {
                $Open = 1;
                next;
            }

#            if ($Open && $Tag->{Type} eq 'Start') {
            if ($Open) {
#print STDERR "$Tag->{Tag} $Tag->{Type}\n";
                push (@{$Self->{Package}->{$_}}, $Tag);
            }
        }
    }
    # return package structur
    my %Return = %{$Self->{Package}};
    undef $Self->{Package};
    return %Return;
}

sub _Download {
    my $Self = shift;
    my %Param = @_;
    my $Content = '';
    # check needed stuff
    foreach (qw(URL)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # init agent
    my $UserAgent = LWP::UserAgent->new();
    # set timeout
    $UserAgent->timeout($Self->{ConfigObject}->Get('Package::Timeout') || 12);
    # set user agent
    $UserAgent->agent($Self->{ConfigObject}->Get('Product').' '.$Self->{ConfigObject}->Get('Version'));
    # set proxy
    if ($Self->{ConfigObject}->Get('Package::Proxy')) {
        $UserAgent->proxy(['http', 'ftp'], $Self->{ConfigObject}->Get('Package::Proxy'));
    }
    # get file
    my $Response = $UserAgent->get($Param{URL});
    if ($Response->is_success()) {
        return $Response->content();
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Can't get file from $Param{URL}: ".$Response->status_line(),
        );
        return;
    }
}
sub _FileInstall {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Location Content Permission)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    # backup old file
    if (-e "$Self->{Home}/$Param{Location}") {
        if ($Param{Type} && $Param{Type} =~ /^replace$/i) {
             move("$Self->{Home}/$Param{Location}", "$Self->{Home}/$Param{Location}.backup");
        }
        else {
             move("$Self->{Home}/$Param{Location}", "$Self->{Home}/$Param{Location}.save");
        }
    }
    # check directory of loaction (in case create a directory)
    if ($Param{Location} =~ /^(.*)\/(.+?|)$/) {
        my $Directory = $1;
        my @Directories = split(/\//, $Directory);
        my $DirectoryCurrent = $Self->{Home};
        foreach (@Directories) {
            $DirectoryCurrent .= "/$_";
            if (! -d $DirectoryCurrent) {
                if (mkdir $DirectoryCurrent) {
                    print STDERR "Notice: Create Directory $DirectoryCurrent!\n";
                }
                else {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message => "Can't create directory: $DirectoryCurrent: $!",
                    );
                }
            }
        }
    }
    # write file
    if (open(OUT, "> $Self->{Home}/$Param{Location}")) {
        print STDERR "Notice: Install $Param{Location} ($Param{Permission})!\n";
        if ($Param{Encode} && $Param{Encode} eq 'Base64') {
            $Param{Content} = decode_base64($Param{Content});
        }
        # set bin mode
        binmode OUT;
        print OUT $Param{Content};
        close(OUT);
        # set permission
        if (length($Param{Permission}) == 3) {
            $Param{Permission} = "0$Param{Permission}";
        }
        chmod(oct($Param{Permission}), "$Self->{Home}/$Param{Location}");
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Can't write file: $Self->{Home}/$Param{Location}: $!",
        );
    }
    return 1;
}
sub _FileRemove {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Location)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    my $RealFile = "$Self->{Home}/$Param{Location}";
    # check if file exists
    if (-e $RealFile) {
        # remove old file
        if (unlink $RealFile) {
            print STDERR "Notice: Removed file: $RealFile\n";
            # restore old file (if exists)
            if (-e "$RealFile.backup") {
                move("$RealFile.backup", $RealFile);
            }
            return 1;
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Can't remove file $RealFile: $!!",
            );
            return;
        }
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "No such file: $RealFile!",
        );
        return;
    }
}
sub _FileSystemCheck {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw()) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "$_ not defined!");
        return;
      }
    }
    foreach (qw(/ /bin/ /Kernel/ /Kernel/System/ /Kernel/Output/ /Kernel/Modules/)) {
        my $File = "$Self->{Home}/$_/check_permissons.$$";
        if (open(OUT, "> $File")) {
            print OUT "test";
            close (OUT);
            unlink $File;
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Can't write file $File: $!!",
            );
            return;
        }
    }
    return 1;
}
1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.35 $ $Date: 2005-07-17 15:40:09 $

=cut
