# --
# Kernel/System/Ticket/ArticleStorageDB.pm - article storage module for OTRS kernel
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: ArticleStorageDB.pm,v 1.23 2005-05-04 07:58:51 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Ticket::ArticleStorage;

use strict;
use MIME::Base64;
use MIME::Words qw(:all);

use vars qw($VERSION);
$VERSION = '$Revision: 1.23 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub ArticleStorageInit {
    my $Self = shift;
    my %Param = @_;
    # ArticleDataDir
    $Self->{ArticleDataDir} = $Self->{ConfigObject}->Get('ArticleDir')
       || die "Got no ArticleDir!";
    # create ArticleContentPath
    my ($Sec, $Min, $Hour, $Day, $Month, $Year) = $Self->{TimeObject}->SystemTime2Date(
        SystemTime => $Self->{TimeObject}->SystemTime(),
    );
    $Self->{ArticleContentPath} = $Year.'/'.$Month.'/'.$Day;

    return 1;
}
# --
sub ArticleDelete {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(TicketID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # delete attachments and plain emails
    my @Articles = $Self->ArticleIndex(TicketID => $Param{TicketID});
    foreach (@Articles) {
        # delete attachments
        $Self->ArticleDeleteAttachment(
            ArticleID => $_,
            UserID => $Param{UserID},
        );
        # delete plain message
        $Self->ArticleDeletePlain(
            ArticleID => $_,
            UserID => $Param{UserID},
        );
    }
    # delete articles
    if ($Self->{DBObject}->Do(SQL => "DELETE FROM article WHERE ticket_id = $Param{TicketID}")) {
        # delete history�
        if ($Self->HistoryDelete(TicketID => $Param{TicketID})) {
            return 1;
        }
        else {
            return;
        }
    }
    else {
        return;
    }
}
# --
sub ArticleDeletePlain {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ArticleID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # delete attachments
    $Self->{DBObject}->Do(SQL => "DELETE FROM article_plain WHERE article_id = $Param{ArticleID}");
    # delete from fs
    my $ContentPath = $Self->ArticleGetContentPath(ArticleID => $Param{ArticleID});
    my $Path = "$Self->{ArticleDataDir}/$ContentPath/plain.txt";
    if (-f $Path) {
        unlink $Path;
    }
    return 1;
}
# --
sub ArticleDeleteAttachment {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ArticleID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # delete attachments
    $Self->{DBObject}->Do(SQL => "DELETE FROM article_attachment WHERE article_id = $Param{ArticleID}");
    # delete from fs
    my $ContentPath = $Self->ArticleGetContentPath(ArticleID => $Param{ArticleID});
    my $Path = "$Self->{ArticleDataDir}/$ContentPath/";
    my @List = glob($Path);
    foreach my $File (@List) {
        $File =~ s!^.*/!!;
        if ($File !~ /^plain.txt$/) {
            unlink "$Path/$File";
        }
    }
    return 1;
}
# --
sub ArticleWritePlain {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ArticleID Email UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # encode attachemnt if it's a postgresql backend!!!
    if (!$Self->{DBObject}->GetDatabaseFunction('DirectBlob')) {
        $Self->{EncodeObject}->EncodeOutput(\$Param{Email});
        $Param{Email} = encode_base64($Param{Email});
    }
    # db quote (just not Email, use db Bind values)
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) if ($_ ne 'Email');;
    }
    # write article to db 1:1
    my $SQL = "INSERT INTO article_plain ".
        " (article_id, body, create_time, create_by, change_time, change_by) " .
        " VALUES ".
        " ($Param{ArticleID}, ?, ".
        " current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
    if ($Self->{DBObject}->Do(SQL => $SQL, Bind => [\$Param{Email}])) {
        return 1;
    }
    else {
        return;
    }
}
# --
sub ArticleWriteAttachment {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Content Filename ContentType ArticleID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # check used name (we want just uniq names)
    my $NewFileName = decode_mimewords($Param{Filename});
    my %UsedFile = ();
    my %Index = $Self->ArticleAttachmentIndex(ArticleID => $Param{ArticleID});
    foreach (keys %Index) {
        $UsedFile{$Index{$_}} = 1;
    }
    for (my $i=1; $i<=12; $i++) {
        if (exists $UsedFile{$NewFileName}) {
            $NewFileName = "$Param{Filename}-$i";
        }
        else {
            $i = 20;
        }
    }
    # get file name
    $Param{Filename} = $NewFileName;
    # get attachment size
    {
        use bytes;
        $Param{Filesize} = length($Param{Content});
        no bytes;
    }
    # encode attachemnt if it's a postgresql backend!!!
    if (!$Self->{DBObject}->GetDatabaseFunction('DirectBlob')) {
        $Param{Content} = encode_base64($Param{Content});
    }
    # db quote (just not Content, use db Bind values)
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) if ($_ ne 'Content');
    }
    my $SQL = "INSERT INTO article_attachment ".
        " (article_id, filename, content_type, content_size, content, ".
        " create_time, create_by, change_time, change_by) " .
        " VALUES ".
        " ($Param{ArticleID}, '$Param{Filename}', '$Param{ContentType}', '$Param{Filesize}', ?, ".
        " current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
    # write attachment to db
    if ($Self->{DBObject}->Do(SQL => $SQL, Bind => [\$Param{Content}])) {
        return 1;
    }
    else {
        return;
    }
}
# --
sub ArticlePlain {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{ArticleID}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need ArticleID!");
      return;
    }
    # prepare/filter ArticleID
    $Param{ArticleID} = quotemeta($Param{ArticleID});
    $Param{ArticleID} =~ s/\0//g;
    # get content path
    my $ContentPath = $Self->ArticleGetContentPath(ArticleID => $Param{ArticleID});
    # open plain article
    my $Data = '';
    if (!open (DATA, "< $Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/plain.txt")) {
        # can't open article
        # try database
        my $SQL = "SELECT body FROM article_plain ".
          " WHERE ".
          " article_id = ".$Self->{DBObject}->Quote($Param{ArticleID})."";
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            # decode attachemnt if it's e. g. a postgresql backend!!!
            if (!$Self->{DBObject}->GetDatabaseFunction('DirectBlob') && $Row[0] !~ / /) {
                $Data = decode_base64($Row[0]);
            }
            else {
                $Data = $Row[0];
            }
        }
        # return plain email
        if ($Data) {
            return $Data;
        }
        # else error!
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "No plain article (article id $Param{ArticleID}) in database!",
            );
            return;
        }
    }
    else {
        # read whole article
        while (<DATA>) {
            $Data .= $_;
        }
        close (DATA);
        return $Data;
    }
}
# --
sub ArticleAttachmentIndex {
    my $Self = shift;
    my %Param = @_;
    # check ArticleContentPath
    if (!$Self->{ArticleContentPath}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need ArticleContentPath!");
        return;
    }
    # check needed stuff
    if (!$Param{ArticleID}) {
      $Self->{LogObject}->Log(Priority => 'error', Message => "Need ArticleID!");
      return;
    }
    # get ContentPath if not given
    if (!$Param{ContentPath}) {
        $Param{ContentPath} = $Self->ArticleGetContentPath(ArticleID => $Param{ArticleID});
    }
    my %Index = ();
    my $Counter = 0;
    # try database
    my $SQL = "SELECT filename, content_type, content_size FROM article_attachment ".
        " WHERE ".
        " article_id = ".$Self->{DBObject}->Quote($Param{ArticleID})."".
        " ORDER BY id";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Counter++;
        # human readable file size
        if ($Row[2]) {
            if ($Row[2] > (1024*1024)) {
                $Row[2] = sprintf "%.1f MBytes", ($Row[2]/(1024*1024));
            }
            elsif ($Row[2] > 1024) {
                $Row[2] = sprintf "%.1f KBytes", (($Row[2]/1024));
            }
            else {
                $Row[2] = $Row[2].' Bytes';
            }
        }
        # add the info the the hash
        $Index{$Counter} = {
            Filename => $Row[0],
            ContentType => $Row[1],
            Filesize => $Row[2] || '',
        };
    }
    # try fs (if there is no index in fs)
    if (!%Index) {
        my @List = glob("$Self->{ArticleDataDir}/$Param{ContentPath}/$Param{ArticleID}/*");
        foreach (@List) {
            $Counter++;
            my $FileSize = -s $_;
            # human readable file size
            if ($FileSize) {
                # remove meta data in files
                $FileSize = $FileSize - 30 if ($FileSize > 30);
                if ($FileSize > (1024*1024)) {
                    $FileSize = sprintf "%.1f MBytes", ($FileSize/(1024*1024));
                }
                elsif ($FileSize > 1024) {
                    $FileSize = sprintf "%.1f KBytes", (($FileSize/1024));
                }
                else {
                    $FileSize = $FileSize.' Bytes';
                }
            }
            # strip filename
            s!^.*/!!;
            if ($_ ne 'plain.txt') {
                # add the info the the hash
                $Index{$Counter} = {
                    Filename => $_,
                    Filesize => $FileSize,
                };
            }
        }
    }
    return %Index;
}
# --
sub ArticleAttachment {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ArticleID FileID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # prepare/filter ArticleID
    $Param{ArticleID} = quotemeta($Param{ArticleID});
    $Param{ArticleID} =~ s/\0//g;
    # get attachment index
    my %Index = $Self->ArticleAttachmentIndex(ArticleID => $Param{ArticleID});
    # get content path
    my $ContentPath = $Self->ArticleGetContentPath(ArticleID => $Param{ArticleID});
    my %Data = %{$Index{$Param{FileID}}};
    my $Counter = 0;

    if (open (DATA, "< $Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/$Data{Filename}")) {
        while (<DATA>) {
            $Data{ContentType} = $_ if ($Counter == 0);
            $Data{Content} .= $_ if ($Counter > 0);
            $Counter++;
        }
        close (DATA);
        return %Data;
    }
    else {
        # try database
        my $SQL = "SELECT content_type, content FROM article_attachment ".
            " WHERE ".
            " article_id = ".$Self->{DBObject}->Quote($Param{ArticleID}).
            " ORDER BY id";
        $Self->{DBObject}->Prepare(SQL => $SQL, Limit => $Param{FileID});
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $Data{ContentType} = $Row[0];
            # decode attachemnt if it's e. g. a postgresql backend!!!
            if (!$Self->{DBObject}->GetDatabaseFunction('DirectBlob')) {
                $Data{Content} = decode_base64($Row[1]);
            }
            else {
                $Data{Content} = $Row[1];
            }
        }
        if ($Data{Content}) {
            return %Data;
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "No article attachment (article id $Param{ArticleID}, file id $Param{FileID}) in database!",
            );
            return;
        }
    }
}
# --

1;
