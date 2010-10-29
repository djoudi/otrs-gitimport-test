# --
# Encode.t - Encode tests
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: Encode.t,v 1.7 2010-10-29 07:46:46 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use vars (qw($Self));

use Kernel::Config;
use Kernel::System::Encode;

# create local objects
my $ConfigObject = Kernel::Config->new();

my $EncodeObject = Kernel::System::Encode->new(
    ConfigObject => $ConfigObject,
);

# EncodeInternalUsed tests
my @Tests = (
    {
        Name    => 'EncodeInternalUsed()',
        Charset => 'UTF-8',
        Result  => 'utf-8',
    },
    {
        Name    => 'EncodeInternalUsed()',
        Charset => 'UTF8',
        Result  => 'utf-8',
    },
    {
        Name    => 'EncodeInternalUsed()',
        Charset => 'utF8',
        Result  => 'utf-8',
    },
);
for my $Test (@Tests) {
    $ConfigObject->Set(
        Key   => 'DefaultCharset',
        Value => $Test->{Charset},
    );
    my $Charset = $EncodeObject->EncodeInternalUsed();
    $Self->Is(
        $Charset,
        $Test->{Result},
        $Test->{Name} . " ($Test->{Charset})",
    );
}

# Convert tests
{
    use utf8;
    my @Tests = (
        {
            Name          => 'Convert()',
            Input         => 'abc123',
            Result        => 'abc123',
            InputCharset  => 'ascii',
            ResultCharset => 'utf8',
            UTF8          => 1,
        },
        {
            Name          => 'Convert()',
            Input         => 'abc123',
            Result        => 'abc123',
            InputCharset  => 'us-ascii',
            ResultCharset => 'utf8',
            UTF8          => 1,
        },
        {
            Name          => 'Convert()',
            Input         => 'abc123���',
            Result        => 'abc123���',
            InputCharset  => 'utf8',
            ResultCharset => 'utf8',
            UTF8          => 1,
        },
        {
            Name          => 'Convert()',
            Input         => 'abc123���',
            Result        => 'abc123���',
            InputCharset  => 'iso-8859-15',
            ResultCharset => 'utf8',
            UTF8          => 1,
        },
        {
            Name          => 'Convert()',
            Input         => 'abc123���',
            Result        => 'abc123���',
            InputCharset  => 'utf8',
            ResultCharset => 'utf-8',
            UTF8          => 1,
        },
        {
            Name          => 'Convert()',
            Input         => 'abc123���',
            Result        => 'abc123���',
            InputCharset  => 'utf8',
            ResultCharset => 'iso-8859-15',
            UTF8          => 1,
        },
        {
            Name          => 'Convert()',
            Input         => 'abc123���',
            Result        => 'abc123???',
            InputCharset  => 'utf8',
            ResultCharset => 'iso-8859-1',
            Force         => 1,
            UTF8          => '',
        },
    );
    for my $Test (@Tests) {
        my $Result = $EncodeObject->Convert(
            Text  => $Test->{Input},
            From  => $Test->{InputCharset},
            To    => $Test->{ResultCharset},
            Force => $Test->{Force},
        );
        my $IsUTF8 = Encode::is_utf8($Result);
        $Self->True(
            $IsUTF8 eq $Test->{UTF8},
            $Test->{Name} . " is_utf8",
        );
        $Self->True(
            $Result eq $Test->{Result},
            $Test->{Name},
        );
    }
}

1;
