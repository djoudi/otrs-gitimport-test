# --
# Kernel/System/Web/InterfaceAgent.pm - the agent interface file (incl. auth)
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: InterfaceAgent.pm,v 1.2 2005-01-06 10:02:25 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Web::InterfaceAgent;

use strict;

use vars qw($VERSION @INC);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
# all framework needed modules
# --
use Kernel::Config;
use Kernel::Config::Modules;
use Kernel::System::Log;
use Kernel::System::Time;
use Kernel::System::Web::Request;
use Kernel::System::DB;
use Kernel::System::Auth;
use Kernel::System::AuthSession;
use Kernel::System::User;
use Kernel::System::Group;
use Kernel::System::Permission;
use Kernel::Output::HTML::Generic;

=head1 NAME

Kernel::System::Web::InterfaceAgent - the agent web interface

=head1 SYNOPSIS

the global agent web interface (incl. auth, session, ...)

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create agent web interface object

  use Kernel::System::Web::InterfaceAgent;

  my $Debug = 0;
  my $InterfaceAgent = Kernel::System::Web::InterfaceAgent->new(Debug => $Debug);

=cut

sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # get debug level
    $Self->{Debug} = $Param{Debug} || 0;

    # --
    # create common framework objects 1/3
    # --
    $Self->{ConfigObject} = Kernel::Config->new();
    $Self->{LogObject} = Kernel::System::Log->new(
        LogPrefix => $Self->{ConfigObject}->Get('CGILogPrefix'),
        %{$Self},
    );
    $Self->{TimeObject} = Kernel::System::Time->new(%{$Self});
    $Self->{ParamObject} = Kernel::System::Web::Request->new(
        %{$Self},
        WebRequest => $Param{WebRequest} || 0,
    );
    # --
    # debug info
    # --
    if ($Self->{Debug}) {
        $Self->{LogObject}->Log(
            Priority => 'debug',
            Message => 'Global handle started...',
        );
    }

    return $Self;
}

=item Run()

execute the object

  $InterfaceAgent->Run();

=cut

sub Run {
    my $Self = shift;
    # --
    # get common framework params
    # --
    my %Param = ();
    # get session id
    $Param{SessionName} = $Self->{ConfigObject}->Get('SessionName') || 'SessionID';
    $Param{SessionID} = $Self->{ParamObject}->GetParam(Param => $Param{SessionName}) || '';
    # drop old session id (if exists)
    my $QueryString = $ENV{"QUERY_STRING"} || '';
    $QueryString =~ s/(\?|&|)$Param{SessionName}(=&|=.+?&|=.+?$)/&/g;
    # definde frame work params
    my $FramworkPrams = {
        Lang => '',
        Action => '',
        Subaction => '',
        RequestedURL => $QueryString,
    };
    foreach my $Key (keys %{$FramworkPrams}) {
        $Param{$Key} = $Self->{ParamObject}->GetParam(Param => $Key)
          || $FramworkPrams->{$Key};
    }
    # --
    # Check if the brwoser sends the SessionID cookie and set the SessionID-cookie
    # as SessionID! GET or POST SessionID have the lowest priority.
    # --
    if ($Self->{ConfigObject}->Get('SessionUseCookie')) {
      $Param{SessionIDCookie} = $Self->{ParamObject}->GetCookie(Key => $Param{SessionName});
      if ($Param{SessionIDCookie}) {
        $Param{SessionID} = $Param{SessionIDCookie};
      }
    }
    # --
    # create common framework objects 2/3
    # --
    $Self->{LayoutObject} = Kernel::Output::HTML::Generic->new(
        %{$Self},
        Lang => $Param{Lang},
    );
    # --
    # check common objects
    # --
    $Self->{DBObject} = Kernel::System::DB->new(%{$Self});
    if (!$Self->{DBObject}) {
        print $Self->{LayoutObject}->Header(Area => 'Core', Title => 'Error!');
        print $Self->{LayoutObject}->Error(
            Message => $DBI::errstr,
            Comment => 'Please contact your admin'
        );
        print $Self->{LayoutObject}->Footer();
        exit (1);
    }
    if ($Self->{ParamObject}->Error()) {
        print $Self->{LayoutObject}->Header(Area => 'Core', Title => 'Error!');
        print $Self->{LayoutObject}->Error(
            Message => $Self->{ParamObject}->Error(),
            Comment => 'Please contact your admin'
        );
         print $Self->{LayoutObject}->Footer();
        exit (1);
    }
    # --
    # create common framework objects 3/3
    # --
    $Self->{UserObject} = Kernel::System::User->new(%{$Self});
    $Self->{GroupObject} = Kernel::System::Group->new(%{$Self});
    $Self->{PermissionObject} = Kernel::System::Permission->new(%{$Self});
    $Self->{SessionObject} = Kernel::System::AuthSession->new(%{$Self});
    # --
    # application and add on application common objects
    # --
    foreach ('$Kernel::Config::Modules::CommonObject', '$Kernel::Config::ModulesCustom::CommonObject') {
        my $ModuleCommonObject = eval $_;
        foreach my $Key (keys %{$ModuleCommonObject}) {
            # create
            $Self->{$Key} = $ModuleCommonObject->{$Key}->new(%{$Self});
        }
    }
    # --
    # get common application and add on application params
    # --
    foreach ('$Kernel::Config::Modules::Param', '$Kernel::Config::ModulesCustom::Param') {
      my $Param = eval $_;
      foreach my $Key (keys %{$Param}) {
        $Param{$Key} = $Self->{ParamObject}->GetParam(Param => $Key)
          || $Param->{$Key};
      }
    }
    # security check Action Param (replace non word chars)
    $Param{Action} =~ s/\W//g;
    # --
    # check request type
    # --
    if ($Param{Action} eq "Login") {
        # get params
        my $PostUser = $Self->{ParamObject}->GetParam(Param => 'User') || '';
        my $PostPw = $Self->{ParamObject}->GetParam(Param => 'Password') || '';
        # create AuthObject
        my $AuthObject = Kernel::System::Auth->new(%{$Self});
        # check submited data
        my $User = $AuthObject->Auth(User => $PostUser, Pw => $PostPw);
        if ($User) {
            # get user data
            my %UserData = $Self->{UserObject}->GetUserData(User => $User, Valid => 1);
            # check needed data
            if (!$UserData{UserID} || !$UserData{UserLogin}) {
                if ($Self->{ConfigObject}->Get('AuthModule') eq 'Kernel::System::Auth::LDAP') {
                    # sync user
                    if ($Self->{UserObject}->SyncLDAP2Database(User => $User)) {
                        if ($Self->{ConfigObject}->Get('LoginURL')) {
                            # redirect to alternate login
                            print $Self->{LayoutObject}->Redirect(
                                ExtURL => $Self->{ConfigObject}->Get('LoginURL')."?Reason=AccountActivated",
                            );
                        }
                        else {
                            # show error login screen
                            print $Self->{LayoutObject}->Login(
                                Title => 'First Visit?',
                                Message => 'Useraccount activated, retry.',
                                %Param,
                            );
                        }
                    }
                    else {
                        if ($Self->{ConfigObject}->Get('LoginURL')) {
                            # redirect to alternate login
                            print $Self->{LayoutObject}->Redirect(
                                ExtURL => $Self->{ConfigObject}->Get('LoginURL')."?Reason=SystemError",
                            );
                        }
                        else {
                            # show error login screen
                            print $Self->{LayoutObject}->Login(
                                Title => 'First Visit?',
                                Message => 'Can\'t activate user.',
                                %Param,
                            );
                        }
                    }
                    exit (0);
                }
                if ($Self->{ConfigObject}->Get('LoginURL')) {
                    # redirect to alternate login
                    print $Self->{LayoutObject}->Redirect(
                        ExtURL => $Self->{ConfigObject}->Get('LoginURL')."?Reason=SystemError",
                    );
                }
                else {
                    # show need user data error message
                    print $Self->{LayoutObject}->Login(
                        Title => 'Panic!',
                        Message => 'Panic! No UserData!!!',
                        %Param,
                    );
                    exit (0);
                }
            }
            # last login preferences update
            $Self->{UserObject}->SetPreferences(
                UserID => $UserData{UserID},
                Key => 'UserLastLogin',
                Value => $Self->{TimeObject}->SystemTime(),
            );
            # get groups rw
            my %GroupData = $Self->{GroupObject}->GroupMemberList(
                Result => 'HASH',
                Type => 'rw',
                UserID => $UserData{UserID},
            );
            foreach (keys %GroupData) {
                $UserData{"UserIsGroup[$GroupData{$_}]"} = 'Yes';
            }
            # get groups ro
            %GroupData = $Self->{GroupObject}->GroupMemberList(
                Result => 'HASH',
                Type => 'ro',
                UserID => $UserData{UserID},
            );
            foreach (keys %GroupData) {
                $UserData{"UserIsGroupRo[$GroupData{$_}]"} = 'Yes';
            }
            # create new session id
            my $NewSessionID = $Self->{SessionObject}->CreateSessionID(
                _UserLogin => $PostUser,
                _UserPw => $PostPw,
                %UserData,
                UserLastRequest => $Self->{TimeObject}->SystemTime(),
                UserType => 'User',
            );
            # create a new LayoutObject with SessionIDCookie
            my $Expires = '+'.$Self->{ConfigObject}->Get('SessionMaxTime').'s';
            if (!$Self->{ConfigObject}->Get('SessionUseCookieAfterBrowserClose')) {
                $Expires = '';
            }
            my $LayoutObject = Kernel::Output::HTML::Generic->new(
              SetCookies => {
                  SessionIDCookie => $Self->{ParamObject}->SetCookie(
                      Key => $Param{SessionName},
                      Value => $NewSessionID,
                      Expires => $Expires,
                  ),
              },
              SessionID => $NewSessionID,
              SessionName => $Param{SessionName},
              %{$Self},
            );
            # redirect with new session id and old params
            # prepare old redirect URL -- do not redirect to Login or Logout (loop)!
            if ($Param{RequestedURL} =~ /Action=(Logout|Login)/) {
                $Param{RequestedURL} = '';
            }
            # redirect with new session id
            print $LayoutObject->Redirect(OP => "$Param{RequestedURL}");
        }
        # login is valid
        else {
            if ($Self->{ConfigObject}->Get('LoginURL')) {
                # redirect to alternate login
                $Param{RequestedURL} = $Self->{LayoutObject}->LinkEncode($Param{RequestedURL});
                print $Self->{LayoutObject}->Redirect(
                     ExtURL => $Self->{ConfigObject}->Get('LoginURL').
                       "?Reason=LoginFailed&RequestedURL=$Param{RequestedURL}",
                );
            }
            else {
                # show normal login
                print $Self->{LayoutObject}->Login(
                    Title => 'Login',
                    Message => $Self->{LogObject}->GetLogEntry(
                        Type => 'Info',
                        What => 'Message',
                        ) || 'Login failed! Your username or password was entered incorrectly.',
                    User => $User,
                    %Param,
                );
            }
        }
    }
    # --
    # Logout
    # --
    elsif ($Param{Action} eq "Logout"){
        if ($Self->{SessionObject}->CheckSessionID(SessionID => $Param{SessionID})) {
            # get session data
            my %UserData = $Self->{SessionObject}->GetSessionIDData(
                SessionID => $Param{SessionID},
            );
            # create new LayoutObject with new '%Param' and '%UserData'
            $Self->{LayoutObject} = Kernel::Output::HTML::Generic->new(
              SetCookies => {
                  SessionIDCookie => $Self->{ParamObject}->SetCookie(
                      Key => $Param{SessionName},
                      Value => '',
                  ),
              },
              %{$Self},
              %Param,
              %UserData,
            );
            # remove session id
            if ($Self->{SessionObject}->RemoveSessionID(SessionID => $Param{SessionID})) {
                if ($Self->{ConfigObject}->Get('LogoutURL')) {
                    # redirect to alternate login
                    print $Self->{LayoutObject}->Redirect(
                         ExtURL => $Self->{ConfigObject}->Get('LogoutURL')."?Reason=Logout",
                    );
                }
                else {
                    # show logout screen
                    print $Self->{LayoutObject}->Login(
                        Title => 'Logout',
                        Message => 'Logout successful. Thank you for using OTRS!',
                        %Param,
                    );
                }
            }
            else {
                print $Self->{LayoutObject}->Header(Title => 'Logout');
                print $Self->{LayoutObject}->Error(
                    Message => 'Can`t remove SessionID',
                    Comment => 'Please contact your admin!'
                );
                $Self->{LogObject}->Log(
                    Message => 'Can`t remove SessionID',
                    Priority => 'error',
                );
                print $Self->{LayoutObject}->Footer();
            }
        }
        else {
            if ($Self->{ConfigObject}->Get('LoginURL')) {
                # redirect to alternate login
                $Param{RequestedURL} = $Self->{LayoutObject}->LinkEncode($Param{RequestedURL});
                print $Self->{LayoutObject}->Redirect(
                    ExtURL => $Self->{ConfigObject}->Get('LoginURL').
                      "?Reason=InvalidSessionID&RequestedURL=$Param{RequestedURL}",
                );
            }
            else {
                # show login screen
                print $Self->{LayoutObject}->Login(
                    Title => 'Logout',
                    Message => 'Invalid SessionID!',
                    %Param,
                );
            }
        }
    }
    # --
    # user lost password
    # --
    elsif ($Param{Action} eq "LostPassword"){
        # check feature
        if (! $Self->{ConfigObject}->Get('LostPassword')) {
            # show normal login
            print $Self->{LayoutObject}->Login(
               Title => 'Login',
               Message => 'Feature not active!',
            );
            exit 0;
        }
        # get params
        my $User = $Self->{ParamObject}->GetParam(Param => 'User') || '';
        # get user data
        my %UserData = $Self->{UserObject}->GetUserData(User => $User);
        if (! $UserData{UserID}) {
            # show normal login
            print $Self->{LayoutObject}->Login(
                Title => 'Login',
                Message => 'There is no account with that login name.',
                %Param,
            );
            exit 0;
        }
        else {
            # get new password
            $UserData{NewPW} = $Self->{UserObject}->GenerateRandomPassword();
            # update new password
            $Self->{UserObject}->SetPassword(UserLogin => $User, PW => $UserData{NewPW});
            # send notify email
            my $EmailObject = Kernel::System::Email->new(%{$Self});
            my $Body = $Self->{ConfigObject}->Get('NotificationBodyLostPassword')
              || "New Password is: <OTRS_NEWPW>";
            my $Subject = $Self->{ConfigObject}->Get('NotificationSubjectLostPassword')
              || 'New Password!';
            foreach (keys %UserData) {
                $Body =~ s/<OTRS_$_>/$UserData{$_}/gi;
            }
            if ($EmailObject->Send(
                To => $UserData{UserEmail},
                Subject => $Subject,
                Charset => 'iso-8859-15',
                Type => 'text/plain',
                Body => $Body)) {
                    print $Self->{LayoutObject}->Login(
                        Title => 'Login',
                        Message => "Sent new password to: ".$UserData{"UserEmail"},
                        User => $User,
                        %Param,
                    );
                    exit 0;
            }
            else {
                print $Self->{LayoutObject}->Header(Area => 'Core', Title => 'Error!');
                print $Self->{LayoutObject}->Error();
                print $Self->{LayoutObject}->Footer();
                exit 0;
            }
        }
    }
    # --
    # show login site
    # --
    elsif (!$Param{SessionID}) {
        # create AuthObject
        my $AuthObject = Kernel::System::Auth->new(%{$Self});
        if ($AuthObject->GetOption(What => 'PreAuth')) {
            # automatic login
            $Param{RequestedURL} = $Self->{LayoutObject}->LinkEncode($Param{RequestedURL});
            print $Self->{LayoutObject}->Redirect(
                OP => "Action=Login&RequestedURL=$Param{RequestedURL}",
            );
        }
        elsif ($Self->{ConfigObject}->Get('LoginURL')) {
            # redirect to alternate login
            $Param{RequestedURL} = $Self->{LayoutObject}->LinkEncode($Param{RequestedURL});
            print $Self->{LayoutObject}->Redirect(
                ExtURL => $Self->{ConfigObject}->Get('LoginURL').
                 "?RequestedURL=$Param{RequestedURL}",
            );
        }
        else {
            # login screen
            print $Self->{LayoutObject}->Login(
                Title => 'Login',
                %Param,
            );
        }
    }
    # --
    # run modules if exists a version value
    # --
    elsif (eval "require Kernel::Modules::$Param{Action}" && eval '$Kernel::Modules::'. $Param{Action} .'::VERSION') {
        # check session id
        if ( !$Self->{SessionObject}->CheckSessionID(SessionID => $Param{SessionID}) ) {
            # create new LayoutObject with new '%Param'
            $Self->{LayoutObject} = Kernel::Output::HTML::Generic->new(
              SetCookies => {
                  SessionIDCookie => $Self->{ParamObject}->SetCookie(
                      Key => $Param{SessionName},
                      Value => '',
                  ),
              },
              %{$Self},
              %Param,
            );
            # create AuthObject
            my $AuthObject = Kernel::System::Auth->new(%{$Self});
            if ($AuthObject->GetOption(What => 'PreAuth')) {
                # automatic re-login
                $Param{RequestedURL} = $Self->{LayoutObject}->LinkEncode($Param{RequestedURL});
                 print $Self->{LayoutObject}->Redirect(
                      OP => "?Action=Login&RequestedURL=$Param{RequestedURL}",
                 );
            }
            elsif ($Self->{ConfigObject}->Get('LoginURL')) {
                # redirect to alternate login
                $Param{RequestedURL} = $Self->{LayoutObject}->LinkEncode($Param{RequestedURL});
                print $Self->{LayoutObject}->Redirect(
                     ExtURL => $Self->{ConfigObject}->Get('LoginURL').
                       "?Reason=InvalidSessionID&RequestedURL=$Param{RequestedURL}",
                );
            }
            else {
                # show login
                print $Self->{LayoutObject}->Login(
                    Title => 'Login',
                    Message => $Kernel::System::AuthSession::CheckSessionID,
                    %Param,
                );
            }
        }
        # --
        # run module
        # --
        else {
            # get session data
            my %UserData = $Self->{SessionObject}->GetSessionIDData(
                SessionID => $Param{SessionID},
            );
            # check needed data
            if (!$UserData{UserID} || !$UserData{UserLogin} || $UserData{UserType} ne 'User') {
                if ($Self->{ConfigObject}->Get('LoginURL')) {
                    # redirect to alternate login
                    print $Self->{LayoutObject}->Redirect(
                        ExtURL => $Self->{ConfigObject}->Get('LoginURL')."?Reason=SystemError",
                    );
                }
                else {
                    # show login screen
                    print $Self->{LayoutObject}->Login(
                        Title => 'Panic!',
                        Message => 'Panic! Invalid Session!!!',
                        %Param,
                    );
                    exit (0);
                }
            }
            # check module registry
            my $ModuleReg = $Self->{ConfigObject}->Get('Frontend::Module');
            if (!$ModuleReg->{$Param{Action}}) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Module Kernel::Modules::$Param{Action} not registered in Kernel/Config.pm!",
                );
                print $Self->{LayoutObject}->Header(Area => 'Core', Title => 'Error!');
                print $Self->{LayoutObject}->Error();
                print $Self->{LayoutObject}->Footer();
                exit 0;
            }
            # module permisson check
            if (!$ModuleReg->{$Param{Action}}->{GroupRo} && !$ModuleReg->{$Param{Action}}->{Group}) {
                $Param{AccessRo} = 1;
                $Param{AccessRw} = 1;
            }
            else {
                foreach my $Permission (qw(GroupRo Group)) {
                    my $AccessOk = 0;
                    my $Group = $ModuleReg->{$Param{Action}}->{$Permission};
                    my $Key = "UserIs$Permission";
                    if (ref($Group) eq 'ARRAY') {
                        foreach (@{$Group}) {
                            if ($_ && $UserData{$Key."[$_]"} && $UserData{$Key."[$_]"} eq 'Yes') {
                                $AccessOk = 1;
                            }
                        }
                    }
                    else {
                        if ($Group && $UserData{$Key."[$Group]"} && $UserData{$Key."[$Group]"} eq 'Yes') {
                            $AccessOk = 1;
                        }
#print STDERR "$Group $AccessOk pppppp UserIs$Permission"."[$Group]\n";
                    }
                    if ($Permission eq 'Group' && $AccessOk) {
                        $Param{AccessRw} = 1;
                    }
                    else {
                        $Param{AccessRo} = 1;
                    }
                }
            }
            if (!$Param{AccessRo} && $Param{AccessRw}) {
                print $Self->{LayoutObject}->NoPermission(
                    Message => "No Permission to use this frontend module!",
                );
                exit (0);
            }
            # create new LayoutObject with new '%Param' and '%UserData'
            $Self->{LayoutObject} = Kernel::Output::HTML::Generic->new(
                %{$Self},
                %Param,
                %UserData,
                ModuleReg => $ModuleReg->{$Param{Action}},
            );
            # updated last request time
            $Self->{SessionObject}->UpdateSessionID(
                SessionID => $Param{SessionID},
                Key => 'UserLastRequest',
                Value => $Self->{TimeObject}->SystemTime(),
            );
            # pre application module
            my $PreModule = $Self->{ConfigObject}->Get('PreApplicationModule');
            if ($PreModule && eval "require $PreModule") {
                # debug info
                if ($Self->{Debug}) {
                    $Self->{LogObject}->Log(
                        Priority => 'debug',
                        Message => "PreApplication module $PreModule is used.",
                    );
                }
                # use module
                my $PreModuleObject = $PreModule->new(
                    %{$Self},
                    %Param,
                    %UserData,
                    ModuleReg => $ModuleReg->{$Param{Action}},
                );
                my $Output = $PreModuleObject->PreRun();
                if ($Output) {
                    print $PreModuleObject->PreRun();
                    exit (0);
                }
            }
            # debug info
            if ($Self->{Debug}) {
                $Self->{LogObject}->Log(
                    Priority => 'debug',
                    Message => 'Kernel::Modules::' . $Param{Action} .'->new',
                );
            }
            # prove of concept! - create $GenericObject
            my $GenericObject = ('Kernel::Modules::'.$Param{Action})->new(
                %{$Self},
                %Param,
                %UserData,
                ModuleReg => $ModuleReg->{$Param{Action}},
            );
            # debug info
            if ($Self->{Debug}) {
                $Self->{LogObject}->Log(
                    Priority => 'debug',
                    Message => ''. 'Kernel::Modules::' . $Param{Action} .'->run',
                );
            }
            # ->Run $Action with $GenericObject
            print $GenericObject->Run();

        }
    }
    # --
    # else print an error screen
    # --
    else {
        # create new LayoutObject with '%Param'
        my %Data = $Self->{SessionObject}->GetSessionIDData(
            SessionID => $Param{SessionID},
        );
        $Self->{LayoutObject} = Kernel::Output::HTML::Generic->new(
            %{$Self},
            %Param,
            %Data,
        );
        # check if file name exists
        my $Error = 0;
        foreach my $Prefix (@INC) {
             my $File = "$Prefix/Kernel/Modules/$Param{Action}.pm";
             if (-f $File) {
                 $Error = $File;
                 last;
             }
        }
        # if file name exists, show syntax error
        if ($Error) {
            my $R = do $Error;
            $Self->{LogObject}->Log(Priority => 'error', Message => "$@");
            $Error = "Syntax error in 'Kernel::Modules::$Param{Action}'!";
        }
        # if there is no file, show not found error
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "File 'Kernel/Modules/$Param{Action}.pm' not found!",
            );
            $Error = "File 'Kernel/Modules/$Param{Action}.pm' not found!";
        }
        # print error
        print $Self->{LayoutObject}->Header(Area => 'Core', Title => 'Error!');
        print $Self->{LayoutObject}->Error(
            Message => $Error,
        );
        print $Self->{LayoutObject}->Footer();
    }
    # --
    # debug info
    # --
    if ($Self->{Debug}) {
        $Self->{LogObject}->Log(
            Priority => 'debug',
            Message => 'Global handle stopped.',
        );
    }
    # --
    # db disconnect && undef %Param
    # --
    $Self->{DBObject}->Disconnect();
    undef %Param;
}
1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.2 $ $Date: 2005-01-06 10:02:25 $

=cut
