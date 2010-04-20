# --
# Kernel/Modules/AdminUser.pm - to add/update/delete user and preferences
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AdminUser.pm,v 1.62 2010-04-20 23:13:57 dz Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AdminUser;

use strict;
use warnings;

use Kernel::System::Valid;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.62 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(ParamObject DBObject LayoutObject ConfigObject LogObject UserObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }
    $Self->{ValidObject} = Kernel::System::Valid->new(%Param);

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $Search = $Self->{ParamObject}->GetParam( Param => 'Search' );

    # ------------------------------------------------------------ #
    #  switch to user
    # ------------------------------------------------------------ #
    if (
        $Self->{Subaction} eq 'Switch'
        && $Self->{ConfigObject}->Get('SwitchToUser')
        )
    {
        my $UserID = $Self->{ParamObject}->GetParam( Param => 'UserID' ) || '';
        my %UserData = $Self->{UserObject}->GetUserData(
            UserID        => $UserID,
            NoOutOfOffice => 1,
        );

        # get groups rw
        my %GroupData = $Self->{GroupObject}->GroupMemberList(
            Result => 'HASH',
            Type   => 'rw',
            UserID => $UserData{UserID},
        );
        for ( keys %GroupData ) {
            $UserData{"UserIsGroup[$GroupData{$_}]"} = 'Yes';
        }

        # get groups ro
        %GroupData = $Self->{GroupObject}->GroupMemberList(
            Result => 'HASH',
            Type   => 'ro',
            UserID => $UserData{UserID},
        );
        for ( keys %GroupData ) {
            $UserData{"UserIsGroupRo[$GroupData{$_}]"} = 'Yes';
        }
        my $NewSessionID = $Self->{SessionObject}->CreateSessionID(
            _UserLogin => $UserData{UserLogin},
            _UserPw    => 'lal',
            %UserData,
            UserLastRequest => $Self->{TimeObject}->SystemTime(),
            UserType        => 'User',
        );

        # create a new LayoutObject with SessionIDCookie
        my $Expires = '+' . $Self->{ConfigObject}->Get('SessionMaxTime') . 's';
        if ( !$Self->{ConfigObject}->Get('SessionUseCookieAfterBrowserClose') ) {
            $Expires = '';
        }
        my $LayoutObject = Kernel::Output::HTML::Layout->new(
            %{$Self},
            SetCookies => {
                SessionIDCookie => $Self->{ParamObject}->SetCookie(
                    Key     => $Self->{ConfigObject}->Get('SessionName'),
                    Value   => $NewSessionID,
                    Expires => $Expires,
                ),
            },
            SessionID   => $NewSessionID,
            SessionName => $Self->{ConfigObject}->Get('SessionName'),
        );

        # log event
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message  => "Switched to User ($Self->{UserLogin} -=> $UserData{UserLogin})",
        );

        # redirect with new session id
        return $LayoutObject->Redirect( OP => '' );
    }

    # ------------------------------------------------------------ #
    # change
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'Change' ) {
        my $UserID
            = $Self->{ParamObject}->GetParam( Param => 'UserID' )
            || $Self->{ParamObject}->GetParam( Param => 'ID' )
            || '';
        my %UserData = $Self->{UserObject}->GetUserData(
            UserID        => $UserID,
            NoOutOfOffice => 1,
        );
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Self->_Edit(
            Action => 'Change',
            Search => $Search,
            %UserData,
        );
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminUser',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # ------------------------------------------------------------ #
    # change action
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'ChangeAction' ) {
        my $Note = '';
        my %GetParam;
        for (
            qw(UserID UserTitle UserLogin UserFirstname UserLastname UserEmail UserPw ValidID Search)
            )
        {
            $GetParam{$_} = $Self->{ParamObject}->GetParam( Param => $_ ) || '';
        }
        $GetParam{Preferences} = $Self->{ParamObject}->GetParam( Param => 'Preferences' ) || '';

        # update user
        if ( $Self->{UserObject}->UserUpdate( %GetParam, ChangeUserID => $Self->{UserID} ) ) {
            my %Preferences = %{ $Self->{ConfigObject}->Get('PreferencesGroups') };
            for my $Group ( keys %Preferences ) {
                next if $Group eq 'Password';

                # get user data
                my %UserData = $Self->{UserObject}->GetUserData(
                    UserID        => $GetParam{UserID},
                    NoOutOfOffice => 1,
                );
                my $Module = $Preferences{$Group}->{Module};
                if ( !$Self->{MainObject}->Require($Module) ) {
                    return $Self->{LayoutObject}->FatalError();
                }

                my $Object = $Module->new(
                    %{$Self},
                    ConfigItem => $Preferences{$Group},
                    Debug      => $Self->{Debug},
                );
                my @Params
                    = $Object->Param( %{ $Preferences{$Group} }, UserData => \%UserData );
                if (@Params) {
                    my %GetParam = ();
                    for my $ParamItem (@Params) {
                        my @Array
                            = $Self->{ParamObject}->GetArray( Param => $ParamItem->{Name} );
                        $GetParam{ $ParamItem->{Name} } = \@Array;
                    }
                    if ( !$Object->Run( GetParam => \%GetParam, UserData => \%UserData ) ) {
                        $Note .= $Self->{LayoutObject}->Notify( Info => $Object->Error() );
                    }
                }
            }

            if ( !$Note ) {
                $Self->_Overview( Search => $Search, );
                my $Output = $Self->{LayoutObject}->Header();
                $Output .= $Self->{LayoutObject}->NavigationBar();
                $Output .= $Self->{LayoutObject}->Notify( Info => 'Agent updated!' );
                $Output .= $Self->{LayoutObject}->Output(
                    TemplateFile => 'AdminUser',
                    Data         => \%Param,
                );
                $Output .= $Self->{LayoutObject}->Footer();
                return $Output;
            }
        }
        else {
            my $Output = $Self->{LayoutObject}->Header();
            $Output .= $Self->{LayoutObject}->NavigationBar();
            $Output .= $Self->{LayoutObject}->Notify( Priority => 'Error' ) . $Note;
            $Self->_Edit(
                Action => 'Change',
                Search => $Search,
                %GetParam,
            );
            $Output .= $Self->{LayoutObject}->Output(
                TemplateFile => 'AdminUser',
                Data         => \%Param,
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }

    }

    # ------------------------------------------------------------ #
    # add
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'Add' ) {
        my %GetParam = ();

        $GetParam{UserLogin} = $Self->{ParamObject}->GetParam( Param => 'UserLogin' );

        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Self->_Edit(
            Action => 'Add',
            Search => $Search,
            %GetParam,
        );
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminUser',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # ------------------------------------------------------------ #
    # add action
    # ------------------------------------------------------------ #
    elsif ( $Self->{Subaction} eq 'AddAction' ) {
        my $Note = '';
        my %GetParam;
        for (
            qw(UserTitle UserLogin UserFirstname UserLastname UserEmail UserPw ValidID Search)
            )
        {
            $GetParam{$_} = $Self->{ParamObject}->GetParam( Param => $_ ) || '';
        }
        $GetParam{Preferences} = $Self->{ParamObject}->GetParam( Param => 'Preferences' ) || '';

        # add user
        if (
            my $UserID
            = $Self->{UserObject}->UserAdd( %GetParam, ChangeUserID => $Self->{UserID} )
            )
        {

            # update preferences
            my %Preferences = %{ $Self->{ConfigObject}->Get('PreferencesGroups') };
            for my $Group ( keys %Preferences ) {
                next if $Group eq 'Password';

                # get user data
                my %UserData = $Self->{UserObject}->GetUserData(
                    UserID        => $UserID,
                    NoOutOfOffice => 1,
                );
                my $Module = $Preferences{$Group}->{Module};
                if ( $Self->{MainObject}->Require($Module) ) {
                    my $Object = $Module->new(
                        %{$Self},
                        ConfigItem => $Preferences{$Group},
                        Debug      => $Self->{Debug},
                    );
                    my @Params = $Object->Param( UserData => \%UserData );

                    if (@Params) {
                        my %GetParam = ();
                        PARAMITEM:
                        for my $ParamItem (@Params) {
                            next PARAMITEM if !$ParamItem->{Name};
                            my @Array
                                = $Self->{ParamObject}->GetArray( Param => $ParamItem->{Name} );

                            $GetParam{ $ParamItem->{Name} } = \@Array;
                        }
                        if ( !$Object->Run( GetParam => \%GetParam, UserData => \%UserData ) ) {
                            $Note .= $Self->{LayoutObject}->Notify( Info => $Object->Error() );
                        }
                    }
                }
                else {
                    return $Self->{LayoutObject}->FatalError();
                }
            }

            # redirect
            if (
                !$Self->{ConfigObject}->Get('Frontend::Module')->{AdminUserGroup}
                && $Self->{ConfigObject}->Get('Frontend::Module')->{AdminRoleUser}
                )
            {
                return $Self->{LayoutObject}->Redirect(
                    OP => "Action=AdminRoleUser;Subaction=User;ID=$UserID",
                );
            }
            if ( $Self->{ConfigObject}->Get('Frontend::Module')->{AdminUserGroup} ) {
                return $Self->{LayoutObject}->Redirect(
                    OP => "Action=AdminUserGroup;Subaction=User;ID=$UserID",
                );
            }
            else {
                return $Self->{LayoutObject}->Redirect( OP => 'Action=AdminUser', );
            }
        }
        else {
            my $Output = $Self->{LayoutObject}->Header();
            $Output .= $Self->{LayoutObject}->NavigationBar();
            $Output .= $Self->{LayoutObject}->Notify( Priority => 'Error' ) . $Note;
            $Self->_Edit(
                Action => 'Add',
                Search => $Search,
                %GetParam,
            );
            $Output .= $Self->{LayoutObject}->Output(
                TemplateFile => 'AdminUser',
                Data         => \%Param,
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
    }

    # ------------------------------------------------------------ #
    # overview
    # ------------------------------------------------------------ #
    else {
        $Self->_Overview( Search => $Search, );
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminUser',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}

sub _Edit {
    my ( $Self, %Param ) = @_;

    $Self->{LayoutObject}->Block(
        Name => 'Overview',
        Data => \%Param,
    );
    $Self->{LayoutObject}->Block( Name => 'ActionList' );
    $Self->{LayoutObject}->Block( Name => 'ActionOverview' );

    # get valid list
    my %ValidList        = $Self->{ValidObject}->ValidList();
    my %ValidListReverse = reverse %ValidList;

    $Param{ValidOption} = $Self->{LayoutObject}->BuildSelection(
        Data       => \%ValidList,
        Name       => 'ValidID',
        SelectedID => $Param{ValidID} || $ValidListReverse{valid},
    );
    $Self->{LayoutObject}->Block(
        Name => 'OverviewUpdate',
        Data => \%Param,
    );

    my @Groups = @{ $Self->{ConfigObject}->Get('PreferencesView') };
    for my $Colum (@Groups) {
        my %Data        = ();
        my %Preferences = %{ $Self->{ConfigObject}->Get('PreferencesGroups') };

        GROUP:
        for my $Group ( keys %Preferences ) {
            next GROUP if $Preferences{$Group}->{Colum} ne $Colum;

            if ( $Data{ $Preferences{$Group}->{Prio} } ) {
                for ( 1 .. 151 ) {
                    $Preferences{$Group}->{Prio}++;
                    if ( !$Data{ $Preferences{$Group}->{Prio} } ) {
                        $Data{ $Preferences{$Group}->{Prio} } = $Group;
                        last;
                    }
                }
            }
            $Data{ $Preferences{$Group}->{Prio} } = $Group;
        }

        # sort
        for my $Key ( keys %Data ) {
            $Data{ sprintf( "%07d", $Key ) } = $Data{$Key};
            delete $Data{$Key};
        }

        # show each preferences setting
        for my $Prio ( sort keys %Data ) {
            my $Group = $Data{$Prio};
            if ( !$Self->{ConfigObject}->{PreferencesGroups}->{$Group} ) {
                next;
            }
            my %Preference = %{ $Self->{ConfigObject}->{PreferencesGroups}->{$Group} };
            if ( $Group eq 'Password' ) {
                next;
            }
            my $Module = $Preference{Module} || 'Kernel::Output::HTML::PreferencesGeneric';

            # load module
            if ( $Self->{MainObject}->Require($Module) ) {
                my $Object = $Module->new(
                    %{$Self},
                    ConfigItem => \%Preference,
                    Debug      => $Self->{Debug},
                );
                my @Params = $Object->Param( UserData => \%Param );
                if (@Params) {
                    for my $ParamItem (@Params) {
                        $Self->{LayoutObject}->Block(
                            Name => 'Item',
                            Data => { %Param, },
                        );
                        if (
                            ref( $ParamItem->{Data} )   eq 'HASH'
                            || ref( $Preference{Data} ) eq 'HASH'
                            )
                        {
                            $ParamItem->{'Option'} = $Self->{LayoutObject}->BuildSelection(
                                %Preference, %{$ParamItem},
                            );
                        }
                        $Self->{LayoutObject}->Block(
                            Name => $ParamItem->{Block} || $Preference{Block} || 'Option',
                            Data => {
                                Group => $Group,
                                %Preference,
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
    return 1;
}

sub _Overview {
    my ( $Self, %Param ) = @_;

    $Self->{LayoutObject}->Block(
        Name => 'Overview',
        Data => \%Param,
    );
    $Self->{LayoutObject}->Block( Name => 'ActionList' );
    $Self->{LayoutObject}->Block( Name => 'ActionSearch' );
    $Self->{LayoutObject}->Block( Name => 'ActionAdd' );
    $Self->{LayoutObject}->Block(
        Name => 'OverviewResult',
        Data => \%Param,
    );
    if ( $Self->{ConfigObject}->Get('SwitchToUser') ) {
        $Self->{LayoutObject}->Block(
            Name => 'OverviewResultSwitchToUser',
        );
    }
    if ( $Param{Search} ) {
        my %List = $Self->{UserObject}->UserSearch(
            Search => $Param{Search} . '*',
            Limit  => 400,
            Valid  => 0,
        );

        # get valid list
        my %ValidList = $Self->{ValidObject}->ValidList();
        for ( sort { $List{$a} cmp $List{$b} } keys %List ) {

            my %UserData = $Self->{UserObject}->GetUserData(
                UserID        => $_,
                NoOutOfOffice => 1,
            );
            $Self->{LayoutObject}->Block(
                Name => 'OverviewResultRow',
                Data => {
                    Valid  => $ValidList{ $UserData{ValidID} },
                    Search => $Param{Search},
                    %UserData,
                },
            );
            if ( $Self->{ConfigObject}->Get('SwitchToUser') ) {
                $Self->{LayoutObject}->Block(
                    Name => 'OverviewResultRowSwitchToUser',
                    Data => {
                        Search => $Param{Search},
                        %UserData,
                    },
                );
            }
        }
    }
    return 1;
}

1;
