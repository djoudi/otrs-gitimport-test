# --
# Kernel/System/PostMaster/FollowUp.pm - the sub part of PostMaster.pm 
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: FollowUp.pm,v 1.27.2.1 2003-05-18 20:20:50 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see 
# the enclosed file COPYING for license information (GPL). If you 
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::PostMaster::FollowUp;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.27.2.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {}; 
    bless ($Self, $Type);

    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    $Self->{Debug} = $Param{Debug} || 0;

    # check needed Objects
    foreach (qw(DBObject ConfigObject TicketObject LogObject ParseObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # --
    # check needed stuff
    # --
    foreach (qw(TicketID InmailUserID GetParam StateType Tn AutoResponseType)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my %GetParam = %{$Param{GetParam}};
    my $State = $Param{State} || '';
	my $Comment = $Param{Comment} || '';
    my $Lock = $Param{Lock} || '';
    my $AutoResponseType = $Param{AutoResponseType} || '';

    # do db insert
    my $ArticleID = $Self->{TicketObject}->CreateArticle(
        TicketID => $Param{TicketID},
        ArticleType => 'email-external',
        SenderType => 'customer',
        From => $GetParam{From},
        ReplyTo => $GetParam{ReplyTo},
        To => $GetParam{To},
        Cc => $GetParam{Cc},
        Subject => $GetParam{Subject},
        MessageID => $GetParam{'Message-ID'},
        ContentType => $GetParam{'Content-Type'},
        Body => $GetParam{Body},
        UserID => $Param{InmailUserID},
        HistoryType => 'FollowUp',
        HistoryComment => "FollowUp for [$Param{Tn}]. $Comment",

        AutoResponseType => $AutoResponseType,
        OrigHeader => \%GetParam,
    ); 
    # --
    # debug
    # --
    if ($Self->{Debug} > 0) {
        print "Follow up Ticket\n";
        print "TicketNumber: $Param{Tn}\n";
        print "From: $GetParam{From}\n";
        print "ReplyTo: $GetParam{ReplyTo}\n" if ($GetParam{ReplyTo});
        print "To: $GetParam{To}\n";
        print "Cc: $GetParam{Cc}\n" if ($GetParam{Cc});
        print "Subject: $GetParam{Subject}\n";
        print "MessageID: $GetParam{'Message-ID'}\n";
    }
    # --    
    # write plain email to the storage
    # --
    $Self->{TicketObject}->WriteArticlePlain(
        ArticleID => $ArticleID,
        Email => $Self->{ParseObject}->GetPlainEmail(),
        UserID => $Param{InmailUserID},
    );
    # --    
    # write attachments to the storage
    # --
    foreach my $Attachment ($Self->{ParseObject}->GetAttachments()) {
        $Self->{TicketObject}->WriteArticlePart(
            Content => $Attachment->{Content}, 
            Filename => $Attachment->{Filename},
            ContentType => $Attachment->{ContentType},
            ArticleID => $ArticleID,
            UserID => $Param{InmailUserID},
        );
    }
    # --
    # set free article text
    # --
    my @Values = ('X-OTRS-ArticleKey', 'X-OTRS-ArticleValue');
    my $CounterTmp = 0;
    while ($CounterTmp <= 3) {
        $CounterTmp++;
        if ($GetParam{"$Values[0]$CounterTmp"}) {
            $Self->{TicketObject}->SetArticleFreeText(
                ArticleID => $ArticleID,
                Key => $GetParam{"$Values[0]$CounterTmp"},
                Value => $GetParam{"$Values[1]$CounterTmp"},
                Counter => $CounterTmp,
                UserID => $Param{InmailUserID},
            );
            if ($Self->{Debug} > 0) {
                print "ArticleKey$CounterTmp: ".$GetParam{"$Values[0]$CounterTmp"}."\n";
                print "ArticleValue$CounterTmp: ".$GetParam{"$Values[1]$CounterTmp"}."\n";
            }

        }
    }
    # --
    # set state 
    # --
    if ($State) {
	    $Self->{TicketObject}->SetState(
    	    State => $State,
        	TicketID => $Param{TicketID},
	        UserID => $Param{InmailUserID},
    	);
        if ($Self->{Debug} > 0) {
            print "State: $State\n";
        }
    }
    # --
    # set lock
    # --
    if ($Lock && $Param{StateType} =~ /^close/i) {
        $Self->{TicketObject}->SetLock( 
           TicketID => $Param{TicketID},
           Lock => 'lock',
           UserID => => $Param{InmailUserID},
        );
        if ($Self->{Debug} > 0) {
            print "Lock: lock\n";
        }
    }
    # --
    # set ticket to unanswered
    # --
    $Self->{TicketObject}->SetAnswered(
        TicketID => $Param{TicketID},
        UserID => $Param{InmailUserID},
        Answered => 0,
    );

    # write log
    $Self->{LogObject}->Log(
        Priority => 'notice',
        Message => "FollowUp Article to Ticket [$Param{Tn}] created ".
          "(TicketID=$Param{TicketID}, ArticleID=$ArticleID). $Comment"
    );

    return 1;
}
# --
1;
