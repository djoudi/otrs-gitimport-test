# --
# Kernel/System/Notification.pm - lib for notifications
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: Notification.pm,v 1.26 2009-04-17 06:17:47 tr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::Notification;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.26 $) [1];

=head1 NAME

Kernel::System::Notification - notification functions

=head1 SYNOPSIS

This module is managing notifications.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a notification object

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Main;
    use Kernel::System::DB;
    use Kernel::System::Notification;

    my $ConfigObject = Kernel::Config->new();

    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
    );

    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
    );
    my $DBObject = Kernel::System::DB->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );

    my $NotificationObject = Kernel::System::Notification->new(
        EncodeObject => $EncodeObject,
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
        DBObject     => $DBObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (qw(ConfigObject LogObject DBObject EncodeObject)) {
        die "Got no $_!" if !$Param{$_};

        $Self->{$_} = $Param{$_};
    }

    return $Self;
}

=item NotificationGet()

get notification attributes

    my %Notification = $NotificationObject->NotificationGet(
        Name => 'de::NewTicket',
    );

=cut

sub NotificationGet {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Name} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need Name!' );
        return;
    }
    my ( $Language, $Type );
    if ( $Param{Name} =~ /^(.+?)::(.*)/ ) {
        $Language = $Self->{DBObject}->Quote($1);
        $Type     = $Self->{DBObject}->Quote($2);
    }

    # db quote
    $Param{ID} = $Self->{DBObject}->Quote( $Param{ID}, 'Integer' );

    # sql
    my $SQL = 'SELECT id, notification_type, notification_charset, '
        . ' notification_language, subject, text, content_type '
        . ' FROM notifications WHERE ';

    if ( $Param{ID} ) {
        $SQL .= " id = $Param{ID}";
    }
    else {
        $SQL .= " notification_type = '$Type' AND notification_language = '$Language'";
    }

    return if !$Self->{DBObject}->Prepare( SQL => $SQL );

    my %Data = ();
    while ( my @Data = $Self->{DBObject}->FetchrowArray() ) {
        if ( $Self->{EncodeObject}->EncodeInternalUsed() ) {

            # convert body
            $Data[5] = $Self->{EncodeObject}->Convert(
                Text  => $Data[5],
                From  => $Data[2],
                To    => $Self->{EncodeObject}->EncodeInternalUsed(),
                Force => 1,
            );

            # convert subject
            $Data[3] = $Self->{EncodeObject}->Convert(
                Text  => $Data[3],
                From  => $Data[2],
                To    => $Self->{EncodeObject}->EncodeInternalUsed(),
                Force => 1,
            );

            # set new charset
            $Data[2] = $Self->{EncodeObject}->EncodeInternalUsed();
        }

        # fix some bad stuff from some browsers (Opera)!
        $Data[5] =~ s/(\n\r|\r\r\n|\r\n|\r)/\n/g;
        %Data = (
            Type        => $Data[1],
            Charset     => $Data[2],
            Language    => $Data[3],
            Subject     => $Data[4],
            Body        => $Data[5],
            ContentType => $Data[6],
        );
    }
    if ( !%Data && !$Param{Loop} ) {
        $Self->{LogObject}->Log(
            Priority => 'notice',
            Message  => "Can't find notification for $Type and $Language, try it again with en!",
        );
        return $Self->NotificationGet( %Param, Name => 'en::' . $Type, Loop => $Language );
    }
    elsif ( !%Data && $Param{Loop} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Can't find notification for $Type and $Language!",
        );
        return;
    }

    return ( %Data, Language => $Param{Loop} || $Language );
}

=item NotificationList()

get notification list

    my %List = $NotificationObject->NotificationList();

=cut

sub NotificationList {
    my ( $Self, %Param ) = @_;

    # sql
    return if !$Self->{DBObject}->Prepare(
        SQL => 'SELECT id, notification_type, notification_charset, '
            . ' notification_language FROM notifications',
    );

    # get languages
    my %Languages = %{ $Self->{ConfigObject}->{DefaultUsedLanguages} };

    # get possible notification types
    my %Types = ();
    while ( my @Data = $Self->{DBObject}->FetchrowArray() ) {
        $Types{ $Data[1] } = 1;
    }
    for (qw(NewTicket FollowUp LockTimeout OwnerUpdate AddNote Move PendingReminder Escalation)) {
        $Types{ 'Agent::' . $_ } = 1;
    }

    # create list
    my %List = ();
    for my $Language ( keys %Languages ) {
        for my $Type ( keys %Types ) {
            $List{ $Language . '::' . $Type } = $Language . '::' . $Type;
        }
    }

    # get real list
    return if !$Self->{DBObject}->Prepare(
        SQL => 'SELECT id, notification_type, notification_charset, '
            . ' notification_language FROM notifications',
    );

    while ( my @Data = $Self->{DBObject}->FetchrowArray() ) {
        $List{ $Data[3] . '::' . $Data[1] } = $Data[3] . '::' . $Data[1];
    }
    return %List;
}

=item NotificationUpdate()

update notification attributes

    $NotificationObject->NotificationUpdate(
        Type        => 'NewTicket',
        Charset     => 'utf-8',
        Language    => 'en',
        Subject     => 'Some Subject with <OTRS_TAGS>',
        Body        => 'Some Body with <OTRS_TAGS>',
        ContentType => 'text/plain',
        UserID      => 123,
    );

=cut

sub NotificationUpdate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Type Charset Language Subject Body ContentType UserID)) {
        if ( !defined( $Param{$_} ) ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # fix some bad stuff from some browsers (Opera)!
    $Param{Body} =~ s/(\n\r|\r\r\n|\r\n|\r)/\n/g;

    # sql
    $Self->{DBObject}->Do(
        SQL => 'DELETE FROM notifications WHERE notification_type = ? '
            . 'AND notification_language = ?',
        Bind => [
            \$Param{Type}, \$Param{Language},
        ],
    );

    # sql
    return $Self->{DBObject}->Prepare(
        SQL => 'INSERT INTO notifications '
            . '(notification_type, notification_charset, notification_language, subject, text, '
            . 'content_type, create_time, create_by, change_time, change_by) '
            . 'VALUES (?, ?, ?, ?, ?, ?, current_timestamp, ?, current_timestamp, ?)',
        Bind => [
            \$Param{Type}, \$Param{Charset},     \$Param{Language}, \$Param{Subject},
            \$Param{Body}, \$Param{ContentType}, \$Param{UserID},   \$Param{UserID},
        ],
    );
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

$Revision: 1.26 $ $Date: 2009-04-17 06:17:47 $

=cut
