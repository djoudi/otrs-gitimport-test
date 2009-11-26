# --
# Kernel/Modules/AdminRoleGroup.pm - to add/update/delete role <-> groups
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: AdminRoleGroup.pm,v 1.24 2009-11-26 08:02:17 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AdminRoleGroup;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.24 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(ParamObject DBObject QueueObject LayoutObject ConfigObject LogObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }
    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $ID = $Self->{ParamObject}->GetParam( Param => 'ID' ) || '';

    # user <-> group 1:n
    if ( $Self->{Subaction} eq 'Role' ) {
        my $Output .= $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();

        # get user data
        my %Role = $Self->{GroupObject}->RoleGet( ID => $ID );

        # get group data
        my %GroupData = $Self->{GroupObject}->GroupList( Valid => 1 );
        my %Types = ();
        for my $Type ( @{ $Self->{ConfigObject}->Get('System::Permission') } ) {
            my %Data = $Self->{GroupObject}->GroupRoleMemberList(
                RoleID => $ID,
                Type   => $Type,
                Result => 'HASH',
            );
            $Types{$Type} = \%Data;
        }
        $Output .= $Self->MaskAdminUserGroupChangeForm(
            Data => \%GroupData,
            %Types,
            ID   => $Role{ID},
            Name => $Role{Name},
            Type => 'Role',
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # group <-> user n:1
    elsif ( $Self->{Subaction} eq 'Group' ) {
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();

        # get role data
        my %RoleData = $Self->{GroupObject}->RoleList( Valid => 1 );

        # get permission list users
        my %Types = ();
        for my $Type ( @{ $Self->{ConfigObject}->Get('System::Permission') } ) {
            my %Data = $Self->{GroupObject}->GroupRoleMemberList(
                GroupID => $ID,
                Type    => $Type,
                Result  => 'HASH',
            );
            $Types{$Type} = \%Data;
        }

        # get group data
        my %GroupData = $Self->{GroupObject}->GroupGet( ID => $ID );
        $Output .= $Self->MaskAdminUserGroupChangeForm(
            %Types,
            Data => \%RoleData,
            ID   => $GroupData{ID},
            Name => $GroupData{Name},
            Type => 'Group',
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # add user to groups
    elsif ( $Self->{Subaction} eq 'ChangeGroup' ) {

        # get new groups
        my %Permissions = ();
        for ( @{ $Self->{ConfigObject}->Get('System::Permission') } ) {
            my @IDs = $Self->{ParamObject}->GetArray( Param => $_ );
            $Permissions{$_} = \@IDs;
        }

        # get group data
        my %RoleData = $Self->{GroupObject}->RoleList( Valid => 1 );
        my %NewPermission = ();
        for ( keys %RoleData ) {
            for my $Permission ( keys %Permissions ) {
                $NewPermission{$Permission} = 0;
                my @Array = @{ $Permissions{$Permission} };
                for my $ID (@Array) {
                    if ( $_ == $ID ) {
                        $NewPermission{$Permission} = 1;
                    }
                }
            }
            $Self->{GroupObject}->GroupRoleMemberAdd(
                RID        => $_,
                GID        => $ID,
                Permission => {%NewPermission},
                UserID     => $Self->{UserID},
            );
        }
        return $Self->{LayoutObject}->Redirect( OP => "Action=AdminRoleGroup;Change=Group;ID=$ID" );
    }

    # groups to user
    elsif ( $Self->{Subaction} eq 'ChangeRole' ) {

        # get new groups
        my %Permissions = ();
        for ( @{ $Self->{ConfigObject}->Get('System::Permission') } ) {
            my @IDs = $Self->{ParamObject}->GetArray( Param => $_ );
            $Permissions{$_} = \@IDs;
        }

        # get group data
        my %GroupData = $Self->{GroupObject}->GroupList( Valid => 1 );
        my %NewPermission = ();
        for ( keys %GroupData ) {
            for my $Permission ( keys %Permissions ) {
                $NewPermission{$Permission} = 0;
                my @Array = @{ $Permissions{$Permission} };
                for my $ID (@Array) {
                    if ( $_ == $ID ) {
                        $NewPermission{$Permission} = 1;
                    }
                }
            }
            $Self->{GroupObject}->GroupRoleMemberAdd(
                RID        => $ID,
                GID        => $_,
                Permission => {%NewPermission},
                UserID     => $Self->{UserID},
            );
        }
        return $Self->{LayoutObject}->Redirect( OP => "Action=AdminRoleGroup;Change=Role;ID=$ID" );
    }

    # else ! print form
    else {
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();

        # get user data
        my %RoleData = $Self->{GroupObject}->RoleList( Valid => 1 );

        # get group data
        my %GroupData = $Self->{GroupObject}->GroupList( Valid => 1 );
        $Output .= $Self->MaskAdminUserGroupForm(
            GroupData => \%GroupData,
            UserData  => \%RoleData,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}

sub MaskAdminUserGroupChangeForm {
    my ( $Self, %Param ) = @_;

    my %Data     = %{ $Param{Data} };
    my $BaseLink = $Self->{LayoutObject}->{Baselink};
    my $Type     = $Param{Type} || 'Role';
    my $NeType   = 'Group';
    $NeType = 'Role' if ( $Type eq 'Group' );
    $Param{Name} = $Self->{LayoutObject}->Ascii2Html(
        Text                => $Param{Name},
        HTMLQuote           => 1,
        LanguageTranslation => 0,
    ) || '';
    $Param{OptionStrg0}
        .= "<b>\$Text{\"$Type\"}:</b> <a href=\"$BaseLink"
        . "Action=Admin$Type;Subaction=Change;ID=$Param{ID}\">"
        . "$Param{Name}</a> (id=$Param{ID})<br/>";
    $Param{OptionStrg0} .= '<input type="hidden" name="ID" value="' . $Param{ID} . '" /><br/>';

    $Param{OptionStrg0} .= "<br/>\n";
    $Param{OptionStrg0} .= "<table cellspacing=\"0\" cellpadding=\"4\">\n";
    $Param{OptionStrg0} .= "<tr valign=\"top\"><th align=\"left\">\$Text{\"$NeType\"}</th>";
    for ( @{ $Self->{ConfigObject}->Get('System::Permission') } ) {
        $Param{OptionStrg0} .= "<th>$_<br/>";
        if ( $_ eq 'rw' ) {
            $Param{OptionStrg0} .= " | ";
        }
        $Param{OptionStrg0}
            .= "<input type=\"checkbox\" name=\"$_\" value=\"\" onclick=\"select_items('$_');\" /></th>";
    }
    $Param{OptionStrg0} .= "</tr>\n";
    my $CssClass = 'searchactive';
    for ( sort { uc( $Data{$a} ) cmp uc( $Data{$b} ) } keys %Data ) {

        # set output class
        if ( $CssClass && $CssClass eq 'searchactive' ) {
            $CssClass = 'searchpassive';
        }
        else {
            $CssClass = 'searchactive';
        }
        $Param{Data}->{$_} = $Self->{LayoutObject}->Ascii2Html(
            Text                => $Param{Data}->{$_},
            HTMLQuote           => 1,
            LanguageTranslation => 0,
        ) || '';
        $Param{OptionStrg0} .= "<tr class=\"$CssClass\"><td>";
        $Param{OptionStrg0} .= "<a href=\"$BaseLink"
            . "Action=Admin$NeType;Subaction=Change;ID=$_\">$Param{Data}->{$_}</a></td>";
        for my $Type ( @{ $Self->{ConfigObject}->Get('System::Permission') } ) {
            my $Selected = '';
            if ( $Param{$Type}->{$_} ) {
                $Selected = ' checked';
            }
            $Param{OptionStrg0} .= '<td align="center">';
            if ( $Type eq 'rw' ) {
                $Param{OptionStrg0} .= " | ";
            }
            $Param{OptionStrg0}
                .= '<input type="checkbox" name="'
                . $Type
                . '" value="'
                . $_
                . "\"$Selected> </td>";
        }
        $Param{OptionStrg0} .= '</tr>' . "\n";
    }
    $Param{OptionStrg0} .= "</table>\n";

    return $Self->{LayoutObject}->Output(
        TemplateFile => 'AdminRoleGroupChangeForm',
        Data         => \%Param,
    );
}

sub MaskAdminUserGroupForm {
    my ( $Self, %Param ) = @_;

    my $UserData     = $Param{UserData};
    my %UserDataTmp  = %$UserData;
    my $GroupData    = $Param{GroupData};
    my %GroupDataTmp = %$GroupData;
    my $BaseLink     = $Self->{LayoutObject}->{Baselink} . "Action=AdminRoleGroup&";
    for ( sort { uc( $UserDataTmp{$a} ) cmp uc( $UserDataTmp{$b} ) } keys %UserDataTmp ) {
        $UserDataTmp{$_} = $Self->{LayoutObject}->Ascii2Html(
            Text                => $UserDataTmp{$_},
            HTMLQuote           => 1,
            LanguageTranslation => 0,
        ) || '';
        $Param{RoleStrg}
            .= "<a href=\"$BaseLink" . "Subaction=Role;ID=$_\">$UserDataTmp{$_}</a><br/>";
    }
    for ( sort { uc( $GroupDataTmp{$a} ) cmp uc( $GroupDataTmp{$b} ) } keys %GroupDataTmp ) {
        $GroupDataTmp{$_} = $Self->{LayoutObject}->Ascii2Html(
            Text                => $GroupDataTmp{$_},
            HTMLQuote           => 1,
            LanguageTranslation => 0,
        ) || '';
        $Param{GroupStrg}
            .= "<a href=\"$BaseLink" . "Subaction=Group;ID=$_\">$GroupDataTmp{$_}</a><br/>";
    }

    # return output
    return $Self->{LayoutObject}->Output(
        TemplateFile => 'AdminRoleGroupForm',
        Data         => \%Param,
    );
}

1;
