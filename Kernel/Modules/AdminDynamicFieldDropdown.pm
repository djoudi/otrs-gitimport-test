# --
# Kernel/Modules/AdminDynamicFieldDropdown.pm - provides a dynamic fields text config view for admins
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: AdminDynamicFieldDropdown.pm,v 1.2 2011-08-22 20:12:12 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Modules::AdminDynamicFieldDropdown;

use strict;
use warnings;

use Kernel::System::VariableCheck qw(:all);
use Kernel::System::Valid;
use Kernel::System::CheckItem;
use Kernel::System::DynamicField;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {%Param};
    bless( $Self, $Type );

    for (qw(ParamObject LayoutObject LogObject ConfigObject)) {
        if ( !$Self->{$_} ) {
            $Self->{LayoutObject}->FatalError( Message => "Got no $_!" );
        }
    }

    # create additional objects
    $Self->{ValidObject} = Kernel::System::Valid->new( %{$Self} );

    $Self->{DynamicFieldObject} = Kernel::System::DynamicField->new( %{$Self} );

    # get configured object types
    $Self->{ObjectTypeConfig} = $Self->{ConfigObject}->Get('DynamicFields::ObjectType');

    # get the fields config
    $Self->{FieldTypeConfig} = $Self->{ConfigObject}->Get('DynamicFields::Backend') || {};

    # set possible values handling strings
    $Self->{EmptyString}     = '_DynamicFields_EmptyString_Dont_Use_It_String_Please';
    $Self->{DuplicateString} = '_DynamicFields_DuplicatedString_Dont_Use_It_String_Please';
    $Self->{DeletedString}   = '_DynamicFields_DeletedString_Dont_Use_It_String_Please';

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    if ( $Self->{Subaction} eq 'Add' ) {
        return $Self->_Add(
            %Param,
        );
    }
    elsif ( $Self->{Subaction} eq 'AddAction' ) {
        return $Self->_AddAction(
            %Param,
        );
    }
    if ( $Self->{Subaction} eq 'Change' ) {
        return $Self->_Change(
            %Param,
        );
    }
    elsif ( $Self->{Subaction} eq 'ChangeAction' ) {
        return $Self->_ChangeAction(
            %Param,
        );
    }
    return $Self->{LayoutObject}->ErrorScreen(
        Message => "Undefined subaction.",
    );
}

sub _Add {
    my ( $Self, %Param ) = @_;

    my %GetParam;
    for my $Needed (qw(ObjectType FieldType)) {
        $GetParam{$Needed} = $Self->{ParamObject}->GetParam( Param => $Needed );
        if ( !$Needed ) {
            return $Self->{LayoutObject}->ErrorScreen(
                Message => "Need $Needed",
            );
        }
    }

    # get the object type and field type display name
    my $ObjectTypeName = $Self->{ObjectTypeConfig}->{ $GetParam{ObjectType} }->{DisplayName} || '';
    my $FieldTypeName  = $Self->{FieldTypeConfig}->{ $GetParam{FieldType} }->{DisplayName}   || '';

    return $Self->_ShowScreen(
        %Param,
        %GetParam,
        Mode           => 'Add',
        ObjectTypeName => $ObjectTypeName,
        FieldTypeName  => $FieldTypeName,
    );
}

sub _AddAction {
    my ( $Self, %Param ) = @_;

    my %Errors;
    my %GetParam;

    for my $Needed (qw(Name Label)) {
        $GetParam{$Needed} = $Self->{ParamObject}->GetParam( Param => $Needed );
        if ( !$GetParam{$Needed} ) {
            $Errors{ $Needed . 'ServerError' }        = 'ServerError';
            $Errors{ $Needed . 'ServerErrorMessage' } = 'This field is required.';
        }
    }

    if ( $GetParam{Name} ) {

        # check if name is lowercase
        if ( $GetParam{Name} !~ m{\A ( ?: [a-z] | \d )+ \Z}xms ) {

            # add server error error class
            $Errors{NameServerError} = 'ServerError';
            $Errors{NameServerErrorMessage} =
                'The field does not contain only lower case letters and numbers.';
        }

        # check if name is duplicated
        my %DynamicFieldsList = %{
            $Self->{DynamicFieldObject}->DynamicFieldList(
                Valid      => 0,
                ResultType => 'HASH',
                )
            };

        %DynamicFieldsList = reverse %DynamicFieldsList;

        if ( $DynamicFieldsList{ $GetParam{Name} } ) {

            # add server error error class
            $Errors{NameServerError}        = 'ServerError';
            $Errors{NameServerErrorMessage} = 'There is another field with the same name.';
        }
    }

    for my $ConfigParam (
        qw(ObjectType ObjectTypeName FieldType DefaultValue TranslatableValues ValidID)
        )
    {
        $GetParam{$ConfigParam} = $Self->{ParamObject}->GetParam( Param => $ConfigParam );
    }

    # uncorrectable errors
    if ( !$GetParam{ValidID} ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Need ValidID",
        );
    }

    my $PossibleValues = $Self->_GetPossibleValues();

    # set errors for possible values entries
    KEY:
    for my $Key ( keys %{$PossibleValues} ) {

        # check for empty original values
        if ( $Key =~ m{\A $Self->{EmptyString} (?: \d+)}smx ) {

            # set a true entry in KeyEmptyError
            $Errors{'PossibleValueErrors'}->{'KeyEmptyError'}->{$Key} = 1;
        }

        # otherwise check for duplicate original values
        elsif ( $Key =~ m{\A (.+) - $Self->{DuplicateString} (?: \d+)}smx ) {

            # set an entry in OrigValueDuplicateError with the duplicate key as value
            $Errors{'PossibleValueErrors'}->{'KeyDuplicateError'}->{$Key} = $1;
        }

        # check for empty new values
        if ( !$PossibleValues->{$Key} ) {

            # set a true entry in NewValueEmptyError
            $Errors{'PossibleValueErrors'}->{'ValueEmptyError'}->{$Key} = 1;
        }
    }

    # return to add screen if errors
    if (%Errors) {
        return $Self->_ShowScreen(
            %Param,
            %Errors,
            %GetParam,
            PossibleValues => $PossibleValues,
            Mode           => 'Add',
        );
    }

    # set specific config
    my $FieldConfig = {
        PossibleValues     => $PossibleValues,
        DefaultValue       => $GetParam{DefaultValue},
        TranslatableValues => $GetParam{TranslatableValues},
    };

    # create a new field
    my $FieldID = $Self->{DynamicFieldObject}->DynamicFieldAdd(
        Name       => $GetParam{Name},
        Label      => $GetParam{Label},
        FieldType  => $GetParam{FieldType},
        ObjectType => $GetParam{ObjectType},
        Config     => $FieldConfig,
        ValidID    => $GetParam{ValidID},
        UserID     => $Self->{UserID},
    );

    if ( !$FieldID ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Could not create the new field",
        );
    }

    # load new URL in parent window and close popup
    return $Self->{LayoutObject}->PopupClose(
        URL => "Action=AdminDynamicField",
    );
}

sub _Change {
    my ( $Self, %Param ) = @_;

    my %GetParam;
    for my $Needed (qw(ObjectType FieldType)) {
        $GetParam{$Needed} = $Self->{ParamObject}->GetParam( Param => $Needed );
        if ( !$Needed ) {
            return $Self->{LayoutObject}->ErrorScreen(
                Message => "Need $Needed",
            );
        }
    }

    # get the object type and field type display name
    my $ObjectTypeName = $Self->{ObjectTypeConfig}->{ $GetParam{ObjectType} }->{DisplayName} || '';
    my $FieldTypeName  = $Self->{FieldTypeConfig}->{ $GetParam{FieldType} }->{DisplayName}   || '';

    my $FieldID = $Self->{ParamObject}->GetParam( Param => 'ID' );

    if ( !$FieldID ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Need ID",
        );
    }

    # get dynamic filed data
    my $DynamicFieldData = $Self->{DynamicFieldObject}->DynamicFieldGet(
        ID => $FieldID,
    );

    # check for valid dynamic field configuration
    if ( !IsHashRefWithData($DynamicFieldData) ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Could not get data for dynamic field $FieldID",
        );
    }

    my %Config = ();

    # extract configuration
    if ( IsHashRefWithData( $DynamicFieldData->{Config} ) ) {

        # set PossibleValues
        $Config{PossibleValues} = {};
        if ( IsHashRefWithData( $DynamicFieldData->{Config}->{PossibleValues} ) ) {
            $Config{PossibleValues} = $DynamicFieldData->{Config}->{PossibleValues};
        }

        # set DefaultValue
        $Config{DefaultValue} = $DynamicFieldData->{Config}->{DefaultValue};

        # set TranslatalbeValues
        $Config{TranslatableValues} = $DynamicFieldData->{Config}->{TranslatableValues};
    }

    return $Self->_ShowScreen(
        %Param,
        %GetParam,
        %${DynamicFieldData},
        %Config,
        ID             => $FieldID,
        Mode           => 'Change',
        ObjectTypeName => $ObjectTypeName,
        FieldTypeName  => $FieldTypeName,
    );
}

sub _ChangeAction {
    my ( $Self, %Param ) = @_;

    my %Errors;
    my %GetParam;

    for my $Needed (qw(Name Label)) {
        $GetParam{$Needed} = $Self->{ParamObject}->GetParam( Param => $Needed );
        if ( !$GetParam{$Needed} ) {
            $Errors{ $Needed . 'ServerError' }        = 'ServerError';
            $Errors{ $Needed . 'ServerErrorMessage' } = 'This field is required.';
        }
    }

    my $FieldID = $Self->{ParamObject}->GetParam( Param => 'ID' );
    if ( !$FieldID ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Need ID",
        );
    }

    if ( $GetParam{Name} ) {

        # check if name is lowercase
        if ( $GetParam{Name} !~ m{\A ( ?: [a-z] | \d )+ \Z}xms ) {

            # add server error error class
            $Errors{NameServerError} = 'ServerError';
            $Errors{NameServerErrorMessage} =
                'The field does not contain only lower case letters and numbers.';
        }

        # check if name is duplicated
        my %DynamicFieldsList = %{
            $Self->{DynamicFieldObject}->DynamicFieldList(
                Valid      => 0,
                ResultType => 'HASH',
                )
            };

        %DynamicFieldsList = reverse %DynamicFieldsList;

        if (
            $DynamicFieldsList{ $GetParam{Name} } &&
            $DynamicFieldsList{ $GetParam{Name} } ne $FieldID
            )
        {

            # add server error class
            $Errors{NameServerError}        = 'ServerError';
            $Errors{NameServerErrorMessage} = 'There is another field with the same name.';
        }
    }

    for my $ConfigParam (
        qw(ObjectType ObjectTypeName FieldType DefaultValue TranslatableValues ValidID)
        )
    {
        $GetParam{$ConfigParam} = $Self->{ParamObject}->GetParam( Param => $ConfigParam );
    }

    # uncorrectable errors
    if ( !$GetParam{ValidID} ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Need ValidID",
        );
    }

    # get dynamic filed data
    my $DynamicFieldData = $Self->{DynamicFieldObject}->DynamicFieldGet(
        ID => $FieldID,
    );

    # check for valid dynamic field configuration
    if ( !IsHashRefWithData($DynamicFieldData) ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Could not get data for dynamic field $FieldID",
        );
    }

    my $PossibleValues = $Self->_GetPossibleValues();

    # set errors for possible values entries
    KEY:
    for my $Key ( keys %{$PossibleValues} ) {

        # check for empty original values
        if ( $Key =~ m{\A $Self->{EmptyString} (?: \d+)}smx ) {

            # set a true entry in KeyEmptyError
            $Errors{'PossibleValueErrors'}->{'KeyEmptyError'}->{$Key} = 1;
        }

        # otherwise check for duplicate original values
        elsif ( $Key =~ m{\A (.+) - $Self->{DuplicateString} (?: \d+)}smx ) {

            # set an entry in OrigValueDuplicateError with the duplicate key as value
            $Errors{'PossibleValueErrors'}->{'KeyDuplicateError'}->{$Key} = $1;
        }

        # check for empty new values
        if ( !$PossibleValues->{$Key} ) {

            # set a true entry in NewValueEmptyError
            $Errors{'PossibleValueErrors'}->{'ValueEmptyError'}->{$Key} = 1;
        }
    }

    # return to change screen if errors
    if (%Errors) {
        return $Self->_ShowScreen(
            %Param,
            %Errors,
            %GetParam,
            PossibleValues => $PossibleValues,
            ID             => $FieldID,
            Mode           => 'Change',
        );
    }

    # set specific config
    my $FieldConfig = {
        PossibleValues     => $PossibleValues,
        DefaultValue       => $GetParam{DefaultValue},
        TranslatableValues => $GetParam{TranslatableValues},
    };

    # update dynamic field (FieldType and ObjectType cannot be changed; use old values)
    my $UpdateSuccess = $Self->{DynamicFieldObject}->DynamicFieldUpdate(
        ID         => $FieldID,
        Name       => $GetParam{Name},
        Label      => $GetParam{Label},
        FieldType  => $DynamicFieldData->{FieldType},
        ObjectType => $DynamicFieldData->{ObjectType},
        Config     => $FieldConfig,
        ValidID    => $GetParam{ValidID},
        UserID     => $Self->{UserID},
    );

    if ( !$UpdateSuccess ) {
        return $Self->{LayoutObject}->ErrorScreen(
            Message => "Could not update the field $GetParam{Name}",
        );
    }

    # load new URL in parent window and close popup
    return $Self->{LayoutObject}->PopupClose(
        URL => "Action=AdminDynamicField",
    );
}

sub _ShowScreen {
    my ( $Self, %Param ) = @_;

    $Param{DisplayFieldName} = 'New';

    if ( $Param{Mode} eq 'Change' ) {
        $Param{ShowWarning}      = 'ShowWarning';
        $Param{DisplayFieldName} = $Param{Name};
    }

    $Param{DeletedString} = $Self->{DeletedString};

    # header
    my $Output = $Self->{LayoutObject}->Header( Type => 'Small' );

    my %ValidList = $Self->{ValidObject}->ValidList();

    # create the Validity select
    my $ValidityStrg = $Self->{LayoutObject}->BuildSelection(
        Data         => \%ValidList,
        Name         => 'ValidID',
        SelectedID   => $Param{ValidID} || 1,
        PossibleNone => 0,
        Translate    => 1,
    );

    # define as 0 to get the real value in the HTML
    my $ValueCounter = 0;

    # set PossibleValues
    my %PossibleValues;
    if ( IsHashRefWithData( $Param{PossibleValues} ) ) {
        %PossibleValues = %{ $Param{PossibleValues} };
    }

    # output the possible values and errors within (if any)
    for my $Key ( sort keys %PossibleValues ) {

        $ValueCounter++;

        # needed for server side validation
        my $KeyError;
        my $KeyErrorStrg;
        my $ValueError;

        # to set the correct original value
        my $KeyClone = $Key;

        # check for errors
        if ( $Param{'PossibleValueErrors'} ) {

            # check for errors on original value (empty)
            if ( $Param{'PossibleValueErrors'}->{'KeyEmptyError'}->{$Key} ) {

                # if the original value was empty it has been changed in _GetParams to a predefined
                # string and need to be set to empty again
                $KeyClone = '';

                # set the error class
                $KeyError     = 'ServerError';
                $KeyErrorStrg = 'This field is required.'
            }

            # check for errors on original value (duplicate)
            elsif ( $Param{'PossibleValueErrors'}->{'KeyDuplicateError'}->{$Key} ) {

                # if the original value was empty it has been changed in _GetParams to a predefined
                # string and need to be set to the original value again
                $KeyClone
                    = $Param{'PossibleValueErrors'}->{'KeyDuplicateError'}->{$Key};

                # set the error class
                $KeyError     = 'ServerError';
                $KeyErrorStrg = 'This field value is duplicated.'
            }

            # check for error on value
            if ( $Param{'PossibleValueErrors'}->{'ValueEmptyError'}->{$Key} ) {

                # set the error class
                $ValueError = 'ServerError';
            }
        }

        # create a value map row
        $Self->{LayoutObject}->Block(
            Name => 'ValueRow',
            Data => {
                KeyError     => $KeyError,
                KeyErrorStrg => $KeyErrorStrg || 'This field is required.',
                Key          => $KeyClone,
                ValueCounter => $ValueCounter,
                Value        => $PossibleValues{$Key},
                ValueError   => $ValueError,
            },
        );
    }

    # create the possible values template
    $Self->{LayoutObject}->Block(
        Name => 'ValueTemplate',
        Data => {
            %Param,
        },
    );

    # check and bould the Default Value list based on Possible Values
    my %DefaultValuesList;
    POSSIBLEVALUE:
    for my $ValueItem ( keys %PossibleValues ) {
        next POSSIBLEVALUE if !$ValueItem;
        next POSSIBLEVALUE if !$PossibleValues{$ValueItem};
        $DefaultValuesList{$ValueItem} = $PossibleValues{$ValueItem}
    }

    my $DefaultValue = $Param{DefaultValue} || '';

    # create the default value select
    my $DefaultValueStrg = $Self->{LayoutObject}->BuildSelection(
        Data         => \%DefaultValuesList,
        Name         => 'DefaultValue',
        SelectedID   => $DefaultValue,
        PossibleNone => 1,

        # Don't make is translatable because this will confuse the user (also current JS
        # prepared for it not prepered)
        Translate => 0,

        # Multiple selections are currently not supported
        Multiple => 0,
        Class    => 'W50pc',
    );

    my $TranslatableValues = $Param{TranslatableValues} || '0';

    # create translatable values option list
    my $TranslatableValuesStrg = $Self->{LayoutObject}->BuildSelection(
        Data => {
            0 => 'No',
            1 => 'Yes',
        },
        Name       => 'TranslatableValues',
        SelectedID => $TranslatableValues,
        Class      => 'W50pc',
    );

    # generate output
    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'AdminDynamicFieldDropdown',
        Data         => {
            %Param,
            ValidityStrg           => $ValidityStrg,
            ValueCounter           => $ValueCounter,
            DefaultValueStrg       => $DefaultValueStrg,
            TranslatableValuesStrg => $TranslatableValuesStrg,
            }
    );

    $Output .= $Self->{LayoutObject}->Footer();

    return $Output;
}

sub _GetPossibleValues {
    my ( $Self, %Param ) = @_;

    my $PossibleValueConfig;

    # get parameters from web browser
    # get ValueCounters
    my $ValueCounter          = $Self->{ParamObject}->GetParam( Param => 'ValueCounter' ) || '';
    my $EmptyValueCounter     = 0;
    my $DuplicateValueCounter = 0;

    # get possible values
    my $Values;
    VALUEINDEX:
    for my $ValueIndex ( 1 .. $ValueCounter ) {
        my $Key = $Self->{ParamObject}->GetParam( Param => 'Key' . '_' . $ValueIndex ) || '';

        # check if key was deleted by the user and skip it
        next VALUEINDEX if $Key eq $Self->{DeletedString};

        # check if the original value is empty
        if ( $Key eq '' ) {

            # change the empty value to a predefined string
            $Key = $Self->{EmptyString} . int $EmptyValueCounter;
            $EmptyValueCounter++;
        }

        # otherwise check for duplicate
        elsif ( exists $PossibleValueConfig->{$Key} ) {

            # append a predefined unique string to make this value unique
            $Key .= '-' . $Self->{DuplicateString} . $DuplicateValueCounter;
            $DuplicateValueCounter++;
        }

        my $Value = $Self->{ParamObject}->GetParam( Param => 'Value' . '_' . $ValueIndex ) || '';
        $PossibleValueConfig->{$Key} = $Value;
    }
    return $PossibleValueConfig;
}

1;
