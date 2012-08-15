# --
# QueueMove.t - QueueMove testscript
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: QueueMove.t,v 1.1 2012-08-15 16:39:37 cr Exp $
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
use Kernel::System::UnitTest::Helper;
use Kernel::System::Ticket;
use Kernel::System::User;
use Kernel::System::ProcessManagement::TransitionAction::QueueMove;

use Kernel::System::VariableCheck qw(:all);

# create local objects
my $HelperObject = Kernel::System::UnitTest::Helper->new(
    %{$Self},
    UnitTestObject             => $Self,
    RestoreSystemConfiguration => 0,
);
my $ConfigObject = Kernel::Config->new();
my $TicketObject = Kernel::System::Ticket->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);
my $ModuleObject = Kernel::System::ProcessManagement::TransitionAction::QueueMove->new(
    %{$Self},
    ConfigObject => $ConfigObject,
    TicketObject => $TicketObject,
);

# define variables
my $UserID     = 1;
my $ModuleName = 'QueueMove';
my $RandomID   = $HelperObject->GetRandomID();

# ----------------------------------------
# Create a test ticket
# ----------------------------------------
my $TicketID = $TicketObject->TicketCreate(
    TN            => undef,
    Title         => 'test',
    QueueID       => 1,
    Lock          => 'unlock',
    Priority      => '3 normal',
    StateID       => 1,
    TypeID        => 1,
    Service       => undef,
    SLA           => undef,
    CustomerID    => undef,
    CustomerUser  => undef,
    OwnerID       => 1,
    ResponsibleID => 1,
    ArchiveFlag   => undef,
    UserID        => $UserID,
);

# sanity checks
$Self->True(
    $TicketID,
    "TicketCreate() - $TicketID",
);

my %Ticket = $TicketObject->TicketGet(
    TicketID => $TicketID,
    UserID   => $UserID,
);
$Self->True(
    IsHashRefWithData( \%Ticket ),
    "TicketGet() - Get Ticket with ID $TicketID.",
);

# ----------------------------------------

# ---
# Run() tests
# ---
my @Tests = (
    {
        Name    => 'No Params',
        Config  => undef,
        Success => 0,
    },
    {
        Name   => 'No UserID',
        Config => {
            UserID => undef,
            Ticket => \%Ticket,
            Config => {
                CustomerID => 'test',
            },
        },
        Success => 0,
    },
    {
        Name   => 'No Ticket',
        Config => {
            UserID => $UserID,
            Ticket => undef,
            Config => {
                CustomerID => 'test',
            },
        },
        Success => 0,
    },
    {
        Name   => 'No Config',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {},
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Config',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                NoAgentNotify => 0,
            },
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Ticket Format',
        Config => {
            UserID => $UserID,
            Ticket => 1,
            Config => {
                TargetQueue => 'Raw',
            },
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Config Format',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => 1,
        },
        Success => 0,
    },
    {
        Name   => 'Wrong Queue',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                TargetQueue => 'NotExisting' . $RandomID,
            },
        },
        Success => 0,
    },
    {
        Name   => 'Wrong QueueID',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                TargetQueueID => 'NotExisting' . $RandomID,
            },
        },
        Success => 0,
    },
    {
        Name   => 'Correct Queue Raw',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                TargetQueue => 'Raw',
            },
        },
        Success => 1,
    },
    {
        Name   => 'Correct Queue Junk',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                TargetQueue => 'Junk',
            },
        },
        Success => 1,
    },
    {
        Name   => 'Correct QueueID Raw',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                TargetQueueID => 2,
            },
        },
        Success => 1,
    },
    {
        Name   => 'Correct QueueID Junk',
        Config => {
            UserID => $UserID,
            Ticket => \%Ticket,
            Config => {
                TargetQueueID => 3,
            },
        },
        Success => 1,
    },
);

for my $Test (@Tests) {
    my $Success = $ModuleObject->Run( %{ $Test->{Config} } );

    if ( $Test->{Success} ) {

        $Self->True(
            $Success,
            "$ModuleName Run() - Test:'$Test->{Name}' | excecuted with True"
        );

        # get ticket
        %Ticket = $TicketObject->TicketGet(
            TicketID => $TicketID,
            UserID   => 1,
        );

        ATTRIBUTE:
        for my $Attribute ( keys %{ $Test->{Config}->{Config} } ) {

            # set attributes to easy compare
            $Ticket{TargetQueue}   = $Ticket{Queue}   || undef;
            $Ticket{TargetQueueID} = $Ticket{QueueID} || undef;

            $Self->True(
                $Ticket{$Attribute},
                "$ModuleName - Test:'$Test->{Name}' | Attribute: $Attribute for TicketID:"
                    . " $TicketID exists with True",
            );

            $Self->Is(
                $Ticket{$Attribute},
                $Test->{Config}->{Config}->{$Attribute},
                "$ModuleName - Test:'$Test->{Name}' | Attribute: $Attribute for TicketID:"
                    . " $TicketID match expected value",
            );
        }
    }
    else {
        $Self->False(
            $Success,
            "$ModuleName Run() - Test:'$Test->{Name}' | excecuted with False"
        );
    }
}

#-----------------------------------------
# Destructors to remove our Testitems
# ----------------------------------------

# Ticket
my $Delete = $TicketObject->TicketDelete(
    TicketID => $TicketID,
    UserID   => 1,
);
$Self->True(
    $Delete,
    "TicketDelete() - $TicketID",
);

# ----------------------------------------

1;
