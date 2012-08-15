# --
# ValidateDemo.t - ValidateDemo testscript
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: ValidateDemo.t,v 1.1 2012-08-15 16:39:37 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use utf8;
use vars qw($Self);

use Kernel::Config;
use Kernel::System::ProcessManagement::TransitionValidation::ValidateDemo;

use Kernel::System::VariableCheck qw(:all);

my $ConfigObject = Kernel::Config->new();
my $ValidationObject
    = Kernel::System::ProcessManagement::TransitionValidation::ValidateDemo->new(
    %{$Self},
    ConfigObject => $ConfigObject,
    );

# Sanity check
$Self->Is(
    ref $ValidationObject,
    'Kernel::System::ProcessManagement::TransitionValidation::ValidateDemo',
    "ValidationObject created successfully",
);

my @Tests = (
    {
        Name    => '1 - No Params',
        Config  => undef,
        Success => 0,
    },
    {
        Name   => '2 - No Data',
        Config => {
            Data => undef,
        },
        Success => 0,
    },
    {
        Name   => '3 - No Queue',
        Config => {
            Data => {
                Queue => undef,
            },
        },
        Success => 0,
    },
    {
        Name   => '4 - Wrong Data Format',
        Config => {
            Data => 'Data',
        },
        Success => 0,
    },
    {
        Name   => '5 - Wrong Queue format',
        Config => {
            Data => {
                Queue => {
                    Name => 'Raw'
                },
            },
        },
        Success => 0,
    },
    {
        Name   => '6 - Empty Queue',
        Config => {
            Data => {
                Queue => '',
            },
        },
        Success => 0,
    },
    {
        Name   => '7 - Wromg Queue (Misc)',
        Config => {
            Data => {
                Queue => 'Misc',
            },
        },
        Success => 0,
    },
    {
        Name   => '8 - Correct Queue (Raw)',
        Config => {
            Data => {
                Queue => 'Raw',
            },
        },
        Success => 1,
    },
);

for my $Test (@Tests) {

    my $ValidateResult = $ValidationObject->Validate( %{ $Test->{Config} } );

    if ( $Test->{Success} ) {
        $Self->Is(
            $ValidateResult,
            1,
            "Validate() ValidationDemo for test $Test->{Name} should return 1",

        );
    }
    else {
        $Self->IsNot(
            $ValidateResult,
            1,
            "Validate() ValidationDemo for test $Test->{Name} should not return 1",

        );
    }
}

1;
