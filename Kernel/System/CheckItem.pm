# --
# Kernel/System/CheckItem.pm - the global spelling module
# Copyright (C) 2001-2007 OTRS GmbH, http://otrs.org/
# --
# $Id: CheckItem.pm,v 1.21 2007-10-02 10:37:19 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::CheckItem;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.21 $) [1];

=head1 NAME

Kernel::System::CheckItem - check items

=head1 SYNOPSIS

All item check functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a object

    use Kernel::Config;
    use Kernel::System::Log;
    use Kernel::System::CheckItem;

    my $ConfigObject = Kernel::Config->new();
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
    );
    my $CheckItemObject = Kernel::System::CheckItem->new(
        ConfigObject => $ConfigObject,
        LogObject => $LogObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    $Self->{Debug} = 0;

    # get needed objects
    for (qw(ConfigObject LogObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}

=item CheckError()

get the error of check item back

    my $Error = $CheckItemObject->CheckError();

=cut

sub CheckError {
    my ($Self) = @_;

    return $Self->{Error};
}

=item CheckEmail()

returns true if check was successful, if it's false, get the error message
from CheckError()

    my $Valid = $CheckItemObject->CheckEmail(
        Address => 'info@example.com',
    );

=cut

sub CheckEmail {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Address)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # check if it's to do
    if ( !$Self->{ConfigObject}->Get('CheckEmailAddresses') ) {
        return 1;
    }

    # check valid email addresses
    my $RegExp = $Self->{ConfigObject}->Get('CheckEmailValidAddress');
    if ( $RegExp && $Param{Address} =~ /$RegExp/i ) {
        return 1;
    }
    my $Error = '';

    # email address syntax check
    if ( $Param{Address}
        !~ /^(()|([a-zA-Z0-9]+([a-zA-Z0-9_+\.&%-]*[a-zA-Z0-9_'\.-]+)?@([a-zA-Z0-9]+([a-zA-Z0-9\.-]*[a-zA-Z0-9]+)?\.+[a-zA-Z]{2,8}|\[\d+\.\d+\.\d+\.\d+])))$/
        )
    {
        $Error = "Invalid syntax";
    }

    # mx check
    elsif ( $Self->{ConfigObject}->Get('CheckMXRecord') && eval { require Net::DNS } ) {

        # get host
        my $Host = $Param{Address};
        $Host =~ s/^.*@(.*)$/$1/;
        $Host =~ s/\s+//g;
        $Host =~ s/(^\[)|(\]$)//g;

        # do dns query
        my $Resolver = Net::DNS::Resolver->new();
        if ($Resolver) {

            # A recorde lookup
            my $packet = $Resolver->send( $Host, 'A' );
            if ( !$packet ) {
                $Error = "DNS problem: " . $Resolver->errorstring();
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "DNS problem: " . $Resolver->errorstring(),
                );
            }
            elsif ( $packet->header->ancount() ) {

                # OK
                #                print STDERR "OK A $Host ".$packet->header->ancount()."\n";
            }

            # mx recorde lookup
            else {
                my $packet = $Resolver->send( $Host, 'MX' );
                if ( !$packet ) {
                    $Error = "DNS problem: " . $Resolver->errorstring();
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message  => "DNS problem: " . $Resolver->errorstring(),
                    );
                }
                elsif ( $packet->header->ancount() ) {

                   # OK
                   #                    print STDERR "OK MX $Host ".$packet->header->ancount()."\n";
                }
                else {
                    $Error = "no mail exchanger (mx) found!";
                }
            }
        }
    }
    elsif ( $Self->{ConfigObject}->Get('CheckMXRecord') ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Can't load Net::DNS, no mx lookups possible",
        );
    }

    # check address
    if ( !$Error ) {

        # check special stuff
        my $RegExp = $Self->{ConfigObject}->Get('CheckEmailInvalidAddress');
        if ( $RegExp && $Param{Address} =~ /$RegExp/i ) {
            $Self->{Error} = "invalid $Param{Address} (config)!";
            return;
        }
        return 1;
    }
    else {

        # remember error
        $Self->{Error} = "invalid $Param{Address} ($Error)! ";
        return;
    }
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.21 $ $Date: 2007-10-02 10:37:19 $

=cut
