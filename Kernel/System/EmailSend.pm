# --
# EmailSend.pm - the global email send module
# Copyright (C) 2001 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: EmailSend.pm,v 1.1 2001-12-21 17:54:40 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::EmailSend;

use strict;
use MIME::Words qw(:all);

use vars qw($VERSION);
$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    my $Self = {}; # allocate new hash for object
    bless ($Self, $Type);

    # get config data
    $Self->{ConfigObject} = $Param{ConfigLogObject} || die "Got no ConfigObject!";
    $Self->{Sendmail} = $Self->{ConfigObject}->Get('Sendmail');
    $Self->{SendmailBcc} = $Self->{ConfigObject}->Get('SendmailBcc');
    $Self->{FQDN} = $Self->{ConfigObject}->Get('FQDN');

    return $Self;
}
# --
sub Send {
    my $Self = shift;
    my %Param = @_;
    my $From = $Param{From} || '';
    my $RealName = $Param{RealName} || '';
    my $To = $Param{To} || '';
    my $ToOrig = $To;
    my $Cc = $Param{Cc} || '';
    my $Subject = $Param{Subject} || '';
    my $Charset = $Param{Charset} || 'iso-8859-1';
    my $Time = time();
    my $Random = rand(999999);
    my $UserID = $Param{UserID} || 0;
    my $TicketID = $Param{TicketID} || 0;
    my $TicketObject = $Param{TicketObject} || '';
    my $ArticleID = $Param{ArticleID} || '';
    my $Body = $Param{Body};
    my $InReplyTo = $Param{InReplyTo} || '';
    my $RetEmail = $Param{Email};
    my $DBObject = $Param{DBObject} || '';
    my $Loop = $Param{Loop} || 0;
    my $HistoryType = $Param{HistoryType} || 'SendAnswer';
    # do some encode
#    $To = encode_mimeword($To) if ($To);
#    $Cc = encode_mimeword($Cc) if ($Cc);
#    $Subject = encode_mimeword($Subject) if ($Subject);
    # --
    # build mail ...
    my @Mail = ("From: $From\n");
    push @Mail, "To: $To\n";
    push @Mail, "Cc: $Cc\n" if ($Cc);
    push @Mail, "Bcc: $Self->{SendmailBcc}\n" if ($Self->{SendmailBcc});
    push @Mail, "Subject: $Subject\n";
    push @Mail, "In-Reply-To: $InReplyTo\n" if ($InReplyTo);
    push @Mail, "Message-ID: <$Time.$Random.$TicketID.$ArticleID.$UserID\@$Self->{FQDN}>\n";
    push @Mail, "X-Mailer: Open-Ticket-Request-System Mail Service ($VERSION)\n";
    push @Mail, "X-OTRS-Loop: $From\n";
    push @Mail, "Precedence: bulk\nX-Loop: $From\n" if ($Loop);
    push @Mail, "Content-Type: TEXT/PLAIN; charset=$Charset\n";
    push @Mail, "Content-Transfer-Encoding: 8BIT\n";
    push @Mail, "Mime-Version: 1.0\n";
    push @Mail, "\n";
    push @Mail, $Body;
    push @Mail, "\n";

    # --
    # send mail
    open( MAIL, "|$Self->{Sendmail} '$RetEmail' " );
    print MAIL @Mail;
    close(MAIL);

    # --
    # write article to fs
    # --
    if (($ArticleID) && ($DBObject)) {
        my $ArticleObject = Kernel::System::Article->new(DBObject => $DBObject);
        $ArticleObject->WriteArticle(ArticleID => $ArticleID, Email => \@Mail);
    }

    # --
    # write history
    # --
    if ($TicketObject) {
        $TicketObject->AddHistoryRow(
          TicketID => $TicketID,
          ArticleID => $ArticleID,
          HistoryType => $HistoryType,
          Name => "Sent email to '$ToOrig'.",
          CreateUserID => $UserID,
        );
    }

    return 1;
}
# --
sub Bounce {
    my $Self = shift;
    my %Param = @_;

    # build bounce mail ...
    my @Mail = ("From: old_from\n");
    push @Mail, "To: old_to\n";
#       push @Mail, "Cc: $cc\n" if ($cc);
    push @Mail, "Subject: old_subject\n";
#    push @Mail, "Message-ID: old_msgid\n" if (old_msgid);
    push @Mail, "X-Mailer: OpenTicketRequestSystem Mail Service ($VERSION)\n";
    push @Mail, "Content-Type: TEXT/PLAIN; charset=Charset\n";
    push @Mail, "Content-Transfer-Encoding: 8BIT\n";
    push @Mail, "ReSent-Date: timescalar\n";
    push @Mail, "Resent-From: from\n";
    push @Mail, "Resent-To: to\n";
    push @Mail, "ReSent-Subject: old_subject\n";
    push @Mail, "ReSent-Message-ID: <>\n";
    push @Mail, "\n";
#    push @Mail, old_text;
    push @Mail, "\n";

    # send mail
    open( MAIL, "|$Self->{Sendmail} \"from\" " );
    print MAIL @Mail;
    close(MAIL);

    return 1;
}
# --

1;

 
