# --
# Kernel/Output/HTML/ArticleAttachmentDownload.pm
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: ArticleAttachmentDownload.pm,v 1.13 2011-02-18 23:02:10 mp Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::ArticleAttachmentDownload;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.13 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (qw(ConfigObject LogObject DBObject LayoutObject UserID TicketObject ArticleID)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(File Article)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # download type
    my $Type = $Self->{ConfigObject}->Get('AttachmentDownloadType') || 'attachment';

    # if attachment will be forced to download, don't open a new download window!
    my $Target = '';
    if ( $Type =~ /inline/i ) {
        $Target = 'target="attachment" ';
    }

    # include Filename in URL because of encoding problems with IIS/IE
    my $EncodedFilename = $Self->{LayoutObject}->LinkEncode( $Param{File}->{Filename} || '' );

    return (
        %{ $Param{File} },
        Action => 'Download',
        Link =>
            "\$Env{\"CGIHandle\"}/$EncodedFilename?Action=AgentTicketAttachment;ArticleID=$Param{Article}->{ArticleID};FileID=$Param{File}->{FileID}",
        Target => $Target,
        Class  => 'Download',
    );
}

1;
