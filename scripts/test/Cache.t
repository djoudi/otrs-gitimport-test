# --
# Cache.t - Cache tests
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: Cache.t,v 1.6 2008-06-19 06:34:21 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

use utf8;
use Kernel::System::Cache;

$Self->{CacheObject} = Kernel::System::Cache->new( %{$Self} );

my $CacheSet = $Self->{CacheObject}->Set(
    Type  => 'CacheTest',
    Key   => 'Test',
    Value => '1234',
    TTL   => 24 * 60 * 60,
);
$Self->True(
    $CacheSet,
    '#1 CacheSet(), TTL 24*60*60',
);

my $CacheGet = $Self->{CacheObject}->Get(
    Type => 'CacheTest',
    Key  => 'Test',
);
$Self->Is(
    $CacheGet || '',
    '1234',
    '#1 CacheGet()',
);

# test charset specific situations
my $Charset = $Self->{ConfigObject}->Get('DefaultCharset');
if ( $Charset eq 'utf-8' ) {
    $CacheSet = $Self->{CacheObject}->Set(
        Type  => 'CacheTest',
        Key   => 'Test',
        Value => {
            Key1 => 'Value1',
            Key2 => 'Value2äöüß',
            Key3 => 'Value3',
            Key4 => [
                'äöüß',
                '123456789',
                'ÄÖÜß',
                {
                    KeyA  => 'ValueA',
                    KeyB  => 'ValueBäöüßタ',
                    KeyC  => 'ValueC',
                    Value => '9ßüß-カスタ1234',
                },
            ],
        },
        TTL => 24 * 60 * 60,
    );

    $Self->True(
        $CacheSet,
        '#2 CacheSet()',
    );

    $CacheGet = $Self->{CacheObject}->Get(
        Type => 'CacheTest',
        Key  => 'Test',
    );

    $Self->Is(
        $CacheGet->{Key2} || '',
        'Value2äöüß',
        '#2 CacheGet() - {Key2}',
    );
    $Self->True(
        Encode::is_utf8( $CacheGet->{Key2} ) || '',
        '#2 CacheGet() - {Key2} Encode::is_utf8',
    );
    $Self->Is(
        $CacheGet->{Key4}->[0] || '',
        'äöüß',
        '#2 CacheGet() - {Key4}->[0]',
    );
    $Self->True(
        Encode::is_utf8( $CacheGet->{Key4}->[0] ) || '',
        '#2 CacheGet() - {Key4}->[0] Encode::is_utf8',
    );
    $Self->Is(
        $CacheGet->{Key4}->[3]->{KeyA} || '',
        'ValueA',
        '#2 CacheGet() - {Key4}->[3]->{KeyA}',
    );
    $Self->Is(
        $CacheGet->{Key4}->[3]->{KeyB} || '',
        'ValueBäöüßタ',
        '#2 CacheGet() - {Key4}->[3]->{KeyB}',
    );
    $Self->True(
        Encode::is_utf8( $CacheGet->{Key4}->[3]->{KeyB} ) || '',
        '#2 CacheGet() - {Key4}->[3]->{KeyB} Encode::is_utf8',
    );

    $CacheSet = $Self->{CacheObject}->Set(
        Type  => 'CacheTest',
        Key   => 'Test',
        Value => 'ü',
        TTL   => 2,
    );

    $Self->True(
        $CacheSet,
        '#3 CacheSet(), TTL 2',
    );

    $CacheGet = $Self->{CacheObject}->Get(
        Type => 'CacheTest',
        Key  => 'Test',
    );

    $Self->Is(
        $CacheGet || '',
        'ü',
        '#3 CacheGet()',
    );

    $Self->True(
        Encode::is_utf8($CacheGet) || '',
        '#3 CacheGet() - Encode::is_utf8',
    );

    $CacheSet = $Self->{CacheObject}->Set(
        Type  => 'CacheTest',
        Key   => 'Test',
        Value => '9ßüß-カスタ1234',
        TTL   => 2,
    );

    $Self->True(
        $CacheSet,
        '#4 CacheSet(), TTL 2',
    );

    $CacheGet = $Self->{CacheObject}->Get(
        Type => 'CacheTest',
        Key  => 'Test',
    );

    $Self->Is(
        $CacheGet || '',
        '9ßüß-カスタ1234',
        '#4 CacheGet()',
    );
    $Self->True(
        Encode::is_utf8($CacheGet) || '',
        '#4 CacheGet() - Encode::is_utf8',
    );
    sleep 4;

    $CacheGet = $Self->{CacheObject}->Get(
        Type => 'CacheTest',
        Key  => 'Test',
    );

    $Self->True(
        !$CacheGet || '',
        '#4 CacheGet() - sleep6 - TTL of 5 expired',
    );
}
elsif ( $Charset eq 'iso-8859-1' || $Charset eq 'iso-8859-15' ) {
    no utf8;
    $CacheSet = $Self->{CacheObject}->Set(
        Type  => 'CacheTest',
        Key   => 'Test',
        Value => {
            Key1 => 'Value1',
            Key2 => 'Value2�������',
            Key3 => 'Value3',
            Key4 => [
                '�bel �berlegt',
                '123456789',
                '�rtlicher �rger',
                {
                    KeyA  => 'ValueA',
                    KeyB  => '�stetisches �',
                    KeyC  => 'ValueC',
                    Value => '�blicher �tzi',
                },
            ],
        },
        TTL => 24 * 60 * 60,
    );

    $Self->True(
        $CacheSet,
        '#2 CacheSet()',
    );

    $CacheGet = $Self->{CacheObject}->Get(
        Type => 'CacheTest',
        Key  => 'Test',
    );

    $Self->Is(
        $CacheGet->{Key2} || '',
        'Value2�������',
        '#2 CacheGet() - {Key2}',
    );
    $Self->True(
        !Encode::is_utf8( $CacheGet->{Key2} ) || '',
        '#2 CacheGet() - {Key2} Encode::is_utf8',
    );
    $Self->Is(
        $CacheGet->{Key4}->[0] || '',
        '�bel �berlegt',
        '#2 CacheGet() - {Key4}->[0]',
    );
    $Self->True(
        !Encode::is_utf8( $CacheGet->{Key4}->[0] ) || '',
        '#2 CacheGet() - {Key4}->[0] Encode::is_utf8',
    );
    $Self->Is(
        $CacheGet->{Key4}->[3]->{KeyA} || '',
        'ValueA',
        '#2 CacheGet() - {Key4}->[3]->{KeyA}',
    );
    $Self->Is(
        $CacheGet->{Key4}->[3]->{KeyB} || '',
        '�stetisches �',
        '#2 CacheGet() - {Key4}->[3]->{KeyB}',
    );
    $Self->True(
        !Encode::is_utf8( $CacheGet->{Key4}->[3]->{KeyB} ) || '',
        '#2 CacheGet() - {Key4}->[3]->{KeyB} Encode::is_utf8',
    );

    $CacheSet = $Self->{CacheObject}->Set(
        Type  => 'CacheTest',
        Key   => 'Test',
        Value => '������',
        TTL   => 2,
    );

    $Self->True(
        $CacheSet,
        '#3 CacheSet(), TTL 2',
    );

    $CacheGet = $Self->{CacheObject}->Get(
        Type => 'CacheTest',
        Key  => 'Test',
    );

    $Self->Is(
        $CacheGet || '',
        '������',
        '#3 CacheGet()',
    );

    $Self->True(
        !Encode::is_utf8($CacheGet) || '',
        '#3 CacheGet() - Encode::is_utf8',
    );

    $CacheSet = $Self->{CacheObject}->Set(
        Type  => 'CacheTest',
        Key   => 'Test',
        Value => '9�������',
        TTL   => 2,
    );

    $Self->True(
        $CacheSet,
        '#4 CacheSet(), TTL 2',
    );

    $CacheGet = $Self->{CacheObject}->Get(
        Type => 'CacheTest',
        Key  => 'Test',
    );

    $Self->Is(
        $CacheGet || '',
        '9�������',
        '#4 CacheGet()',
    );
    $Self->True(
        !Encode::is_utf8($CacheGet) || '',
        '#4 CacheGet() - Encode::is_utf8',
    );
    sleep 4;

    $CacheGet = $Self->{CacheObject}->Get(
        Type => 'CacheTest',
        Key  => 'Test',
    );

    $Self->True(
        !$CacheGet || '',
        '#4 CacheGet() - sleep6 - TTL of 5 expired',
    );
}

$CacheSet = $Self->{CacheObject}->Set(
    Type  => 'CacheTest',
    Key   => 'Test',
    Value => '123456',
    TTL   => 60 * 60,
);

$Self->True(
    $CacheSet,
    '#5 CacheSet()',
);

$CacheGet = $Self->{CacheObject}->Get(
    Type => 'CacheTest',
    Key  => 'Test',
);

$Self->Is(
    $CacheGet || '',
    '123456',
    '#5 CacheGet()',
);
my $CacheDelete = $Self->{CacheObject}->Delete(
    Type => 'CacheTest',
    Key  => 'Test',
);
$Self->True(
    $CacheDelete,
    '#5 CacheDelete()',
);

# A-z char type test
$CacheSet = $Self->{CacheObject}->Set(
    Type  => 'Value2�������',
    Key   => 'Test',
    Value => '1',
    TTL   => 60,
);
$Self->True(
    !$CacheSet || '',
    '#6 Set() - A-z type check',
);

$CacheDelete = $Self->{CacheObject}->Delete(
    Type => 'Value2�������',
    Key  => 'Test',
);
$Self->True(
    !$CacheDelete || 0,
    '#6 CacheDelete() - A-z type check',
);

# create new cache files
$CacheSet = $Self->{CacheObject}->Set(
    Type  => 'CacheTest',
    Key   => 'Test',
    Value => '1234',
    TTL   => 24 * 60 * 60,
);
$Self->True(
    $CacheSet,
    '#7 CacheSet(), TTL 24*60*60',
);

# check get
$CacheGet = $Self->{CacheObject}->Get(
    Type => 'CacheTest',
    Key  => 'Test',
);
$Self->Is(
    $CacheGet || '',
    '1234',
    '#7 CacheGet()',
);

# cleanup
my $CacheCleanUp = $Self->{CacheObject}->CleanUp();
$Self->True(
    $CacheCleanUp,
    '#7 CleanUp()',
);

# check get
$CacheGet = $Self->{CacheObject}->Get(
    Type => 'CacheTest',
    Key  => 'Test',
);
$Self->False(
    $CacheGet,
    '#7 CacheGet()',
);

1;
