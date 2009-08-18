# --
# Kernel/Output/HTML/PreferencesSMIME.pm
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: PreferencesSMIME.pm,v 1.13 2009-08-18 12:52:53 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::PreferencesSMIME;

use strict;
use warnings;

use Kernel::System::Crypt;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.13 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # get needed objects
    for (
        qw(ConfigObject LogObject DBObject LayoutObject UserID ParamObject ConfigItem MainObject EncodeObject)
        )
    {
        die "Got no $_!" if ( !$Self->{$_} );
    }

    return $Self;
}

sub Param {
    my ( $Self, %Param ) = @_;

    return if !$Self->{ConfigObject}->Get('SMIME');

    my @Params = ();
    push(
        @Params,
        {
            %Param,
            Name     => $Self->{ConfigItem}->{PrefKey},
            Block    => 'Upload',
            Filename => $Param{UserData}->{SMIMEFilename},
        },
    );
    return @Params;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
        Param  => 'UserSMIMEKey',
        Source => 'String',
    );
    return 1 if !$UploadStuff{Content};

    my $CryptObject = Kernel::System::Crypt->new(
        LogObject    => $Self->{LogObject},
        DBObject     => $Self->{DBObject},
        ConfigObject => $Self->{ConfigObject},
        EncodeObject => $Self->{EncodeObject},
        CryptType    => 'SMIME',
        MainObject   => $Self->{MainObject},
    );
    return 1 if !$CryptObject;

    my $Message = $CryptObject->CertificateAdd( Certificate => $UploadStuff{Content} );
    if ( !$Message ) {
        $Self->{Error} = $Self->{LogObject}->GetLogEntry(
            Type => 'Error',
            What => 'Message',
        );
        return;
    }
    else {
        my %Attributes = $CryptObject->CertificateAttributes(
            Certificate => $UploadStuff{Content},
        );
        if ( $Attributes{Hash} ) {
            $UploadStuff{Filename} = "$Attributes{Hash}.pem";
        }
        $Self->{UserObject}->SetPreferences(
            UserID => $Param{UserData}->{UserID},
            Key    => 'SMIMEHash',
            Value  => $Attributes{Hash},
        );
        $Self->{UserObject}->SetPreferences(
            UserID => $Param{UserData}->{UserID},
            Key    => 'SMIMEFilename',
            Value  => $UploadStuff{Filename},
        );

        #        $Self->{UserObject}->SetPreferences(
        #            UserID => $Param{UserData}->{UserID},
        #            Key => 'SMIMECert',
        #            Value => $UploadStuff{Content},
        #        );
        #        $Self->{UserObject}->SetPreferences(
        #            UserID => $Param{UserData}->{UserID},
        #            Key => "SMIMEContentType",
        #            Value => $UploadStuff{ContentType},
        #        );
        $Self->{Message} = $Message;
        return 1;
    }
}

sub Download {
    my ( $Self, %Param ) = @_;

    my $CryptObject = Kernel::System::Crypt->new(
        LogObject    => $Self->{LogObject},
        DBObject     => $Self->{DBObject},
        ConfigObject => $Self->{ConfigObject},
        EncodeObject => $Self->{EncodeObject},
        CryptType    => 'SMIME',
        MainObject   => $Self->{MainObject},
    );
    return 1 if !$CryptObject;

    # get preferences with key parameters
    my %Preferences = $Self->{UserObject}->GetPreferences(
        UserID => $Param{UserData}->{UserID},
    );

    # check if SMIMEHash is there
    if ( !$Preferences{SMIMEHash} ) {
        $Self->{LogObject}->Log(
            Priority => 'Error',
            Message  => 'Need SMIMEHash to get certificat key of ' . $Param{UserData}->{UserID},
        );
        return ();
    }
    else {
        $Preferences{SMIMECert} = $CryptObject->CertificateGet(
            Hash => $Preferences{SMIMEHash},
        );
    }

    # check if cert exists
    if ( !$Preferences{SMIMECert} ) {
        $Self->{LogObject}->Log(
            Priority => 'Error',
            Message  => 'Couldn\'t get cert of hash ' . $Preferences{SMIMEHash},
        );
        return;
    }
    else {
        return (
            ContentType => 'text/plain',
            Content     => $Preferences{SMIMECert},
            Filename    => $Preferences{SMIMEFilename},
        );
    }
}

sub Error {
    my ( $Self, %Param ) = @_;

    return $Self->{Error} || '';
}

sub Message {
    my ( $Self, %Param ) = @_;

    return $Self->{Message} || '';
}

1;
