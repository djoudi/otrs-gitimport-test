# --
# Kernel/Modules/AgentBounce.pm - to bounce articles of tickets 
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentBounce.pm,v 1.24 2003-07-10 22:34:27 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentBounce;

use strict;
use Kernel::System::State;
use Kernel::System::SystemAddress;
use Kernel::System::CustomerUser;
use Mail::Address;

use vars qw($VERSION);
$VERSION = '$Revision: 1.24 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;
    # allocate new hash for object    
    my $Self = {}; 
    bless ($Self, $Type);
    # get common opjects    
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }
    # check needed Opjects
    foreach (qw(ParamObject DBObject TicketObject LayoutObject LogObject
      QueueObject ConfigObject)) {
        die "Got no $_!" if (!$Self->{$_});
    }
    # needed objects
    $Self->{StateObject} = Kernel::System::State->new(%Param);
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);
    $Self->{SystemAddress} = Kernel::System::SystemAddress->new(%Param);

    $Self->{ArticleID} = $Self->{ParamObject}->GetParam(Param => 'ArticleID') || '';

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    my $NextScreen = $Self->{NextScreen} || '';
    # --
    # check needed stuff
    # --
    foreach (qw(ArticleID TicketID QueueID)) {
        if (! defined $Self->{$_}) {
            $Output .= $Self->{LayoutObject}->Header(Title => 'Bounce');
            $Output .= $Self->{LayoutObject}->Error(
              Message => "$_ is needed!",
              Comment => 'Please contact your admin',
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
    }
    # --
    # check permissions
    # --
    if (!$Self->{TicketObject}->Permission(
        Type => 'rw',
        TicketID => $Self->{TicketID},
        UserID => $Self->{UserID})) {
        # error screen, don't show ticket
        return $Self->{LayoutObject}->NoPermission(WithHeader => 'yes');
    }

    $Param{TicketNumber} = $Self->{TicketObject}->GetTNOfId(ID => $Self->{TicketID});
    $Param{QueueID} = $Self->{TicketObject}->GetQueueIDOfTicketID(TicketID => $Self->{TicketID});
    # --
    # prepare salutation
    # --
    my $QueueObject = Kernel::System::Queue->new(
        QueueID => $Param{QueueID},
        DBObject => $Self->{DBObject},
        ConfigObject => $Self->{ConfigObject},
        LogObject => $Self->{LogObject},
    );

    if ($Self->{Subaction} eq '' || !$Self->{Subaction}) {
        $Output .= $Self->{LayoutObject}->Header(Title => 'Bounce');
        # --
        # check if plain article exists
        # --
        if (!$Self->{TicketObject}->GetArticlePlain(ArticleID => $Self->{ArticleID})) {
            $Output .= $Self->{LayoutObject}->Error();
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
        # --
        # get lock state && permissions
        # --
        if (!$Self->{TicketObject}->IsTicketLocked(TicketID => $Self->{TicketID})) {
            # --
            # set owner
            # --
            $Self->{TicketObject}->SetOwner(
              TicketID => $Self->{TicketID},
              UserID => $Self->{UserID},
              NewUserID => $Self->{UserID},
            );
            # --
            # set lock
            # --
            if ($Self->{TicketObject}->SetLock(
              TicketID => $Self->{TicketID},
              Lock => 'lock',
              UserID => $Self->{UserID},
            )) {
                # --
                # show lock state
                # --
                $Output .= $Self->{LayoutObject}->TicketLocked(TicketID => $Self->{TicketID});
            }
         }
        else {
            my ($OwnerID, $OwnerLogin) = $Self->{TicketObject}->CheckOwner(
              TicketID => $Self->{TicketID},
            );
  
            if ($OwnerID != $Self->{UserID}) {
              $Output .= $Self->{LayoutObject}->Warning(
                Message => "Sorry, the current owner is $OwnerLogin!",
                Comment => 'Please change the owner first.',
              );
              $Output .= $Self->{LayoutObject}->Footer();
              return $Output;
            }
        }

        # --
        # get article data 
        # --
        my %Article = $Self->{TicketObject}->GetArticle(
            ArticleID => $Self->{ArticleID},
        );
        # --
        # prepare subject ...
        # --
        my $TicketHook = $Self->{ConfigObject}->Get('TicketHook') || '';
        $Article{Subject} =~ s/\[$TicketHook: $Param{TicketNumber}\] //g;
        $Article{Subject} =~ s/^(.{30}).*$/$1 [...]/;
        $Article{Subject} = "[$TicketHook: $Param{TicketNumber}] RE: " . $Article{Subject};
        # --
        # prepare to (ReplyTo!) ...
        # --
        if ($Article{ReplyTo}) {
            $Article{To} = $Article{ReplyTo};
        }
        else {
            $Article{To} = $Article{From};
        }
        # --
        # prepare salutation
        # --
        $Param{Salutation} = $QueueObject->GetSalutation();
        # prepare customer realname
        if ($Param{Salutation} =~ /<OTRS_CUSTOMER_REALNAME>/) {
            # get realname 
            my $From = '';
            if ($Article{CustomerUserID}) {
                $From = $Self->{CustomerUserObject}->CustomerName(UserLogin => $Article{CustomerUserID});
            }
            if (!$From) {
                $From = $Article{From} || '';
                $From =~ s/<.*>|\(.*\)|\"|;|,//g;
                $From =~ s/( $)|(  $)//g;
            }
            # get realname 
            $Param{Salutation} =~ s/<OTRS_CUSTOMER_REALNAME>/$From/g;
        }
        # --
        # prepare signature
        # --
        $Param{Signature} = $QueueObject->GetSignature();
        foreach (qw(Signature Salutation)) {
            $Param{$_} =~ s/<OTRS_FIRST_NAME>/$Self->{UserFirstname}/g;
            $Param{$_} =~ s/<OTRS_LAST_NAME>/$Self->{UserLastname}/g;
            $Param{$_} =~ s/<OTRS_USER_ID>/$Self->{UserID}/g;
            $Param{$_} =~ s/<OTRS_USER_LOGIN>/$Self->{UserLogin}/g;
        }
        # --
        # prepare body ...
        # --
        my $NewLine = $Self->{ConfigObject}->Get('ComposeTicketNewLine') || 75;
        $Article{Body} =~ s/(.{$NewLine}.+?\s)/$1\n/g;
        $Article{Body} =~ s/\n/\n> /g;
        $Article{Body} = "\n> " . $Article{Body};
        my @Body = split(/\n/, $Article{Body});
        $Article{Body} = '';
        foreach (1..4) {
            $Article{Body} .= $Body[$_]."\n" if ($Body[$_]);
        }
        # --
        # prepare from ...
        # --
        my %Address = $QueueObject->GetSystemAddress();
        $Article{From} = "$Address{RealName} <$Address{Email}>";
        $Article{Email} = $Address{Email};
        $Article{RealName} = $Address{RealName};

        # get next states
        my %NextStates = $Self->{StateObject}->StateGetStatesByType(
            Type => 'DefaultNextBounce',
            Result => 'HASH',
        );
        # print form ...
        $Output .= $Self->{LayoutObject}->AgentBounce(
            %Param,
            %Article,
            TicketID => $Self->{TicketID},
            ArticleID => $Self->{ArticleID},
            NextStates => \%NextStates,
        );
        $Output .= $Self->{LayoutObject}->Footer();
    }
    elsif ($Self->{Subaction} eq 'Store') {
        # --
        # get params
        # --
        foreach (qw(BounceTo To Subject Body InformSender BounceStateID)) {
            $Param{$_} = $Self->{ParamObject}->GetParam(Param => $_) || '';
        }
        # --
        # check forward email address
        # --
        foreach my $Email (Mail::Address->parse($Param{BounceTo})) {
            my $Address = $Email->address();
            if ($Self->{SystemAddress}->SystemAddressIsLocalAddress(Address => $Address)) {
                # --
                # error page
                # -- 
                $Output = $Self->{LayoutObject}->Header(Title => 'Error');
                $Output .= $Self->{LayoutObject}->Error(
                    Message => "Can't forward ticket to $Address! It's a local ".
                      "address! You need to move it!",
                    Comment => 'Please contact the admin.',
                );
                $Output .= $Self->{LayoutObject}->Footer();
                return $Output;
            }
        }

        # --
        # prepare from ...
        # --
        my %Address = $QueueObject->GetSystemAddress();
        $Param{From} = "$Address{RealName} <$Address{Email}>";
        $Param{Email} = $Address{Email};
        $Param{EmailPlain} = $Self->{TicketObject}->GetArticlePlain(ArticleID => $Self->{ArticleID});
        if (!$Self->{TicketObject}->BounceArticle(
            EmailPlain => $Param{EmailPlain},
            TicketObject => $Self->{TicketObject},
            TicketID => $Self->{TicketID},
            ArticleID => $Self->{ArticleID},
            UserID => $Self->{UserID},
            To => $Param{BounceTo},
            From => $Param{From},
            Email => $Param{Email},
            HistoryType => 'Bounce',
        )) {
           # error page 
           $Output = $Self->{LayoutObject}->Header(Title => 'Error');
           $Output .= $Self->{LayoutObject}->Error(
               Message => "Can't bounce email!",
               Comment => 'Please contact the admin.',
           );
           $Output .= $Self->{LayoutObject}->Footer();
           return $Output;
        }
        # --       
        # send customer info?
        # --
        if ($Param{InformSender}) {
            $Param{Body} =~ s/<OTRS_TICKET>/$Param{TicketNumber}/g;
            $Param{Body} =~ s/<OTRS_BOUNCE_TO>/$Param{BounceTo}/g;
            if (my $ArticleID = $Self->{TicketObject}->SendArticle(
              ArticleType => 'email-external',
              SenderType => 'agent',
              TicketID => $Self->{TicketID},
              HistoryType => 'Bounce',
              HistoryComment => "Bounced to '$Param{To}'.",
              From => $Param{From},
              Email => $Param{Email},
              To => $Param{To},
              Subject => $Param{Subject},
              UserID => $Self->{UserID},
              Body => $Param{Body},
              Charset => $Self->{UserCharset},
            )) {
              ###
            }
            else {
              # error page 
              $Output = $Self->{LayoutObject}->Header(Title => 'Error');
              $Output .= $Self->{LayoutObject}->Error(
                Message => "Can't send email!",
                Comment => 'Please contact the admin.',
              );
              $Output .= $Self->{LayoutObject}->Footer();
              return $Output;
            }
        }
        # --
        # set state
        # --
        my %StateData = $Self->{TicketObject}->{StateObject}->StateGet(
            ID => $Param{BounceStateID},
        );
        my $NextState = $StateData{Name};
        $Self->{TicketObject}->SetState(
            TicketID => $Self->{TicketID},
            ArticleID => $Self->{ArticleID},
            State => $NextState,
            UserID => $Self->{UserID},
          );
        # --
        # should i set an unlock?
        # --
        my %StateData = $Self->{StateObject}->StateGet(ID => $Param{BounceStateID});
        if ($StateData{TypeName} =~ /^close/i) {
          $Self->{TicketObject}->SetLock(
            TicketID => $Self->{TicketID},
            Lock => 'unlock',
            UserID => $Self->{UserID},
          );
        }
        # --
        # redirect
        # --
        $Output .= $Self->{LayoutObject}->Redirect(
            OP => "Action=$NextScreen&QueueID=$Param{QueueID}&TicketID=$Self->{TicketID}",
        );
    }
    else {
        $Output .= $Self->{LayoutObject}->Header(Title => 'Error');
        $Output .= $Self->{LayoutObject}->Error(
            Message => 'Wrong Subaction!!',
            Comment => 'Please contact your admin',
        );
        $Output .= $Self->{LayoutObject}->Footer();
    }
    return $Output;
}
# --

1;
