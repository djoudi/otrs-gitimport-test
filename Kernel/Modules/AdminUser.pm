# --
# Kernel/Modules/AdminUser.pm - to add/update/delete user and preferences
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AdminUser.pm,v 1.23 2005-02-16 16:49:13 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AdminUser;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.23 $ ';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # allocate new hash for objects
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check all needed objects
    foreach (qw(ParamObject DBObject LayoutObject ConfigObject LogObject UserObject)) {
        die "Got no $_!" if (!$Self->{$_});
    }

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    $Param{NextScreen} = 'AdminUser';
    # --
    # get user data 2 form
    # --
    if ($Self->{Subaction} eq 'Change') {
        my $UserID = $Self->{ParamObject}->GetParam(Param => 'ID') || '';
        # get user data
        my %UserData = $Self->{UserObject}->GetUserData(UserID => $UserID);
        my $Output = $Self->{LayoutObject}->Header(Area => 'Admin', Title => 'User');
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->AdminUserForm(UserData => \%UserData);
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
    # --
    # update action
    # --
    elsif ($Self->{Subaction} eq 'ChangeAction') {
        # get params
        my %GetParam;
        foreach (qw(ID Salutation Login Firstname Lastname Email ValidID)) {
            $GetParam{$_} = $Self->{ParamObject}->GetParam(Param => $_) || '';
        }
        $GetParam{Preferences} = $Self->{ParamObject}->GetParam(Param => 'Preferences') || '';
        # update user
        if ($Self->{UserObject}->UserUpdate(%GetParam, UserID => $Self->{UserID})) {
            my %Preferences = %{$Self->{ConfigObject}->Get('PreferencesGroups')};
            foreach my $Group (keys %Preferences) {
                if ($Group eq 'Password') {
                    next;
                }
                # get user data
                my %UserData = $Self->{UserObject}->GetUserData(UserID => $GetParam{ID});
                my $Module = $Preferences{$Group}->{Module};
                if ($Self->{MainObject}->Require($Module)) {
                    my $Object = $Module->new(
                        %{$Self},
                        Debug => $Self->{Debug},
                    );
                    my @Params = $Object->Param(%{$Preferences{$Group}}, UserData => \%UserData);
                    if (@Params) {
                        my %GetParam = ();
                        foreach my $ParamItem (@Params) {
                            my @Array = $Self->{ParamObject}->GetArray(Param => $ParamItem->{Name});
                            $GetParam{$ParamItem->{Name}} = \@Array;
                        }
                        my $Message = $Object->Run(GetParam => \%GetParam, UserData => \%UserData);
                    }
#                    return $Self->{LayoutObject}->Redirect(
#                        OP => "Action=AgentPreferences&What=$Message",
#                    );
                  }
                  else {
                      return $Self->{LayoutObject}->FatalError();
                  }
              }
#                if ($Type eq 'Upload' && $PrefKey) {
#                    my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
#                        Param => "GenericTopic::$PrefKey",
#                        Source => 'String',
#                    );
#                    if ($UploadStuff{Content}) {
#                      $Self->{UserObject}->SetPreferences(
#                        UserID => $GetParam{ID},
#                        Key => $PrefKey,
#                        Value => $UploadStuff{Content},
#                      );
#                      $Self->{UserObject}->SetPreferences(
#                        UserID => $GetParam{ID},
#                        Key => $PrefKey."::Filename",
#                        Value => $UploadStuff{Filename},
#                      );
#                      $Self->{UserObject}->SetPreferences(
#                        UserID => $GetParam{ID},
#                        Key => $PrefKey."::ContentType",
#                        Value => $UploadStuff{ContentType},
#                      );
#                    }
            # redirect
            return $Self->{LayoutObject}->Redirect(OP => "Action=$Param{NextScreen}");
        }
        else {
            return $Self->{LayoutObject}->ErrorScreen();
        }
    }
    # --
    # add new user
    # --
    elsif ($Self->{Subaction} eq 'AddAction') {
        # get params
        my %GetParam;
        foreach (qw(ID Salutation Login Firstname Lastname Email ValidID)) {
            $GetParam{$_} = $Self->{ParamObject}->GetParam(Param => $_) || '';
        }
        $GetParam{Preferences} = $Self->{ParamObject}->GetParam(Param => 'Preferences') || '';
        # add user
        if (my $UserID = $Self->{UserObject}->UserAdd(%GetParam, UserID => $Self->{UserID})) {
            # update preferences
            my %Preferences = %{$Self->{ConfigObject}->Get('PreferencesGroups')};
            foreach my $Group (keys %Preferences) {
                if ($Group eq 'Password') {
                    next;
                }
                # get user data
                my %UserData = $Self->{UserObject}->GetUserData(UserID => $GetParam{ID});
                my $Module = $Preferences{$Group}->{Module};
                if ($Self->{MainObject}->Require($Module)) {
                    my $Object = $Module->new(
                        %{$Self},
                        Debug => $Self->{Debug},
                    );
                    my @Params = $Object->Param(%{$Preferences{$Group}}, UserData => \%UserData);
                    if (@Params) {
                        my %GetParam = ();
                        foreach my $ParamItem (@Params) {
                            my @Array = $Self->{ParamObject}->GetArray(Param => $ParamItem->{Name});
                            $GetParam{$ParamItem->{Name}} = \@Array;
                        }
                        $Object->Run(GetParam => \%GetParam, UserData => \%UserData);
                    }
#                    return $Self->{LayoutObject}->Redirect(
#                        OP => "Action=AgentPreferences&What=$Message",
#                    );
                }
                else {
                    return $Self->{LayoutObject}->FatalError();
                }
            }
            # redirect
            return $Self->{LayoutObject}->Redirect(
                OP => "Action=AdminUserGroup&Subaction=User&ID=$UserID",
            );
        }
        else {
            return $Self->{LayoutObject}->FatalError();
        }
    }
    # --
    # else ! print form
    # --
    else {
        my $Output = $Self->{LayoutObject}->Header(Area => 'Admin', Title => 'User');
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->AdminUserForm(UserData => {});
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}
# --
sub AdminUserForm {
    my $Self = shift;
    my %Param = @_;

    # build ValidID string
    $Param{'ValidOption'} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => {
          $Self->{DBObject}->GetTableData(
            What => 'id, name',
            Table => 'valid',
            Valid => 0,
          )
        },
        Name => 'ValidID',
        SelectedID => $Param{ValidID},
    );

    $Param{UserOption} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => {
          $Self->{DBObject}->GetTableData(
            What => "$Self->{ConfigObject}->{DatabaseUserTableUserID}, ".
                    " $Self->{ConfigObject}->{DatabaseUserTableUser}, ".
                    "$Self->{ConfigObject}->{DatabaseUserTableUserID}",
            Valid => 0,
            Clamp => 1,
            Table => $Self->{ConfigObject}->{DatabaseUserTable},
          )
        },
        Size => 15,
        Name => 'ID',
        SelectedID => $Param{ID},
    );

    my @Groups = @{$Self->{ConfigObject}->Get('PreferencesView')};
    foreach my $Colum (@Groups) {
        my %Data = ();
        my %Preferences = %{$Self->{ConfigObject}->Get('PreferencesGroups')};
        foreach my $Group (keys %Preferences) {
            if ($Preferences{$Group}->{Colum} eq $Colum) {
                if ($Data{$Preferences{$Group}->{Prio}}) {
                    foreach (1..151) {
                        $Preferences{$Group}->{Prio}++;
                        if (!$Data{$Preferences{$Group}->{Prio}}) {
                            $Data{$Preferences{$Group}->{Prio}} = $Group;
                            last;
                        }
                    }
                }
                $Data{$Preferences{$Group}->{Prio}} = $Group;
            }
        }
        # sort
        foreach my $Key (keys %Data) {
            $Data{sprintf("%07d", $Key)} = $Data{$Key};
            delete $Data{$Key};
        }
        # show each preferences setting
        foreach my $Prio (sort keys %Data) {
            my $Group = $Data{$Prio};
            if (!$Self->{ConfigObject}->{PreferencesGroups}->{$Group}) {
                next;
            }
            my %Preference = %{$Self->{ConfigObject}->{PreferencesGroups}->{$Group}};
            if (!$Preference{Activ} || $Group eq 'Password') {
                next;
            }
            my $Module = $Preference{Module} || 'Kernel::Output::HTML::PreferencesGeneric';
            # load module
            if ($Self->{MainObject}->Require($Module)) {
                my $Object = $Module->new(
                    %{$Self},
                    Debug => $Self->{Debug},
                );
                my @Params = $Object->Param(%Preference, UserData => $Param{UserData});
                if (@Params) {
                    foreach my $ParamItem (@Params) {
                        $Self->{LayoutObject}->Block(
                            Name => 'Item',
                            Data => { %Param, },
                        );
                        if (ref($ParamItem->{Data}) eq 'HASH') {
                            $ParamItem->{'Option'} = $Self->{LayoutObject}->OptionStrgHashRef(
                                %{$ParamItem},
                            );
                        }
                        $Self->{LayoutObject}->Block(
                            Name => $ParamItem->{Block} || 'Option',
                            Data => {
                                Group => $Group,
                                %{$ParamItem},
                            },
                        );
                    }
                }
            }
            else {
                return $Self->{LayoutObject}->FatalError();
            }
        }
    }

    return $Self->{LayoutObject}->Output(TemplateFile => 'AdminUserForm', Data => {%Param, %{$Param{UserData}}});
}
# --

1;
