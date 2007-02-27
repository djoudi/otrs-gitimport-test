# Mail::Address.pm
#
# Copyright (c) 1995-2001 Graham Barr <gbarr@pobox.com>.  All rights reserved.
# Copyright (c) 2002-2005 Mark Overmeer <mailtools@overmeer.net>
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl itself.

package Mail::Address;
use strict;

use Carp;
use vars qw($VERSION);
# use locale;   removed in version 1.74, because it causes taint problems

$VERSION = "1.74";
sub Version { $VERSION }

#
# given a comment, attempt to extract a person's name
#

sub _extract_name
{
    # This function can be called as method as well
    my $self = @_ && ref $_[0] ? shift : undef;

    local $_ = shift or return '';

    # Using encodings, too hard. See Mail::Message::Field::Full.
    return '' if m/\=\?.*?\?\=/;

    # Bug in unicode \U, perl 5.8.0 breaks when casing utf8 in regex
    if($] eq 5.008)
    {   require utf8;
        eval 'utf8::downgrade($_)';
    }

    # trim whitespace
    s/^\s+//;
    s/\s+$//;
    s/\s+/ /;

    # Disregard numeric names (e.g. 123456.1234@compuserve.com)
    return "" if /^[\d ]+$/;

    # remove outermost parenthesis
    s/^\((.*)\)$/$1/;

    # remove outer quotation marks
    s/^"(.*)"$/$1/;

    # remove minimal embedded comments
    s/\(.*?\)//g;

    # remove all escapes
    s/\\//g;

    # remove internal quotation marks
    s/^"(.*)"$/$1/;

    # reverse "Last, First M." if applicable
    s/^([^\s]+) ?, ?(.*)$/$2 $1/;
    s/,.*//;

    # Change casing only when the name contains only upper or only
    # lower cased characters.
    unless( m/[A-Z]/ && m/[a-z]/ )
    {   # Set the case of the name to first char upper rest lower
        # Upcase first letter on name
        s/\b(\w+)/\L\u$1/igo;

        # Scottish names such as 'McLeod'
        s/\bMc(\w)/Mc\u$1/igo;

        # Irish names such as 'O'Malley, O'Reilly'
        s/\bo'(\w)/O'\u$1/igo;

        # Roman numerals, eg 'Level III Support'
        s/\b(x*(ix)?v*(iv)?i*)\b/\U$1/igo;
    }

    # some cleanup
    s/\[[^\]]*\]//g;
    s/(^[\s'"]+|[\s'"]+$)//g;
    s/\s{2,}/ /g;

    return $_;
}

sub _tokenise {
 local($_) = join(',', @_);
 my(@words,$snippet,$field);

 s/\A\s+//;
 s/[\r\n]+/ /g;

#use Scalar::Util qw/tainted/;
#warn tainted($_);
 while ($_ ne '')
  {
   $field = '';
   if( s/^\s*\(/(/ )    # (...)
    {
     my $depth = 0;

     PAREN: while(s/^(\(([^\(\)\\]|\\.)*)//)
      {
       $field .= $1;
       $depth++;
       while(s/^(([^\(\)\\]|\\.)*\)\s*)//)
        {
         $field .= $1;
         last PAREN unless --$depth;
	 $field .= $1 if s/^(([^\(\)\\]|\\.)+)//;
        }
      }

     carp "Unmatched () '$field' '$_'"
        if $depth;

     $field =~ s/\s+\Z//;
     push(@words, $field);

     next;
    }

    if( s/^("(?:[^"\\]+|\\.)*")\s*//       # "..."
     || s/^(\[(?:[^\]\\]+|\\.)*\])\s*//    # [...]
     || s/^([^\s()<>\@,;:\\".[\]]+)\s*//
     || s/^([()<>\@,;:\\".[\]])\s*//
    )
    {   push(@words, $1);
        next;
    }

    croak "Unrecognised line: $_";
  }

  push(@words, ",");

  \@words;
}

sub _find_next {
 my $idx = shift;
 my $tokens = shift;
 my $len = shift;
 while($idx < $len) {
   my $c = $tokens->[$idx];
   return $c if $c eq ',' || $c eq ';' || $c eq '<';
   $idx++;
 }
 return "";
}

sub _complete {
 my $pkg = shift;
 my $phrase = shift;
 my $address = shift;
 my $comment = shift;
 my $o = undef;

 if(@{$phrase} || @{$comment} || @{$address}) {
  $o = $pkg->new(join(" ",@{$phrase}),
                 join("", @{$address}),
                 join(" ",@{$comment}));
  @{$phrase} = ();
  @{$address} = ();
  @{$comment} = ();
 }

 return $o;
}


sub new {
 my $pkg = shift;
 my $me = bless [@_], $pkg;
 return $me;
}


sub parse {
 my $pkg = shift;
 my @line    = grep { defined $_} @_;
 my $line    = join '', @line;

 local $_;

 my @phrase  = ();
 my @comment = ();
 my @address = ();
 my @objs    = ();
 my $depth   = 0;
 my $idx     = 0;
 my $tokens  = _tokenise(@line);
 my $len     = @$tokens;
 my $next    = _find_next($idx,$tokens,$len);

 for( ; $idx < $len ; $idx++) {
  $_ = $tokens->[$idx];

  if(substr($_,0,1) eq "(") {
   push(@comment,$_);
  }
  elsif($_ eq '<') {
   $depth++;
  }
  elsif($_ eq '>') {
   $depth-- if $depth;
  }
  elsif($_ eq ',' || $_ eq ';') {
   warn "Unmatched '<>' in $line" if($depth);
   my $o = _complete($pkg,\@phrase, \@address, \@comment);
   push(@objs, $o) if(defined $o);
   $depth = 0;
   $next = _find_next($idx+1,$tokens,$len);
  }
  elsif($depth) {
   push(@address,$_);
  }
  elsif($next eq "<") {
   push(@phrase,$_);
  }
  elsif( /\A[\Q.\@:;\E]\Z/ || !@address || $address[-1] =~ /\A[\Q.\@:;\E]\Z/) {
   push(@address,$_);
  }
  else {
   warn "Unmatched '<>' in $line" if($depth);
   my $o = _complete($pkg,\@phrase, \@address, \@comment);
   push(@objs, $o) if(defined $o);
   $depth = 0;
   push(@address,$_);
  }
 }
 @objs;
}

sub set_or_get {
 my $me = shift;
 my $i = shift;
 my $val = $me->[$i];

 $me->[$i] = shift if(@_);

 $val;
}


sub phrase  { set_or_get(shift,0,@_) }
sub address { set_or_get(shift,1,@_) }
sub comment { set_or_get(shift,2,@_) }


sub format {
 my @fmts  = ();
 my $me;

 my $atext = '[\-\w !#$%&\'*+/=?^`{|}~]';

 foreach $me (@_) {
   my($phrase,$addr,$comment) = @{$me};
   my @tmp = ();

   if(defined $phrase && length($phrase)) {
     push @tmp, $phrase =~ /^(?:\s*$atext\s*)+$/ ? $phrase
              : $phrase =~ /(?<!\\)"/            ? $phrase
              :                                    qq("$phrase");

     push(@tmp, "<" . $addr . ">") if(defined $addr && length($addr));
   }
   else {
    push(@tmp, $addr) if(defined $addr && length($addr));
   }
   if(defined($comment) && $comment =~ /\S/) {
    $comment =~ s/^\s*\(?/(/;
    $comment =~ s/\)?\s*$/)/;
   }
   push(@tmp, $comment) if(defined $comment && length($comment));
   push(@fmts, join(" ", @tmp)) if(scalar(@tmp));
 }

 return join(", ", @fmts);
}


sub name
{
    my $me = shift;
    my $phrase = $me->phrase;
    my $addr = $me->address;

    $phrase  = $me->comment unless(defined($phrase) && length($phrase));
    my $name = $me->_extract_name($phrase);

    # first.last@domain address
    if($name eq '' && $addr =~ /([^\%\.\@_]+([\._][^\%\.\@_]+)+)[\@\%]/o)
    {
	($name = $1) =~ s/[\._]+/ /go;
	$name = _extract_name($name);
    }

    if($name eq '' && $addr =~ m#/g=#oi)
    # X400 style address
    {
	my ($f) = $addr =~ m#g=([^/]*)#oi;
	my ($l) = $addr =~ m#s=([^/]*)#io;

	$name = _extract_name($f . " " . $l);
    }

       return length($name) ? $name : undef;
}


sub host {
 my $me = shift;
 my $addr = $me->address || '';
 my $i = rindex($addr,'@');

 my $host = ($i >= 0) ? substr($addr,$i+1) : undef;

 return $host;
}


sub user {
 my $me = shift;
 my $addr = $me->address;
 my $i = index($addr,'@');

 my $user = ($i >= 0) ? substr($addr,0,$i) : $addr;

 return $user;
}


sub path {
 return ();
}


sub canon {
 my $me = shift;
 return ($me->host, $me->user, $me->path);
}

1;


__END__

=head1 NAME

Mail::Address - Parse mail addresses

=head1 SYNOPSIS

    use Mail::Address;

    my @addrs = Mail::Address->parse($line);

    foreach $addr (@addrs) {
	print $addr->format,"\n";
    }

=head1 DESCRIPTION

C<Mail::Address> extracts and manipulates email addresses from a message
header.  It cannot be used to extract addresses from some random text.
You can use this module to create RFC822 compliant fields.

Although C<Mail::Address> is a very popular subject for books, and is
used in many applications, it does a very poor job on the more complex
message fields.  It does only handle simple address formats (which
covers about 95% of what can be found). Problems are with

=over 4

=item *

no support for address groups, even not with the semi-colon as
separator between addresses

=item *

Limitted support for escapes in phrases and comments.  There are
cases where it can get wrong.

=item *

You have to take care of most escaping when you create an address yourself:
C<Mail::Address> does not do that for you.

=back

Often requests are made to improve this situation, but this is not a
good idea, where it will break zillions of existing applications.  If
you wish for a fully RFC2822 compliant implementation you may take a look
at L<Mail::Message::Field::Full>, part of MailBox.

Example:

  my $s = Mail::Message::Field::Full->parse($header);
  # ref $s isa Mail::Message::Field::Addresses;

  my @g = $s->groups;          # all groups, at least one
  # ref $g[0] isa Mail::Message::Field::AddrGroup;
  my $ga = $g[0]->addresses;   # group addresses

  my @a = $s->addresses;       # all addresses
  # ref $a[0] isa Mail::Message::Field::Address;

=head1 CONSTRUCTORS

=over 4

=item new( PHRASE,  ADDRESS, [ COMMENT ])

 Mail::Address->new("Perl5 Porters", "perl5-porters@africa.nicoh.com");

Create a new C<Mail::Address> object which represents an address with the
elements given. In a message these 3 elements would be seen like:

 PHRASE <ADDRESS> (COMMENT)
 ADDRESS (COMMENT)

=item parse( LINE )

 Mail::Address->parse($line);

Parse the given line a return a list of extracted C<Mail::Address> objects.
The line would normally be one taken from a To,Cc or Bcc line in a message

=back

=head1 METHODS

=over 4

=item phrase ()

Return the phrase part of the object.

=item address ()

Return the address part of the object.

=item comment ()

Return the comment part of the object

=item format ()

Return a string representing the address in a suitable form to be placed
on a To,Cc or Bcc line of a message

=item name ()

Using the information contained within the object attempt to identify what
the person or groups name is

=item host ()

Return the address excluding the user id and '@'

=item user ()

Return the address excluding the '@' and the mail domain

=item path ()

Unimplemented yet but should return the UUCP path for the message

=item canon ()

Unimplemented yet but should return the UUCP canon for the message

=back

=head1 AUTHOR

Graham Barr.  Maintained by Mark Overmeer <mailtools@overmeer.net>

=head1 COPYRIGHT

Copyright (c) 2002-2005 Mark Overmeer, 1995-2001 Graham Barr. All rights
reserved. This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut

