# --
# Kernel/System/Type.pm - All type related function should be here eventually
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: Type.pm,v 1.16 2009-12-08 09:37:10 ub Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Type;

use strict;
use warnings;

use Kernel::System::Valid;
use Kernel::System::CacheInternal;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.16 $) [1];

=head1 NAME

Kernel::System::Type - type lib

=head1 SYNOPSIS

All type functions.

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
    use Kernel::System::Type;

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
    my $TypeObject = Kernel::System::Type->new(
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
    $Self->{ValidObject}         = Kernel::System::Valid->new( %{$Self} );
    $Self->{CacheInternalObject} = Kernel::System::CacheInternal->new(
        %{$Self},
        Type => 'Type',
        TTL  => 60 * 15,
    );

    return $Self;
}

=item TypeAdd()

add new types

    my $ID = $TypeObject->TypeAdd(
        Name    => 'New Type',
        ValidID => 1,
        UserID  => 123,
    );

=cut

sub TypeAdd {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Name ValidID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    return if !$Self->{DBObject}->Do(
        SQL => 'INSERT INTO ticket_type (name, valid_id, '
            . ' create_time, create_by, change_time, change_by)'
            . ' VALUES (?, ?, current_timestamp, ?, current_timestamp, ?)',
        Bind => [ \$Param{Name}, \$Param{ValidID}, \$Param{UserID}, \$Param{UserID} ],
    );

    # get new type id
    return if !$Self->{DBObject}->Prepare(
        SQL   => 'SELECT id FROM ticket_type WHERE name = ?',
        Bind  => [ \$Param{Name} ],
        Limit => 1,
    );

    # fetch the result
    my $ID;
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $ID = $Row[0];
    }
    return if !$ID;

    # delete cache
    my @CacheKeys = ( 'TypeGet::Name::' . $Param{Name}, 'TypeGet::ID::' . $ID );
    push @CacheKeys, 'TypeLookup::Name::' . $Param{Name}, 'TypeLookup::ID::' . $ID;
    for my $CacheKey (@CacheKeys) {
        $Self->{CacheInternalObject}->Delete( Key => $CacheKey );
    }

    return $ID;
}

=item TypeGet()

get types attributes

    my %Type = $TypeObject->TypeGet(
        ID => 123,
    );

    my %Type = $TypeObject->TypeGet(
        Name => 'default',
    );

=cut

sub TypeGet {
    my ( $Self, %Param ) = @_;

    # either ID or Name must be passed
    if ( !$Param{ID} && !$Param{Name} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need ID or Name!',
        );
        return;
    }

    # check that not both ID and Name are given
    if ( $Param{ID} && $Param{Name} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need either ID OR Name - not both!',
        );
        return;
    }

    # lookup the ID
    if ( $Param{Name} ) {
        $Param{ID} = $Self->TypeLookup(
            Type => $Param{Name},
        );
    }

    # check cache
    my $CacheKey = 'TypeGet::' . $Param{ID};
    my $Cache = $Self->{CacheInternalObject}->Get( Key => $CacheKey );
    return %{$Cache} if $Cache;

    # ask the database
    return if !$Self->{DBObject}->Prepare(
        SQL  => 'SELECT id, name, valid_id, change_time, create_time FROM ticket_type WHERE id = ?',
        Bind => [ \$Param{ID} ],
    );

    # fetch the result
    my %Data;
    while ( my @Data = $Self->{DBObject}->FetchrowArray() ) {
        $Data{ID}         = $Data[0];
        $Data{Name}       = $Data[1];
        $Data{ValidID}    = $Data[2];
        $Data{ChangeTime} = $Data[3];
        $Data{CreateTime} = $Data[4];
    }

    # set cache
    $Self->{CacheInternalObject}->Get( Key => $CacheKey, Value => \%Data );

    # no data found
    if ( !%Data ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "TypeID '$Param{ID}' not found!",
        );
        return;
    }

    return %Data;
}

=item TypeUpdate()

update type attributes

    $TypeObject->TypeUpdate(
        ID      => 123,
        Name    => 'New Type',
        ValidID => 1,
        UserID  => 123,
    );

=cut

sub TypeUpdate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ID Name ValidID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # sql
    return if !$Self->{DBObject}->Do(
        SQL => 'UPDATE ticket_type SET name = ?, valid_id = ?, '
            . ' change_time = current_timestamp, change_by = ? WHERE id = ?',
        Bind => [
            \$Param{Name}, \$Param{ValidID}, \$Param{UserID}, \$Param{ID},
        ],
    );

    # delete cache
    my @CacheKeys = ( 'TypeGet::Name::' . $Param{Name}, 'TypeGet::ID::' . $Param{ID} );
    push @CacheKeys, 'TypeLookup::Name::' . $Param{Name}, 'TypeLookup::ID::' . $Param{ID};
    for my $CacheKey (@CacheKeys) {
        $Self->{CacheInternalObject}->Delete( Key => $CacheKey );
    }

    return 1;
}

=item TypeList()

get type list

    my %List = $TypeObject->TypeList();

    or

    my %List = $TypeObject->TypeList(
        Valid => 0,
    );

=cut

sub TypeList {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    my $Valid = 1;
    if ( !$Param{Valid} && defined $Param{Valid} ) {
        $Valid = 0;
    }

    # sql
    return $Self->{DBObject}->GetTableData(
        What  => 'id, name',
        Valid => $Valid,
        Clamp => 1,
        Table => 'ticket_type',
    );
}

=item TypeLookup()

get id or name for queue

    my $Type = $TypeObject->TypeLookup( TypeID => $TypeID );

    my $TypeID = $TypeObject->TypeLookup( Type => $Type );

=cut

sub TypeLookup {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Type} && !$Param{TypeID} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Got no Type or TypeID!' );
        return;
    }

    # check cache
    my $CacheKey;
    my $Key;
    my $Value;
    if ( $Param{TypeID} ) {
        $CacheKey = 'TypeLookup::ID::' . $Param{TypeID};
        $Key      = 'TypeID';
        $Value    = $Param{TypeID};
    }
    else {
        $CacheKey = 'TypeLookup::Name::' . $Param{Type};
        $Key      = 'Type';
        $Value    = $Param{Type};
    }

    my $Cache = $Self->{CacheInternalObject}->Get( Key => $CacheKey );
    return $Cache if $Cache;

    # get data
    my $SQL;
    my @Bind;
    my $Suffix = '';
    if ( $Param{Type} ) {
        $SQL = 'SELECT id FROM ticket_type WHERE name = ?';
        push @Bind, \$Param{Type};
    }
    else {
        $SQL = 'SELECT name FROM ticket_type WHERE id = ?';
        push @Bind, \$Param{TypeID};
    }

    # ask the database
    return if !$Self->{DBObject}->Prepare(
        SQL   => $SQL,
        Bind  => \@Bind,
        Limit => 1,
    );

    # fetch the result
    my $Data;
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $Data = $Row[0];
    }

    # set cache
    $Self->{CacheInternalObject}->Get( Key => $CacheKey, Value => $Data );

    # check if data exists
    if ( !$Data ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Found no $Key for $Value!",
        );
        return;
    }

    return $Data;
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

$Revision: 1.16 $ $Date: 2009-12-08 09:37:10 $

=cut
