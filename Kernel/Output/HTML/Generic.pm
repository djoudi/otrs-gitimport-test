# --
# HTML/Generic.pm - provides generic HTML output
# Copyright (C) 2001 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Generic.pm,v 1.10 2002-01-02 00:45:21 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Output::HTML::Generic;

use lib '../../../';

use strict;
use MIME::Words qw(:all);
use Kernel::Language;
use Kernel::Output::HTML::Agent;
use Kernel::Output::HTML::Admin;

use vars qw(@ISA $VERSION);

$VERSION = '$Revision: 1.10 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

@ISA = (
    'Kernel::Output::HTML::Agent',
    'Kernel::Output::HTML::Admin',
);

sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {}; 
    bless ($Self, $Type);

    # get common objects
    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check needed objects
    foreach ('ConfigObject', 'LogObject') {
        die "Got no $_!" if (!$Self->{$_});
    } 

    # get/set some common params
    $Self->{CGIHandle} = $Self->{ConfigObject}->Get('CGIHandle');
    $Self->{SessionID} = $Param{SessionID} || '';
    $Self->{Baselink}  = "$Self->{CGIHandle}?SessionID=$Self->{SessionID}";
    $Self->{Time}      = localtime();
    $Self->{Title}     = 'Open Ticket Request System' . ' - ' . $Self->{Time};
    $Self->{TableTitle}= 'OpenTRS - Open Ticket Request System';
    $Self->{HistoryCounter} = 0;

    # load theme
    my $Theme = $Self->{UserTheme} || 'Standard';

    # locate template files
    $Self->{TemplateDir} = '../../Kernel/Output/HTML/'. $Theme;

    # create language object
    $Self->{LanguageObject} = Kernel::Language->new(
      Language => $Self->{UserLanguage},
      LogObject => $Self->{LogObject},
    );

    return $Self;
}
# --
sub Output {
    my $Self = shift;
    my %Param = @_;
    my %Data = ();
    if ($Param{Data}) {
        my $Tmp = $Param{Data};
        %Data = %$Tmp;
    }

    # create %Env for this round!
    my %Env = ();
    if (!$Self->{EnvRef}) {
        # build OpenTRS env
        %Env = %ENV;
        $Env{SessionID} = $Self->{SessionID};
        $Env{Time} = $Self->{Time};
        $Env{CGIHandle} = $Self->{CGIHandle};
        $Env{Charset} = $Self->{UserCharset} || 'iso-8859-1';
        $Env{Baselink} = $Self->{Baselink};
        $Env{UserFirstname} = $Self->{UserFirstname};
        $Env{UserLastname} = $Self->{UserLastname};
        $Env{UserLogin} = $Self->{UserLogin};
        $Env{UserLoginTop} = '('. $Self->{UserLogin} .')' if ($Env{UserLogin});
        $Env{UserTheme} = $Self->{UserTheme};
        $Env{UserCharset} = $Self->{UserCharset}; 
        $Env{UserLanguage} = $Self->{UserLanguage};
        $Env{Action} = $Self->{Action};
        $Env{Subaction} = $Self->{Subaction};
    }  
    else {
        # get %Env from $Self->{EnvRef} 
        my $Tmp = $Self->{EnvRef};
        %Env = %$Tmp;
    }
 
    # create refs
    my $EnvRef = \%Env;
    my $DataRef = \%Data;
    my $GlobalRef = {EnvRef=> $EnvRef, DataRef => $DataRef},
  
    # read template
    my $Output = '';
    open (TEMPLATEIN, "< $Self->{TemplateDir}/$Param{TemplateFile}.dtl")  
         ||  die "Can't read $Param{TemplateFile}.dtl: $!";
    while (<TEMPLATEIN>) {
      # filtering of comment lines
      if ($_ !~ /^#/) {
        $Output .= $_;

        # --
        # do template set (<dtl set $Data{"adasd"} = "lala">) 
        # do system call (<dtl system-call $Data{"adasd"} = "uptime">)
        # --
        $Output =~ s{
          <dtl\W(system-call|set)\W\$(Data|Env)\{\"(.+?)\"\}\W=\W\"(.+?)\">
        }
        {
          my $Data = '';
          if ($1 eq "set") {
            $Data = $4;
          }
          else {
            open (SYSTEM, " $4 | ") || print STDERR "Can't open $4: $!";
            while (<SYSTEM>) {
                $Data .= $_;
            }
            close (SYSTEM);      
          }

          $GlobalRef->{"$2Ref"}->{$3} = $Data;
          # output replace with nothing!
          "";

        }egx;

        # --
        # do template if dynamic
        # --
        $Output =~ s{
          <dtl\Wif\W\(\$(Env|Data|Text)\{\"(.*)\"\}\W(eq|ne)\W\"(.*)\"\)\W\{\W\$(Data|Env|Text)\{\"(.*)\"\}\W=\W\"(.*)\";\W\}>
        }
        {
          if ($3 eq "eq") {
            # --
            # do eq actions
            # --
            if ($1 eq "Text") {
              if ($Self->{LanguageObject}->Get($2) eq $4) {
                  $GlobalRef->{"$5Ref"}->{$6} = $7;
                  "";
              }
            }
            elsif ($1 eq "Env" || $1 eq "Data") {
              if ((exists $GlobalRef->{"$1Ref"}->{$2}) && $GlobalRef->{"$1Ref"}->{$2} eq $4) {
                  $GlobalRef->{"$5Ref"}->{$6} = $7;
                  "";
              }
            }
        }
        elsif ($3 eq "ne") {
            # --
            # do ne actions
            # --
            if ($1 eq "Text") {
              if ($Self->{LanguageObject}->Get($2) ne $4) {
                 $GlobalRef->{"$5Ref"}->{$6} = $7;
                 # output replace with nothing!
                 "";
              }
            }
            elsif ($1 eq "Env" || $1 eq "Data") {
              if ((exists $GlobalRef->{"$1Ref"}->{$2}) && $GlobalRef->{"$1Ref"}->{$2} ne $4) {
                  $GlobalRef->{"$5Ref"}->{$6} = $7;
                  # output replace with nothing!
                  "";
              }
            }
          }
        }egx;

        # --
        # variable & env & config replacement 
        # --
        $Output =~ s{
          \$(Data|Env|Config){"(.+?)"}
        }
        {
          if ($1 eq "Data" || $1 eq "Env") {
            if (defined $GlobalRef->{"$1Ref"}->{$2}) {
                 $GlobalRef->{"$1Ref"}->{$2};
            }
            else {
                 # output replace with nothing!
                 "";
            }
          }
          # replace with
          elsif ($1 eq "Config") {
            $Self->{ConfigObject}->Get($2); 
          }
       }egx;

       # --
       # do translation
       # --
       $Output =~ s{
          \$Text({"(.+?)"}|{""})
       }
       { 
          $Self->{LanguageObject}->Get($2 || '');
       }egx;

      }
    }
 
    # save %Env
    $Self->{EnvRef} = $EnvRef;

    # return output
    return $Output;
}
# --
sub Redirect {
    my $Self = shift;
    my %Param = @_;
    my $ReUrl = $Self->{Baselink} . $Param{OP};
    (my $Output = <<EOF);
Content-Type: text/html
location: $ReUrl

EOF
    return $Output;
}
# --
sub Test {
    my $Self = shift;
    my %Param = @_;

    # create & return output
    return $Self->Output(TemplateFile => 'Test', Data => \%Param);
}
# --
sub Login {
    my $Self = shift;
    my %Param = @_;

    # create & return output
    return $Self->Output(TemplateFile => 'Login', Data => \%Param);
}
# --
sub Error {
    my $Self = shift;
    my %Param = @_;

    ($Param{Package}, $Param{Filename}, $Param{Line}, $Param{Subroutine}) = caller(0);
    ($Param{Package1}, $Param{Filename1}, $Param{Line1}, $Param{Subroutine1}) = caller(1);
    ($Param{Package2}, $Param{Filename2}, $Param{Line2}, $Param{Subroutine2}) = caller(2);

    $Param{Version} = ("\$$Param{Package}". '::VERSION');
    $Param{Version} =~ s/(.*)/$1/ee;

    # create & return output
    return $Self->Output(TemplateFile => 'Error', Data => \%Param);
}
# --
sub Header {
    my $Self = shift;
    my %Param = @_;

    # create & return output
    return $Self->Output(TemplateFile => 'Header', Data => \%Param);
}
# --
sub Footer {
    my $Self = shift;
    my %Param = @_;

    # create & return output
    return $Self->Output(TemplateFile => 'Footer', Data => \%Param);
}
# --
sub Ascii2Html {
    my $Self = shift;
    my %Param = @_;
    my $Text = $Param{Text} || return;
    my $Max  = $Param{Max} || '';
    my $Mime = $Param{MIME} || '';
    if ($Mime) {
        $Text = decode_mimewords($Text);
    }
    if ($Max) {
        $Text =~ s/^(.{$Max}).*$/$1 [...]/;
    }
    $Text =~ s/&/&amp;/g;
    $Text =~ s/</&lt;/g;
    $Text =~ s/>/&gt;/g;
    return $Text;
}
# --
sub LinkQuote {
    my $Self = shift;
    my %Param = @_;
    my $Text = $Param{Text} || '';
    my $Target = $Param{Target} || 'NewPage';

    # do link quote
    $Text =~ s/(http:\/\/.*?)(\s|\)|\"|]|')/<a href=\"$1\" target=\"$Target\">$1<\/a>$2/gi;
    # do mail to quote
    $Text =~ s/(mailto:.*?)(\s|\)|\"|]|')/<a href=\"$1\">$1<\/a>$2/gi;

    return $Text;
}
# --
sub MimeWordDecode {
    my $Self = shift;
    my %Param = @_;
    my $Text = $Param{Text} || return;
    $Text = decode_mimewords($Text);
    return $Text;
}
# --
sub CustomerAge {
    my $Self = shift;
    my %Param = @_;
    my $Age = $Param{Age};
    my $Space = $Param{Space} || '<BR>';
    my $AgeStrg = '';

    if ($Age > 86400) {
        $AgeStrg .= int( ($Age / 3600) / 24 ) . ' ';
        if (int( ($Age / 3600) / 24 ) > 1) {
            $AgeStrg .= $Self->{LanguageObject}->Get('days');
        }
        else {
            $AgeStrg .= $Self->{LanguageObject}->Get('day');
        }
        $AgeStrg .= $Space;
    }
    if ($Age > 3600) {
        $AgeStrg .= int( ($Age / 3600) % 24 ) . ' ';
        if (int( ($Age / 3600) % 24 ) > 1) {
            $AgeStrg .= $Self->{LanguageObject}->Get('hours');
        }
        else {
             $AgeStrg .= $Self->{LanguageObject}->Get('hour');
        }
    $AgeStrg .= $Space;
    }
    $AgeStrg .= int( ($Age / 60) % 60) . ' ';
    if (int( ($Age / 60) % 60) > 1) {
        $AgeStrg .= $Self->{LanguageObject}->Get('minutes');
    }
    else {
        $AgeStrg .= $Self->{LanguageObject}->Get('minute');
    }
    return $AgeStrg;
}
# --
sub OptionStrgHashRef {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    my $Name = $Param{Name} || '';
    my $Multiple = $Param{Multiple} || '';
    $Multiple = 'multiple' if ($Multiple);
    my $Selected = $Param{Selected} || 1;
    my $Size = $Param{Size} || '';
    $Size = "size=$Size" if ($Size);
    my $DataTmp = $Param{Data};
    my %Data = %$DataTmp;
    $Output .= "<select name=\"$Name\" $Multiple $Size>\n";
    foreach (sort {$Data{$a} cmp $Data{$b}} keys %Data) {
        if (($_) && ($Data{$_})) {
            if ($_ eq $Selected || $Data{$_} eq $Selected) {
              $Output .= "    <option selected value=\"$_\">".
                     $Self->{LanguageObject}->Get($Data{$_}) ."</option>\n";
            }
            else {
              $Output .= "    <option VALUE=\"$_\">".
                      $Self->{LanguageObject}->Get($Data{$_}) ."</option>\n";
            }
        }
    }
    $Output .= "</select>\n";
    return $Output;
}
# --
sub NoPermission {
    my $Self = shift;
    my %Param = @_;
    my $Output = $Self->Header();
    $Output .= $Self->Error(
                Message => 'No Permission!!',
                Comment => 'Please go away!',
    );
    $Output .= $Self->Footer();
    return $Output;
}
# --

1;
 
