# --
# AgentHistory.pm - to add notes to a ticket 
# Copyright (C) 2001-2002 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentHistory.pm,v 1.4 2002-06-08 18:22:14 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentHistory;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.4 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

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

    # check needed Opjects
    foreach (
       'ParamObject', 
       'DBObject', 
       'TicketObject', 
       'LayoutObject', 
       'LogObject', 
       'QueueObject', 
       'ConfigObject',
       'UserObject',
    ) {
        die "Got no $_!" if (!$Self->{$_});
    }

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output;
    my $TicketID = $Self->{TicketID};
    my $QueueID = $Self->{QueueID};
    my $Subaction = $Self->{Subaction};
    my $NextScreen = $Self->{NextScreen} || '';
    my $BackScreen = $Self->{BackScreen};
    my $UserID = $Self->{UserID};
    my $UserLogin = $Self->{UserLogin};
    
    my $Tn = $Self->{TicketObject}->GetTNOfId(ID => $TicketID);
    
    if ($Subaction eq '' || !$Subaction) {
        # print 
        $Output .= $Self->{LayoutObject}->Header(Title => 'History');
        my %LockedData = $Self->{UserObject}->GetLockedCount(UserID => $UserID);
        # build NavigationBar 
        $Output .= $Self->{LayoutObject}->NavigationBar(LockData => \%LockedData);

        my @Lines;
        my $Tn;
        my $SQL = "SELECT sh.name, sh.article_id, sh.create_time, sh.create_by, st.tn, " .
        " su.$Self->{ConfigObject}->{DatabaseUserTableUser}, ht.name as type " .
        " FROM " .
        " ticket_history as sh, ticket as st, ".
        " $Self->{ConfigObject}->{DatabaseUserTable} as su, ticket_history_type as ht" .
        " WHERE " .
        " sh.ticket_id = $TicketID " .
        " AND " .
        " sh.ticket_id = st.id" .
        " AND " .
        " sh.create_by = su.$Self->{ConfigObject}->{DatabaseUserTableUserID}" .
        " AND " .
        " ht.id = sh.history_type_id" .
        " ORDER BY create_time";
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my $Data = $Self->{DBObject}->FetchrowHashref() ) {
          my %Data;
          $Data{Tn} = $$Data{tn};
          $Data{TicketID} = $TicketID;
          $Data{ArticleID} = $$Data{article_id};
          $Data{Name} = $$Data{name};
          $Data{CreateBy} = $$Data{login};
          $Data{CreateTime} = $$Data{create_time};
          $Data{HistoryType} = $$Data{type},
          push (@Lines, \%Data);
          $Tn = $$Data{tn};
        }

        # get output
        $Output .= $Self->{LayoutObject}->AgentHistory(
          TicketNumber => $Tn, 
          BackScreen => $Self->{BackScreen},
          QueueID => $QueueID,
          TicketID => $TicketID,
          Data => \@Lines,
        );
        # add footer
        $Output .= $Self->{LayoutObject}->Footer();
    }
    else {
        $Output .= $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->Error(
            MSG => 'No Subaction!!',
            REASON => 'Please contact your admin',
        );
        $Output .= $Self->{LayoutObject}->Footer();
    }
    return $Output;
}
# --

1;
