# --
# Kernel/System/SearchProfile.pm - module to manage search profiles
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: SearchProfile.pm,v 1.1 2004-09-10 12:50:53 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::SearchProfile;

use strict;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::SearchProfile - module to manage search profiles

=head1 SYNOPSIS

module with all functions to manage search profiles

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a object

  use Kernel::Config;
  use Kernel::System::Log;
  use Kernel::System::DB;
  use Kernel::System::SearchProfile;

  my $ConfigObject = Kernel::Config->new();
  my $LogObject    = Kernel::System::Log->new(
      ConfigObject => $ConfigObject,
  );
  my $DBObject = Kernel::System::DB->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
  );
  my $SearchProfileObject = Kernel::System::SearchProfile->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
      DBObject => $DBObject,
  );

=cut

sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # check needed objects
    foreach (qw(DBObject ConfigObject LogObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}

=item SearchProfileAdd()

to add a search profile item

  $SearchProfileObject->SearchProfileAdd(
      Base => 'TicketSearch',
      Name => 'last-search',
      Type => 'SCALAR',    # SCALAR|ARRAY
      Key => 'Body',
      Value => $String,
      UserLogin => 123,
  );

=cut

sub SearchProfileAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Base Name Type Key UserLogin)) {
      if (!defined($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # check value
    if (!defined($Param{Value})) {
        return 1;
    }
    # qoute params
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    my $SQL = "INSERT INTO search_profile (login, profile_name, ".
            " profile_type, profile_key, profile_value)".
            " VALUES ".
            " ('$Param{Base}::$Param{UserLogin}', '$Param{Name}', ".
            " '$Param{Type}', '$Param{Key}', '$Param{Value}') ";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}

=item SearchProfileGet()

returns a hash with search profile

  my %SearchProfileData = $SearchProfileObject->SearchProfileGet(
      Base => 'TicketSearch',
      Name => 'last-search',
      UserLogin => 'me',
  );

=cut

sub SearchProfileGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Base Name UserLogin)) {
      if (!defined($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql
    my $SQL = "SELECT profile_type, profile_key, profile_value name ".
        " FROM ".
        " search_profile ".
        " WHERE ".
        " profile_name = '$Param{Name}' ".
        " AND ".
        " login = '$Param{Base}::$Param{UserLogin}'";
    my %Result = ();
    if ($Self->{DBObject}->Prepare(SQL => $SQL)) {
        while (my @Data = $Self->{DBObject}->FetchrowArray()) {
            if ($Data[0] eq 'ARRAY') {
                push (@{$Result{$Data[1]}}, $Data[2]);
            }
            else {
                $Result{$Data[1]} = $Data[2];
            }
        }
        return %Result;
    }
    else {
        return;
    }
}

=item SearchProfileDelete()

deletes an profile

  $SearchProfileObject->SearchProfileDelete(
      Base => 'TicketSearch',
      Name => 'last-search',
      UserLogin => 'me',
  );

=cut

sub SearchProfileDelete {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Base Name UserLogin)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql
    my $SQL = "DELETE FROM search_profile WHERE ".
          " profile_name = '$Param{Name}' AND login = '$Param{Base}::$Param{UserLogin}'";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}

=item SearchProfileList()

returns a hash of all proviles

  my %SearchProfiles = $SearchProfileObject->SearchProfileList(
      Base => 'TicketSearch',
      UserLogin => 'me',
  );

=cut

sub SearchProfileList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Base UserLogin)) {
      if (!defined($Param{$_})) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql
    my $SQL = "SELECT profile_name ".
        " FROM ".
        " search_profile ".
        " WHERE ".
        " login = '$Param{Base}::$Param{UserLogin}'";
    my %Result = ();
    if ($Self->{DBObject}->Prepare(SQL => $SQL)) {
        while (my @Data = $Self->{DBObject}->FetchrowArray()) {
            $Result{$Data[0]} = $Data[0];
        }
        return %Result;
    }
    else {
        return;
    }
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.1 $ $Date: 2004-09-10 12:50:53 $

=cut
