# --
# Kernel/Modules/AgentCustomer.pm - to set the ticket customer and show the customer history
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentCustomer.pm,v 1.36 2004-10-02 09:14:15 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentCustomer;

use strict;
use Kernel::System::CustomerUser;

use vars qw($VERSION);
$VERSION = '$Revision: 1.36 $';
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

    # check needed Objects
    foreach (qw(ParamObject DBObject TicketObject LayoutObject LogObject ConfigObject)) {
        die "Got no $_!" if (!$Self->{$_});
    }

    $Self->{Search} = $Self->{ParamObject}->GetParam(Param => 'Search') || 0;
    $Self->{CustomerID} = $Self->{ParamObject}->GetParam(Param => 'CustomerID') || '';

    # customer user object
    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    # check permissions
    if ($Self->{TicketID}) {
        if (!$Self->{TicketObject}->Permission(
            Type => 'customer',
            TicketID => $Self->{TicketID},
            UserID => $Self->{UserID})) {
            # no permission screen, don't show ticket
            return $Self->{LayoutObject}->NoPermission(WithHeader => 'yes');
        }
    }

    if ($Self->{Subaction} eq 'Update') {
        # set customer id
        my $ExpandCustomerName = $Self->{ParamObject}->GetParam(Param => 'ExpandCustomerName') || 0;
        my $CustomerUserOption = $Self->{ParamObject}->GetParam(Param => 'CustomerUserOption') || '';
        $Param{CustomerUserID} = $Self->{ParamObject}->GetParam(Param => 'CustomerUserID') || '';
        $Param{CustomerID} = $Self->{ParamObject}->GetParam(Param => 'CustomerID') || '';
        # Expand Customer Name
        if ($ExpandCustomerName == 1) {
            # search customer
            my %CustomerUserList = ();
            %CustomerUserList = $Self->{CustomerUserObject}->CustomerSearch(
                Search => $Param{CustomerUserID},
            );
            # check if just one customer user exists
            # if just one, fillup CustomerUserID and CustomerID
            $Param{CustomerUserListCount} = 0;
            foreach (keys %CustomerUserList) {
                $Param{CustomerUserListCount}++;
                $Param{CustomerUserListLast} = $CustomerUserList{$_};
                $Param{CustomerUserListLastUser} = $_;
            }
            if ($Param{CustomerUserListCount} == 1) {
                $Param{CustomerUserID} = $Param{CustomerUserListLastUser};
                my %CustomerUserData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                    User => $Param{CustomerUserListLastUser},
                );
                if ($CustomerUserData{UserCustomerID}) {
                    $Param{CustomerID} = $CustomerUserData{UserCustomerID};
                }

            }
            # if more the one customer user exists, show list
            # and clean CustomerUserID and CustomerID
            else {
#                $Param{CustomerUserID} = '';
                $Param{CustomerID} = '';
                $Param{"CustomerUserOptions"} = \%CustomerUserList;
            }
            return $Self->Form(%Param);
        }
        # get customer user and customer id
        elsif ($ExpandCustomerName == 2) {
            my %CustomerUserData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                User => $CustomerUserOption,
            );
            my %CustomerUserList = $Self->{CustomerUserObject}->CustomerSearch(
                UserLogin => $CustomerUserOption,
            );
            foreach (keys %CustomerUserList) {
                $Param{CustomerUserID} = $_;
            }
            if ($CustomerUserData{UserCustomerID}) {
                $Param{CustomerID} = $CustomerUserData{UserCustomerID};
            }
            return $Self->Form(%Param);
        }
        # update customer user data
        if ($Self->{TicketObject}->SetCustomerData(
            TicketID => $Self->{TicketID},
            No => $Param{CustomerID},
            User => $Param{CustomerUserID},
            UserID => $Self->{UserID},
        )) {
            # redirect
            return $Self->{LayoutObject}->Redirect(OP => $Self->{LastScreenView});
        }
        else {
            # error?!
            return $Self->{LayoutObject}->ErrorScreen();
        }
    }
    # show form
    else {
        return $Self->Form(%Param);
    }
}
# --
sub Form {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    # print header
    $Output .= $Self->{LayoutObject}->Header(Area => 'Agent', Title => 'Customer');
    $Output .= $Self->{LayoutObject}->NavigationBar();
    my $TicketCustomerID = $Self->{CustomerID};
    # --
    # print change form if ticket id is given
    # --
    my %CustomerUserData = ();
    if ($Self->{TicketID}) {
        # get ticket data
        my %TicketData = $Self->{TicketObject}->TicketGet(TicketID => $Self->{TicketID});
        if ($TicketData{CustomerUserID}) {
            %CustomerUserData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                User => $TicketData{CustomerUserID},
            );
        }
        $TicketCustomerID = $TicketData{CustomerID};
        $Param{Table} = $Self->{LayoutObject}->AgentCustomerViewTable(Data => \%CustomerUserData);
        # print change form
        $Output .= $Self->_Mask(
            %TicketData,
            %Param,
        );
    }
    # --
    # get ticket ids with customer id
    # --
    my @TicketIDs = ();
    if ($TicketCustomerID || $CustomerUserData{UserID}) {
        if ($CustomerUserData{UserID}) {
            # get secondary customer ids
            my @CustomerIDs = $Self->{CustomerUserObject}->CustomerIDs(User => $CustomerUserData{UserID});
            # get own customer id
            if ($CustomerUserData{UserCustomerID}) {
                push (@CustomerIDs, $CustomerUserData{UserCustomerID});
            }
            @TicketIDs = $Self->{TicketObject}->TicketSearch(
                Result => 'ARRAY',
                Limit => $Self->{ConfigObject}->Get('AgentCustomerMaxShownCustomerTickets') || '40',
                CustomerID => \@CustomerIDs,
                UserID => $Self->{UserID},
                Permission => 'ro',
                Limit => 50,
            );
        }
        elsif ($TicketCustomerID) {
            @TicketIDs = $Self->{TicketObject}->TicketSearch(
                Result => 'ARRAY',
                CustomerID => $TicketCustomerID,
                UserID => $Self->{UserID},
                Permission => 'ro',
                Limit => 50,
            );
        }
    }
    my $OutputTables = '';
    foreach my $TicketID (@TicketIDs) {
        # get ack actions
        $Self->{TicketObject}->TicketAcl(
            Data => '-',
            Action => $Self->{Action},
            TicketID => $TicketID,
            ReturnType => 'Action',
            ReturnSubType => '-',
            UserID => $Self->{UserID},
        );
        my %AclAction = $Self->{TicketObject}->TicketAclActionData();
        my %Article = $Self->{TicketObject}->ArticleLastCustomerArticle(TicketID => $TicketID);
        foreach (qw(From To Cc Subject)) {
            if ($Article{$_}) {
                $Self->{LayoutObject}->Block(
                    Name => 'Row',
                    Data => {
                        Key => $_,
                        Value => $Article{$_},
                    },
                );
            }
        }
        $OutputTables .= $Self->{LayoutObject}->Output(
            TemplateFile => 'TicketViewLite',
            Data => {
                %AclAction,
                %Article,
                Age => $Self->{LayoutObject}->CustomerAge(Age => $Article{Age}, Space => ' '),
            }
        );

    }
    if (!$OutputTables && $Self->{Search}) {
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AgentUtilSearchByCustomerID',
            Data => {
                %Param,
                Message => 'No entry found!',
                CustomerID => $Self->{CustomerID},
            },
        );
    }
    elsif ($Self->{Search}) {
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AgentUtilSearchByCustomerID',
            Data => {
                %Param,
                CustomerID => $Self->{CustomerID},
            },
        );
    }
    if ($OutputTables) {
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AgentCustomerHistory',
            Data => {
                CustomerID => $TicketCustomerID,
                TicketID => $Self->{TicketID},
            }
        ).$OutputTables;
    }
    $Output .= $Self->{LayoutObject}->Footer();
    return $Output;
}
# --
sub _Mask {
    my $Self = shift;
    my %Param = @_;
    # do html quoting
    foreach (qw(CustomerUser CustomerID)) {
        $Param{$_} = $Self->{LayoutObject}->Ascii2Html(Text => $Param{$_}) || '';
    }
    # build from string
    if ($Param{CustomerUserOptions} && %{$Param{CustomerUserOptions}}) {
      $Param{'CustomerUserStrg'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => $Param{CustomerUserOptions},
        Name => 'CustomerUserOption',
        Max => 70,
      ).'$Env{"Box0"}<a href="" onclick="document.compose.ExpandCustomerName.value=\'2\'; document.compose.submit(); return false;" onmouseout="window.status=\'\';" onmouseover="window.status=\'$Text{"Take this Customer"}\'; return true;">$Text{"Take this Customer"}</a>$Env{"Box1"}';
    }
    # create & return output
    return $Self->{LayoutObject}->Output(TemplateFile => 'AgentCustomer', Data => \%Param);
}
# --
1;
