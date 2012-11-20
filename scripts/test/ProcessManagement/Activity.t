# --
# Activity.t - Activity module testscript
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: Activity.t,v 1.4 2012-11-20 16:10:47 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use vars (qw($Self));
use Kernel::System::VariableCheck qw(:all);

use utf8;
use Kernel::Config;
use Kernel::System::ProcessManagement::Activity;
use Kernel::System::UnitTest::Helper;

# create local objects
my $HelperObject = Kernel::System::UnitTest::Helper->new(
    %{$Self},
    UnitTestObject             => $Self,
    RestoreSystemConfiguration => 0,
);

my $ConfigObject = Kernel::Config->new();

my $ActivityObject = Kernel::System::ProcessManagement::Activity->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);

# define needed variables
my $RandomID = $HelperObject->GetRandomID();

# ActivityGet() tests
my @Tests = (
    {
        Name       => 'No Interface',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
            'AD-Test2-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
        },
        Config => {
            ActivityEntityID => 'A1' . $RandomID,
        },
        Success => 0,
    },
    {
        Name       => 'Agent Interface wrong activity dialog',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => ['AgentInterface'],
            },
            'AD-Test2-' . $RandomID => {
                Interface => ['CustomerInterface'],
            },
        },
        Config => {
            Interface        => 'AgentInterface',
            ActivityEntityID => 'A1' . $RandomID,
        },
        ExpectedActivityDialogs => {
            1 => 'incorrect',
        },
        Success => 0,
    },
    {
        Name       => 'Agent Interface',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => ['AgentInterface'],
            },
            'AD-Test2-' . $RandomID => {
                Interface => ['CustomerInterface'],
            },
        },
        Config => {
            Interface        => 'AgentInterface',
            ActivityEntityID => 'A1' . $RandomID,
        },
        ExpectedActivityDialogs => {
            1 => 'AD-Test-' . $RandomID,
        },
        Success => 1,
    },
    {
        Name       => 'Customer Interface',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => ['AgentInterface'],
            },
            'AD-Test2-' . $RandomID => {
                Interface => ['CustomerInterface'],
            },
        },
        Config => {
            Interface        => 'CustomerInterface',
            ActivityEntityID => 'A1' . $RandomID,
        },
        ExpectedActivityDialogs => {
            2 => {
                ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                Overwrite              => {
                    FieldOrder => [ 1, 2, 4, 3 ],
                },
            },
        },
        Success => 1,
    },
    {
        Name       => 'Agent and Customer Interface',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => ['AgentInterface'],
            },
            'AD-Test2-' . $RandomID => {
                Interface => ['CustomerInterface'],
            },
        },
        Config => {
            Interface => [ 'AgentInterface', 'CustomerInterface' ],
            ActivityEntityID => 'A1' . $RandomID,
        },
        ExpectedActivityDialogs => {
            1 => 'AD-Test-' . $RandomID,
            2 => {
                ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                Overwrite              => {
                    FieldOrder => [ 1, 2, 4, 3 ],
                },
            },
        },
        Success => 1,
    },
    {
        Name       => 'No Parameters',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
            'AD-Test2-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
        },
        Config => {
            Interface => 'all',
        },
        Success => 0,
    },
    {
        Name       => 'No ActivityEntityID',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
            'AD-Test2-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
        },
        Config => {
            Interface => 'all',
            Other     => 1,
        },
        Success => 0,
    },
    {
        Name       => 'Wrong ActivityEntityID',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
            'AD-Test2-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
        },
        Config => {
            Interface        => 'all',
            ActivityEntityID => 'Notexisiting' . $RandomID,
        },
        Success => 0,
    },
    {
        Name            => 'No Activities Configuration',
        Activities      => {},
        ActivityDialogs => {},
        Config          => {
            Interface        => 'all',
            ActivityEntityID => 'Notexisiting' . $RandomID,
        },
        Success => 0,
    },
    {
        Name       => 'Correct ASCII',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
            'AD-Test2-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
        },
        Config => {
            Interface        => 'all',
            ActivityEntityID => 'A1' . $RandomID,
        },
        Success => 1,
    },
    {
        Name       => 'Correct UTF8',
        Activities => {
            'A1' . $RandomID => {
                Name =>
                    'äöüßÄÖÜ€исáéíúóúÁÉÍÓÚñÑ-カスタ-用迎使用-Язык',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        ActivityDialogs => {
            'AD-Test-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
            'AD-Test2-' . $RandomID => {
                Interface => [ 'AgentInterface', 'CustomerInterface' ],
            },
        },
        Config => {
            Interface        => 'all',
            ActivityEntityID => 'A1' . $RandomID,
        },
        Success => 1,
    },
);

for my $Test (@Tests) {

    # set activity config
    $ConfigObject->Set(
        Key   => 'Process::Activity',
        Value => $Test->{Activities},
    );

    # set activity dialog config
    $ConfigObject->Set(
        Key   => 'Process::ActivityDialog',
        Value => $Test->{ActivityDialogs},
    );

    # get activity described in test
    my $Activity = $ActivityObject->ActivityGet( %{ $Test->{Config} } );

    if ( $Test->{Success} || $Test->{ExpectedActivityDialogs} ) {
        $Self->IsNot(
            $Activity,
            undef,
            "ActivityGet() Test:'$Test->{Name}' | should not be undef"
        );
        $Self->Is(
            ref $Activity,
            'HASH',
            "ActivityGet() Test:'$Test->{Name}' | should be a HASH"
        );
        $Self->IsDeeply(
            $Activity,
            $Test->{Activities}->{ $Test->{Config}->{ActivityEntityID} },
            "ActivityGet() Test:'$Test->{Name}' | comparison"
        );

        # test matching activity dialogs
        if ( $Test->{ExpectedActivityDialogs} ) {
            if ( $Test->{Success} ) {
                $Self->IsDeeply(
                    $Activity->{ActivityDialog},
                    $Test->{ExpectedActivityDialogs},
                    "ActivityGet() Test:'$Test->{Name}' | activity dialog comparison"
                );
            }
            else {
                $Self->IsNotDeeply(
                    $Activity->{ActivityDialog},
                    $Test->{ExpectedActivityDialogs},
                    "ActivityGet() Test:'$Test->{Name}' | activity dialog comparison"
                );
            }
        }
    }
    else {
        $Self->Is(
            $Activity,
            undef,
            "ActivityGet() Test:'$Test->{Name}' | should be undef"
        );
    }
}

# ActivityList() tests
@Tests = (
    {
        Name     => 'No Activies',
        Activies => {},
        Success  => 0,
    },
    {
        Name       => 'Single ASCII',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        Success => 1,
    },
    {
        Name       => 'Multiple ASCII',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Activity 1',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
            'A2' . $RandomID => {
                Name           => 'Activity 2',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        Success => 1,
    },
    {
        Name       => 'Multiple UTF8',
        Activities => {
            'A1' . $RandomID => {
                Name           => 'Latin-äöüßÄÖÜ€исáéíúóúÁÉÍÓÚñÑ',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
            'A2' . $RandomID => {
                Name           => 'Japanese-カスタ',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
            'A3' . $RandomID => {
                Name           => 'ChineseMandarin-用迎使用',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
            'A4' . $RandomID => {
                Name           => 'Cyrilic-Язык',
                CreateTime     => '08-02-2012 13:37:00',
                CreateBy       => '2',
                ChangeTime     => '09-02-2012 13:37:00',
                ChangeBy       => '3',
                ActivityDialog => {
                    1 => 'AD-Test-' . $RandomID,
                    2 => {
                        ActivityDialogEntityID => 'AD-Test2-' . $RandomID,
                        Overwrite              => {
                            FieldOrder => [ 1, 2, 4, 3 ],
                        },
                    },
                },
            },
        },
        Success => 1,
    },
);

for my $Test (@Tests) {

    # set activity config
    $ConfigObject->Set(
        Key   => 'Process::Activity',
        Value => $Test->{Activities},
    );

    # list activities
    my $ActivityList = $ActivityObject->ActivityList();

    if ( $Test->{Success} ) {
        $Self->IsNot(
            $ActivityList,
            undef,
            "ActivityList() Test:'$Test->{Name}' | should not be undef"
        );
        $Self->Is(
            ref $ActivityList,
            'HASH',
            "ActivityList() Test:'$Test->{Name}' | should be a HASH"
        );

        # create the expected acitivity list manually
        my %ExpectedActivities
            = map { $_ => $Test->{Activities}->{$_}->{Name} } keys %{ $Test->{Activities} };

        $Self->IsDeeply(
            $ActivityList,
            \%ExpectedActivities,
            "ActivityList() Test:'$Test->{Name}' | comparison"
        );
    }
    else {
        $Self->Is(
            $ActivityList,
            undef,
            "ActivityList() Test:'$Test->{Name}' | should be undef"
        );
    }
}

1;
