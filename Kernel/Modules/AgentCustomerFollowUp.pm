# --
# Kernel/Modules/AgentCustomerFollowUp.pm - to handle customer messages
# if the agent is customer
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentCustomerFollowUp.pm,v 1.13 2005-02-15 11:58:12 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentCustomerFollowUp;

use strict;
use Kernel::System::SystemAddress;
use Kernel::System::Queue;
use Kernel::System::State;

use vars qw($VERSION);
$VERSION = '$Revision: 1.13 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
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
    # check needed Opjects
    foreach (qw(ParamObject DBObject TicketObject LayoutObject LogObject QueueObject 
       ConfigObject)) {
        die "Got no $_!" if (!$Self->{$_});
    }
    # needed objects
    $Self->{StateObject} = Kernel::System::State->new(%Param);
    $Self->{SystemAddress} = Kernel::System::SystemAddress->new(%Param);
    $Self->{QueueObject} = Kernel::System::Queue->new(%Param);

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;

    if ($Self->{Subaction} eq '' || !$Self->{Subaction}) {
        # --
        # if there is no ticket id!
        # --
        if (!$Self->{TicketID}) {
            return $Self->{LayoutObject}->ErrorScreen(
                Message => 'No TicketID!',
                Comment => 'Please contact your admin',
            );
        }
        else {
            # header
            $Output .= $Self->{LayoutObject}->Header(Area => 'Ticket', Title => 'Compose Follow up');
            # get user lock data
            my %LockedData = $Self->{TicketObject}->GetLockedCount(UserID => $Self->{UserID});
            # build NavigationBar
            $Output .= $Self->{LayoutObject}->NavigationBar(LockData => \%LockedData);

            my %Ticket = $Self->{TicketObject}->TicketGet(TicketID => $Self->{TicketID});
            # next stats
            my %NextStates = $Self->{TicketObject}->StateList(
                Type => 'CustomerPanelDefaultNextCompose',
                TicketID => $Self->{TicketID},
                Action => $Self->{Action},
                CustomerUserID => $Self->{UserID},
            );
            $Param{'NextStatesStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
                Data => \%NextStates,
                Name => 'StateID',
                Selected => $Self->{ConfigObject}->Get('CustomerPanelDefaultNextComposeType')
            );

            # get output back
            $Output .= $Self->{LayoutObject}->Notify(
                Info =>
                  $Self->{LayoutObject}->{LanguageObject}->Get('You are the customer user of this message - customer modus!'),
            );
            $Output .= $Self->{LayoutObject}->Output(
                TemplateFile => 'AgentCustomerMessage',
                Data => { %Param, %Ticket },
            );

            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
    }
    elsif ($Self->{Subaction} eq 'Store') {
        # get ticket data
        my %Ticket = $Self->{TicketObject}->TicketGet(
            TicketID => $Self->{TicketID},
        );
        # get follow up option (possible or not)
        my $FollowUpPossible = $Self->{QueueObject}->GetFollowUpOption(
            QueueID => $Ticket{QueueID},
        );
        if ($FollowUpPossible =~ /(new ticket|reject)/i && $Ticket{StateType} =~ /^close/i) {
            $Output = $Self->{LayoutObject}->Header(Title => 'Error');
            $Output .= $Self->{LayoutObject}->Warning(
                Message => 'Can\'t reopen ticket, not possible in this queue!',
                Comment => 'Create a new ticket!',
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
        my $Subject = $Self->{ParamObject}->GetParam(Param => 'Subject') || 'Follow up!';
        my $Text = $Self->{ParamObject}->GetParam(Param => 'Body');
        my $StateID = $Self->{ParamObject}->GetParam(Param => 'StateID');
        my $From = "$Self->{UserFirstname} $Self->{UserLastname} <$Self->{UserEmail}>";
        if (my $ArticleID = $Self->{TicketObject}->ArticleCreate(
            TicketID => $Self->{TicketID},
            ArticleType => $Self->{ConfigObject}->Get('CustomerPanelArticleType'),
            SenderType => $Self->{ConfigObject}->Get('CustomerPanelSenderType'),
            From => $From,
            Subject => $Subject,
            Body => $Text,
            ContentType => "text/plain; charset=$Self->{LayoutObject}->{'UserCharset'}",
            UserID => $Self->{UserID},
            OrigHeader => {
                From => $From,
                To => 'System',
                Subject => $Subject,
                Body => $Text,
            },
            HistoryType => $Self->{ConfigObject}->Get('CustomerPanelHistoryType'),
            HistoryComment => $Self->{ConfigObject}->Get('CustomerPanelHistoryComment') || '%%',
        )) {
          # --
          # set state
          # --
          my %StateData = $Self->{TicketObject}->{StateObject}->StateGet(
              ID => $StateID,
          );
          my $NextState = $StateData{Name} ||
            $Self->{ConfigObject}->Get('CustomerPanelDefaultNextComposeType') || 'open';;
          $Self->{TicketObject}->StateSet(
              TicketID => $Self->{TicketID},
              ArticleID => $ArticleID,
              State => $NextState,
              UserID => $Self->{UserID},
          );
          # get attachment
          my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
              Param => 'file_upload',
              Source => 'String',
          );
          if (%UploadStuff) {
              $Self->{TicketObject}->ArticleWriteAttachment(
                  %UploadStuff,
                  ArticleID => $ArticleID,
                  UserID => $Self->{UserID},
              );
          }
         # redirect to zoom view
         return $Self->{LayoutObject}->Redirect(OP => $Self->{LastScreenView});
      }
      else {
        return $Self->{LayoutObject}->ErrorScreen();
      }
    }
    else {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => 'No Subaction!!',
            Comment => 'Please contact your admin',
        );
    }
}
# --

1;
