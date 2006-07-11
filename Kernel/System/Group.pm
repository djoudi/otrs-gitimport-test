# --
# Kernel/System/Group.pm - All Groups related function should be here eventually
# Copyright (C) 2001-2006 Martin Edenhofer <martin+code@otrs.org>
# Copyright (C) 2002 Atif Ghaffar <aghaffar@developer.ch>
# --
# $Id: Group.pm,v 1.38 2006-07-11 11:14:23 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Group;

use strict;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.38 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::Group - group lib

=head1 SYNOPSIS

All group functions. E. g. to add groups or to get a member list of a group.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a object

  use Kernel::Config;
  use Kernel::System::Log;
  use Kernel::System::DB;
  use Kernel::System::Group;

  my $ConfigObject = Kernel::Config->new();
  my $LogObject    = Kernel::System::Log->new(
      ConfigObject => $ConfigObject,
  );
  my $DBObject = Kernel::System::DB->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
  );
  my $GroupObject = Kernel::System::Group->new(
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
# just for compat!
sub GetGroupIdByName {
    my $Self = shift;
    my %Param = @_;
    my $ID;
    # check needed stuff
    if (!$Param{Group}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Group!");
        return;
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql
    $Self->{DBObject}->Prepare(SQL => "SELECT id from groups where name = '$Param{Group}'");
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
       $ID = $Row[0];
    }
    return $ID;
}
# just for compat!
sub GetRoleIdByName {
    my $Self = shift;
    my %Param = @_;
    my $ID;
    # check needed stuff
    if (!$Param{Role}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Role!");
        return;
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql
    $Self->{DBObject}->Prepare(SQL => "SELECT id from roles where name = '$Param{Role}'");
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
       $ID = $Row[0];
    }
    return $ID;
}

=item GroupMemberAdd()

to add a member to a group

  Permission: ro,move_into,priority,create,rw

  $GroupObject->GroupMemberAdd(
      GID => 12,
      UID => 6,
      Permission => {
          ro => 1,
          move_into => 1,
          create => 1,
          owner => 1,
          priority => 0,
          rw => 0,
      },
      UserID => 123,
  );

=cut

sub GroupMemberAdd {
    my $Self = shift;
    my %Param = @_;
    my $count;
    # check needed stuff
    foreach (qw(UID GID UserID Permission)) {
        if (!$Param{$_}) {
           $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
           return;
        }
    }
    # db quote
    foreach (qw(Permission)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    foreach (qw(GID UID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # check if update is needed
    my %Value = ();
    if (!$Self->{"GroupMemberAdd::GID::$Param{GID}"}) {
        my $SQL = "SELECT group_id, user_id, permission_key, permission_value FROM group_user ".
            " WHERE ".
            " group_id = $Param{GID} ";
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $Value{$Row[0]}->{$Row[1]}->{$Row[2]} = $Row[3];
        }
        $Self->{"GroupMemberAdd::GID::$Param{GID}"} = \%Value;
    }
    else {
        %Value = %{$Self->{"GroupMemberAdd::GID::$Param{GID}"}};
    }
    # update permission
    foreach (keys %{$Param{Permission}}) {
        # check if update is needed
        if ((!$Value{$Param{GID}}->{$Param{UID}}->{$_} && !$Param{Permission}->{$_}) || ($Value{$Param{GID}}->{$Param{UID}}->{$_} && $Param{Permission}->{$_})) {
#            print STDERR "No updated neede! UID:$Param{UID} to GID:$Param{GID}, $_:$Param{Permission}->{$_}!\n";
        }
        else {
            $Self->{"GroupMemberAdd::GID::$Param{GID}"} = undef;
#            print STDERR "Updated needed! UID:$Param{UID} to GID:$Param{GID}, $_:$Param{Permission}->{$_}!\n";
            # delete existing permission
            my $SQL = "DELETE FROM group_user ".
                " WHERE ".
                " group_id = $Param{GID} ".
                " AND ".
                " user_id = $Param{UID} ".
                " AND ".
                " permission_key = '".$Self->{DBObject}->Quote($_)."'";
            $Self->{DBObject}->Do(SQL => $SQL);
            # debug
            if ($Self->{Debug}) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Add UID:$Param{UID} to GID:$Param{GID}, $_:$Param{Permission}->{$_}!",
                );
            }
            # insert new permission
            $SQL = "INSERT INTO group_user ".
                " (user_id, group_id, permission_key, permission_value, ".
                " create_time, create_by, change_time, change_by) ".
                " VALUES ".
                " ($Param{UID}, $Param{GID}, '".$Self->{DBObject}->Quote($_)."', ".
                " ".$Self->{DBObject}->Quote($Param{Permission}->{$_}).", ".
                " current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
            $Self->{DBObject}->Do(SQL => $SQL);
        }
    }
    return 1;
}

=item GroupAdd()

to add a group

  my $ID = $GroupObject->GroupAdd(
      Name => 'example-group',
      ValidID => 1,
      UserID => 123,
  );

=cut

sub GroupAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name ValidID UserID)) {
        if (!$Param{$_}) {
           $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
           return;
        }
    }
    # qoute params
    foreach (qw(Name Comment)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    foreach (qw(ValidID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    my $SQL = "INSERT INTO groups (name, comments, valid_id, ".
        " create_time, create_by, change_time, change_by)".
        " VALUES ".
        " ('$Param{Name}', '$Param{Comment}', ".
        " $Param{ValidID}, current_timestamp, $Param{UserID}, ".
        " current_timestamp, $Param{UserID})";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # get new group id
        $SQL = "SELECT id ".
            " FROM " .
            " groups " .
            " WHERE " .
            " name = '$Param{Name}'";
        my $GroupID = '';
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $GroupID = $Row[0];
        }

        # log notice
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "Group: '$Param{Name}' ID: '$GroupID' created successfully ($Param{UserID})!",
        );
        return $GroupID;
    }
    else {
        return;
    }
}

=item GroupGet()

returns a hash with group data

  %GroupData = $GroupObject->GroupGet(ID => 2);

=cut

sub GroupGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{ID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need ID!");
        return;
    }
    # db quote
    foreach (qw(ID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # sql
    my $SQL = "SELECT name, valid_id, comments ".
        " FROM ".
        " groups ".
        " WHERE ".
        " id = $Param{ID}";
    if ($Self->{DBObject}->Prepare(SQL => $SQL)) {
        my %GroupData = ();
        while (my @Data = $Self->{DBObject}->FetchrowArray()) {
            %GroupData = (
                ID => $Param{ID},
                Name => $Data[0],
                Comment => $Data[2],
                ValidID => $Data[1],
            );
        }
        return %GroupData;
    }
    else {
        return;
    }
}

=item GroupUpdate()

update of a group

  $GroupObject->GroupUpdate(
      ID => 123,
      Name => 'example-group',
      ValidID => 1,
      UserID => 123,
  );

=cut

sub GroupUpdate {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID Name ValidID UserID)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # db quote
    foreach (qw(Name Comment)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    foreach (qw(ID ValidID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # sql
    my $SQL = "UPDATE groups SET name = '$Param{Name}', ".
        " comments = '$Param{Comment}', ".
        " valid_id = $Param{ValidID}, ".
        " change_time = current_timestamp, change_by = $Param{UserID} ".
        " WHERE id = $Param{ID}";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}

=item GroupList()

returns a hash of all groups

  my %Groups = $GroupObject->GroupList(Valid => 1);

=cut

sub GroupList {
    my $Self = shift;
    my %Param = @_;
    my $Valid = $Param{Valid} || 0;
    my %Groups = $Self->{DBObject}->GetTableData(
        What => 'id, name',
        Table => 'groups',
        Valid => $Valid,
    );
    return %Groups;
}

=item GroupMemberList()

returns a list of users/groups with ro/move_into/create/owner/priority/rw permissions
based on GroupGroupMemberList() and GroupRoleMemberList().

  UserID: user id
  GroupID: group id

  Type: ro|move_into|priority|create|rw

  Result: HASH -> returns a hash of key => group id, value => group name
          Name -> returns an array of user names
          ID   -> returns an array of user names


  Example (get groups of user):

  $GroupObject->GroupMemberList(
      UserID => $ID,
      Type => 'move_into',
      Result => 'HASH',
  );

  Example (get users of group):

  $GroupObject->GroupMemberList(
      GroupID => $ID,
      Type => 'move_into',
      Result => 'HASH',
  );

=cut

sub GroupMemberList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Result Type)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    if (!$Param{UserID} && !$Param{GroupID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need UserID or GroupID!");
        return;
    }

    # create cache key
    my $CacheKey = 'GroupMemberList::'.$Param{Type}.'::'.$Param{Result}.'::';
    if ($Param{UserID}) {
        $CacheKey .= 'UserID::'.$Param{UserID};
    }
    else {
        $CacheKey .= 'GroupID::'.$Param{GroupID};
    }
#print STDERR "$CacheKey -------------------------\n";
    # check cache
#$Param{Cached} = 1;
    if ($Self->{ForceCache}) {
        $Param{Cached} = $Self->{ForceCache};
    }
    if ($Param{Cached} && exists ($Self->{$CacheKey})) {
#print STDERR "Cached: $CacheKey-------------------------\n";
        if (ref($Self->{$CacheKey}) eq 'ARRAY') {
            return @{$Self->{$CacheKey}};
        }
        elsif (ref($Self->{$CacheKey}) eq 'HASH') {
#foreach (keys %{$Self->{$CacheKey}}) {
#print STDERR "asdasd $CacheKey - $_ : $Self->{$CacheKey}->{$_}\n";
#}
            return %{$Self->{$CacheKey}};
        }
    }
    # return result
    if ($Param{Result} eq 'ID' || $Param{Result} eq 'Name') {
        my @Result = $Self->GroupGroupMemberList(%Param);
        # get roles of user
        if ($Param{UserID}) {
            my @Member = $Self->GroupUserRoleMemberList(
                UserID => $Param{UserID},
                Result => 'ID',
            );
            if (@Member) {
                my @ResultGroupRole = $Self->GroupRoleMemberList(
                    %Param,
                    RoleIDs => \@Member,
                );
                foreach (@ResultGroupRole) {
                    push (@Result, $_);
                }
            }
        }
        # get roles of group
        elsif ($Param{GroupID}) {
            my @Roles = $Self->GroupRoleMemberList(
                GroupID => $Param{GroupID},
                Type => $Param{Type},
                Result => 'ID',
            );
            if (@Roles) {
                my @ResultGroupUserRole = $Self->GroupUserRoleMemberList(
                    %Param,
                    RoleIDs => \@Roles,
                );
                foreach (@ResultGroupUserRole) {
                    push (@Result, $_);
                }
            }
        }
        # cache result
        $Self->{$CacheKey} = \@Result;
        return @Result;
    }
    else {
        my %Result = $Self->GroupGroupMemberList(%Param);
        # get roles of user
        if ($Param{UserID}) {
            my @Member = $Self->GroupUserRoleMemberList(
                UserID => $Param{UserID},
                Result => 'ID',
            );

            if (@Member) {
                my %ResultGroupRole = $Self->GroupRoleMemberList(
                    %Param,
                    RoleIDs => \@Member,
                );
                %Result = (%Result, %ResultGroupRole);
            }
        }
        # get roles of group
        elsif ($Param{GroupID}) {
            my @Roles = $Self->GroupRoleMemberList(
                GroupID => $Param{GroupID},
                Type => $Param{Type},
                Result => 'ID',
            );
            if (@Roles) {
                my %ResultGroupUserRole = $Self->GroupUserRoleMemberList(
                    %Param,
                    RoleIDs => \@Roles,
                );
                %Result = (%Result, %ResultGroupUserRole);
            }
        }

        $Self->{$CacheKey} = \%Result;
        return %Result;
    }
}

=item GroupMemberInvolvedList()

returns a list of users/groups with ro/move_into/create/owner/priority/rw permissions

  @Users = $GroupObject->GroupMemberInvolvedList(
      UserID => $ID,
      Type => 'move_into',
  );

=cut

sub GroupMemberInvolvedList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(UserID Type)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # quote
    foreach (qw(Type)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    foreach (qw(UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # get valid ids
    my $ValidID = join (', ', $Self->{DBObject}->GetValidIDs());

    # get all groups of the given user
    my %Groups;
    my $SQL = "SELECT DISTINCT(g.id) FROM groups g, group_user gu " .
        "WHERE g.valid_id IN ($ValidID) AND g.id = gu.group_id AND " .
        "gu.permission_value = 1 AND gu.permission_key IN ('$Param{Type}', 'rw') AND " .
        "gu.user_id = " . $Param{UserID};
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $Groups{$Row[0]} = 1;
    }
    # get all roles of the given user
    $SQL = "SELECT DISTINCT(ru.role_id) FROM role_user ru, roles r " .
        "WHERE r.valid_id in ($ValidID) AND r.id = ru.role_id AND ru.user_id = " . $Param{UserID};
    $Self->{DBObject}->Prepare(SQL => $SQL);
    my @Roles;
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        push (@Roles, $Row[0]);
    }

    if (@Roles) {
        # get all groups of the roles of the given user
        my $StringRoles = join (',', @Roles);
        $SQL = "SELECT DISTINCT(g.id) FROM groups g, group_role gu " .
            "WHERE g.valid_id in ($ValidID) AND g.id = gu.group_id AND gu.permission_value = 1 AND " .
            "gu.permission_key IN ('$Param{Type}', 'rw') AND gu.role_id IN ($StringRoles)";
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $Groups{$Row[0]} = 1;
        }
    }

    my @ArrayGroups;
    foreach (keys %Groups) {
       push (@ArrayGroups, $_);
    }
    my %AllUsers;
    if (@ArrayGroups) {
        # get all users of the groups
        my $StringGroups = join(',', @ArrayGroups);
        $SQL = "SELECT DISTINCT(gu.user_id) FROM groups g, group_user gu WHERE " .
            "g.valid_id in ($ValidID) AND g.id = gu.group_id AND gu.permission_value = 1 AND " .
            "gu.permission_key IN ('$Param{Type}', 'rw') AND gu.group_id IN ($StringGroups)";
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $AllUsers{$Row[0]} = 1;
        }
        # get all roles of the groups
        my @AllRoles;
        $SQL = "SELECT DISTINCT(gu.role_id) FROM groups g, group_role gu WHERE " .
            "g.valid_id in ($ValidID) AND g.id = gu.group_id AND gu.permission_value = 1 AND " .
            "gu.permission_key IN ('$Param{Type}', 'rw') AND gu.group_id IN ($StringGroups)";
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            push (@AllRoles, $Row[0]);
        }
        if (@AllRoles) {
            # get all users of the roles
            my $StringAllRoles = join (',', @AllRoles);
            $SQL = "SELECT DISTINCT(ru.user_id) FROM role_user ru, roles r WHERE " .
                "r.valid_id in ($ValidID) AND r.id = ru.role_id AND ru.role_id IN ($StringAllRoles)";
            $Self->{DBObject}->Prepare(SQL => $SQL);
            while (my @Row = $Self->{DBObject}->FetchrowArray()) {
                $AllUsers{$Row[0]} = 1;
            }
        }
    }

    my @Return;
    foreach (keys %AllUsers) {
        push (@Return, $_);
    }

    return @Return;
}

=item GroupGroupMemberList()

returns a list of users/groups with ro/move_into/create/owner/priority/rw permissions

  UserID: user id
  GroupID: group id
  UserIDs: user ids (array ref)
  GroupIDs: group ids (array ref)

  Type: ro|move_into|priority|create|rw

  Result: HASH -> returns a hash of key => group id, value => group name
          Name -> returns an array of user names
          ID   -> returns an array of user names


  Example (get groups of user):

  $GroupObject->GroupGroupMemberList(
      UserID => $ID,
      Type => 'move_into',
      Result => 'HASH',
  );

  Example (get users of group):

  $GroupObject->GroupGroupMemberList(
      GroupID => $ID,
      Type => 'move_into',
      Result => 'HASH',
  );

=cut

sub GroupGroupMemberList {
    my $Self = shift;
    my %Param = @_;
    my @UserIDs;
    my @GroupIDs;
    # check needed stuff
    foreach (qw(Result Type)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    if (!$Param{UserID} && !$Param{GroupID} && !$Param{UserIDs} && !$Param{GroupIDs}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need UserID or GroupID or UserIDs or GroupIDs!");
        return;
    }
    # create cache key
    my $CacheKey = 'GroupGroupMemberList::'.$Param{Type}.'::'.$Param{Result}.'::';
    if ($Param{UserID}) {
        $CacheKey .= 'UserID::'.$Param{UserID};
    }
    elsif ($Param{GroupID}) {
        $CacheKey .= 'GroupID::'.$Param{GroupID};
    }
    elsif ($Param{UserIDs}) {
        @UserIDs = sort(@{$Param{UserIDs}});
    }
    elsif ($Param{GroupIDs}) {
        @GroupIDs = sort(@{$Param{GroupIDs}});
    }
#print STDERR "$CacheKey -\n";
    # check cache
#$Param{Cached} = 1;
    if ($Param{UserID} || $Param{GroupID}) {
        if ($Self->{ForceCache}) {
            $Param{Cached} = $Self->{ForceCache};
        }
        if ($Param{Cached} && $Self->{$CacheKey}) {
            if (ref($Self->{$CacheKey}) eq 'ARRAY') {
                return @{$Self->{$CacheKey}};
            }
            elsif (ref($Self->{$CacheKey}) eq 'HASH') {
                return %{$Self->{$CacheKey}};
            }
        }
    }
#print STDERR "not cached $CacheKey\n";
    # db quote
    foreach (qw(Type)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql
    my %Data = ();
    my @Name = ();
    my @ID = ();
    my $SQL = "SELECT g.id, g.name, gu.permission_key, gu.permission_value, ".
        " gu.user_id ".
        " FROM ".
        " groups g, group_user gu".
        " WHERE " .
        " g.valid_id IN ( ${\(join ', ', $Self->{DBObject}->GetValidIDs())} ) ".
        " AND ".
        " g.id = gu.group_id ".
        " AND ".
        " gu.permission_value = 1 ".
        " AND ".
        " gu.permission_key IN ('$Param{Type}', 'rw') ".
        " AND ";
    if ($Param{UserID}) {
        $SQL .= " gu.user_id = ".$Self->{DBObject}->Quote($Param{UserID}, 'Integer');
    }
    elsif ($Param{GroupID}) {
        $SQL .= " gu.group_id = ".$Self->{DBObject}->Quote($Param{GroupID}, 'Integer');
    }
    elsif ($Param{UserIDs}) {
        my @UserIDsQuote;
        foreach (@UserIDs) {
            push (@UserIDsQuote, $Self->{DBObject}->Quote($_, 'Integer'));
        }
        my $UserString = join(',', @UserIDsQuote);
        $SQL .= " ru.user_id IN ($UserString)";
    }
    elsif ($Param{GroupIDs}) {
        my @GroupIDsQuote;
        foreach (@GroupIDs) {
            push (@GroupIDsQuote, $Self->{DBObject}->Quote($_, 'Integer'));
        }
        my $GroupString = join(',', @GroupIDsQuote);
        $SQL .= " gu.group_id IN ($GroupString)";
    }
#print STDERR "SQL: $Param{Type}::$Param{Result} $SQL\n";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my $Key = '';
        my $Value = '';
        if ($Param{UserID} || $Param{UserIDs}) {
            $Key = $Row[0];
            $Value = $Row[1];
        }
        else {
            $Key = $Row[4];
            $Value = $Row[1];
        }
        # remember permissions
        if (!defined($Data{$Key})) {
            $Data{$Key} = $Value;
            push (@Name, $Value);
            push (@ID, $Key);
        }
    }
# role lookup base on UserID or GroupID

    # return result
    if ($Param{Result} && $Param{Result} eq 'ID') {
        if ($Param{UserID} || $Param{GroupID}) {
            # cache result
            $Self->{$CacheKey} = \@ID;
        }
        return @ID;
    }
    if ($Param{Result} && $Param{Result} eq 'Name') {
        if ($Param{UserID} || $Param{GroupID}) {
            # cache result
            $Self->{$CacheKey} = \@Name;
        }
        return @Name;
    }
    else {
        if ($Param{UserID} || $Param{GroupID}) {
            # cache result
            $Self->{$CacheKey} = \%Data;
        }
        return %Data;
    }
}

=item GroupRoleMemberList()

returns a list of role/groups with ro/move_into/create/owner/priority/rw permissions

  RoleID: role id
  GroupID: group id
  RoleIDs: role id (array ref)
  GroupIDs: group id (array ref)

  Type: ro|move_into|priority|create|rw

  Result: HASH -> returns a hash of key => group id, value => group name
          Name -> returns an array of user names
          ID   -> returns an array of user names


  Example (get groups of role):

  $GroupObject->GroupRoleMemberList(
      RoleID => $ID,
      Type => 'move_into',
      Result => 'HASH',
  );

  Example (get roles of group):

  $GroupObject->GroupRoleMemberList(
      GroupID => $ID,
      Type => 'move_into',
      Result => 'HASH',
  );

=cut

sub GroupRoleMemberList {
    my $Self = shift;
    my %Param = @_;
    my @RoleIDs;
    my @GroupIDs;
    # check needed stuff
    foreach (qw(Result Type)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    if (!$Param{RoleID} && !$Param{GroupID} && !$Param{RoleIDs} && !$Param{GroupIDs}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need RoleID or GroupID or RoleIDs or GroupIDs!");
        return;
    }
    # create cache key
    my $CacheKey = 'GroupRoleMemberList::'.$Param{Type}.'::'.$Param{Result}.'::';
    if ($Param{RoleID}) {
        $CacheKey .= 'RoleID::'.$Param{RoleID};
    }
    elsif ($Param{GroupID}) {
        $CacheKey .= 'GroupID::'.$Param{GroupID};
    }
    elsif ($Param{RoleIDs}) {
        @RoleIDs = sort(@{$Param{RoleIDs}});
    }
    elsif ($Param{GroupIDs}) {
        @GroupIDs = sort(@{$Param{GroupIDs}});
    }
#print STDERR "$CacheKey -\n";
    # check cache
#$Param{Cached} = 1;
    if ($Param{RoleID} || $Param{GroupID}) {
        if ($Self->{ForceCache}) {
            $Param{Cached} = $Self->{ForceCache};
        }
        if ($Param{Cached} && $Self->{$CacheKey}) {
            if (ref($Self->{$CacheKey}) eq 'ARRAY') {
                return @{$Self->{$CacheKey}};
            }
            elsif (ref($Self->{$CacheKey}) eq 'HASH') {
                return %{$Self->{$CacheKey}};
            }
        }
    }
#print STDERR "not cached $CacheKey\n";
    # db quote
    foreach (qw(Type)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql
    my %Data = ();
    my @Name = ();
    my @ID = ();
    my $SQL = "SELECT g.id, g.name, gu.permission_key, gu.permission_value, ".
        " gu.role_id ".
        " FROM ".
        " groups g, group_role gu".
        " WHERE " .
        " g.valid_id IN ( ${\(join ', ', $Self->{DBObject}->GetValidIDs())} ) ".
        " AND ".
        " g.id = gu.group_id ".
        " AND ".
        " gu.permission_value = 1 ".
        " AND ".
        " gu.permission_key IN ('$Param{Type}', 'rw') ".
        " AND ";
    if ($Param{RoleID}) {
        $SQL .= " gu.role_id = ".$Self->{DBObject}->Quote($Param{RoleID}, 'Integer');
    }
    elsif ($Param{GroupID}) {
        $SQL .= " gu.group_id = ".$Self->{DBObject}->Quote($Param{GroupID}, 'Integer');
    }
    elsif ($Param{RoleIDs}) {
        my @RoleIDsQuote;
        foreach (@RoleIDs) {
            push (@RoleIDsQuote, $Self->{DBObject}->Quote($_, 'Integer'));
        }
        my $RoleString = join(',', @RoleIDsQuote);
        $SQL .= " gu.role_id IN ($RoleString)";
    }
    elsif ($Param{GroupIDs}) {
        my @GroupIDsQuote;
        foreach (@GroupIDs) {
            push (@GroupIDsQuote, $Self->{DBObject}->Quote($_, 'Integer'));
        }
        my $GroupString = join(',', @GroupIDsQuote);
        $SQL .= " gu.group_id IN ($GroupString)";
    }
#print STDERR "SQL: $Param{Type}::$Param{Result} $SQL\n";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my $Key = '';
        my $Value = '';
        if ($Param{RoleID} || $Param{RoleIDs}) {
            $Key = $Row[0];
            $Value = $Row[1];
        }
        else {
            $Key = $Row[4];
            $Value = $Row[1];
        }
        # remember permissions
        if (!defined($Data{$Key})) {
            $Data{$Key} = $Value;
            push (@Name, $Value);
            push (@ID, $Key);
        }
    }
# role lookup base on UserID or GroupID

    # return result
    if ($Param{Result} && $Param{Result} eq 'ID') {
        if ($Param{RoleID} || $Param{GroupID}) {
            # cache result
            $Self->{$CacheKey} = \@ID;
        }
        return @ID;
    }
    if ($Param{Result} && $Param{Result} eq 'Name') {
        if ($Param{RoleID} || $Param{GroupID}) {
            # cache result
            $Self->{$CacheKey} = \@Name;
        }
        return @Name;
    }
    else {
        if ($Param{RoleID} || $Param{GroupID}) {
            # cache result
            $Self->{$CacheKey} = \%Data;
        }
        return %Data;
    }
}

=item GroupRoleMemberAdd()

to add a role to a group

  Permission: ro,move_into,priority,create,rw

  $GroupObject->GroupRoleMemberAdd(
      GID => 12,
      RID => 6,
      Permission => {
          ro => 1,
          move_into => 1,
          create => 1,
          owner => 1,
          priority => 0,
          rw => 0,
      },
      UserID => 123,
  );

=cut

sub GroupRoleMemberAdd {
    my $Self = shift;
    my %Param = @_;
    my $count;
    # check needed stuff
    foreach (qw(RID GID UserID Permission)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # db quote
    foreach (qw(Permission)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    foreach (qw(RID GID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # check if update is needed
    my %Value = ();
    if (!$Self->{"GroupRoleMemberAdd::GID::$Param{GID}"}) {
        my $SQL = "SELECT group_id, role_id, permission_key, permission_value FROM group_role ".
            " WHERE ".
            " group_id = $Param{GID} ";
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $Value{$Row[0]}->{$Row[1]}->{$Row[2]} = $Row[3];
        }
        $Self->{"GroupRoleMemberAdd::GID::$Param{GID}"} = \%Value;
    }
    else {
        %Value = %{$Self->{"GroupRoleMemberAdd::GID::$Param{GID}"}};
    }
    # update permission
    foreach (keys %{$Param{Permission}}) {
        # check if update is needed
        if ((!$Value{$Param{GID}}->{$Param{RID}}->{$_} && !$Param{Permission}->{$_}) || ($Value{$Param{GID}}->{$Param{RID}}->{$_} && $Param{Permission}->{$_})) {
#            print STDERR "No updated neede! UID:$Param{UID} to GID:$Param{GID}, $_:$Param{Permission}->{$_}!\n";
        }
        else {
#            print STDERR "Updated neede! UID:$Param{UID} to GID:$Param{GID}, $_:$Param{Permission}->{$_}!\n";
            # delete existing permission
            my $SQL = "DELETE FROM group_role ".
                " WHERE ".
                " group_id = $Param{GID} ".
                " AND ".
                " role_id = $Param{RID} ".
                " AND ".
                " permission_key = '".$Self->{DBObject}->Quote($_)."'";
            $Self->{DBObject}->Do(SQL => $SQL);
            # debug
            if ($Self->{Debug}) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Add RID:$Param{RID} to GID:$Param{GID}, $_:$Param{Permission}->{$_}!",
                );
            }
            # insert new permission
            $SQL = "INSERT INTO group_role ".
                " (role_id, group_id, permission_key, permission_value, ".
                " create_time, create_by, change_time, change_by) ".
                " VALUES ".
                " ($Param{RID}, $Param{GID}, '".$Self->{DBObject}->Quote($_)."', ".
                " ".$Self->{DBObject}->Quote($Param{Permission}->{$_}).", ".
                " current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
            $Self->{DBObject}->Do(SQL => $SQL);
        }
    }
    return 1;
}

=item GroupUserRoleMemberList()

returns a list of role/user members

  RoleID: role id
  UserID: user id
  RoleIDs: role ids (array ref)
  UserIDs: user ids (array ref)


  Result: HASH -> returns a hash of key => group id, value => group name
          Name -> returns an array of user names
          ID   -> returns an array of user names

  Example (get roles of user):

  $GroupObject->GroupUserRoleMemberList(
      UserID => $ID,
      Result => 'HASH',
  );

  Example (get user of roles):

  $GroupObject->GroupUserRoleMemberList(
      RoleID => $ID,
      Result => 'HASH',
  );

=cut

sub GroupUserRoleMemberList {
    my $Self = shift;
    my %Param = @_;
    my @RoleIDs;
    my @UserIDs;
    # check needed stuff
    foreach (qw(Result)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    if (!$Param{RoleID} && !$Param{UserID} && !$Param{RoleIDs} && !$Param{UserIDs}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need RoleID or UserID or RoleIDs or UserIDs!");
        return;
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    foreach (qw(RoleID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # create cache key
    my $CacheKey = 'GroupUserRoleMemberList::'.$Param{Result}.'::';
    if ($Param{RoleID}) {
        $CacheKey .= 'RoleID::'.$Param{RoleID};
    }
    elsif ($Param{UserID}) {
        $CacheKey .= 'UserID::'.$Param{UserID};
    }
    elsif ($Param{RoleIDs}) {
        @RoleIDs = sort(@{$Param{RoleIDs}});
    }
    elsif ($Param{UserIDs}) {
        @UserIDs = sort(@{$Param{UserIDs}});
    }
#print STDERR "$CacheKey -\n";
    # check cache
#$Param{Cached} = 1;
    if ($Param{RoleID} || $Param{UserID}) {
        if ($Self->{ForceCache}) {
             $Param{Cached} = $Self->{ForceCache};
        }
        if ($Param{Cached} && $Self->{$CacheKey}) {
            if (ref($Self->{$CacheKey}) eq 'ARRAY') {
                return @{$Self->{$CacheKey}};
            }
            elsif (ref($Self->{$CacheKey}) eq 'HASH') {
                return %{$Self->{$CacheKey}};
            }
        }
    }
#print STDERR "not cached $CacheKey\n";
    # sql
    my %Data = ();
    my @Name = ();
    my @ID = ();
    my $SQL = "SELECT ru.role_id, ru.user_id, r.name ".
        " FROM ".
        " role_user ru, roles r".
        " WHERE " .
        " r.valid_id IN ( ${\(join ', ', $Self->{DBObject}->GetValidIDs())} ) ".
        " AND ".
        " r.id = ru.role_id ".
        " AND ";
    if ($Param{RoleID}) {
        $SQL .= " ru.role_id = $Param{RoleID}";
    }
    elsif ($Param{UserID}) {
        $SQL .= " ru.user_id = $Param{UserID}";
    }
    elsif ($Param{RoleIDs}) {
        my @RoleIDsQuote;
        foreach (@RoleIDs) {
            push (@RoleIDsQuote, $Self->{DBObject}->Quote($_, 'Integer'));
        }
        my $RoleString = join(',', @RoleIDsQuote);
        $SQL .= " ru.role_id IN ($RoleString)";
    }
    elsif ($Param{UserIDs}) {
        my @UserIDsQuote;
        foreach (@UserIDs) {
            push (@UserIDsQuote, $Self->{DBObject}->Quote($_, 'Integer'));
        }
        my $UserString = join(',', @UserIDsQuote);
        $SQL .= " ru.user_id IN ($UserString)";
    }
#print STDERR "SQL: $Param{Result} $SQL\n";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my $Key = '';
        my $Value = '';
        if ($Param{RoleID} || $Param{RoleIDs}) {
            $Key = $Row[1];
            $Value = $Row[0];
        }
        else {
            $Key = $Row[0];
            $Value = $Row[1];
        }
        # remember permissions
        if (!defined($Data{$Key})) {
            $Data{$Key} = $Value;
            push (@Name, $Value);
            push (@ID, $Key);
        }
    }
# role lookup base on UserID or GroupID

    # return result
    if ($Param{Result} && $Param{Result} eq 'ID') {
        if ($Param{RoleID} || $Param{UserID}) {
            # cache result
            $Self->{$CacheKey} = \@ID;
        }
        return @ID;
    }
    if ($Param{Result} && $Param{Result} eq 'Name') {
        if ($Param{RoleID} || $Param{UserID}) {
            # cache result
            $Self->{$CacheKey} = \@Name;
        }
        return @Name;
    }
    else {
        if ($Param{RoleID} || $Param{UserID}) {
            # cache result
            $Self->{$CacheKey} = \%Data;
        }
        return %Data;
    }
}

=item GroupUserRoleMemberAdd()

to add a member to a role

  $GroupObject->GroupUserRoleMemberAdd(
      UID => 12,
      RID => 6,
      Active => 1,
      UserID => 123,
  );

=cut

sub GroupUserRoleMemberAdd {
    my $Self = shift;
    my %Param = @_;
    my $count;
    # check needed stuff
    foreach (qw(RID UID UserID)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # db quote
    foreach (qw(UID RID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # delete existing relation
    my $SQL = "DELETE FROM role_user ".
        " WHERE ".
        " user_id = $Param{UID} ".
        " AND ".
        " role_id = $Param{RID} ";
    $Self->{DBObject}->Do(SQL => $SQL);
    if ($Param{Active}) {
        # debug
        if ($Self->{Debug}) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Add UID:$Param{UID} to RID:$Param{RID}!",
            );
        }
        # insert new permission
        $SQL = "INSERT INTO role_user ".
            " (role_id, user_id, create_time, create_by, change_time, change_by) ".
            " VALUES ".
            " ($Param{RID}, $Param{UID}, ".
            " current_timestamp, $Param{UserID}, current_timestamp, $Param{UserID})";
        if ($Self->{DBObject}->Do(SQL => $SQL)) {
            return 1;
        }
        else {
            return;
        }
    }
    else {
        return;
    }
}

=item RoleAdd()

to add a new role

  my $ID = $RoleObject->RoleAdd(
      Name => 'example-group',
      ValidID => 1,
      UserID => 123,
  );

=cut

sub RoleAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name ValidID UserID)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # qoute params
    foreach (qw(Name Comment)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    foreach (qw(ValidID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    my $SQL = "INSERT INTO roles (name, comments, valid_id, ".
        " create_time, create_by, change_time, change_by)".
        " VALUES ".
        " ('$Param{Name}', '$Param{Comment}', ".
        " $Param{ValidID}, current_timestamp, $Param{UserID}, ".
        " current_timestamp, $Param{UserID})";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # get new group id
        $SQL = "SELECT id ".
            " FROM " .
            " roles " .
            " WHERE " .
            " name = '$Param{Name}'";
        my $RoleID = '';
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $RoleID = $Row[0];
        }

        # log notice
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "Role: '$Param{Name}' ID: '$RoleID' created successfully ($Param{UserID})!",
        );
        return $RoleID;
    }
    else {
        return;
    }
}

=item RoleGet()

returns a hash with role data

  %RoleData = $RoleObject->RoleGet(ID => 2);

=cut

sub RoleGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    if (!$Param{ID}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need ID!");
        return;
    }
    # db quote
    foreach (qw(ID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # sql
    my $SQL = "SELECT name, valid_id, comments ".
        " FROM ".
        " roles ".
        " WHERE ".
        " id = $Param{ID}";
    if ($Self->{DBObject}->Prepare(SQL => $SQL)) {
        my %RoleData = ();
        while (my @Data = $Self->{DBObject}->FetchrowArray()) {
            %RoleData = (
                ID => $Param{ID},
                Name => $Data[0],
                Comment => $Data[2],
                ValidID => $Data[1],
            );
        }
        return %RoleData;
    }
    else {
        return;
    }
}

=item RoleUpdate()

update of a role

  $RoleObject->RoleUpdate(
      ID => 123,
      Name => 'example-group',
      ValidID => 1,
      UserID => 123,
  );

=cut

sub RoleUpdate {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID Name ValidID UserID)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # db quote
    foreach (qw(Name Comment)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    foreach (qw(ID ValidID UserID)) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}, 'Integer');
    }
    # sql
    my $SQL = "UPDATE roles SET name = '$Param{Name}', ".
        " comments = '$Param{Comment}', ".
        " valid_id = $Param{ValidID}, ".
        " change_time = current_timestamp, change_by = $Param{UserID} ".
        " WHERE id = $Param{ID}";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}

=item RoleList()

returns a hash of all roles

  my %Roles = $RoleObject->RoleList(Valid => 1);

=cut

sub RoleList {
    my $Self = shift;
    my %Param = @_;
    my $Valid = $Param{Valid} || 0;
    my %Roles = $Self->{DBObject}->GetTableData(
        What => 'id, name',
        Table => 'roles',
        Valid => $Valid,
    );
    return %Roles;
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.38 $ $Date: 2006-07-11 11:14:23 $

=cut
