# --
# Kernel/Output/HTML/ArticleCheckSMIME.pm
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: ArticleCheckSMIME.pm,v 1.22 2011-02-07 22:54:52 dz Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::ArticleCheckSMIME;

use strict;
use warnings;

use Kernel::System::Crypt;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.22 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # get needed objects
    for (
        qw(ConfigObject LogObject EncodeObject MainObject DBObject LayoutObject UserID TicketObject ArticleID)
        )
    {
        if ( $Param{$_} ) {
            $Self->{$_} = $Param{$_};
        }
        else {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
        }
    }
    return $Self;
}

sub Check {
    my ( $Self, %Param ) = @_;

    my %SignCheck;
    my @Return;

    # check if smime is enabled
    return if !$Self->{ConfigObject}->Get('SMIME');

    # check if article is an email
    return if $Param{Article}->{ArticleType} !~ /email/i;

    $Self->{CryptObject} = Kernel::System::Crypt->new( %{$Self}, CryptType => 'SMIME' );

    # check inline smime
    if ( $Param{Article}->{Body} =~ /^-----BEGIN PKCS7-----/ ) {
        %SignCheck = $Self->{CryptObject}->Verify( Message => $Param{Article}->{Body} );
        if (%SignCheck) {

            # remember to result
            $Self->{Result} = \%SignCheck;
        }
        else {

            # return with error
            push(
                @Return,
                {
                    Key   => 'Signed',
                    Value => '"S/MIME SIGNED MESSAGE" header found, but invalid!',
                }
            );
        }
    }

    # check smime
    else {

        # get email from fs
        my $Message = $Self->{TicketObject}->ArticlePlain(
            ArticleID => $Self->{ArticleID},
            UserID    => $Self->{UserID},
        );
        use MIME::Parser;
        my $parser = MIME::Parser->new();
        $parser->decode_headers(0);
        $parser->extract_nested_messages(0);
        $parser->output_to_core("ALL");
        my $Entity = $parser->parse_data($Message);
        my $Head   = $Entity->head();
        $Head->unfold();
        $Head->combine('Content-Type');
        my $ContentType = $Head->get('Content-Type');

        if (
            $ContentType
            && $ContentType =~ /application\/(x-pkcs7|pkcs7)-mime/i
            && $ContentType !~ /signed/i
            )
        {

            # if this is already decrypted just skip it
            if ( $Param{Article}->{Body} !~ /\Q- no text message => see attachment -\E/ ) {

                # return info
                return (
                    {
                        Key        => 'Crypted',
                        Value      => 'This message was successfuly dercypted',
                        Successful => 1,
                    }
                );
            }

            # check sender (don't decrypt sent emails)
            if ( $Param{Article}->{SenderType} =~ /(agent|system)/i ) {

                # return info
                return (
                    {
                        Key        => 'Crypted',
                        Value      => 'Sent message crypted to recipient!',
                        Successful => 1,
                    }
                );
            }

            # clean email to search
            my $EmailTo;
            if ( $Param{Article}->{To} =~ m{.*<(.*@.+\.\w+)>}xms ) {
                $EmailTo = $1;
            }
            else {
                $Param{Article}->{To} =~ m{(.*@.+\.\w+)}xms;
                $EmailTo = $1;
            }

            # search private cert to decrypt email
            my @SearchPrivateResult = $Self->{CryptObject}->PrivateSearch( Search => $EmailTo, );

            if ( !@SearchPrivateResult ) {
                push(
                    @Return,
                    {
                        Key => 'Crypted',
                        Value =>
                            "Impossible to decrypt: private key for $EmailTo email doesn't found",
                    }
                );
                return @Return;
            }

            my %Decrypt;
            for my $CertResult (@SearchPrivateResult) {

                # decrypt
                %Decrypt = $Self->{CryptObject}->Decrypt(
                    Message => $Message,
                    %{$CertResult},
                );

                if ( $Decrypt{Successful} ) {

                    # updated article body
                    $Self->{TicketObject}->ArticleUpdate(
                        TicketID  => $Param{Article}->{TicketID},
                        ArticleID => $Self->{ArticleID},
                        Key       => 'Body',
                        Value     => $Decrypt{Data},
                        UserID    => $Self->{UserID},
                    );

                    # delete crypted attachments
                    $Self->{TicketObject}->ArticleDeleteAttachment(
                        ArticleID => $Self->{ArticleID},
                        UserID    => $Self->{UserID},
                    );

                    push(
                        @Return,
                        {
                            Key => 'Crypted',
                            Value => $Decrypt{Message} || 'Successfull decryption',
                            %Decrypt,
                        }
                    );
                    return @Return;
                }
            }
            if ( !$Decrypt{Successful} ) {
                push(
                    @Return,
                    {
                        Key => 'Crypted',
                        Value => $Decrypt{Message} || 'Impossible decrypt, unknown error',
                        %Decrypt,
                    }
                );
            }
        }
        if (
            $ContentType
            && $ContentType =~ /application\/(x-pkcs7|pkcs7)/i
            && $ContentType =~ /signed/i
            )
        {

            # check sign and get clear content
            %SignCheck = $Self->{CryptObject}->Verify( Message => $Message, );

            # parse and update clear content
            if ( %SignCheck && $SignCheck{Successful} && $SignCheck{Content} ) {
                use Kernel::System::EmailParser;

                my @Email = ();
                my @Lines = split( /\n/, $SignCheck{Content} );
                for (@Lines) {
                    push( @Email, $_ . "\n" );
                }
                my $ParserObject = Kernel::System::EmailParser->new( %{$Self}, Email => \@Email, );
                my $Body = $ParserObject->GetMessageBody();

                # updated article body
                $Self->{TicketObject}->ArticleUpdate(
                    TicketID  => $Param{Article}->{TicketID},
                    ArticleID => $Self->{ArticleID},
                    Key       => 'Body',
                    Value     => $Body,
                    UserID    => $Self->{UserID},
                );

                # delete crypted attachments
                $Self->{TicketObject}->ArticleDeleteAttachment(
                    ArticleID => $Self->{ArticleID},
                    UserID    => $Self->{UserID},
                );

                # write attachments to the storage
                for my $Attachment ( $ParserObject->GetAttachments() ) {
                    $Self->{TicketObject}->ArticleWriteAttachment(
                        Content     => $Attachment->{Content},
                        Filename    => $Attachment->{Filename},
                        ContentType => $Attachment->{ContentType},
                        ArticleID   => $Self->{ArticleID},
                        UserID      => $Self->{UserID},
                    );
                }
            }
        }
    }
    if (%SignCheck) {

        # return result
        push(
            @Return,
            {
                Key   => 'Signed',
                Value => $SignCheck{Message},
                %SignCheck,
            }
        );
    }
    return @Return;
}

sub Filter {
    my ( $Self, %Param ) = @_;

    # remove signature if one is found
    if ( $Self->{Result}->{SignatureFound} ) {

        # remove pgp begin signed message
        $Param{Article}->{Body} =~ s/^-----BEGIN\sPKCS7-----.+?Hash:\s.+?$//sm;

        # remove pgp inline sign
        $Param{Article}->{Body} =~ s/^-----END\sPKCS7-----//sm;
    }
    return 1;
}

1;
