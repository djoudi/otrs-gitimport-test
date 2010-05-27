# --
# Kernel/System/Loader.pm - CSS/JavaScript loader backend
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: Loader.pm,v 1.6 2010-05-27 12:20:57 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Loader;

use strict;
use warnings;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.6 $) [1];

use Kernel::System::CacheInternal;

use CSS::Minifier qw();
use JavaScript::Minifier qw();

=head1 NAME

Kernel::System::Loader - CSS/JavaScript loader backend

=head1 SYNOPSIS

All valid functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create an object

    use Kernel::System::Loader;
    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Main;

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

    my $LoaderObject = Kernel::System::Loader->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Object (qw(ConfigObject EncodeObject LogObject MainObject)) {
        $Self->{$Object} = $Param{$Object} || die "Got no $Object!";
    }

    $Self->{CacheInternalObject} = Kernel::System::CacheInternal->new(
        %{$Self},
        Type => 'Loader',
        TTL  => 60 * 60 * 3,
    );

    return $Self;
}

=item MinifyFiles()

takes a list of files and returns a filename in the target directory
which holds the minified and concatenated content of the files.
Uses caching internally.

    my $TargetFilename = $LoaderObject->MinifyFiles(
        List  => [
            $Filename,
            $Filename2,
        ],
        Type  => 'CSS',      # CSS | JavaScript
        TargetDirectory => $TargetDirectory,
        TargetFilenamePrefix => 'CommonCSS',    # optional, prefix for the target filename
    );

=cut

sub MinifyFiles {
    my ( $Self, %Param ) = @_;

    my $List = $Param{List};
    if ( ref $List ne 'ARRAY' || !@{$List} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need List!",
        );
        return;
    }

    my $TargetDirectory = $Param{TargetDirectory};
    if ( !$TargetDirectory || !-d $TargetDirectory ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need valid TargetDirectory, got '$TargetDirectory'!",
        );
        return;
    }

    my $TargetFilenamePrefix = $Param{TargetFilenamePrefix} ? "$Param{TargetFilenamePrefix}_" : '';

    my %ValidTypeParams = (
        CSS        => 1,
        JavaScript => 1,
    );

    if ( !$Param{Type} || !$ValidTypeParams{ $Param{Type} } ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Need Type! Must be one of '" . join( ', ', keys %ValidTypeParams ) . "'."
        );
        return;
    }

    my $FileString;
    for my $Location ( @{$List} ) {
        my $FileMTime = $Self->{MainObject}->FileGetMTime(
            Location => $Location
        );

        # For the caching, use both filename and mtime to make sure that
        #   caches are correctly regenerated on changes.
        $FileString .= "$Location:$FileMTime:";
    }

    # also include the config timestamp in the caching to reload the data on config changes
    my $ConfigTimestamp = $Self->{ConfigObject}->ConfigChecksum();

    $FileString .= $ConfigTimestamp;

    my $Filename = $TargetFilenamePrefix . $Self->{MainObject}->MD5sum(
        String => \$FileString,
    );

    if ( $Param{Type} eq 'CSS' ) {
        $Filename .= '.css';
    }
    elsif ( $Param{Type} eq 'JavaScript' ) {
        $Filename .= '.js';

    }

    if ( !-r "$TargetDirectory/$Filename" ) {

        my $Content;

        # no cache available, so loop through all files, get minified version and concatenate
        LOCATION: for my $Location ( @{$List} ) {

            next LOCATION if ( !-r $Location );

            if ( $Param{Type} eq 'CSS' ) {
                $Content .= "/* begin $Location */\n";

                $Content .= $Self->GetMinifiedFile(
                    Location => $Location,
                    Type     => $Param{Type},
                );

                $Content .= "\n/* end $Location */\n";
            }
            elsif ( $Param{Type} eq 'JavaScript' ) {
                $Content .= "// begin $Location\n";

                $Content .= $Self->GetMinifiedFile(
                    Location => $Location,
                    Type     => $Param{Type},
                );

                $Content .= "\n// end $Location\n";
            }
        }

        my $FileLocation = $Self->{MainObject}->FileWrite(
            Directory => $TargetDirectory,
            Filename  => $Filename,
            Content   => \$Content,
        );
    }

    return $Filename;
}

=item GetMinifiedFile()

returns the minified contents of a given CSS or JavaScript file.
Uses caching internally.

    my $MinifiedCSS = $LoaderObject->GetMinifiedFile(
        Location => $Filename,
        Type     => 'CSS',      # CSS | JavaScript
    );

=cut

sub GetMinifiedFile {
    my ( $Self, %Param ) = @_;

    my $Location = $Param{Location};
    if ( !$Location ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need Location!",
        );
        return;
    }

    my %ValidTypeParams = (
        CSS        => 1,
        JavaScript => 1,
    );

    if ( !$Param{Type} || !$ValidTypeParams{ $Param{Type} } ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Need Type! Must be one of '" . join( ', ', keys %ValidTypeParams ) . "'."
        );
        return;
    }

    my $FileMTime = $Self->{MainObject}->FileGetMTime(
        Location => $Location
    );

    # For the caching, use both filename and mtime to make sure that
    #   caches are correctly regenerated on changes.
    my $CacheKey = "$Location:$FileMTime";

    # check if a cached version exists
    my $CacheContent = $Self->{CacheInternalObject}->Get(
        Key => $CacheKey
    );

    if ( ref $CacheContent eq 'SCALAR' ) {
        return ${$CacheContent};
    }

    # no cache available, read and minify file
    my $FileContents = $Self->{MainObject}->FileRead(
        Location => $Location
    );

    if ( ref $FileContents ne 'SCALAR' ) {
        return;
    }

    my $Result;
    if ( $Param{Type} eq 'CSS' ) {
        $Result = $Self->MinifyCSS( Code => $$FileContents );
    }
    elsif ( $Param{Type} eq 'JavaScript' ) {
        $Result = $Self->MinifyJavaScript( Code => $$FileContents );
    }

    # and put it in the cache
    $Self->{CacheInternalObject}->Set(
        Key   => $CacheKey,
        Value => \$Result,
    );

    return $Result;
}

=item MinifyCSS()

returns a minified version of the given CSS Code

    my $MinifiedCSS = $LoaderObject->MinifyCSS(Code => $CSS);

=cut

sub MinifyCSS {
    my ( $Self, %Param ) = @_;

    my $Code = $Param{Code} || '';

    my $Result = CSS::Minifier::minify( input => $Code );

    # a few optimizations can be made for the minified CSS that CSS::Minifier doesn't yet do

    # remove remaining linebreaks
    $Result =~ s/\r?\n\s*//smxg;

    # remove superfluous whitespace after commas in chained selectors
    $Result =~ s/,\s*/,/smxg;

    return $Result;
}

=item MinifyJavaScript()

returns a minified version of the given JavaScript Code

    my $MinifiedJS = $LoaderObject->MinifyJavaScript(Code => $JavaScript);

=cut

sub MinifyJavaScript {
    my ( $Self, %Param ) = @_;

    my $Code = $Param{Code} || '';

    my $Result = JavaScript::Minifier::minify( input => $Code );

    return $Result;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see http://www.gnu.org/licenses/agpl.txt.

=cut

=head1 VERSION

$Revision: 1.6 $ $Date: 2010-05-27 12:20:57 $

=cut
