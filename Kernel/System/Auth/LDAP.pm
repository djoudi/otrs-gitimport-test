# --
# Kernel/System/Auth/LDAP.pm - provides the ldap authentification
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: LDAP.pm,v 1.47.2.4 2009-04-23 15:03:12 tt Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Auth::LDAP;

use strict;
use warnings;
use Net::LDAP;
use Kernel::System::Encode;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.47.2.4 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for (qw(LogObject ConfigObject DBObject UserObject GroupObject)) {
        $Self->{$_} = $Param{$_} || die "No $_!";
    }

    # encode object
    $Self->{EncodeObject} = Kernel::System::Encode->new(%Param);

    # Debug 0=off 1=on
    $Self->{Debug} = 0;

    # get ldap preferences
    $Self->{Count} = $Param{Count} || '';
    $Self->{Die} = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::Die' . $Param{Count} );
    if ( $Self->{ConfigObject}->Get( 'AuthModule::LDAP::Host' . $Param{Count} ) ) {
        $Self->{Host} = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::Host' . $Param{Count} );
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need AuthModule::LDAP::Host$Param{Count} in Kernel/Config.pm",
        );
        return;
    }
    if ( defined( $Self->{ConfigObject}->Get( 'AuthModule::LDAP::BaseDN' . $Param{Count} ) ) ) {
        $Self->{BaseDN} = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::BaseDN' . $Param{Count} );
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need AuthModule::LDAP::BaseDN$Param{Count} in Kernel/Config.pm",
        );
        return;
    }
    if ( $Self->{ConfigObject}->Get( 'AuthModule::LDAP::UID' . $Param{Count} ) ) {
        $Self->{UID} = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::UID' . $Param{Count} );
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Need AuthModule::LDAP::UID$Param{Count} in Kernel/Config.pm",
        );
        return;
    }
    $Self->{SearchUserDN}
        = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::SearchUserDN' . $Param{Count} ) || '';
    $Self->{SearchUserPw}
        = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::SearchUserPw' . $Param{Count} ) || '';
    $Self->{GroupDN} = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::GroupDN' . $Param{Count} )
        || '';
    $Self->{AccessAttr}
        = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::AccessAttr' . $Param{Count} )
        || 'memberUid';
    $Self->{UserAttr} = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::UserAttr' . $Param{Count} )
        || 'DN';
    $Self->{UserSuffix}
        = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::UserSuffix' . $Param{Count} ) || '';
    $Self->{UserLowerCase}
        = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::UserLowerCase' . $Param{Count} ) || 0;
    $Self->{DestCharset} = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::Charset' . $Param{Count} )
        || 'utf-8';

    # ldap filter always used
    $Self->{AlwaysFilter}
        = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::AlwaysFilter' . $Param{Count} ) || '';

    # Net::LDAP new params
    if ( $Self->{ConfigObject}->Get( 'AuthModule::LDAP::Params' . $Param{Count} ) ) {
        $Self->{Params} = $Self->{ConfigObject}->Get( 'AuthModule::LDAP::Params' . $Param{Count} );
    }
    else {
        $Self->{Params} = {};
    }

    return $Self;
}

sub GetOption {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{What} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need What!" );
        return;
    }

    # module options
    my %Option = ( PreAuth => 0, );

    # return option
    return $Option{ $Param{What} };
}

sub Auth {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(User Pw)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    $Param{User} = $Self->_ConvertTo( $Param{User}, $Self->{ConfigObject}->Get('DefaultCharset') );
    $Param{Pw}   = $Self->_ConvertTo( $Param{Pw},   $Self->{ConfigObject}->Get('DefaultCharset') );

    # get params
    my $RemoteAddr = $ENV{REMOTE_ADDR} || 'Got no REMOTE_ADDR env!';

    # remove leading and trailing spaces
    $Param{User} =~ s/^\s+//;
    $Param{User} =~ s/\s+$//;

    # Convert username to lower case letters
    if ( $Self->{UserLowerCase} ) {
        $Param{User} = lc( $Param{User} );
    }

    # add user suffix
    if ( $Self->{UserSuffix} ) {
        $Param{User} .= $Self->{UserSuffix};

        # just in case for debug
        if ( $Self->{Debug} > 0 ) {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message  => "User: ($Param{User}) added $Self->{UserSuffix} to username!",
            );
        }
    }

    # just in case for debug!
    if ( $Self->{Debug} > 0 ) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message  => "User: '$Param{User}' tried to authenticate with Pw: '$Param{Pw}' "
                . "(REMOTE_ADDR: $RemoteAddr)",
        );
    }

    # ldap connect and bind (maybe with SearchUserDN and SearchUserPw)
    my $LDAP = Net::LDAP->new( $Self->{Host}, %{ $Self->{Params} } );
    if ( !$LDAP ) {
        if ( $Self->{Die} ) {
            die "Can't connect to $Self->{Host}: $@";
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Can't connect to $Self->{Host}: $@",
            );
            return;
        }
    }
    my $Result = '';
    if ( $Self->{SearchUserDN} && $Self->{SearchUserPw} ) {
        $Result = $LDAP->bind( dn => $Self->{SearchUserDN}, password => $Self->{SearchUserPw} );
    }
    else {
        $Result = $LDAP->bind();
    }
    if ( $Result->code ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "First bind failed! " . $Result->error(),
        );
        $LDAP->disconnect;
        return;
    }

    # user quote
    my $UserQuote = $Param{User};
    $UserQuote =~ s/\\/\\\\/g;
    $UserQuote =~ s/\(/\\(/g;
    $UserQuote =~ s/\)/\\)/g;

    # build filter
    my $Filter = "($Self->{UID}=$UserQuote)";

    # prepare filter
    if ( $Self->{AlwaysFilter} ) {
        $Filter = "(&$Filter$Self->{AlwaysFilter})";
    }

    # perform user search
    $Result = $LDAP->search(
        base   => $Self->{BaseDN},
        filter => $Filter,
    );
    if ( $Result->code ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Search failed! " . $Result->error,
        );
        $LDAP->unbind;
        $LDAP->disconnect;
        return;
    }

    # get whole user dn
    my $UserDN = '';
    for my $Entry ( $Result->all_entries ) {
        $UserDN = $Entry->dn();
    }

    # log if there is no LDAP user entry
    if ( !$UserDN ) {

        # failed login note
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message  => "User: $Param{User} authentication failed, no LDAP entry found!"
                . "BaseDN='$Self->{BaseDN}', Filter='$Filter', (REMOTE_ADDR: $RemoteAddr).",
        );

        # take down session
        $LDAP->unbind;
        $LDAP->disconnect;
        return;
    }

    # DN quote
    my $UserDNQuote = $UserDN;
    $UserDNQuote =~ s/\\/\\\\/g;
    $UserDNQuote =~ s/\(/\\(/g;
    $UserDNQuote =~ s/\)/\\)/g;

    # check if user need to be in a group!
    if ( $Self->{AccessAttr} && $Self->{GroupDN} ) {

        # just in case for debug
        if ( $Self->{Debug} > 0 ) {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message  => "check for groupdn!",
            );
        }

        # search if we're allowed to
        my $Filter2 = '';
        if ( $Self->{UserAttr} eq 'DN' ) {
            $Filter2 = "($Self->{AccessAttr}=$UserDNQuote)";
        }
        else {
            $Filter2 = "($Self->{AccessAttr}=$UserQuote)";
        }
        my $Result2 = $LDAP->search(
            base   => $Self->{GroupDN},
            filter => $Filter2,
        );
        if ( $Result2->code ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Search failed! base='"
                    . $Self->{GroupDN}
                    . "', filter='"
                    . $Filter2 . "', "
                    . $Result->error,
            );
            $LDAP->unbind;
            $LDAP->disconnect;
            return;
        }

        # extract it
        my $GroupDN = '';
        for my $Entry ( $Result2->all_entries ) {
            $GroupDN = $Entry->dn();
        }

        # log if there is no LDAP entry
        if ( !$GroupDN ) {

            # failed login note
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message  => "User: $Param{User} authentication failed, no LDAP group entry found"
                    . "GroupDN='$Self->{GroupDN}', Filter='$Filter2'! (REMOTE_ADDR: $RemoteAddr).",
            );

            # take down session
            $LDAP->unbind;
            $LDAP->disconnect;
            return;
        }
    }

    # bind with user data -> real user auth.
    $Result = $LDAP->bind( dn => $UserDN, password => $Param{Pw} );
    if ( $Result->code ) {

        # failed login note
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message  => "User: $Param{User} ($UserDN) authentication failed: '"
                . $Result->error()
                . "' (REMOTE_ADDR: $RemoteAddr).",
        );

        # take down session
        $LDAP->unbind;
        $LDAP->disconnect;
        return;
    }
    else {

        # maybe check if pw is expired
        # if () {
        #     $Self->{LogObject}->Log(
        #         Priority => 'info',
        #         Message => "Password is expired!",
        #     );
        #     return;
        # }

        # login note
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "User: $Param{User} ($UserDN) authentication ok (REMOTE_ADDR: $RemoteAddr).",
        );

        # sync user from ldap
        if ( $Self->{ConfigObject}->Get( 'UserSyncLDAPMap' . $Self->{Count} ) ) {
            my $Result = '';
            if ( $Self->{SearchUserDN} && $Self->{SearchUserPw} ) {
                $Result = $LDAP->bind(
                    dn       => $Self->{SearchUserDN},
                    password => $Self->{SearchUserPw},
                );
            }
            else {
                $Result = $LDAP->bind();
            }
            if ( $Result->code ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Sync bind failed! " . $Result->error,
                );

                # take down session
                $LDAP->unbind;
                $LDAP->disconnect;
                return $Param{User};
            }

            # build filter
            my $Filter = "($Self->{UID}=$UserQuote)";

            # prepare filter
            if ( $Self->{AlwaysFilter} ) {
                $Filter = "(&$Filter$Self->{AlwaysFilter})";
            }

            # perform user search
            $Result = $LDAP->search(
                base   => $Self->{BaseDN},
                filter => $Filter,
            );
            if ( $Result->code ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Search failed! ("
                        . $Self->{BaseDN}
                        . ") filter='$Filter' "
                        . $Result->error,
                );
            }

            # get whole user dn
            my $UserDN   = '';
            my %SyncUser = ();
            for my $Entry ( $Result->all_entries ) {
                $UserDN = $Entry->dn();
                for my $Key (
                    keys %{ $Self->{ConfigObject}->Get( 'UserSyncLDAPMap' . $Self->{Count} ) }
                    )
                {

                    # detect old config setting
                    if ( $Key =~ /^(Firstname|Lastname|Email)/ ) {
                        $Key = "User" . $Key;
                        $Self->{LogObject}->Log(
                            Priority => 'error',
                            Message  => "Old config setting detected, please use the new one "
                                . "from Kernel/Config/Defaults.pm (User* has been added!).",
                        );
                    }
                    $SyncUser{$Key} = $Entry->get_value(
                        $Self->{ConfigObject}->Get( 'UserSyncLDAPMap' . $Self->{Count} )->{$Key},
                    );

                    # e. g. set utf-8 flag
                    $SyncUser{$Key} = $Self->_ConvertFrom(
                        $SyncUser{$Key},
                        $Self->{ConfigObject}->Get('DefaultCharset'),
                    );
                }
                if ( $Entry->get_value('userPassword') ) {
                    $SyncUser{Pw} = $Entry->get_value('userPassword');

                    # e. g. set utf-8 flag
                    $SyncUser{Pw} = $Self->_ConvertFrom(
                        $SyncUser{Pw},
                        $Self->{ConfigObject}->Get('DefaultCharset')
                    );
                }
            }

            # sync user
            if (%SyncUser) {
                my %UserData = $Self->{UserObject}->GetUserData( User => $Param{User} );
                if ( !%UserData ) {
                    my $UserID = $Self->{UserObject}->UserAdd(
                        UserSalutation => 'Mr/Mrs',
                        UserLogin      => $Param{User},
                        %SyncUser,
                        UserType     => 'User',
                        ValidID      => 1,
                        ChangeUserID => 1,
                    );
                    if ($UserID) {
                        $Self->{LogObject}->Log(
                            Priority => 'notice',
                            Message =>
                                "Initial data for '$Param{User}' ($UserDN) created in RDBMS.",
                        );

                        # sync initial groups
                        if ( $Self->{ConfigObject}->Get( 'UserSyncLDAPGroups' . $Self->{Count} ) ) {
                            my %Groups = $Self->{GroupObject}->GroupList();
                            for (
                                @{
                                    $Self->{ConfigObject}->Get(
                                        'UserSyncLDAPGroups' . $Self->{Count}
                                        )
                                }
                                )
                            {
                                my $GroupID = '';
                                for my $GID ( keys %Groups ) {
                                    if ( $Groups{$GID} eq $_ ) {
                                        $GroupID = $GID;
                                    }
                                }
                                if ($GroupID) {
                                    $Self->{GroupObject}->GroupMemberAdd(
                                        GID        => $GroupID,
                                        UID        => $UserID,
                                        Permission => { rw => 1, },
                                        UserID     => 1,
                                    );
                                }
                            }
                        }
                    }
                    else {
                        $Self->{LogObject}->Log(
                            Priority => 'error',
                            Message  => "Can't create user '$Param{User}' ($UserDN) in RDBMS!",
                        );
                    }
                }
                else {
                    $Self->{UserObject}->UserUpdate(
                        %UserData,
                        UserID    => $UserData{UserID},
                        UserLogin => $Param{User},
                        %SyncUser,
                        UserType     => 'User',
                        ChangeUserID => 1,
                    );
                }
            }
        }

        # sync ldap group 2 otrs group permissions
        #
        #FOR COMPATIBILITY - check parameter with typo first...
        my $UserSyncLDAPGroupsDefKey = "UserSyncLDAPGroupsDefination";
        if ( $Self->{ConfigObject}->Get( $UserSyncLDAPGroupsDefKey . $Self->{Count} ) ) {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message  => "Config: UserSyncLDAPGroupsDefination deprecated, " .
                    "use UserSyncLDAPGroupsDefinition instead.",
            );
        }
        else {
            $UserSyncLDAPGroupsDefKey = "UserSyncLDAPGroupsDefinition";
        }

        if ( $Self->{ConfigObject}->Get( $UserSyncLDAPGroupsDefKey . $Self->{Count} ) ) {
            my $Result = '';
            if ( $Self->{SearchUserDN} && $Self->{SearchUserPw} ) {
                $Result = $LDAP->bind(
                    dn       => $Self->{SearchUserDN},
                    password => $Self->{SearchUserPw},
                );
            }
            else {
                $Result = $LDAP->bind();
            }
            if ( $Result->code ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Sync bind failed! " . $Result->error,
                );

                # take down session
                $LDAP->unbind;
                $LDAP->disconnect;
                return $Param{User};
            }

            # get current user data
            my %UserData = $Self->{UserObject}->GetUserData( User => $Param{User} );

            # system permissions
            my %PermissionsEmpty = ();
            for ( @{ $Self->{ConfigObject}->Get( 'System::Permission' . $Self->{Count} ) } ) {
                $PermissionsEmpty{$_} = 0;
            }

            # remove all group permissions
            my %Groups = $Self->{GroupObject}->GroupList();
            for my $GID ( keys %Groups ) {
                $Self->{GroupObject}->GroupMemberAdd(
                    GID        => $GID,
                    UID        => $UserData{UserID},
                    Permission => {%PermissionsEmpty},
                    UserID     => 1,
                );
            }

            # group config settings
            for my $GroupDN (
                sort keys
                %{ $Self->{ConfigObject}->Get( $UserSyncLDAPGroupsDefKey . $Self->{Count} ) }
                )
            {

                # just in case for debug
                $Self->{LogObject}->Log(
                    Priority => 'notice',
                    Message  => "User: '$Param{User}' sync ldap groups $GroupDN to groups!",
                );

                # search if we're allowed to
                my $Filter = '';
                if ( $Self->{UserAttr} eq 'DN' ) {
                    $Filter = "($Self->{AccessAttr}=$UserDNQuote)";
                }
                else {
                    $Filter = "($Self->{AccessAttr}=$UserQuote)";
                }
                my $Result = $LDAP->search(
                    base   => $GroupDN,
                    filter => $Filter,
                );
                if ( $Result->code ) {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message  => "Search failed! ("
                            . $GroupDN
                            . ") filter='$Filter' "
                            . $Result->error,
                    );
                }

                # extract it
                my $Valid = '';
                for my $Entry ( $Result->all_entries ) {
                    $Valid = $Entry->dn();
                }

                # log if there is no LDAP entry
                if ( !$Valid ) {

                    # failed login note
                    $Self->{LogObject}->Log(
                        Priority => 'notice',
                        Message  => "User: $Param{User} not in "
                            . "GroupDN='$GroupDN', Filter='$Filter'! (REMOTE_ADDR: $RemoteAddr).",
                    );
                }
                else {

                    # sync groups permissions
                    my %SGroups = %{
                        $Self->{ConfigObject}->Get(
                            $UserSyncLDAPGroupsDefKey . $Self->{Count}
                            )->{$GroupDN}
                        };
                    for my $SGroup ( sort keys %SGroups ) {
                        my %Permissions = %{ $SGroups{$SGroup} };

                        # get group id
                        my $GroupID = '';
                        my %Groups  = $Self->{GroupObject}->GroupList();
                        for my $GID ( keys %Groups ) {
                            if ( $Groups{$GID} eq $SGroup ) {
                                $GroupID = $GID;
                            }
                        }
                        if ($GroupID) {

                            # just in case for debug
                            $Self->{LogObject}->Log(
                                Priority => 'notice',
                                Message =>
                                    "User: '$Param{User}' sync ldap group $GroupDN in $SGroup group!",
                            );
                            $Self->{GroupObject}->GroupMemberAdd(
                                GID        => $GroupID,
                                UID        => $UserData{UserID},
                                Permission => { %PermissionsEmpty, %Permissions },
                                UserID     => 1,
                            );
                        }
                    }
                }
            }
        }

        # sync ldap group 2 otrs role permissions
        #
        #FOR COMPATIBILITY - check parameter with typo first...
        my $UserSyncLDAPRolesDefKey = "UserSyncLDAPRolesDefination";
        if ( $Self->{ConfigObject}->Get( $UserSyncLDAPRolesDefKey . $Self->{Count} ) ) {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message  => "Config: UserSyncLDAPRolesDefination deprecated, " .
                    "use UserSyncLDAPRolesDefinition instead.",
            );
        }
        else {
            $UserSyncLDAPRolesDefKey = "UserSyncLDAPRolesDefinition";
        }

        if ( $Self->{ConfigObject}->Get( $UserSyncLDAPRolesDefKey . $Self->{Count} ) ) {
            my $Result = '';
            if ( $Self->{SearchUserDN} && $Self->{SearchUserPw} ) {
                $Result = $LDAP->bind(
                    dn       => $Self->{SearchUserDN},
                    password => $Self->{SearchUserPw},
                );
            }
            else {
                $Result = $LDAP->bind();
            }
            if ( $Result->code ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Sync bind failed! " . $Result->error,
                );

                # take down session
                $LDAP->unbind;
                $LDAP->disconnect;
                return $Param{User};
            }

            # get current user data
            my %UserData = $Self->{UserObject}->GetUserData( User => $Param{User} );

            # remove all role permissions
            my %Roles = $Self->{GroupObject}->RoleList();
            for my $RID ( keys %Roles ) {
                $Self->{GroupObject}->GroupUserRoleMemberAdd(
                    UID    => $UserData{UserID},
                    RID    => $RID,
                    Active => 0,
                    UserID => 1,
                );
            }

            # group config settings
            for my $GroupDN (
                sort
                keys %{
                    $Self->{ConfigObject}->Get( $UserSyncLDAPRolesDefKey . $Self->{Count} )
                }
                )
            {

                # just in case for debug
                $Self->{LogObject}->Log(
                    Priority => 'notice',
                    Message  => "User: '$Param{User}' sync ldap groups $GroupDN to roles!",
                );

                # search if we're allowed to
                my $Filter = '';
                if ( $Self->{UserAttr} eq 'DN' ) {
                    $Filter = "($Self->{AccessAttr}=$UserDNQuote)";
                }
                else {
                    $Filter = "($Self->{AccessAttr}=$UserQuote)";
                }
                my $Result = $LDAP->search(
                    base   => $GroupDN,
                    filter => $Filter,
                );
                if ( $Result->code ) {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message  => "Search failed! ("
                            . $GroupDN
                            . ") filter='$Filter' "
                            . $Result->error,
                    );
                }

                # extract it
                my $Valid = '';
                for my $Entry ( $Result->all_entries ) {
                    $Valid = $Entry->dn();
                }

                # log if there is no LDAP entry
                if ( !$Valid ) {

                    # failed login note
                    $Self->{LogObject}->Log(
                        Priority => 'notice',
                        Message  => "User: $Param{User} not in "
                            . "GroupDN='$GroupDN', Filter='$Filter'! (REMOTE_ADDR: $RemoteAddr).",
                    );
                }
                else {

                    # sync groups permissions
                    my %SRoles = %{
                        $Self->{ConfigObject}->Get(
                            $UserSyncLDAPRolesDefKey . $Self->{Count}
                            )->{$GroupDN}
                        };
                    for my $SRole ( sort keys %SRoles ) {

                        # get group id
                        my $RoleID = '';
                        my %Roles  = $Self->{GroupObject}->RoleList();
                        for my $RID ( keys %Roles ) {
                            if ( $Roles{$RID} eq $SRole ) {
                                $RoleID = $RID;
                            }
                        }
                        if ( $SRoles{$SRole} ) {

                            # just in case for debug
                            $Self->{LogObject}->Log(
                                Priority => 'notice',
                                Message =>
                                    "User: '$Param{User}' sync ldap group $GroupDN in $SRole role!",
                            );
                            $Self->{GroupObject}->GroupUserRoleMemberAdd(
                                UID    => $UserData{UserID},
                                RID    => $RoleID,
                                Active => 1,
                                UserID => 1,
                            );
                        }
                    }
                }
            }
        }

        # sync ldap attribute 2 otrs group permissions
        #
        #FOR COMPATIBILITY - check parameter with typo first...
        my $UserSyncLDAPAttrGroupsDefKey = "UserSyncLDAPAttibuteGroupsDefination";
        if ( $Self->{ConfigObject}->Get( $UserSyncLDAPAttrGroupsDefKey . $Self->{Count} ) ) {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message  => "Config: UserSyncLDAPAttibuteGroupsDefination deprecated, " .
                    "use UserSyncLDAPAttributeGroupsDefinition instead.",
            );
        }
        else {
            $UserSyncLDAPAttrGroupsDefKey = "UserSyncLDAPAttributeGroupsDefinition";
        }

        if ( $Self->{ConfigObject}->Get( $UserSyncLDAPAttrGroupsDefKey . $Self->{Count} ) ) {
            my $Result = '';
            if ( $Self->{SearchUserDN} && $Self->{SearchUserPw} ) {
                $Result = $LDAP->bind(
                    dn       => $Self->{SearchUserDN},
                    password => $Self->{SearchUserPw},
                );
            }
            else {
                $Result = $LDAP->bind();
            }
            if ( $Result->code ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Sync bind failed! " . $Result->error,
                );

                # take down session
                $LDAP->unbind;
                $LDAP->disconnect;
                return $Param{User};
            }

            # get current user data
            my %UserData = $Self->{UserObject}->GetUserData( User => $Param{User} );

            # system permissions
            my %PermissionsEmpty = ();
            for ( @{ $Self->{ConfigObject}->Get( 'System::Permission' . $Self->{Count} ) } ) {
                $PermissionsEmpty{$_} = 0;
            }

            # remove all group permissions
            my %SystemGroups = $Self->{GroupObject}->GroupList();
            for my $GID ( keys %SystemGroups ) {
                $Self->{GroupObject}->GroupMemberAdd(
                    GID        => $GID,
                    UID        => $UserData{UserID},
                    Permission => {%PermissionsEmpty},
                    UserID     => 1,
                );
            }

            # build filter
            my $Filter = "($Self->{UID}=$UserQuote)";

            # perform search
            $Result = $LDAP->search(
                base   => $Self->{BaseDN},
                filter => $Filter,
            );
            if ( $Result->code ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Search failed! ("
                        . $Self->{BaseDN}
                        . ") filter='$Filter' "
                        . $Result->error,
                );
            }
            my %SyncConfig = %{
                $Self->{ConfigObject}->Get(
                    $UserSyncLDAPAttrGroupsDefKey . $Self->{Count}
                    )
                };
            for my $Attribute ( keys %SyncConfig ) {
                my %AttributeValues = %{ $SyncConfig{$Attribute} };
                for my $AttributeValue ( keys %AttributeValues ) {
                    for my $Entry ( $Result->all_entries ) {

                        # Check all values of group attribute if needed value exists.
                        # If yes, add all groups to the user.
                        my $Sync       = 0;
                        my @Attributes = $Entry->get_value($Attribute);
                        for my $Attribute (@Attributes) {
                            if ( $Attribute =~ /^\Q$AttributeValue\E$/i ) {
                                $Sync = 1;
                                last;
                            }
                        }
                        if ($Sync) {
                            my %Groups = %{ $AttributeValues{$AttributeValue} };
                            for my $Group ( keys %Groups ) {

                                # get group id
                                my $GroupID = 0;
                                for ( keys %SystemGroups ) {
                                    if ( $SystemGroups{$_} eq $Group ) {
                                        $GroupID = $_;
                                        last;
                                    }
                                }
                                if ($GroupID) {

                                    # just in case for debug
                                    $Self->{LogObject}->Log(
                                        Priority => 'notice',
                                        Message =>
                                            "User: '$Param{User}' sync ldap attribute $Attribute=$AttributeValue in $Group group!",
                                    );
                                    $Self->{GroupObject}->GroupMemberAdd(
                                        GID        => $GroupID,
                                        UID        => $UserData{UserID},
                                        Permission => { %PermissionsEmpty, %{ $Groups{$Group} } },
                                        UserID     => 1,
                                    );
                                }
                            }
                        }
                    }
                }
            }
        }

        # sync ldap attribute 2 otrs role permissions
        #
        #FOR COMPATIBILITY - check parameter with typo first...
        my $UserSyncLDAPAttrRolesDefKey = "UserSyncLDAPAttibuteRolesDefination";
        if ( $Self->{ConfigObject}->Get( $UserSyncLDAPAttrRolesDefKey . $Self->{Count} ) ) {
            $Self->{LogObject}->Log(
                Priority => 'notice',
                Message  => "Config: UserSyncLDAPAttibuteRolesDefination deprecated, " .
                    "use UserSyncLDAPAttributeRolesDefinition instead.",
            );
        }
        else {
            $UserSyncLDAPAttrRolesDefKey = "UserSyncLDAPAttributeRolesDefinition";
        }

        if ( $Self->{ConfigObject}->Get( $UserSyncLDAPAttrRolesDefKey . $Self->{Count} ) ) {
            my $Result = '';
            if ( $Self->{SearchUserDN} && $Self->{SearchUserPw} ) {
                $Result = $LDAP->bind(
                    dn       => $Self->{SearchUserDN},
                    password => $Self->{SearchUserPw},
                );
            }
            else {
                $Result = $LDAP->bind();
            }
            if ( $Result->code ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Sync bind failed! " . $Result->error,
                );

                # take down session
                $LDAP->unbind;
                $LDAP->disconnect;
                return $Param{User};
            }

            # get current user data
            my %UserData = $Self->{UserObject}->GetUserData( User => $Param{User} );

            # remove all role permissions
            my %SystemRoles = $Self->{GroupObject}->RoleList();
            for my $RID ( keys %SystemRoles ) {
                $Self->{GroupObject}->GroupUserRoleMemberAdd(
                    UID    => $UserData{UserID},
                    RID    => $RID,
                    Active => 0,
                    UserID => 1,
                );
            }

            # build filter
            my $Filter = "($Self->{UID}=$UserQuote)";

            # perform search
            $Result = $LDAP->search(
                base   => $Self->{BaseDN},
                filter => $Filter,
            );
            if ( $Result->code ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message  => "Search failed! ("
                        . $Self->{BaseDN}
                        . ") filter='$Filter' "
                        . $Result->error,
                );
            }
            my %SyncConfig = %{
                $Self->{ConfigObject}->Get(
                    $UserSyncLDAPAttrRolesDefKey . $Self->{Count}
                    )
                };
            for my $Attribute ( keys %SyncConfig ) {
                my %AttributeValues = %{ $SyncConfig{$Attribute} };
                for my $AttributeValue ( keys %AttributeValues ) {
                    for my $Entry ( $Result->all_entries ) {

                        # Check all values of rolle attribute if needed value exists.
                        # If yes, add all roles to the user.
                        my $Sync       = 0;
                        my @Attributes = $Entry->get_value($Attribute);
                        for my $Attribute (@Attributes) {
                            if ( $Attribute =~ /^\Q$AttributeValue\E$/i ) {
                                $Sync = 1;
                                last;
                            }
                        }
                        if ($Sync) {
                            my %Roles = %{ $AttributeValues{$AttributeValue} };
                            for my $Role ( keys %Roles ) {

                                # get role id
                                my $RoleID = 0;
                                for ( keys %SystemRoles ) {
                                    if ( $SystemRoles{$_} eq $Role ) {
                                        $RoleID = $_;
                                        last;
                                    }
                                }
                                if ( $RoleID && $Roles{$Role} eq 1 ) {

                                    # just in case for debug
                                    $Self->{LogObject}->Log(
                                        Priority => 'notice',
                                        Message =>
                                            "User: '$Param{User}' sync ldap attribute $Attribute=$AttributeValue in $Role role!",
                                    );
                                    $Self->{GroupObject}->GroupUserRoleMemberAdd(
                                        UID    => $UserData{UserID},
                                        RID    => $RoleID,
                                        Active => 1,
                                        UserID => 1,
                                    );
                                }
                            }
                        }
                    }
                }
            }
        }

        # take down session
        $LDAP->unbind;
        $LDAP->disconnect;
        return $Param{User};
    }
}

sub _ConvertTo {
    my ( $Self, $Text, $Charset ) = @_;

    if ( !$Charset || !$Self->{DestCharset} ) {
        $Self->{EncodeObject}->Encode( \$Text );
        return $Text;
    }
    if ( !defined($Text) ) {
        return;
    }
    else {
        return $Self->{EncodeObject}->Convert(
            Text => $Text,
            From => $Self->{DestCharset},
            To   => $Charset,
        );
    }
}

sub _ConvertFrom {
    my ( $Self, $Text, $Charset ) = @_;

    if ( !$Charset || !$Self->{DestCharset} ) {
        $Self->{EncodeObject}->Encode( \$Text );
        return $Text;
    }
    if ( !defined($Text) ) {
        return;
    }
    else {
        return $Self->{EncodeObject}->Convert(
            Text => $Text,
            From => $Self->{DestCharset},
            To   => $Charset,
        );
    }
}

1;
