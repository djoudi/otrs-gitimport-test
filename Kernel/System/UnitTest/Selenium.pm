# --
# Selenium.pm - run frontend tests
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: Selenium.pm,v 1.1 2010-11-16 13:32:29 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::UnitTest::Selenium;

use strict;
use base qw(WWW::Selenium);
use Carp qw(croak);

=head1 NAME

Kernel::System::UnitTest::Selenium - run frontend tests

=over 4

=cut

sub new {
    my ( $Class, %Params ) = @_;

    $Params{host}        ||= 'localhost';
    $Params{port}        ||= '4444';
    $Params{browser}     ||= '*chrome';
    $Params{browser_url} ||= 'http://127.0.0.1/';

    my $default_names = defined $Params{default_names}
        ?
        delete $Params{default_names}
        : 1;

    my $Self = $Class->SUPER::new(%Params);
    $Self->{default_names} = $default_names;
    $Self->start;
    return $Self;
}

our $AUTOLOAD;

my %comparator = (
    is     => 'Is',
    isnt   => 'IsNot',
    like   => 'Like',
    unlike => 'Unlike',
);

# These commands don't require a locator
# grep item lib/WWW/Selenium.pm | grep sel | grep \(\) | grep get
my %no_locator = map { $_ => 1 }
    qw(alert confirmation prompt absolute_location location
    title body_text all_buttons all_links all_fields);

sub AUTOLOAD {
    my $Name = $AUTOLOAD;
    $Name =~ s/.*:://;
    return if $Name eq 'DESTROY';
    my $Self = $_[0];

    my $sub;
    if ( $Name =~ /(\w+)_(is|isnt|like|unlike)$/i ) {
        my $getter     = "get_$1";
        my $comparator = $comparator{ lc $2 };

        # make a subroutine that will call Test::Builder's test methods
        # with selenium data from the getter
        if ( $no_locator{$1} ) {
            $sub = sub {
                my ( $Self, $str, $Name ) = @_;

                #
                # diag
                #
                print STDERR "Test::WWW::Selenium running $getter (@_[1..$#_])"
                    if $Self->{verbose};
                $Name = "$getter, '$str'"
                    if $Self->{default_names} and !defined $Name;
                no strict 'refs';
                return $Self->{UnitTest}->$comparator( $Self->$getter, $str, $Name );
            };
        }
        else {
            $sub = sub {
                my ( $Self, $locator, $str, $Name ) = @_;

                #
                # diag
                #
                print STDERR "Test::WWW::Selenium running $getter (@_[1..$#_])"
                    if $Self->{verbose};
                $Name = "$getter, $locator, '$str'"
                    if $Self->{default_names} and !defined $Name;
                no strict 'refs';
                return $Self->{UnitTest}->$comparator( $Self->$getter($locator), $str, $Name );
            };
        }
    }
    elsif ( $Name =~ /(\w+?)_?ok$/i ) {
        my $cmd = $1;

        # make a subroutine for ok() around the selenium command
        $sub = sub {
            print STDERR "start ok";
            my ( $Self, $arg1, $arg2, $Name ) = @_;
            if ( $Self->{default_names} and !defined $Name ) {
                $Name = $cmd;
                $Name .= ", $arg1" if defined $arg1;
                $Name .= ", $arg2" if defined $arg2;
            }

            #
            # diag
            #
            print STDERR "Test::WWW::Selenium running $cmd (@_[1..$#_])"
                if $Self->{verbose};

            my $rc = '';
            eval { $rc = $Self->$cmd( $arg1, $arg2 ) };
            die $@ if $@ and $@ =~ /Can't locate object method/;

            #
            # diag
            #
            print STDERR ($@) if $@;

            return $Self->{UnitTest}->True( $rc, $Name );
        };
    }

    # jump directly to the new subroutine, avoiding an extra frame stack
    if ($sub) {
        no strict 'refs';
        *{$AUTOLOAD} = $sub;
        goto &$AUTOLOAD;
    }
    else {

        # try to pass through to WWW::Selenium
        my $sel = 'WWW::Selenium';
        my $sub = "${sel}::${Name}";
        goto &$sub if exists &$sub;
        my ( $package, $filename, $line ) = caller;
        die qq(Can't locate object method "$Name" via package ")
            . __PACKAGE__
            . qq(" (also tried "$sel") at $filename line $line\n);
    }
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

$Revision: 1.1 $ $Date: 2010-11-16 13:32:29 $

=cut
