# --
# Kernel/Modules/AgentAttachment.pm - to get the attachments 
# Copyright (C) 2002-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AgentAttachment.pm,v 1.8 2003-01-03 16:17:29 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AgentAttachment;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.8 $';
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
      'ConfigObject',
      'UserObject',
    ) {
        die "Got no $_!" if (!$Self->{$_});
    }

    # get ArticleID
    $Self->{ArticleID} = $Self->{ParamObject}->GetParam(Param => 'ArticleID');
    $Self->{FileID} = $Self->{ParamObject}->GetParam(Param => 'FileID');

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    # --
    # check params
    # --
    if (!$Self->{FileID} || !$Self->{ArticleID}) {
        $Output .= $Self->{LayoutObject}->Header(Title => 'Error');
        $Output .= $Self->{LayoutObject}->Error(
            Message => 'FileID and ArticleID are needed!',
            Comment => 'Please contact your admin'
        );
        $Self->{LogObject}->Log(
            Message => 'FileID and ArticleID are needed!',
            Priority => 'error',
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # --
    # check permissions
    # --
    my %ArticleData = $Self->{TicketObject}->GetArticle(ArticleID => $Self->{ArticleID});
    if (!$ArticleData{TicketID}) {
        $Output .= $Self->{LayoutObject}->Header(Title => 'Error');
        $Output .= $Self->{LayoutObject}->Error(
            Message => "No TicketID for ArticleID ($Self->{ArticleID})!",
            Comment => 'Please contact your admin'
        );
        $Self->{LogObject}->Log(
            Message => "No TicketID for ArticleID ($Self->{ArticleID})!",
            Priority => 'error',
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
    elsif ($Self->{TicketObject}->Permission(
        TicketID => $ArticleData{TicketID},
        UserID => $Self->{UserID})) {

        # --
        # geta attachment
        # -- 
        if (my %Data = $Self->{TicketObject}->GetArticleAttachment(
          ArticleID => $Self->{ArticleID},
          FileID => $Self->{FileID},
        )) {
            return $Self->{LayoutObject}->Attachment(%Data);  
        }
        else {
            $Output .= $Self->{LayoutObject}->Header(Title => 'Error');
            $Output .= $Self->{LayoutObject}->Error(
              Message => "No such attacment ($Self->{FileID})!",
              Comment => 'Please contact your admin'
            );
            $Self->{LogObject}->Log(
              Message => "No such attacment ($Self->{FileID})! May be an attack!!!",
              Priority => 'error',
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
    }
    else {
        # --
        # error screen
        return $Self->{LayoutObject}->NoPermission(WithHeader => 'yes');
    }
}
# --

1;


