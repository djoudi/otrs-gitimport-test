# --
# Kernel/System/DB/postgresql.pm - postgresql database backend
# Copyright (C) 2001-2008 OTRS GmbH, http://otrs.org/
# --
# $Id: postgresql.pm,v 1.25 2008-01-02 14:56:05 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::DB::postgresql;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.25 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for ( keys %Param ) {
        $Self->{$_} = $Param{$_};
    }
    return $Self;
}

sub LoadPreferences {
    my ( $Self, %Param ) = @_;

    # db settings
    $Self->{'DB::Limit'}             = 'limit';
    $Self->{'DB::DirectBlob'}        = 0;
    $Self->{'DB::QuoteSingle'}       = '\'';
    $Self->{'DB::QuoteBack'}         = '\\';
    $Self->{'DB::QuoteSemicolon'}    = '\\';
    $Self->{'DB::NoLikeInLargeText'} = 0;

    # dbi attributes
    $Self->{'DB::Attribute'} = {};

    # set current time stamp if different to "current_timestamp"
    $Self->{'DB::CurrentTimestamp'} = '';

    # set encoding of selected data to utf8
    $Self->{'DB::Encode'} = 1;

    # shell setting
    $Self->{'DB::Comment'}     = '-- ';
    $Self->{'DB::ShellCommit'} = ';';

    #$Self->{'DB::ShellConnect'} = '';

    # init sql setting on db connect
    #$Self->{'DB::Connect'} = '';

    return 1;
}

sub Quote {
    my ( $Self, $Text ) = @_;

    if ( defined( ${$Text} ) ) {
        if ( $Self->{'DB::QuoteBack'} ) {
            ${$Text} =~ s/\\/$Self->{'DB::QuoteBack'}\\/g;
        }
        if ( $Self->{'DB::QuoteSingle'} ) {
            ${$Text} =~ s/'/$Self->{'DB::QuoteSingle'}'/g;
        }
        if ( $Self->{'DB::QuoteSemicolon'} ) {
            ${$Text} =~ s/;/$Self->{'DB::QuoteSemicolon'};/g;
        }
    }
    return $Text;
}

sub DatabaseCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Name} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need Name!" );
        return;
    }

    # return SQL
    return ("CREATE DATABASE $Param{Name}");
}

sub DatabaseDrop {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Name} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => "Need Name!" );
        return;
    }

    # return SQL
    return ("DROP DATABASE $Param{Name}");
}

sub TableCreate {
    my ( $Self, @Param ) = @_;

    my $SQLStart     = '';
    my $SQLEnd       = '';
    my $SQL          = '';
    my @Column       = ();
    my $TableName    = '';
    my $ForeignKey   = ();
    my %Foreign      = ();
    my $IndexCurrent = ();
    my %Index        = ();
    my $UniqCurrent  = ();
    my %Uniq         = ();
    my $PrimaryKey   = '';
    my @Return       = ();
    for my $Tag (@Param) {

        if ( ( $Tag->{Tag} eq 'Table' || $Tag->{Tag} eq 'TableCreate' )
            && $Tag->{TagType} eq 'Start' )
        {
            if ( $Self->{ConfigObject}->Get('Database::ShellOutput') ) {
                $SQLStart .= $Self->{'DB::Comment'}
                    . "----------------------------------------------------------\n";
                $SQLStart .= $Self->{'DB::Comment'} . " create table $Tag->{Name}\n";
                $SQLStart .= $Self->{'DB::Comment'}
                    . "----------------------------------------------------------\n";
            }
        }
        if ( ( $Tag->{Tag} eq 'Table' || $Tag->{Tag} eq 'TableCreate' )
            && $Tag->{TagType} eq 'Start' )
        {
            $SQLStart .= "CREATE TABLE $Tag->{Name} (\n";
            $TableName = $Tag->{Name};
        }
        if ( ( $Tag->{Tag} eq 'Table' || $Tag->{Tag} eq 'TableCreate' )
            && $Tag->{TagType} eq 'End' )
        {
            $SQLEnd .= ")";
        }
        elsif ( $Tag->{Tag} eq 'Column' && $Tag->{TagType} eq 'Start' ) {
            push( @Column, $Tag );
        }
        elsif ( $Tag->{Tag} eq 'Index' && $Tag->{TagType} eq 'Start' ) {
            $IndexCurrent = $Tag->{Name};
        }
        elsif ( $Tag->{Tag} eq 'IndexColumn' && $Tag->{TagType} eq 'Start' ) {
            push( @{ $Index{$IndexCurrent} }, $Tag );
        }
        elsif ( $Tag->{Tag} eq 'Unique' && $Tag->{TagType} eq 'Start' ) {
            $UniqCurrent = $Tag->{Name} || $TableName . '_U_' . int( rand(999) );
        }
        elsif ( $Tag->{Tag} eq 'UniqueColumn' && $Tag->{TagType} eq 'Start' ) {
            push( @{ $Uniq{$UniqCurrent} }, $Tag );
        }
        elsif ( $Tag->{Tag} eq 'ForeignKey' && $Tag->{TagType} eq 'Start' ) {
            $ForeignKey = $Tag->{ForeignTable};
        }
        elsif ( $Tag->{Tag} eq 'Reference' && $Tag->{TagType} eq 'Start' ) {
            push( @{ $Foreign{$ForeignKey} }, $Tag );
        }
    }
    for my $Tag (@Column) {

        # type translation
        $Tag = $Self->_TypeTranslation($Tag);
        if ($SQL) {
            $SQL .= ",\n";
        }

        # auto increment
        if ( $Tag->{AutoIncrement} && $Tag->{AutoIncrement} =~ /^true$/i ) {
            $SQL = "    $Tag->{Name} serial";
        }

        # normal data type
        else {
            $SQL .= "    $Tag->{Name} $Tag->{Type}";
            if ( $Tag->{Required} =~ /^true$/i ) {
                $SQL .= " NOT NULL";
            }
        }

        # add primary key
        if ( $Tag->{PrimaryKey} && $Tag->{PrimaryKey} =~ /true/i ) {
            $PrimaryKey = "    PRIMARY KEY($Tag->{Name})";
        }
    }

    # add primary key
    if ($PrimaryKey) {
        if ($SQL) {
            $SQL .= ",\n";
        }
        $SQL .= $PrimaryKey;
    }

    # add uniq
    for my $Name ( keys %Uniq ) {
        if ($SQL) {
            $SQL .= ",\n";
        }
        $SQL .= "    UNIQUE (";
        my @Array = @{ $Uniq{$Name} };
        for ( 0 .. $#Array ) {
            if ( $_ > 0 ) {
                $SQL .= ", ";
            }
            $SQL .= $Array[$_]->{Name};
        }
        $SQL .= ")";
    }
    $SQL .= "\n";
    push( @Return, $SQLStart . $SQL . $SQLEnd );

    # add indexs
    for my $Name ( keys %Index ) {
        push(
            @Return,
            $Self->IndexCreate(
                TableName => $TableName,
                Name      => $Name,
                Data      => $Index{$Name},
            )
        );
    }

    # add uniq
    #    for my $Name (keys %Uniq) {
    #        push (@Return, $Self->UniqueCreate(
    #            TableName => $TableName,
    #            Name => $Name,
    #            Data => $Uniq{$Name},
    #        ));
    #    }
    # add foreign keys
    for my $ForeignKey ( keys %Foreign ) {
        my @Array = @{ $Foreign{$ForeignKey} };
        for ( 0 .. $#Array ) {
            push(
                @{ $Self->{Post} },
                $Self->ForeignKeyCreate(
                    LocalTableName   => $TableName,
                    Local            => $Array[$_]->{Local},
                    ForeignTableName => $ForeignKey,
                    Foreign          => $Array[$_]->{Foreign},
                )
            );
        }
    }
    return @Return;
}

sub TableDrop {
    my ( $Self, @Param ) = @_;

    my $SQL = '';
    for my $Tag (@Param) {
        if ( $Tag->{Tag} eq 'Table' && $Tag->{TagType} eq 'Start' ) {
            if ( $Self->{ConfigObject}->Get('Database::ShellOutput') ) {
                $SQL .= $Self->{'DB::Comment'}
                    . "----------------------------------------------------------\n";
                $SQL .= $Self->{'DB::Comment'} . " drop table $Tag->{Name}\n";
                $SQL .= $Self->{'DB::Comment'}
                    . "----------------------------------------------------------\n";
            }
        }
        $SQL .= "DROP TABLE $Tag->{Name}";
        return ($SQL);
    }
    return ();
}

sub TableAlter {
    my ( $Self, @Param ) = @_;

    my $SQLStart = '';
    my @SQL      = ();
    my $Table    = '';
    for my $Tag (@Param) {
        if ( $Tag->{Tag} eq 'TableAlter' && $Tag->{TagType} eq 'Start' ) {
            if ( $Self->{ConfigObject}->Get('Database::ShellOutput') ) {
                $SQLStart .= $Self->{'DB::Comment'}
                    . "----------------------------------------------------------\n";
                $SQLStart .= $Self->{'DB::Comment'} . " alter table $Tag->{Name}\n";
                $SQLStart .= $Self->{'DB::Comment'}
                    . "----------------------------------------------------------\n";
            }
            $SQLStart .= "ALTER TABLE $Tag->{Name}";
            $Table = $Tag->{Name};
        }
        elsif ( $Tag->{Tag} eq 'ColumnAdd' && $Tag->{TagType} eq 'Start' ) {

            # Type translation
            $Tag = $Self->_TypeTranslation($Tag);

            # normal data type
            my $SQLEnd = $SQLStart . " ADD $Tag->{Name} $Tag->{Type}";
            if ( !$Tag->{Default} && $Tag->{Required} && $Tag->{Required} =~ /^true$/i ) {
                $SQLEnd .= " NOT NULL";
            }
            push( @SQL, $SQLEnd );

            # default values
            if ( $Tag->{Default} ) {
                if ( $Tag->{Type} =~ /int/i ) {
                    push( @SQL,
                        "UPDATE $Table SET $Tag->{Name} = $Tag->{Default} WHERE $Tag->{Name} IS NULL"
                    );
                }
                else {
                    push( @SQL,
                        "UPDATE $Table SET $Tag->{Name} = $Tag->{Default} WHERE '$Tag->{Name}' IS NULL"
                    );
                }
                if ( $Tag->{Required} && $Tag->{Required} =~ /^true$/i ) {
                    push( @SQL, "ALTER TABLE $Table ALTER $Tag->{Name} SET NOT NULL" );
                }
            }
        }
        elsif ( $Tag->{Tag} eq 'ColumnChange' && $Tag->{TagType} eq 'Start' ) {

            # Type translation
            $Tag = $Self->_TypeTranslation($Tag);

            # normal data type
            if ( $Tag->{NameOld} ne $Tag->{NameNew} ) {
                my $SQLEnd = $SQLStart . " RENAME $Tag->{NameOld} TO $Tag->{NameNew}";
                push( @SQL, $SQLEnd );
            }
            my $SQLEnd = $SQLStart . " ALTER $Tag->{NameNew} TYPE $Tag->{Type}";
            push( @SQL, $SQLEnd );
            if ( $Tag->{Required} && $Tag->{Required} =~ /^true$/i ) {
                my $SQLEnd = $SQLStart . " ALTER $Tag->{NameNew} SET NOT NULL";
                push( @SQL, $SQLEnd );
            }
            elsif ( !$Tag->{Required} || $Tag->{Required} =~ /^false$/i ) {
                my $SQLEnd = $SQLStart . " ALTER $Tag->{NameNew} DROP NOT NULL";
                push( @SQL, $SQLEnd );
            }
        }
        elsif ( $Tag->{Tag} eq 'ColumnDrop' && $Tag->{TagType} eq 'Start' ) {
            my $SQLEnd = $SQLStart . " DROP $Tag->{Name}";
            push( @SQL, $SQLEnd );
        }
    }
    return @SQL;
}

sub IndexCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TableName Name Data)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    my $SQL   = "CREATE INDEX $Param{Name} ON $Param{TableName} (";
    my @Array = @{ $Param{'Data'} };
    for ( 0 .. $#Array ) {
        if ( $_ > 0 ) {
            $SQL .= ", ";
        }
        $SQL .= $Array[$_]->{Name};
        if ( $Array[$_]->{Size} ) {

            #           $SQL .= "($Array[$_]->{Size})";
        }
    }
    $SQL .= ")";

    # return SQL
    return ($SQL);

}

sub IndexDrop {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TableName Name)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    my $SQL = "DROP INDEX $Param{Name}";
    return ($SQL);
}

sub ForeignKeyCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(LocalTableName Local ForeignTableName Foreign)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    my $SQL = "ALTER TABLE $Param{LocalTableName} ADD FOREIGN KEY (";
    $SQL .= "$Param{Local}) REFERENCES ";
    $SQL .= "$Param{ForeignTableName}($Param{Foreign})";

    # return SQL
    return ($SQL);
}

sub ForeignKeyDrop {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TableName Name)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    #    my $SQL = "ALTER TABLE $Param{TableName} DROP CONSTRAINT $Param{Name}";
    #    return ($SQL);
    return;
}

sub UniqueCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TableName Name Data)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    my $SQL   = "ALTER TABLE $Param{TableName} ADD CONSTRAINT $Param{Name} UNIQUE (";
    my @Array = @{ $Param{'Data'} };
    for ( 0 .. $#Array ) {
        if ( $_ > 0 ) {
            $SQL .= ", ";
        }
        $SQL .= $Array[$_]->{Name};
    }
    $SQL .= ")";

    # return SQL
    return ($SQL);

}

sub UniqueDrop {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TableName Name)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }
    my $SQL = "ALTER TABLE $Param{TableName} DROP CONSTRAINT $Param{Name}";
    return ($SQL);
}

sub Insert {
    my ( $Self, @Param ) = @_;

    my $SQL    = '';
    my @Keys   = ();
    my @Values = ();
    for my $Tag (@Param) {
        if ( $Tag->{Tag} eq 'Insert' && $Tag->{TagType} eq 'Start' ) {
            if ( $Self->{ConfigObject}->Get('Database::ShellOutput') ) {
                $SQL .= $Self->{'DB::Comment'}
                    . "----------------------------------------------------------\n";
                $SQL .= $Self->{'DB::Comment'} . " insert into table $Tag->{Table}\n";
                $SQL .= $Self->{'DB::Comment'}
                    . "----------------------------------------------------------\n";
            }
            $SQL .= "INSERT INTO $Tag->{Table} ";
        }
        if ( $Tag->{Tag} eq 'Data' && $Tag->{TagType} eq 'Start' ) {
            $Tag->{Key} = ${ $Self->Quote( \$Tag->{Key} ) };
            push( @Keys, $Tag->{Key} );
            my $Value;
            if ( defined( $Tag->{Value} ) ) {
                $Value = $Tag->{Value};
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message =>
                        "The content for inserts is not longer appreciated attribut Value, use Content from now on! Reason: You can't use new lines in attributes.",
                );
            }
            elsif ( defined( $Tag->{Content} ) ) {
                $Value = $Tag->{Content};
            }
            else {
                $Value = '';
            }
            if ( $Tag->{Type} && $Tag->{Type} eq 'Quote' ) {
                $Value = "'" . ${ $Self->Quote( \$Value ) } . "'";
            }
            else {
                $Value = ${ $Self->Quote( \$Value ) };
            }
            push( @Values, $Value );
        }
    }
    my $Key = '';
    for (@Keys) {
        if ( $Key ne '' ) {
            $Key .= ", ";
        }
        $Key .= $_;
    }
    my $Value = '';
    for my $Tmp (@Values) {
        if ( $Value ne '' ) {
            $Value .= ", ";
        }
        if ( $Tmp eq 'current_timestamp' ) {
            if ( $Self->{ConfigObject}->Get('Database::ShellOutput') ) {
                $Value .= $Tmp;
            }
            else {
                my $Timestamp = $Self->{TimeObject}->CurrentTimestamp();
                $Value .= '\'' . $Timestamp . '\'';
            }
        }
        else {
            if ( $Self->{ConfigObject}->Get('Database::ShellOutput') ) {
                $Tmp =~ s/\n/\r/g;
            }
            $Value .= $Tmp;
        }
    }
    $SQL .= "($Key)\n    VALUES\n    ($Value)";
    return ($SQL);
}

sub _TypeTranslation {
    my ( $Self, $Tag ) = @_;

    # type translation
    if ( $Tag->{Type} =~ /^DATE$/i ) {
        $Tag->{Type} = 'timestamp(0)';
    }

    # performance option
    elsif ( $Tag->{Type} =~ /^smallint$/i ) {
        $Tag->{Type} = 'INTEGER';
    }
    elsif ( $Tag->{Type} =~ /^bigint$/i ) {
        $Tag->{Type} = 'INTEGER';
    }
    elsif ( $Tag->{Type} =~ /^longblob$/i ) {
        $Tag->{Type} = 'TEXT';
    }
    elsif ( $Tag->{Type} =~ /^VARCHAR$/i ) {
        $Tag->{Type} = "VARCHAR ($Tag->{Size})";
        if ( $Tag->{Size} >= 10000 ) {
            $Tag->{Type} = "VARCHAR";
        }
    }
    elsif ( $Tag->{Type} =~ /^DECIMAL$/i ) {
        $Tag->{Type} = "DECIMAL ($Tag->{Size})";
    }
    return $Tag;
}

1;
