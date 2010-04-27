# --
# Kernel/Modules/AdminPGP.pm - to add/update/delete pgp keys
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AdminPGP.pm,v 1.29 2010-04-27 01:05:47 dz Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AdminPGP;

use strict;
use warnings;

use Kernel::System::Crypt;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.29 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(ParamObject DBObject LayoutObject ConfigObject LogObject MainObject EncodeObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    $Self->{CryptObject} = Kernel::System::Crypt->new( %Param, CryptType => 'PGP' );

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    $Param{Search} = $Self->{ParamObject}->GetParam( Param => 'Search' );
    if ( !defined( $Param{Search} ) ) {
        $Param{Search} = $Self->{PGPSearch} || '';
    }
    if ( $Self->{Subaction} eq '' ) {
        $Param{Search} = '';
    }

    $Self->{SessionObject}->UpdateSessionID(
        SessionID => $Self->{SessionID},
        Key       => 'PGPSearch',
        Value     => $Param{Search},
    );

    # ------------------------------------------------------------ #
    # delete key
    # ------------------------------------------------------------ #
    if ( $Self->{Subaction} eq 'Delete' ) {

        my $Key  = $Self->{ParamObject}->GetParam( Param => 'Key' )  || '';
        my $Type = $Self->{ParamObject}->GetParam( Param => 'Type' ) || '';
        if ( !$Key ) {
            return $Self->{LayoutObject}->ErrorScreen( Message => 'Need param Key to delete!', );
        }
        my $Success = '';
        if ( $Type eq 'sec' ) {
            $Success = $Self->{CryptObject}->SecretKeyDelete( Key => $Key );
        }
        else {
            $Success = $Self->{CryptObject}->PublicKeyDelete( Key => $Key );
        }
        my @List = $Self->{CryptObject}->KeySearch( Search => $Param{Search} );
        if (@List) {
            for my $Key (@List) {
                $Self->{LayoutObject}->Block(
                    Name => 'Row',
                    Data => {
                        StartFont => '<font color ="red">',
                        StopFont  => '</font>',
                        %{$Key},
                    },
                );
            }
        }
        else {
            $Self->{LayoutObject}->Block(
                Name => 'NoDataFoundMsg',
                Data => {},
            );
        }
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        my $Message = '';
        if ($Success) {
            $Message = "Key $Key deleted!";
        }
        else {
            $Message = $Self->{LogObject}->GetLogEntry(
                Type => 'Error',
                What => 'Message',
            );
        }
        $Output .= $Self->{LayoutObject}->Notify( Info => $Message );

        $Self->{LayoutObject}->Block( Name => 'ActionList' );
        $Self->{LayoutObject}->Block( Name => 'ActionOverview' );

        $Output .= $Self->{LayoutObject}->Output( TemplateFile => 'AdminPGP', Data => \%Param );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # ------------------------------------------------------------ #
    # add key
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'Add' ) {

        # challenge token check for write action
        $Self->{LayoutObject}->ChallengeTokenCheck();

        $Self->{SessionObject}->UpdateSessionID(
            SessionID => $Self->{SessionID},
            Key       => 'PGPSearch',
            Value     => '',
        );
        my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
            Param  => 'file_upload',
            Source => 'String',
        );
        if ( !%UploadStuff ) {
            return $Self->{LayoutObject}->ErrorScreen( Message => 'Need Key!', );
        }
        my $Message = $Self->{CryptObject}->KeyAdd( Key => $UploadStuff{Content} );
        if ( !$Message ) {
            $Message = $Self->{LogObject}->GetLogEntry(
                Type => 'Error',
                What => 'Message',
            );
        }
        my @List = $Self->{CryptObject}->KeySearch( Search => $Param{Search} );
        if (@List) {
            for my $Key (@List) {
                $Self->{LayoutObject}->Block(
                    Name => 'Row',
                    Data => {
                        StartFont => '<font color ="red">',
                        StopFont  => '</font>',
                        %{$Key},
                    },
                );
            }
        }
        else {
            $Self->{LayoutObject}->Block(
                Name => 'NoDataFoundMsg',
                Data => {},
            );
        }
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->{LayoutObject}->Notify( Info => $Message );

        $Self->{LayoutObject}->Block( Name => 'ActionList' );
        $Self->{LayoutObject}->Block( Name => 'ActionOverview' );

        $Output .= $Self->{LayoutObject}->Output( TemplateFile => 'AdminPGP', Data => \%Param );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # ------------------------------------------------------------ #
    # download key
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'Download' ) {
        my $Key  = $Self->{ParamObject}->GetParam( Param => 'Key' )  || '';
        my $Type = $Self->{ParamObject}->GetParam( Param => 'Type' ) || '';
        if ( !$Key ) {
            return $Self->{LayoutObject}->ErrorScreen( Message => 'Need param Key to download!', );
        }
        my $KeyString = '';
        if ( $Type eq 'sec' ) {
            $KeyString = $Self->{CryptObject}->SecretKeyGet( Key => $Key );
        }
        else {
            $KeyString = $Self->{CryptObject}->PublicKeyGet( Key => $Key );
        }
        return $Self->{LayoutObject}->Attachment(
            ContentType => 'text/plain',
            Content     => $KeyString,
            Filename    => "$Key.asc",
            Type        => 'inline',
        );
    }

    # ------------------------------------------------------------ #
    # download fingerprint
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'DownloadFingerprint' ) {
        my $Key  = $Self->{ParamObject}->GetParam( Param => 'Key' )  || '';
        my $Type = $Self->{ParamObject}->GetParam( Param => 'Type' ) || '';
        if ( !$Key ) {
            return $Self->{LayoutObject}->ErrorScreen( Message => 'Need param Key to download!', );
        }
        my $Download = '';
        if ( $Type eq 'sec' ) {
            my @Result = $Self->{CryptObject}->PrivateKeySearch( Search => $Key );
            if ( $Result[0] ) {
                $Download = $Result[0]->{Fingerprint};
            }
        }
        else {
            my @Result = $Self->{CryptObject}->PublicKeySearch( Search => $Key );
            if ( $Result[0] ) {
                $Download = $Result[0]->{Fingerprint};
            }
        }
        return $Self->{LayoutObject}->Attachment(
            ContentType => 'text/plain',
            Content     => $Download,
            Filename    => "$Key.txt",
            Type        => 'inline',
        );
    }

    # ------------------------------------------------------------ #
    # search key
    # ------------------------------------------------------------ #
    else {
        my @List = ();
        if ( $Self->{CryptObject} ) {
            @List = $Self->{CryptObject}->KeySearch( Search => $Param{Search} );
        }
        if (@List) {
            for my $Key (@List) {
                $Self->{LayoutObject}->Block(
                    Name => 'Row',
                    Data => { %{$Key} },
                );
            }
        }
        else {
            $Self->{LayoutObject}->Block(
                Name => 'NoDataFoundMsg',
                Data => {},
            );
        }
        my $Output .= $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        if ( !$Self->{CryptObject} ) {
            $Output .= $Self->{LayoutObject}->Notify(
                Priority => 'Error',
                Data     => '$Text{"Please activate %s first!", "PGP"}',
                Link =>
                    '$Env{"Baselink"}Action=AdminSysConfig;Subaction=Edit;SysConfigGroup=Framework;SysConfigSubGroup=Crypt::PGP',
            );
        }
        if ( $Self->{CryptObject} && $Self->{CryptObject}->Check() ) {
            $Output .= $Self->{LayoutObject}->Notify(
                Priority => 'Error',
                Data     => '$Text{"' . $Self->{CryptObject}->Check() . '"}',
            );
        }

        $Self->{LayoutObject}->Block( Name => 'ActionList' );
        $Self->{LayoutObject}->Block( Name => 'ActionSearch' );
        $Self->{LayoutObject}->Block( Name => 'ActionAdd' );

        $Output .= $Self->{LayoutObject}->Output( TemplateFile => 'AdminPGP', Data => \%Param );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}

1;
