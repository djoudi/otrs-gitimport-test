# --
# Kernel/Modules/PublicDefault.pm - provides a default public module
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: PublicDefault.pm,v 1.4 2012-11-12 18:18:31 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.
# --

package Kernel::Modules::PublicDefault;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.4 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check needed objects
    for (qw(ParamObject LayoutObject LogObject ConfigObject MainObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # build header
    my $Output = $Self->{LayoutObject}->CustomerHeader(
        Type  => '',
        Title => '',
    );

    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'PublicDefault',
    );

    # build footer
    $Output .= $Self->{LayoutObject}->CustomerFooter(
        Type => '',
    );

    return $Output;
}

1;
