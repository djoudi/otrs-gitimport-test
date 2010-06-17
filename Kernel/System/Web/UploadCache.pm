# --
# Kernel/System/Web/UploadCache.pm - a fs upload cache
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: UploadCache.pm,v 1.21 2010-06-17 22:14:28 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Web::UploadCache;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.21 $) [1];

=head1 NAME

Kernel::System::Web::UploadCache - a upload file system cache

=head1 SYNOPSIS

All upload cache functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create param object

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Main;
    use Kernel::System::DB;
    use Kernel::System::Web::UploadCache;

    my $ConfigObject = Kernel::Config->new();
    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
    );
    my $DBObject = Kernel::System::DB->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );
    my $UploadCache= Kernel::System::Web::UploadCache->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
        DBObject     => $DBObject,
        EncodeObject => $EncodeObject,
        MainObject   => $MainObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for (qw(ConfigObject LogObject MainObject EncodeObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    # load generator auth module
    $Self->{GenericModule} = $Self->{ConfigObject}->Get('WebUploadCacheModule')
        || 'Kernel::System::Web::UploadCache::DB';

    if ( $Self->{MainObject}->Require( $Self->{GenericModule} ) ) {
        $Self->{Backend} = $Self->{GenericModule}->new(%Param);
        return $Self;
    }
    return;
}

=item FormIDCreate()

create a new form id

    my $FormID = $UploadCacheObject->FormIDCreate();

=cut

sub FormIDCreate {
    my $Self = shift;

    return $Self->{Backend}->FormIDCreate(@_);
}

=item FormIDRemove()

remove all data with form id

    $UploadCacheObject->FormIDRemove( FormID => 123456 );

=cut

sub FormIDRemove {
    my $Self = shift;

    return $Self->{Backend}->FormIDRemove(@_);
}

=item FormIDAddFile()

add a file to the form id

    $UploadCacheObject->FormIDAddFile(
        FormID      => 12345,
        Filename    => 'somefile.html',
        Content     => $FileInSting,
        ContentType => 'text/html',
        Disposition => 'inline', # optional
    );

ContentID is optional (automatically generated if not given on disposition = inline)

    $UploadCacheObject->FormIDAddFile(
        FormID      => 12345,
        Filename    => 'somefile.html',
        Content     => $FileInSting,
        CententID   => 'some_id@example.com',
        ContentType => 'text/html',
        Disposition => 'inline', # optional
    );

=cut

sub FormIDAddFile {
    my $Self = shift;

    return $Self->{Backend}->FormIDAddFile(@_);
}

=item FormIDRemoveFile()

removes a file to the form id

    $UploadCacheObject->FormIDRemoveFile(
        FormID => 12345,
        FileID => 1,
    );

=cut

sub FormIDRemoveFile {
    my $Self = shift;

    return $Self->{Backend}->FormIDRemoveFile(@_);
}

=item FormIDGetAllFilesData()

returns a array with hash ref of all form id files

    my @Data = $UploadCacheObject->FormIDGetAllFilesData(
        FormID => 12345,
    );

    Return data of on hash is Content, ContentType, ContentID, Filename, Filesize, FileID;

=cut

sub FormIDGetAllFilesData {
    my $Self = shift;

    return @{ $Self->{Backend}->FormIDGetAllFilesData(@_) };
}

=item FormIDGetAllFilesMeta()

returns a array with hash ref of all form id files

Note: No Content will be returned, just meta data.

    my @Data = $UploadCacheObject->FormIDGetAllFilesMeta(
        FormID => 12345,
    );

    Return data of on hash is ContentType, ContentID, Filename, Filesize, FileID;

=cut

sub FormIDGetAllFilesMeta {
    my $Self = shift;

    return @{ $Self->{Backend}->FormIDGetAllFilesMeta(@_) };
}

=item FormIDCleanUp()

Removed no longer needed tmp file.

Each file older then 1 day will be removed.

    $UploadCacheObject->FormIDCleanUp();

=cut

sub FormIDCleanUp {
    my $Self = shift;

    return $Self->{Backend}->FormIDCleanUp(@_);
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut

=head1 VERSION

$Revision: 1.21 $ $Date: 2010-06-17 22:14:28 $

=cut
