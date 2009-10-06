# --
# Kernel/System/Encode.pm - character encodings
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: Encode.pm,v 1.42 2009-10-06 14:40:54 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Encode;

use strict;
use warnings;

use Encode;

use vars qw(@ISA $VERSION);

$VERSION = qw($Revision: 1.42 $) [1];

=head1 NAME

Kernel::System::Encode - character encodings

=head1 SYNOPSIS

This module will use Perl's Encode module (Perl 5.8.0 or higher is required).

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a language object

    use Kernel::Config;
    use Kernel::System::Encode;

    my $ConfigObject = Kernel::Config->new();

    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed object
    $Self->{ConfigObject} = $Param{ConfigObject} || die 'Got no ConfigObject!';

    # 0=off; 1=on;
    $Self->{Debug} = 0;

    # get internal charset
    my $DefaultCharset = lc $Self->{ConfigObject}->Get('DefaultCharset');
    if ( $DefaultCharset eq 'utf8' ) {
        $DefaultCharset = 'utf-8';
    }
    if ( $DefaultCharset eq 'utf-8' ) {
        $Self->{UTF8Used} = 1;
    }

    # get frontend charset
    $Self->{CharsetEncodeFrontendUsed} = $Self->EncodeFrontendUsed();

    # encode STDOUT and STDERR
    $Self->SetIO( \*STDOUT, \*STDERR );

    return $Self;
}

=item EncodeInternalUsed()

Returns the internal used charset if possible.
If Kernel/Config.pm "DefaultCharset" is "utf-8", then utf-8 is
the internal charset. It returns false if no internal charset (utf-8) is
used.

    my $Charset = $EncodeObject->EncodeInternalUsed();

=cut

sub EncodeInternalUsed {
    my $Self = shift;

    return 'utf-8' if $Self->{UTF8Used};
    return;
}

=item EncodeFrontendUsed()

Returns the used frontend charset if possible.
If Kernel/Config.pm "DefaultCharset" is "utf-8", then utf-8 is
the frontend charset. It returns false if no frontend charset (utf-8) is
used (then the translation charset (from translation file) will be used).

    my $Charset = $EncodeObject->EncodeFrontendUsed();

=cut

sub EncodeFrontendUsed {
    my $Self = shift;

    return 'utf-8' if $Self->{UTF8Used};
    return;
}

=item Convert()

Convert one charset to an other charset.

    my $utf8 = $EncodeObject->Convert(
        Text => $iso_8859_1_string,
        From => 'iso-8859-1',
        To   => 'utf-8',
    );

    my $iso_8859_1 = $EncodeObject->Convert(
        Text => $utf-8_string,
        From => 'utf-8',
        To   => 'iso-8859-1',
    );

There is also a Force => 1 option if you need to force the
already converted string. And Check => 1 if the sting result
should be checked if it's a valid string (e. g. valid utf-8 string).

=cut

sub Convert {
    my ( $Self, %Param ) = @_;

    # return if no text is given
    return if !defined $Param{Text};
    return '' if $Param{Text} eq '';

    # check needed stuff
    for (qw(From To)) {
        if ( !defined $Param{$_} ) {
            print STDERR "Need $_!\n";
            return;
        }
    }

    # utf8 cleanup
    for my $Key (qw(From To)) {
        $Param{$Key} = lc $Param{$Key};
        if ( $Param{$Key} eq 'utf8' ) {
            $Param{$Key} = 'utf-8';
        }
    }

    # if no encode is needed
    if ( $Param{From} eq $Param{To} ) {

        # set utf-8 flag
        if ( $Param{To} eq 'utf-8' ) {
            Encode::_utf8_on( $Param{Text} );
        }

        # check if string is valid utf-8
        if ( $Param{Check} && !eval { Encode::is_utf8( $Param{Text}, 1 ) } ) {
            Encode::_utf8_off( $Param{Text} );
            print STDERR "No valid '$Param{To}' string: '$Param{Text}'!\n";

            # strip invalid chars / 0 = will put a substitution character in
            # place of a malformed character
            eval { Encode::from_to( $Param{Text}, $Param{From}, $Param{To}, 0 ) };

            # set utf-8 flag
            Encode::_utf8_on( $Param{Text} );

            # return new string
            return $Param{Text};
        }

        # return text
        return $Param{Text};
    }

    # encode is needed
    if ( $Param{Force} ) {
        Encode::_utf8_off( $Param{Text} );
    }

    # set check for "Handling Malformed Data", for more info see "perldoc Encode -> CHECK"

    # 1 = methods will die on error immediately with an error
    my $Check = 1;

    # 0 = will put a substitution character in place of a malformed character
    if ( $Param{Force} ) {
        $Check = 0;
    }

    # convert string
    if ( !eval { Encode::from_to( $Param{Text}, $Param{From}, $Param{To}, $Check ) } ) {
        print STDERR "Charset encode '$Param{From}' -=> '$Param{To}' ($Param{Text})"
            . " not supported!\n";
        return $Param{Text};
    }

    # set utf-8 flag
    if ( $Param{To} eq 'utf-8' ) {
        Encode::_utf8_on( $Param{Text} );
    }

    # output debug message
    if ( $Self->{Debug} ) {
        print STDERR "Charset encode '$Param{From}' -=> '$Param{To}' ($Param{Text})!\n";
    }

    return $Param{Text};
}

=item SetIO()

Set array of file handles to utf-8 output.

    $EncodeObject->SetIO(\*STDOUT, \*STDERR);

=cut

sub SetIO {
    my ( $Self, @Array ) = @_;

    return if !$Self->{CharsetEncodeFrontendUsed};
    return if $Self->{CharsetEncodeFrontendUsed} ne 'utf-8';

    ROW:
    for my $Row (@Array) {
        next ROW if !defined $Row;
        next ROW if ref $Row ne 'GLOB';

        # set binmode
        binmode( $Row, ':utf8' );
    }

    return;
}

=item Encode()

Convert internal used charset (e. g. utf-8) into given charset (utf-8), if
"EncodeInternalUsed()" returns one. Should be used on all I/O interfaces
if data is already utf-8 to set the utf-8 stamp.

    $EncodeObject->Encode(\$String);

=cut

sub Encode {
    my ( $Self, $What ) = @_;

    return if !defined $What;
    return if !$Self->{CharsetEncodeFrontendUsed};
    return if $Self->{CharsetEncodeFrontendUsed} ne 'utf-8';

    if ( ref $What eq 'SCALAR' ) {
        return $What if !defined ${$What};

        Encode::_utf8_on( ${$What} );
        return $What;
    }

    if ( ref $What eq 'ARRAY' ) {
        ROW:
        for my $Row ( @{$What} ) {
            next ROW if !defined $Row;

            Encode::_utf8_on($Row);
        }
        return $What;
    }

    Encode::_utf8_on($What);

    return $What;
}

=item Decode()

Convert given charset into the internal used charset (utf-8), if
"EncodeInternalUsed()" returns one. Should be used on all I/O interfaces.

    my $String = $EncodeObject->Decode(
        Text => $String,
        From => $SourceCharset,
    );

=cut

sub Decode {
    my ( $Self, %Param ) = @_;

    return if !defined $Param{Text};

    # check needed stuff
    if ( !defined $Param{From} ) {
        print STDERR "Need From!\n";
        return;
    }

    return $Param{Text} if !$Self->EncodeInternalUsed();
    return $Self->Convert( %Param, To => $Self->EncodeInternalUsed() );
}

=item EncodeOutput()

Convert utf-8 to a sequence of octets. All possible characters have
a UTF-8 representation so this function cannot fail.

This should be used in for output of utf-8 chars.

    $EncodeObject->EncodeOutput(\$String);

=cut

sub EncodeOutput {
    my ( $Self, $What ) = @_;

    return 1 if !$Self->{CharsetEncodeFrontendUsed};
    return 1 if $Self->{CharsetEncodeFrontendUsed} ne 'utf-8';

    return 1 if !Encode::is_utf8( ${$What} );

    ${$What} = Encode::encode_utf8( ${$What} );
    return 1;
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

$Revision: 1.42 $ $Date: 2009-10-06 14:40:54 $

=cut
