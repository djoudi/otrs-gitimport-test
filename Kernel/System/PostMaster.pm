# --
# Kernel/System/PostMaster.pm - the global PostMaster module for OTRS
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: PostMaster.pm,v 1.26 2003-03-17 17:48:04 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see 
# the enclosed file COPYING for license information (GPL). If you 
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::System::PostMaster;

use strict;
use Kernel::System::DB;
use Kernel::System::EmailParser;
use Kernel::System::Ticket;
use Kernel::System::Queue;
use Kernel::System::PostMaster::FollowUp;
use Kernel::System::PostMaster::NewTicket;
use Kernel::System::PostMaster::DestQueue;

use vars qw(@ISA $VERSION);

$VERSION = '$Revision: 1.26 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {}; 
    bless ($Self, $Type);

    # get Log Object
    $Self->{LogObject} = $Param{LogObject} || die "Got no LogObject!";

    # get ConfigObject
    $Self->{ConfigObject} = $Param{ConfigObject} || die "Got no ConfigObject!";

    # check needed objects
    foreach (qw(SystemID TicketHook PostmasterUserID PostmasterX-Header)) {
        $Self->{$_} = $Param{ConfigObject}->Get($_) || die "Found no '$_' option in Config.pm!";
    }

    # create db object
    $Self->{DBObject} = Kernel::System::DB->new(%Param);
    # should i use the x-otrs header?
    $Self->{Trusted} = defined $Param{Trusted} ? $Param{Trusted} : 1;

    # get email 
    $Self->{Email} = $Param{Email} || die "Got no EmailBody!";
    my $EmailTmp = $Param{Email} || die "Got no EmailBody!";
    my @Email = @$EmailTmp;
    my @EmailOrig = @Email;
    $Self->{ParseObject} = Kernel::System::EmailParser->new(
        Email => \@Email,
        OrigEmail => \@EmailOrig,
    );
    $Self->{DestQueueObject} = Kernel::System::PostMaster::DestQueue->new(
         DBObject => $Self->{DBObject}, 
         ParseObject => $Self->{ParseObject},
         ConfigObject => $Self->{ConfigObject},
         LogObject => $Self->{LogObject},
         LoopProtectionObject => $Self->{LoopProtectionObject}, 
    );

    # for debug 0=off; 1=info; 2=on; 3=with GetHeaderParam;
    $Self->{Debug} = 0;

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # --
    # common opjects
    # --
    my $SystemID = $Self->{ConfigObject}->Get('SystemID');
    my $TicketHook = $Self->{ConfigObject}->Get('TicketHook');
    my $TicketObject = Kernel::System::Ticket->new(
         DBObject => $Self->{DBObject}, 
         ConfigObject => $Self->{ConfigObject},
         LogObject => $Self->{LogObject},
         LoopProtectionObject => $Self->{LoopProtectionObject}, 
    );
    my $NewTicket = Kernel::System::PostMaster::NewTicket->new(
        ParseObject => $Self->{ParseObject},
        DBObject => $Self->{DBObject},
        TicketObject => $TicketObject,
        LogObject => $Self->{LogObject},
        ConfigObject => $Self->{ConfigObject},
        LoopProtectionObject => $Self->{LoopProtectionObject},
        Debug => $Self->{Debug},
    );
    # --
    # ConfigObjectrse section / get params
    # --
    my %GetParam = $Self->GetEmailParams();
    # --
    # should i ignore the incoming mail?
    # --
    if ($GetParam{'X-OTRS-Ignore'} && $GetParam{'X-OTRS-Ignore'} =~ /yes/i) {
       $Self->{LogObject}->Log(
           Message => "Droped Email (From: $GetParam{'From'}, Message-ID: $GetParam{'Message-ID'}) " .
           "because the X-OTRS-Ignore is set (X-OTRS-Ignore: $GetParam{'X-OTRS-Ignore'})."
       );
       return 1;
   }
   # --
   # ticket section
   # --

   # check for hardwired queue info
   my $Queue = $Self->{DestQueueObject}->GetQueueID(Params => \%GetParam);

   # check if follow up
   my ($Tn, $TicketID) = $Self->CheckFollowUp(
       Subject => $GetParam{'Subject'}, 
       TicketObject => $TicketObject,
   );

   if ($Tn && $TicketID) {
       $Queue = $Self->{DestQueueObject}->GetQueueID(Params => \%GetParam);
   };

   # --
   # check ticket number
   # --
   if ($GetParam{'Subject'} =~ /$TicketHook:.*\-FW\]/i) {
       undef $Tn;
       undef $TicketID;
   }

   # Follow up ...
   if ($Tn && $TicketID) {
        my $FollowUp = Kernel::System::PostMaster::FollowUp->new(
            DBObject => $Self->{DBObject},
            TicketObject => $TicketObject,
            LogObject => $Self->{LogObject},
            ConfigObject => $Self->{ConfigObject},
            LoopProtectionObject => $Self->{LoopProtectionObject},
            Debug => $Self->{Debug},
        );
        # check if it is possible to do the follow up
        my $QueueID = $TicketObject->GetQueueIDOfTicketID(
            TicketID => $TicketID,
        );
        # get follow up option (possible or not)
        my $QueueObject = Kernel::System::Queue->new(
            DBObject => $Self->{DBObject},
            LogObject => $Self->{LogObject},
            ConfigObject => $Self->{ConfigObject},
        );
        my $FollowUpPossible = $QueueObject->GetFollowUpOption(
            QueueID => $QueueID,
        );
        # get lock option (should be the ticket locked after the follow up)
        my $Lock = $QueueObject->GetFollowUpLockOption(
            QueueID => $QueueID,
        );  
        # get ticket state 
        my $State = $TicketObject->GetState(
            TicketID => $TicketID,
        );
        # create a new ticket
        if ($FollowUpPossible =~ /new ticket/i && $State =~ /^close/i) {
          $Self->{LogObject}->Log(
            Message=>"Follow up for [$Tn] but follow up not possible($State). Create new ticket."
          );
          # send mail && create new article
          $NewTicket->Run(
            InmailUserID => $Self->{PostmasterUserID},
            GetParam => \%GetParam,
            Email => $Self->{Email},
            Comment => "Because the old ticket [$Tn] is '$State'",
            AutoResponseType => 'auto reply/new ticket',
          );
          return 1;
        }
        # reject follow up
        elsif ($FollowUpPossible =~ /reject/i && $State =~ /^close/i) {
          $Self->{LogObject}->Log(
            Message=>"Follow up for [$Tn] but follow up not possible. Follow up rejected."
          );
          # send reject mail && and add article to ticket
          $FollowUp->Run(
            TicketID => $TicketID,
            InmailUserID => $Self->{PostmasterUserID},
            GetParam => \%GetParam,
            Lock => $Lock,
            Tn => $Tn,
            Email => $Self->{Email},
            QueueID => $QueueID,
            Comment => 'Follow up rejected.',
            AutoResponseType => 'auto reject',
          );
          return 1;
        }
        # create normal follow up
        else {
          $FollowUp->Run(
            TicketID => $TicketID,
            InmailUserID => $Self->{PostmasterUserID},
            GetParam => \%GetParam,
            Lock => $Lock,
            Tn => $Tn,
            Email => $Self->{Email},
            State => 'open',
            QueueID => $QueueID,
            AutoResponseType => 'auto follow up',
          );
        }
    }
    # create new ticket
    else {
        if ($Param{Queue} && !$Param{QueueID}) {
            # get follow up option (possible or not)
            my $QueueObject = Kernel::System::Queue->new(
                DBObject => $Self->{DBObject},
                LogObject => $Self->{LogObject},
                ConfigObject => $Self->{ConfigObject},
            );
            $Param{QueueID} = $QueueObject->QueueLookup(Queue => $Param{Queue});
        }

        $NewTicket->Run(
            InmailUserID => $Self->{PostmasterUserID},
            GetParam => \%GetParam,
            Email => $Self->{Email},
            QueueID => $Param{QueueID},
            AutoResponseType => 'auto reply',
          );
        }
}
# --
# CheckFollowUp
# --
sub CheckFollowUp {
    my $Self = shift;
    my %Param = @_;
    my $Subject = $Param{Subject} || '';
    my $TicketObject = $Param{TicketObject};


    if ($Self->{Debug} > 1) {
        $Self->{LogObject}->Log(
            Priority => 'debug',
            Message => "CheckFollowUp Subject: '$Subject', SystemID: '$Self->{SystemID}',".
             " TicketHook: '$Self->{TicketHook}'",
        );
    }

    if (my $Tn = $TicketObject->GetTNByString($Subject)) {
        my $TicketID = $TicketObject->CheckTicketNr(Tn => $Tn);
        if ($Self->{Debug} > 1) {
            $Self->{LogObject}->Log(
                Priority => 'debug',
                Message => "CheckFollowUp: Tn: $Tn found or forward!",
            );
        }
        if ($TicketID) {
            if ($Self->{Debug} > 1) {
                $Self->{LogObject}->Log(
                  Priority => 'debug',
                  Message => "CheckFollowUp: ja, it's a follow up ($Tn/$TicketID)",
                );
            }
            return ($Tn, $TicketID);
        }
    }
    return;
}
# --
# GetEmailParams
# --
sub GetEmailParams {
    my $Self = shift;
    my %Param = @_;
    my %GetParam;
    # parse section
    my $WantParamTmp = $Self->{'PostmasterX-Header'} || die "Got no \@WantParam ref";
    my @WantParam = @$WantParamTmp;
    foreach (@WantParam){
      if (!$Self->{Trusted} && $_ =~ /^x-otrs/i) {
        # scan not x-otrs header if it's not trusted
      }
      else {
        if ($Self->{Debug} > 2) {
          $Self->{LogObject}->Log(
              Priority => 'debug',
              Message => "$_: " . $Self->{ParseObject}->GetParam(WHAT => $_),
          );
        }
        $GetParam{$_} = $Self->{ParseObject}->GetParam(WHAT => $_);
      }
    }
    if ($GetParam{'Message-Id'}) {
        $GetParam{'Message-ID'} = $GetParam{'Message-Id'};
    }
    if ($GetParam{'Reply-To'}) {
        $GetParam{'ReplyTo'} = $GetParam{'Reply-To'};
    }
    if ($GetParam{'Mailing-List'} || $GetParam{'Precedence'} || $GetParam{'X-Loop'}
             || $GetParam{'X-No-Loop'} || $GetParam{'X-OTRS-Loop'}) {
        $GetParam{'X-OTRS-Loop'} = 'yes';
    }
    $GetParam{'Body'} = $Self->{ParseObject}->GetMessageBody();
    $GetParam{'Content-Type'} = $Self->{ParseObject}->GetContentType(
        $Self->{ParseObject}->GetParam(WHAT => 'Content-Type'),
    );
    return %GetParam;
}

1;
