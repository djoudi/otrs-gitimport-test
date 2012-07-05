# --
# Kernel/System/ProcessManagement/Process/State.pm - Process Management DB State backend
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: State.pm,v 1.1 2012-07-05 14:54:30 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::ProcessManagement::DB::Process::State;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.1 $) [1];

=head1 NAME

Kernel::System::ProcessManagement::DB::Process::State.pm

=head1 SYNOPSIS

Process Management DB State backend

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a State object

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::ProcessManagement::DB::Process::State;

    my $ConfigObject = Kernel::Config->new();
    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
    );
    my $StateObject = Kernel::System::ProcessManagement::DB::Process::State->new(
        ConfigObject        => $ConfigObject,
        EncodeObject        => $EncodeObject,
        LogObject           => $LogObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for my $Needed (qw(ConfigObject EncodeObject LogObject)) {
        die "Got no $Needed!" if !$Param{$Needed};

        $Self->{$Needed} = $Param{$Needed};
    }

    # create States list
    $Self->{StateList} = {
        1 => 'Active',
        2 => 'Inactive',
        3 => 'FadeAway',
    };

    return $Self;
}

=item StateList()

get a State list

    my $List = $StateObject->StateList(
        UserID => 123,
    );

    Returns:

    $List = {
        1 => 'Active',
        2 => 'Inactive',
        3 => 'FadeAway',
    }
=cut

sub StateList {
    my ( $Self, %Param ) = @_;

    # check needed
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need UserID!"
        );
        return;
    }

    return $Self->{StateList};
}

=item StateLookup()

get State name or State ID

    my $List = $StateObject->StateLookup(
        ID     => 1,            # ID or Name is required
        Name   => 'Active',
        UserID => 123,
    );

    Returns:

    $List = {
        1 => 'Active',
        2 => 'Inactive',
        3 => 'FadeAway',
    }
=cut

sub StateLookup {
    my ( $Self, %Param ) = @_;

    # check needed
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need UserID!"
        );
        return;
    }

    if ( !$Param{ID} && !$Param{Name} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "ID or Name is required!"
        );
        return;
    }

    my $Result;

    # return state name
    if ( $Param{ID} ) {
        $Result = $Self->{StateList}->{ $Param{ID} };
    }

    # return state ID
    else {
        my %ReversedStateList = reverse %{ $Self->{StateList} };
        $Result = $ReversedStateList{ $Param{Name} }
    }
    return $Result;
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

$Revision: 1.1 $ $Date: 2012-07-05 14:54:30 $

=cut
