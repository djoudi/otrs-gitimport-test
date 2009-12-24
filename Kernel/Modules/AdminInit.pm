# --
# Kernel/Modules/AdminInit.pm - init a new setup
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: AdminInit.pm,v 1.14 2009-12-24 00:51:33 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AdminInit;

use strict;
use warnings;

use Kernel::System::SysConfig;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.14 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(ParamObject DBObject LayoutObject ConfigObject LogObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    $Self->{SysConfigObject} = Kernel::System::SysConfig->new(%Param);

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # return do admin screen
    if ( $Self->{Subaction} eq 'Done' ) {
        return $Self->{LayoutObject}->Redirect( OP => 'Action=Admin' );
    }

    # write default file
    if ( !$Self->{SysConfigObject}->WriteDefault() ) {
        return $Self->{LayoutObject}->ErrorScreen();
    }

    # create config object
    $Self->{ConfigObject} = Kernel::Config->new( %{$Self} );

    # install included packages
    if ( $Self->{MainObject}->Require('Kernel::System::Package') ) {
        my $PackageObject = Kernel::System::Package->new( %{$Self} );
        if ($PackageObject) {
            my $Directory    = $Self->{ConfigObject}->Get('Home') . '/var/packages/*.opm';
            my @PackageFiles = glob($Directory);

            # read packages and install
            for my $Location (@PackageFiles) {

                # read package
                my $ContentSCALARRef = $Self->{MainObject}->FileRead(
                    Location => $Location,
                    Mode     => 'binmode',
                    Type     => 'Local',
                    Result   => 'SCALAR',
                );
                next if !$ContentSCALARRef;

                # install package (use eval to be save)
                eval {
                    $PackageObject->PackageInstall( String => ${$ContentSCALARRef} );
                };
                if ($@) {
                    $Self->{LogObject}->Log( Priority => 'error', Message => $@ );
                }
            }
        }
    }

    return $Self->{LayoutObject}->Redirect( OP => 'Subaction=Done' );
}

1;
