# --
# Kernel/System/Log.pm - log wapper 
# Copyright (C) 2001-2003 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Log.pm,v 1.20 2003-12-07 23:52:31 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see 
# the enclosed file COPYING for license information (GPL). If you 
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Log;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.20 $ ';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::Log - global log interface

=head1 SYNOPSIS

All log functions. 

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()
create log object 
 
  use Kernel::Config;
  use Kernel::System::Log;
 
  my $ConfigObject = Kernel::Config->new();
  my $LogObject    = Kernel::System::Log->new(
      ConfigObject => $ConfigObject,
  );

=cut

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {}; 
    bless ($Self, $Type);

    # get config object 
    if (!$Param{ConfigObject}) {
        die "Got no ConfigObject!"; 
    }
    # check log prefix 
    $Self->{LogPrefix} = $Param{LogPrefix} || '?LogPrefix?';
    $Self->{LogPrefix} .= '-'.$Param{ConfigObject}->Get('SystemID');
    # load log backend
    my $GenericModule = $Param{ConfigObject}->Get('LogModule')
      || 'Kernel::System::Log::SysLog';
    if (!eval "require $GenericModule") {
        die "Can't load log backend module $GenericModule! $@";
    }
    # create backend handle
    $Self->{Backend} = $GenericModule->new(%Param);
    # check/load ipc stuff
    if (eval "require IPC::SysV") {
        $Self->{IPC} = 1;
        $Self->{IPCKey} = "444423".$Param{ConfigObject}->Get('SystemID');
        $Self->{IPCSize} = $Param{ConfigObject}->Get('LogSystemCacheSize') || 4*1024;
        # init session data mem (at first a dummy for RH8 workaround)
        shmget(($Self->{IPCKey}+1), 1, 0777 | 0001000);
        # init session data mem (the real one) 
        $Self->{Key} = shmget($Self->{IPCKey}, $Self->{IPCSize}, 0777 | 0001000) || die $!;
    }

    return $Self;
}
# --

=item Log()

log something, log priorities are 'debug', 'info', 'notice' and 'error'.
 
  $Self->{LogObject}->Log(
      Priority => 'error', 
      Message => "Need something!",
   );
 
=cut

sub Log { 
    my $Self = shift;
    my %Param = @_;
    my $Priority = $Param{Priority} || 'debug';
    my $Message = $Param{MSG} || $Param{Message} || '???';
    my $Caller = $Param{Caller} || 0;
    # returns the context of the current subroutine and sub-subroutine!
    my ($Package1, $Filename1, $Line1, $Subroutine1) = caller($Caller+0);
    my ($Package2, $Filename2, $Line2, $Subroutine2) = caller($Caller+1);
    if (!$Subroutine2) {
      $Subroutine2 = $0;
    }
    # log backend
    $Self->{Backend}->Log(
        Priority => $Priority,
        Caller => $Caller,
        Message => $Message,
        LogPrefix => $Self->{LogPrefix},
        Module => $Subroutine2,
        Line => $Line1,
    );
    # if error, write it to STDERR
    if ($Priority =~ /error/i) {
        my $Error = sprintf "ERROR: $Self->{LogPrefix} Perl: %vd OS: $^O Time: ".localtime()."\n\n", $^V;
        $Error .= " Message: $Message\n\n";
        $Error .= " Traceback ($$): \n";
        for (my $i = 0; $i < 12; $i++) {
            my ($Package1, $Filename1, $Line1, $Subroutine1) = caller($Caller+$i);
            my ($Package2, $Filename2, $Line2, $Subroutine2) = caller($Caller+1+$i);
            # if there is no caller module use the file name
            if (!$Subroutine2) {
                $Subroutine2 = $0;
            }
            # print line if upper caller module exists
            if ($Line1) {
                my $Version = eval("\$$Package1". '::VERSION');
                $Error .= "   Module: $Subroutine2 (v$Version) Line: $Line1\n";
            }
            # return if there is no upper caller module
            if (!$Line2) {
                $i = 12;
            }
        }
        $Error .= "\n";
        print STDERR $Error;
        # store data (for the frontend)
        $Self->{Error}->{Message} = $Message;
        $Self->{Error}->{Traceback} = $Error;
    }
    # write shm cache log
    if ($Priority !~ /debug/i && $Self->{IPC}) {
        $Priority = lc($Priority);
        my $Data = localtime().";;$Priority;;$Self->{LogPrefix};;$Subroutine2;;$Line1;;$Message;;\n";
        my $String = $Self->GetLog();
        shmwrite($Self->{Key}, $Data.$String, 0, $Self->{IPCSize}) || die $!;
    }
    return 1;
}
# --
    
=item Error()
    
to get the error back from log
    
  my $Error = $Self->{LogObject}->Error('Message');
 
=cut
    
sub Error {
    my $Self = shift;
    my $What = shift;
    return $Self->{Error}->{$What} || ''; 
}
# --
    
=item GetLog()
    
to get the tmp log data (from shared memory - ipc) in csv form
    
  my $CVSLog = $Self->{LogObject}->GetLog();
 
=cut
    
sub GetLog {
    my $Self = shift;
    my $String = '';
    if ($Self->{IPC}) {
        shmread($Self->{Key}, $String, 0, $Self->{IPCSize}) || die "$!";
    }
    return $String;
}
# --
    
=item CleanUp()
    
to clean up tmp log data from shared memory (ipc)
    
  $Self->{LogObject}->CleanUp();
 
=cut
    
sub CleanUp {
    my $Self = shift;
    if ($Self->{IPC}) {
        if (!shmctl($Self->{Key}, 0, 0)) {
            $Self->Log(
                Priority => 'error',
                Message => "Can't remove shm for log: $!",
            );
            return;
        }
    }
    return 1;
}
# --

1;
