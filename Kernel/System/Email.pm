# --
# Kernel/System/Email.pm - the global email send module
# Copyright (C) 2001-2006 OTRS GmbH, http://otrs.org/
# --
# $Id: Email.pm,v 1.19 2006-09-15 09:01:10 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Email;

use strict;
use MIME::Words qw(:all);
use MIME::Entity;
use Mail::Address;
use Kernel::System::Encode;
use Kernel::System::Crypt;

use vars qw($VERSION);
$VERSION = '$Revision: 1.19 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::Email - to send email

=head1 SYNOPSIS

Global module to send email via sendmail or SMTP.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a object

  use Kernel::Config;
  use Kernel::System::Log;
  use Kernel::System::Time;
  use Kernel::System::DB;
  use Kernel::System::Email;

  my $ConfigObject = Kernel::Config->new();
  my $LogObject    = Kernel::System::Log->new(
      ConfigObject => $ConfigObject,
  );
  my $TimeObject    = Kernel::System::Time->new(
      ConfigObject => $ConfigObject,
  );
  my $DBObject = Kernel::System::DB->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
  );
  my $SendObject = Kernel::System::Email->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
      DBObject => $DBObject,
      TimeObject => $TimeObject,
  );

=cut

sub new {
    my $Type = shift;
    my %Param = @_;
    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);
    # get common objects
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }
    # debug level
    $Self->{Debug} = $Param{Debug} || 0;
    # check all needed objects
    foreach (qw(ConfigObject LogObject DBObject TimeObject)) {
        die "Got no $_" if (!$Self->{$_});
    }
    # load generator backend module
    my $GenericModule = $Self->{ConfigObject}->Get('SendmailModule')
      || 'Kernel::System::Email::Sendmail';
    if (!eval "require $GenericModule") {
        die "Can't load sendmail backend module $GenericModule! $@";
    }
    # create backend object
    $Self->{Backend} = $GenericModule->new(%Param);

    # create encode object
    $Self->{EncodeObject} = Kernel::System::Encode->new(%Param);

    $Self->{FQDN} = $Self->{ConfigObject}->Get('FQDN');
    $Self->{Organization} = $Self->{ConfigObject}->Get('Organization');
    $Self->{SendmailBcc} = $Self->{ConfigObject}->Get('SendmailBcc');

    return $Self;
}

=item Send()

To send an email without already created header:

    if ($SendObject->Send(
      From => 'me@example.com',
      To => 'friend@example.com',
      Subject => 'Some words!',
      Type => 'text/plain',
      Charset => 'iso-8859-15',
      Body => 'Some nice text',
      Loop => 1, # not required, removes smtp from
      Attachment => [
        {
          Filename    => "somefile.csv",
          Content     => $ContentCSV,
          ContentType => "text/csv",
        }
        {
          Filename    => "somefile.png",
          Content     => $ContentPNG,
          ContentType => "image/png",
        }
      ],
      Sign => {
          Type => 'PGP',
          SubType => 'Inline|Detached',
          Key => '81877F5E',

          Type => 'SMIME',
          Key => '3b630c80',
      },
      Crypt => {
          Type => 'PGP',
          SubType => 'Inline|Detached',
          Key => '81877F5E',

          Type => 'SMIME',
          Key => '3b630c80',
      },
    )) {
        print "Email sent!\n";
    }
    else {
        print "Email not sent!\n";
    }

=cut

sub Send {
    my $Self = shift;
    my %Param = @_;

    # check needed stuff
    if (!$Param{Body}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Body!");
        return;
    }
    if (!$Param{To} && !$Param{Cc} && !$Param{Bcc}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need To, Cc or Bcc!");
        return;
    }
    # check from
    if (!$Param{From}) {
        $Param{From} = $Self->{ConfigObject}->Get('AdminEmail') || 'otrs@localhost';
    }

    # get sign options for inline
    if ($Param{Sign} && $Param{Sign}->{SubType} && $Param{Sign}->{SubType} eq 'Inline') {
        my $CryptObject = Kernel::System::Crypt->new(
            LogObject => $Self->{LogObject},
            DBObject => $Self->{DBObject},
            ConfigObject => $Self->{ConfigObject},
            CryptType => $Param{Sign}->{Type},
        );
        if (!$CryptObject) {
            return;
        }
        my $Body = $CryptObject->Sign(
            Message => $Param{Body},
            Key => $Param{Sign}->{Key},
            Type => 'Clearsign',
        );
        if ($Body) {
            $Param{Body} = $Body;
        }
    }
    # crypt inline
    if ($Param{Crypt} && $Param{Crypt}->{Type} eq 'PGP' && $Param{Crypt}->{SubType} eq 'Inline') {
        my $CryptObject = Kernel::System::Crypt->new(
            LogObject => $Self->{LogObject},
            DBObject => $Self->{DBObject},
            ConfigObject => $Self->{ConfigObject},
            CryptType => $Param{Crypt}->{Type},
        );
        if (!$CryptObject) {
            return;
        }
        my $Body = $CryptObject->Crypt(
            Message => $Param{Body},
            Key => $Param{Crypt}->{Key},
            Type => $Param{Crypt}->{SubType},
        );
        if ($Body) {
            $Param{Body} = $Body;
        }
    }

    # build header
    my %Header = ();
    foreach (qw(From To Cc Bcc Subject Charset Reply-To)) {
        if ($Param{$_}) {
            $Header{$_} = $Param{$_};
        }
    }
    # loop
    if ($Param{Loop}) {
        $Header{'X-Loop'} = 'yes';
        $Header{'Precedence'} = 'bulk';
    }
    # do some encode
    foreach (qw(From To Cc Bcc Subject)) {
        if ($Header{$_} && $Param{Charset}) {
            $Header{$_} = encode_mimewords(Encode::encode($Param{Charset},$Header{$_}), Charset => $Param{Charset}) || '';
        }
    }
    $Header{'X-Mailer'} = $Self->{ConfigObject}->Get('Product')." Mail Service (".$Self->{ConfigObject}->Get('Version').")";
    $Header{'X-Powered-By'} = 'OTRS - Open Ticket Request System (http://otrs.org/)';
    $Header{'Type'} = $Param{Type} || 'text/plain';
    if ($Param{Charset} && $Param{Charset} =~ /utf(8|-8)/i) {
#        $Header{'Encoding'} = '8bit';
        $Header{'Encoding'} = 'base64';
    }
    else {
#        $Header{'Encoding'} = '7bit';
        $Header{'Encoding'} = 'quoted-printable';
    }
    # check and create message id
    if ($Param{'Message-ID'}) {
        $Header{'Message-ID'} = $Param{'Message-ID'};
    }
    else {
        $Header{'Message-ID'} = $Self->_MessageIDCreate();
    }
    if ($Param{'In-Reply-To'}) {
        $Header{'In-Reply-To'} = $Param{'In-Reply-To'};
        $Header{'References'} = $Param{'In-Reply-To'};
    }
    # add date header
    $Header{'Date'} = "Date: ".$Self->{TimeObject}->MailTimeStamp();
    # add organisation header
    if ($Self->{Organization}) {
        $Header{'Organization'} = $Self->{Organization};
    }
    # body encode
    $Self->{EncodeObject}->EncodeOutput(\$Param{Body});
    # build MIME::Entity
    my $Entity = MIME::Entity->build(%Header, Data => $Param{Body});

    # add attachments to email
    if ($Param{Attachment}) {
        foreach my $Tmp (@{$Param{Attachment}}) {
            my %Upload = %{$Tmp};
            if ($Upload{Content} && $Upload{Filename}) {
                # content encode
                $Self->{EncodeObject}->EncodeOutput(\$Upload{Content});
                # attach file to email
                $Entity->attach(
                    Filename => $Upload{Filename},
                    Data     => $Upload{Content},
                    Type     => $Upload{ContentType},
                    Disposition => $Upload{Disposition} || 'inline',
                    Encoding => $Upload{Encoding} || 'base64',
                );
            }
        }
    }

    # get sign options for detached
    if ($Param{Sign} && $Param{Sign}->{SubType} && $Param{Sign}->{SubType} eq 'Detached') {
        my $CryptObject = Kernel::System::Crypt->new(
            LogObject => $Self->{LogObject},
            DBObject => $Self->{DBObject},
            ConfigObject => $Self->{ConfigObject},
            CryptType => $Param{Sign}->{Type},
        );
        if (!$CryptObject) {
            return;
        }
        if ($Param{Sign}->{Type} eq 'PGP') {
            # make_multipart -=> one attachment for sign
            $Entity->make_multipart(
                "signed; micalg=pgp-sha1; protocol=\"application/pgp-signature\";",
                Force => 1,
            );
            # get string to sign
            my $T = $Entity->parts(0)->as_string();
            # according to RFC3156 all line endings MUST be CR/LF
            $T =~ s/\x0A/\x0D\x0A/g;
            $T =~ s/\x0D+/\x0D/g;
            my $Sign = $CryptObject->Sign(
                Message => $T,
                Key => $Param{Sign}->{Key},
                Type => 'Detached',
            );
            # it sign failed, remove singned multi part
            if (!$Sign) {
                $Entity->make_singlepart();
            }
            else {
                # addach sign to email
                $Entity->attach(
                    Filename => 'pgp_sign.asc',
                    Data => $Sign,
                    Type => "application/pgp-signature",
                    Encoding => "7bit",
                );
            }
        }
        elsif ($Param{Sign}->{Type} eq 'SMIME') {
            # make multi part
            $Entity->make_multipart("mixed;", Force => 1,);
            # get header to remember
            my $head = $Entity->head;
            $head->delete('MIME-Version');
            $head->delete('Content-Type');
            $head->delete('Content-Disposition');
            $head->delete('Content-Transfer-Encoding');
            my $Header = $head->as_string();
            # get string to sign
            my $T = $Entity->parts(0)->as_string();
            # according to RFC3156 all line endings MUST be CR/LF
            $T =~ s/\x0A/\x0D\x0A/g;
            $T =~ s/\x0D+/\x0D/g;
            my $Sign = $CryptObject->Sign(
                Message => $T,
                Hash => $Param{Sign}->{Key},
                Type => 'Detached',
            );
            use MIME::Parser;
            my $Parser = new MIME::Parser;
            $Parser->output_to_core("ALL");
#        $Parser->output_dir($Self->{ConfigObject}->Get('TempDir'));
            $Entity = $Parser->parse_data($Header.$Sign);
        }
    }
    # crypt detached!
#my $NotCryptedBody = $Entity->body_as_string();
    if ($Param{Crypt} && $Param{Crypt}->{Type} && $Param{Crypt}->{Type} eq 'PGP' && $Param{Crypt}->{SubType} eq 'Detached') {
        my $CryptObject = Kernel::System::Crypt->new(
            LogObject => $Self->{LogObject},
            DBObject => $Self->{DBObject},
            ConfigObject => $Self->{ConfigObject},
            CryptType => $Param{Crypt}->{Type},
        );
        if (!$CryptObject) {
            return;
        }
        # make_multipart -=> one attachment for encryption
        $Entity->make_multipart(
            "encrypted; protocol=\"application/pgp-encrypted\";",
            Force => 1,
        );
        # crypt it
        my $Crypt = $CryptObject->Crypt(
            Message => $Entity->parts(0)->as_string(),
#            Key => '81877F5E',
#            Key => '488A0B8F',
            Key => $Param{Crypt}->{Key},
        );
        # it crypt failed, remove encrypted multi part
        if (!$Crypt) {
            $Entity->make_singlepart();
        }
        else {
            # eliminate all parts
            $Entity->parts([]);
            # add crypted parts
            $Entity->attach(Type => "application/pgp-encrypted",
                Disposition => "attachment",
                Data => ["Version: 1",""],
                Encoding => "7bit",
            );
            $Entity->attach(Type => "application/octet-stream",
                Disposition => "inline",
                Filename => "msg.asc",
                Data => $Crypt,
                Encoding => "7bit",
            );
        }
    }
    elsif ($Param{Crypt} && $Param{Crypt}->{Type} && $Param{Crypt}->{Type} eq 'SMIME') {
        my $CryptObject = Kernel::System::Crypt->new(
            LogObject => $Self->{LogObject},
            DBObject => $Self->{DBObject},
            ConfigObject => $Self->{ConfigObject},
            CryptType => $Param{Crypt}->{Type},
        );
        if (!$CryptObject) {
            return;
        }
        # make_multipart -=> one attachment for encryption
        $Entity->make_multipart("mixed;", Force => 1,);
        # get header to remember
        my $head = $Entity->head;
        $head->delete('MIME-Version');
        $head->delete('Content-Type');
        $head->delete('Content-Disposition');
        $head->delete('Content-Transfer-Encoding');
        my $Header = $head->as_string();
        # crypt it
        my $Crypt = $CryptObject->Crypt(
            Message => $Entity->parts(0)->as_string(),
            Hash => $Param{Crypt}->{Key},
        );
        use MIME::Parser;
        my $Parser = new MIME::Parser;
#        $Parser->output_dir($Self->{ConfigObject}->Get('TempDir'));
        $Entity = $Parser->parse_data($Header.$Crypt);
    }


    # get header from Entity
    my $head = $Entity->head;
    $Param{Header} = $head->as_string();
    # remove not needed folding of email heads, we do have many problems with email clients
    my @Headers = split(/\n/, $Param{Header});
    # reset orig header
    $Param{Header} = '';
    foreach my $Line (@Headers) {
        $Line =~ s/^    (.*)$/ $1/;
        $Param{Header} .= $Line."\n";
    }
    # get body from Entity
    $Param{Body} = $Entity->body_as_string();

    # get recipients
    my @ToArray = ();
    my $To = '';
    foreach (qw(To Cc Bcc)) {
        if ($Param{$_}) {
            foreach my $Email (Mail::Address->parse($Param{$_})) {
                push (@ToArray, $Email->address());
                if ($To) {
                    $To .= ', ';
                }
                $To .= $Email->address();
            }
        }
    }
    if ($Self->{SendmailBcc}) {
        push (@ToArray, $Self->{SendmailBcc});
        $To .= ", $Self->{SendmailBcc}";
    }

    # get sender
    my @Sender = Mail::Address->parse($Param{From});
    my $RealFrom = $Sender[0]->address();
    if ($Param{Loop}) {
        $RealFrom = $Self->{ConfigObject}->Get('SendmailNotificationEnvelopeFrom') || '';
    }

    # debug
    if ($Self->{Debug} > 1) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "Sent email to '$To' from '$RealFrom'. ".
                "Subject => $Param{Subject};",
        );
    }
#    $Self->{EncodeObject}->EncodeOutput(\$Param{Header});
    # send email to backend
    if ($Self->{Backend}->Send(
        From => $RealFrom,
        ToArray => \@ToArray,
        Header => \$Param{Header},
        Body => \$Param{Body},
    )) {
        return (\$Param{Header}, \$Param{Body});
    }
    else {
        return;
    }
}

=item Bounce()

Bounce an email

    $SendObject->Bounce(
        From => 'me@example.com',
        To => 'friend@example.com',
        Email => $Email,
    );

=cut

sub Bounce {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(From To Email)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # check and create message id
    my $MessageID = '';
    if ($Param{'Message-ID'}) {
        $MessageID = $Param{'Message-ID'};
    }
    else {
        $MessageID = $Self->_MessageIDCreate();
    }
    # split body && header
    my @EmailPlain = split(/\n/, $Param{Email});
    my $EmailObject = new Mail::Internet(\@EmailPlain);
    # add ReSent header
    my $HeaderObject = $EmailObject->head();
    my $OldMessageID = $HeaderObject->get('Message-ID') || '??';
    $HeaderObject->replace('Message-ID', $MessageID);
    $HeaderObject->replace('ReSent-Message-ID', $OldMessageID);
    $HeaderObject->replace('Resent-To', $Param{To});
    $HeaderObject->replace('Resent-From', $Param{From});
    my $Body = $EmailObject->body();
    my $BodyAsString = '';
    foreach (@{$Body}) {
        $BodyAsString .= $_."\n";
    }
    my $HeaderAsString = $HeaderObject->as_string();
    # debug
    if ($Self->{Debug} > 1) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "Bounced email to '$Param{To}' from '$Param{From}'. ".
                "MessageID => $OldMessageID;",
        );
    }

    if ($Self->{Backend}->Send(
        From => $Param{From},
        ToArray => [$Param{To}],
        Header => \$HeaderAsString,
        Body => \$BodyAsString,
    )) {
        return 1;
    }
    else {
        return;
    }


}

sub _MessageIDCreate {
    my $Self = shift;
    my %Param = @_;
    return "Message-ID: <".time().".".rand(999999)."\@$Self->{FQDN}>";
}
1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.19 $ $Date: 2006-09-15 09:01:10 $

=cut

