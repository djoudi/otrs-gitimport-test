# --
# GenericInterface.t - Generic Interface Scheduler Task Handler Backend tests
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: GenericInterface.t,v 1.3 2011-02-16 19:34:48 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.
# --

use strict;
use warnings;
use vars (qw($Self));

use Kernel::System::GenericInterface::Webservice;
use Kernel::GenericInterface::Requester;
use Kernel::System::UnitTest::Helper;
use Kernel::Scheduler::TaskHandler;

my $HelperObject = Kernel::System::UnitTest::Helper->new(
    %$Self,
    UnitTestObject => $Self,
);

my $WebserviceObject  = Kernel::System::GenericInterface::Webservice->new( %{$Self} );
my $RequesterObject   = Kernel::GenericInterface::Requester->new( %{$Self} );
my $TaskHandlerObject = Kernel::Scheduler::TaskHandler->new(
    %{$Self},
    TaskHandlerType => 'GenericInterface',
);

my $RandomID = $HelperObject->GetRandomID();

# webservice config
my $WebserviceConfig = {
    Debugger => {
        DebugThreshold => 'debug',
        TestMode       => 1,
    },
    Requester => {
        Transport => {
            Type   => 'HTTP::Test',
            Config => {
                Fail => 0,
            },
        },
        Invoker => {
            test_operation => {
                Type => 'Test::TestSimple',
            },
        },
    },
};

# add webserver config
my $WebserviceID = $WebserviceObject->WebserviceAdd(
    Config  => $WebserviceConfig,
    Name    => "GenericInterface Scheduler Task Manager Backend Test $RandomID",
    ValidID => 1,
    UserID  => 1,
);

$Self->True(
    $WebserviceID,
    "WebserviceAdd()",
);

# task config
my @TaskList = (
    {
        Name         => 'Normal',
        WebserviceID => $WebserviceID,
        Invoker      => 'test_operation',
        Data         => {
            var1 => 'a',
        },
        Result => 1,
    },
    {
        Name         => 'Empty Data',
        WebserviceID => $WebserviceID,
        Invoker      => 'test_operation',
        Data         => {
        },
        Result => undef,
    },
    {
        Name         => 'Empty Invoker',
        WebserviceID => $WebserviceID,
        Invoker      => '',
        Data         => {
            var1 => 'a',
        },
        Result => undef,
    },
    {
        Name         => 'No WebService',
        WebserviceID => 0,
        Invoker      => 'test_operation',
        Data         => {
            var1 => 'a',
        },
        Result => undef,
    },
    {
        Name         => 'Undefined Data',
        WebserviceID => $WebserviceID,
        Invoker      => 'test_operation',
        Data         => undef,
        Result       => undef,
    },
    {
        Name         => 'Undefined Invoker',
        WebserviceID => $WebserviceID,
        Invoker      => undef,
        Data         => {
            var1 => 'a',
        },
        Result => undef,
    },
    {
        Name         => 'Undefined WebService',
        WebserviceID => undef,
        Invoker      => 'test_operation',
        Data         => {
            var1 => 'a',
        },
        Result => undef,
    },
    {
        Name         => 'Wrong invoker',
        WebserviceID => $WebserviceID,
        Invoker      => 'no_configured_invoker',
        Data         => {
            var1 => 'a',
        },
        Result => undef,
    },
    {
        Name         => 'Wrong Service ID',
        WebserviceID => 9999999,
        Invoker      => 'test_operation',
        Data         => {
            var1 => 'a',
        },
        Result => undef,
    },
    {
        Name   => 'Empty task data',
        Result => undef,
    },
);

for my $TaskData (@TaskList) {

    # Result task
    my $Result = $TaskHandlerObject->Run( Data => $TaskData );

    $Self->Is(
        $Result,
        $TaskData->{Result},
        "$TaskData->{Name} execution result",
    );
}

# delete webserice config
my $Success = $WebserviceObject->WebserviceDelete(
    ID     => $WebserviceID,
    UserID => 1,
);

$Self->True(
    $Success,
    "WebserviceDelete()",
);

1;
