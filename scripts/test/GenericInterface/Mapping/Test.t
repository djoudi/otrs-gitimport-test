# --
# Test.t - Mapping tests
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: Test.t,v 1.7 2011-02-15 15:57:37 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use vars (qw($Self));

# create needed objects
use Kernel::System::DB;
use Kernel::GenericInterface::Debugger;
use Kernel::GenericInterface::Mapping;
my %CommonObject = %{$Self};
$CommonObject{DBObject}       = Kernel::System::DB->new(%CommonObject);
$CommonObject{DebuggerObject} = Kernel::GenericInterface::Debugger->new(
    %CommonObject,
    DebuggerConfig => {
        DebugThreshold => 'debug',
        TestMode       => 1,
    },
    WebserviceID      => 1,
    CommunicationType => 'Provider',
);

# create a mapping instance
my $MappingObject = Kernel::GenericInterface::Mapping->new(
    %CommonObject,
    MappingConfig => {
        Type => 'Test',
    },
);
$Self->Is(
    ref $MappingObject,
    'Kernel::GenericInterface::Mapping',
    'MappingObject was correctly instantiated',
);

my @MappingTests = (
    {
        Name   => 'Test ToUpper',
        Config => { TestOption => 'ToUpper' },
        Data   => {
            one   => 'one',
            two   => 'two',
            three => 'three',
            four  => 'four',
            five  => 'five',
        },
        ResultData => {
            one   => 'ONE',
            two   => 'TWO',
            three => 'THREE',
            four  => 'FOUR',
            five  => 'FIVE',
        },
        ResultSuccess => 1,
    },
    {
        Name   => 'Test ToLower',
        Config => { TestOption => 'ToLower' },
        Data   => {
            one   => 'ONE',
            two   => 'TWO',
            three => 'THREE',
            four  => 'FOUR',
            five  => 'FIVE',
        },
        ResultData => {
            one   => 'one',
            two   => 'two',
            three => 'three',
            four  => 'four',
            five  => 'five',
        },
        ResultSuccess => 1,
    },
    {
        Name   => 'Test Empty',
        Config => { TestOption => 'Empty' },
        Data   => {
            one   => 'one',
            two   => 'two',
            three => 'three',
            four  => 'four',
            five  => 'five',
        },
        ResultData => {
            one   => '',
            two   => '',
            three => '',
            four  => '',
            five  => '',
        },
        ResultSuccess => 1,
    },
    {
        Name   => 'Test without TestOption',
        Config => { TestOption => '' },
        Data   => {
            one   => 'one',
            two   => 'two',
            three => 'three',
            four  => 'four',
            five  => 'five',
        },
        ResultData    => undef,
        ResultSuccess => 0,
    },
    {
        Name   => 'Test with unknown TestOption',
        Config => { TestOption => 'blah' },
        Data   => {
            one   => 'one',
            two   => 'two',
            three => 'three',
            four  => 'four',
            five  => 'five',
        },
        ResultData => {
            one   => 'one',
            two   => 'two',
            three => 'three',
            four  => 'four',
            five  => 'five',
        },
        ResultSuccess => 1,
    },
    {
        Name          => 'Test with wrong Data',
        Config        => { TestOption => 'no data' },
        Data          => {},
        ResultData    => undef,
        ResultSuccess => 0,
    },
    {
        Name          => 'Test with wrong TestOption',
        Config        => { TestOption => 7 },
        Data          => 'something for data',
        ResultData    => undef,
        ResultSuccess => 0,
    },
    {
        Name   => 'Test with a wrong TestOption',
        Config => { TestOption => 'ThisShouldBeAWrongTestOption' },
        Data   => {
            one   => 'one',
            two   => 'two',
            three => 'three',
            four  => 'four',
            five  => 'five',
        },
        ResultData => {
            one   => 'one',
            two   => 'two',
            three => 'three',
            four  => 'four',
            five  => 'five',
        },
        ResultSuccess => 1,
    },

);

for my $Test (@MappingTests) {
    $MappingObject->{MappingConfig}->{Config} = $Test->{Config};
    my $MappingResult = $MappingObject->Map(
        Data => $Test->{Data},
    );

    # check if function return correct status
    $Self->Is(
        $MappingResult->{Success},
        $Test->{ResultSuccess},
        $Test->{Name} . ' (Success).',
    );

    # check if function return correct data
    $Self->IsDeeply(
        $MappingResult->{Data},
        $Test->{ResultData},
        $Test->{Name} . ' (Data Structure).',
    );

    if ( !$Test->{ResultSuccess} ) {
        $Self->False(
            $MappingResult->{Success},
            $Test->{Name} . ' (Error Message: ' .
                $MappingResult->{ErrorMessage} . ')',
        );
    }
    else {
        $Self->Is(
            ref $MappingObject,
            'Kernel::GenericInterface::Mapping',
            $Test->{Name} . ' (Not Error Message).',
        );
    }
}

1;
