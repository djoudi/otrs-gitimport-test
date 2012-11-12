# --
# Kernel/Modules/AdminPerformanceLog.pm - provides a log view for admins
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: AdminPerformanceLog.pm,v 1.23 2012-11-12 18:14:51 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.
# --

package Kernel::Modules::AdminPerformanceLog;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.23 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check needed objects
    for (qw(ParamObject LayoutObject LogObject ConfigObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # is performance log disabled?
    if ( !$Self->{ConfigObject}->Get('PerformanceLog') ) {
        $Self->{LayoutObject}->Block(
            Name => 'Disabled',
            Data => { %Param, },
        );

        # create & return output
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminPerformanceLog',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    $Self->{LayoutObject}->Block(
        Name => 'Enabled',
        Data => { %Param, },
    );

    # reset log file
    if ( $Self->{Subaction} eq 'Reset' ) {

        # challenge token check for write action
        $Self->{LayoutObject}->ChallengeTokenCheck();

        if ( !$Self->_DatabaseReset() ) {
            $Self->{LayoutObject}->FatalError();
        }
        else {

            # redirect
            return $Self->{LayoutObject}->Redirect( OP => "Action=$Self->{Action}", );
        }
    }

    # show detail view
    elsif ( $Self->{Subaction} eq 'View' ) {

        $Self->{LayoutObject}->Block( Name => 'ActionList' );
        $Self->{LayoutObject}->Block( Name => 'ActionOverview' );

        my %Action     = ();
        my $MaxRequest = 0;
        my $Slot       = 60;
        my $MinuteSlot = $Self->{ParamObject}->GetParam( Param => 'Minute' );
        my $Interface  = $Self->{ParamObject}->GetParam( Param => 'Interface' );
        my $Module     = $Self->{ParamObject}->GetParam( Param => 'Module' );
        if ( $MinuteSlot < 31 ) {
            $Slot = 1;
        }
        elsif ( $MinuteSlot < 61 ) {
            $Slot = 2;
        }
        elsif ( $MinuteSlot < 121 ) {
            $Slot = 5;
        }
        elsif ( $MinuteSlot < 1141 ) {
            $Slot = 30;
        }
        my $Data = $Self->_DatabaseRead();
        $Self->{LayoutObject}->Block(
            Name => 'View',
            Data => {
                Age => $Self->{LayoutObject}->CustomerAge( Age => $MinuteSlot * 60, Space => ' ' ),
                Interface => $Interface || '-',
                Module    => $Module    || '-',
                Period    => $Slot,
            },
        );
        my $Minute = 0;
        my $Count  = 1;
        while ( $Count <= $MinuteSlot ) {
            for my $Row ( reverse @{$Data} ) {
                if (
                    $Row->[0] < ( time() - ( 60 * $Minute ) )
                    && $Row->[0] > ( time() - ( 60 * ( $Minute + $Slot ) ) )
                    )
                {

                    # for each action
                    my $ModuleCurrent = '';
                    if ( $Row->[4] =~ /^(.+?|)Action=(.+?)(&.*|)$/ ) {
                        $ModuleCurrent = $2;
                        if ( $Row->[4] =~ /Subaction=(.+?)(&.*|)$/ ) {
                            $ModuleCurrent .= '&' . $1;
                        }
                        if ($Interface) {
                            if ( !$Module && $Row->[1] ne $Interface ) {
                                next;
                            }
                            if ( $Module && $Module ne $ModuleCurrent ) {
                                next;
                            }
                        }

                        $Action{$Minute}->{Count}++;
                        if ( $MaxRequest < $Action{$Minute}->{Count} ) {
                            $MaxRequest = $Action{$Minute}->{Count};
                        }
                        if ( $Action{$Minute}->{Sum} ) {
                            $Action{$Minute}->{Sum} = $Action{$Minute}->{Sum} + $Row->[2];
                        }
                        else {
                            $Action{$Minute}->{Sum} = $Row->[2];
                        }
                        if ( !defined( $Action{$Minute}->{Max} ) ) {
                            $Action{$Minute}->{Max} = $Row->[2];
                        }
                        elsif ( $Action{$Minute}->{Max} < $Row->[2] ) {
                            $Action{$Minute}->{Max} = $Row->[2];
                        }
                        if ( !defined( $Action{$Minute}->{Min} ) ) {
                            $Action{$Minute}->{Min} = $Row->[2];
                        }
                        elsif ( $Action{$Minute}->{Min} > $Row->[2] ) {
                            $Action{$Minute}->{Min} = $Row->[2];
                        }
                    }
                }
                elsif ( $Row->[0] < ( time() - ( 60 * $Minute ) ) ) {
                    last;
                }
            }
            $Minute = $Minute + $Slot;
            $Count  = $Count + $Slot;
        }
        $Minute = 0;
        $Count  = 1;
        while ( $Count <= $MinuteSlot ) {

            # set output class
            if ( $Action{$Minute} ) {
                my $Average = $Action{$Minute}->{Sum} / $Action{$Minute}->{Count};
                $Average =~ s/^(.*\.\d\d).+?$/$1/g;
                my $I = 100 / $MaxRequest;
                my $W = $Action{$Minute}->{Count} * $I || 1;

                $Self->{LayoutObject}->Block(
                    Name => 'ViewRow',
                    Data => {
                        %{ $Action{$Minute} },
                        Average => $Average,
                        Date    => $Self->{TimeObject}->SystemTime2TimeStamp(
                            SystemTime => $Self->{TimeObject}->SystemTime() - $Minute * 60,
                        ),
                        Width => $W . "%",
                    },
                );
            }
            else {
                $Self->{LayoutObject}->Block(
                    Name => 'ViewRow',
                    Data => {
                        Min     => 0,
                        Max     => 0,
                        Count   => $Action{$Minute}->{Count} || '0',
                        Average => 0,
                        Date    => $Self->{TimeObject}->SystemTime2TimeStamp(
                            SystemTime => $Self->{TimeObject}->SystemTime() - $Minute * 60,
                        ),
                        Width => '0%',
                    },
                );
            }
            $Minute = $Minute + $Slot;
            $Count  = $Count + $Slot;
        }

        # create & return output
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminPerformanceLog',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # show overview
    else {

        # get avarage times
        my $Data = [];
        if ( $Self->{ConfigObject}->Get('PerformanceLog') ) {

            # check file size
            if ( $Self->_DatabaseCheck() ) {
                $Self->{LayoutObject}->Block(
                    Name => 'Reset',
                    Data => {
                        Size => sprintf "%.1f MBytes",
                        ( $Self->_DatabaseCheck() / ( 1024 * 1024 ) ),
                    },
                );
                my $Output = $Self->{LayoutObject}->Header();
                $Output .= $Self->{LayoutObject}->NavigationBar();
                $Output .= $Self->{LayoutObject}->Output(
                    TemplateFile => 'AdminPerformanceLog',
                    Data         => \%Param,
                );
                $Output .= $Self->{LayoutObject}->Footer();
                return $Output;
            }
            else {
                $Data = $Self->_DatabaseRead();
            }
        }

        $Self->{LayoutObject}->Block(
            Name => 'Overview',
        );

        for my $Minute ( 5, 30, 60, 2 * 60, 24 * 60, 2 * 24 * 60 ) {
            my %Count  = ();
            my %Action = ();
            my %Sum    = ();
            my %Max    = ();
            my %Min    = ();
            for my $Row ( reverse @{$Data} ) {
                if ( $Row->[0] > time() - ( 60 * $Minute ) ) {

                    # whole
                    $Count{ $Row->[1] }++;
                    if ( $Sum{ $Row->[1] } ) {
                        $Sum{ $Row->[1] } = $Sum{ $Row->[1] } + $Row->[2];
                    }
                    else {
                        $Sum{ $Row->[1] } = $Row->[2];
                    }
                    if ( !defined( $Max{ $Row->[1] } ) ) {
                        $Max{ $Row->[1] } = $Row->[2];
                    }
                    elsif ( $Max{ $Row->[1] } < $Row->[2] ) {
                        $Max{ $Row->[1] } = $Row->[2];
                    }
                    if ( !defined( $Min{ $Row->[1] } ) ) {
                        $Min{ $Row->[1] } = $Row->[2];
                    }
                    elsif ( $Min{ $Row->[1] } > $Row->[2] ) {
                        $Min{ $Row->[1] } = $Row->[2];
                    }

                    # for each action
                    if ( $Row->[4] =~ /^(.+?|)Action=(.+?)(&.*|)$/ ) {
                        my $Module = $2;
                        if ( $Row->[4] =~ /Subaction=(.+?)(&.*|)$/ ) {
                            $Module .= '&' . $1;
                        }
                        $Action{$Module}->{Count}->{ $Row->[1] }++;
                        if ( $Action{$Module}->{Sum}->{ $Row->[1] } ) {
                            $Action{$Module}->{Sum}->{ $Row->[1] }
                                = $Action{$Module}->{Sum}->{ $Row->[1] } + $Row->[2];
                        }
                        else {
                            $Action{$Module}->{Sum}->{ $Row->[1] } = $Row->[2];
                        }
                        if ( !defined( $Action{$Module}->{Max}->{ $Row->[1] } ) ) {
                            $Action{$Module}->{Max}->{ $Row->[1] } = $Row->[2];
                        }
                        elsif ( $Action{$Module}->{Max}->{ $Row->[1] } < $Row->[2] ) {
                            $Action{$Module}->{Max}->{ $Row->[1] } = $Row->[2];
                        }
                        if ( !defined( $Action{$Module}->{Min}->{ $Row->[1] } ) ) {
                            $Action{$Module}->{Min}->{ $Row->[1] } = $Row->[2];
                        }
                        elsif ( $Action{$Module}->{Min}->{ $Row->[1] } > $Row->[2] ) {
                            $Action{$Module}->{Min}->{ $Row->[1] } = $Row->[2];
                        }
                    }
                }
                else {
                    last;
                }
            }
            if (%Sum) {
                $Self->{LayoutObject}->Block(
                    Name => 'OverviewTable',
                    Data => {
                        Age =>
                            $Self->{LayoutObject}->CustomerAge( Age => $Minute * 60, Space => ' ' ),
                    },
                );
            }
            for my $Interface (qw(Agent Customer Public)) {
                if ( defined $Sum{$Interface} ) {

                    my $Average = $Sum{$Interface} / $Count{$Interface};
                    $Average =~ s/^(.*\.\d\d).+?$/$1/g;
                    $Self->{LayoutObject}->Block(
                        Name => 'OverviewInterface',
                        Data => {
                            Interface => $Interface,
                            Average   => $Average,
                            Count     => $Count{$Interface} || 0,
                            Minute    => $Minute,
                            Sum       => $Sum{$Interface} || '0',
                            Max       => $Max{$Interface} || '0',
                            Min       => $Min{$Interface} || '0',
                        },
                    );
                    for my $Module ( sort keys %Action ) {
                        if ( defined $Action{$Module}->{Sum}->{$Interface} ) {

                            my $Average = $Action{$Module}->{Sum}->{$Interface}
                                / $Action{$Module}->{Count}->{$Interface};
                            $Average =~ s/^(.*\.\d\d).+?$/$1/g;
                            $Self->{LayoutObject}->Block(
                                Name => 'OverviewRow',
                                Data => {
                                    Interface => $Interface,
                                    Module    => $Module,
                                    Average   => $Average,
                                    Minute    => $Minute,
                                    Count     => $Action{$Module}->{Count}->{$Interface} || '0',
                                    Sum       => $Action{$Module}->{Sum}->{$Interface} || '0',
                                    Max       => $Action{$Module}->{Max}->{$Interface} || '0',
                                    Min       => $Action{$Module}->{Min}->{$Interface} || '0',
                                },
                            );
                        }
                    }
                }
            }
        }

        # create & return output
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminPerformanceLog',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}

sub _DatabaseCheck {
    my ( $Self, %Param ) = @_;

    my $File = $Self->{ConfigObject}->Get('PerformanceLog::File');

    # check file size
    my $FileSize = -s $File;
    if ( $FileSize > ( 1024 * 1024 * $Self->{ConfigObject}->Get('PerformanceLog::FileMax') ) ) {
        return $FileSize;
    }
    else {
        return;
    }
}

sub _DatabaseReset {
    my ( $Self, %Param ) = @_;

    my $File = $Self->{ConfigObject}->Get('PerformanceLog::File');
    if ( !$Self->{MainObject}->FileDelete( Location => $File ) ) {
        return;
    }
    else {
        return 1;
    }
}

sub _DatabaseRead {
    my ( $Self, %Param ) = @_;

    my @Data     = ();
    my $File     = $Self->{ConfigObject}->Get('PerformanceLog::File');
    my $ArrayRef = $Self->{MainObject}->FileRead(
        Location => $File,
        Mode     => 'utf8',     # optional - binmode|utf8
        Result   => 'ARRAY',    # optional - SCALAR|ARRAY
    );
    if ($ArrayRef) {
        for ( @{$ArrayRef} ) {
            my $Line = $_;
            my @Row = split( /::/, $Line );
            push( @Data, \@Row );
        }
    }
    return \@Data;
}

1;
