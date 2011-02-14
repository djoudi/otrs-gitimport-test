# --
# Kernel/Scheduler.pm - The otrs Scheduler Daemon
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: Scheduler.pm,v 1.11 2011-02-14 19:31:14 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Scheduler;

use strict;
use warnings;

use Kernel::System::VariableCheck qw(IsHashRefWithData IsStringWithData);
use Kernel::System::Scheduler::TaskManager;
use Kernel::Scheduler::TaskHandler;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.11 $) [1];

=head1 NAME

Kernel::Scheduler - otrs Scheduler lib

=head1 SYNOPSIS

All scheduler functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create an object

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Main;
    use Kernel::System::DB;
    use Kernel::Scheduler;

    my $ConfigObject = Kernel::Config->new();
    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
    );
    my $DBObject = Kernel::System::DB->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );
    my $SchedulerObject = Kernel::Scheduler->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
        DBObject     => $DBObject,
        MainObject   => $MainObject,
        EncodeObject => $EncodeObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Object (qw(MainObject ConfigObject LogObject DBObject EncodeObject)) {
        $Self->{$Object} = $Param{$Object} || die "Got no $Object!";
    }

    # create aditional objects
    $Self->{TaskManagerObject} = Kernel::System::Scheduler::TaskManager->new( %{$Self} );

    return $Self;
}

=item Run()

Find and dispatch a Task

    my $Result = $SchedulerObject->Run();

    $Result = 1                   # 0 or 1;

=cut

sub Run {
    my ( $Self, %Param ) = @_;

    # get all tasks
    my @TaskList = $Self->{TaskManagerObject}->TaskList();

    # if there are no task to execute return succesfull
    return 1 if !@TaskList;

    # get the first task details
    my %FirstTask = %{ $TaskList[0] };
    if ( !%FirstTask ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Got invalid task list!',
        );

        # retrun failure if can't get the first task
        return;
    }

    # delete task if no type is set
    if ( !$FirstTask{Type} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Task $FirstTask{ID} will be deleted bacause type is not set!",
        );
        $Self->{TaskManagerObject}->TaskDelete( ID => $FirstTask{ID} );

        # retrun failure if no task has no type
        return;
    }

    # get task data
    my %TaskData = $Self->{TaskManagerObject}->TaskGet( ID => $FirstTask{ID} );
    if ( !%TaskData ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Got invalid task data!',
        );

        # return failure if cant get task data
        return;
    }

    # create task handler object
    my $TaskHandlerObject = eval {
        Kernel::Scheduler::TaskHandler->new(
            %{$Self},
            Type => $FirstTask{Type},
        );
    };

    # check if Task Handler object was created
    if ( !$TaskHandlerObject ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Can't create task handler object!",
        );

        $Self->{TaskManagerObject}->TaskDelete( ID => $FirstTask{ID} );

        # retrun failure if can't create task handler
        return;
    }

    # call run method on task handler object
    my $TaskResult = $TaskHandlerObject->Run( Data => $TaskData{Data} );

    # return task result (successful or failure)
    return if !$Self->{TaskManagerObject}->TaskDelete( ID => $FirstTask{ID} );

    # otherwise retrun failure
    return;
}

=item TaskRegister()

    my $TaskID = $SchadulerObject->TaskRegister(
        Type => 'GenericInterface'
        Data     => {                               # task data
            ...
        },
    );

=cut

sub TaskRegister {
    my ( $Self, %Param ) = @_;

    # check task type
    if ( !IsStringWithData( $Param{Type} ) ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Got no Task Type with content!',
        );

        # retrun failure if no task type is sent
        return;
    }

    # check if task data is undefined
    if ( !defined $Param{Data} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Got undefined Task Data!',
        );

        # retrun error if task data is undefined
        return;
    }

    # register task
    my $TaskID = $Self->{TaskManagerObject}->TaskAdd(
        Type => $Param{Type},
        Data => $Param{Data},
    );

    # check if task was registered
    if ( !$TaskID ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Task could not be registered',
        );

        # retrun failure if task registration fails
        return;
    }

    # otherwise return the task ID
    return $TaskID;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut

=head1 VERSION

$Revision: 1.11 $ $Date: 2011-02-14 19:31:14 $

=cut
