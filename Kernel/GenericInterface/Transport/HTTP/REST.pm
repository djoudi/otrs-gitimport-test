# --
# Kernel/GenericInterface/Transport/HTTP/REST.pm - GenericInterface network transport interface for HTTP::REST
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: REST.pm,v 1.5 2012-11-12 17:43:37 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.
# --

package Kernel::GenericInterface::Transport::HTTP::REST;

use strict;
use warnings;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.5 $) [1];

=head1 NAME

Kernel::GenericInterface::Transport::REST - GenericInterface network transport interface for HTTP::REST

=head1 SYNOPSIS

=head1 PUBLIC INTERFACE

=over 4

=item new()

usually, you want to create an instance of this
by using Kernel::GenericInterface::Transport->new();

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

sub RequesterPerformRequest {
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

$Revision: 1.5 $ $Date: 2012-11-12 17:43:37 $

=cut
