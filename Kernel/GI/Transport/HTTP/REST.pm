# --
# Kernel/GI/Transport/HTTP/REST.pm - GenericInterface network transport interface for HTTP::REST
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: REST.pm,v 1.2 2011-02-03 10:18:22 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::GI::Transport::HTTP::REST;

use strict;
use warnings;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

=head1 NAME

Kernel::GI::Transport::REST

=head1 SYNOPSIS

GenericInterface network transport interface for HTTP::REST

=head1 PUBLIC INTERFACE

=over 4

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    #my $Self = {};
    #bless( $Self, $Type );

    # check needed objects
    #for (qw(MainObject ConfigObject LogObject EncodeObject TimeObject DBObject)) {
    #    $Self->{$_} = $Param{$_} || die "Got no $_!";
    #}

    # TODO: implement backend loading and returning

    return;
}

sub ProviderProcessRequest {
    my ( $Self, %Param ) = @_;

    #TODO: implement
}

sub ProviderGenerateResponse {
    my ( $Self, %Param ) = @_;

    #TODO: implement
}

sub RequesterGenerateRequest {
    my ( $Self, %Param ) = @_;

    #TODO: implement
}

sub RequesterProcessResponse {
    my ( $Self, %Param ) = @_;

    #TODO: implement
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

$Revision: 1.2 $ $Date: 2011-02-03 10:18:22 $

=cut
