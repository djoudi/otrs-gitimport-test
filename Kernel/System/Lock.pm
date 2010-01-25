# --
# Kernel/System/Lock.pm - All Groups related function should be here eventually
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: Lock.pm,v 1.31 2010-01-25 13:10:46 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Lock;

use strict;
use warnings;

use Kernel::System::Valid;
use Kernel::System::CacheInternal;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.31 $) [1];

=head1 NAME

Kernel::System::Lock - lock lib

=head1 SYNOPSIS

All lock functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create an object

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Main;
    use Kernel::System::DB;
    use Kernel::System::Lock;

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
    my $LockObject = Kernel::System::Lock->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
        DBObject     => $DBObject,
        MainObject   => $MainObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for (qw(DBObject ConfigObject LogObject MainObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }
    $Self->{ValidObject}         = Kernel::System::Valid->new(%Param);
    $Self->{CacheInternalObject} = Kernel::System::CacheInternal->new(
        %Param,
        Type => 'Lock',
        TTL  => 60 * 60 * 3,
    );

    # get ViewableLocks
    $Self->{ViewableLocks} = $Self->{ConfigObject}->Get('Ticket::ViewableLocks')
        || die 'No Config entry "Ticket::ViewableLocks"!';

    return $Self;
}

=item LockViewableLock()

get list of lock types

    my @List = $LockObject->LockViewableLock(
        Type => 'Name', # ID|Name
    );

    my @List = $LockObject->LockViewableLock(
        Type => 'ID', # ID|Name
    );

=cut

sub LockViewableLock {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Type)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # check cache
    my $CacheKey = 'LockViewableLock::' . $Param{Type};
    my $Cache = $Self->{CacheInternalObject}->Get( Key => $CacheKey );
    return @{$Cache} if $Cache;

    # sql
    return if !$Self->{DBObject}->Prepare(
        SQL => "SELECT id, name FROM ticket_lock_type WHERE "
            . " name IN ( ${\(join ', ', @{$Self->{ViewableLocks}})} ) AND "
            . " valid_id IN ( ${\(join ', ', $Self->{ValidObject}->ValidIDsGet())} )",
    );

    my @Name;
    my @ID;
    while ( my @Data = $Self->{DBObject}->FetchrowArray() ) {
        push @Name, $Data[1];
        push @ID,   $Data[0];
    }

    # set cache
    $Self->{CacheInternalObject}->Set(
        Key   => 'LockViewableLock::Name',
        Value => \@Name,
    );
    $Self->{CacheInternalObject}->Set(
        Key   => 'LockViewableLock::ID',
        Value => \@ID,
    );

    if ( $Param{Type} eq 'Name' ) {
        return @Name;
    }
    else {
        return @ID;
    }
}

=item LockLookup()

lock lookup

    my $LockID = $LockObject->LockLookup( Lock => 'lock' );

    my $Lock = $LockObject->LockLookup( LockID => 2 );

=cut

sub LockLookup {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    my $Key = '';
    if ( !$Param{Lock} && $Param{LockID} ) {
        $Key = 'LockID';
    }
    if ( $Param{Lock} && !$Param{LockID} ) {
        $Key = 'Lock';
    }
    if ( !$Param{Lock} && !$Param{LockID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need Lock or LockID!' );
        return;
    }

    # check cache
    my $CacheKey = 'Lookup::' . $Param{$Key};
    my $Cache = $Self->{CacheInternalObject}->Get( Key => $CacheKey );
    return $Cache if $Cache;

    # db query
    my $SQL;
    my @Bind;
    if ( $Param{Lock} ) {
        $SQL = 'SELECT id FROM ticket_lock_type WHERE name = ?';
        push @Bind, \$Param{Lock};
    }
    else {
        $SQL = 'SELECT name FROM ticket_lock_type WHERE id = ?';
        push @Bind, \$Param{LockID};
    }
    return if !$Self->{DBObject}->Prepare( SQL => $SQL, Bind => \@Bind );
    my $Data;
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $Data = $Row[0];
    }

    # set cache
    $Self->{CacheInternalObject}->Set(
        Key   => $CacheKey,
        Value => $Data,
    );

    # check if data exists
    if ( !$Data ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "No Lock/LockID for $Param{$Key} found!",
        );
        return;
    }
    return $Data;
}

=item LockList()

get lock list

    my %List = $LockObject->LockList(
        UserID => 123,
    );

=cut

sub LockList {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'UserID!' );
        return;
    }

    # check cache
    my $CacheKey = 'LockList';
    my $Cache = $Self->{CacheInternalObject}->Get( Key => $CacheKey );
    return %{$Cache} if $Cache;

    # sql
    return if !$Self->{DBObject}->Prepare(
        SQL => 'SELECT id, name FROM ticket_lock_type',
    );
    my %Data;
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $Data{ $Row[0] } = $Row[1];
    }

    # set cache
    $Self->{CacheInternalObject}->Set(
        Key   => $CacheKey,
        Value => \%Data,
    );

    return %Data;
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

$Revision: 1.31 $ $Date: 2010-01-25 13:10:46 $

=cut
