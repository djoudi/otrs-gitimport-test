# --
# Kernel/System/Ticket/ArticleStorageFS.pm - article storage module for OTRS kernel
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: ArticleStorageFS.pm,v 1.61 2009-04-20 08:16:21 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Ticket::ArticleStorageFS;

use strict;
use warnings;
use File::Path;
use File::Basename;
use MIME::Base64;

# to get it writable for the otrs group (just in case)
umask 002;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.61 $) [1];

sub ArticleStorageInit {
    my ( $Self, %Param ) = @_;

    # ArticleDataDir
    $Self->{ArticleDataDir} = $Self->{ConfigObject}->Get('ArticleDir')
        || die 'Got no ArticleDir!';

    # create ArticleContentPath
    my ( $Sec, $Min, $Hour, $Day, $Month, $Year ) = $Self->{TimeObject}->SystemTime2Date(
        SystemTime => $Self->{TimeObject}->SystemTime(),
    );
    $Self->{ArticleContentPath} = $Year . '/' . $Month . '/' . $Day;

    # check fs write permissions!
    my $Path = "$Self->{ArticleDataDir}/$Self->{ArticleContentPath}/check_permissions.$$";
    if ( -d $Path ) {
        File::Path::rmtree( [$Path] ) || die "Can't remove $Path: $!\n";
    }
    if ( mkdir( "$Self->{ArticleDataDir}/check_permissions_$$", 022 ) ) {
        if ( !rmdir("$Self->{ArticleDataDir}/check_permissions_$$") ) {
            die "Can't remove $Self->{ArticleDataDir}/check_permissions_$$: $!\n";
        }
        if ( File::Path::mkpath( [$Path], 0, 0775 ) ) {
            File::Path::rmtree( [$Path] ) || die "Can't remove $Path: $!\n";
        }
    }
    else {
        my $Error = $!;
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message  => "Can't create $Self->{ArticleDataDir}/check_permissions_$$: $Error, "
                . "Try: \$OTRS_HOME/bin/SetPermissions.pl !",
        );
        die "Error: Can't create $Self->{ArticleDataDir}/check_permissions_$$: $Error \n\n "
            . "Try: \$OTRS_HOME/bin/SetPermissions.pl !!!\n";
    }
    return 1;
}

sub ArticleDelete {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ArticleID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # delete index
    $Self->ArticleIndexDelete(
        ArticleID => $Param{ArticleID},
        UserID    => $Param{UserID},
    );

    # delete time accounting
    $Self->ArticleAccountedTimeDelete(
        ArticleID => $Param{ArticleID},
        UserID    => $Param{UserID},
    );

    # delete attachments
    $Self->ArticleDeleteAttachment(
        ArticleID => $Param{ArticleID},
        UserID    => $Param{UserID},
    );

    # delete plain message
    $Self->ArticleDeletePlain(
        ArticleID => $Param{ArticleID},
        UserID    => $Param{UserID},
    );

    # delete article flags
    return if !$Self->{DBObject}->Do(
        SQL  => 'DELETE FROM article_flag WHERE article_id = ?',
        Bind => [ \$Param{ArticleID} ],
    );

    # delete storage directory
    $Self->_ArticleDeleteDirectory(
        ArticleID => $Param{ArticleID},
        UserID    => $Param{UserID},
    );

    # delete articles
    return if !$Self->{DBObject}->Do(
        SQL  => 'DELETE FROM article WHERE id = ?',
        Bind => [ \$Param{ArticleID} ],
    );

    return 1;
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

    # return of only delete in my backend
    return 1 if $Param{OnlyMyBackend};

    # delete plain from db
    return if !$Self->{DBObject}->Do(
        SQL  => 'DELETE FROM article_plain WHERE article_id = ?',
        Bind => [ \$Param{ArticleID} ],
    );

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

    # delete from fs
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );
    my $Path = "$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}";
    if ( -e $Path ) {
        my @List = glob( $Path . "/*" );
        for my $File (@List) {
            if ( $File !~ /(\/|\\)plain.txt$/ ) {
                if ( !unlink "$File" ) {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message  => "Can't remove: $File: $!!",
                    );
                }
            }
        }
    }

    # return of only delete in my backend
    return 1 if $Param{OnlyMyBackend};

    # delete attachments from db
    return if !$Self->{DBObject}->Do(
        SQL  => 'DELETE FROM article_attachment WHERE article_id = ?',
        Bind => [ \$Param{ArticleID} ],
    );

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

    # prepare/filter ArticleID
    $Param{ArticleID} = quotemeta( $Param{ArticleID} );
    $Param{ArticleID} =~ s/\0//g;

    # define path
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );
    my $Path
        = $Self->{ArticleDataDir} . '/' . $ContentPath . '/' . $Param{ArticleID};

    # debug
    if ( $Self->{Debug} > 1 ) {
        $Self->{LogObject}->Log( Message => "->WriteArticle: $Path" );
    }

    # write article to fs 1:1
    File::Path::mkpath( [$Path], 0, 0775 );

    # write article to fs
    my $Success = $Self->{MainObject}->FileWrite(
        Location   => "$Path/plain.txt",
        Mode       => 'binmode',
        Content    => \$Param{Email},
        Permission => '664',
    );
    return if !$Success;

    return 1;
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

    # prepare/filter ArticleID
    $Param{ArticleID} = quotemeta( $Param{ArticleID} );
    $Param{ArticleID} =~ s/\0//g;
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );

    # define path
    $Param{Path} = $Self->{ArticleDataDir} . '/' . $ContentPath . '/' . $Param{ArticleID};

    # strip spaces from filenames
    $Param{Filename} =~ s/ /_/g;

    # strip dots from filenames
    $Param{Filename} =~ s/^\.//g;
    my $NewFileName = $Param{Filename};
    my %UsedFile    = ();
    my %Index       = $Self->ArticleAttachmentIndex( ArticleID => $Param{ArticleID}, );
    for ( keys %Index ) {
        $UsedFile{ $Index{$_}->{Filename} } = 1;
    }
    for ( my $i = 1; $i <= 50; $i++ ) {
        if ( exists $UsedFile{$NewFileName} ) {
            if ( $Param{Filename} =~ /^(.*)\.(.+?)$/ ) {
                $NewFileName = "$1-$i.$2";
            }
            else {
                $NewFileName = "$Param{Filename}-$i";
            }
        }
    }
    $Param{Filename} = $NewFileName;

    # write attachment to backend
    if ( !-d $Param{Path} ) {
        if ( !File::Path::mkpath( [ $Param{Path} ], 0, 0775 ) ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Can't create $Param{Path}: $!",
            );
            return;
        }
    }

    # write attachment content type to fs
    my $SuccessContentType = $Self->{MainObject}->FileWrite(
        Directory  => $Param{Path},
        Filename   => "$Param{Filename}.content_type",
        Mode       => 'binmode',
        Content    => \$Param{ContentType},
        Permission => '664',
    );
    return if !$SuccessContentType;

    # write attachment content id to fs
    if ( $Param{ContentID} ) {
        $Self->{MainObject}->FileWrite(
            Directory  => $Param{Path},
            Filename   => "$Param{Filename}.content_id",
            Mode       => 'binmode',
            Content    => \$Param{ContentID},
            Permission => '664',
        );
    }

    # write attachment content alternativ to fs
    if ( $Param{ContentAlternative} ) {
        $Self->{MainObject}->FileWrite(
            Directory  => $Param{Path},
            Filename   => "$Param{Filename}.content_alternative",
            Mode       => 'binmode',
            Content    => \$Param{ContentAlternative},
            Permission => '664',
        );
    }

    # write attachment content to fs
    my $SuccessContent = $Self->{MainObject}->FileWrite(
        Directory  => $Param{Path},
        Filename   => $Param{Filename},
        Mode       => 'binmode',
        Content    => \$Param{Content},
        Permission => '664',
    );
    return if !$SuccessContent;

    return 1;
}

sub ArticlePlain {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ArticleID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need ArticleID!' );
        return;
    }

    # prepare/filter ArticleID
    $Param{ArticleID} = quotemeta( $Param{ArticleID} );
    $Param{ArticleID} =~ s/\0//g;

    # get content path
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );

    # open plain article
    if ( -f "$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/plain.txt" ) {

        # read whole article
        my $Data = $Self->{MainObject}->FileRead(
            Directory => "$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/",
            Filename  => 'plain.txt',
            Mode      => 'binmode',
        );
        return if !$Data;
        return ${$Data};
    }

    # return of only delete in my backend
    return if $Param{OnlyMyBackend};

    # can't open article, try database
    return if !$Self->{DBObject}->Prepare(
        SQL  => 'SELECT body FROM article_plain WHERE article_id = ?',
        Bind => [ \$Param{ArticleID} ],
    );
    my $Data;
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $Data = $Row[0];
    }
    if ( !$Data ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message =>
                "Can't open $Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/plain.txt: $!",
        );
        return;
    }
    return $Data;
}

sub ArticleAttachmentIndex {
    my ( $Self, %Param ) = @_;

    # check ArticleContentPath
    if ( !$Self->{ArticleContentPath} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need ArticleContentPath!' );
        return;
    }

    # check needed stuff
    if ( !$Param{ArticleID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need ArticleID!' );
        return;
    }
    my $ContentPath = $Self->ArticleGetContentPath( ArticleID => $Param{ArticleID} );
    my %Index       = ();
    my $Counter     = 0;

    # try fs
    my @List = glob("$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/*");
    for my $Filename (@List) {
        my $FileSize    = -s $Filename;
        my $FileSizeRaw = $FileSize;

        # do not use control file
        next if $Filename =~ /\.content_alternative$/;
        next if $Filename =~ /\.content_id$/;
        next if $Filename =~ /\.content_type$/;
        next if $Filename =~ /\/plain.txt$/;

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
        my $ContentID   = '';
        my $Alternative = '';
        if ( -e "$Filename.content_type" ) {
            my $Content = $Self->{MainObject}->FileRead(
                Location => "$Filename.content_type",
            );
            return if !$Content;
            $ContentType = ${$Content};

            # content id (optional)
            if ( -e "$Filename.content_id" ) {
                my $Content = $Self->{MainObject}->FileRead(
                    Location => "$Filename.content_id",
                );
                if ($Content) {
                    $ContentID = ${$Content};
                }
            }

            # alternativ (optional)
            if ( -e "$Filename.content_alternative" ) {
                my $Content = $Self->{MainObject}->FileRead(
                    Location => "$Filename.content_alternative",
                );
                if ($Content) {
                    $Alternative = ${$Content};
                }
            }
        }

        # read content type (old style)
        else {
            my $Content = $Self->{MainObject}->FileRead(
                Location => $Filename,
                Result   => 'ARRAY',
            );
            if ( !$Content ) {
                return;
            }
            $ContentType = $Content->[0];
        }

        # strip filename
        $Filename =~ s!^.*/!!;

        # add the info the the hash
        $Counter++;
        $Index{$Counter} = {
            Filename           => $Filename,
            Filesize           => $FileSize,
            FilesizeRaw        => $FileSizeRaw,
            ContentType        => $ContentType,
            ContentID          => $ContentID,
            ContentAlternative => $Alternative,
        };
    }

    # return if index exists
    return %Index if %Index;

    # return of only delete in my backend
    return %Index if $Param{OnlyMyBackend};

    # try database (if there is no index in fs)
    return if !$Self->{DBObject}->Prepare(
        SQL => 'SELECT filename, content_type, content_size, content_id, content_alternative'
            . ' FROM article_attachment WHERE article_id = ? ORDER BY id',
        Bind => [ \$Param{ArticleID} ],
    );
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {

        # human readable file size
        my $FileSizeRaw = $Row[2];
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
            Filename           => $Row[0],
            Filesize           => $Row[2] || '',
            FilesizeRaw        => $FileSizeRaw || 0,
            ContentType        => $Row[1],
            ContentID          => $Row[3] || '',
            ContentAlternative => $Row[4] || '',
        };
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
    my %Data        = %{ $Index{ $Param{FileID} } };
    my $Counter     = 0;
    my @List        = glob("$Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/*");
    if (@List) {
        for my $Filename (@List) {
            next if $Filename =~ /\.content_alternative$/;
            next if $Filename =~ /\.content_id$/;
            next if $Filename =~ /\.content_type$/;
            next if $Filename =~ /\/plain.txt$/;

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
                    return if !$Content;
                    $Data{ContentType} = ${$Content};

                    # read content
                    $Content = $Self->{MainObject}->FileRead(
                        Location => $Filename,
                        Mode     => 'binmode',
                    );
                    return if !$Content;
                    $Data{Content} = ${$Content};

                    # content id (optional)
                    if ( -e "$Filename.content_id" ) {
                        my $Content = $Self->{MainObject}->FileRead(
                            Location => "$Filename.content_id",
                        );
                        if ($Content) {
                            $Data{ContentID} = ${$Content};
                        }
                    }

                    # alternativ (optional)
                    if ( -e "$Filename.content_alternative" ) {
                        my $Content = $Self->{MainObject}->FileRead(
                            Location => "$Filename.content_alternative",
                        );
                        if ($Content) {
                            $Data{Alternative} = ${$Content};
                        }
                    }
                }
                else {

                    # read content
                    my $Content = $Self->{MainObject}->FileRead(
                        Location => $Filename,
                        Mode     => 'binmode',
                        Result   => 'ARRAY',
                    );
                    return if !$Content;
                    $Data{ContentType} = $Content->[0];
                    my $Counter = 0;
                    for my $Line ( @{$Content} ) {
                        if ($Counter) {
                            $Data{Content} .= $Line;
                        }
                        $Counter++;
                    }
                }
                if (
                    $Data{ContentType} =~ /plain\/text/i
                    && $Data{ContentType} =~ /(utf\-8|utf8)/i
                    )
                {
                    $Self->{EncodeObject}->Encode( \$Data{Content} );
                }
                chomp $Data{ContentType};
                return %Data;
            }
        }
    }

    # return of only delete in my backend
    return if $Param{OnlyMyBackend};

    # try database, if no content is found
    return if !$Self->{DBObject}->Prepare(
        SQL => 'SELECT content_type, content, content_id, content_alternative'
            . ' FROM article_attachment WHERE article_id = ? ORDER BY id',
        Bind   => [ \$Param{ArticleID} ],
        Limit  => $Param{FileID},
        Encode => [ 1, 0, 0, 0 ],
    );
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $Data{ContentType} = $Row[0];

        # decode attachemnt if it's e. g. a postgresql backend!!!
        if ( !$Self->{DBObject}->GetDatabaseFunction('DirectBlob') ) {
            $Data{Content} = decode_base64( $Row[1] );
        }
        else {
            $Data{Content} = $Row[1];
        }
        $Data{ContentID}          = $Row[2];
        $Data{ContentAlternative} = $Row[3];
    }
    if ( !$Data{Content} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message =>
                "$!: $Self->{ArticleDataDir}/$ContentPath/$Param{ArticleID}/$Data{Filename}!",
        );
        return;
    }
    return %Data;
}

1;
