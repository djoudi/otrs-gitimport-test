# --
# EmailHandling.t - SMIME email handling tests
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: EmailHandling.t,v 1.6 2012-11-20 16:12:09 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use vars (qw($Self));
use utf8;

use Kernel::System::Crypt;

use vars qw($Self);
use Kernel::Config;
use Kernel::System::Main;
use Kernel::System::Email;
use Kernel::System::Ticket;
use Kernel::System::Web::Request;
use Kernel::Output::HTML::Layout;
use Kernel::Output::HTML::ArticleCheckSMIME;

# create local objects
my $ConfigObject = Kernel::Config->new();
my $HomeDir      = $ConfigObject->Get('Home');
my $CertPath     = $ConfigObject->Get('SMIME::CertPath');
my $PrivatePath  = $ConfigObject->Get('SMIME::PrivatePath');

my $OpenSSLBin = $ConfigObject->Get('SMIME::Bin');

# get the openssl version string, e.g. OpenSSL 0.9.8e 23 Feb 2007
my $OpenSSLVersionString = qx{$OpenSSLBin version};
my $OpenSSLMajorVersion;

# get the openssl major version, e.g. 1 for version 1.0.0
if ( $OpenSSLVersionString =~ m{ \A (?: OpenSSL )? \s* ( \d )  }xmsi ) {
    $OpenSSLMajorVersion = $1;
}

# openssl version 1.0.0 uses different hash algorithm... in the future release of openssl this might
#change again in such case a better version detection will be needed
my $UseNewHashes;
if ( $OpenSSLMajorVersion >= 1 ) {
    $UseNewHashes = 1;
}

# set config
$ConfigObject->Set(
    Key   => 'SMIME',
    Value => 1,
);
$ConfigObject->Set(
    Key   => 'SendmailModule',
    Value => 'Kernel::System::Email::DoNotSendEmail',
);

# check if openssl is located there
if ( !-e $ConfigObject->Get('SMIME::Bin') ) {

    # maybe it's a mac with macport
    if ( -e '/opt/local/bin/openssl' ) {
        $ConfigObject->Set(
            Key   => 'SMIME::Bin',
            Value => '/opt/local/bin/openssl',
        );
    }
}

# create crypt object
my $CryptObject = Kernel::System::Crypt->new(
    %{$Self},
    ConfigObject => $ConfigObject,
    CryptType    => 'SMIME',
);

if ( !$CryptObject ) {
    print STDERR "NOTICE: No SMIME support!\n";

    if ( !-e $OpenSSLBin ) {
        $Self->False(
            1,
            "No such $OpenSSLBin!",
        );
    }
    elsif ( !-x $OpenSSLBin ) {
        $Self->False(
            1,
            "$OpenSSLBin not executable!",
        );
    }
    elsif ( !-e $CertPath ) {
        $Self->False(
            1,
            "No such $CertPath!",
        );
    }
    elsif ( !-d $CertPath ) {
        $Self->False(
            1,
            "No such $CertPath directory!",
        );
    }
    elsif ( !-w $CertPath ) {
        $Self->False(
            1,
            "$CertPath not writable!",
        );
    }
    elsif ( !-e $PrivatePath ) {
        $Self->False(
            1,
            "No such $PrivatePath!",
        );
    }
    elsif ( !-d $Self->{PrivatePath} ) {
        $Self->False(
            1,
            "No such $PrivatePath directory!",
        );
    }
    elsif ( !-w $PrivatePath ) {
        $Self->False(
            1,
            "$PrivatePath not writable!",
        );
    }
    return 1;
}

# create main object
my $MainObject = Kernel::System::Main->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);

my $TicketObject = Kernel::System::Ticket->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);

my $ParamObject = Kernel::System::Web::Request->new(
    %{$Self},
    ConfigObject => $ConfigObject,
);
my $LayoutObject = Kernel::Output::HTML::Layout->new(
    %{$Self},
    TicketObject => $TicketObject,
    ParamObject  => $ParamObject,
    ConfigObject => $ConfigObject,
);

#
# Setup environment
#

# OpenSSL 0.9.x hashes
my $Check1Hash       = '980a83c7';
my $Check2Hash       = '999bcb2f';
my $OTRSRootCAHash   = '1a01713f';
my $OTRSRDCAHash     = '7807c24e';
my $OTRSLabCAHash    = '2fc24258';
my $OTRSUserCertHash = 'eab039b6';

# OpenSSL 1.0.0 hashes
if ($UseNewHashes) {
    $Check1Hash       = 'f62a2257';
    $Check2Hash       = '35c7d865';
    $OTRSRootCAHash   = '7835cf94';
    $OTRSRDCAHash     = 'b5d19fb9';
    $OTRSLabCAHash    = '19545811';
    $OTRSUserCertHash = '4d400195';
}

# certificates
my @Certificates = (
    {
        CertificateName       => 'Check1',
        CertificateHash       => $Check1Hash,
        CertificateFileName   => 'SMIMECertificate-1.asc',
        PrivateKeyFileName    => 'SMIMEPrivateKey-1.asc',
        PrivateSecretFileName => 'SMIMEPrivateKeyPass-1.asc',
    },
    {
        CertificateName       => 'Check2',
        CertificateHash       => $Check2Hash,
        CertificateFileName   => 'SMIMECertificate-2.asc',
        PrivateKeyFileName    => 'SMIMEPrivateKey-2.asc',
        PrivateSecretFileName => 'SMIMEPrivateKeyPass-2.asc',
    },
    {
        CertificateName       => 'OTRSUserCert',
        CertificateHash       => $OTRSUserCertHash,
        CertificateFileName   => 'SMIMECertificate-smimeuser1.crt',
        PrivateKeyFileName    => 'SMIMEPrivateKey-smimeuser1.pem',
        PrivateSecretFileName => 'SMIMEPrivateKeyPass-smimeuser1.crt',
    },
    {
        CertificateName       => 'OTRSLabCA',
        CertificateHash       => $OTRSLabCAHash,
        CertificateFileName   => 'SMIMECACertificate-OTRSLab.crt',
        PrivateKeyFileName    => 'SMIMECAPrivateKey-OTRSLab.pem',
        PrivateSecretFileName => 'SMIMECAPrivateKeyPass-OTRSLab.crt',
    },
    {
        CertificateName       => 'OTRSRDCA',
        CertificateHash       => $OTRSRDCAHash,
        CertificateFileName   => 'SMIMECACertificate-OTRSRD.crt',
        PrivateKeyFileName    => 'SMIMECAPrivateKey-OTRSRD.pem',
        PrivateSecretFileName => 'SMIMECAPrivateKeyPass-OTRSRD.crt',
    },
    {
        CertificateName       => 'OTRSRootCA',
        CertificateHash       => $OTRSRootCAHash,
        CertificateFileName   => 'SMIMECACertificate-OTRSRoot.crt',
        PrivateKeyFileName    => 'SMIMECAPrivateKey-OTRSRoot.pem',
        PrivateSecretFileName => 'SMIMECAPrivateKeyPass-OTRSRoot.crt',
    },
);

# add chain certificates
for my $Certificate (@Certificates) {

    # add certificate ...
    my $CertString = $Self->{MainObject}->FileRead(
        Directory => $ConfigObject->Get('Home') . "/scripts/test/sample/SMIME/",
        Filename  => $Certificate->{CertificateFileName},
    );
    my %Result = $CryptObject->CertificateAdd( Certificate => ${$CertString} );
    $Self->True(
        $Result{Successful} || '',
        "#$Certificate->{CertificateName} CertificateAdd() - $Result{Message}",
    );

    # and private key
    my $KeyString = $Self->{MainObject}->FileRead(
        Directory => $ConfigObject->Get('Home') . "/scripts/test/sample/SMIME/",
        Filename  => $Certificate->{PrivateKeyFileName},
    );
    my $Secret = $Self->{MainObject}->FileRead(
        Directory => $ConfigObject->Get('Home') . "/scripts/test/sample/SMIME/",
        Filename  => $Certificate->{PrivateSecretFileName},
    );
    %Result = $CryptObject->PrivateAdd(
        Private => ${$KeyString},
        Secret  => ${$Secret},
    );
    $Self->True(
        $Result{Successful} || '',
        "#$Certificate->{CertificateName} PrivateAdd()",
    );
}

my $TicketID = $TicketObject->TicketCreate(
    Title        => 'Some Ticket_Title',
    Queue        => 'Raw',
    Lock         => 'unlock',
    Priority     => '3 normal',
    State        => 'closed successful',
    CustomerNo   => '123465',
    CustomerUser => 'customer@example.com',
    OwnerID      => 1,
    UserID       => 1,
);

$Self->True(
    $TicketID,
    'TicketCreate()',
);

#
# actual tests
#

# different mails to test
my @Tests = (
    {
        Name        => 'simple string',
        ArticleData => {
            Body => 'Simple string',
        },
    },
    {
        Name        => 'simple string with unix newline',
        ArticleData => {
            Body => 'Simple string \n with unix newline',
        },
    },
    {
        Name        => 'simple string with windows newline',
        ArticleData => {
            Body => 'Simple string \r\n with windows newline',
        },
    },
    {
        Name        => 'simple string with long word',
        ArticleData => {
            Body =>
                'SimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleStringSimpleString',
        },
    },
    {
        Name        => 'simple string with long lines',
        ArticleData => {
            Body =>
                'Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string Simple string',
        },
    },
    {
        Name        => 'simple string with unicode data',
        ArticleData => {
            Body => 'äöüßø@«∑€©ƒ',
        },
    },
);

# test each mail with sign/crypt/sign+crypt
my @TestVariations;

for my $Test (@Tests) {
    push @TestVariations, {
        %{$Test},
        Name        => $Test->{Name} . " sign only",
        ArticleData => {
            %{ $Test->{ArticleData} },
            From => 'unittest@example.org',
            To   => 'unittest@example.org',
            Sign => {
                Type    => 'SMIME',
                SubType => 'Detached',
                Key     => $Check1Hash . '.0',
            },
        },
        VerifySignature  => 1,
        VerifyDecryption => 0,
    };

    push @TestVariations, {
        %{$Test},
        Name        => $Test->{Name} . " crypt only",
        ArticleData => {
            %{ $Test->{ArticleData} },
            From  => 'unittest@example.org',
            To    => 'unittest@example.org',
            Crypt => {
                Type => 'SMIME',
                Key  => $Check1Hash . '.0',
            },
        },
        VerifySignature  => 0,
        VerifyDecryption => 1,
    };

    push @TestVariations, {
        %{$Test},
        Name        => $Test->{Name} . " sign and crypt",
        ArticleData => {
            %{ $Test->{ArticleData} },
            From => 'unittest@example.org',
            To   => 'unittest@example.org',
            Sign => {
                Type    => 'SMIME',
                SubType => 'Detached',
                Key     => $Check1Hash . '.0',
            },
            Crypt => {
                Type => 'SMIME',
                Key  => $Check1Hash . '.0',
            },
        },
        VerifySignature  => 1,
        VerifyDecryption => 1,
    };

    push @TestVariations, {
        %{$Test},
        Name        => $Test->{Name} . " chain CA cert sign only",
        ArticleData => {
            %{ $Test->{ArticleData} },
            From => 'smimeuser1@test.com',
            To   => 'smimeuser1@test.com',
            Sign => {
                Type    => 'SMIME',
                SubType => 'Detached',
                Key     => $OTRSUserCertHash . '.0',
            },
        },
        VerifySignature  => 1,
        VerifyDecryption => 0,
    };

    push @TestVariations, {
        %{$Test},
        Name        => $Test->{Name} . " chain CA cert crypt only",
        ArticleData => {
            %{ $Test->{ArticleData} },
            From  => 'smimeuser1@test.com',
            To    => 'smimeuser1@test.com',
            Crypt => {
                Type => 'SMIME',
                Key  => $OTRSUserCertHash . '.0',
            },
        },
        VerifySignature  => 0,
        VerifyDecryption => 1,
    };

    push @TestVariations, {
        %{$Test},
        Name        => $Test->{Name} . " chain CA cert sign and crypt",
        ArticleData => {
            %{ $Test->{ArticleData} },
            From => 'smimeuser1@test.com',
            To   => 'smimeuser1@test.com',
            Sign => {
                Type    => 'SMIME',
                SubType => 'Detached',
                Key     => $OTRSUserCertHash . '.0',
            },
            Crypt => {
                Type => 'SMIME',
                Key  => $OTRSUserCertHash . '.0',
            },
        },
        VerifySignature  => 1,
        VerifyDecryption => 1,
    };
}

for my $Test (@TestVariations) {

    my $ArticleID = $TicketObject->ArticleSend(
        TicketID       => $TicketID,
        From           => $Test->{ArticleData}->{From},
        To             => $Test->{ArticleData}->{To},
        ArticleType    => 'email-external',
        SenderType     => 'customer',
        HistoryType    => 'AddNote',
        HistoryComment => 'note',
        Subject        => 'Unittest data',
        Charset        => 'utf-8',
        MimeType       => 'text/plain',                   # "text/plain" or "text/html"
        Body           => 'Some nice text\n.',
        Sign           => {
            Type    => 'SMIME',
            SubType => 'Detached',
            Key     => $Test->{ArticleData}->{Sign}->{Key},
        },
        UserID => 1,
        %{ $Test->{ArticleData} },
    );

    $Self->True(
        $ArticleID,
        "$Test->{Name} - ArticleSend()",
    );

    my %Article = $TicketObject->ArticleGet(
        TicketID  => $TicketID,
        ArticleID => $ArticleID,
    );

    my $CheckObject = Kernel::Output::HTML::ArticleCheckSMIME->new(
        %{$Self},
        ConfigObject => $ConfigObject,
        TicketObject => $TicketObject,
        LayoutObject => $LayoutObject,
        ArticleID    => $ArticleID,
        UserID       => 1,
    );

    my @CheckResult = $CheckObject->Check( Article => \%Article );

    #use Data::Dumper;
    #print STDERR "Dump: " . Dumper(\@CheckResult) . "\n";

    if ( $Test->{VerifySignature} ) {
        my $SignatureVerified =
            grep {
            $_->{Successful} && $_->{Key} eq 'Signed' && $_->{SignatureFound} && $_->{Message}
            } @CheckResult;

        $Self->True(
            $SignatureVerified,
            "$Test->{Name} - signature verified",
        );
    }

    if ( $Test->{VerifyDecryption} ) {
        my $DecryptionVerified =
            grep { $_->{Successful} && $_->{Key} eq 'Crypted' && $_->{Message} } @CheckResult;

        $Self->True(
            $DecryptionVerified,
            "$Test->{Name} - decryption verified",
        );
    }

    my %FinalArticleData = $TicketObject->ArticleGet(
        TicketID  => $TicketID,
        ArticleID => $ArticleID,
    );

    $Self->Is(
        $FinalArticleData{Body},
        $Test->{ArticleData}->{Body},
        "$Test->{Name} - verified body content",
    );
}

#
# cleanup
#

# the ticket is no longer needed
$TicketObject->TicketDelete(
    TicketID => $TicketID,
    UserID   => 1,
);

for my $Certificate (@Certificates) {
    my @Keys = $CryptObject->Search(
        Search => $Certificate->{CertificateHash},
    );
    $Self->True(
        $Keys[0] || '',
        "$Certificate->{CertificateName} Search()",
    );

    my %Result = $CryptObject->PrivateRemove(
        Hash    => $Keys[0]->{Hash},
        Modulus => $Keys[0]->{Modulus},
    );
    $Self->True(
        $Result{Successful} || '',
        "$Certificate->{CertificateName} PrivateRemove() - $Result{Message}",
    );

    %Result = $CryptObject->CertificateRemove(
        Hash        => $Keys[0]->{Hash},
        Fingerprint => $Keys[0]->{Fingerprint},
    );

    $Self->True(
        $Result{Successful} || '',
        "$Certificate->{CertificateName} CertificateRemove()",
    );
}

1;
