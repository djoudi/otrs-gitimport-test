# --
# Kernel/Modules/AdminQueueAutoResponse.pm - to add/update/delete QueueAutoResponses
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: AdminQueueAutoResponse.pm,v 1.31 2010-04-27 15:59:24 en Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AdminQueueAutoResponse;

use strict;
use warnings;

use Kernel::System::AutoResponse;
use Kernel::System::Queue;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.31 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(ParamObject DBObject QueueObject LayoutObject ConfigObject LogObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    $Self->{AutoResponseObject} = Kernel::System::AutoResponse->new(%Param);
    $Self->{QueueObject}        = Kernel::System::Queue->new(%Param);

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my $Output = '';
    $Param{ID} = $Self->{ParamObject}->GetParam( Param => 'ID' ) || '';
    $Param{ID} = $Self->{DBObject}->Quote( $Param{ID}, 'Integer' ) if ( $Param{ID} );

    if ( $Self->{Subaction} eq 'Change' ) {
        $Output .= $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();

        # get Type Auto Responses data
        my %TypeResponsesData = $Self->{AutoResponseObject}->AutoResponseTypeList();

        # get queue data
        my %QueueData = $Self->{QueueObject}->QueueGet(
            ID => $Param{ID},
        );
        $Self->{LayoutObject}->Block(
            Name => 'Selection',
            Data => {
                Queue => $QueueData{Name},
                %QueueData,
                %Param,
            },
        );
        for my $TypeID ( keys %TypeResponsesData ) {
            my %Data = $Self->{DBObject}->GetTableData(
                Table => 'auto_response ar, auto_response_type art',
                What  => 'ar.id, ar.name',
                Where => " art.id = $TypeID AND ar.type_id = art.id",
            );
            my ( $SelectedID, $Name ) = $Self->{DBObject}->GetTableData(
                Table => 'auto_response ar, auto_response_type art, queue_auto_response qar',
                What  => 'ar.id, ar.name',
                Where => " art.id = $TypeID AND ar.type_id = art.id AND qar.queue_id = $Param{ID} "
                    . "AND qar.auto_response_id = ar.id",
            );
            $Param{DataStrg} = $Self->{LayoutObject}->BuildSelection(
                Name         => "IDs_$TypeID",
                SelectedID   => $SelectedID || '',
                Data         => \%Data,
                Size         => 1,
                PossibleNone => 1,
            );
            $Self->{LayoutObject}->Block(
                Name => 'ChangeItemList',
                Data => {
                    Type   => $TypeResponsesData{$TypeID},
                    TypeID => $TypeID,
                    %Param,
                },
            );
        }
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminQueueAutoResponse',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
    }

    # queues to queue_auto_responses
    elsif ( $Self->{Subaction} eq 'ChangeAction' ) {
        my @NewIDs = ();

        # get Type Auto Responses data
        my %TypeResponsesData = $Self->{AutoResponseObject}->AutoResponseTypeList();

        # Set Autoresponses IDs for this queue.
        for my $TypeID ( keys %TypeResponsesData ) {
            push( @NewIDs, $Self->{ParamObject}->GetParam( Param => "IDs_$TypeID" ) );
        }

        $Self->{AutoResponseObject}->AutoResponseQueue(
            QueueID         => $Param{ID},
            AutoResponseIDs => \@NewIDs,
            UserID          => $Self->{UserID},
        );
        return $Self->{LayoutObject}->Redirect( OP => "Action=$Self->{Action}" );
    }

    # else ! print form
    else {
        $Output .= $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();

        # get queue data
        my %QueueData = $Self->{QueueObject}->QueueList( Valid => 1 );

        $Self->{LayoutObject}->Block(
            Name => 'Overview',
            Data => { %QueueData, %Param, }
        );

        # if there are any queues, they are shown
        if (%QueueData) {
            for ( sort { $QueueData{$a} cmp $QueueData{$b} } keys %QueueData ) {

                $Self->{LayoutObject}->Block(
                    Name => 'Item',
                    Data => {
                        Queue   => $QueueData{$_},
                        QueueID => $_,
                        %QueueData,
                        %Param,
                    },
                );
            }
        }

        # otherwise a no data found msg is displayed
        else {
            $Self->{LayoutObject}->Block(
                Name => 'NoQueuesFoundMsg',
                Data => {},
            );
        }

        # Get Auto Response data.
        my @ResponseData;
        my $SQL
            = "SELECT ar.name, art.name, ar.id FROM "
            . " auto_response ar, auto_response_type art, valid "
            . " WHERE ar.type_id = art.id "
            . " AND ar.valid_id = valid.id AND valid.name = 'valid'"
            ;
        $Self->{DBObject}->Prepare( SQL => $SQL );

        while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
            my %AutoResponseData;
            $AutoResponseData{Name} = $Row[0];
            $AutoResponseData{Type} = $Row[1];
            $AutoResponseData{ID}   = $Row[2];
            push( @ResponseData, \%AutoResponseData );
        }

        # if there are any auto responses, they are shown
        if (@ResponseData) {
            for my $ResponseDataItem (@ResponseData) {
                $Self->{LayoutObject}->Block(
                    Name => 'ItemList',
                    Data => $ResponseDataItem,
                );
            }
        }

        # otherwise a no data found msg is displayed
        else {
            $Self->{LayoutObject}->Block(
                Name => 'NoAutoResponsesFoundMsg',
                Data => {},
            );
        }

        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminQueueAutoResponse',
            Data         => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
    }
    return $Output;
}

1;
