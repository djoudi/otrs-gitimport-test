# --
# Kernel/System/Ticket/ArticleStorageDB.pm - article storage module for OTRS kernel
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: ArticleStorageDB.pm,v 1.49 2007-10-05 14:11:22 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Ticket::ArticleStorageDB;

use strict;
use warnings;

use MIME::Base64;
use MIME::Words qw(:all);

use vars qw($VERSION);
$VERSION = qw($Revision: 1.49 $) [1];

sub ArticleStorageInit {
    my ( $Self, %Param ) = @_;

    # ArticleDataDir
    $Self->{ArticleDataDir} = $Self->{ConfigObject}->Get('ArticleDir')
        || die "Got no ArticleDir!";

    # create ArticleContentPath
    my ( $Sec, $Min, $Hour, $Day, $Month, $Year )
        = $Self->{TimeObject}->SystemTime2Date( SystemTime => $Self->{TimeObject}->SystemTime(), );
    $Self->{ArticleContentPath} = $Year . '/' . $Month . '/' . $Day;

    return 1;
}

sub ArticleDelete {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TicketID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # delete attachments and plain emails
    my @Articles = $Self->ArticleIndex( TicketID => $Param{TicketID} );
    for (@Articles) {

        # delete time accounting
        $Self->ArticleAccountedTimeDelete(
            ArticleID => $_,
            UserID    => $Param{UserID},
        );

        # delete attachments
        $Self->ArticleDeleteAttachment(
            ArticleID => $_,
            UserID    => $Param{UserID},
        );

        # delete plain message
        $Self->ArticleDeletePlain(
            ArticleID => $_,
            UserID    => $Param{UserID},
        );

        # delete storage directory
        $Self->_ArticleDeleteDirectory(
            ArticleID => $_,
            UserID    => $Param{UserID},
        );
    }

    # db quote
    for (qw(TicketID)) {
        $Param{$_} = $Self->{DBObject}->Quote( $Param{$_}, 'Integer' );
    }

    # delete articles
    if ( $Self->{DBObject}->Do( SQL => "DELETE FROM article WHERE ticket_id = $Param{TicketID}" ) )
    {

        # delete history
        if ( $Self->HistoryDelete( TicketID => $Param{TicketID}, UserID => $Param{UserID} ) ) {
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

sub _ArticleDeleteDirectory {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ArticleID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # delete directory from fs
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );
    my $Path = "$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}";
    if ( -d $Path ) {
        if ( !rmdir($Path) ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Can't remove: $Path: $!!",
            );
            return;
        }
    }
    return 1;
}

sub ArticleDeletePlain {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ArticleID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # db quote
    for (qw(ArticleID)) {
        $Param{$_} = $Self->{DBObject}->Quote( $Param{$_}, 'Integer' );
    }

    # delete attachments
    $Self->{DBObject}
        ->Do( SQL => "DELETE FROM article_plain WHERE article_id = $Param{ArticleID}" );

    # delete from fs
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );
    my $File = "$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/plain.txt";
    if ( -f $File ) {
        if ( !unlink($File) ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Can't remove: $File: $!!",
            );
            return;
        }
    }
    return 1;
}

sub ArticleDeleteAttachment {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ArticleID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # db quote
    for (qw(ArticleID)) {
        $Param{$_} = $Self->{DBObject}->Quote( $Param{$_}, 'Integer' );
    }

    # delete attachments
    $Self->{DBObject}
        ->Do( SQL => "DELETE FROM article_attachment WHERE article_id = $Param{ArticleID}" );

    # delete from fs
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );
    my $Path = "$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}";
    if ( -e $Path ) {
        my @List = glob($Path);
        for my $File (@List) {
            if ( $File !~ /(\/|\\)plain.txt$/ ) {
                if ( !unlink $File ) {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message  => "Can't remove: $File: $!!",
                    );
                }
            }
        }
    }
    return 1;
}

sub ArticleWritePlain {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ArticleID Email UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # encode attachemnt if it's a postgresql backend!!!
    if ( !$Self->{DBObject}->GetDatabaseFunction('DirectBlob') ) {
        $Self->{EncodeObject}->EncodeOutput( \$Param{Email} );
        $Param{Email} = encode_base64( $Param{Email} );
    }

    # db quote
    for (qw(ArticleID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote( $Param{$_}, 'Integer' );
    }

    # write article to db 1:1
    my $SQL
        = "INSERT INTO article_plain "
        . " (article_id, body, create_time, create_by, change_time, change_by) "
        . " VALUES "
        . " ($Param{ArticleID}, ?, "
        . " current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
    if ( $Self->{DBObject}->Do( SQL => $SQL, Bind => [ \$Param{Email} ] ) ) {
        return 1;
    }
    else {
        return;
    }
}

sub ArticleWriteAttachment {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Content Filename ContentType ArticleID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    my $NewFileName = $Param{Filename};
    my %UsedFile    = ();
    my %Index       = $Self->ArticleAttachmentIndex( ArticleID => $Param{ArticleID} );
    for ( keys %Index ) {
        $UsedFile{ $Index{$_}->{Filename} } = 1;
    }
    for ( my $i = 1; $i <= 12; $i++ ) {
        if ( exists $UsedFile{$NewFileName} ) {
            if ( $Param{Filename} =~ /^(.*)\.(.+?)$/ ) {
                $NewFileName = "$1-$i.$2";
            }
            else {
                $NewFileName = "$Param{Filename}-$i";
            }
        }
    }

    # get file name
    $Param{Filename} = $NewFileName;

    # get attachment size
    {
        use bytes;
        $Param{Filesize} = length( $Param{Content} );
        no bytes;
    }

    # encode attachemnt if it's a postgresql backend!!!
    if ( !$Self->{DBObject}->GetDatabaseFunction('DirectBlob') ) {
        $Self->{EncodeObject}->EncodeOutput( \$Param{Content} );
        $Param{Content} = encode_base64( $Param{Content} );
    }

    # db quote (just not Content, use db Bind values)
    for (qw(Filename ContentType Filesize)) {
        $Param{$_} = $Self->{DBObject}->Quote( $Param{$_} );
    }
    for (qw(ArticleID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote( $Param{$_}, 'Integer' );
    }
    my $SQL
        = "INSERT INTO article_attachment "
        . " (article_id, filename, content_type, content_size, content, "
        . " create_time, create_by, change_time, change_by) "
        . " VALUES "
        . " ($Param{ArticleID}, '$Param{Filename}', '$Param{ContentType}', '$Param{Filesize}', ?, "
        . " current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";

    # write attachment to db
    if ( $Self->{DBObject}->Do( SQL => $SQL, Bind => [ \$Param{Content} ] ) ) {
        return 1;
    }
    else {
        return;
    }
}

sub ArticlePlain {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ArticleID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need ArticleID!" );
        return;
    }

    # prepare/filter ArticleID
    $Param{ArticleID} = quotemeta( $Param{ArticleID} );
    $Param{ArticleID} =~ s/\0//g;

    # get content path
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );

    # open plain article
    my $Data = '';
    if ( !-f "$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/plain.txt" ) {

        # can't open article, try database
        for (qw(ArticleID)) {
            $Param{$_} = $Self->{DBObject}->Quote( $Param{$_}, 'Integer' );
        }
        my $SQL = "SELECT body FROM article_plain WHERE article_id = $Param{ArticleID}";
        $Self->{DBObject}->Prepare( SQL => $SQL );
        while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {

            # decode attachemnt if it's e. g. a postgresql backend!!!
            if ( !$Self->{DBObject}->GetDatabaseFunction('DirectBlob') && $Row[0] !~ / / ) {
                $Data = decode_base64( $Row[0] );
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
                Message  => "No plain article (article id $Param{ArticleID}) in database!",
            );
            return;
        }
    }
    else {

        # read whole article
        my $Data = $Self->{MainObject}->FileRead(
            Directory => "$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/",
            Filename  => 'plain.txt',
            Mode      => 'binmode',
        );
        if ($Data) {
            return ${ $Data };
        }
        else {
            return;
        }
    }
}

sub ArticleAttachmentIndex {
    my ( $Self, %Param ) = @_;

    # check ArticleContentPath
    if ( !$Self->{ArticleContentPath} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need ArticleContentPath!" );
        return;
    }

    # check needed stuff
    if ( !$Param{ArticleID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need ArticleID!" );
        return;
    }

    # get ContentPath if not given
    if ( !$Param{ContentPath} ) {
        $Param{ContentPath} = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} ) || '';
    }
    my %Index   = ();
    my $Counter = 0;

    # try database
    for (qw(ArticleID)) {
        $Param{$_} = $Self->{DBObject}->Quote( $Param{$_}, 'Integer' );
    }
    my $SQL
        = "SELECT filename, content_type, content_size FROM article_attachment "
        . " WHERE "
        . " article_id = $Param{ArticleID} ORDER BY id";
    $Self->{DBObject}->Prepare( SQL => $SQL );
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {

        # human readable file size
        if ( $Row[2] ) {
            if ( $Row[2] > ( 1024 * 1024 ) ) {
                $Row[2] = sprintf "%.1f MBytes", ( $Row[2] / ( 1024 * 1024 ) );
            }
            elsif ( $Row[2] > 1024 ) {
                $Row[2] = sprintf "%.1f KBytes", ( ( $Row[2] / 1024 ) );
            }
            else {
                $Row[2] = $Row[2] . ' Bytes';
            }
        }

        # add the info the the hash
        $Counter++;
        $Index{$Counter} = {
            Filename    => $Row[0],
            ContentType => $Row[1],
            Filesize    => $Row[2] || '',
        };
    }

    # try fs (if there is no index in fs)
    if ( !%Index ) {
        my @List = glob("$Self->{ArticleDataDir}/$Param{ContentPath}/$Param{ArticleID}/*");
        for my $Filename (@List) {
            my $FileSize = -s $Filename;

            # convert the file name in utf-8 if utf-8 is used
            $Filename = $Self->{EncodeObject}->Decode(
                Text => $Filename,
                From => 'utf-8',
            );

            # human readable file size
            if ($FileSize) {

                # remove meta data in files
                $FileSize = $FileSize - 30 if ( $FileSize > 30 );
                if ( $FileSize > ( 1024 * 1024 ) ) {
                    $FileSize = sprintf "%.1f MBytes", ( $FileSize / ( 1024 * 1024 ) );
                }
                elsif ( $FileSize > 1024 ) {
                    $FileSize = sprintf "%.1f KBytes", ( ( $FileSize / 1024 ) );
                }
                else {
                    $FileSize = $FileSize . ' Bytes';
                }
            }

            # read content type
            my $ContentType = '';
            if ( -e "$Filename.content_type" ) {
                my $Content = $Self->{MainObject}->FileRead(
                    Location => "$Filename.content_type",
                );
                if ($Content) {
                    $ContentType = ${ $Content };
                }
                else {
                    return;
                }
            }

            # read content type (old style)
            else {
                my $Content = $Self->{MainObject}->FileRead(
                    Location => $Filename,
                    Result   => 'ARRAY',
                );
                if ($Content) {
                    $ContentType = $Content->[0];
                }
                else {
                    return;
                }
            }

            # strip filename
            $Filename =~ s!^.*/!!;
            if ( $Filename ne 'plain.txt' ) {

                # add the info the the hash
                $Counter++;
                $Index{$Counter} = {
                    Filename    => $Filename,
                    Filesize    => $FileSize,
                    ContentType => $ContentType,
                };
            }
        }
    }
    return %Index;
}

sub ArticleAttachment {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ArticleID FileID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # prepare/filter ArticleID
    $Param{ArticleID} = quotemeta( $Param{ArticleID} );
    $Param{ArticleID} =~ s/\0//g;

    # get attachment index
    my %Index = $Self->ArticleAttachmentIndex( ArticleID => $Param{ArticleID} );

    # get content path
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );
    my %Data = %{ $Index{ $Param{FileID} } };

    my $Counter = 0;
    my @List    = glob("$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/*");
    if (@List) {
        for my $Filename (@List) {
            if ( $Filename !~ /\/plain.txt$/ && $Filename !~ /\.content_type$/ ) {

                # add the info the the hash
                $Counter++;
                if ( $Counter == $Param{FileID} ) {

                    # convert the file name in utf-8 if utf-8 is used
                    $Filename = $Self->{EncodeObject}->Decode(
                        Text => $Filename,
                        From => 'utf-8',
                    );
                    if ( -e "$Filename.content_type" ) {

                        # read content type
                        my $Content = $Self->{MainObject}->FileRead(
                            Location => "$Filename.content_type",
                        );
                        if ($Content) {
                            $Data{ContentType} = ${ $Content };
                        }
                        else {
                            return;
                        }

                        # read content
                        $Content = $Self->{MainObject}->FileRead(
                            Location => $Filename,
                            Mode     => 'binmode',
                        );
                        if ($Content) {
                            $Data{Content} = ${ $Content };
                        }
                        else {
                            return;
                        }
                    }
                    else {

                        # read content
                        my $Content = $Self->{MainObject}->FileRead(
                            Location => $Filename,
                            Mode     => 'binmode',
                            Result   => 'ARRAY',
                        );
                        if ($Content) {
                            $Data{ContentType} = $Content->[0];
                            for my $Line (@{$Content}) {
                                if ($Counter) {
                                    $Data{Content} .= $Line;
                                }
                                $Counter++;
                            }
                        }
                        else {
                            return;
                        }
                    }
                    if (   $Data{ContentType} =~ /plain\/text/i
                        && $Data{ContentType} =~ /(utf\-8|utf8)/i )
                    {
                        $Self->{EncodeObject}->Encode( \$Data{Content} );
                    }
                    chomp( $Data{ContentType} );
                    return %Data;
                }
            }
        }
    }
    else {

        # try database
        for (qw(ArticleID)) {
            $Param{$_} = $Self->{DBObject}->Quote( $Param{$_}, 'Integer' );
        }
        my $SQL
            = "SELECT content_type, content FROM article_attachment "
            . " WHERE "
            . " article_id = $Param{ArticleID} ORDER BY id";
        $Self->{DBObject}->Prepare( SQL => $SQL, Limit => $Param{FileID}, Encode => [ 1, 0 ] );
        while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
            $Data{ContentType} = $Row[0];

            # decode attachemnt if it's e. g. a postgresql backend!!!
            if ( !$Self->{DBObject}->GetDatabaseFunction('DirectBlob') ) {
                $Data{Content} = decode_base64( $Row[1] );
            }
            else {
                $Data{Content} = $Row[1];
            }
        }
        if ( $Data{Content} ) {
            return %Data;
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message =>
                    "No article attachment (article id $Param{ArticleID}, file id $Param{FileID}) in database!",
            );
            return;
        }
    }

    return 1;
}

1;
