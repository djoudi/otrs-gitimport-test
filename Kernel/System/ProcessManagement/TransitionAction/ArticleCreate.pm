# --
# Kernel/System/ProcessManagement/TransitionAction/ArticleCreate.pm - A Module to create an article
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# $Id: ArticleCreate.pm,v 1.2 2012-11-12 18:39:05 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.
# --

package Kernel::System::ProcessManagement::TransitionAction::ArticleCreate;

use strict;
use warnings;
use Kernel::System::VariableCheck qw(:all);

use utf8;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

=head1 NAME

Kernel::System::ProcessManagement::TransitionAction::ArticleCreate - A module to create an article

=head1 SYNOPSIS

All ArticleCreate functions.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create an object

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Time;
    use Kernel::System::Main;
    use Kernel::System::DB;
    use Kernel::System::Ticket;
    use Kernel::System::ProcessManagement::TransitionAction::ArticleCreate;

    my $ConfigObject = Kernel::Config->new();
    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
    );
    my $TimeObject = Kernel::System::Time->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
    );
    my $DBObject = Kernel::System::DB->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );
    my $TicketObject = Kernel::System::Ticket->new(
        ConfigObject       => $ConfigObject,
        LogObject          => $LogObject,
        DBObject           => $DBObject,
        MainObject         => $MainObject,
        TimeObject         => $TimeObject,
        EncodeObject       => $EncodeObject,
    );
    my $ArticleCreateActionObject = Kernel::System::ProcessManagement::TransitionAction::ArticleCreate->new(
        ConfigObject       => $ConfigObject,
        LogObject          => $LogObject,
        EncodeObject       => $EncodeObject,
        DBObject           => $DBObject,
        MainObject         => $MainObject,
        TimeObject         => $TimeObject,
        TicketObject       => $TicketObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for my $Needed (
        qw(ConfigObject LogObject EncodeObject DBObject MainObject TimeObject TicketObject)
        )
    {
        die "Got no $Needed!" if !$Param{$Needed};

        $Self->{$Needed} = $Param{$Needed};
    }

    return $Self;
}

=item Run()

    Run Data

    my $ArticleCreateResult = $ArticleCreateActionObject->Run(
        UserID      => 123,
        Ticket      => \%Ticket, # required
        Config      => {
            # required:
            ArticleType      => 'note-internal',                        # email-external|email-internal|phone|fax|...
            SenderType       => 'agent',                                # agent|system|customer
            ContentType      => 'text/plain; charset=ISO-8859-15',      # or optional Charset & MimeType
            Subject          => 'some short description',               # required
            Body             => 'the message text',                     # required
            HistoryType      => 'OwnerUpdate',                          # EmailCustomer|Move|AddNote|PriorityUpdate|WebRequestCustomer|...
            HistoryComment   => 'Some free text!',

            # optional:
            From             => 'Some Agent <email@example.com>',       # not required but useful
            To               => 'Some Customer A <customer-a@example.com>', # not required but useful
            Cc               => 'Some Customer B <customer-b@example.com>', # not required but useful
            ReplyTo          => 'Some Customer B <customer-b@example.com>', # not required
            MessageID        => '<asdasdasd.123@example.com>',          # not required but useful
            InReplyTo        => '<asdasdasd.12@example.com>',           # not required but useful
            References       => '<asdasdasd.1@example.com> <asdasdasd.12@example.com>', # not required but useful
            NoAgentNotify    => 0,                                      # if you don't want to send agent notifications
            AutoResponseType => 'auto reply'                            # auto reject|auto follow up|auto reply/new ticket|auto remove

            ForceNotificationToUserID   => [ 1, 43, 56 ],               # if you want to force somebody
            ExcludeNotificationToUserID => [ 43,56 ],                   # if you want full exclude somebody from notfications,
                                                                        # will also be removed in To: line of article,
                                                                        # higher prio as ForceNotificationToUserID
            ExcludeMuteNotificationToUserID => [ 43,56 ],               # the same as ExcludeNotificationToUserID but only the
                                                                        # sending gets muted, agent will still shown in To:
                                                                        # line of article
        }
    );
    Ticket contains the result of TicketGet including DynamicFields
    Config is the Config Hash stored in a Process::TransitionAction's  Config key
    Returns:

    $ArticleCreateResult = 1; # 0

    );

=cut

sub Run {
    my ( $Self, %Param ) = @_;

    for my $Needed (qw(UserID Ticket Config)) {
        if ( !defined $Param{$Needed} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Needed!",
            );
            return;
        }
    }

    # Check if we have Ticket to deal with
    if ( !IsHashRefWithData( $Param{Ticket} ) ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Ticket has no values!",
        );
        return;
    }

    # Check if we have a ConfigHash
    if ( !IsHashRefWithData( $Param{Config} ) ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Config has no values!",
        );
        return;
    }

    my $Success = $Self->{TicketObject}->ArticleCreate(
        %{ $Param{Config} },
        TicketID => $Param{Ticket}->{TicketID},
        UserID   => $Param{UserID},
    );

    if ( !$Success ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "Couldn't create article for Ticket: "
                . $Param{Ticket}->{TicketID} . '!',
        );
        return;
    }
    return 1;
}

1;

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=head1 VERSION

$Revision: 1.2 $ $Date: 2012-11-12 18:39:05 $

=cut
