# --
# Kernel/System/FAQ.pm - all faq funktions
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: FAQ.pm,v 1.12 2004-03-24 11:07:30 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::FAQ;

use strict;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.12 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::FAQ - faq lib

=head1 SYNOPSIS

All faq functions. E. g. to add faqs or to get faqs.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()
    
create a faq object 
    
  use Kernel::Config;
  use Kernel::System::Log;
  use Kernel::System::DB;
  use Kernel::System::FAQ;

  my $ConfigObject = Kernel::Config->new();
  my $LogObject    = Kernel::System::Log->new(
      ConfigObject => $ConfigObject,
  );
  my $DBObject = Kernel::System::DB->new( 
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
  );
  my $FAQObject = Kernel::System::FAQ->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
      DBObject => $DBObject,
  );

=cut

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # check needed objects
    foreach (qw(DBObject ConfigObject LogObject)) {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    return $Self;
}
# --

=item ArticleGet()

get an article

  my %Article = $FAQObject->ArticleGet(
      ID => 1, 
      UserID => 123,
   );

=cut

sub ArticleGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    my %Data = ();
    my $SQL = "SELECT i.f_name, i.f_language_id, i.f_subject, ".
            " i.f_field1, i.f_field2, i.f_field3, ".
            " i.f_field4, i.f_field5, i.f_field6, ".
            " i.free_key1, i.free_value1, i.free_key2, i.free_value2, ".
            " i.free_key3, i.free_value3, i.free_key4, i.free_value4, ".
            " i.create_time, i.create_by, i.change_time, i.change_by, ".
            " i.category_id, i.state_id, c.name, s.name, l.name, i.f_keywords ".
            " FROM faq_item i, faq_category c, faq_state s, faq_language l ".
            " WHERE ".
            " i.state_id = s.id AND ".
            " i.category_id = c.id AND ".
            " i.f_language_id = l.id AND ".
            " i.id = $Param{ID}";
    $Self->{DBObject}->Prepare(SQL => $SQL);
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        %Data = (
            ID => $Param{ID},
            Name => $Row[0],
            LanguageID => $Row[1],
            Subject => $Row[2],
            Field1 => $Row[3],
            Field2 => $Row[4],
            Field3 => $Row[5],
            Field4 => $Row[6],
            Field5 => $Row[7],
            Field6 => $Row[8],
            FreeKey1 => $Row[9],
            FreeKey2 => $Row[10],
            FreeKey3 => $Row[11],
            FreeKey4 => $Row[12],
            FreeKey5 => $Row[13],
            FreeKey6 => $Row[14],
            Created => $Row[17],
            CreatedBy => $Row[18],
            Changed => $Row[19],
            ChangedBy => $Row[20],
            CategoryID => $Row[21],
            StateID => $Row[22],
            Category => $Row[23],
            State => $Row[24],
            Language => $Row[25],
            Keywords => $Row[26],
        );
    }
    return %Data;
}
# --

=item ArticleAdd()

add an article

  my $ID = $FAQObject->ArticleAdd(
      CategoryID => 1,
      StateID => 1,
      LanguageID => 1,
      Subject => 'Some Text',
      Field1 => 'Problem...',
      Field2 => 'Solution...',
      FreeKey1 => 'Software',
      FreeText1 => 'Apache 3.4.2',
      FreeKey2 => 'OS',
      FreeText2 => 'OpenBSD 4.2.2',
      UserID => 123,
  );

=cut

sub ArticleAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(CategoryID StateID LanguageID Subject UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # check name
    if (!$Param{Name}) {
        $Param{Name} = time().'-'.rand(100);
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    foreach my $Type (qw(Field FreeKey FreeText)) {
        foreach (1..6) {
            if (!defined($Param{$Type.$_})) {
                $Param{$Type.$_} = '';
            }
        }
    }
    my $SQL = "INSERT INTO faq_item (f_name, f_language_id, f_subject, ".
            " category_id, state_id, f_keywords, ".
            " f_field1, f_field2, f_field3, f_field4, f_field5, f_field6, ".
            " free_key1, free_value1, free_key2, free_value2, ".
            " free_key3, free_value3, free_key4, free_value4, ".
            " create_time, create_by, change_time, change_by)".
            " VALUES ".
            " ('$Param{Name}', $Param{LanguageID}, '$Param{Subject}', ".
            " $Param{CategoryID}, $Param{StateID}, '$Param{Keywords}', ".
            " '$Param{Field1}', '$Param{Field2}', '$Param{Field3}', ".
            " '$Param{Field4}', '$Param{Field5}', '$Param{Field6}', ".
            " '$Param{FreeKey1}', '$Param{FreeText1}', ".
            " '$Param{FreeKey2}', '$Param{FreeText2}', ".
            " '$Param{FreeKey3}', '$Param{FreeText3}', ".
            " '$Param{FreeKey4}', '$Param{FreeText4}', ".
            " current_timestamp, $Param{UserID}, ".
            " current_timestamp, $Param{UserID})";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # get id
        $Self->{DBObject}->Prepare(
            SQL => "SELECT id FROM faq_item WHERE ".
              "f_name = '$Param{Name}' AND f_language_id = $Param{LanguageID} ".
              " AND f_subject = '$Param{Subject}'",
        );
        my $ID = 0;
        while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
            $ID = $Row[0]; 
        }
        $Self->ArticleHistoryAdd(
            Name => 'Created', 
            ID => $ID, 
            UserID => $Param{UserID},
        );
        return 1;
    }
    else {
        return; 
    }

}
# --

=item ArticleUpdate()
    
update an article

  $FAQObject->ArticleUpdate(
      CategoryID => 1,
      StateID => 1,
      LanguageID => 1,
      Subject => 'Some Text',
      Field1 => 'Problem...',
      Field2 => 'Solution...',
      FreeKey1 => 'Software',
      FreeText1 => 'Apache 3.4.2',
      FreeKey2 => 'OS',
      FreeText2 => 'OpenBSD 4.2.2',
      UserID => 123,
  );

=cut

sub ArticleUpdate {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID CategoryID StateID LanguageID Subject UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # check name
    if (!$Param{Name}) {
        my %Article = $Self->ArticleGet(%Param);
        $Param{Name} = $Article{Name};
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    # fill up empty stuff
    foreach my $Type (qw(Field FreeKey FreeText)) {
        foreach (1..6) {
            if (!$Param{$Type.$_}) {
                $Param{$Type.$_} = '';
            }
        }
    }
    my $SQL = "UPDATE faq_item SET f_name = '$Param{Name}', ".
            " f_language_id = $Param{LanguageID}, f_subject = '$Param{Subject}', ".
            " category_id = $Param{CategoryID}, state_id = $Param{StateID}, ".
            " f_keywords = '$Param{Keywords}', ".
            " f_field1 = '$Param{Field1}', f_field2 = '$Param{Field2}', ".
            " f_field3 = '$Param{Field3}', f_field4 = '$Param{Field4}', ".
            " f_field5 = '$Param{Field5}', f_field6 = '$Param{Field6}', ".
            " free_key1 = '$Param{FreeKey1}', free_value1 = '$Param{FreeText1}', ".
            " free_key2 = '$Param{FreeKey2}', free_value2 = '$Param{FreeText2}', ".
            " free_key3 = '$Param{FreeKey3}', free_value3 = '$Param{FreeText3}', ".
            " free_key4 = '$Param{FreeKey4}', free_value4 = '$Param{FreeText4}', ".
            " change_time = current_timestamp, change_by = $Param{UserID} ".
            " WHERE id = $Param{ID} ";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        $Self->ArticleHistoryAdd(
            Name => 'Updated', 
            ID => $Param{ID}, 
            UserID => $Param{UserID},
        );
        return 1;
    }
    else {
        return; 
    }
}
# --

=item ArticleDelete()
    
delete an article

  $FAQObject->ArticleDelete(
      ID => 1,
      UserID => 123,
  );

=cut

sub ArticleDelete {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    if ($Self->{DBObject}->Prepare(SQL => "DELETE FROM faq_item WHERE id = $Param{ID}")) {
        if ($Self->ArticleHistoryDelete(%Param)) {
            return 1;
        }
        else {
            return;
        }
    }
    else {
        return;
    }
}
# --

=item ArticleHistoryAdd()
    
add an history to an article

  $FAQObject->ArticleHistoryAdd(
      ID => 1,
      Name => 'Updated Article.',
      UserID => 123,
  );

=cut

sub ArticleHistoryAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID Name UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    my $SQL = "INSERT INTO faq_history (name, item_id, ".
            " create_time, create_by, change_time, change_by)".
            " VALUES ".
            " ('$Param{Name}', $Param{ID}, ".
            " current_timestamp, $Param{UserID}, ".
            " current_timestamp, $Param{UserID})";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return; 
    }
}
# --

=item ArticleHistoryAdd()
    
get a array with hachref (Name, Created) with history of an article back
    
  my @Data = $FAQObject->ArticleHistoryGet(
      ID => 1,
      UserID => 123,
  );

=cut

sub ArticleHistoryGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    my @Data = ();
    $Self->{DBObject}->Prepare(
        SQL => "SELECT name, create_time FROM faq_history WHERE item_id = $Param{ID}",
    );
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my %Record = (
            Name => $Row[0],
            Created => $Row[1],
        );
        push (@Data, \%Record);
    }
    return @Data;
}
# --

=item ArticleHistoryDelete()
    
delete an history of an article
    
  $FAQObject->ArticleHistoryDelete(
      ID => 1,
      UserID => 123,
  );

=cut

sub ArticleHistoryDelete {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    $Self->{DBObject}->Prepare(
        SQL => "DELETE FROM faq_history WHERE item_id = $Param{ID}",
    );
    return 1;
}
# --

=item HistoryGet()
    
get the system history
    
  my @Data = $FAQObject->HistoryGet(
      UserID => 123,
  );

=cut

sub HistoryGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # query
    my $SQL = "SELECT i.id, h.name, h.create_time, h.create_by FROM".
        " faq_item i, faq_state s, faq_history h WHERE".
        " s.id = i.state_id AND h.item_id = i.id";
    if ($Param{States} && ref($Param{States}) eq 'ARRAY' && @{$Param{States}}) {
        $SQL .= " AND s.name IN ('${\(join '\', \'', @{$Param{States}})}') ";
    }
    $SQL .= ' ORDER BY create_time DESC';
    my @Data = ();
    $Self->{DBObject}->Prepare(SQL => $SQL, Limit => 200);
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        my %Record = (
            ID => $Row[0],
            Name => $Row[1],
            Created => $Row[2],
            CreatedBy => $Row[3],
        );
        push (@Data, \%Record);
    }
    return @Data;
}
# --

=item CategoryList()
    
get the category list as hash

  my %Categories = $FAQObject->CategoryList(
      UserID => 123,
  );

=cut

sub CategoryList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # sql 
    my %List = ();
    $Self->{DBObject}->Prepare(SQL => 'SELECT id, name FROM faq_category');
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $List{$Row[0]} = $Row[1];
    }
    return %List;
}
# --

=item CategoryGet()

get a category as hash

  my %Category = $FAQObject->CategoryGet(
      ID => 1,
      UserID => 123,
  );

=cut

sub CategoryGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql 
    my %Data = ();
    $Self->{DBObject}->Prepare(
        SQL => "SELECT id, name, comments FROM faq_category WHERE id = $Param{ID}",
    );
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        %Data = (
            ID => $Row[0],
            Name => $Row[1],
            Comment => $Row[2],
        );
    }
    return %Data;
}
# --

=item CategoryAdd()
    
add a category
    
  my $ID = $FAQObject->CategoryAdd(
      Name => 'Some Category',
      Comment => 'some comment ...',
      UserID => 123,
  );
    
=cut

sub CategoryAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    my $SQL = "INSERT INTO faq_category (name, comments, ".
            " create_time, create_by, change_time, change_by)".
            " VALUES ".
            " ('$Param{Name}', '$Param{Comment}', ".
            " current_timestamp, $Param{UserID}, ".
            " current_timestamp, $Param{UserID})";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # get new category id
        $SQL = "SELECT id ".
          " FROM " .
          " faq_category " .
          " WHERE " .
          " name = '$Param{Name}'";
        my $ID = '';
        $Self->{DBObject}->Prepare(SQL => $SQL);
        while (my @Row = $Self->{DBObject}->FetchrowArray()) {
          $ID = $Row[0];
        }
        # log notice
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "FAQCategory: '$Param{Name}' ID: '$ID' created successfully ($Param{UserID})!",
        );
        return $ID;
    }
    else {
        return;
    }
}
# --

=item CategoryUpdate()
    
update a category
    
  $FAQObject->CategoryUpdate(
      ID => 1,
      Name => 'Some Category',
      Comment => 'some comment ...',
      UserID => 123,
  );
    
=cut

sub CategoryUpdate {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID Name UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    # sql
    my $SQL = "UPDATE faq_category SET name = '$Param{Name}', ".
          " comments = '$Param{Comment}', ".
          " change_time = current_timestamp, change_by = $Param{UserID} ".
          " WHERE id = $Param{ID}";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        # log notice
        $Self->{LogObject}->Log(
          Priority => 'notice',
          Message => "FAQCategory: '$Param{Name}' ID: '$Param{ID}' updated successfully ($Param{UserID})!",
        );
        return 1;
    }
    else {
        return;
    }
}
# --

=item CategoryDelete()
    
delete a category
    
  $FAQObject->CategoryDelete(
      ID => 1,
      UserID => 123,
  );
    
=cut

sub CategoryDelete {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }


}
# --

=item StateTypeList()
    
get the state type list as hash
    
  my %StateTypes = $FAQObject->StateTypeList(
      UserID => 123,
  );

=cut

sub StateTypeList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # sql 
    my %List = ();
    $Self->{DBObject}->Prepare(SQL => 'SELECT id, name FROM faq_state_type');
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $List{$Row[0]} = $Row[1];
    }
    return %List;
}
# --

=item StateList()
    
get the state list as hash
    
  my %States = $FAQObject->StateList(
      UserID => 123,
  );

=cut

sub StateList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # sql 
    my %List = ();
    $Self->{DBObject}->Prepare(SQL => 'SELECT id, name FROM faq_state');
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $List{$Row[0]} = $Row[1];
    }
    return %List;
}
# --

=item StateUpdate()
    
update a state 
    
  $FAQObject->StateUpdate(
      ID => 1,
      Name => 'public',
      TypeID => 1,
      UserID => 123,
  );

=cut

sub StateUpdate {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID Name TypeID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    # sql
    my $SQL = "UPDATE faq_state SET name = '$Param{Name}', type_id = $Param{TypeID}, ".
          " WHERE id = $Param{ID}";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}
# --

=item StateAdd()
    
add a state 
    
  my $ID = $FAQObject->StateAdd(
      ID => 1,
      Name => 'public',
      TypeID => 1,
      UserID => 123,
  );

=cut

sub StateAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name TypeID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    my $SQL = "INSERT INTO faq_state (name, type_id) ".
            " VALUES ".
            " ('$Param{Name}', $Param{TypeID}) ";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1; 
    }
    else {
        return;
    }
}
# --

=item StateGet()
    
get a state as hash
    
  my %State = $FAQObject->StateGet(
      ID => 1,
      UserID => 123,
  );

=cut

sub StateGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql 
    my %Data = ();
    $Self->{DBObject}->Prepare(
        SQL => "SELECT id, name FROM faq_state WHERE id = $Param{ID}",
    );
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        %Data = (
            ID => $Row[0],
            Name => $Row[1],
            Comment => $Row[2],
        );
    }
    return %Data;
}
# --

=item LanguageList()
    
get the language list as hash
    
  my %Languages = $FAQObject->LanguageList(
      UserID => 123,
  );    
        
=cut

sub LanguageList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # sql 
    my %List = ();
    $Self->{DBObject}->Prepare(SQL => 'SELECT id, name FROM faq_language');
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        $List{$Row[0]} = $Row[1];
    }
    return %List;
}
# --

=item LanguageUpdate()
    
update a language
    
  $FAQObject->LanguageUpdate(
      ID => 1,
      Name => 'Some Category',
      UserID => 123,
  );
    
=cut

sub LanguageUpdate {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID Name UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    # sql
    my $SQL = "UPDATE faq_language SET name = '$Param{Name}' ".
          " WHERE id = $Param{ID}";
    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1;
    }
    else {
        return;
    }
}
# --

=item LanguageAdd()
    
add a language
    
  my $ID = $FAQObject->LanguageAdd(
      Name => 'Some Category',
      UserID => 123,
  );
    
=cut

sub LanguageAdd {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_}) || '';
    }
    my $SQL = "INSERT INTO faq_language (name) ".
            " VALUES ".
            " ('$Param{Name}') ";

    if ($Self->{DBObject}->Do(SQL => $SQL)) {
        return 1; 
    }
    else {
        return;
    }
}
# --

=item LanguageGet()
    
get a language as hash
    
  my %Language = $FAQObject->LanguageGet(
      ID => 1,
      UserID => 123,
  );
    
=cut

sub LanguageGet {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(ID UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    # db quote
    foreach (keys %Param) {
        $Param{$_} = $Self->{DBObject}->Quote($Param{$_});
    }
    # sql 
    my %Data = ();
    $Self->{DBObject}->Prepare(
        SQL => "SELECT id, name FROM faq_language WHERE id = $Param{ID}",
    );
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        %Data = (
            ID => $Row[0],
            Name => $Row[1],
        );
    }
    return %Data;
}
# --

=item Search()
    
search in articles
    
  my @IDs = $FAQObject->Search(
      What => '*some text*',
      Keywords => '*webserver*',
      States = ['public', 'internal'],
      UserID => 123,
  );
    
=cut

sub Search {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(UserID)) {
      if (!$Param{$_}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
        return;
      }
    }
    my $SQL = "SELECT i.id FROM faq_item i, faq_state s WHERE ".
        " s.id = i.state_id AND ";
    my $Ext = '';
    foreach (qw(f_subject f_field1 f_field2 f_field3 f_field4 f_field5 f_field6)) {
        if ($Ext) {
            $Ext .= ' OR ';
        } 
        else {
            $Ext .= ' (';
        }
        if (defined($Param{What})) {
            $Ext .= " i.$_ LIKE '%".$Self->{DBObject}->Quote($Param{What})."%'";
        }
        else {
            $Ext .= " i.$_ LIKE '%'";
        }
    }
    $Ext .= ' )';
    if ($Param{LanguageIDs} && ref($Param{LanguageIDs}) eq 'ARRAY' && @{$Param{LanguageIDs}}) {
        $Ext .= " AND i.f_language_id IN (${\(join ', ', @{$Param{LanguageIDs}})} )";
    }
    if ($Param{CategoryIDs} && ref($Param{CategoryIDs}) eq 'ARRAY' && @{$Param{CategoryIDs}}) {
        $Ext .= " AND i.category_id IN (${\(join ', ', @{$Param{CategoryIDs}})} )";
    }
    if ($Param{States} && ref($Param{States}) eq 'ARRAY' && @{$Param{States}}) {
        $Ext .= " AND s.name IN ('${\(join '\', \'', @{$Param{States}})}')";
    }
    if ($Param{Keyword}) { 
        $Ext .= " AND i.f_keywords LIKE '%".$Self->{DBObject}->Quote($Param{Keyword})."%'"; 
    }
    $SQL .= $Ext." ORDER BY i.change_time, i.f_language_id";
    my @List = ();
    $Self->{DBObject}->Prepare(SQL => $SQL, Limit => 500);
    while  (my @Row = $Self->{DBObject}->FetchrowArray()) {
        push (@List, $Row[0]);
    }
    return @List;
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

$Revision: 1.12 $ $Date: 2004-03-24 11:07:30 $

=cut
