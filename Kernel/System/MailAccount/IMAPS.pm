# --
# Kernel/System/MailAccount/IMAPS.pm - lib for imap accounts
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: IMAPS.pm,v 1.2 2008-05-08 09:36:21 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::System::MailAccount::IMAPS;

use strict;
use warnings;
use Net::IMAP::Simple::SSL;
use Kernel::System::PostMaster;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(DBObject LogObject ConfigObject TimeObject MainObject)) {
        die "Got no $_" if !$Self->{$_};
    }

    return $Self;
}

sub Fetch {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Login Password Host Trusted QueueID)) {
        if ( !defined $Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "$_ not defined!" );
            return;
        }
    }
    for (qw(Login Password Host)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    my $Debug = $Param{Debug} || 0;
    my $Limit = $Param{Limit} || 5000;
    my $CMD   = $Param{CMD}   || 0;

    # MaxEmailSize
    my $MaxEmailSize = $Self->{ConfigObject}->Get('PostMasterMaxEmailSize') || 1024 * 6;

    # MaxPopEmailSession
    my $MaxPopEmailSession = $Self->{ConfigObject}->Get('PostMasterReconnectMessage') || 20;

    my $Timeout      = 60;
    my $FetchCounter = 0;
    my $Reconnect    = 0;
    my $AuthType     = 'IMAPS';

    # connect to host
    my $IMAPObject
        = Net::IMAP::Simple::SSL->new( $Param{Host}, timeout => $Timeout, debug => $Debug );
    if ( !$IMAPObject ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "$AuthType: Can't connect to $Param{Host}",
        );
        return;
    }

    # authentcation
    my $Auth = $IMAPObject->login( $Param{Login}, $Param{Password} );
    if ( !defined $Auth ) {
        $IMAPObject->quit();
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "$AuthType: Auth for user $Param{Login}/$Param{Host} failed!",
        );
        return;
    }
    my $NOM = $IMAPObject->select('INBOX');

    # fetch messages
    if ( $NOM > 0 ) {
        for ( my $Messageno = 1; $Messageno <= $NOM; $Messageno++ ) {

            # check if reconnect is needed
            if ( ( $FetchCounter + 1 ) > $MaxPopEmailSession ) {
                $Reconnect = 1;
                if ($CMD) {
                    print "$AuthType: Reconnect Session after $MaxPopEmailSession messages...\n";
                }
                last;
            }
            if ($CMD) {
                print "$AuthType: Message $Messageno/$NOM ($Param{Login}/$Param{Host})\n";
            }

            # check message size
            my $MessageSize = int( $IMAPObject->list($Messageno) / 1024 );
            if ( $MessageSize > $MaxEmailSize ) {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message =>
                        "$AuthType: Can't fetch email $NOM from $Param{Login}/$Param{Host}. Email to "
                        . "big ($MessageSize KB - max $MaxEmailSize KB)!",
                );
            }
            else {

                # safety protection
                $FetchCounter++;
                if ( $FetchCounter > 10 && $FetchCounter < 25 ) {
                    if ($CMD) {
                        print
                            "$AuthType: Safety protection waiting 2 second till processing next mail...\n";
                    }
                    sleep 2;
                }
                elsif ( $FetchCounter > 25 ) {
                    if ($CMD) {
                        print
                            "$AuthType: Safety protection waiting 3 seconds till processing next mail...\n";
                    }
                    sleep 3;
                }

                # get message (header and body)
                my $Lines            = $IMAPObject->get($Messageno);
                my $PostMasterObject = Kernel::System::PostMaster->new(
                    %{$Self},
                    Email   => $Lines,
                    Trusted => $Param{Trusted} || 0,
                    Debug   => $Debug,
                );
                my @Return = $PostMasterObject->Run( QueueID => $Param{QueueID} || 0 );
                if ( !$Return[0] ) {
                    $Self->{LogObject}->Log(
                        Priority => 'error',
                        Message  => "$AuthType: Can't process mail, see log sub system!",
                    );
                }
                undef $PostMasterObject;
                $IMAPObject->delete($Messageno);

                # check limit
                $Self->{Limit}++;
                if ( $Self->{Limit} >= $Limit ) {
                    $Reconnect = 0;
                    last;
                }
            }
            if ($CMD) {
                print "\n";
            }
        }
    }
    else {
        if ($CMD) {
            print "$AuthType: No messages ($Param{Login}/$Param{Host})\n";
        }
    }

    # log status
    if ( $Debug > 0 || $FetchCounter ) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message => "$AuthType: Fetched $FetchCounter email(s) from $Param{Login}/$Param{Host}.",
        );
    }
    $IMAPObject->expunge_mailbox('INBOX');
    $IMAPObject->quit();
    if ($CMD) {
        print "$AuthType: Connection to $Param{Host} closed.\n\n";
    }

    # fetch again if still messages on the account
    if ($Reconnect) {
        $Self->Fetch(%Param);
    }
    return 1;
}

1;
