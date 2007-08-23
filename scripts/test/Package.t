# --
# Package.t - Package tests
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: Package.t,v 1.6 2007-08-23 22:44:28 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

use Kernel::System::Package;

$Self->{PackageObject} = Kernel::System::Package->new(%{$Self});

my $String = '<?xml version="1.0" encoding="utf-8" ?>
<otrs_package version="1.0">
  <Name>Test</Name>
  <Version>0.0.1</Version>
  <Vendor>OTRS GmbH</Vendor>
  <URL>http://otrs.org/</URL>
  <License>GNU GENERAL PUBLIC LICENSE Version 2, June 1991</License>
  <ChangeLog>2005-11-10 New package (some test &lt; &gt; &amp;).</ChangeLog>
  <Description Lang="en">A test package (some test &lt; &gt; &amp;).</Description>
  <Description Lang="de">Ein Test Paket (some test &lt; &gt; &amp;).</Description>
  <Framework>2.2.x</Framework>
  <Framework>2.1.x</Framework>
  <Framework>2.0.x</Framework>
  <BuildDate>2005-11-10 21:17:16</BuildDate>
  <BuildHost>yourhost.example.com</BuildHost>
  <CodeInstall>
   # just a test &lt;some&gt; plus some &amp; text
  </CodeInstall>
  <DatabaseInstall>
    <TableCreate Name="test_package">
        <Column Name="name_a" Required="true" Type="INTEGER"/>
        <Column Name="name_b" Required="true" Size="60" Type="VARCHAR"/>
        <Column Name="name_c" Required="false" Size="60" Type="VARCHAR"/>
    </TableCreate>
    <Insert Table="test_package">
        <Data Key="name_a">1234</Data>
        <Data Key="name_b" Type="Quote">some text</Data>
        <Data Key="name_c" Type="Quote">some text &lt;more&gt;
          text &amp; text
        </Data>
    </Insert>
    <Insert Table="test_package">
        <Data Key="name_a">0</Data>
        <Data Key="name_b" Type="Quote">1</Data>
    </Insert>
  </DatabaseInstall>
  <DatabaseUninstall>
    <TableDrop Name="test_package"/>
  </DatabaseUninstall>
  <Filelist>
    <File Location="Test" Permission="644" Encode="Base64">aGVsbG8K</File>
  </Filelist>
</otrs_package>
';

my $RepositoryAdd = $Self->{PackageObject}->RepositoryAdd(
    String => $String,
);

$Self->True(
    $RepositoryAdd,
    'RepositoryAdd()',
);

my $PackageGet = $Self->{PackageObject}->RepositoryGet(
    Name => 'Test',
    Version => '0.0.1',
);

$Self->True(
    $String eq $PackageGet,
    'RepositoryGet()',
);

my $PackageRemove = $Self->{PackageObject}->RepositoryRemove(
    Name => 'Test',
    Version => '0.0.1',
);

$Self->True(
    $PackageRemove,
    'RepositoryRemove()',
);

my $PackageInstall = $Self->{PackageObject}->PackageInstall(
    String => $String,
);

$Self->True(
    $PackageInstall,
    'PackageInstall()',
);

my $DeployCheck = $Self->{PackageObject}->DeployCheck(
    Name => 'Test',
    Version => '0.0.1',
);

$Self->True(
    $DeployCheck,
    'DeployCheck()',
);

my %Structure = $Self->{PackageObject}->PackageParse(
    String => $String,
);

my $PackageBuild = $Self->{PackageObject}->PackageBuild(
    %Structure,
);

$Self->True(
    $PackageBuild,
    'PackageBuild()',
);

my $PackageUninstall = $Self->{PackageObject}->PackageUninstall(
    String => $String,
);

$Self->True(
    $PackageUninstall,
    'PackageUninstall()',
);

my $PackageInstall2 = $Self->{PackageObject}->PackageInstall(
    String => $PackageBuild,
);

$Self->True(
    $PackageInstall2,
    'PackageInstall() - 2',
);

my $DeployCheck2 = $Self->{PackageObject}->DeployCheck(
    Name => 'Test',
    Version => '0.0.1',
);

$Self->True(
    $DeployCheck2,
    'DeployCheck() - 2',
);

my $PackageUninstall2 = $Self->{PackageObject}->PackageUninstall(
    String => $PackageBuild,
);

$Self->True(
    $PackageUninstall2,
    'PackageUninstall() - 2',
);

1;
