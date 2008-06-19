# --
# Kernel/Modules/AdminAutoResponse.pm - provides AdminAutoResponse HTML
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: AdminAutoResponse.pm,v 1.24 2008-06-19 18:44:32 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::Modules::AdminAutoResponse;

use strict;
use warnings;

use Kernel::System::AutoResponse;
use Kernel::System::SystemAddress;
use Kernel::System::Valid;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.24 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    # check all needed objects
    for (qw(ParamObject DBObject LayoutObject ConfigObject LogObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }
    $Self->{AutoResponseObject}  = Kernel::System::AutoResponse->new(%Param);
    $Self->{SystemAddressObject} = Kernel::System::SystemAddress->new(%Param);
    $Self->{ValidObject}         = Kernel::System::Valid->new(%Param);

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    $Param{Subaction}  = $Self->{Subaction};
    $Param{NextScreen} = 'AdminAutoResponse';

    my @Params = (
        'ID', 'Name', 'Comment', 'ValidID', 'Response', 'Subject',
        'TypeID', 'AddressID', 'Charset',
    );
    my %GetParam;
    for (@Params) {
        $GetParam{$_} = $Self->{ParamObject}->GetParam( Param => $_ ) || '';
    }

    # get composed charset
    $GetParam{Charset} = $Self->{LayoutObject}->{UserCharset};

    # get data
    if ( $Param{Subaction} eq 'Change' ) {
        my $ID = $Self->{ParamObject}->GetParam( Param => 'ID' ) || '';
        my %Data = $Self->{AutoResponseObject}->AutoResponseGet( ID => $ID );
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->_Mask(%Data);
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }

    # update action
    elsif ( $Param{Subaction} eq 'ChangeAction' ) {
        my $Update = $Self->{AutoResponseObject}->AutoResponseUpdate(
            %GetParam,
            UserID => $Self->{UserID},
        );
        if ( !$Update ) {
            return $Self->{LayoutObject}->ErrorScreen();
        }
        return $Self->{LayoutObject}->Redirect( OP => "Action=$Param{NextScreen}" );
    }

    # add new auto response
    elsif ( $Param{Subaction} eq 'AddAction' ) {
        my $Add = $Self->{AutoResponseObject}->AutoResponseAdd(
            %GetParam,
            UserID => $Self->{UserID},
        );
        if ( !$Add ) {
            return $Self->{LayoutObject}->ErrorScreen();
        }
        return $Self->{LayoutObject}->Redirect( OP => "Action=$Param{NextScreen}" );
    }

    # else ! print form
    else {
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->_Mask();
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
}

sub _Mask {
    my ( $Self, %Param ) = @_;

    # build ValidID string
    $Param{ValidOption} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data       => { $Self->{ValidObject}->ValidList(), },
        Name       => 'ValidID',
        SelectedID => $Param{ValidID},
    );

    $Param{AutoResponseOption} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data       => { $Self->{AutoResponseObject}->AutoResponseList(), },
        Name       => 'ID',
        Max        => 75,
        Multiple   => 1,
        SelectedID => $Param{ID},
    );

    $Param{TypeOption} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data       => { $Self->{AutoResponseObject}->AutoResponseTypeList(), },
        Name       => 'TypeID',
        SelectedID => $Param{TypeID},
    );

    $Param{SystemAddressOption} = $Self->{LayoutObject}->OptionStrgHashRef(
        Data => { $Self->{SystemAddressObject}->SystemAddressList( Valid => 1 ), },
        Name       => 'AddressID',
        SelectedID => $Param{AddressID},
    );
    $Param{Subaction} = 'Add' if ( !$Param{Subaction} );
    if ( $Param{Charset} && $Param{Charset} !~ /$Self->{LayoutObject}->{UserCharset}/i ) {
        $Param{Note}
            = '(<i>$Text{"This message was written in a character set other than your own."}</i>)';
    }
    return $Self->{LayoutObject}->Output(
        TemplateFile => 'AdminAutoResponseForm',
        Data         => \%Param
    );
}

1;
