# --
# Kernel/Modules/AdminPackageManager.pm - manage software packages
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AdminPackageManager.pm,v 1.24 2005-12-26 13:51:12 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AdminPackageManager;

use strict;
use Kernel::System::Package;

use vars qw($VERSION);
$VERSION = '$Revision: 1.24 $';
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
    foreach (qw(ParamObject DBObject LayoutObject LogObject ConfigObject)) {
        if (!$Self->{$_}) {
            $Self->{LayoutObject}->FatalError(Message => "Got no $_!");
        }
    }

    $Self->{PackageObject} = Kernel::System::Package->new(%Param);

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Source = $Self->{UserRepository} || '';
    # ------------------------------------------------------------ #
    # check mod perl version and Apache::Reload
    # ------------------------------------------------------------ #
    if (exists $ENV{MOD_PERL}) {
        eval "require mod_perl";
        if (defined $mod_perl::VERSION) {
            if ($mod_perl::VERSION >= 1.99) {
                # check if Apache::Reload is loaded
                my $ApacheReload = 0;
                foreach my $Module (keys %INC) {
                    $Module =~ s/\//::/g;
                    $Module =~ s/\.pm$//g;
                    if ($Module eq 'Apache::Reload' || $Module eq 'Apache2::Reload') {
                        $ApacheReload = 1;
                    }
                }
                if (!$ApacheReload) {
                    return $Self->{LayoutObject}->ErrorScreen(Message => 'Sorry, Apache::Reload or Apache2::Reload is needed as PerlModule and PerlInitHandler in Apache config file. See also scripts/apache2-httpd.include.conf!');
                }
            }
            else {
                return $Self->{LayoutObject}->ErrorScreen(Message => 'Sorry, for this interface is mod_perl2 with Apache2::Reload required. Other way you need to use the cmd tool bin/opm.pl to install packages!');
            }
        }
    }
    # ------------------------------------------------------------ #
    # view package
    # ------------------------------------------------------------ #
    if ($Self->{Subaction} eq 'View') {
        my $Name = $Self->{ParamObject}->GetParam(Param => 'Name') || '';
        my $Version = $Self->{ParamObject}->GetParam(Param => 'Version') || '';
        my $Loaction = $Self->{ParamObject}->GetParam(Param => 'Location');
        my %Frontend = ();
        my $Package = $Self->{PackageObject}->RepositoryGet(
            Name => $Name,
            Version => $Version,
        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        # deploy check
        my $Deployed = $Self->{PackageObject}->DeployCheck(
            Name => $Name,
            Version => $Version,
        );
        my %DeployInfo = $Self->{PackageObject}->DeployCheckInfo();
        $Self->{LayoutObject}->Block(
            Name => 'Package',
            Data => { %Param, %Frontend, Name => $Name, Version => $Version, },
        );
        foreach (qw(DownloadLocal Rebuild Reinstall)) {
            $Self->{LayoutObject}->Block(
                Name => 'Package'.$_,
                Data => { %Param, %Frontend, Name => $Name, Version => $Version, },
            );
        }
        my %Structur = $Self->{PackageObject}->PackageParse(String => $Package);
        # check if file is requested
        if ($Loaction) {
            if (ref($Structur{Filelist}) eq 'ARRAY') {
                foreach my $Hash (@{$Structur{Filelist}}) {
                    if ($Hash->{Location} eq $Loaction) {
                        return $Self->{LayoutObject}->Attachment(
                            Filename => $Loaction,
                            ContentType => 'application/octet-stream',
                            Content => $Hash->{Content},
                        );
                    }
                }
            }
        }
        my @DatabaseBuffer = ();
        foreach my $Key (sort keys %Structur) {
            if (ref($Structur{$Key}) eq 'HASH') {
                    if ($Key =~ /^(Description|Filelist)$/) {
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItem$Key",
                            Data => {Tag => $Key, %{$Structur{$Key}}},
                        );
                    }
                    else {
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItemGeneric",
                            Data => {Tag => $Key, %{$Structur{$Key}}},
                        );
                    }
            }
            elsif (ref($Structur{$Key}) eq 'ARRAY') {
                foreach my $Hash (@{$Structur{$Key}}) {
                    if ($Key =~ /^(Description)$/) {
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItem$Key",
                            Data => { %{$Hash}, Tag => $Key, },
                        );
                    }
                    elsif ($Hash->{Tag} =~ /^(File)$/) {
                        # add human readable file size
                        if ($Hash->{Size}) {
                            # remove meta data in files
                            if ($Hash->{Size} > (1024*1024)) {
                                $Hash->{Size} = sprintf "%.1f MBytes", ($Hash->{Size}/(1024*1024));
                            }
                            elsif ($Hash->{Size} > 1024) {
                                $Hash->{Size} = sprintf "%.1f KBytes", (($Hash->{Size} /1024));
                            }
                            else {
                                $Hash->{Size} = $Hash->{Size}.' Bytes';
                            }
                        }
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItemFilelistFile",
                            Data => {
                                Name => $Name,
                                Version => $Version,
                                %{$Hash},
                            },
                        );
                        if ($DeployInfo{File}->{$Hash->{Location}}) {
                            $Self->{LayoutObject}->Block(
                                Name => "PackageItemFilelistFileNote",
                                Data => {
                                    Name => $Name,
                                    Version => $Version,
                                    %{$Hash},
                                    Message => $DeployInfo{File}->{$Hash->{Location}},
                                    Image => 'notready.png',
                                },
                            );
                        }
                        else {
                            $Self->{LayoutObject}->Block(
                                Name => "PackageItemFilelistFileNote",
                                Data => {
                                    Name => $Name,
                                    Version => $Version,
                                    %{$Hash},
                                    Message => 'ok',
                                    Image => 'ready.png',
                                },
                            );
                        }
                    }
                    elsif ($Key =~ /^Database(Install|Reinstall|Upgrade|Uninstall)$/) {
                        if ($Hash->{TagType} eq 'Start') {
                            if ($Hash->{Tag} =~ /^Table/) {
                                push (@DatabaseBuffer, $Hash);
                                $Self->{LayoutObject}->Block(
                                    Name => "PackageItemDatabase",
                                    Data => { %{$Hash}, TagName => $Key, },
                                );
                            }
                            else {
                                push (@DatabaseBuffer, $Hash);
                                $Self->{LayoutObject}->Block(
                                    Name => "PackageItemDatabaseSub",
                                    Data => { %{$Hash}, TagName => $Key, },
                                );
                            }
                        }
                        if ($Hash->{Tag} =~ /^Table/ && $Hash->{TagType} eq 'End') {
                            push (@DatabaseBuffer, $Hash);
                            my @SQL = $Self->{DBObject}->SQLProcessor(Database => \@DatabaseBuffer);
                            my @SQLPost = $Self->{DBObject}->SQLProcessorPost();
                            push (@SQL, @SQLPost);
                            foreach my $SQL (@SQL) {
                                $Self->{LayoutObject}->Block(
                                    Name => "PackageItemDatabaseSQL",
                                    Data => { TagName => $Key, SQL => $SQL, },
                                );
                            }
                            @DatabaseBuffer = ();
                        }
                    }
                    else {
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItemGeneric",
                            Data => { %{$Hash}, Tag => $Key, },
                        );
                    }
                }
            }
        }
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        if (!$Deployed) {
            $Output .= $Self->{LayoutObject}->Notify(
                Priority => 'Error',
                Data => "$Name $Version".' - $Text{"Package not correctly deployed, you need to deploy it again!"}',
                Link => '$Env{"Baselink"}Action=$Env{"Action"}&Subaction=Reinstall&Name='.$Name.'&Version='.$Version,
            );
        }
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminPackageManager',
            Data => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
    # ------------------------------------------------------------ #
    # view remote package
    # ------------------------------------------------------------ #
    if ($Self->{Subaction} eq 'ViewRemote') {
        my $File = $Self->{ParamObject}->GetParam(Param => 'File') || '';
        my $Loaction = $Self->{ParamObject}->GetParam(Param => 'Location');
        my %Frontend = ();
        # download package
        my $Package = $Self->{PackageObject}->PackageOnlineGet(
            Source => $Source,
            File => $File,
        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        my %Structur = $Self->{PackageObject}->PackageParse(String => $Package);
        $Self->{LayoutObject}->Block(
            Name => 'Package',
            Data => { %Param, %Frontend, },
        );
        $Self->{LayoutObject}->Block(
            Name => 'PackageDownloadRemote',
            Data => { %Param, %Frontend, File => $File, },
        );
        # check if file is requested
        if ($Loaction) {
            if (ref($Structur{Filelist}) eq 'ARRAY') {
                foreach my $Hash (@{$Structur{Filelist}}) {
                    if ($Hash->{Location} eq $Loaction) {
                        return $Self->{LayoutObject}->Attachment(
                            Filename => $Loaction,
                            ContentType => 'application/octet-stream',
                            Content => $Hash->{Content},
                        );
                    }
                }
            }
        }
        my @DatabaseBuffer = ();
        foreach my $Key (sort keys %Structur) {
            if (ref($Structur{$Key}) eq 'HASH') {
                    if ($Key =~ /^(Description|Filelist)$/) {
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItem$Key",
                            Data => {Tag => $Key, %{$Structur{$Key}}},
                        );
                    }
                    else {
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItemGeneric",
                            Data => {Tag => $Key, %{$Structur{$Key}}},
                        );
                    }
            }
            elsif (ref($Structur{$Key}) eq 'ARRAY') {
                foreach my $Hash (@{$Structur{$Key}}) {
                    if ($Key =~ /^(Description)$/) {
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItem$Key",
                            Data => { %{$Hash}, Tag => $Key, },
                        );
                    }
                    elsif ($Hash->{Tag} =~ /^(File)$/) {
                        # add human readable file size
                        if ($Hash->{Size}) {
                            # remove meta data in files
                            if ($Hash->{Size} > (1024*1024)) {
                                $Hash->{Size} = sprintf "%.1f MBytes", ($Hash->{Size}/(1024*1024));
                            }
                            elsif ($Hash->{Size} > 1024) {
                                $Hash->{Size} = sprintf "%.1f KBytes", (($Hash->{Size} /1024));
                            }
                            else {
                                $Hash->{Size} = $Hash->{Size}.' Bytes';
                            }
                        }
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItemFilelistFile",
                            Data => {
                                Name => $Structur{Name}->{Content},
                                Version => $Structur{Version}->{Content},
                                File => $File,
                                %{$Hash},
                            },
                        );
                    }
                    elsif ($Key =~ /^Database(Install|Reinstall|Upgrade|Uninstall)$/) {
                        if ($Hash->{TagType} eq 'Start') {
                            if ($Hash->{Tag} =~ /^Table/) {
                                $Self->{LayoutObject}->Block(
                                    Name => "PackageItemDatabase",
                                    Data => { %{$Hash}, TagName => $Key, },
                                );
                                push (@DatabaseBuffer, $Hash);
                            }
                            else {
                                $Self->{LayoutObject}->Block(
                                    Name => "PackageItemDatabaseSub",
                                    Data => { %{$Hash}, TagName => $Key, },
                                );
                                push (@DatabaseBuffer, $Hash);
                            }
                        }
                        if ($Hash->{Tag} =~ /^Table/ && $Hash->{TagType} eq 'End') {
                            push (@DatabaseBuffer, $Hash);
                            my @SQL = $Self->{DBObject}->SQLProcessor(Database => \@DatabaseBuffer);
                            my @SQLPost = $Self->{DBObject}->SQLProcessorPost();
                            push (@SQL, @SQLPost);
                            foreach my $SQL (@SQL) {
                                $Self->{LayoutObject}->Block(
                                    Name => "PackageItemDatabaseSQL",
                                    Data => { TagName => $Key, SQL => $SQL, },
                                );
                            }
                            @DatabaseBuffer = ();
                        }
                    }
                    else {
                        $Self->{LayoutObject}->Block(
                            Name => "PackageItemGeneric",
                            Data => { %{$Hash}, Tag => $Key, },
                        );
                    }
                }
            }
        }
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminPackageManager',
            Data => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
    # ------------------------------------------------------------ #
    # download package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'Download') {
        my $Name = $Self->{ParamObject}->GetParam(Param => 'Name') || '';
        my $Version = $Self->{ParamObject}->GetParam(Param => 'Version') || '';
        my %Frontend = ();
        my $Package = $Self->{PackageObject}->RepositoryGet(
            Name => $Name,
            Version => $Version,
        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            return $Self->{LayoutObject}->Attachment(
                Content => $Package,
                ContentType => 'plain/xml',
                Filename => "$Name-$Version.opm",
                Type => 'attachment',
            );
        }
    }
    # ------------------------------------------------------------ #
    # download remote package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'DownloadRemote') {
        my $File = $Self->{ParamObject}->GetParam(Param => 'File') || '';
        my %Frontend = ();
        # download package
        my $Package = $Self->{PackageObject}->PackageOnlineGet(
            Source => $Source,
            File => $File,
        );
        # check
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            return $Self->{LayoutObject}->Attachment(
                Content => $Package,
                ContentType => 'plain/xml',
                Filename => $File,
                Type => 'attachment',
            );
        }
    }
    # ------------------------------------------------------------ #
    # change repository
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'ChangeRepository') {
        my $Source = $Self->{ParamObject}->GetParam(Param => 'Source') || '';
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key => 'UserRepository',
            Value => $Source,
        );
        return $Self->{LayoutObject}->Redirect(OP => "Action=$Self->{Action}");
    }
    # ------------------------------------------------------------ #
    # install package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'Install') {
        my $Name = $Self->{ParamObject}->GetParam(Param => 'Name') || '';
        my $Version = $Self->{ParamObject}->GetParam(Param => 'Version') || '';
        my %Frontend = ();
        my $Package = $Self->{PackageObject}->RepositoryGet(
            Name => $Name,
            Version => $Version,
        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            if ($Self->{PackageObject}->PackageInstall(String => $Package)) {
                return $Self->{LayoutObject}->Redirect(OP => "Action=$Self->{Action}");
            }
            else {
                return $Self->{LayoutObject}->ErrorScreen();
            }
        }
    }
    # ------------------------------------------------------------ #
    # install remote package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'InstallRemote') {
        my $File = $Self->{ParamObject}->GetParam(Param => 'File') || '';
        my %Frontend = ();
        # download package
        my $Package = $Self->{PackageObject}->PackageOnlineGet(
            Source => $Source,
            File => $File,
        );
        # check
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            if ($Self->{PackageObject}->PackageInstall(String => $Package)) {
                return $Self->{LayoutObject}->Redirect(OP => "Action=$Self->{Action}");
            }
            else {
                return $Self->{LayoutObject}->ErrorScreen();
            }
        }
    }
    # ------------------------------------------------------------ #
    # upgrade remote package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'UpgradeRemote') {
        my $File = $Self->{ParamObject}->GetParam(Param => 'File') || '';
        my %Frontend = ();
        # download package
        my $Package = $Self->{PackageObject}->PackageOnlineGet(
            File => $File,
            Source => $Source,
        );
        # check
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        # get package
#        $Package = $Self->{PackageObject}->RepositoryGet(
#            Name => $Name,
#            Version => $Version,
#        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            if ($Self->{PackageObject}->PackageUpgrade(String => $Package)) {
                return $Self->{LayoutObject}->Redirect(OP => "Action=$Self->{Action}");
            }
            else {
                return $Self->{LayoutObject}->ErrorScreen();
            }
        }
    }
    # ------------------------------------------------------------ #
    # reinstall package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'Reinstall') {
        my $Name = $Self->{ParamObject}->GetParam(Param => 'Name') || '';
        my $Version = $Self->{ParamObject}->GetParam(Param => 'Version') || '';
        my %Frontend = ();
        my $Package = $Self->{PackageObject}->RepositoryGet(
            Name => $Name,
            Version => $Version,
        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            if ($Self->{PackageObject}->PackageReinstall(String => $Package)) {
                return $Self->{LayoutObject}->Redirect(OP => "Action=$Self->{Action}");
            }
            else {
                return $Self->{LayoutObject}->ErrorScreen();
            }
        }
    }
    # ------------------------------------------------------------ #
    # uninstall package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'Uninstall') {
        my $Name = $Self->{ParamObject}->GetParam(Param => 'Name') || '';
        my $Version = $Self->{ParamObject}->GetParam(Param => 'Version') || '';
        my %Frontend = ();
        my $Package = $Self->{PackageObject}->RepositoryGet(
            Name => $Name,
            Version => $Version,
        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            $Self->{LayoutObject}->Block(
                Name => 'Uninstall',
                Data => {
                    %Param,
                    Name => $Name,
                    Version => $Version,
                },
            );
            my $Output = $Self->{LayoutObject}->Header();
            $Output .= $Self->{LayoutObject}->NavigationBar();
            $Output .= $Self->{LayoutObject}->Output(
                TemplateFile => 'AdminPackageManager',
                Data => \%Param,
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
    }
    # ------------------------------------------------------------ #
    # uninstall action package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'UninstallAction') {
        my $Name = $Self->{ParamObject}->GetParam(Param => 'Name') || '';
        my $Version = $Self->{ParamObject}->GetParam(Param => 'Version') || '';
        my %Frontend = ();
        my $Package = $Self->{PackageObject}->RepositoryGet(
            Name => $Name,
            Version => $Version,
        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            if ($Self->{PackageObject}->PackageUninstall(String => $Package)) {
                return $Self->{LayoutObject}->Redirect(OP => "Action=$Self->{Action}");
            }
            else {
                return $Self->{LayoutObject}->ErrorScreen();
            }
        }
    }
    # ------------------------------------------------------------ #
    # install package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'InstallPackage') {
        my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
            Param => "file_upload",
            Source => 'string',
        );
        if (!%UploadStuff) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'Need File');
        }
        else {
            if ($Self->{PackageObject}->PackageInstall(String => $UploadStuff{Content})) {
                return $Self->{LayoutObject}->Redirect(OP => "Action=$Self->{Action}");
            }
            else {
                return $Self->{LayoutObject}->ErrorScreen();
            }
        }
    }
    # ------------------------------------------------------------ #
    # rebuild package
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'RebuildPackage') {
        my $Name = $Self->{ParamObject}->GetParam(Param => 'Name') || '';
        my $Version = $Self->{ParamObject}->GetParam(Param => 'Version') || '';
        my %Frontend = ();
        my $Package = $Self->{PackageObject}->RepositoryGet(
            Name => $Name,
            Version => $Version,
        );
        if (!$Package) {
            return $Self->{LayoutObject}->ErrorScreen(Message => 'No such package!');
        }
        else {
            my %Structur = $Self->{PackageObject}->PackageParse(
                String => $Package,
            );
            my $File = $Self->{PackageObject}->PackageBuild(%Structur);
            return $Self->{LayoutObject}->Attachment(
                Content => $File,
                ContentType => 'plain/xml',
                Filename => "$Name-$Version-rebuild.opm",
                Type => 'attachment',
            );
        }
    }
    # ------------------------------------------------------------ #
    # overview
    # ------------------------------------------------------------ #
    else {
        my %Frontend = ();
        my %NeedReinstall = ();
        my %List = %{$Self->{ConfigObject}->Get('Package::RepositoryList')};
        $Frontend{'SourceList'} = $Self->{LayoutObject}->OptionStrgHashRef(
            Data => {
                %List,
                $Self->{PackageObject}->PackageOnlineRepositories(),
            },
            Name => 'Source',
            SelectedID => $Source,
        );
        $Self->{LayoutObject}->Block(
            Name => 'Overview',
            Data => { %Param, %Frontend, },
        );
        if ($Source) {
            my @List = $Self->{PackageObject}->PackageOnlineList(URL => $Source, Lang => $Self->{UserLanguage} || $Self->{ConfigObject}->Get('DefaultLanguage'));
            foreach my $Data (@List) {
                $Self->{LayoutObject}->Block(
                    Name => 'ShowRemotePackage',
                    Data => {
                        %{$Data},
                        Source => $Source,
                    },
                );
                if ($Data->{Upgrade}) {
                    $Self->{LayoutObject}->Block(
                        Name => 'ShowRemotePackageUpgrade',
                        Data => {
                            %{$Data},
                            Source => $Source,
                        },
                    );
                }
                elsif (!$Data->{Installed}) {
                    $Self->{LayoutObject}->Block(
                        Name => 'ShowRemotePackageInstall',
                        Data => {
                            %{$Data},
                            Source => $Source,
                        },
                    );
                }
            }
        }

        foreach my $Package ($Self->{PackageObject}->RepositoryList()) {
            my $Description = '';
            foreach my $Tag (@{$Package->{Description}}) {
                # just use start tags
                if ($Tag->{TagType} ne 'Start') {
                    next;
                }
                if ($Tag->{Tag} eq 'Description') {
                    if (!$Description) {
                        $Description = $Tag->{Content};
                    }
                    if (($Self->{UserLanguage} && $Tag->{Lang} eq $Self->{UserLanguage}) || (!$Self->{UserLanguage} && $Tag->{Lang} eq $Self->{ConfigObject}->Get('DefaultLanguage'))) {
                        $Description = $Tag->{Content};
                    }
                }
            }

            $Self->{LayoutObject}->Block(
                Name => 'ShowLocalPackage',
                Data => { %{$Package},
                    Name => $Package->{Name}->{Content},
                    Version => $Package->{Version}->{Content},
                    Vendor => $Package->{Vendor}->{Content},
                    URL => $Package->{URL}->{Content},
                    Description => $Description,
                },
            );
            if ($Package->{Status} eq 'installed') {
                $Self->{LayoutObject}->Block(
                    Name => 'ShowLocalPackageUninstall',
                    Data => { %{$Package},
                        Name => $Package->{Name}->{Content},
                        Version => $Package->{Version}->{Content},
                        Vendor => $Package->{Vendor}->{Content},
                        URL => $Package->{URL}->{Content},
                    },
                );
                if (!$Self->{PackageObject}->DeployCheck(
                    Name => $Package->{Name}->{Content},
                    Version => $Package->{Version}->{Content})) {
                    $NeedReinstall{$Package->{Name}->{Content}} = $Package->{Version}->{Content};
                    $Self->{LayoutObject}->Block(
                        Name => 'ShowLocalPackageReinstall',
                        Data => { %{$Package},
                            Name => $Package->{Name}->{Content},
                            Version => $Package->{Version}->{Content},
                            Vendor => $Package->{Vendor}->{Content},
                            URL => $Package->{URL}->{Content},
                        },
                    );
                }
            }
            else {
                $Self->{LayoutObject}->Block(
                    Name => 'ShowLocalPackageInstall',
                    Data => { %{$Package},
                        Name => $Package->{Name}->{Content},
                        Version => $Package->{Version}->{Content},
                        Vendor => $Package->{Vendor}->{Content},
                        URL => $Package->{URL}->{Content},
                    },
                );
            }
        }
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        foreach (sort keys %NeedReinstall) {
            $Output .= $Self->{LayoutObject}->Notify(
                Priority => 'Error',
                Data => "$_ $NeedReinstall{$_}".' - $Text{"Package not correctly deployed, you need to deploy it again!"}',
                Link => '$Env{"Baselink"}Action=$Env{"Action"}&Subaction=Reinstall&Name='.$_.'&Version='.$NeedReinstall{$_},
            );
        }
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminPackageManager',
            Data => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}
# --
1;
