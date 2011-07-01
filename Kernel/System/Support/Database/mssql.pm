# --
# Kernel/System/Support/Database/mssql.pm - all required system information
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: mssql.pm,v 1.1 2011-07-01 14:36:04 mb Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Support::Database::mssql;

use strict;
use warnings;

use Kernel::System::XML;
use Kernel::System::Time;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.1 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for (qw(ConfigObject LogObject MainObject DBObject EncodeObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    # create additional objects
    $Self->{XMLObject}  = Kernel::System::XML->new( %{$Self} );
    $Self->{TimeObject} = Kernel::System::Time->new( %{$Self} );

    return $Self;
}

sub AdminChecksGet {
    my ( $Self, %Param ) = @_;

    # get names of available checks from sysconfig
    my $Checks = $Self->{ConfigObject}->Get('Support::Database::MSSQL');

    # find out which checks are enabled in sysconfig
    my @EnabledCheckFunctions;
    if ( $Checks && ref $Checks eq 'HASH' ) {

        # get all enabled check function names
        @EnabledCheckFunctions = grep { $Checks->{$_} } keys %{$Checks};
    }

    # to store the result
    my @DataArray;

    FUNCTIONNAME:
    for my $FunctionName (@EnabledCheckFunctions) {

        # prepend an underscore
        $FunctionName = '_' . $FunctionName;

        # run function and get check data
        my $Check = $Self->$FunctionName();

        next FUNCTIONNAME if !$Check;

        # attach check data if valid
        push @DataArray, $Check;
    }

    return \@DataArray;
}

sub _VersionCheck {
    my ( $Self, %Param ) = @_;

    my $Data = {};

    # version check
    my $Check   = 'Failed';
    my $Message = 'Could not determine Microsoft SQL Server version.';
    $Self->{DBObject}->Prepare(
        SQL   => 'SELECT @@version',
        Limit => 1,
    );

    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $Message = $Row[0];
        $Check   = 'OK';
    }

    $Data = {
        Name        => 'Version',
        Description => 'Check database version.',
        Comment     => $Message,
        Check       => $Check,
    };
    return $Data;
}

sub _DatabaseSizeCheck {
    my ( $Self, %Param ) = @_;

    my $Data = {};

    # Database size check
    my $Check   = 'Failed';
    my $Message = 'Could not determine database size.';
    $Self->{DBObject}->Prepare(
        SQL   => 'exec sp_spaceused',
        Limit => 1,
    );

    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $Message = "Database $Row[0] is $Row[1] large, of which $Row[2] is available.";
        $Check   = 'OK';
    }

    $Data = {
        Name        => 'Size',
        Description => 'Check database size.',
        Comment     => $Message,
        Check       => $Check,
    };
    return $Data;
}

sub _DatabaseHostnameCheck {
    my ( $Self, %Param ) = @_;

    my $Data = {};

    # Database size check
    my $Check   = 'Failed';
    my $Message = 'Could not determine database hostname.';

    if ( my $DatabaseHost = $Self->{ConfigObject}->Get('DatabaseHost') ) {
        $Message = $DatabaseHost;
        $Check   = 'OK';
    }

    $Data = {
        Name        => 'Hostname',
        Description => 'Check database hostname.',
        Comment     => $Message,
        Check       => $Check,
    };
    return $Data;
}

sub _TableCheck {
    my ( $Self, %Param ) = @_;

    my $Data = {};

    # table check
    my $File = $Self->{ConfigObject}->Get('Home') . '/scripts/database/otrs-schema.xml';
    if ( -f $File ) {
        my $Count   = 0;
        my $Check   = 'Failed';
        my $Message = '';
        my $Content = '';
        my $In;
        if ( open( $In, '<', $File ) ) {
            while (<$In>) {
                $Content .= $_;
            }
            close($In);
            my @XMLHash = $Self->{XMLObject}->XMLParse2XMLHash( String => $Content );
            for my $Table ( @{ $XMLHash[1]->{database}->[1]->{Table} } ) {
                if ($Table) {
                    if ( $Table->{Name} eq 'system_user' ) {
                        $Table->{Name} = 'system_user2';
                    }
                    $Count++;
                    if (
                        $Self->{DBObject}->Prepare(
                            SQL   => "select * from $Table->{Name}",
                            Limit => 1
                        )
                        )
                    {
                        while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
                        }
                    }
                    else {
                        $Message .= "$Table->{Name}, ";
                    }
                }
            }
            if ($Message) {
                $Message = "Table doesn't exist: $Message";
            }
            else {
                $Check   = 'OK';
                $Message = "$Count tables.";
            }
            $Data = {
                Name        => 'Table Check',
                Description => 'Check existing framework tables.',
                Comment     => $Message,
                Check       => $Check,
            };
        }
        else {
            $Data = {
                Name        => 'Table Check',
                Description => 'Check existing framework tables.',
                Comment     => "Can't open file $File: $!",
                Check       => 'Critical',
            };
        }
    }
    else {
        $Data = {
            Name        => 'Table Check',
            Description => 'Check existing framework tables.',
            Comment     => "Can't find file $File!",
            Check       => 'Failed',
        };
    }
    return $Data;
}

sub _CurrentTimestampCheck {
    my ( $Self, %Param ) = @_;
    my $Data   = {};
    my $DbTime = '';

    # Current Timestamp check
    my $Check   = '';
    my $Message = '';
    $Self->{DBObject}->Prepare( SQL => "SELECT current_timestamp" );
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $DbTime = $Row[0];
    }
    my $TimeApplicationServer = $Self->{TimeObject}->SystemTime();
    my $TimeDatabaseServer    = $Self->{TimeObject}->TimeStamp2SystemTime(
        String => $DbTime,
    );

    my $TimeDifference = 0;
    my $Range          = 10;
    $TimeDifference = $TimeApplicationServer - $TimeDatabaseServer;
    if ( ( $TimeDifference >= ( $Range * -1 ) ) && ( $TimeDifference <= $Range ) ) {
        $Check = 'OK';
        $Message
            = 'There is no difference between application server time and database server time.';
    }
    else {
        $Check = 'Failed';
        $Message
            = 'There is a material difference ('
            . $TimeDifference
            . " seconds) between application server ($TimeApplicationServer) and database server ($TimeDatabaseServer) time.";
    }

    $Data = {
        Name        => 'Current Timestamp Check',
        Description => 'Check "System Time" vs "Current Timestamp".',
        Comment     => $Message,
        Check       => $Check,
    };
    return $Data;
}
1;
