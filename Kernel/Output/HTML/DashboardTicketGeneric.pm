# --
# Kernel/Output/HTML/DashboardTicketGeneric.pm
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: DashboardTicketGeneric.pm,v 1.12 2009-07-13 06:09:02 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::DashboardTicketGeneric;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.12 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # get needed objects
    for (
        qw(Config Name ConfigObject LogObject DBObject LayoutObject ParamObject TicketObject UserID)
        )
    {
        die "Got no $_!" if ( !$Self->{$_} );
    }

    # get current filter
    my $Name           = $Self->{ParamObject}->GetParam( Param => 'Name' ) || '';
    my $PreferencesKey = 'UserDashboardTicketGenericFilter' . $Self->{Name};
    if ( $Self->{Name} eq $Name ) {
        $Self->{Filter} = $Self->{ParamObject}->GetParam( Param => 'Filter' ) || '';
    }

    # remember filter
    if ($Self->{Filter}) {
        # update ssession
        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key       => $PreferencesKey,
            Value     => $Self->{Filter},
        );

        # update preferences
        if ( !$Self->{ConfigObject}->Get('DemoSystem') ) {
            $Self->{UserObject}->SetPreferences(
                UserID => $Self->{UserID},
                Key       => $PreferencesKey,
                Value     => $Self->{Filter},
            );
        }
    }

    if ( !$Self->{Filter} ) {
        $Self->{Filter} = $Self->{$PreferencesKey} || $Self->{Config}->{Filter} || 'All';
    }

    return $Self;
}

sub Preferences {
    my ( $Self, %Param ) = @_;

    # check if frontend module of link is used
    if ( $Self->{Config}->{Link} && $Self->{Config}->{Link} =~ /Action=(.+?)(&.+?|)$/ ) {
        my $Action = $1;
        if ( !$Self->{ConfigObject}->Get('Frontend::Module')->{$Action} ) {
            $Self->{Config}->{Link} = '';
        }
    }

    my $Key = $Self->{LayoutObject}->{UserLanguage} . '-' . $Self->{Filter} . '-' . $Self->{Name};
    return (
        %{ $Self->{Config} },
        CacheKey => 'TicketGeneric' . '-' . $Self->{UserID} . '-' . $Key,
    );
}

sub Run {
    my ( $Self, %Param ) = @_;

    # get all search base attributes
    my %TicketSearch;
    my @Params = split /;/, $Self->{Config}->{Attributes};
    for my $String (@Params) {
        next if !$String;
        my ( $Key, $Value ) = split /=/, $String;

        if ( $Key eq 'StateType' ) {
            push @{ $TicketSearch{$Key} }, $Value;
        }
        elsif ( !defined $TicketSearch{$Key} ) {
            $TicketSearch{$Key} = $Value;
        }
        elsif ( !ref $TicketSearch{$Key} ) {
            my $ValueTmp = $TicketSearch{$Key};
            $TicketSearch{$Key} = [$ValueTmp];
        }
        else {
            push @{ $TicketSearch{$Key} }, $Value;
        }
    }
    %TicketSearch = (
        %TicketSearch,
        Permission => $Self->{Config}->{Permission} || 'ro',
        UserID     => $Self->{UserID},
        Limit      => 100,
    );

    # define filter attributes
    my %TicketSearchSummary = (
        Locked => {
            OwnerIDs => [ $Self->{UserID}, ],
            Locks    => ['lock'],
        },
        All => {
            OwnerIDs => undef,
            Locks    => undef,
        },
    );

    # get filter ticket counts
    $Self->{LayoutObject}->SetEnv(
        Key   => 'Color',
        Value => 'searchactive',
    );
    my %Summary;
    for my $Type ( sort keys %TicketSearchSummary ) {
        next if !$TicketSearchSummary{$Type};
        $Summary{$Type} = $Self->{TicketObject}->TicketSearch(
            Result     => 'COUNT',
            %TicketSearch,
            %{ $TicketSearchSummary{$Type} },
        );
    }
    $Summary{ $Self->{Filter} . '::Style' } = 'text-decoration:none';
    $Self->{LayoutObject}->Block(
        Name => 'ContentLargeTicketGenericFilter',
        Data         => {
            %{ $Self->{Config} },
            Name => $Self->{Name},
            %Summary,
        },
    );

    # find and show searched tickets
    my @TicketIDs = $Self->{TicketObject}->TicketSearch(
        Result     => 'ARRAY',
        %TicketSearch,
        %{ $TicketSearchSummary{ $Self->{Filter} } },
    );

    my $Count = 0;
    for my $TicketID (@TicketIDs) {
        $Count++;
        last if $Count > $Self->{Config}->{Limit};
        my %Ticket = $Self->{TicketObject}->TicketGet(
            TicketID => $TicketID,
            UserID   => $Self->{UserID},
        );

        # create human age
        if ( $Self->{Config}->{Time} ne 'Age' ) {
            $Ticket{Time} = $Self->{LayoutObject}->CustomerAgeInHours(
                Age   => $Ticket{ $Self->{Config}->{Time} },
                Space => ' ',
            );
        }
        else {
            $Ticket{Time} = $Self->{LayoutObject}->CustomerAge(
                Age   => $Ticket{ $Self->{Config}->{Time} },
                Space => ' ',
            );
        }

        $Self->{LayoutObject}->Block(
            Name => 'ContentLargeTicketGenericRow',
            Data => \%Ticket,
        );
    }

    if ( !@TicketIDs ) {
        $Self->{LayoutObject}->Block(
            Name => 'ContentLargeTicketGenericNone',
            Data => {},
        );
    }

    my $Content = $Self->{LayoutObject}->Output(
        TemplateFile => 'AgentDashboardTicketGeneric',
        Data         => {
            %{ $Self->{Config} },
            Name => $Self->{Name},
            %Summary,
        },
    );

    return $Content;
}

1;
