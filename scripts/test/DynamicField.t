# --
# DynamicField.t - DynamicField tests
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: DynamicField.t,v 1.19 2011-08-29 21:44:49 cr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.
# --

use strict;
use warnings;
use utf8;
use vars (qw($Self));

use Kernel::System::DynamicField;
use Kernel::System::UnitTest::Helper;

my $HelperObject = Kernel::System::UnitTest::Helper->new(
    %$Self,
    UnitTestObject => $Self,
);

my $RandomID = $HelperObject->GetRandomID();

$RandomID =~ s/\-//g;

# set $UserId
my $UserID = 1;

my $DynamicFieldObject = Kernel::System::DynamicField->new( %{$Self} );

my @Tests = (
    {
        Name          => 'test1',
        SuccessAdd    => 1,
        SuccessUpdate => 1,
        Add           => {
            Config => {
                Name        => 'AnyName',
                Description => 'Description for Dynamic Field.',
            },
            Label      => 'something for label',
            FieldOrder => 10000,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 1,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test2',
        SuccessAdd    => 1,
        SuccessUpdate => 1,
        Add           => {
            Config => {
                Name        => '!"§$%&/()=?Ü*ÄÖL:L@,.-',
                Description => 'Description for Dynamic Field.',
            },
            Label      => '!"§$%&/()=?Ü*ÄÖL:L@,.-',
            FieldOrder => 10000,
            FieldType  => 'Date',
            ObjectType => 'Ticket',
            ValidID    => 1,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test3',
        SuccessAdd    => 1,
        SuccessUpdate => 1,
        Add           => {
            Config => {
                Name        => 'OtherName',
                Description => 'Description for Dynamic Field.',
            },
            Label      => 'alabel',
            FieldOrder => 10000,
            FieldType  => 'Text',
            ObjectType => 'Ticket',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test4',
        SuccessAdd    => 1,
        SuccessUpdate => 1,
        Add           => {
            Config     => {},
            Label      => 'nothing interesting',
            FieldOrder => 10000,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test5',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Add           => {
            Config     => undef,
            Label      => 'label',
            FieldOrder => 10000,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test6',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Add           => {
            Config => {
                Name        => 'OtherName',
                Description => 'Description for Dynamic Field.',
            },
            Label      => '',
            FieldOrder => 10000,
            FieldType  => 'Text',
            ObjectType => 'Ticket',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test7',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Add           => {
            Config => {
                Name        => 'OtherName',
                Description => 'Description for Dynamic Field.',
            },
            Label      => 'Other label',
            FieldOrder => 10000,
            FieldType  => '',
            ObjectType => 'Article',
            ValidID    => 1,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test8',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Add           => {
            Config => {
                Name        => 'OtherName',
                Description => 'Description for Dynamic Field.',
            },
            Label      => 'Complex label',
            FieldOrder => 10000,
            FieldType  => 'Int',
            ObjectType => '',
            ValidID    => 1,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test9',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Add           => {
            Config => {
                Name        => 'NameTwo',
                Description => 'Description for Dynamic Field.',
            },
            Label      => 'Simple Label',
            FieldType  => 'Text',
            FieldOrder => 10000,
            ObjectType => 'Ticket',
            ValidID    => '',
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test10',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Add           => {
            Config => {
                Name        => 'Config Name',
                Description => 'Description for Dynamic Field.',
            },
            Label      => 'Other label',
            FieldOrder => 10000,
            FieldType  => 'Text',
            ObjectType => 'Ticket',
            ValidID    => 1,
            UserID     => '',
        },
    },
    {
        Name          => 'Test 11',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Add           => {
            Config => {
                Name        => 'Config Name',
                Description => 'Description for Dynamic Field.',
            },
            Label      => 'Other label',
            FieldOrder => 10000,
            FieldType  => 'Text',
            ObjectType => 'Ticket',
            ValidID    => 1,
            UserID     => $UserID,
        },
    },
    {
        Name          => 'Test1',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Add           => {
            Config => {
                Name        => 'AnyName',
                Description => 'Description for Dynamic Field.',
            },
            Label      => 'something for label',
            FieldOrder => 10000,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 1,
            UserID     => $UserID,
        },
    },
);

my $OriginalDynamicFields = $DynamicFieldObject->DynamicFieldListGet( Valid => 0 );

my @DynamicFieldIDs;
for my $Test (@Tests) {

    # add config
    my $DynamicFieldID = $DynamicFieldObject->DynamicFieldAdd(
        Name => $Test->{Name} . $RandomID,
        %{ $Test->{Add} }
    );
    if ( !$Test->{SuccessAdd} ) {
        $Self->False(
            $DynamicFieldID,
            "$Test->{Name} - DynamicFieldAdd()",
        );
        next;
    }
    else {
        $Self->True(
            $DynamicFieldID,
            "$Test->{Name} - DynamicFieldAdd()",
        );
    }

    # remember id to delete it later
    push @DynamicFieldIDs, $DynamicFieldID;

    # get config
    my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
        ID => $DynamicFieldID,
    );

    # verify config
    $Self->Is(
        $Test->{Name} . $RandomID,
        $DynamicField->{Name},
        "$Test->{Name} - DynamicFieldGet()",
    );
    $Self->IsDeeply(
        $DynamicField->{Config},
        $Test->{Add}->{Config},
        "$Test->{Name} - DynamicFieldGet() - Config",
    );

    my $DynamicFieldByName = $DynamicFieldObject->DynamicFieldGet(
        Name => $Test->{Name} . $RandomID,
    );

    $Self->IsDeeply(
        \$DynamicFieldByName,
        \$DynamicField,
        "$Test->{Name} - DynamicFieldGet() with Name parameter result",
    );

    # get config from cache
    my $DynamicFieldFromCache = $DynamicFieldObject->DynamicFieldGet(
        ID => $DynamicFieldID,
    );

    # verify config from cache
    $Self->Is(
        $Test->{Name} . $RandomID,
        $DynamicFieldFromCache->{Name},
        "$Test->{Name} - DynamicFieldGet() from cache",
    );
    $Self->IsDeeply(
        $DynamicFieldFromCache->{Config},
        $Test->{Add}->{Config},
        "$Test->{Name} - DynamicFieldGet() from cache- Config",
    );

    $Self->IsDeeply(
        $DynamicField,
        $DynamicFieldFromCache,
        "$Test->{Name} - DynamicFieldGet() - Cache and DB",
    );

    my $DynamicFieldByNameFromCache = $DynamicFieldObject->DynamicFieldGet(
        Name => $Test->{Name} . $RandomID,
    );

    $Self->IsDeeply(
        \$DynamicFieldByNameFromCache,
        \$DynamicFieldFromCache,
        "$Test->{Name} - DynamicFieldGet() with Name parameter result from cache",
    );

    # update config with a modification
    if ( !$Test->{Update} ) {
        $Test->{Update} = $Test->{Add};
    }
    my $Success = $DynamicFieldObject->DynamicFieldUpdate(
        ID   => $DynamicFieldID,
        Name => $Test->{Name} . $RandomID,
        %{ $Test->{Update} }
    );
    if ( !$Test->{SuccessUpdate} ) {
        $Self->False(
            $Success,
            "$Test->{Name} - DynamicFieldUpdate() False",
        );
        next;
    }
    else {
        $Self->True(
            $Success,
            "$Test->{Name} - DynamicFieldUpdate() True",
        );
    }

    # get config
    $DynamicField = $DynamicFieldObject->DynamicFieldGet(
        ID     => $DynamicFieldID,
        UserID => 1,
    );

    # verify config
    $Self->Is(
        $Test->{Name} . $RandomID,
        $DynamicField->{Name},
        "$Test->{Name} - DynamicFieldGet()",
    );
    $Self->IsDeeply(
        $DynamicField->{Config},
        $Test->{Update}->{Config},
        "$Test->{Name} - DynamicFieldGet() - Config",
    );

    $DynamicFieldByName = $DynamicFieldObject->DynamicFieldGet(
        Name => $Test->{Name} . $RandomID,
    );

    $Self->IsDeeply(
        \$DynamicFieldByName,
        \$DynamicField,
        "$Test->{Name} - DynamicFieldGet() with Name parameter result",
    );

    # verify if cache was also updated
    if ( $Test->{SuccessUpdate} ) {
        my $DynamicFieldUpdateFromCache = $DynamicFieldObject->DynamicFieldGet(
            ID     => $DynamicFieldID,
            UserID => 1,
        );

        # verify config from cache
        $Self->Is(
            $Test->{Name} . $RandomID,
            $DynamicFieldUpdateFromCache->{Name},
            "$Test->{Name} - DynamicFieldGet() from cache",
        );
        $Self->IsDeeply(
            $DynamicFieldUpdateFromCache->{Config},
            $Test->{Update}->{Config},
            "$Test->{Name} - DynamicFieldGet() from cache- Config",
        );
    }
}

# list check from DB
my $DynamicFieldList = $DynamicFieldObject->DynamicFieldList( Valid => 0, ResultType => 'HASH' );
for my $DynamicFieldID (@DynamicFieldIDs) {
    $Self->True(
        scalar $DynamicFieldList->{$DynamicFieldID},
        "DynamicFieldList() from DB found DynamicField $DynamicFieldID",
    );
}

# list check from cache
$DynamicFieldList = $DynamicFieldObject->DynamicFieldList( Valid => 0, ResultType => 'HASH' );
for my $DynamicFieldID (@DynamicFieldIDs) {
    $Self->True(
        scalar $DynamicFieldList->{$DynamicFieldID},
        "DynamicFieldList() from Cache found DynamicField $DynamicFieldID",
    );
}

# Dynamic Field List Get
$DynamicFieldList = $DynamicFieldObject->DynamicFieldList( Valid => 0 );
my @Data;
for my $DynamicFieldID ( @{$DynamicFieldList} ) {
    my $DynamicFieldGet = $DynamicFieldObject->DynamicFieldGet(
        ID => $DynamicFieldID,
    );
    push @Data, $DynamicFieldGet;
}

# list get check from DB
my $DynamicFieldListGet = $DynamicFieldObject->DynamicFieldListGet( Valid => 0 );
$Self->IsDeeply(
    $DynamicFieldListGet,
    \@Data,
    "DynamicFieldListGet() from DB found DynamicField ",
);

# list get check from cache
$DynamicFieldListGet = $DynamicFieldObject->DynamicFieldListGet( Valid => 0 );
$Self->IsDeeply(
    $DynamicFieldListGet,
    \@Data,
    "DynamicFieldListGet() from Cache found DynamicField ",
);

# list get check from DB for object type Test
$DynamicFieldListGet = $DynamicFieldObject->DynamicFieldListGet(
    Valid      => 0,
    ObjectType => 'Test'
);
$Self->IsDeeply(
    $DynamicFieldListGet,
    [],
    "DynamicFieldListGet() from DB Empty for ObjetType Test ",
);

# list get check from cache for object type Test
$DynamicFieldListGet = $DynamicFieldObject->DynamicFieldListGet(
    Valid      => 0,
    ObjectType => 'Test'
);
$Self->IsDeeply(
    $DynamicFieldListGet,
    [],
    "DynamicFieldListGet() from cache Empty for ObjetType Test ",
);

# list check from DB for object type Test
$DynamicFieldList = $DynamicFieldObject->DynamicFieldList(
    Valid      => 0,
    ObjectType => 'Test',
);
$Self->Is(
    scalar @{$DynamicFieldList},
    0,
    "DynamicFieldList() from DB empty for FieldType Test ",
);

# list check from Cache for object type Test
$DynamicFieldList = $DynamicFieldObject->DynamicFieldList(
    Valid      => 0,
    ObjectType => 'Test',
);
$Self->Is(
    scalar @{$DynamicFieldList},
    0,
    "DynamicFieldList() from Cache empty for FieldType Test ",
);

my %SeparatedData;
my %SeparatedIDs;

# separate ticket and article dynamic fields
for my $DynamicField (@Data) {

    if ( $DynamicField->{ObjectType} eq 'Ticket' ) {
        push @{ $SeparatedData{Ticket} }, $DynamicField;
        push @{ $SeparatedIDs{Ticket} },  $DynamicField->{ID}
    }
    elsif ( $DynamicField->{ObjectType} eq 'Article' ) {
        push @{ $SeparatedData{Article} }, $DynamicField;
        push @{ $SeparatedIDs{Article} },  $DynamicField->{ID}
    }
}

for my $ObjecType (qw(Ticket Article)) {

    # list get check from DB for each object type
    $DynamicFieldListGet = $DynamicFieldObject->DynamicFieldListGet(
        Valid      => 0,
        ObjectType => $ObjecType
    );
    $Self->IsDeeply(
        $DynamicFieldListGet,
        $SeparatedData{$ObjecType},
        "DynamicFieldListGet() from DB for ObjetType $ObjecType ",
    );

    # list get check from cache for each object type
    $DynamicFieldListGet = $DynamicFieldObject->DynamicFieldListGet(
        Valid      => 0,
        ObjectType => $ObjecType
    );
    $Self->IsDeeply(
        $DynamicFieldListGet,
        $SeparatedData{$ObjecType},
        "DynamicFieldListGet() from cache for ObjetType $ObjecType ",
    );

    # list check from DB for each object type
    $DynamicFieldList = $DynamicFieldObject->DynamicFieldList(
        Valid      => 0,
        ObjectType => $ObjecType,
    );
    $Self->Is(
        scalar @{$DynamicFieldList},
        scalar @{ $SeparatedData{$ObjecType} },
        "DynamicFieldList() from DB for FieldType $ObjecType ",
    );

    # list check deeply from DB for each object type
    $Self->IsDeeply(
        $DynamicFieldList,
        $SeparatedIDs{$ObjecType},
        "DynamicFieldList() deeply check from DB for FieldType $ObjecType ",
    );

    # list check from Cache for each object type
    $DynamicFieldList = $DynamicFieldObject->DynamicFieldList(
        Valid      => 0,
        ObjectType => $ObjecType,
    );
    $Self->Is(
        scalar @{$DynamicFieldList},
        scalar @{ $SeparatedData{$ObjecType} },
        "DynamicFieldList() from Cache for FieldType $ObjecType ",
    );

    # list check deeply from Cache for each object type
    $Self->IsDeeply(
        $DynamicFieldList,
        $SeparatedIDs{$ObjecType},
        "DynamicFieldList() deeply check from Cache for FieldType $ObjecType ",
    );
}

# delete config
for my $DynamicFieldID (@DynamicFieldIDs) {
    my $Success = $DynamicFieldObject->DynamicFieldDelete(
        ID     => $DynamicFieldID,
        UserID => 1,
    );
    $Self->True(
        $Success,
        "DynamicFieldDelete() deleted DynamicField $DynamicFieldID",
    );
    $Success = $DynamicFieldObject->DynamicFieldDelete(
        ID     => $DynamicFieldID,
        UserID => 1,
    );
    $Self->False(
        $Success,
        "DynamicFieldDelete() deleted DynamicField $DynamicFieldID",
    );
}

# list check from DB
$DynamicFieldList = $DynamicFieldObject->DynamicFieldList( Valid => 0, ResultType => 'HASH' );
for my $DynamicFieldID (@DynamicFieldIDs) {
    $Self->False(
        scalar $DynamicFieldList->{$DynamicFieldID},
        "DynamicFieldList() did not find DynamicField $DynamicFieldID",
    );
}

# list check from cache
$DynamicFieldList = $DynamicFieldObject->DynamicFieldList( Valid => 0, ResultType => 'HASH' );
for my $DynamicFieldID (@DynamicFieldIDs) {
    $Self->False(
        scalar $DynamicFieldList->{$DynamicFieldID},
        "DynamicFieldList() from cache did not find DynamicField $DynamicFieldID",
    );
}

# FieldOrder tests
@Tests = (
    {
        Name => 'testorder1',
        Add  => {
            Config     => {},
            Label      => 'nothing interesting',
            FieldOrder => 9001,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name => 'testorder2',
        Add  => {
            Config     => {},
            Label      => 'nothing interesting',
            FieldOrder => 9002,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name => 'testorder3',
        Add  => {
            Config     => {},
            Label      => 'nothing interesting',
            FieldOrder => 9003,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name => 'testorder4',
        Add  => {
            Config     => {},
            Label      => 'nothing interesting',
            FieldOrder => 9004,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name => 'testorder5',
        Add  => {
            Config     => {},
            Label      => 'nothing interesting',
            FieldOrder => 9005,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
    {
        Name => 'testorder6',
        Add  => {
            Config     => {},
            Label      => 'nothing interesting',
            FieldOrder => 9006,
            FieldType  => 'Text',
            ObjectType => 'Article',
            ValidID    => 2,
            UserID     => $UserID,
        },
    },
);

my @AddedFieldIDs;
my %OrderLookup;
for my $Test (@Tests) {

    # add dynamic field
    my $DynamicFieldID = $DynamicFieldObject->DynamicFieldAdd(
        Name => $Test->{Name} . $RandomID,
        %{ $Test->{Add} }
    );

    # sanity check
    $Self->True(
        $DynamicFieldID,
        "DynamicFieldAdd() FieldOrderTests for FieldID $DynamicFieldID"
    );

    if ($DynamicFieldID) {
        push @AddedFieldIDs, $DynamicFieldID;

        $OrderLookup{ $Test->{Name} . $RandomID } = $Test->{Add}->{FieldOrder};
    }

}

# sanity checks
$Self->Is(
    scalar @AddedFieldIDs,
    scalar @Tests,
    'Added DynamicField numbers match the number of defined fields in this part of the test'
);

$Self->IsNotDeeply(
    \%OrderLookup,
    {},
    'OrderLookup table elements is not empty',
);

$Self->Is(
    scalar keys %OrderLookup,
    scalar @Tests,
    'OrderLookup table elements match the number of defined fields in this part of the test'
);

# backup original order lookup table
my %OrigOrderLookup = %OrderLookup;

# backup original fields configuration
my @OrigFieldsConfig;
for my $DynamicFieldID (@AddedFieldIDs) {

    my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
        ID => $DynamicFieldID,
    );
    push @OrigFieldsConfig, $DynamicField;
}

# check that the initial order is as expected
for my $DynamicFieldID (@AddedFieldIDs) {

    my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
        ID => $DynamicFieldID,
    );

    $Self->Is(
        $DynamicField->{FieldOrder},
        $OrderLookup{ $DynamicField->{Name} },
        "Order (Initial) Test for field ID $DynamicFieldID",
    );
}

# prepare tests
my @UpdateTests = (
    {
        Name          => 'Moved a field to the beginning',
        MovedField    => 'testorder4',
        NewFieldOrder => 9001,
        OrderLoockup  => {
            'testorder4' . $RandomID => 9001,
            'testorder1' . $RandomID => 9002,
            'testorder2' . $RandomID => 9003,
            'testorder3' . $RandomID => 9004,
            'testorder5' . $RandomID => 9005,
            'testorder6' . $RandomID => 9006,
        },
    },
    {
        Name          => 'Moved a field to the end',
        MovedField    => 'testorder4',
        NewFieldOrder => 9006,
        OrderLoockup  => {
            'testorder1' . $RandomID => 9001,
            'testorder2' . $RandomID => 9002,
            'testorder3' . $RandomID => 9003,
            'testorder5' . $RandomID => 9004,
            'testorder6' . $RandomID => 9005,
            'testorder4' . $RandomID => 9006,
        },
    },
    {
        Name          => 'Moved a field to lower order',
        MovedField    => 'testorder4',
        NewFieldOrder => 9003,
        OrderLoockup  => {
            'testorder1' . $RandomID => 9001,
            'testorder2' . $RandomID => 9002,
            'testorder4' . $RandomID => 9003,
            'testorder3' . $RandomID => 9004,
            'testorder5' . $RandomID => 9005,
            'testorder6' . $RandomID => 9006,
        },
    },
    {
        Name          => 'Moved a field to upper order',
        MovedField    => 'testorder4',
        NewFieldOrder => 9005,
        OrderLoockup  => {
            'testorder1' . $RandomID => 9001,
            'testorder2' . $RandomID => 9002,
            'testorder3' . $RandomID => 9003,
            'testorder5' . $RandomID => 9004,
            'testorder4' . $RandomID => 9005,
            'testorder6' . $RandomID => 9006,
        },
    },
    {
        Name          => 'Moved a field from first to end',
        MovedField    => 'testorder1',
        NewFieldOrder => 9006,
        OrderLoockup  => {
            'testorder2' . $RandomID => 9001,
            'testorder3' . $RandomID => 9002,
            'testorder4' . $RandomID => 9003,
            'testorder5' . $RandomID => 9004,
            'testorder6' . $RandomID => 9005,
            'testorder1' . $RandomID => 9006,
        },
    },
    {
        Name          => 'Moved a field from end to beginning',
        MovedField    => 'testorder6',
        NewFieldOrder => 9001,
        OrderLoockup  => {
            'testorder6' . $RandomID => 9001,
            'testorder1' . $RandomID => 9002,
            'testorder2' . $RandomID => 9003,
            'testorder3' . $RandomID => 9004,
            'testorder4' . $RandomID => 9005,
            'testorder5' . $RandomID => 9006,
        },
    },
    {
        Name          => 'Moved a field from first to middle',
        MovedField    => 'testorder1',
        NewFieldOrder => 9004,
        OrderLoockup  => {
            'testorder2' . $RandomID => 9001,
            'testorder3' . $RandomID => 9002,
            'testorder4' . $RandomID => 9003,
            'testorder1' . $RandomID => 9004,
            'testorder5' . $RandomID => 9005,
            'testorder6' . $RandomID => 9006,
        },
    },
    {
        Name          => 'Moved a field from end to middle',
        MovedField    => 'testorder6',
        NewFieldOrder => 9004,
        OrderLoockup  => {
            'testorder1' . $RandomID => 9001,
            'testorder2' . $RandomID => 9002,
            'testorder3' . $RandomID => 9003,
            'testorder6' . $RandomID => 9004,
            'testorder4' . $RandomID => 9005,
            'testorder5' . $RandomID => 9006,
        },
    },
);

# perform move tests
for my $Test (@UpdateTests) {
    my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
        Name => $Test->{MovedField} . $RandomID,
    );
    $DynamicField->{FieldOrder} = $Test->{NewFieldOrder};

    # update the field
    my $Success = $DynamicFieldObject->DynamicFieldUpdate(
        %{$DynamicField},
        UserID => $UserID,
    );

    # sanity check
    $Self->True(
        $Success,
        "DynamicFieldUpdate() Move Order $Test->{Name} Test",
    );

    # reorder the OrderLookup Table
    my %NewOrderLoockup = %{ $Test->{OrderLoockup} };
    %OrderLookup = %NewOrderLoockup;

    # check that the order is as expected
    for my $DynamicFieldID (@AddedFieldIDs) {

        my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
            ID => $DynamicFieldID,
        );

        $Self->Is(
            $DynamicField->{FieldOrder},
            $OrderLookup{ $DynamicField->{Name} },
            "Move Order $Test->{Name} Test for field ID $DynamicFieldID",
        );
    }

    # revert all changes
    for my $DynamicField (@OrigFieldsConfig) {

        # update dynamic fields without reordering
        my $Success = $DynamicFieldObject->DynamicFieldUpdate(
            %{$DynamicField},
            Reorder => 0,
            UserID  => $UserID,
        );

        # sanity check
        $Self->True(
            $Success,
            "DynamicFielUpdate() revert changes (without reorder) for FieldID $DynamicField->{ID}"
        );
    }

    # revert OrderLookup table
    %OrderLookup = %OrigOrderLookup;

    # sanity check
    for my $DynamicFieldID (@AddedFieldIDs) {

        my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
            ID => $DynamicFieldID,
        );

        $Self->Is(
            $DynamicField->{FieldOrder},
            $OrderLookup{ $DynamicField->{Name} },
            "Move Order (Reverted) Test for field ID $DynamicFieldID",
        );
    }
}

# test for add and delete
my @AddDeleteTests = (
    {
        Name     => 'Add a field to the beginning',
        AddField => {
            Name       => 'testorder7' . $RandomID,
            Label      => 'nothing interesting',
            FieldOrder => 9001,
            FieldType  => 'Text',
            ObjectType => 'Article',
            Config     => {},
            ValidID    => 2,
            UserID     => $UserID,
        },
        OrderLoockup => {
            'testorder7' . $RandomID => 9001,
            'testorder1' . $RandomID => 9002,
            'testorder2' . $RandomID => 9003,
            'testorder3' . $RandomID => 9004,
            'testorder4' . $RandomID => 9005,
            'testorder5' . $RandomID => 9006,
            'testorder6' . $RandomID => 9007,
        },
    },
    {
        Name     => 'Add a field at the end',
        AddField => {
            Name       => 'testorder7' . $RandomID,
            Label      => 'nothing interesting',
            FieldOrder => 9007,
            FieldType  => 'Text',
            ObjectType => 'Article',
            Config     => {},
            ValidID    => 2,
            UserID     => $UserID,
        },
        OrderLoockup => {
            'testorder1' . $RandomID => 9001,
            'testorder2' . $RandomID => 9002,
            'testorder3' . $RandomID => 9003,
            'testorder4' . $RandomID => 9004,
            'testorder5' . $RandomID => 9005,
            'testorder6' . $RandomID => 9006,
            'testorder7' . $RandomID => 9007,
        },
    },
    {
        Name     => 'Add a field at the middle',
        AddField => {
            Name       => 'testorder7' . $RandomID,
            Label      => 'nothing interesting',
            FieldOrder => 9004,
            FieldType  => 'Text',
            ObjectType => 'Article',
            Config     => {},
            ValidID    => 2,
            UserID     => $UserID,
        },
        OrderLoockup => {
            'testorder1' . $RandomID => 9001,
            'testorder2' . $RandomID => 9002,
            'testorder3' . $RandomID => 9003,
            'testorder7' . $RandomID => 9004,
            'testorder4' . $RandomID => 9005,
            'testorder5' . $RandomID => 9006,
            'testorder6' . $RandomID => 9007,
        },
    },
);

# perform Add Delete tests
for my $Test (@AddDeleteTests) {

    my $FieldID = $DynamicFieldObject->DynamicFieldAdd(
        %{ $Test->{AddField} },
    );

    # sanity check
    $Self->True(
        $FieldID,
        "DynamicFieldAdd() Add Order - Test ($Test->{Name}) - for field ID $FieldID"
    );

    push @AddedFieldIDs, $FieldID;

    # reorder the OrderLookup Table
    my %NewOrderLoockup = %{ $Test->{OrderLoockup} };
    %OrderLookup = %NewOrderLoockup;

    # check that the order is as expected
    for my $DynamicFieldID (@AddedFieldIDs) {

        my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
            ID => $DynamicFieldID,
        );

        $Self->Is(
            $DynamicField->{FieldOrder},
            $OrderLookup{ $DynamicField->{Name} },
            "Add Order - Test ($Test->{Name}) - for field ID $DynamicFieldID",
        );
    }

    my $Success = $DynamicFieldObject->DynamicFieldDelete(
        ID     => $FieldID,
        UserID => 1,
    );

    # sanity check
    $Self->True(
        $Success,
        "DynamicFieldDelete() Delete Order - Test ($Test->{Name}) - for Field ID $FieldID"
    );

    # revert OrderLookup
    %OrderLookup = %OrigOrderLookup;

    # remove the FieldID from @AddedFieldIDs
    my $RemovedFieldID = pop @AddedFieldIDs;

    # sanity check
    $Self->Is(
        $RemovedFieldID,
        $FieldID,
        "Field removed from the compare list for FieldID $FieldID",
    );

    # check that the order is reverted
    for my $DynamicFieldID (@AddedFieldIDs) {

        my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
            ID => $DynamicFieldID,
        );

        $Self->Is(
            $DynamicField->{FieldOrder},
            $OrderLookup{ $DynamicField->{Name} },
            "Delete Order $Test->{Name} Test for field ID $DynamicFieldID",
        );
    }
}

# remove DynamicFields
for my $DynamicFieldID (@AddedFieldIDs) {
    my $Success = $DynamicFieldObject->DynamicFieldDelete(
        ID     => $DynamicFieldID,
        UserID => $UserID,
    );

    # sanity check
    $Self->True(
        $Success,
        "DynamicFieldDelete() Field Order Tests for Field ID $DynamicFieldID"
    );
}

# backend tests
#@Tests = (
#    {
#        Name    => 'No Config',
#        Success => 0,
#    },
#    {
#        Name        => 'Invalid Config',
#        FieldConfig => '',
#        Success     => 0,
#    },
#    {
#        Name        => 'Empty Config',
#        FieldConfig => {},
#        Success     => 0,
#    },
#    {
#        Name        => 'No FieldType',
#        FieldConfig => {
#            Name => 'text1',
#        },
#        Success => 0,
#    },
#    {
#        Name        => 'Empty FieldType',
#        FieldConfig => {
#            Name      => 'text1',
#            FieldType => '',
#        },
#        Success => 0,
#    },
#    {
#        Name        => 'Non existing FieldType',
#        FieldConfig => {
#            Name      => 'text1',
#            FieldType => 'Non_Exising_FieldType_Do_Not_Use_This_Value'
#        },
#        Success => 0,
#    },
#    {
#        Name        => 'Invalid Module',
#        FieldConfig => {
#            Name      => 'text1',
#            FieldType => 'TestingInvalidModule'
#        },
#        Success => 0,
#    },
#    {
#        Name        => 'Non Existing Module',
#        FieldConfig => {
#            Name      => 'text1',
#            FieldType => 'TestingNonExisingModule'
#        },
#        Success => 0,
#    },
#    {
#        Name        => 'Success',
#        FieldConfig => {
#            Name      => 'text1',
#            FieldType => 'Text'
#        },
#        Success => 1,
#    },
#
#);
#
#$Self->{ConfigObject}->Set(
#    Key   => 'DynamicFields::Backend###TestingInvalidModule',
#    Value => {
#        Module => ''
#        }
#);
#
#$Self->{ConfigObject}->Set(
#    Key   => 'DynamicFields::Backend###TestingNonExisingModule',
#    Value => {
#        Module => 'Kernel::System::DynamicField::Backend::TestingNonExisingModule'
#        }
#);
#
#$DynamicFieldObject = Kernel::System::DynamicField->new( %{$Self} );
#
#for my $Test (@Tests) {
#
#    # get the new instance
#    my $Instance = $DynamicFieldObject->DynamicFieldBackendInstanceGet(
#        FieldConfig => $Test->{FieldConfig},
#    );
#
#    # check if the instance could be created
#    if ( !$Test->{Success} ) {
#        $Self->False(
#            $Instance,
#            "DynamicFieldBackendInstanceGet() $Test->{Name} with False",
#        );
#    }
#    else {
#        $Self->True(
#            $Instance,
#            "DynamicFieldBackendInstanceGet() $Test->{Name} with True",
#        );
#    }
#}

# restore original fields order
for my $DynamicField ( @{$OriginalDynamicFields} ) {

    my $Success = $DynamicFieldObject->DynamicFieldUpdate(
        %{$DynamicField},
        Reorder => 0,
        UserID  => 123,
    );

    # check if update (restore) was successful
    $Self->True(
        $Success,
        "Restored Original Field  - for FieldID $DynamicField->{ID} ",
    );
}

# get fields again
my $RestoredDynamicFields = $DynamicFieldObject->DynamicFieldListGet( Valid => 0 );

# check if fields were restored OK
for my $Dynamicfield ( @{$OriginalDynamicFields} ) {
    my $RestoredDynamicField = $DynamicFieldObject->DynamicFieldGet( ID => $Dynamicfield->{ID} );
    for my $Parameter (qw(Name Label FieldOrder FieldType ObjectType ValidID)) {
        $Self->Is(
            $RestoredDynamicField->{$Parameter},
            $Dynamicfield->{$Parameter},
            "Restored Field matches original field on $Parameter - for FieldID $Dynamicfield->{ID}",
        );
    }
    $Self->IsDeeply(
        $RestoredDynamicField->{Config},
        $Dynamicfield->{Config},
        "Restored Field match original field on Config - for FieldID $Dynamicfield->{ID}",
    );
}
1;
