# --
# Kernel/System/Ticket/Article.pm - global article module for OTRS kernel
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Article.pm,v 1.70.2.4 2004-10-01 16:22:32 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

use strict;
use MIME::Words qw(:all);
use MIME::Entity;
use Mail::Internet;
use Kernel::System::StdAttachment;
use Kernel::System::Crypt;

use vars qw($VERSION);
$VERSION = '$Revision: 1.70.2.4 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::Ticket::Article - sub module of Kernel::System::Ticket

=head1 SYNOPSIS

All article functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item ArticleCreate()

create an article

  my $ArticleID = $TicketObject->ArticleCreate(
      TicketID => 123,
      ArticleType => 'note-internal' # email-external|email-internal|phone|fax|...
      SenderType => 'agent',         # agent|system|customer
      From => 'Some Agent <email@example.com>',   # not required but useful
      To => 'Some Customer A <customer-a@example.com>', # not required but useful
      Cc => 'Some Customer B <customer-b@example.com>', # not required but useful
      ReplyTo => 'Some Customer B <customer-b@example.com>', # not required
      Subject => 'some short description',        # required
      Body => 'the message text',                 # required
      MessageID => '<asdasdasd.123@example.com>', # not required but useful
      ContentType => 'text/plain; charset=ISO-8859-15',
      HistoryType => 'OwnerUpdate',  # Move|AddNote|PriorityUpdate|WebRequestCustomer|...
      HistoryComment => 'Some free text!',
      UserID => 123,

      NoAgentNotify => 0,            # if you don't want to send agent notifications
      ForceNotificationToUserID => [1,43,56],     # if you want to force somebody
  );

=cut

sub ArticleCreate {
    my $Self = shift;
    my %Param = @_;
    my $ValidID 	= $Param{ValidID} || 1;
    my $IncomingTime    = $Self->{TimeObject}->SystemTime();
    # create ArticleContentPath
    if (!$Self->{ArticleContentPath}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need ArticleContentPath!");
        return;
    }
    # lockups if no ids!!!
    if (($Param{ArticleType}) && (!$Param{ArticleTypeID})) {
        $Param{ArticleTypeID} = $Self->ArticleTypeLookup(ArticleType => $Param{ArticleType});
    }
    if (($Param{SenderType}) && (!$Param{SenderTypeID})) {
        $Param{SenderTypeID} = $Self->ArticleSenderTypeLookup(SenderType => $Param{SenderType});
    }
    # check needed stuff
    foreach (qw(TicketID UserID ArticleTypeID SenderTypeID HistoryType HistoryComment)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # add 'no body found!' if there is no body there!
    if (!$Param{Body}) {
        $Param{Body} = 'no body found!';
    }
    # if body isn't text, attach body as attachment (mostly done by OE) :-/
    elsif ($Param{ContentType} && $Param{ContentType} !~ /\btext\b/i) {
        $Param{AttachContentType} = $Param{ContentType};
        $Param{AttachBody} = $Param{Body};
        $Param{ContentType} = 'text/plain';
        $Param{Body} = "## no text/plain body => see attachment ($Param{ContentType}) ##";
    }
    else {
        # fix some bad stuff from some browsers (Opera)!
        $Param{Body} =~ s/(\n\r|\r\r\n|\r\n)/\n/g;
    }
    # strip not wanted stuff
    foreach (qw(From To Cc Subject MessageID ReplyTo)) {
        if (defined($Param{$_})) {
            $Param{$_} =~ s/\n|\r//g;
        }
        else {
            $Param{$_} = '';
        }
    }
    # db quoting
    my %DBParam = ();
    foreach (qw(From To Cc ReplyTo Subject Body MessageID ContentType TicketID ArticleTypeID SenderTypeID )) {
        if ($Param{$_}) {
            # qb quoting
            $DBParam{$_} = $Self->{DBObject}->Quote($Param{$_});
        }
        else {
            $DBParam{$_} = '';
        }
    }
    # do db insert
    my $SQL = "INSERT INTO article ".
      " (ticket_id, article_type_id, article_sender_type_id, a_from, a_reply_to, a_to, " .
      " a_cc, a_subject, a_message_id, a_body, a_content_type, content_path, ".
      " valid_id, incoming_time,  create_time, create_by, change_time, change_by) " .
      " VALUES ".
      " ($DBParam{TicketID}, $DBParam{ArticleTypeID}, $DBParam{SenderTypeID}, ".
      " '$DBParam{From}', '$DBParam{ReplyTo}', '$DBParam{To}', '$DBParam{Cc}', ".
      " '$DBParam{Subject}', ".
      " '$DBParam{MessageID}', ?, '$DBParam{ContentType}', ?, ".
      " $ValidID,  $IncomingTime, " .
      " current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
    if (!$Self->{DBObject}->Do(SQL => $SQL, Bind => [\$Param{Body}, \$Self->{ArticleContentPath}])) {
        return;
    }
    # get article id
    my $ArticleID = $Self->_ArticleGetId(
        TicketID => $Param{TicketID},
MessageID => $Param{MessageID},
        From => $Param{From},
        Subject => $Param{Subject},
        IncomingTime => $IncomingTime
    );
    # return if there is not article created
    if (!$ArticleID) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Can't get ArticleID from INSERT!",
        );
        return;
    }
    # if body isn't text, attach body as attachment (mostly done by OE) :-/
    if ($Param{AttachContentType} && $Param{AttachBody}) {
        my $FileName = 'unknown';
        if ($Param{AttachContentType} =~ /name="(.+?)"/i) {
            $FileName = $1;
        }
        $Self->ArticleWriteAttachment(
            Content => $Param{AttachBody},
            Filename => $FileName,
            ContentType => $Param{AttachContentType},
            ArticleID => $ArticleID,
            UserID => $Param{UserID},
        );
    }
    # add history row
    $Self->HistoryAdd(
        ArticleID => $ArticleID,
        TicketID => $Param{TicketID},
        CreateUserID => $Param{UserID},
        HistoryType => $Param{HistoryType},
        Name => $Param{HistoryComment},
    );
    # send auto response
    my %Ticket = $Self->TicketGet(TicketID => $Param{TicketID});
    my %State = $Self->{StateObject}->StateGet(ID => $Ticket{StateID});
    # send if notification should be sent (not for closed tickets)!?
    if ($Param{AutoResponseType} && $Param{AutoResponseType} eq 'auto reply' && ($State{TypeName} eq 'closed' || $State{TypeName} eq 'removed')) {
        # add history row
        $Self->HistoryAdd(
            TicketID => $Param{TicketID},
            HistoryType => 'Misc',
            Name => "Sent no auto response or agent notification because ticket is state-type '$State{TypeName}'!",
            CreateUserID => $Param{UserID},
        );
        # return ArticleID
        return $ArticleID;
    }
    if ($Param{AutoResponseType} && $Param{OrigHeader}) {
        # get auto default responses
        my %Data = $Self->{AutoResponse}->AutoResponseGetByTypeQueueID(
            QueueID => $Ticket{QueueID},
            Type => $Param{AutoResponseType},
        );
        my %OrigHeader = %{$Param{OrigHeader}};
        if ($Data{Text} && $Data{Realname} && $Data{Address} && !$OrigHeader{'X-OTRS-Loop'}) {
            # check / loop protection!
            if (!$Self->{LoopProtectionObject}->Check(To => $OrigHeader{From})) {
                # add history row
                $Self->HistoryAdd(
                    TicketID => $Param{TicketID},
                    HistoryType => 'LoopProtection',
                    Name => "\%\%$OrigHeader{From}",
                    CreateUserID => $Param{UserID},
                );
                # do log
                $Self->{LogObject}->Log(
                    Message => "Sent no '$Param{AutoResponseType}' for Ticket [".
                      "$Ticket{TicketNumber}] ($OrigHeader{From}) "
                );
            }
            else {
                # write log
                if ($Param{UserID} ne $Self->{ConfigObject}->Get('PostmasterUserID') ||
                     $Self->{LoopProtectionObject}->SendEmail(To => $OrigHeader{From})) {
                    # get history type
                    my %SendInfo = ();
                    if ($Param{AutoResponseType} =~/^auto follow up$/i) {
                        $SendInfo{AutoResponseHistoryType} = 'SendAutoFollowUp';
                    }
                    elsif ($Param{AutoResponseType} =~/^auto reply$/i) {
                        $SendInfo{AutoResponseHistoryType} = 'SendAutoReply';
                    }
                    elsif ($Param{AutoResponseType} =~/^auto reply\/new ticket$/i) {
                        $SendInfo{AutoResponseHistoryType} = 'SendAutoReply';
                    }
                    elsif ($Param{AutoResponseType} =~/^auto reject$/i) {
                        $SendInfo{AutoResponseHistoryType} = 'SendAutoReject';
                    }
                    else {
                        $SendInfo{AutoResponseHistoryType} = 'Misc';
                    }
                    $Self->SendAutoResponse(
                        %Data,
                        CustomerMessageParams => \%OrigHeader,
                        TicketNumber => $Ticket{TicketNumber},
                        TicketID => $Param{TicketID},
                        UserID => $Param{UserID},
                        HistoryType => $SendInfo{AutoResponseHistoryType},
                    );
                }
            }
        }
        # log that no auto response was sent!
        elsif ($Data{Text} && $Data{Realname} && $Data{Address} && $OrigHeader{'X-OTRS-Loop'}) {
            # add history row
            $Self->HistoryAdd(
                TicketID => $Param{TicketID},
                HistoryType => 'Misc',
                Name => "Sent no auto-response because the sender doesn't want ".
                  "a auto-response (e. g. loop or precedence header)",
                CreateUserID => $Param{UserID},
            );
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message => "Sent no '$Param{AutoResponseType}' for Ticket [".
                  "$Ticket{TicketNumber}] ($OrigHeader{From}) because the ".
                  "sender doesn't want a auto-response (e. g. loop or precedence header)"
            );
        }
    }
    # --
    # send no agent notification!?
    # --
    if ($Param{NoAgentNotify}) {
        # return ArticleID
        return $ArticleID;
    }
    # --
    # send agent notification!?
    # --
    my $To = '';
    if ($Param{HistoryType} =~ /^(EmailAgent|EmailCustomer|PhoneCallCustomer|WebRequestCustomer)$/i) {
        foreach ($Self->GetSubscribedUserIDsByQueueID(QueueID => $Ticket{QueueID})) {
	    my %UserData = $Self->{UserObject}->GetUserData(
                UserID => $_,
                Cached => 1,
                Valid => 1,
            );
            if ($UserData{UserSendNewTicketNotification}) {
                # send notification
                $Self->SendAgentNotification(
                    Type => $Param{HistoryType},
                    UserData => \%UserData,
                    CustomerMessageParams => \%Param,
                    TicketID => $Param{TicketID},
                    Queue => $Param{Queue},
                    UserID => $Param{UserID},
                );
            }
        }
    }
    elsif ($Param{HistoryType} =~ /^FollowUp$/i || $Param{HistoryType} =~ /^AddNote$/i) {
        # get owner
        my ($OwnerID, $Owner) = $Self->OwnerCheck(TicketID => $Param{TicketID});
        if ($OwnerID ne $Self->{ConfigObject}->Get('PostmasterUserID') && $OwnerID ne $Param{UserID}) {
            my %Preferences = $Self->{UserObject}->GetUserData(UserID => $OwnerID);
            if ($Preferences{UserSendFollowUpNotification}) {
                # send notification
                $Self->SendAgentNotification(
                    Type => $Param{HistoryType},
                    UserData => \%Preferences,
                    CustomerMessageParams => \%Param,
                    TicketID => $Param{TicketID},
                    Queue => $Param{Queue},
                    UserID => $Param{UserID},
                );
            }
        }
    }
    if ($Param{ForceNotificationToUserID} && ref($Param{ForceNotificationToUserID}) eq 'ARRAY') {
        my %AlreadySent = ();
        foreach (@{$Param{ForceNotificationToUserID}}) {
            if (!$AlreadySent{$_}) {
                $AlreadySent{$_} = 1;
                my %Preferences = $Self->{UserObject}->GetUserData(UserID => $_);
                # send notification
                $Self->SendAgentNotification(
                    Type => $Param{HistoryType},
                    UserData => \%Preferences,
                    CustomerMessageParams => \%Param,
                    TicketID => $Param{TicketID},
                    UserID => $Param{UserID},
                );
            }
        }
    }
    # return ArticleID
    return $ArticleID;
}
# just for internal use
sub _ArticleGetId {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(TicketID MessageID From Subject IncomingTime)) {
      if (!defined $Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        if ($Param{$_}) {
            $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
        }
    }
    # sql query
    my $SQL = "SELECT id FROM article " .
        " WHERE " .
        " ticket_id = $Param{TicketID} " .
        " AND ";
    if ($Param{MessageID}) {
        $SQL .= "a_message_id = '$Param{MessageID}' AND ";
    }
    if ($Param{From}) {
        $SQL .= "a_from = '$Param{From}' AND ";
    }
    if ($Param{Subject}) {
        $SQL .= "a_subject = '$Param{Subject}' AND ";
    }
    $SQL .= " incoming_time = '$Param{IncomingTime}'";
    # start query
    $Self->{DBObject}->Prepare(SQL => $SQL);
    my $Id;
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Id = $Row[0];
    }
    return $Id;
}

=item ArticleGetTicketIDOfMessageID()

get ticket id of given message id

  my $TicketID = $TicketObject->ArticleGetTicketIDOfMessageID(
      MessageID=> '<13231231.1231231.32131231@example.com>',
  );

=cut

sub ArticleGetTicketIDOfMessageID {
    my $Self = shift;
    my %Param = @_;
    my $TicketID;
    my $Count = 0;
    # check needed stuff
    if (!$Param{MessageID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need MessageID!");
        return;
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql query
    $Self->{DBObject}->Prepare(
        SQL => "SELECT ticket_id FROM article WHERE a_message_id = '$Param{MessageID}'",
        Limit => 10,
    );
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Count++;
        $TicketID = $Row[0];
    }
    # no reference found
    if ($Count == 0) {
        return;
    }
    # one found
    if ($Count == 1) {
        return $TicketID;
    }
    # more the one found! that should not be, a message_id should be uniq!
    else {
        $Self->{LogObject}->Log(
            Priority => 'Notice',
            Message => "The MessageID '$Param{MessageID}' is in your database more the one time! That should not be, a message_id should be uniq!",
        );
        return;
    }
}

=item ArticleGetContentPath()

get article content path

  my $Path = $TicketObject->ArticleGetContentPath(
      ArticleID => 123,
  );

=cut

sub ArticleGetContentPath {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{ArticleID}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need ArticleID!");
      return;
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # check cache
    if ($Self->{"ArticleGetContentPath::$Param{ArticleID}"}) {
        return $Self->{"ArticleGetContentPath::$Param{ArticleID}"};
    }
    # sql query
    my $Path;
    $Self->{DBObject}->Prepare(
        SQL => "SELECT content_path FROM article WHERE id = $Param{ArticleID}",
    );
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Path = $Row[0];
    }
    # fillup cache
    $Self->{"ArticleGetContentPath::$Param{ArticleID}"} = $Path;
    return $Path;
}

=item ArticleSenderTypeLookup()

article sender lookup

  my $SenderTypeID = $TicketObject->ArticleSenderTypeLookup(
      SenderType => 'customer', # customer|system|agent
  );

  my $SenderType = $TicketObject->ArticleSenderTypeLookup(
      SenderTypeID => 1,
  );

=cut

sub ArticleSenderTypeLookup {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{SenderType} && !$Param{SenderTypeID}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need SenderType or SenderTypeID!");
      return;
    }
    # get key
    if ($Param{SenderType}) {
        $Param{Key} = 'SenderType';
    }
    else {
        $Param{Key} = 'SenderTypeID';
    }
    # check if we ask the same request?
    if ($Self->{"ArticleSenderTypeLookup::$Param{$Param{Key}}"}) {
        return $Self->{"ArticleSenderTypeLookup::$Param{$Param{Key}}"};
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # get data
    my $SQL = '';
    if ($Param{SenderType}) {
        $SQL = "SELECT id FROM article_sender_type WHERE name = '$Param{SenderType}'";
    }
    else {
        $SQL = "SELECT name FROM article_sender_type WHERE id = $Param{SenderTypeID}";
    }
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        # store result
        $Self->{"ArticleSenderTypeLookup::$Param{$Param{Key}}"} = $Row[0];
    }
    # check if data exists
    if (!exists $Self->{"ArticleSenderTypeLookup::$Param{$Param{Key}}"}) {
        $Self->{LogObject}->Log(
            Priority => 'error', Message => "Found no SenderType(ID) for $Param{$Param{Key}}!",
        );
        return;
    }
    # return
    return $Self->{"ArticleSenderTypeLookup::$Param{$Param{Key}}"};
}

=item ArticleTypeLookup()

article type lookup

  my $ArticleTypeID = $TicketObject->ArticleTypeLookup(
      ArticleType => 'webrequest-customer', # note-internal|...
  );

  my $ArticleType = $TicketObject->ArticleTypeLookup(
      ArticleTypeID => 1,
  );

=cut

sub ArticleTypeLookup {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{ArticleType} && !$Param{ArticleTypeID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need ArticleType or ArticleTypeID!");
        return;
    }
    # get key
    if ($Param{ArticleType}) {
        $Param{Key} = 'ArticleType';
    }
    else {
        $Param{Key} = 'ArticleTypeID';
    }
    # check if we ask the same request (cache)?
    if ($Self->{"ArticleTypeLookup::$Param{$Param{Key}}"}) {
        return $Self->{"ArticleTypeLookup::$Param{$Param{Key}}"};
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # get data
    my $SQL = '';
    if ($Param{ArticleType}) {
        $SQL = "SELECT id FROM article_type WHERE name = '$Param{ArticleType}'",
    }
    else {
        $SQL = "SELECT name FROM article_type WHERE id = $Param{ArticleTypeID}",
    }
    $Self->{DBObject}->Prepare(SQL => $SQL);

    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        # store result
        $Self->{"ArticleTypeLookup::$Param{$Param{Key}}"} = $Row[0];
    }
    # check if data exists
    if (!$Self->{"ArticleTypeLookup::$Param{$Param{Key}}"}) {
        $Self->{LogObject}->Log(
            Priority => 'error', Message => "Found no ArticleType(ID) for $Param{$Param{Key}}!",
        );
        return;
    }
    # return
    return $Self->{"ArticleTypeLookup::$Param{$Param{Key}}"};
}

=item ArticleFreeTextSet()

set article free text

  $TicketObject->ArticleFreeTextSet(
      ArticleID => 123,
      Counter => 1,
      Key => 'Planet',
      Value => 'Sun',
      UserID => 123,
  );

=cut

sub ArticleFreeTextSet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ArticleID UserID Counter)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote for key an value
    $Param{Value} = $Self->{DBObject}->Quote($Param{Value}) || '';
    $Param{Key} = $Self->{DBObject}->Quote($Param{Key}) || '';
    # db update
    if ($Self->{DBObject}->Do(
        SQL => "UPDATE article SET a_freekey$Param{Counter} = '$Param{Key}', " .
          " a_freetext$Param{Counter} = '$Param{Value}', " .
          " change_time = current_timestamp, change_by = $Param{UserID} " .
          " WHERE id = $Param{ArticleID}",
    )) {
        return 1;
    }
    else {
        return;
    }
}

=item ArticleLastCustomerArticle()

get last customer article

  my %Article = $TicketObject->ArticleLastCustomerArticle(
      TicketID => 123,
  );

=cut

sub ArticleLastCustomerArticle {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{TicketID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need TicketID!");
        return;
    }
    # get article index
    my @Index = $Self->ArticleIndex(TicketID => $Param{TicketID}, SenderType => 'customer');
    # get article data
    if (@Index) {
        return $Self->ArticleGet(ArticleID => $Index[$#Index], TicketOverTime => 1);
    }
    else {
        my @Index = $Self->ArticleIndex(TicketID => $Param{TicketID});
        if (@Index) {
            return $Self->ArticleGet(ArticleID => $Index[$#Index], TicketOverTime => 1);
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "No article found for TicketID $Param{TicketID}!",
            );
            return;
        }
    }
}

=item ArticleFirstArticle()

get first article

  my %Article = $TicketObject->ArticleFirstArticle(
      TicketID => 123,
  );

=cut

sub ArticleFirstArticle {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{TicketID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need TicketID!");
        return;
    }
    # get article index
    my @Index = $Self->ArticleIndex(TicketID => $Param{TicketID});
    # get article data
    if (@Index) {
        return $Self->ArticleGet(ArticleID => $Index[0]);
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "No article found for TicketID $Param{TicketID}!",
        );
        return;
    }
}

=item ArticleIndex()

returns an array with article id's

  my @ArticleIDs = $TicketObject->ArticleIndex(
      TicketID => 123,
  );

  my @ArticleIDs = $TicketObject->ArticleIndex(
      SenderType => 'customer',
      TicketID => 123,
  );

=cut

sub ArticleIndex {
    my $Self = shift;
    my %Param = @_;
    my @Index = ();
    # check needed stuff
    if (!$Param{TicketID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need TicketID!");
        return;
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # db query
    my $SQL = '';
    if ($Param{SenderType}) {
        $SQL .= "SELECT at.id".
          " FROM ".
          " article at, article_sender_type ast ".
          " WHERE ".
          " at.ticket_id = $Param{TicketID} ".
          " AND ".
          " at.article_sender_type_id = ast.id ".
          " AND ".
          " ast.name = '$Param{SenderType}' ";
    }
    else {
        $SQL = "SELECT at.id".
          " FROM ".
          " article at ".
          " WHERE ".
          " at.ticket_id = $Param{TicketID} ";
    }
    $SQL .= " ORDER BY at.id";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        push (@Index, $Row[0]);
    }
    # return data
    return @Index;
}

=item ArticleContentIndex()

returns an array with hash ref

  my @ArticleIDs = $TicketObject->ArticleContentIndex(
      TicketID => 123,
  );

=cut

sub ArticleContentIndex {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{TicketID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need TicketID!");
        return;
    }
#    my @ArticleIndex = $Self->ArticleIndex(TicketID => $Param{TicketID});
#    my @ArticleBox = ();
#    foreach (@ArticleIndex) {
#        my %Article = $Self->ArticleGet(ArticleID => $_);
#        push (@ArticleBox, \%Article);
#    }
    my @ArticleBox = $Self->ArticleGet(TicketID => $Param{TicketID});
    # article attachments
    foreach my $Article (@ArticleBox) {
        my %AtmIndex = $Self->ArticleAttachmentIndex(
            ContentPath => $Article->{ContentPath},
            ArticleID => $Article->{ArticleID},
        );
        $Article->{Atms} = \%AtmIndex;
    }
    return @ArticleBox;
}

=item ArticleGet()

returns article data

  my %Article = $TicketObject->ArticleGet(
      ArticleID => 123,
  );

  my @ArticleIndex = $TicketObject->ArticleGet(
      TicketID => 123,
  );

=cut

sub ArticleGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{ArticleID} && !$Param{TicketID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need ArticleID or TicketID!");
        return;
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # article type lookup
    my $ArticleTypeSQL = '';
    if ($Param{ArticleType} && (ref($Param{ArticleType}) eq 'ARRAY')) {
        foreach (@{$Param{ArticleType}}) {
            if ($Self->ArticleTypeLookup(ArticleType => $_)) {
                if ($ArticleTypeSQL) {
                    $ArticleTypeSQL .= ',';
                }
                $ArticleTypeSQL .= $Self->ArticleTypeLookup(ArticleType => $_);
            }
        }
        if ($ArticleTypeSQL) {
            $ArticleTypeSQL = " AND sa.article_type_id IN ($ArticleTypeSQL)";
        }
    }
    # sql query
    my @Content = ();
    my $SQL = "SELECT sa.ticket_id, sa.a_from, sa.a_to, sa.a_cc, sa.a_subject, ".
        " sa.a_reply_to, sa. a_message_id, sa.a_body, ".
        " st.create_time_unix, st.ticket_state_id, st.queue_id, sa.create_time, ".
        " sa.a_content_type, sa.create_by, st.tn, article_sender_type_id, st.customer_id, ".
        " st.until_time, st.ticket_priority_id, st.customer_user_id, st.user_id, ".
        " su.$Self->{ConfigObject}->{DatabaseUserTableUser}, sa.article_type_id, ".
        " sa.a_freekey1, sa.a_freetext1, sa.a_freekey2, sa.a_freetext2, ".
        " sa.a_freekey3, sa.a_freetext3, st.ticket_answered, ".
        " sa.incoming_time, sa.id, st.freekey1, st.freetext1, st.freekey2, st.freetext2,".
        " st.freekey3, st.freetext3, st.freekey4, st.freetext4,".
        " st.freekey5, st.freetext5, st.freekey6, st.freetext6,".
        " st.freekey7, st.freetext7, st.freekey8, st.freetext8, st.ticket_lock_id".
        " FROM ".
        " article sa, ticket st, ".
        " $Self->{ConfigObject}->{DatabaseUserTable} su ".
        " where ";
    if ($Param{ArticleID}) {
        $SQL .= " sa.id = $Param{ArticleID}";
    }
    else {
        $SQL .= " sa.ticket_id = $Param{TicketID}";
    }
    $SQL .= " AND ".
        " sa.ticket_id = st.id ";
    # add article types
    if ($ArticleTypeSQL) {
        $SQL .= $ArticleTypeSQL;
    }
    $SQL .= " AND ".
        " st.user_id = su.$Self->{ConfigObject}->{DatabaseUserTableUserID} ".
        " ORDER BY sa.id ASC";

    $Self->{DBObject}->Prepare(SQL => $SQL);
    my %Ticket = ();
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my %Data;
        $Data{ArticleID} = $Row[31];
        $Data{TicketID} = $Row[0];
        $Ticket{TicketID} = $Data{TicketID};
        $Data{From} = $Row[1];
        $Data{To} = $Row[2];
        $Data{Cc} = $Row[3];
        $Data{Subject} = $Row[4];
        $Data{ReplyTo} = $Row[5],
        $Data{InReplyTo} = $Row[6];
        $Data{Body} = $Row[7];
        $Data{Age} = $Self->{TimeObject}->SystemTime() - $Row[8];
        $Ticket{CreateTimeUnix} = $Row[8];
#        $Ticket{Age} = $Data{Age}, 
        $Data{PriorityID} = $Row[18];
        $Ticket{PriorityID} = $Row[18];
        $Data{StateID} = $Row[9];
        $Ticket{StateID} = $Row[9];
        $Data{QueueID} = $Row[10];
        $Ticket{QueueID} = $Row[10];
        $Data{Created} = $Self->{TimeObject}->SystemTime2TimeStamp(SystemTime => $Row[30]);
        $Data{ContentType} = $Row[12];
        $Data{CreatedBy} = $Row[13];
        $Data{TicketNumber} = $Row[14];
        $Data{SenderTypeID} = $Row[15];
        if ($Row[12] && $Data{ContentType} =~ /charset=/i) {
            $Data{ContentCharset} = $Data{ContentType};
            $Data{ContentCharset} =~ s/.+?charset=("|'|)(\w+)/$2/gi;
            $Data{ContentCharset} =~ s/"|'//g ;
            $Data{ContentCharset} =~ s/(.+?);.*/$1/g;
        }
        else {
            $Data{ContentCharset} = '';
        }
        if ($Row[12] && $Data{ContentType} =~ /^(\w+\/\w+)/i) {
            $Data{MimeType} = $1;
            $Data{MimeType} =~ s/"|'//g ;
        } 
        else {
            $Data{MimeType} = '';
        }
        $Ticket{CustomerID} = $Row[16];
        $Ticket{CustomerUserID} = $Row[19];
        $Data{CustomerID} = $Row[16];
        $Data{CustomerUserID} = $Row[19];
        $Data{UserID} = $Row[20];
        $Ticket{UserID} = $Row[20];
        $Data{Owner} = $Row[21];
        $Data{ArticleTypeID} = $Row[22];
        $Data{FreeKey1} = $Row[23]; 
        $Data{FreeText1} = $Row[24];
        $Data{FreeKey2} = $Row[25];
        $Data{FreeText2} = $Row[26];
        $Data{FreeKey3} = $Row[27];
        $Data{FreeText3} = $Row[28];
        $Data{Answered} = $Row[29];
        $Data{TicketFreeKey1} = $Row[32];
        $Data{TicketFreeText1} = $Row[33];
        $Data{TicketFreeKey2} = $Row[34];
        $Data{TicketFreeText2} = $Row[35];
        $Data{TicketFreeKey3} = $Row[36];
        $Data{TicketFreeText3} = $Row[37];
        $Data{TicketFreeKey4} = $Row[38];
        $Data{TicketFreeText4} = $Row[39];
        $Data{TicketFreeKey5} = $Row[40];
        $Data{TicketFreeText5} = $Row[41];
        $Data{TicketFreeKey6} = $Row[42];
        $Data{TicketFreeText6} = $Row[43];
        $Data{TicketFreeKey7} = $Row[44];
        $Data{TicketFreeText7} = $Row[45];
        $Data{TicketFreeKey8} = $Row[46];
        $Data{TicketFreeText8} = $Row[47];
        $Data{IncomingTime} = $Row[30];
        $Data{RealTillTimeNotUsed} = $Row[17];
        $Ticket{LockID} = $Row[48];
        # strip not wanted stuff
        foreach (qw(From To Cc Subject)) {
            $Data{$_} =~ s/\n|\r//g if ($Data{$_});
        }
        push (@Content, {%Data, %Ticket});
    }
    # get SLA time
#    $Ticket{SLAAge} = $Self->{TimeObject}->SLATime(StartTime => $Ticket{CreateTimeUnix});
    # get priority name
    $Ticket{Priority} = $Self->PriorityLookup(ID => $Ticket{PriorityID});
    $Ticket{Lock} = $Self->{LockObject}->LockLookup(ID => $Ticket{LockID});
    # get queue name and other stuff
    my %Queue = $Self->{QueueObject}->QueueGet(ID => $Ticket{QueueID}, Cache => 1);
    # get state info
    my %StateData = $Self->{StateObject}->StateGet(ID => $Ticket{StateID}, Cache => 1);

    # article stuff
    my $LastCustomerCreateTime = 0;
    foreach my $Part (@Content) {
        # get sender type
        $Part->{SenderType} = $Self->ArticleSenderTypeLookup(
            SenderTypeID => $Part->{SenderTypeID},
        );
        # get article type
        $Part->{ArticleType} = $Self->ArticleTypeLookup(
            ArticleTypeID => $Part->{ArticleTypeID},
        );
        # get priority name
        $Part->{Priority} = $Ticket{Priority};
        $Part->{LockID} = $Ticket{LockID};
        $Part->{Lock} = $Ticket{Lock};
        $Part->{Queue} = $Queue{Name};
        if (!$Part->{RealTillTimeNotUsed} || $StateData{TypeName} !~ /^pending/i) {
            $Part->{UntilTime} = 0;
        }
        else {
            $Part->{UntilTime} = $Part->{RealTillTimeNotUsed} - $Self->{TimeObject}->SystemTime();
        }
        $Part->{StateType} = $StateData{TypeName};
        $Part->{State} = $StateData{Name};
        if ($Queue{EscalationTime} && ($Param{TicketID}||$Param{TicketOverTime}) && $Part->{SenderType} eq 'customer') {
            $LastCustomerCreateTime = (($Part->{IncomingTime} + ($Queue{EscalationTime}*60)) - $Self->{TimeObject}->SystemTime());
        }
    }
    foreach my $Part (@Content) {
        $Part->{TicketOverTime} = $LastCustomerCreateTime;
    }
    if ($Param{ArticleID}) {
        return %{$Content[0]};
    }
    else {
        return @Content;
    }
}

=item ArticleUpdate()

update a article item

Note: Key "Body", "Subject", "From", "To" and "Cc" is implemented.

  $TicketObject->ArticleUpdate(
      ArticleID => 123,
      Key => 'Body',
      Value => 'New Body',
      UserID => 123,
  );

=cut

sub ArticleUpdate {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ArticleID UserID Key)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # check needed stuff
    if (!defined($Param{Value})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Value!");
        return;
    }
    # map
    my %Map = (
        Body => 'a_body',
        Subject => 'a_subject',
        From => 'a_from',
        To => 'a_to',
        Cc => 'a_cc',
    );
    # db quote for key an value
    $Param{Value} = $Self->{DBObject}->Quote($Param{Value});
    $Param{Key} = $Self->{DBObject}->Quote($Param{Key});
    # db update
    if ($Self->{DBObject}->Do(
        SQL => "UPDATE article SET $Map{$Param{Key}} = '$Param{Value}', ".
          " change_time = current_timestamp, change_by = $Param{UserID} " .
          " WHERE id = $Param{ArticleID}",
    )) {
        return 1;
    }
    else {
        return;
    }
}


=item ArticleSend()

send article via email and create article with attachments

  my $ArticleID = $TicketObject->ArticleSend(
      TicketID => 123,
      ArticleType => 'note-internal' # email-external|email-internal|phone|fax|...
      SenderType => 'agent', # agent|system|customer
      From => 'Some Agent <email@example.com>', # not required but useful
      To => 'Some Customer A <customer-a@example.com>', # not required but useful
      Cc => 'Some Customer B <customer-b@example.com>', # not required but useful
      ReplyTo => 'Some Customer B <customer-b@example.com>', # not required
      Subject => 'some short description', # required
      Body => 'the message text', # required
      MessageID => '<asdasdasd.123@example.com>', # not required but useful
      Loop => 0, # 1|0 used for bulk emails
      Attach => [
        {
          Content => $Content,
          ContentType => $ContentType,
          Filename => 'lala.txt',
        },
        {
          Content => $Content,
          ContentType => $ContentType,
          Filename => 'lala1.txt',
        },
      ],
      ContentType => 'text/plain; charset=ISO-8859-15',
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
      HistoryType => 'OwnerUpdate', # Move|AddNote|PriorityUpdate|WebRequestCustomer|...
      HistoryComment => 'Some free text!',
      UserID => 123,
  );

=cut

sub ArticleSend {
    my $Self = shift;
    my %Param = @_;
    my $Time = $Self->{TimeObject}->SystemTime();
    my $Random = rand(999999);
    my $ToOrig = $Param{To} || '';
    my $Charset = $Param{Charset} || 'iso-8859-1';
    my $InReplyTo = $Param{InReplyTo} || '';
    my $Loop = $Param{Loop} || 0;
    my $HistoryType = $Param{HistoryType} || 'SendAnswer';
    # check needed stuff
    foreach (qw(TicketID UserID From Body)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    if (!$Param{ArticleType} && !$Param{ArticleTypeID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need ArticleType or ArticleTypeID!");
        return;
    }
    if (!$Param{SenderType} && !$Param{SenderTypeID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need SenderType or SenderTypeID!");
        return;
    }
    # clean up
    $Param{Body} =~ s/(\r\n|\n\r)/\n/g;
    $Param{Body} =~ s/\r/\n/g;

    # get sign options for inline
    if ($Param{Sign} && $Param{Sign}->{SubType} eq 'Inline') {
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
            $Self->HistoryAdd(
                TicketID => $Param{TicketID},
                ArticleID => $Param{ArticleID},
                Name => "Signed Mail (inline)",
                HistoryType => 'Misc',
                CreateUserID => $Param{UserID},
            );
        }
    }
    # create article
    my $MessageID = "<$Time.$Random.$Param{TicketID}.$Param{UserID}\@$Self->{FQDN}>";
    if ($Param{ArticleID} = $Self->ArticleCreate(
        %Param,
        MessageID => $MessageID,
    )) {
      ####
    }
    else {
      return;
    }
    # build mail ...
    # do some encode
    foreach (qw(From To Cc Bcc Subject)) {
        if ($Param{$_}) {
            $Param{$_} = encode_mimewords($Param{$_}, Charset => $Charset) || '';
        }
    }
    # check bcc
    if ($Self->{SendmailBcc}) {
        $Param{Bcc} .= ", $Self->{SendmailBcc}";
    }
    # build header
    my $Header = {
        From => $Param{From},
        To => $Param{To},
        Cc => $Param{Cc},
        Bcc => $Param{Bcc},
        Subject => $Param{Subject},
        'Message-ID' => $MessageID,
        'In-Reply-To:' => $InReplyTo,
        'References' => $InReplyTo,
        'X-Mailer' => "OTRS Mail Service ($VERSION)",
        'X-Powered-By' => 'OTRS - Open Ticket Request System (http://otrs.org/)',
        Organization => $Self->{Organization},
        Type => 'text/plain',
        Charset=> $Charset,
    };
    if ($Charset && $Charset =~ /utf(8|-8)/i) {
        $Header->{Encoding} = '8bit';
#        $Header->{'Encoding'} = 'base64';
    }
    else {
        $Header->{Encoding} = '7bit';
    }
    if ($Loop) {
        $$Header{'Precedence:'} = 'bulk';
        $$Header{'X-Loop'} = 'bulk';
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
            $Self->HistoryAdd(
                TicketID => $Param{TicketID},
                ArticleID => $Param{ArticleID},
                Name => "Crypted Mail (PGP inline)",
                HistoryType => 'Misc',
                CreateUserID => $Param{UserID},
            );
        }
    }

    my $Entity = MIME::Entity->build(%{$Header}, Data => $Param{Body});
    # add attachments to email
    if ($Param{Attach}) {
        foreach my $Tmp (@{$Param{Attach}}) {
            my %Upload = %{$Tmp};
            if ($Upload{Content} && $Upload{Filename}) {
              # add attachments to article
              $Self->ArticleWriteAttachment(
                %Upload,
                ArticleID => $Param{ArticleID},
                UserID => $Param{UserID},
              );
              # attach file to email
              $Entity->attach(
                Filename => $Upload{Filename},
                Data     => $Upload{Content},
                Type     => $Upload{ContentType},
                Encoding => "base64",
              );
            }
        }
    }
    # add std attachments to email
    if ($Param{StdAttachmentIDs}) {
        foreach my $ID (@{$Param{StdAttachmentIDs}}) {
            my %Data = $Self->{StdAttachmentObject}->StdAttachmentGet(ID => $ID);
            foreach (qw(Filename ContentType Content)) {
                if (!$Data{$_}) {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message => "No $_ found for std. attachment id $ID!",
                    );
                }
            }
            # attach file to email
            $Entity->attach(
                Filename => $Data{Filename},
                Data     => $Data{Content},
                Type     => $Data{ContentType},
                Encoding => "base64",
            );
            # add attachments to article storage
            $Self->ArticleWriteAttachment(
                %Data,
                ArticleID => $Param{ArticleID},
                UserID => $Param{UserID},
            );
        }
    }

# sign it
    # get sign options for detached
    if ($Param{Sign} && $Param{Sign}->{SubType} eq 'Detached') {
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
            # add attachments to article storage
            $Self->ArticleWriteAttachment(
                Content => $Sign,
                Filename => 'pgp_sign.asc',
                ContentType => 'application/pgp-signature',
                ArticleID => $Param{ArticleID},
                UserID => $Param{UserID},
            );
            # add history entry
            $Self->HistoryAdd(
                TicketID => $Param{TicketID},
                ArticleID => $Param{ArticleID},
                Name => "Signed Mail (PGP detached)",
                HistoryType => 'Misc',
                CreateUserID => $Param{UserID},
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
        $head->delete('Content‐Disposition');
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

#print STDERR "$Sign\n";
        use MIME::Parser;
        my $Parser = new MIME::Parser;
        $Parser->output_to_core("ALL");
#        $Parser->output_dir($Self->{ConfigObject}->Get('TempDir'));
        $Entity = $Parser->parse_data($Header.$Sign);
        # add history entry
        $Self->HistoryAdd(
            TicketID => $Param{TicketID},
            ArticleID => $Param{ArticleID},
            Name => "Signed Mail (SMIME detached)",
            HistoryType => 'Misc',
            CreateUserID => $Param{UserID},
        );
      }
    }
    # crypt detached!
#my $NotCryptedBody = $Entity->body_as_string();
    if ($Param{Crypt} && $Param{Crypt}->{Type} && $Param{Crypt}->{SubType} && $Param{Crypt}->{Type} eq 'PGP' && $Param{Crypt}->{SubType} eq 'Detached') {
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
            # add history entry
            $Self->HistoryAdd(
                TicketID => $Param{TicketID},
                ArticleID => $Param{ArticleID},
                Name => "Crypted Mail (PGP detached)",
                HistoryType => 'Misc',
                CreateUserID => $Param{UserID},
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
        $head->delete('Content‐Disposition');
        $head->delete('Content-Transfer-Encoding');
        my $Header = $head->as_string();
        # crypt it
        my $Crypt = $CryptObject->Crypt(
            Message => $Entity->parts(0)->as_string(),
            Hash => $Param{Crypt}->{Key},
        );
        use MIME::Parser;
        my $Parser = new MIME::Parser;
        $Parser->output_to_core("ALL");
#        $Parser->output_dir($Self->{ConfigObject}->Get('TempDir'));
        $Entity = $Parser->parse_data($Header.$Crypt);
        # add history entry
        $Self->HistoryAdd(
            TicketID => $Param{TicketID},
            ArticleID => $Param{ArticleID},
            Name => "Crypted Mail (SMIME detached)",
            HistoryType => 'Misc',
            CreateUserID => $Param{UserID},
        );
    }
    # get header
    my $head = $Entity->head;
    # send mail
    if ($Self->{SendmailObject}->Send(
        From => $Param{From},
        To => $Param{To},
        Cc => $Param{Cc},
        Bcc => $Param{Bcc},
        Subject => $Param{Subject},
        Header => $head->as_string(),
        Body => $Entity->body_as_string(),
    )) {
        # write article to fs
        if (!$Self->ArticleWritePlain(
            ArticleID => $Param{ArticleID},
            Email => $head->as_string."\n".$Entity->body_as_string,
#            Email => $head->as_string."\n".$NotCryptedBody,
            UserID => $Param{UserID})
        ) {
            return;
        }
        # delete attacment(s) and dir
        if ($Param{UploadFilename}) {
            $Param{UploadFilename} =~ s/(^.*\/).*?$/$1/;
            File::Path::rmtree([$Param{UploadFilename}]);
        }
        # log
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "Sent email to '$ToOrig' from '$Param{From}'. HistoryType => $HistoryType, Subject => $Param{Subject};",
        );
        return $Param{ArticleID};
    }
    else {
         # error
         return;
    }
}

=item ArticleBounce()

bounce an article

  $TicketObject->ArticleBounce(
      From => '',
      To => '',
      Email => $EmailAsString,
      TicketID => 123,
      ArticleID => 123,
      UserID => 123,
  );

=cut

sub ArticleBounce {
    my $Self = shift;
    my %Param = @_;
    my $Time = $Self->{TimeObject}->SystemTime();
    my $Random = rand(999999);
    my $From = $Param{From} || '';
    my $To = $Param{To} || '';
    my $ToOrig = $To;
    my $Cc = $Param{Cc} || '';
    my $HistoryType = $Param{HistoryType} || 'Bounce';
    # check needed stuff
    foreach (qw(From To UserID Email)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # build bounce mail ...
    # get old email
    my $Email = $Param{EmailPlain} || return;
    # split body && header
    my @EmailPlain = split(/\n/, $Email);
    my $EmailObject = new Mail::Internet(\@EmailPlain);
    # add ReSent header
    my $HeaderObject = $EmailObject->head();
    my $NewMessageID = "<$Time.$Random.$Param{TicketID}.0.$Param{UserID}\@$Self->{FQDN}>";
    my $OldMessageID = $HeaderObject->get('Message-ID') || '??';
    $HeaderObject->replace('Message-ID', $NewMessageID);
    $HeaderObject->replace('ReSent-Message-ID', $OldMessageID);
    $HeaderObject->replace('Resent-To', $To);
    $HeaderObject->replace('Resent-From', $From);
    my $Body = $EmailObject->body();
    my $BodyAsSting = '';
    foreach (@{$Body}) {
        $BodyAsSting .= $_."\n";
    }
    # pipe all into sendmail
    if (!$Self->{SendmailObject}->Send(
        From => $Param{From},
        To => $Param{To},
        Cc => $Param{Cc},
        Bcc => $Self->{SendmailBcc},
        Header => $HeaderObject->as_string(),
        Body => $BodyAsSting,
    )) {
        return;
    }
    # write history
    $Self->HistoryAdd(
        TicketID => $Param{TicketID},
        ArticleID => $Param{ArticleID},
        HistoryType => $HistoryType,
        Name => "\%\%$To",
        CreateUserID => $Param{UserID},
    );
    return 1;
}

=item SendAgentNotification()

send an agent notification via email

  $TicketObject->SendAgentNotification(
      TicketID => 123,
      CustomerMessageParams => {
         SomeParams => 'For the message!',
      },
      Type => 'Move', # notification types, see database
      UserData => { $UserObject->GetUserData(UserID => 3123)}
      UserID => 123,
  );

=cut

sub SendAgentNotification {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(CustomerMessageParams TicketID UserID Type UserData)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # comapt Type
    if ($Param{Type} =~/(EmailAgent|EmailCustomer|PhoneCallCustomer|WebRequestCustomer)/) {
        $Param{Type} = 'NewTicket';
    }
    # get old article for quoteing
    my %Article = $Self->ArticleLastCustomerArticle(TicketID => $Param{TicketID});
    # format body
    $Article{Body} =~ s/(^>.+|.{4,72})(?:\s|\z)/$1\n/gm if ($Article{Body});
    my %User = %{$Param{UserData}};
    # check recipients
    if (!$User{UserEmail}) {
        return;
    }
    # get user language
    my $Language = $User{UserLanguage} || $Self->{ConfigObject}->Get('DefaultLanguage') || 'en';
    # get notification data
    my %Notification = $Self->{NotificationObject}->NotificationGet(Name => $Language.'::Agent::'.$Param{Type});
    # get ref of email params
    my %GetParam = %{$Param{CustomerMessageParams}};
    # get notify texts
    foreach (qw(Subject Body)) {
#        $Param{$_} = $Notification{$_} || "No Notifiaction $_ for $Param{Type} found!";
        if (!$Notification{$_}) {
            $Notification{$_} = "No Notifiaction $_ for $Param{Type} found!";
        }
    }
    # get customer data and replace it with <OTRS_CUSTOMER_DATA_...
    if ($Article{CustomerUserID}) {
        my %CustomerUser = $Self->{CustomerUserObject}->CustomerUserDataGet(
            User => $Article{CustomerUserID},
        );
        # replace customer stuff with tags
        foreach (keys %CustomerUser) {
            if ($CustomerUser{$_}) {
                $Notification{Body} =~ s/<OTRS_CUSTOMER_DATA_$_>/$CustomerUser{$_}/gi;
                $Notification{Subject} =~ s/<OTRS_CUSTOMER_DATA_$_>/$CustomerUser{$_}/gi;
            }
        }
    }
    # cleanup all not needed <OTRS_CUSTOMER_DATA_ tags
    $Notification{Body} =~ s/<OTRS_CUSTOMER_DATA_.+?>/-/gi;
    $Notification{Subject} =~ s/<OTRS_CUSTOMER_DATA_.+?>/-/gi;

    # replace article stuff with tags
    foreach (qw(From To Cc Subject Body)) {
        if (!$GetParam{$_}) {
            $GetParam{$_} = $Article{$_} || '';
        }
        chomp $GetParam{$_};
    }
    # format body
    $GetParam{Body} =~ s/(^>.+|.{4,72})(?:\s|\z)/$1\n/gm if ($GetParam{Body});
    foreach (keys %GetParam) {
        if ($GetParam{$_}) {
            $Notification{Body} =~ s/<OTRS_CUSTOMER_$_>/$GetParam{$_}/gi;
            $Notification{Subject} =~ s/<OTRS_CUSTOMER_$_>/$GetParam{$_}/gi;
        }
    }
    # get owner data and replace it with <OTRS_OWNER_...
    my %Preferences = $Self->{UserObject}->GetUserData(UserID => $Article{UserID});
    foreach (keys %Preferences) {
        if ($Preferences{$_}) {
            $Notification{Body} =~ s/<OTRS_OWNER_$_>/$Preferences{$_}/gi;
            $Notification{Subject} =~ s/<OTRS_OWNER_$_>/$Preferences{$_}/gi;
        }
    }
    # get current user data
    my %CurrentUser = $Self->{UserObject}->GetUserData(UserID => $Param{UserID});
    foreach (keys %CurrentUser) {
        if ($CurrentUser{$_}) {
            $Notification{Body} =~ s/<OTRS_CURRENT_$_>/$CurrentUser{$_}/gi;
            $Notification{Subject} =~ s/<OTRS_CURRENT_$_>/$CurrentUser{$_}/gi;
        }
    }
    # replace it with given user params
    foreach (keys %User) {
        if ($User{$_}) {
            $Notification{Body} =~ s/<OTRS_$_>/$User{$_}/gi;
            $Notification{Subject} =~ s/<OTRS_$_>/$User{$_}/gi;
        }
    }
    # get ticket hook
    my $TicketHook = $Self->{ConfigObject}->Get('TicketHook');
    # prepare subject (insert old subject)
    if ($Notification{Subject} =~ /<OTRS_CUSTOMER_SUBJECT\[(.+?)\]>/) {
        my $SubjectChar = $1;
        $GetParam{Subject} =~ s/\[$TicketHook: $Article{TicketNumber}\] //g;
        $GetParam{Subject} =~ s/^(.{$SubjectChar}).*$/$1 [...]/;
        $Notification{Subject} =~ s/<OTRS_CUSTOMER_SUBJECT\[.+?\]>/$GetParam{Subject}/g;
    }
    $Notification{Subject} = "[$TicketHook: $Article{TicketNumber}] $Notification{Subject}";
    # prepare body (insert old email)
    $Notification{Body} =~ s/<OTRS_TICKET_ID>/$Param{TicketID}/g;
    $Notification{Body} =~ s/<OTRS_TICKET_NUMBER>/$Article{TicketNumber}/g;
    $Notification{Body} =~ s/<OTRS_QUEUE>/$Article{Queue}/g;
    $Notification{Body} =~ s/<OTRS_COMMENT>/$GetParam{Comment}/g if (defined $GetParam{Comment});
    # replace it with article data
    foreach (keys %Article) {
        if (defined($Article{$_})) {
            $Notification{Subject} =~ s/<OTRS_$_>/$Article{$_}/gi;
            $Notification{Body} =~ s/<OTRS_$_>/$Article{$_}/gi;
        }
        else {
            # cleanup
            $Notification{Subject} =~ s/<OTRS_$_>//gi;
            $Notification{Body} =~ s/<OTRS_$_>//gi;
        }
    }

    if ($Notification{Body} =~ /<OTRS_CUSTOMER_EMAIL\[(.+?)\]>/g) {
        my $Line = $1;
        my @Body = split(/\n/, $GetParam{Body});
        my $NewOldBody = '';
        foreach (my $i = 0; $i < $Line; $i++) {
            # 2002-06-14 patch of Pablo Ruiz Garcia
            # http://lists.otrs.org/pipermail/dev/2002-June/000012.html
            if($#Body >= $i) {
                $NewOldBody .= "> $Body[$i]\n";
            }
        }
        chomp $NewOldBody;
        $Notification{Body} =~ s/<OTRS_CUSTOMER_EMAIL\[.+?\]>/$NewOldBody/g;
    }
    # replace config options
    $Notification{Body} =~ s{<OTRS_CONFIG_(.+?)>}{$Self->{ConfigObject}->Get($1)}egx;
    $Notification{Subject} =~ s{<OTRS_CONFIG_(.+?)>}{$Self->{ConfigObject}->Get($1)}egx;

    # send notify
    $Self->{SendmailObject}->Send(
        From => $Self->{ConfigObject}->Get('NotificationSenderName').
             ' <'.$Self->{ConfigObject}->Get('NotificationSenderEmail').'>',
        To => $User{UserEmail},
        Subject => $Notification{Subject},
        Type => 'text/plain',
        Charset => $Notification{Charset},
        Body => $Notification{Body},
        Loop => 1,
    );

    # write history
    $Self->HistoryAdd(
        TicketID => $Param{TicketID},
        HistoryType => 'SendAgentNotification',
        Name => "\%\%$Param{Type}\%\%$User{UserEmail}",
        CreateUserID => $Param{UserID},
    );

    # log event
    $Self->{LogObject}->Log(
        Priority => 'notice',
        Message => "Sent agent '$Param{Type}' notification to '$User{UserEmail}'.",
    );

    return 1;
}

=item SendCustomerNotification()

send a customer notification via email

  my $ArticleID = $TicketObject->SendCustomerNotification(
      TicketID => 123,
      CustomerMessageParams => {
         SomeParams => 'For the message!',
      },
      Type => 'Move', # notification types, see database
      UserID => 123,
  );

=cut

sub SendCustomerNotification {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(CustomerMessageParams TicketID UserID Type)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # get old article for quoteing
    my %Article = $Self->ArticleLastCustomerArticle(TicketID => $Param{TicketID});
    # check if notification should be send
    my %Queue = $Self->{QueueObject}->QueueGet(ID => $Article{QueueID});
    if ($Param{Type} =~/^StateUpdate$/ && !$Queue{StateNotify}) {
        # need no notification
        return;
    }
    elsif ($Param{Type} =~/^OwnerUpdate$/ && !$Queue{OwnerNotify}) {
        # need no notification
        return;
    }
    elsif ($Param{Type} =~/^QueueUpdate$/ && !$Queue{MoveNotify}) {
        # need no notification
        return;
    }
    elsif ($Param{Type} =~/^LockUpdate$/ && !$Queue{LockNotify}) {
        # need no notification
        return;
    }
    # get language and send recipient
    my $Language = $Self->{ConfigObject}->Get('DefaultLanguage') || 'en';
    if ($Article{CustomerUserID}) {
        my %CustomerUser = $Self->{CustomerUserObject}->CustomerUserDataGet(
            User => $Article{CustomerUserID},
        );
        if ($CustomerUser{UserEmail}) {
            $Article{From} = $CustomerUser{UserEmail};
        }
        # get user language
        if ($CustomerUser{UserLanguage}) {
            $Language = $CustomerUser{UserLanguage};
        }
    }
    # check recipients
    if (!$Article{From} || $Article{From} !~ /@/) {
        return;
    }
    # get notification data
    my %Notification = $Self->{NotificationObject}->NotificationGet(Name => $Language.'::Customer::'.$Param{Type});
    # get notify texts
    foreach (qw(Subject Body)) {
        if (!$Notification{$_}) {
            $Notification{$_} = "No CustomerNotifiaction $_ for $Param{Type} found!";
        }
    }

    # format body
    $Article{Body} =~ s/(^>.+|.{4,72})(?:\s|\z)/$1\n/gm if ($Article{Body});
    foreach (keys %Article) {
        if ($Article{$_}) {
            $Notification{Body} =~ s/<OTRS_CUSTOMER_$_>/$Article{$_}/gi;
            $Notification{Subject} =~ s/<OTRS_CUSTOMER_$_>/$Article{$_}/gi;
        }
    }

    # get owner data
    my ($OwnerID, $Owner) = $Self->OwnerCheck(TicketID => $Param{TicketID});
    my %Preferences = $Self->{UserObject}->GetUserData(UserID => $OwnerID);
    foreach (keys %Preferences) {
        if ($Preferences{$_}) {
            $Notification{Body} =~ s/<OTRS_OWNER_$_>/$Preferences{$_}/gi;
            $Notification{Subject} =~ s/<OTRS_OWNER_$_>/$Preferences{$_}/gi;
        }
    }
    # get current user data
    my %CurrentPreferences = $Self->{UserObject}->GetUserData(UserID => $Param{UserID});
    foreach (keys %CurrentPreferences) {
        if ($CurrentPreferences{$_}) {
            $Notification{Body} =~ s/<OTRS_CURRENT_$_>/$CurrentPreferences{$_}/gi;
            $Notification{Subject} =~ s/<OTRS_CURRENT_$_>/$CurrentPreferences{$_}/gi;
        }
    }
    # get ticket hook
    my $TicketHook = $Self->{ConfigObject}->Get('TicketHook');
    # prepare subject (insert old subject)
    if ($Notification{Subject} =~ /<OTRS_CUSTOMER_SUBJECT\[(.+?)\]>/) {
        my $SubjectChar = $1;
        $Article{Subject} =~ s/\[$TicketHook: $Article{TicketNumber}\] //g;
        $Article{Subject} =~ s/^(.{$SubjectChar}).*$/$1 [...]/;
        $Notification{Subject} =~ s/<OTRS_CUSTOMER_SUBJECT\[.+?\]>/$Article{Subject}/g;
    }
    $Notification{Subject} = "[$TicketHook: $Article{TicketNumber}] $Notification{Subject}";
    # prepare body (insert old email)
    $Notification{Body} =~ s/<OTRS_TICKET_ID>/$Param{TicketID}/g;
    $Notification{Body} =~ s/<OTRS_TICKET_NUMBER>/$Article{TicketNumber}/g;
    $Notification{Body} =~ s/<OTRS_QUEUE>/$Param{Queue}/g if ($Param{Queue});
    if ($Notification{Body} =~ /<OTRS_CUSTOMER_EMAIL\[(.+?)\]>/g) {
        my $Line = $1;
        my @Body = split(/\n/, $Article{Body});
        my $NewOldBody = '';
        foreach (my $i = 0; $i < $Line; $i++) {
            # 2002-06-14 patch of Pablo Ruiz Garcia
            # http://lists.otrs.org/pipermail/dev/2002-June/000012.html
            if($#Body >= $i) {
                $NewOldBody .= "> $Body[$i]\n";
            }
        }
        chomp $NewOldBody;
        $Notification{Body} =~ s/<OTRS_CUSTOMER_EMAIL\[.+?\]>/$NewOldBody/g;
    }
    # get ref of email params
    my %GetParam = %{$Param{CustomerMessageParams}};
    foreach (keys %GetParam) {
        if ($GetParam{$_}) {
            $Notification{Body} =~ s/<OTRS_CUSTOMER_DATA_$_>/$GetParam{$_}/gi;
            $Notification{Subject} =~ s/<OTRS_CUSTOMER_DATA_$_>/$GetParam{$_}/gi;
        }
    }
    # replace config options
    $Notification{Body} =~ s{<OTRS_CONFIG_(.+?)>}{$Self->{ConfigObject}->Get($1)}egx;
    $Notification{Subject} =~ s{<OTRS_CONFIG_(.+?)>}{$Self->{ConfigObject}->Get($1)}egx;

    # send notify
    my %Address = $Self->{QueueObject}->GetSystemAddress(QueueID => $Article{QueueID});
    $Self->ArticleSend(
            ArticleType => 'email-notification-ext',
            SenderType => 'system',
            TicketID => $Param{TicketID},
            HistoryType => 'SendCustomerNotification',
            HistoryComment => "\%\%$Article{From}",
            From => "$Address{RealName} <$Address{Email}>",
            To => $Article{From},
            Subject => $Notification{Subject},
            UserID => $Param{UserID},
            Body => $Notification{Body},
            Loop => 1,
    );

    # log event
    $Self->{LogObject}->Log(
        Priority => 'notice',
        Message => "Sent customer '$Param{Type}' notification to '$Article{From}'.",
    );

    return 1;
}

=item SendAutoResponse()

send an auto response to a customer via email

  my $ArticleID = $TicketObject->SendAutoResponse(
      TicketID => 123,
      TicketNumber => '123123123',
      Text => 'Quote Message',
      Realname => 'Support Team',
      Address => 'support@example.com',
      HistoryType => 'SendAutoReply', # SendAutoReply|SendAutoReject|SendAutoFollowUp|...
      CustomerMessageParams => {
         SomeParams => 'For the message!',
      },
      UserID => 123,
  );

=cut

sub SendAutoResponse {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Text Realname Address CustomerMessageParams TicketID UserID HistoryType)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    $Param{Body} = $Param{Text} || 'No Std. Body found!';
    my %GetParam = %{$Param{CustomerMessageParams}};
    # get old article for quoteing
    my %Article = $Self->ArticleLastCustomerArticle(TicketID => $Param{TicketID});
    foreach (qw(From To Cc Subject Body)) {
        if (!$GetParam{$_}) {
            $GetParam{$_} = $Article{$_} || '';
        }
        chomp $GetParam{$_};
    }
    # check reply to for auto response recipient
    if ($GetParam{ReplyTo}) {
        $GetParam{From} = $GetParam{ReplyTo};
    }
    # check if sender is e. g. MAILDER-DAEMON or Postmaster
    my $NoAutoRegExp = $Self->{ConfigObject}->Get('SendNoAutoResponseRegExp');
    if ($GetParam{From} =~ /$NoAutoRegExp/i) {
        # add it to ticket history
        $Self->HistoryAdd(
            TicketID => $Param{TicketID},
            CreateUserID => $Param{UserID},
            HistoryType => 'Misc',
            Name => "Sent not auto response, SendNoAutoResponseRegExp is matching.",
        );
        # log
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "Sent not auto response to '$GetParam{From}' because config".
             " option SendNoAutoResponseRegExp (/$NoAutoRegExp/i) is matching!",
        );
        return 1;
    }
    # check if original content isn't text/plain, don't use it
    if ($GetParam{'Content-Type'} && $GetParam{'Content-Type'} !~ /(text\/plain|\btext\b)/i) {
        $GetParam{Body} = "-> no quotable message <-";
    }
    # replace all scaned email x-headers with <OTRS_CUSTOMER_X-HEADER>
    foreach (keys %GetParam) {
        if (defined $GetParam{$_}) {
            $Param{Body} =~ s/<OTRS_CUSTOMER_$_>/$GetParam{$_}/gi;
        }
    }
    # replace some special stuff
    $Param{Body} =~ s/<OTRS_TICKET_NUMBER>/$Article{TicketNumber}/gi;
    $Param{Body} =~ s/<OTRS_TICKET_ID>/$Param{TicketID}/gi;
    # prepare customer realname
    if ($Param{Body} =~ /<OTRS_CUSTOMER_REALNAME>/) {
        # get realname 
        my $From = '';
        if ($Article{CustomerUserID}) {
            $From = $Self->{CustomerUserObject}->CustomerName(UserLogin => $Article{CustomerUserID});
        }
        if (!$From) {
            $From = $GetParam{From} || '';
            $From =~ s/<.*>|\(.*\)|\"|;|,//g;
            $From =~ s/( $)|(  $)//g;
        }
        $Param{Body} =~ s/<OTRS_CUSTOMER_REALNAME>/$From/g;
    }
    # Arnold Ligtvoet - otrs@ligtvoet.org
    # get OTRS_CUSTOMER_SUBJECT from body
    if ($Param{Body} =~ /<OTRS_CUSTOMER_SUBJECT\[(.+?)\]>/) {
        my $TicketHook2 = $Self->{ConfigObject}->Get('TicketHook');
        my $SubRep = $GetParam{Subject} || 'No Std. Subject found!';
        my $SubjectChar = $1;
        $SubRep =~ s/\[$TicketHook2: $Article{TicketNumber}\] //g;
        $SubRep =~ s/^(.{$SubjectChar}).*$/$1 [...]/;
        $Param{Body} =~ s/<OTRS_CUSTOMER_SUBJECT\[.+?\]>/$SubRep/g;
    }
    # Arnold Ligtvoet - otrs@ligtvoet.org
    # get OTRS_EMAIL_DATE from body and replace with received date
    use POSIX qw(strftime);
    if ($Param{Body} =~ /<OTRS_EMAIL_DATE\[(.*)\]>/) {
        my $EmailDate = strftime('%A, %B %e, %Y at %T ', localtime);
        my $TimeZone = $1;
        $EmailDate .= "($TimeZone)";
        $Param{Body} =~ s/<OTRS_EMAIL_DATE\[.*\]>/$EmailDate/g;
    }
    # prepare subject (insert old subject)
    my $TicketHook = $Self->{ConfigObject}->Get('TicketHook');
    my $Subject = $Param{Subject} || 'No Std. Subject found!';
    if ($Subject =~ /<OTRS_CUSTOMER_SUBJECT\[(.+?)\]>/) {
        my $SubjectChar = $1;
        $GetParam{Subject} =~ s/\[$TicketHook: $Article{TicketNumber}\] //g;
        $GetParam{Subject} =~ s/^(.{$SubjectChar}).*$/$1 [...]/;
        $Subject =~ s/<OTRS_CUSTOMER_SUBJECT\[.+?\]>/$GetParam{Subject}/g;
    }
    $Subject = "[$TicketHook: $Article{TicketNumber}] $Subject";
    # prepare body (insert old email)
    if ($Param{Body} =~ /<OTRS_CUSTOMER_EMAIL\[(.+?)\]>/g) {
        my $Line = $1;
        my @Body = split(/\n/, $GetParam{Body});
        my $NewOldBody = '';
        foreach (my $i = 0; $i < $Line; $i++) {
            # 2002-06-14 patch of Pablo Ruiz Garcia
            # http://lists.otrs.org/pipermail/dev/2002-June/000012.html
            if ($#Body >= $i) {
                $NewOldBody .= "> $Body[$i]\n";
            }
        }
        chomp $NewOldBody;
        $Param{Body} =~ s/<OTRS_CUSTOMER_EMAIL\[.+?\]>/$NewOldBody/g;
    }
    # set new To address if customer user id is used
    my $Cc = '';
    my $ToAll = $GetParam{From};
    if ($Article{CustomerUserID}) {
        my %CustomerUser = $Self->{CustomerUserObject}->CustomerUserDataGet(
            User => $Article{CustomerUserID},
        );
        if ($CustomerUser{UserEmail} && $GetParam{From} !~ /\Q$CustomerUser{UserEmail}\E/i) {
            $Cc = $CustomerUser{UserEmail};
            $ToAll .= ', '.$Cc;
        }
    }
    # send email
    my $ArticleID = $Self->ArticleSend(
        ArticleType => 'email-external',
        SenderType => 'system',
        TicketID => $Param{TicketID},
        HistoryType => $Param{HistoryType}, 
        HistoryComment => "\%\%$ToAll",
        From => "$Param{Realname} <$Param{Address}>",
        To => $GetParam{From},
        Cc => $Cc,
        RealName => $Param{Realname},
        Charset => $Param{Charset},
        Subject => $Subject,
        UserID => $Param{UserID},
        Body => $Param{Body},
        InReplyTo => $GetParam{'Message-ID'},
        Loop => 1,
    );
    # log
    $Self->{LogObject}->Log(
        Priority => 'notice',
        Message => "Sent auto response ($Param{HistoryType}) for Ticket [$Article{TicketNumber}]".
         " (TicketID=$Param{TicketID}, ArticleID=$ArticleID) to '$ToAll'."
    );

    return 1;
}
# --
# the following is the pod for Kernel/System/Ticket/ArticleStorage*.pm

=item ArticleDelete()

delete all article, attachments and plain message of a ticket

  $TicketObject->ArticleDelete(
      TicketID => 123,
      UserID => 123,
  );


=item ArticleDeletePlain()

delete a artile plain message

  $TicketObject->ArticleDeletePlain(
      ArticleID => 123,
      UserID => 123,
  );


=item ArticleDeleteAttachment()

delete all attachments of an article

  $TicketObject->ArticleDeleteAttachment(
      ArticleID => 123,
      UserID => 123,
  );


=item ArticleWritePlain()

write an plain email to storage

  $TicketObject->ArticleWritePlain(
      ArticleID => 123,
      Email => $EmailAsString,
      UserID => 123,
  );


=item ArticlePlain()

get plain message/email

  my $PlainMessage = $TicketObject->ArticlePlain(
      ArticleID => 123,
      UserID => 123,
  );


=item ArticleWriteAttachment()

write an article attachemnt to storage

  $TicketObject->ArticleWriteAttachment(
      Content => $ContentAsString,
      ContentType => 'text/html; charset="iso-8859-15"',
      Filename => 'lala.html',
      ArticleID => 123,
      UserID => 123,
  );


=item ArticleAttachmentIndex()

get article attachment index as hash (ID => hashref (Filename, Filesize))

  my %Index = $TicketObject->ArticleAttachment(
      ArticleID => 123,
      UserID => 123,
  );


=item ArticleAttachment()

get article attachment (Content, ContentType, Filename)

  my %Attachment = $TicketObject->ArticleAttachment(
      ArticleID => 123,
      FileID => 1,
      UserID => 123,
  );

=cut

1;
