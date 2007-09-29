# --
# Kernel/Modules/PublicRepository.pm - provides a local repository
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: PublicRepository.pm,v 1.5 2007-09-29 10:42:21 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::PublicRepository;

use strict;
use warnings;

use Kernel::System::Package;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.5 $) [1];

sub new {
    my $Type  = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );
    for ( keys %Param ) {
        $Self->{$_} = $Param{$_};
    }

    # check needed Opjects
    for (qw(ParamObject LayoutObject LogObject ConfigObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    $Self->{PackageObject} = Kernel::System::Package->new(%Param);

    return $Self;
}

sub Run {
    my $Self  = shift;
    my %Param = @_;
    my $File  = $Self->{ParamObject}->GetParam( Param => 'File' ) || '';
    $File =~ s/^\///g;
    my $AccessControlRexExp = $Self->{ConfigObject}->Get('Package::RepositoryAccessRegExp');
    if ( !$AccessControlRexExp ) {
        return $Self->{LayoutObject}
            ->ErrorScreen( Message => 'Need config Package::RepositoryAccessRegExp', );
    }
    else {
        if ( $ENV{REMOTE_ADDR} !~ /^$AccessControlRexExp$/ ) {
            return $Self->{LayoutObject}->ErrorScreen( Message => 'Authentication failed!', );
        }
    }

    # get repository index
    if ( $File =~ /otrs.xml$/ ) {

        # get repository index
        my $Index = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>";
        $Index .= "<otrs_package_list version=\"1.0\">\n";
        my @List = $Self->{PackageObject}->RepositoryList();
        for my $Package (@List) {
            $Index .= "<Package>\n";
            $Index .= "  <File>$Package->{Name}->{Content}-$Package->{Version}->{Content}</File>\n";
            $Index .= $Self->{PackageObject}->PackageBuild( %{$Package}, Type => 'Index' );
            $Index .= "</Package>\n";
        }
        $Index .= "</otrs_package_list>\n";
        return $Self->{LayoutObject}->Attachment(
            Type        => 'inline',     # inline|attached
            Filename    => 'otrs.xml',
            ContentType => 'text/xml',
            Content     => $Index,
        );
    }

    # export package
    else {
        my $Name    = '';
        my $Version = '';
        if ( $File =~ /^(.*)\-(.+?)$/ ) {
            $Name    = $1;
            $Version = $2;
        }
        my $Package = $Self->{PackageObject}->RepositoryGet(
            Name    => $Name,
            Version => $Version,
        );
        return $Self->{LayoutObject}->Attachment(
            Type        => 'inline',           # inline|attached
            Filename    => "$Name-$Version",
            ContentType => 'text/xml',
            Content     => $Package,
        );
    }
}

1;
