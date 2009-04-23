# --
# scripts/test/Stats.t - stats module testscript
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: Stats.t,v 1.16.2.2 2009-04-23 14:54:23 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;

use Kernel::System::Stats;
use Kernel::System::Group;
use Kernel::System::User;
use Kernel::System::Main;
use Kernel::System::CSV;

# declare externally defined variables to avoid errors under 'use strict'
use vars qw( $Self );

$Self->{UserID}      = 1;
$Self->{GroupObject} = Kernel::System::Group->new( %{$Self} );
$Self->{UserObject}  = Kernel::System::User->new( %{$Self} );
$Self->{MainObject}  = Kernel::System::Main->new( %{$Self} );
$Self->{CSVObject}   = Kernel::System::CSV->new( %{$Self} );
$Self->{StatsObject} = Kernel::System::Stats->new( %{$Self} );

# try to get an invalid stat
my $StatInvalid = $Self->{StatsObject}->StatsGet(
    StatID => 1111,
);

$Self->False(
    $StatInvalid,
    'StatsGet() try to get a not exitsting stat',
);

$Self->False(
    $Self->{StatsObject}->StatsUpdate(
        StatID => '1111',
        Hash   => {
            Title       => 'TestTitle from UnitTest.pl',
            Description => 'some Description'
            }
    ),
    "StatsUpdate() try to update a invalid stat id (Ignore the Tracebacks on the top)",
);

# check the StatsAddfunction
my $StatID1 = $Self->{StatsObject}->StatsAdd();
my $StatID2 = $Self->{StatsObject}->StatsAdd();

# test 1
$Self->True(
    $StatID1 > 0,
    'StatsAdd() first StatID > 0',
);

# test 2
$Self->True(
    $StatID2 > 0,
    'StatsAdd() second StatID > 0',
);

# test 3
$Self->True(
    $StatID2 > $StatID1,
    'StatsAdd() first StatID < second StatID',
);

# test 4 - check the stats update function
$Self->True(
    $Self->{StatsObject}->StatsUpdate(
        StatID => $StatID1,
        Hash   => {
            Title        => 'TestTitle from UnitTest.pl',
            Description  => 'some Description',
            Object       => 'Ticket',
            Format       => 'CSV',
            ObjectModule => 'Kernel::System::Stats::Dynamic::Ticket',
            Permission   => '1',
            StatType     => 'dynamic',
            SumCol       => '1',
            SumRow       => '1',
            Valid        => '1',
            }
    ),
    "StatsUpdate() Update StatID1",
);

$Self->False(
    $Self->{StatsObject}->StatsUpdate(
        StatID => ( $StatID2 + 2 ),
        Hash   => {
            Title       => 'TestTitle from UnitTest.pl',
            Description => 'some Description'
            }
    ),
    "StatsUpdate() try to update a invalid stat id (Ignore the Tracebacks on the top)",
);

# check get function
my $Stat = $Self->{StatsObject}->StatsGet(
    StatID => $StatID1,
);

$Self->Is(
    $Stat->{Title},
    'TestTitle from UnitTest.pl',
    'StatsGet() check the Title'
);

# check completenesscheck
my @Notify = $Self->{StatsObject}->CompletenessCheck(
    StatData => $Stat,
    Section  => 'All',
);
$Self->Is(
    $Notify[0]{Priority},
    'Error',
    'CompletenessCheck() check the checkfunctions'
);

# check StatsList
my $ArrayRef = $Self->{StatsObject}->GetStatsList(
    OrderBy   => 'StatID',
    Direction => 'ASC',
);

my $Counter = 0;
for ( @{$ArrayRef} ) {
    if ( $_ eq $StatID1 || $_ eq $StatID2 ) {
        $Counter++;
    }
}

$Self->Is(
    $Counter,
    '2',
    'GetStatsList() check if StatID1 and StatID2 available in the statslist'
);

# check the available DynamicFiles
my $DynamicArrayRef = $Self->{StatsObject}->GetDynamicFiles();
$Self->True(
    $DynamicArrayRef,
    'GetDynamicFiles() check if dynamic files available',
);

# check the sumbuild function
my @StatArray = @{
    $Self->{StatsObject}->SumBuild(
        Array => [
            ['Title'],
            [ 'SomeText', 'Column1', 'Column2', 'Column3', 'Column4', 'Column5' ],
            [ 'Row1',     1,         1,         1,         1,         1 ],
            [ 'Row1',     2,         2,         2,         2,         2 ],
            [ 'Row1',     3,         3,         3,         3,         3 ],
        ],
        SumRow => 1,
        SumCol => 1,
        )
    };

my @SubStatArray = @{ $StatArray[-1] };
$Counter = $SubStatArray[-1];
$Self->Is(
    $Counter,
    '30',
    'GetStatsList() check if StatID1 and StatID2 available in the statslist'
);

# export StatID 1
my $ExportFile = $Self->{StatsObject}->Export( StatID => $StatID1 );
$Self->True(
    $ExportFile->{Content},
    'Export() check if Exportfile has a content',
);

# import the exportet stat
my $StatID3 = $Self->{StatsObject}->Import(
    Content => $ExportFile->{Content},
);
$Self->True(
    $StatID3,
    'Import() is StatID3 true',
);

# check the imported stat
my $Stat3 = $Self->{StatsObject}->StatsGet(
    StatID => $StatID3,
);
$Self->Is(
    $Stat3->{Title},
    'TestTitle from UnitTest.pl',
    'StatsGet() check importet stat'
);

# check delete stat function
$Self->True(
    $Self->{StatsObject}->StatsDelete( StatID => $StatID1 ),
    'StatsDelete() delete StatID1',
);
$Self->True(
    $Self->{StatsObject}->StatsDelete( StatID => $StatID2 ),
    'StatsDelete() delete StatID2',
);
$Self->True(
    $Self->{StatsObject}->StatsDelete( StatID => $StatID3 ),
    'StatsDelete() delete StatID3',
);

# ---
# import a Stat and export it - then check if it is the same string
# ---

# load example file
my $Path = $Self->{ConfigObject}->Get('Home') . '/scripts/test/sample/Stats.TicketOverview.de.xml';
my $StatID        = 0;
my $ExportContent = {};
my $Filehandle;
if ( !open $Filehandle, '<', $Path ) {
    $Self->True(
        0,
        'Get the file which should be imported',
    );
}

my @Lines = <$Filehandle>;
my $ImportContent = join '', @Lines;

close $Filehandle;

$StatID = $Self->{StatsObject}->Import(
    Content => $ImportContent,
);

$ExportContent = $Self->{StatsObject}->Export( StatID => $StatID );

# the following line are because of different spelling 'ISO-8859' or 'iso-8859'
# but this is no solution for the problem if one string is iso and the other utf!
$ImportContent =~ s/^<\?xml.*?>.*?<otrs_stats/<otrs_stats/ms;
$ExportContent->{Content} =~ s/^<\?xml.*?>.*?<otrs_stats/<otrs_stats/ms;
$Self->Is(
    $ImportContent,
    $ExportContent->{Content},
    "Export-Importcheck - check if import file content equal export file content.\n Be careful, if it gives errors if you run OTRS with default charset uft-8,\n because the examplefile is iso-8859-1, but at my test there a no problems to compare a utf-8 string with an iso string?!\n"
);

# ---
# try to use the mkStats.pl
# ---

# check the imported stat
my $Stat4 = $Self->{StatsObject}->StatsGet(
    StatID => $StatID,
);

# get OTRS home
my $Home = $Self->{ConfigObject}->Get('Home');
my $Perl = 'perl';

# check if perl is available
if ( !qx(perl -v) ) {
    if ( $^O =~ m{ win }smxi ) {
        $Perl = $Home;
        $Perl =~ s{OTRS \/? $}{}smx;
        $Perl .= 'StrawberryPerl\perl\bin\perl.exe'
    }
    else {
        $Self->True(
            0,
            "mkStats.pl - can't call perl via command line.\n",
        );
    }
}

my $Command = "$Perl $Home/bin/mkStats.pl -n $Stat4->{StatNumber} -o $Home/var/tmp/";

if ( open my $Filehandle, '-|', $Command ) {
    @Lines = <$Filehandle>;
    close $Filehandle;

    for my $Line (@Lines) {
        if ( $Line =~ /\/\/(.+?csv)\./ ) {
            unlink "$Home/var/tmp/$1";
        }
    }

    $Self->True(
        ( $Lines[0] && !$Lines[1] && $Lines[0] =~ /^NOTICE:/ ),
        "mkStats.pl - Simple mkStats.pl check (check the program message)(Command: $Command ; OS: $^O )\n",
    );
}
else {
    $Self->True(
        0,
        "mkStats.pl - Simple mkStats.pl check (open the file).\n",
    );
}

# delete the test stats

$Self->True(
    $Self->{StatsObject}->StatsDelete( StatID => $StatID ),
    'StatsDelete() delete import stat',
);

# check the graph GD functionality
my $HeadArrayRef = [ 'State', 'Administration', 'Alarm', 'Sum' ];
my $StatsArrayRef = [
    [ 'closed successful',   7,  2, 4,  13 ],
    [ 'closed unsuccessful', 6,  3, 9,  18 ],
    [ 'merged',              1,  0, 3,  4 ],
    [ 'Sum',                 14, 5, 16, 35 ],
];

my $Graph = $Self->{StatsObject}->GenerateGraph(
    Array        => $StatsArrayRef,
    GraphSize    => '800x600',
    HeadArrayRef => $HeadArrayRef,
    Title        => 'some text',
    Format       => 'GD::Graph::lines',
);

$Self->True(
    $Graph,
    'GenerateGraph() make a diagram',
);

# try the clean up function
my $Result = $Self->{StatsObject}->StatsCleanUp();
$Self->True(
    $Result,
    'StatsCleanUp() - clean up stats',
);

1;
