# --
# Kernel/System/DB.pm - the global database wrapper to support different databases 
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: DB.pm,v 1.39 2004-06-22 08:01:27 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::DB;

use strict;
use DBI;
use Kernel::System::Encode;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.39 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::DB - global database interface

=head1 SYNOPSIS

All database functions to connect/insert/update/delete/... to a database. 

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create database object with database connect
 
  use Kernel::Config;
  use Kernel::System::Log;
  use Kernel::System::DB; 
 
  my $ConfigObject = Kernel::Config->new();
  my $LogObject    = Kernel::System::Log->new(
      ConfigObject => $ConfigObject,
  );

  $DBObject = Kernel::System::DB->new(
      ConfigObject => $ConfigObject,
      LogObject    => $LogObject,
      # if you don't use the follow params, then this are used 
      # from Kernel/Config.pm!
      DatabaseDSN  => 'DBI:odbc:database=123;host=localhost;', 
      DatabaseUser => 'user',
      DatabasePw   => 'somepass',
      Type         => 'mysql',
      Attribute    => {
          LongTruncOk => 1,
          LongReadLen => 100*1024,
      },
  );

=cut

# --
sub new {
    my $Type = shift;
    my %Param = @_;
   
    # allocate new hash for object 
    my $Self = {}; 
    bless ($Self, $Type);

    # 0=off; 1=updates; 2=+selects; 3=+Connects;
    $Self->{Debug} = $Param{Debug} || 0;

    # check needed objects
    foreach (qw(ConfigObject LogObject)) {
        if ($Param{$_}) {
            $Self->{$_} = $Param{$_};
        }
        else {
            die "Got no $_!";
        }
    } 
    # encode object
    $Self->{EncodeObject} = Kernel::System::Encode->new(%Param);
    # get config data
    $Self->{DSN}  = $Param{DatabaseDSN} || $Self->{ConfigObject}->Get('DatabaseDSN');
    $Self->{USER} = $Param{DatabaseUser} || $Self->{ConfigObject}->Get('DatabaseUser');
    $Self->{PW}   = $Param{DatabasePw} || $Self->{ConfigObject}->Get('DatabasePw');
    # decrypt pw (if needed)
    if ($Self->{PW} =~ /^\{(.*)\}$/) {
        my $Length = length($1)*4;
        $Self->{PW} = pack("h$Length", $1);
        $Self->{PW} = unpack("B$Length", $Self->{PW});
        $Self->{PW} =~ s/1/A/g;
        $Self->{PW} =~ s/0/1/g;
        $Self->{PW} =~ s/A/0/g;
        $Self->{PW} = pack("B$Length", $Self->{PW});
    }
    # get database type (auto detection)
    if ($Self->{DSN} =~ /:mysql/i) {
        $Self->{'DB::Type'} = 'mysql';
    }
    elsif ($Self->{DSN} =~ /:pg/i) {
        $Self->{'DB::Type'} = 'postgresql';
    }
    elsif ($Self->{DSN} =~ /:db2/i) {
        $Self->{'DB::Type'} = 'db2';
    }
    elsif ($Self->{DSN} =~ /:oracle/i) {
        $Self->{'DB::Type'} = 'oracle';
    }
    elsif ($Self->{DSN} =~ /:odbc/i) {
        $Self->{'DB::Type'} = 'odbc';
    }
    else {
        $Self->{'DB::Type'} = 'generic';
    }
    # get database type (config option)
    if ($Self->{ConfigObject}->Get("Database::Type")) {
        $Self->{'DB::Type'} = $Self->{ConfigObject}->Get("Database::Type");
    }
    if ($Param{Type}) {
        $Self->{'DB::Type'} = $Param{Type};
    }
    # set database functions
    if ($Self->{'DB::Type'} eq 'mysql') {
        $Self->{'DB::Limit'} = 'limit';
        $Self->{'DB::DirectBlob'} = 1;
        $Self->{'DB::QuoteSignle'} = '\\';
        $Self->{'DB::QuoteBack'} = '\\';
        $Self->{'DB::QuoteSemicolon'} = '\\';
        $Self->{'DB::Attribute'} = {};
    }
    elsif ($Self->{'DB::Type'} eq 'postgresql') {
        $Self->{'DB::Limit'} = 'limit';
        $Self->{'DB::DirectBlob'} = 0;
        $Self->{'DB::QuoteSignle'} = '\\';
        $Self->{'DB::QuoteBack'} = '\\';
        $Self->{'DB::QuoteSemicolon'} = '\\';
        $Self->{'DB::Attribute'} = {};
    }
    elsif ($Self->{'DB::Type'} eq 'oracle') {
        $Self->{'DB::Limit'} = 0;
        $Self->{'DB::DirectBlob'} = 0;
        $Self->{'DB::QuoteSignle'} = '\'';
        $Self->{'DB::QuoteBack'} = 0;
        $Self->{'DB::QuoteSemicolon'} = '';
        $Self->{'DB::Attribute'} = {
            LongTruncOk => 1,
            LongReadLen => 100*1024,
        };
    }
    elsif ($Self->{'DB::Type'} eq 'db2') {
        $Self->{'DB::Limit'} = 'fetch';
        $Self->{'DB::DirectBlob'} = 0;
        $Self->{'DB::QuoteSignle'} = '\\';
        $Self->{'DB::QuoteBack'} = '\\';
        $Self->{'DB::QuoteSemicolon'} = '\\';
        $Self->{'DB::Attribute'} = {};
    }
    elsif ($Self->{'DB::Type'} eq 'sapdb') {
        $Self->{'DB::Limit'} = 0;
        $Self->{'DB::DirectBlob'} = 0;
        $Self->{'DB::QuoteSignle'} = '\'';
        $Self->{'DB::QuoteBack'} = 0;
        $Self->{'DB::QuoteSemicolon'} = '\'';
        $Self->{'DB::Attribute'} = {
            LongTruncOk => 1,
            LongReadLen => 100*1024,
        };
        $Self->{'DB::CurrentTimestamp'} = 'timestamp';
    }
    elsif ($Self->{'DB::Type'} eq 'mssql') {
        $Self->{'DB::Limit'} = 0;
        $Self->{'DB::DirectBlob'} = 0;
        $Self->{'DB::QuoteSignle'} = '\'';
        $Self->{'DB::QuoteBack'} = 0;
        $Self->{'DB::QuoteSemicolon'} = '\'';
        $Self->{'DB::Attribute'} = {
            LongTruncOk => 1,
            LongReadLen => 100*1024,
        };
    }
    elsif ($Self->{'DB::Type'} eq 'generic') {
        $Self->{'DB::Limit'} = 0;
        $Self->{'DB::DirectBlob'} = 0;
        $Self->{'DB::QuoteSignle'} = '\\';
        $Self->{'DB::QuoteBack'} = '\\';
        $Self->{'DB::QuoteSemicolon'} = '\\';
        $Self->{'DB::Attribute'} = {
            LongTruncOk => 1,
            LongReadLen => 100*1024,
        };
    }
    else {
        $Self->{LogObject}->Log(
          Priority => 'Error',
          Message => "Unknown database type $Self->{'DB::Type'}! Set ".
              "option Database::Type to (mysql|postgresql|db2|sapdb|oracle|mssql|generic)."
        );
        return;
    }
    # check/get extra database config options
    # (overwrite auto detection with config options)
    foreach (qw(Type Limit DirectBlob Attribute QuoteSingle QuoteBack)) {
        if (defined($Self->{ConfigObject}->Get("Database::$_"))) {
            $Self->{"DB::$_"} = $Self->{ConfigObject}->Get("Database::$_");
        }
    }
    # check/get extra database config options
    # (overwrite with params)
    foreach (qw(Type Limit DirectBlob Attribute QuoteSingle QuoteBack)) {
        if (defined($Param{$_})) {
            $Self->{"DB::$_"} = $Param{$_};
        }
    }
    # do database connect 
    if (!$Self->Connect()) {
        return;
    }
    return $Self;
}
# --

=item Connect()

to connect to a database

=cut

sub Connect {
    my $Self = shift;
    # debug
    if ($Self->{Debug} > 2) {
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'debug', 
          Message => "DB.pm->Connect: DSN: $Self->{DSN}, User: $Self->{USER}, Pw: $Self->{PW}, DB Type: $Self->{'DB::Type'};",
        );
    }
    # db connect
    if (!($Self->{dbh} = DBI->connect("$Self->{DSN}", $Self->{USER}, $Self->{PW}, $Self->{'DB::Attribute'}))) { 
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'Error',
          Message => $DBI::errstr,
        );
        return;
    }
    return $Self->{dbh};
}
# --

=item Disconnect()

to disconnect to a database

=cut

sub Disconnect {
    my $Self = shift;
    # debug
    if ($Self->{Debug} > 2) {
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'debug',
          Message => "DB.pm->Disconnect",
        );
    }
    # do disconnect
    $Self->{dbh}->disconnect() if ($Self->{dbh});
    return 1;
}
# --

=item Quote()

to quote strings 

  my $DBString = $DBObject->Quote("This isn't a problem!");

=cut

sub Quote {
    my $Self = shift;
    my $Text = shift;
    if (!defined $Text) {
        return;
    }
    # do quote
    if ($Self->{'DB::QuoteBack'}) {
        $Text =~ s/\\/$Self->{'DB::QuoteBack'}\\/g;
    }
    if ($Self->{'DB::QuoteSignle'}) {
        $Text =~ s/'/$Self->{'DB::QuoteSignle'}'/g;
    }
    if ($Self->{'DB::QuoteSemicolon'}) {
        $Text =~ s/;/$Self->{'DB::QuoteSemicolon'};/g;
    }
    return $Text;
}
# --

=item Error()

to get database errors back

  my $ErrorMessage = $DBObject->Error();

=cut

sub Error {
    my $Self = shift;
    return $DBI::errstr;
}
# --

=item Do()

to insert, update or delete something

  $DBObject->Do(SQL => "INSERT INTO table (name) VALUES ('dog')");

  $DBObject->Do(SQL => "DELETE FROM table");


  you also can use DBI bind values (used for large strings):

  my $Var1 = 'dog1';
  my $Var2 = 'dog2';

  $DBObject->Do(
      SQL => "INSERT INTO table (name1, name2) VALUES (?, ?)", 
      Bind => [\$Var1, \$Var2],
  );

=cut

sub Do {
    my $Self = shift;
    my %Param = @_;
    my $SQL = $Param{SQL};
    my $BindArray = $Param{Bind};
    my @Array = ();
    # check bind params
    if ($Param{Bind}) {
        foreach my $Data (@{$Param{Bind}}) {
            if (ref($Data) eq 'SCALAR') {
                push(@Array, $$Data);
            }
            else  {
                $Self->{LogObject}->Log(
                    Caller => 1,
                    Priority => 'Error',
                    Message => "No SCALAR param in Bind!",
                );
                return;
            }
        }
    }
    # doing timestamp workaround (if needed)
    if ($Self->{'DB::CurrentTimestamp'}) {
        $SQL =~ s/current_timestamp/$Self->{'DB::CurrentTimestamp'}/g;
    }
    # debug
    if ($Self->{Debug} > 0) {
        $Self->{DoCounter}++;
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'debug',
          Message => "DB.pm->Do ($Self->{DoCounter}) SQL: '$SQL'",
        );
    }
    # send sql to database 
    if (!$Self->{dbh}->do($SQL, undef, @Array)) {
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'Error',
          Message => "$DBI::errstr, SQL: '$SQL'",
        );
        return;
    }
    return 1;
}
# --

=item Prepare()

to send a select something to the database

  $DBObject->Prepare(
      SQL => "SELECT id, name FROM table",
      Limit => 10
  );

=cut

sub Prepare {
    my $Self = shift;
    my %Param = @_;
    my $SQL = $Param{SQL};
    my $Limit = $Param{Limit} || '';
    $Self->{Limit} = 0;
    $Self->{LimitCounter} = 0;
    # build finally select query
    if ($Limit) {
        if ($Self->{'DB::Limit'} eq 'limit') {
            $SQL .= " LIMIT $Limit";
        }
        elsif ($Self->{'DB::Limit'} eq 'fetch') {
            $SQL .= " fetch $Limit first row";
        }
        else {
            $Self->{Limit} = $Limit;
        }
    }
    # debug
    if ($Self->{Debug} > 1) {
        $Self->{PrepareCounter}++;
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'debug',
          Message => "DB.pm->Prepare ($Self->{PrepareCounter}/".time().") SQL: '$SQL'",
        );
    }
    # do
    if (!($Self->{Curser} = $Self->{dbh}->prepare($SQL))) {
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'Error',
          Message => "$DBI::errstr, SQL: '$SQL'",
        );
        return;
    }
    if (!$Self->{Curser}->execute()) {
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'Error',
          Message => "$DBI::errstr, SQL: '$SQL'",
        );
        return;
    }
    return 1;
}
# --

=item FetchrowArray()

to get a select return

  $DBObject->Prepare(
      SQL => "SELECT id, name FROM table",
      Limit => 10
  );

  while (my @Row = $DBObject->FetchrowArray()) {
      print "$Row[0]:$Row[1]\n";
  }

=cut

sub FetchrowArray {
    my $Self = shift;
    # work with cursers if database don't support limit
    if (!$Self->{'DB::Limit'} && $Self->{Limit}) {
        if ($Self->{Limit} <= $Self->{LimitCounter}) {
            $Self->{Curser}->finish();
            return;
        }
        $Self->{LimitCounter}++;
    }
    # return 
    my @Row = $Self->{Curser}->fetchrow_array();
    # e. g. set utf-8 flag
    foreach (@Row) {
         $Self->{EncodeObject}->Encode(\$_);
    }
    return @Row;
}
# --
# _should_ not used because of database incompat.
sub FetchrowHashref {
    my $Self = shift;
    # work with cursers if database don't support limit
    if (!$Self->{'DB::Limit'} && $Self->{Limit}) {
        if ($Self->{Limit} <= $Self->{LimitCounter}) {
            $Self->{Curser}->finish();
            return;
        }
        $Self->{LimitCounter}++;
    }
    # return 
    return $Self->{Curser}->fetchrow_hashref();
}
# --

=item GetDatabaseFunction()

to get database functions like Limit, DirectBlob, ...

  my $What = $DBObject->GetDatabaseFunction('DirectBlob');

=cut

sub GetDatabaseFunction {
    my $Self = shift;
    my $What = shift;
    return $Self->{'DB::'.$What};
}
# --

=item GetTableData()

to get table data back in a hash

  my %Users = $DBObject->GetTableData(
      What => 'id, name',
      Table => 'groups',
  );

=cut

sub GetTableData {
    my $Self = shift;
    my %Param = @_;
    my $Table = $Param{Table};
    my $What = $Param{What};
    my $Whare = $Param{Where} || '';
    my $Valid = $Param{Valid} || '';
    my $Clamp = $Param{Clamp} || '';
    my %Data;
    my $SQL = "SELECT $What FROM $Table ";
    $SQL .= " WHERE " . $Whare if ($Whare);
    $SQL .= " WHERE valid_id in ( ${\(join ', ', $Self->GetValidIDs())} )" if ((!$Whare) && ($Valid));
    $Self->Prepare(SQL => $SQL);
    while (my @Row = $Self->FetchrowArray()) {
        if ($Row[3]) {
            if ($Clamp) {
                $Data{$Row[0]} = "$Row[1] $Row[2] ($Row[3])";
            }
            else {
                $Data{$Row[0]} = "$Row[1] $Row[2] $Row[3]";
            }
        }
        elsif ($Row[2]) {
            if ($Clamp) {
                $Data{$Row[0]} = "$Row[1] ( $Row[2] )";
            }
            else {
                $Data{$Row[0]} = "$Row[1] $Row[2]";
            }
        }
        else {
            $Data{$Row[0]} = $Row[1];
        }
    }
    return %Data;
}
# --
sub GetValidIDs {
    my $Self = shift;
    my %Param = @_;
    my @ValidIDs;
    if ($Self->{ValidIDs}) {
        my $ValidIDsTmp = $Self->{ValidIDs};
        @ValidIDs = @$ValidIDsTmp;
    }
    else {
        $Self->Prepare(SQL => "SELECT id FROM valid WHERE name = 'valid'");
        while (my @RowTmp = $Self->FetchrowArray()) {
            push(@ValidIDs, $RowTmp[0]);
        }
        $Self->{ValidIDs} = \@ValidIDs;
    }
    return @ValidIDs;
}
# --
sub DESTROY {
    my $Self = shift;
    $Self->Disconnect();
}
# --
1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).  

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.39 $ $Date: 2004-06-22 08:01:27 $

=cut

