#!/usr/bin/perl -w
# --
# index.pl - the global CGI handle file (incl. auth) for OTRS
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: index.pl,v 1.67 2004-04-07 11:05:44 martin Exp $
# --
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
# --

# use ../../ as lib location
use FindBin qw($Bin);
use lib "$Bin/../..";
use lib "$Bin/../../Kernel/cpan-lib";

use strict;

use vars qw($VERSION @INC);
$VERSION = '$Revision: 1.67 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
# 0=off;1=on;
# --
my $Debug = 0; 

# --
# check @INC for mod_perl (add lib path for "require module"!)
# --
push (@INC, "$Bin/../..", "$Bin/../../Kernel/cpan-lib");

# --
# all framework needed  modules 
# (if you use mod_perl with startup.pl, drop this "use Kernel::.." and add
# this to your startup.pl) 
# --
use Kernel::Config;
use Kernel::Config::Modules;
use Kernel::System::Log;
use Kernel::System::WebRequest;
use Kernel::System::DB;
use Kernel::System::Auth;
use Kernel::System::AuthSession;
use Kernel::System::User;
use Kernel::System::Group;
use Kernel::System::Permission;
use Kernel::Output::HTML::Generic;

# --
# create common framework objects 1/3
# --
my %CommonObject = ();
$CommonObject{ConfigObject} = Kernel::Config->new();
$CommonObject{LogObject} = Kernel::System::Log->new(
    LogPrefix => $CommonObject{ConfigObject}->Get('CGILogPrefix'),
    %CommonObject,
);
$CommonObject{DBObject} = Kernel::System::DB->new(%CommonObject);
$CommonObject{ParamObject} = Kernel::System::WebRequest->new(%CommonObject);
# --
# debug info
# --
if ($Debug) {
    $CommonObject{LogObject}->Log(
        Priority => 'debug', 
        Message => 'Global handle started...',
    );
}
# --
# get common framework params
# --
my %Param = ();
# get session id
$Param{SessionName} = $CommonObject{ConfigObject}->Get('SessionName') || 'SessionID';
$Param{SessionID} = $CommonObject{ParamObject}->GetParam(Param => $Param{SessionName}) || '';
# drop old session id (if exists)
my $QueryString = $ENV{"QUERY_STRING"} || '';
$QueryString =~ s/(\?|&|)$Param{SessionName}(=&|=.+?&|=.+?$)/&/;
# definde frame work params
my $FramworkPrams = {
    Lang => '',
    Action => '',
    Subaction => '',
    RequestedURL => $QueryString,
};
foreach my $Key (keys %{$FramworkPrams}) {
    $Param{$Key} = $CommonObject{ParamObject}->GetParam(Param => $Key) 
      || $FramworkPrams->{$Key};
}
# --
# Check if the brwoser sends the SessionID cookie and set the SessionID-cookie 
# as SessionID! GET or POST SessionID have the lowest priority.
# --
if ($CommonObject{ConfigObject}->Get('SessionUseCookie')) {
  $Param{SessionIDCookie} = $CommonObject{ParamObject}->GetCookie(Key => $Param{SessionName});
  if ($Param{SessionIDCookie}) {
    $Param{SessionID} = $Param{SessionIDCookie};
  }
}
# --
# create common framework objects 2/3
# --
$CommonObject{LayoutObject} = Kernel::Output::HTML::Generic->new(
    %CommonObject, 
    Lang => $Param{Lang},
);
# --
# check common objects
# --
if (!$CommonObject{DBObject}) {
    print $CommonObject{LayoutObject}->Header(Area => 'Core', Title => 'Error!');
    print $CommonObject{LayoutObject}->Error(
        Message => $DBI::errstr,
        Comment => 'Please contact your admin'
    );
    print $CommonObject{LayoutObject}->Footer();
    exit (1);
}
if ($CommonObject{ParamObject}->Error()) {
    print $CommonObject{LayoutObject}->Header(Area => 'Core', Title => 'Error!');
    print $CommonObject{LayoutObject}->Error(
        Message => $CommonObject{ParamObject}->Error(),
        Comment => 'Please contact your admin'
    );
    print $CommonObject{LayoutObject}->Footer();
    exit (1);
}
# --
# create common framework objects 3/3
# --
$CommonObject{UserObject} = Kernel::System::User->new(%CommonObject);
$CommonObject{GroupObject} = Kernel::System::Group->new(%CommonObject);
$CommonObject{PermissionObject} = Kernel::System::Permission->new(%CommonObject);
$CommonObject{SessionObject} = Kernel::System::AuthSession->new(%CommonObject);
# --
# application and add on application common objects
# --
foreach ('$Kernel::Config::Modules::CommonObject', '$Kernel::Config::ModulesCustom::CommonObject') {
  my $ModuleCommonObject = eval $_;
  foreach my $Key (keys %{$ModuleCommonObject}) {
    # create
    $CommonObject{$Key} = $ModuleCommonObject->{$Key}->new(%CommonObject);
  }
}
# --
# get common application and add on application params
# --
foreach ('$Kernel::Config::Modules::Param', '$Kernel::Config::ModulesCustom::Param') {
  my $Param = eval $_;
  foreach my $Key (keys %{$Param}) {
    $Param{$Key} = $CommonObject{ParamObject}->GetParam(Param => $Key) 
      || $Param->{$Key};
  }
}
# security check Action Param (replace non word chars)
$Param{Action} =~ s/\W//g;
# --
# check request type
# --
if ($Param{Action} eq "Login") {
    # --
    # get params
    # --
    my $PostUser = $CommonObject{ParamObject}->GetParam(Param => 'User') || '';
    my $PostPw = $CommonObject{ParamObject}->GetParam(Param => 'Password') || '';
    # --
    # create AuthObject
    # --
    my $AuthObject = Kernel::System::Auth->new(%CommonObject);
    # --
    # check submited data
    # --
    my $User = $AuthObject->Auth(User => $PostUser, Pw => $PostPw);
    if ($User) {
        # --
        # get user data
        # --
        my %UserData = $CommonObject{UserObject}->GetUserData(User => $User, Valid => 1);
        # --
        # check needed data
        # --
        if (!$UserData{UserID} || !$UserData{UserLogin}) {
            if ($CommonObject{ConfigObject}->Get('AuthModule') eq 'Kernel::System::Auth::LDAP') {
                # sync user
                if ($CommonObject{UserObject}->SyncLDAP2Database(User => $User)) {
                    if ($CommonObject{ConfigObject}->Get('LoginURL')) {
                        # redirect to alternate login
                        print $CommonObject{LayoutObject}->Redirect(
                            ExtURL => $CommonObject{ConfigObject}->Get('LoginURL')."?Reason=AccountActivated",
                        );
                    } 
                    else {
                        # show error login screen
                        print $CommonObject{LayoutObject}->Login(
                            Title => 'First Visit?',
                            Message => 'Useraccount activated, retry.',
                            %Param,
                        );
                    }
                }
                else {
                    if ($CommonObject{ConfigObject}->Get('LoginURL')) {
                        # redirect to alternate login
                        print $CommonObject{LayoutObject}->Redirect(
                            ExtURL => $CommonObject{ConfigObject}->Get('LoginURL')."?Reason=SystemError",
                        );
                    } 
                    else {
                        # show error login screen
                        print $CommonObject{LayoutObject}->Login(
                            Title => 'First Visit?',
                            Message => 'Can\'t activate user.',
                            %Param,
                        );
                    }
                }
                exit (0);
            }
            if ($CommonObject{ConfigObject}->Get('LoginURL')) {
                # redirect to alternate login
                print $CommonObject{LayoutObject}->Redirect(
                    ExtURL => $CommonObject{ConfigObject}->Get('LoginURL')."?Reason=SystemError",
                );
            }
            else {
                # show need user data error message
                print $CommonObject{LayoutObject}->Login(
                    Title => 'Panic!',
                    Message => 'Panic! No UserData!!!',
                    %Param,
                );
                exit (0);
            }
        }
        # --
        # pref update 
        # --
        $CommonObject{UserObject}->SetPreferences(
            UserID => $UserData{UserID},
            Key => 'UserLastLogin',
            Value => time(),
        );
        # get groups rw
        my %GroupData = $CommonObject{GroupObject}->GroupMemberList(
            Result => 'HASH',
            Type => 'rw',
            UserID => $UserData{UserID},
        );
        foreach (keys %GroupData) {
            $UserData{"UserIsGroup[$GroupData{$_}]"} = 'Yes';
        }
        # get groups ro
        %GroupData = $CommonObject{GroupObject}->GroupMemberList(
            Result => 'HASH',
            Type => 'ro',
            UserID => $UserData{UserID},
        );
        foreach (keys %GroupData) {
            $UserData{"UserIsGroupRo[$GroupData{$_}]"} = 'Yes';
        }
        # --
        # create new session id
        # --
        my $NewSessionID = $CommonObject{SessionObject}->CreateSessionID(
            %UserData, 
            UserType => 'User', 
        );
        # --
        # create a new LayoutObject with SessionIDCookie
        # --
        my $Expires = '+'.$CommonObject{ConfigObject}->Get('SessionMaxTime').'s';
        if (!$CommonObject{ConfigObject}->Get('SessionUseCookieAfterBrowserClose')) {
            $Expires = '';
        }
        my $LayoutObject = Kernel::Output::HTML::Generic->new(
          SetCookies => {
              SessionIDCookie => $CommonObject{ParamObject}->SetCookie(
                  Key => $Param{SessionName},
                  Value => $NewSessionID,
                  Expires => $Expires,
              ),
          },
          SessionID => $NewSessionID, 
          SessionName => $Param{SessionName},
          %CommonObject,
        );

        # --
        # redirect with new session id and old params
        # --
        # prepare old redirect URL -- do not redirect to Login or Logout (loop)!
        if ($Param{RequestedURL} =~ /Action=(Logout|Login)/) {
            $Param{RequestedURL} = '';
        }
        # --
        # redirect with new session id
        # --
        print $LayoutObject->Redirect(OP => "$Param{RequestedURL}");
    }
    # --
    # login is valid
    # --
    else {
        if ($CommonObject{ConfigObject}->Get('LoginURL')) {
            # --
            # redirect to alternate login
            # --
            $Param{RequestedURL} = $CommonObject{LayoutObject}->LinkEncode($Param{RequestedURL});
            print $CommonObject{LayoutObject}->Redirect(
                 ExtURL => $CommonObject{ConfigObject}->Get('LoginURL').
                   "?Reason=LoginFailed&RequestedURL=$Param{RequestedURL}",
            );
        }
        else {
            # --
            # show normal login
            # --
            print $CommonObject{LayoutObject}->Login(
                Title => 'Login',          
                Message => 'Login failed! Your username or password was entered incorrectly.',
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
    if ($CommonObject{SessionObject}->CheckSessionID(SessionID => $Param{SessionID})) {
        # --
        # get session data
        # --
        my %UserData = $CommonObject{SessionObject}->GetSessionIDData(
          SessionID => $Param{SessionID},
        );
        # --
        # create new LayoutObject with new '%Param' and '%UserData'
        # --
        $CommonObject{LayoutObject} = Kernel::Output::HTML::Generic->new(
          SetCookies => {
              SessionIDCookie => $CommonObject{ParamObject}->SetCookie(
                  Key => $Param{SessionName},
                  Value => '',
              ),
          },
          %CommonObject,
          %Param,
          %UserData,
        );
        # --
        # remove session id
        # --
        if ($CommonObject{SessionObject}->RemoveSessionID(SessionID => $Param{SessionID})) {
            if ($CommonObject{ConfigObject}->Get('LogoutURL')) {
                # --
                # redirect to alternate login
                # --
                print $CommonObject{LayoutObject}->Redirect(
                     ExtURL => $CommonObject{ConfigObject}->Get('LogoutURL')."?Reason=Logout",
                );
            }
            else {
                # --
                # show logout screen
                # --
                print $CommonObject{LayoutObject}->Login(
                    Title => 'Logout',
                    Message => 'Logout successful. Thank you for using OTRS!',
                    %Param,
                );
            }
        }  
        else {
            print $CommonObject{LayoutObject}->Header(Title => 'Logout');
            print $CommonObject{LayoutObject}->Error(
                Message => 'Can`t remove SessionID',
                Comment => 'Please contact your admin!'
            );
            $CommonObject{LogObject}->Log(
                Message => 'Can`t remove SessionID',
                Priority => 'error',
            );
            print $CommonObject{LayoutObject}->Footer();
        }
    }
    else {
        if ($CommonObject{ConfigObject}->Get('LoginURL')) {
            # --
            # redirect to alternate login
            # --
            $Param{RequestedURL} = $CommonObject{LayoutObject}->LinkEncode($Param{RequestedURL});
            print $CommonObject{LayoutObject}->Redirect(
                 ExtURL => $CommonObject{ConfigObject}->Get('LoginURL').
                  "?Reason=InvalidSessionID&RequestedURL=$Param{RequestedURL}",
            );
        }
        else {
            # --
            # show login screen
            # --
            print $CommonObject{LayoutObject}->Login(
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
    # --
    # check feature
    # --
    if (! $CommonObject{ConfigObject}->Get('LostPassword')) {
        # --
        # show normal login
        # --
        print $CommonObject{LayoutObject}->Login(
           Title => 'Login',
           Message => 'Feature not active!',
        );
        exit 0;
    }
    # --
    # get params
    # --
    my $User = $CommonObject{ParamObject}->GetParam(Param => 'User') || '';
    # --
    # get user data
    # --
    my %UserData = $CommonObject{UserObject}->GetUserData(User => $User);
    if (! $UserData{UserID}) {
        # --
        # show normal login
        # --
        print $CommonObject{LayoutObject}->Login(
           Title => 'Login',          
           Message => 'There is no account with that login name.',
           %Param,
        );
        exit 0;
    }
    else {
        # get new password
        $UserData{NewPW} = $CommonObject{UserObject}->GenerateRandomPassword();
        # update new password
        $CommonObject{UserObject}->SetPassword(UserLogin => $User, PW => $UserData{NewPW});
        # send notify email
        my $EmailObject = Kernel::System::Email->new(%CommonObject);
        my $Body = $CommonObject{ConfigObject}->Get('NotificationBodyLostPassword')
          || "New Password is: <OTRS_NEWPW>";
        my $Subject = $CommonObject{ConfigObject}->Get('NotificationSubjectLostPassword')
          || 'New Password!';
        foreach (keys %UserData) {
            $Body =~ s/<OTRS_$_>/$UserData{$_}/gi;
        }
        if ($EmailObject->Send(
              To => $UserData{UserEmail},
              Subject => $Subject, 
              Body => $Body)) {
            print $CommonObject{LayoutObject}->Login(
                Title => 'Login',          
                Message => "Sent new password to: ".$UserData{"UserEmail"},
                User => $User,
                %Param,
            );
            exit 0;
        }
        else {
            print $CommonObject{LayoutObject}->Header(Title => 'Error');
            print $CommonObject{LayoutObject}->Error();
            print $CommonObject{LayoutObject}->Footer();
            exit 0;
        }
    }
}
# --
# show login site
# --
elsif (!$Param{SessionID}) {
    # --
    # create AuthObject
    # --
    my $AuthObject = Kernel::System::Auth->new(%CommonObject);
    if ($AuthObject->GetOption(What => 'PreAuth')) {
        # automatic login
        $Param{RequestedURL} = $CommonObject{LayoutObject}->LinkEncode($Param{RequestedURL});
        print $CommonObject{LayoutObject}->Redirect(
            OP => "Action=Login&RequestedURL=$Param{RequestedURL}",
        );
    }
    elsif ($CommonObject{ConfigObject}->Get('LoginURL')) {
        # --
        # redirect to alternate login
        # --
        $Param{RequestedURL} = $CommonObject{LayoutObject}->LinkEncode($Param{RequestedURL});
        print $CommonObject{LayoutObject}->Redirect(
            ExtURL => $CommonObject{ConfigObject}->Get('LoginURL').
             "?RequestedURL=$Param{RequestedURL}",
        );
    }
    else {
        # --
        # login screen
        # --
        print $CommonObject{LayoutObject}->Login(
            Title => 'Login',
            %Param,
        );
    }
}
# --
# run modules if exists a version value
# --
#elsif (eval '$Kernel::Modules::'. $Param{Action} .'::VERSION' && (eval '$Param{Action} =~ /$Kernel::Config::Modules::Allow/' || eval '$Param{Action} =~ /$Kernel::Config::ModulesCustom::Allow/')){
elsif (eval "require Kernel::Modules::$Param{Action}" && eval '$Kernel::Modules::'. $Param{Action} .'::VERSION' && (eval '$Param{Action} =~ /$Kernel::Config::Modules::Allow/' || eval '$Param{Action} =~ /$Kernel::Config::ModulesCustom::Allow/')){
    # --
    # check session id
    # --
    if ( !$CommonObject{SessionObject}->CheckSessionID(SessionID => $Param{SessionID}) ) {
        # --
        # create new LayoutObject with new '%Param' 
        # --
        $CommonObject{LayoutObject} = Kernel::Output::HTML::Generic->new(
          SetCookies => {
              SessionIDCookie => $CommonObject{ParamObject}->SetCookie(
                  Key => $Param{SessionName},
                  Value => '',
              ),
          },
          %CommonObject,
          %Param,
        );
        # --
        # create AuthObject
        # --
        my $AuthObject = Kernel::System::Auth->new(%CommonObject);
        if ($AuthObject->GetOption(What => 'PreAuth')) {
            # automatic re-login
            $Param{RequestedURL} = $CommonObject{LayoutObject}->LinkEncode($Param{RequestedURL});
             print $CommonObject{LayoutObject}->Redirect(
                  OP => "?Action=Login&RequestedURL=$Param{RequestedURL}",
             );
        }
        elsif ($CommonObject{ConfigObject}->Get('LoginURL')) {
            # --
            # redirect to alternate login
            # --
            $Param{RequestedURL} = $CommonObject{LayoutObject}->LinkEncode($Param{RequestedURL});
            print $CommonObject{LayoutObject}->Redirect(
                 ExtURL => $CommonObject{ConfigObject}->Get('LoginURL').
                   "?Reason=InvalidSessionID&RequestedURL=$Param{RequestedURL}",
            );
        }
        else {
            # --
            # show login
            # --
            print $CommonObject{LayoutObject}->Login(
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
        # --
        # get session data
        # --
        my %UserData = $CommonObject{SessionObject}->GetSessionIDData(
            SessionID => $Param{SessionID},
        );
        # --
        # check needed data
        # --
        if (!$UserData{UserID} || !$UserData{UserLogin} || $UserData{UserType} ne 'User') {
            if ($CommonObject{ConfigObject}->Get('LoginURL')) {
                # --
                # redirect to alternate login
                # --
                print $CommonObject{LayoutObject}->Redirect(
                    ExtURL => $CommonObject{ConfigObject}->Get('LoginURL')."?Reason=SystemError",
                );
            }
            else {
                # --
                # show login screen
                # ---
                print $CommonObject{LayoutObject}->Login(
                    Title => 'Panic!',
                    Message => 'Panic! Invalid Session!!!',
                    %Param,
                );
                exit (0);
            }
        }
        # --
        # create new LayoutObject with new '%Param' and '%UserData'
        # --
        $CommonObject{LayoutObject} = Kernel::Output::HTML::Generic->new(
            %CommonObject, 
            %Param, 
            %UserData,
        );
        # -- 
        # module permisson check
        # --
        my $Access = 1;
        my $AccessOk = 0;
        my %ConfigMap = (
            'Module::Permission' => 'UserIsGroup',
            'Module::Permission::Ro' => 'UserIsGroupRo',
        );
        foreach my $Map (keys %ConfigMap) {
          my $Group = '';
          if ($CommonObject{ConfigObject}->Get($Map)) {
              $Group = $CommonObject{ConfigObject}->Get($Map)->{$Param{Action}} || '';      }
          if (ref($Group) eq 'ARRAY') {
            foreach (@{$Group}) {
                if ($_ && ($UserData{$ConfigMap{$Map}."[$_]"} && $UserData{$ConfigMap{$Map}."[$_]"} eq 'Yes')) {
                    $AccessOk = 1;
                }
            }
            if (!$AccessOk) {
                $Access = 0;
            }
          }
          else {
            if ($Group && (!$UserData{$ConfigMap{$Map}."[$Group]"} || $UserData{$ConfigMap{$Map}."[$Group]"} ne 'Yes')) {
                $Access = 0;
            }
          }
        }
        if (!$Access) {
            print $CommonObject{LayoutObject}->NoPermission(
                Message => "You have to be in the a permitted group!",
            );
            exit (0);
        }
        # --
        # debug info
        # --
        if ($Debug) {
            $CommonObject{LogObject}->Log(
                Priority => 'debug',
                Message => 'Kernel::Modules::' . $Param{Action} .'->new',
            );
        }
        # --
        # prove of concept! - create $GenericObject
        # --
        my $GenericObject = ('Kernel::Modules::'.$Param{Action})->new(
            %CommonObject,
            %Param,
            %UserData,
        );
        # --
        # debug info
        # --
        if ($Debug) {
            $CommonObject{LogObject}->Log(
                Priority => 'debug',
                Message => ''. 'Kernel::Modules::' . $Param{Action} .'->run',
            );
        }
        # --
        # ->Run $Action with $GenericObject
        # --
        print $GenericObject->Run();

    }
}
# --
# else print an error screen
# --
else { 
    # create new LayoutObject with '%Param'
    my %Data = $CommonObject{SessionObject}->GetSessionIDData(
        SessionID => $Param{SessionID},
    );
    $CommonObject{LayoutObject} = Kernel::Output::HTML::Generic->new(
        %CommonObject, 
        %Param, 
        %Data,
    );
    print $CommonObject{LayoutObject}->Header(Title => 'Error');
    print $CommonObject{LayoutObject}->Error(
        Message => "Action '$Param{Action}' not found!",
        Comment => "Perhaps the admin forgot to load \"Kernel::Modules::$Param{Action}\"!",
    );
    print $CommonObject{LayoutObject}->Footer();
}

# --
# debug info
# --
if ($Debug) {
    $CommonObject{LogObject}->Log(
        Priority => 'debug',
        Message => 'Global handle stopped.',
    );
}
# --
# db disconnect && undef %CommonObject && undef %Param
# --
$CommonObject{DBObject}->Disconnect();
undef %Param;
undef %CommonObject;

