# --
# Kernel/Output/HTML/ArticleAttachmentDownload.pm
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: ArticleAttachmentDownload.pm,v 1.1 2004-11-11 10:39:43 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Output::HTML::ArticleAttachmentDownload;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # get needed objects
    foreach (qw(ConfigObject LogObject DBObject LayoutObject UserID TicketObject ArticleID)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(File Article)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # download type
    my $Type = $Self->{ConfigObject}->Get('Agent::DownloadType') || 'attachment';
    # if attachment will be forced to download, don't open a new download window!
    my $Target = '';
    if ($Type =~ /inline/i) {
        $Target = 'target="attachment" ';
    }
    return (
         %{$Param{File}},
         Action => 'Download',
         Link => "\$Env{\"Baselink\"}Action=AgentAttachment&ArticleID=$Param{Article}->{ArticleID}&FileID=$Param{File}->{FileID}",
         Image => 'disk-s.png',
         Target => $Target,
    );
}
# --
1;
