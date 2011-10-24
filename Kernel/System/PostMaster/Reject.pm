# --
# Kernel/System/PostMaster/Reject.pm - the sub part of PostMaster.pm
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: Reject.pm,v 1.16 2011-10-24 20:28:44 cg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::PostMaster::Reject;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.16 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    $Self->{Debug} = $Param{Debug} || 0;

    # check needed Objects
    for (qw(DBObject ConfigObject TicketObject LogObject ParserObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TicketID InmailUserID GetParam Tn AutoResponseType)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    my %GetParam = %{ $Param{GetParam} };

    # get ticket data
    my %Ticket = $Self->{TicketObject}->TicketGet( TicketID => $Param{TicketID} );

    my $Comment          = $Param{Comment}          || '';
    my $Lock             = $Param{Lock}             || '';
    my $AutoResponseType = $Param{AutoResponseType} || '';

    # do db insert
    my $ArticleID = $Self->{TicketObject}->ArticleCreate(
        TicketID         => $Param{TicketID},
        ArticleType      => $GetParam{'X-OTRS-ArticleType'},
        SenderType       => $GetParam{'X-OTRS-SenderType'},
        From             => $GetParam{From},
        ReplyTo          => $GetParam{ReplyTo},
        To               => $GetParam{To},
        Cc               => $GetParam{Cc},
        Subject          => $GetParam{Subject},
        MessageID        => $GetParam{'Message-ID'},
        InReplyTo        => $GetParam{'In-Reply-To'},
        References       => $GetParam{'References'},
        ContentType      => $GetParam{'Content-Type'},
        Body             => $GetParam{Body},
        UserID           => $Param{InmailUserID},
        HistoryType      => 'FollowUp',
        HistoryComment   => "\%\%$Param{Tn}\%\%$Comment",
        AutoResponseType => $AutoResponseType,
        OrigHeader       => \%GetParam,
    );
    if ( !$ArticleID ) {
        return;
    }

    # debug
    if ( $Self->{Debug} > 0 ) {
        print "Reject Follow up Ticket\n";
        print "TicketNumber: $Param{Tn}\n";
        print "From: $GetParam{From}\n";
        print "ReplyTo: $GetParam{ReplyTo}\n" if ( $GetParam{ReplyTo} );
        print "To: $GetParam{To}\n";
        print "Cc: $GetParam{Cc}\n" if ( $GetParam{Cc} );
        print "Subject: $GetParam{Subject}\n";
        print "MessageID: $GetParam{'Message-ID'}\n";
        print "SenderType: $GetParam{'X-OTRS-SenderType'}\n";
        print "ArticleType: $GetParam{'X-OTRS-ArticleType'}\n";
    }

    # write plain email to the storage
    $Self->{TicketObject}->ArticleWritePlain(
        ArticleID => $ArticleID,
        Email     => $Self->{ParserObject}->GetPlainEmail(),
        UserID    => $Param{InmailUserID},
    );

    # write attachments to the storage
    for my $Attachment ( $Self->{ParserObject}->GetAttachments() ) {
        $Self->{TicketObject}->ArticleWriteAttachment(
            Filename           => $Attachment->{Filename},
            Content            => $Attachment->{Content},
            ContentType        => $Attachment->{ContentType},
            ContentID          => $Attachment->{ContentID},
            ContentAlternative => $Attachment->{ContentAlternative},
            ArticleID          => $ArticleID,
            UserID             => $Param{InmailUserID},
        );
    }

    #    # set free article text
    #    my @Values = ( 'X-OTRS-FollowUp-ArticleKey', 'X-OTRS-FollowUp-ArticleValue' );
    #    my $CounterTmp = 0;
    #    while ( $CounterTmp <= 3 ) {
    #        $CounterTmp++;
    #        if ( $GetParam{"$Values[0]$CounterTmp"} ) {
    #            $Self->{TicketObject}->ArticleFreeTextSet(
    #                TicketID  => $Param{TicketID},
    #                ArticleID => $ArticleID,
    #                Key       => $GetParam{"$Values[0]$CounterTmp"},
    #                Value     => $GetParam{"$Values[1]$CounterTmp"},
    #                Counter   => $CounterTmp,
    #                UserID    => $Param{InmailUserID},
    #            );
    #            if ( $Self->{Debug} > 0 ) {
    #                print "ArticleKey$CounterTmp: " . $GetParam{"$Values[0]$CounterTmp"} . "\n";
    #                print "ArticleValue$CounterTmp: " . $GetParam{"$Values[1]$CounterTmp"} . "\n";
    #            }
    #
    #        }
    #    }

    # dynamic fields
    my $DynamicFieldList =
        $Self->{TicketObject}->{DynamicFieldObject}->DynamicFieldList(
        Valid      => 0,
        ResultType => 'HASH',
        ObjectType => 'Article'
        );

    # set dynamic fields for Article object type
    for my $DynamicField ( sort keys %{$DynamicFieldList} ) {
        my $Key = 'X-OTRS-DynamicField-' . $DynamicField;
        if ( $GetParam{$Key} ) {

            # get dynamic field config
            my $DynamicFieldGet
                = $Self->{TicketObject}->{DynamicFieldBackendObject}->DynamicFieldGet(
                ID => $DynamicField,
                );

            $Self->{TicketObject}->{DynamicFieldBackendObject}->ValueSet(
                DynamicFieldConfig => $DynamicFieldGet->{Config},
                ObjectID           => $ArticleID,
                Value              => $GetParam{$Key},
                UserID             => $Param{InmailUserID},
            );

            if ( $Self->{Debug} > 0 ) {
                print "$Key: " . $GetParam{$Key} . "\n";
            }
        }
    }

    # reverse dynamic field list
    my %DynamicFieldListReversed = reverse %{$DynamicFieldList};

    # set free article text
    my %Values =
        (
        'X-OTRS-FollowUp-ArticleKey'   => 'ArticleFreeKey',
        'X-OTRS-FollowUp-ArticleValue' => 'ArticleFreeText',
        );
    for my $Item ( sort keys %Values ) {
        for my $Count ( 1 .. 16 ) {
            my $Key = $Item . $Count;
            if ( $GetParam{$Key} ) {

                # get dynamic field config
                my $DynamicFieldGet = $Self->{TicketObject}->{DynamicFieldObject}->DynamicFieldGet(
                    ID => $DynamicFieldListReversed{ $Values{$Item} . $Count },
                );
                if ($DynamicFieldGet) {
                    my $Success = $Self->{TicketObject}->{DynamicFieldBackendObject}->ValueSet(
                        DynamicFieldConfig => $DynamicFieldGet,
                        ObjectID           => $ArticleID,
                        Value              => $GetParam{$Key},
                        UserID             => $Param{InmailUserID},
                    );
                }

                if ( $Self->{Debug} > 0 ) {
                    print "TicketKey$Count: " . $GetParam{$Key} . "\n";
                }
            }
        }
    }

    # write log
    $Self->{LogObject}->Log(
        Priority => 'notice',
        Message  => "Reject FollowUp Article to Ticket [$Param{Tn}] created "
            . "(TicketID=$Param{TicketID}, ArticleID=$ArticleID). $Comment"
    );

    return 1;
}

1;
