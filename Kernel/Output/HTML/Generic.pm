# --
# Kernel/Output/HTML/Generic.pm - provides generic HTML output
# Copyright (C) 2001-2004 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Generic.pm,v 1.155 2004-09-27 12:31:06 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Output::HTML::Generic;

use lib "../../";

use strict;
use Kernel::Language;
use Kernel::Output::HTML::Agent;
use Kernel::Output::HTML::Admin;
use Kernel::Output::HTML::Customer;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.155 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

@ISA = (
    'Kernel::Output::HTML::Agent',
    'Kernel::Output::HTML::Admin',
    'Kernel::Output::HTML::Customer',
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
    # set debug
    $Self->{Debug} = 0;
    # check needed objects
    foreach (qw(ConfigObject LogObject)) {
        if (!$Self->{$_}) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Got no $_!",
            );
            $Self->FatalError();
        }
    }
    # get/set some common params
    if (!$Self->{UserTheme}) {
        $Self->{UserTheme} = $Self->{ConfigObject}->Get('DefaultTheme');
    }
    # get use language (from browser) if no language is there!
    if (!$Self->{UserLanguage}) {
        my $BrowserLang = $Self->{Lang} || $ENV{HTTP_ACCEPT_LANGUAGE} || '';
        my %Data = %{$Self->{ConfigObject}->Get('DefaultUsedLanguages')};
        foreach (keys %Data) {
            if ($BrowserLang =~ /^$_/i) {
                $Self->{UserLanguage} = $_;
            }
        }
    }
    # create language object
    $Self->{LanguageObject} = Kernel::Language->new(
        UserLanguage => $Self->{UserLanguage},
        LogObject => $Self->{LogObject},
        ConfigObject => $Self->{ConfigObject},
        Action => $Self->{Action},
    );
    # --
    # set charset if there is no charset given
    # --
    $Self->{UserCharset} = $Self->{LanguageObject}->GetRecommendedCharset();
    $Self->{Charset}   = $Self->{UserCharset}; # just for compat.
    $Self->{SessionID} = $Param{SessionID} || '';
    $Self->{SessionName} = $Param{SessionName} || 'SessionID';
    $Self->{CGIHandle} = $ENV{'SCRIPT_NAME'} || 'No-$ENV{"SCRIPT_NAME"}';
    # --
    # Baselink
    # --
    $Self->{Baselink}  = "$Self->{CGIHandle}?";
    $Self->{Time}      = $Self->{LanguageObject}->Time(
        Action => 'GET',
        Format => 'DateFormat',
    );
    $Self->{TimeLong}  = $Self->{LanguageObject}->Time(
        Action => 'GET',
        Format => 'DateFormatLong',
    );
    # --
    # check browser (defaut is IE because I don't have IE)
    # --
    $Self->{BrowserWrap} = 'physical';
    $Self->{Browser} = 'Unknown';
    if (!$ENV{'HTTP_USER_AGENT'}) {
        $Self->{Browser} = 'Unknown - no $ENV{"HTTP_USER_AGENT"}';
    }
    elsif ($ENV{'HTTP_USER_AGENT'}) {
        # msie
        if ($ENV{'HTTP_USER_AGENT'} =~ /MSIE ([0-9.]+)/i ||
            $ENV{'HTTP_USER_AGENT'} =~ /Internet Explorer\/([0-9.]+)/i) {
            $Self->{Browser} = 'MSIE';
            $Self->{BrowserWrap} = 'physical';
            # For IE 5.5, we break the header in a special way that makes
            # things work. I don't really want to know.
            if ($1 =~ /(\d)\.(\d)/) {
                $Self->{BrowserMajorVersion} = $1;
                $Self->{BrowserMinorVersion} = $2;
                if ($1 == 5 && $2 == 5 || $1 == 6 && $2 == 0) {
                    $Self->{BrowserBreakDispositionHeader} = 1;
                }
            }
        }
        # netscape
        elsif ($ENV{'HTTP_USER_AGENT'} =~ /netscape/i) {
            $Self->{Browser} = 'Netscape';
            $Self->{BrowserWrap} = 'hard';
        }
        # konqueror
        elsif ($ENV{'HTTP_USER_AGENT'} =~ /konqueror/i) {
            $Self->{Browser} = 'Konqueror';
            $Self->{BrowserWrap} = 'hard';
        }
        # mozilla
        elsif ($ENV{'HTTP_USER_AGENT'} =~ /^mozilla/i) {
            $Self->{Browser} = 'Mozilla';
            $Self->{BrowserWrap} = 'hard';
        }
        # konqueror
        elsif ($ENV{'HTTP_USER_AGENT'} =~ /^opera.*/i) {
            $Self->{Browser} = 'Opera';
            $Self->{BrowserWrap} = 'hard';
        }
        # w3m
        elsif ($ENV{'HTTP_USER_AGENT'} =~ /^w3m.*/i) {
            $Self->{Browser} = 'w3m';
        }
        # lynx
        elsif ($ENV{'HTTP_USER_AGENT'} =~ /^lynx.*/i) {
            $Self->{Browser} = 'Lynx';
        }
        # links
        elsif ($ENV{'HTTP_USER_AGENT'} =~ /^links.*/i) {
            $Self->{Browser} = 'Links';
        }
        else {
            $Self->{Browser} = "Unknown - $ENV{'HTTP_USER_AGENT'}";
        }
    }
    # --
    # get release data
    # --
    my %ReleaseData = $Self->GetRelease();
    $Self->{Product} = $ReleaseData{Product} || '???';
    $Self->{Version} = $ReleaseData{Version} || '???';
    # --
    # load theme
    # --
    my $Theme = $Self->{UserTheme} || $Self->{ConfigObject}->Get('DefaultTheme') || 'Standard';
    # --
    # locate template files
    # --
    $Self->{TemplateDir} = $Self->{ConfigObject}->Get('TemplateDir')."/HTML/$Theme";
    if (!$Self->{TemplateDir}) {
        if (!$Self->{$_}) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "No templates found in '$Self->{TemplateDir}'! Check your Home in Kernel/Config.pm",
            );
            $Self->FatalError();
        }
    }
    return $Self;
}
# --
sub SetEnv {
    my $Self = shift;
    my %Param = @_;
    foreach (qw(Key Value)) {
        if (!defined($Param{$_})) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            $Self->FatalError();
        }
    }
    $Self->{EnvNewRef}->{$Param{Key}} = $Param{Value};
    return 1;
}
# --
sub Block {
    my $Self = shift;
    my %Param = @_;
    if (!$Param{Name}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Name!");
        return;
    }
    push (@{$Self->{BlockData}}, {Name => $Param{Name}, Data => $Param{Data}});
}
# --
sub BlockTemplatePreferences {
    my $Self = shift;
    my %Param = @_;
    my %TagsOpen = ();
    my @Preferences = ();
    my $LastLayerCount = 0;
    my $Layer = 0;
    my $LastLayer = '';
    my $CurrentLayer = '';
    my %UsedNames = ();
    my $TemplateFile = $Param{TemplateFile} || '';
    if (!$Param{Template}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Template!");
        return;
    }
    if (!$Self->{PrasedBlockTemplatePreferences}->{$TemplateFile}) {
        $Param{Template} =~ s{
            <!--\s{0,1}dtl:block:(.+?)\s{0,1}-->
        }
        {
            my $BlockName = $1;
            if (!$TagsOpen{$BlockName}) {
                $Layer++;
                $TagsOpen{$BlockName} = 1;
                my $CL = '';
                if ($Layer == 1) {
                    $LastLayer = '';
                    $CurrentLayer = $BlockName;
                }
                elsif ($LastLayerCount == $Layer) {
                    $CurrentLayer = $LastLayer.'::'.$BlockName;
                }
                else {
                    $LastLayer = $CurrentLayer;
                    $CurrentLayer = $CurrentLayer.'::'.$BlockName;;
                }
#        print STDERR "Layer: $Layer ($CurrentLayer)\n";
                $LastLayerCount = $Layer;
                if (!$UsedNames{$BlockName}) {
#        print STDERR "CN: $BlockName\n";
                    push (@Preferences, {
                        Name => $BlockName,
                        Layer => $Layer,
                        },
                    );
                    $UsedNames{$BlockName} = 1;
                }
            }
            else {
                $TagsOpen{$BlockName} = 0;
                $Layer--;
            }
        }segxm;

        # check open (invalid) tags
        foreach (keys %TagsOpen) {
            if ($TagsOpen{$_}) {
                my $Message = "'dtl:block:$_' isn't closed!";
                if ($TemplateFile) {
                    $Message .= " ($TemplateFile.dtl)";
                }
                $Self->{LogObject}->Log(Priority => 'error', Message => $Message);
                $Self->FatalError();
            }
        }

        # remember block data
        if ($TemplateFile) {
            $Self->{PrasedBlockTemplatePreferences}->{$TemplateFile} = \@Preferences;
        }
        else {
#print STDERR "Not Cached: $TemplateFile\n";
            undef $Self->{PrasedBlockTemplatePreferences}->{$TemplateFile};
        }
        return @Preferences;
    }
    else {
        # return already parsed block data
#print STDERR "Cached: $TemplateFile\n";
        return @{$Self->{PrasedBlockTemplatePreferences}->{$TemplateFile}};
    }
}
# --
sub BlockTemplatesReplace {
    my $Self = shift;
    my %Param = @_;
    my %BlockLayer = ();
    my %BlockTemplates = ();
    my @BR = ();
    if (!$Param{Template}) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Need Template!");
        return;
    }
    my $TemplateString = $Param{Template};
    my $TemplateFile = $Param{TemplateFile} || '';
    # get availabe template block preferences
    my @Blocks = $Self->BlockTemplatePreferences(
        Template => $$TemplateString,
        TemplateFile => $TemplateFile,
    );
    foreach my $Block (reverse @Blocks) {
#print STDERR "GP: $Block->{Name}\n";
         $$TemplateString =~ s{
            <!--\s{0,1}dtl:block:$Block->{Name}\s{0,1}-->(.+?)<!--\s{0,1}dtl:block:$Block->{Name}\s{0,1}-->
        }
        {
            $BlockTemplates{$Block->{Name}} = $1;
            "<!-- dtl:place_block:$Block->{Name} -->";
        }segxm;
        $BlockLayer{$Block->{Name}} = $Block->{Layer};
    }
    # create block template string
    if ($Self->{BlockData}) {
        my @NotUsedBlockData = ();
        foreach my $Block (@{$Self->{BlockData}}) {
            if ($BlockTemplates{$Block->{Name}}) {
                push (@BR, {
                    Layer => $BlockLayer{$Block->{Name}},
                    Name => $Block->{Name},
                    Data => $Self->Output(
                        Template => "<!--start $Block->{Name}-->".$BlockTemplates{$Block->{Name}}."<!--stop $Block->{Name} -->",
                        Data => $Block->{Data},
                        NoBlockReplace => 1,
                    ),
                });
            }
            else {
                push (@NotUsedBlockData, {%{$Block}});
            }
        }
        # remember not use block data
        $Self->{BlockData} = \@NotUsedBlockData;
    }
    return @BR;
}
# --
sub Output {
    my $Self = shift;
    my %Param = @_;
    my %Data = ();
    # get and check param Data
    if ($Param{Data}) {
        if (ref($Param{Data}) ne 'HASH') {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Need HashRef in Param Data! Got: '".ref($Param{Data})."'!",
            );
            $Self->FatalError();
        }
        %Data = %{$Param{Data}};
    }
    # --
    # create %Env for this round!
    # --
    my %Env = ();
    if (!$Self->{EnvRef}) {
        # build OTRS env
        %Env = %ENV;
        # all $Self->{*}
        foreach (keys %{$Self}) {
            $Env{$_} = $Self->{$_} || '';
        }
    }
    else {
        # get %Env from $Self->{EnvRef}
        %Env = %{$Self->{EnvRef}};
    }
    # use new env
    if ($Self->{EnvNewRef}) {
        foreach (%{$Self->{EnvNewRef}}) {
            $Env{$_} = $Self->{EnvNewRef}->{$_};
        }
        undef $Self->{EnvNewRef};
    }
    # --
    # create refs
    # --
    my $EnvRef = \%Env;
    my $DataRef = \%Data;
    my $GlobalRef = {
        EnvRef => $EnvRef,
        DataRef => $DataRef,
        ConfigRef => $Self->{ConfigObject},
    };
    # --
    # read template from filesystem
    # --
    my $TemplateString = '';
    if ($Param{Template} && ref($Param{Template}) eq 'ARRAY') {
         foreach (@{$Param{Template}}) {
             $TemplateString .= $_;
         }
    }
    elsif ($Param{Template}) {
         $TemplateString = $Param{Template};
    }
    elsif ($Param{TemplateFile}) {
        if (open (TEMPLATEIN, "< $Self->{TemplateDir}/$Param{TemplateFile}.dtl")) {
            while (my $Line = <TEMPLATEIN>) {
                $TemplateString .= $Line;
            }
            close (TEMPLATEIN);
        }
        else {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Can't read $Self->{TemplateDir}/$Param{TemplateFile}.dtl: $!",
            );
        }
    }
    else {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Need Template or TemplateFile Param!",
        );
        $Self->FatalError();
    }

    # filtering of comment lines
    $TemplateString =~ s/^#.*\n//gm;

    # parse/get text blocks
    my @BR = $Self->BlockTemplatesReplace(
        Template => \$TemplateString,
        TemplateFile => $Param{TemplateFile} || '',
    );
    my $ID = 0;
    my %LayerHash = ();
    my $OldLayer = 1;
    foreach my $Block (@BR) {
        # reset layer counter if we switched on layer lower
        if ($Block->{Layer} > $OldLayer) {
            $LayerHash{$Block->{Layer}} = 0;
        }
        # count current layer
        $LayerHash{$Block->{Layer}}++;
        # create current id (1:2:3)
        undef $ID;
        for (my $i = 1; $i <= $Block->{Layer}; $i++) {
            if (defined($ID)) {
                $ID .= ":";
             }
             $ID .= $LayerHash{$i};
        }

#        print STDERR "BD($ID): $Block->{Name} - $Block->{Layer} =! $OldLayer\n";

        # add block counter to template blocks
        if ($Block->{Layer} == 1) {
            $TemplateString =~ s{
                (<!--\s{0,1}dtl:place_block:$Block->{Name})(\s{0,1}-->)
            }
            {
#            print STDERR "FR(''->:$LayerHash{$Block->{Layer}}): $Block->{Name} $1:$LayerHash{$Block->{Layer}}$2\n";
                "$1:".$LayerHash{$Block->{Layer}}.$2;
            }segxm;
        }
        # add block counter to in block blocks
        $Block->{Data} =~ s{
            (<!--\s{0,1}dtl:place_block:.+?)(\s{0,1}-->)
        }
        {
#            print STDERR "IR($ID): $1:$ID:-$2\n";
            "$1:$ID:-$2";
        }segxm;

        # count up place_block counter
        $ID =~ s/^(.*:)(\d+)$/$1-/g;
#        print STDERR "S($ID): dtl:place_block:$Block->{Name}:$ID|\n";
        $TemplateString =~ s{
            (<!--\s{0,1}dtl:place_block:$Block->{Name}:)($ID)(\s{0,1}-->)
        }
        {
#            print STDERR "SS($ID): $Block->{Name}\n";
            my $Start = $1;
            my $Stop = $3;
            my $NewID = '';
            if ($ID =~ /^(.*:)(\d+)$/) {
                $NewID = $1.($2+1);
            }
            elsif ($ID =~ /^(\d+)$/) {
                $NewID = ($1+1);
            }
            elsif ($ID =~ /^(.*:)-$/) {
                $NewID = $ID;
            }
#            print STDERR "SE($ID->$NewID): $Block->{Name}\n";
            $Block->{Data}.$Start.$NewID.$Stop;
        }sexm;
        $OldLayer = $Block->{Layer};
    }

    # remove empty blocks and block preferences
    if (!$Param{NoBlockReplace}) {
        undef $Self->{BlockTemplatePreferences};
        $TemplateString =~ s{
            <!--\s{0,1}dtl:place_block:.+?\s{0,1}-->
        }
        {
            '';
        }segxm;
    }

    # process template
    my @Template = split(/\n/, $TemplateString);
    my $Output = '';
    foreach my $Line (@Template) {
      # add missing new line (striped from split)
      $Line .= "\n";
      if ($Line =~ /<dtl/) {
          # --
          # do template set (<dtl set $Data{"adasd"} = "lala">)
          # do system call (<dtl system-call $Data{"adasd"} = "uptime">)
          # --
          $Line =~ s{
            <dtl\W(system-call|set)\W\$(Data|Env|Config)\{\"(.+?)\"\}\W=\W\"(.+?)\">
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
          $Line =~ s{
            <dtl\Wif\W\(\$(Env|Data|Text|Config)\{\"(.*)\"\}\W(eq|ne|=~|!~)\W\"(.*)\"\)\W\{\W\$(Data|Env|Text)\{\"(.*)\"\}\W=\W\"(.*)\";\W\}>
          }
          {
              my $Type = $1 || '';
              my $TypeKey = $2 || '';
              my $Con = $3 || '';
              my $ConVal = defined $4 ? $4 : '';
              my $IsType = $5 || '';
              my $IsKey = $6 || '';
              my $IsValue = $7 || '';
              # --
              # do ne actions
              # --
              if ($Type eq 'Text') {
                  my $Tmp = $Self->{LanguageObject}->Get($TypeKey, $Param{TemplateFile}) || '';
                  if (eval '($Tmp '.$Con.' $ConVal)') {
                      $GlobalRef->{$IsType.'Ref'}->{$IsKey} = $IsValue;
                      # output replace with nothing!
                      "";
                }
              }
              elsif ($Type eq 'Env' || $Type eq 'Data') {
                  my $Tmp = $GlobalRef->{$Type.'Ref'}->{$TypeKey};
                  if (!defined($Tmp)) {
                      $Tmp = '';
                  }
                  if (eval '($Tmp '.$Con.' $ConVal)') {
                    $GlobalRef->{$IsType.'Ref'}->{$IsKey} = $IsValue;
                    # output replace with nothing!
                    "";
                  }
                  else {
                    # output replace with nothing!
                    "";
                  }
              }
              elsif ($Type eq 'Config') {
                  my $Tmp = $Self->{ConfigObject}->Get($TypeKey);
                  if (defined($Tmp) && eval '($Tmp '.$Con.' $ConVal)') {
                      $GlobalRef->{$IsType.'Ref'}->{$IsKey} = $IsValue;
                      "";
                  }
              }
          }egx;
        }
        # --
        # variable & env & config replacement (three times)
        # --
        foreach (1..3) {
            $Line =~ s{
                \$(QData|Data|Env|Config|Include){"(.+?)"}
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
              elsif ($1 eq "QData") {
                  my $Text = $2;
                  if (!defined($Text) || $Text =~ /^","(.+?)$/) {
                      "";
                  }
                  elsif ($Text =~ /^(.+?)","(.+?)$/) {
                      if (defined $GlobalRef->{"DataRef"}->{$1}) {
                        $Self->Ascii2Html(Text => $GlobalRef->{"DataRef"}->{$1}, Max => $2);
                      }
                      else {
                        # output replace with nothing!
                        "";
                      }
                  }
                  else {
                      if (defined $GlobalRef->{"DataRef"}->{$Text}) {
                        $Self->Ascii2Html(Text => $GlobalRef->{"DataRef"}->{$Text});
                      }
                      else {
                        # output replace with nothing!
                        "";
                      }
                  }
              }
              # replace with
              elsif ($1 eq "Config") {
                  if (defined $Self->{ConfigObject}->Get($2)) {
                      $Self->{ConfigObject}->Get($2);
                  }
                  else {
                      # output replace with nothing!
                      "";
                  }
              }
              # include dtl files
              elsif ($1 eq "Include") {
                  $Param{TemplateFile} = $2;
                  $Self->Output(%Param);
              }
            }egx;
        }
        # add this line to output
        $Output .= $Line;
    }

    # --
    # do time translation
    # --
    foreach (1..1) {
        $Output =~ s{
            \$TimeLong({"(.+?)"}|{""})
        }
        {
            if (defined($2)) {
                $Self->{LanguageObject}->FormatTimeString($2);
            }
            else {
                '';
            }
        }egx;
    }
    # --
    # do date translation
    # --
    foreach (1..1) {
        $Output =~ s{
            \$Date({"(.+?)"}|{""})
        }
        {
            $Self->{LanguageObject}->FormatTimeString($2, 'DateFormatShort');
        }egx;
    }
    # --
    # do translation
    # --
    foreach (1..2) {
        $Output =~ s{
            \$Text({"(.+?)"}|{""})
        }
        {
            if (defined($2)) {
                $Self->{LanguageObject}->Get($2, $Param{TemplateFile});
            }
            else {
                '';
            }
        }egx;
    }
    # --
    # do html quote
    # --
    foreach (1..1) {
        $Output =~ s{
            \$Quote({"(.+?)"}|{""})
        }
        {
            my $Text = $2;
#print STDERR "---- $Text ---\n";
            if (!defined($Text) || $Text =~ /^","(.+?)$/) {
                "";
            }
            elsif ($Text =~ /^(.+?)","(.+?)$/) {
                $Self->Ascii2Html(Text => $1, Max => $2);
            }
            else {
                $Self->Ascii2Html(Text => $Text);
            }
        }egx;
    }
    # --
    # Check if the brwoser sends the SessionID cookie!
    # If not, add the SessinID to the links and forms!
    # --
    if (!$Self->{SessionIDCookie}) {
        # rewrite a hrefs
        $Output =~ s{
            (<a.+?href=")(.+?)(\#.+?|)(">|".+?>)
        }
        {
            my $AHref = $1;
            my $Target = $2;
            my $End = $3;
            my $RealEnd = $4;
            if ($Target =~ /^(http:|https:|#|ftp:)/i || $Target !~ /(\.pl|\.php|\.cgi)(\?|$)/) {
                "$AHref$Target$End$RealEnd";
            }
            else {
                "$AHref$Target&$Self->{SessionName}=$Self->{SessionID}$End$RealEnd";
            }
        }iegx;
        # rewrite img src
        $Output =~ s{
            (<img.+?src=")(.+?)(">|".+?>)
        }
        {
            my $AHref = $1;
            my $Target = $2;
            my $End = $3;
            if ($Target =~ /^(http:|https:)/i || !$Self->{SessionID} ||
                 $Target !~ /(\.pl|\.php|\.cgi)(\?|$)/) {
                "$AHref$Target$End";
            }
            else {
                "$AHref$Target&$Self->{SessionName}=$Self->{SessionID}$End";
            }
        }iegx;
        # rewrite forms: <form action="index.pl" method="get">
        $Output =~ s{
            (<form.+?action=")(.+?)(">|".+?>)
        }
        {
            my $Start = "$1";
            my $Target = $2;
            my $End = "$3";
            if ($Target =~ /^(http:|https:)/i || !$Self->{SessionID}) {
                "$Start$Target$End";
            }
            else {
                "$Start$Target$End<input type=\"hidden\" name=\"$Self->{SessionName}\" value=\"$Self->{SessionID}\">";
            }
        }iegx;
    }
    # save %Env
    $Self->{EnvRef} = $EnvRef;
    # custom post filters
    if ($Self->{ConfigObject}->Get('Frontend::Output::PostFilter')) {
        my %Filters = %{$Self->{ConfigObject}->Get('Frontend::Output::PostFilter')};
        foreach my $Filter (sort keys %Filters) {
            # log try of load module
            if ($Self->{Debug} > 1) {
                $Self->{LogObject}->Log(
                    Priority => 'debug',
                    Message => "Try to load module: $Filters{$Filter}->{Module}!",
                );
            }
            if (eval "require $Filters{$Filter}->{Module}") {
                my $Object = $Filters{$Filter}->{Module}->new(
                    ConfigObject => $Self->{ConfigObject},
                    LogObject => $Self->{LogObject},
                    Debug => $Self->{Debug},
                );
                # log loaded module
                if ($Self->{Debug} > 1) {
                    $Self->{LogObject}->Log(
                        Priority => 'debug',
                        Message => "Module: $Filters{$Filter}->{Module} loaded!",
                    );
                }
                # run module
                $Object->Run(%{$Filters{$Filter}}, Data => \$Output);
            }
            else {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Can't load module $Filters{$Filter}->{Module}!",
                );
            }
        }
    }
    # return output
    return $Output;
}
# --
sub Redirect {
    my $Self = shift;
    my %Param = @_;
    my $SessionIDCookie = '';
    my $Output = '';
    # add cookies if exists
    if ($Self->{SetCookies} && $Self->{ConfigObject}->Get('SessionUseCookie')) {
        foreach (keys %{$Self->{SetCookies}}) {
            $Output .= "Set-Cookie: $Self->{SetCookies}->{$_}\n";
        }
    }
    # create & return output
    if ($Param{ExtURL}) {
        # external redirect
        $Param{Redirect} = $Param{ExtURL};
        return $Self->Output(TemplateFile => 'Redirect', Data => \%Param);
    }
    else {
        # internal redirect
        $Param{OP} =~ s/^.*\?(.+?)$/$1/;
        $Param{Redirect} = $Self->{Baselink} . $Param{OP};
        $Output .= $Self->Output(TemplateFile => 'Redirect', Data => \%Param);
        if (!$Self->{SessionIDCookie}) {
            # rewrite location header
            $Output =~ s{
                (location: )(.*)
            }
            {
                my $Start = "$1";
                my $Target = $2;
                my $End = '';
                if ($Target =~ /^(.+?)#(|.+?)$/) {
                    $Target = $1;
                    $End = "#$2";
                }
                if ($Target =~ /http/i || !$Self->{SessionID}) {
                    "$Start$Target$End";
                }
                else {
                    if ($Target =~ /(\?|&)$/) {
                        "$Start$Target$Self->{SessionName}=$Self->{SessionID}$End";
                    }
                    elsif ($Target !~ /\?/) {
                        "$Start$Target?$Self->{SessionName}=$Self->{SessionID}$End";
                    }
                    elsif ($Target =~ /\?/) {
                        "$Start$Target&$Self->{SessionName}=$Self->{SessionID}$End";
                    }
                    else {
                        "$Start$Target?&$Self->{SessionName}=$Self->{SessionID}$End";
                    }
                }
            }iegx;
        }
        return $Output;
    }
}
# --
sub Login {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    # add cookies if exists
    if ($Self->{SetCookies} && $Self->{ConfigObject}->Get('SessionUseCookie')) {
        foreach (keys %{$Self->{SetCookies}}) {
            $Output .= "Set-Cookie: $Self->{SetCookies}->{$_}\n";
        }
    }
    # get message of the day
    if ($Self->{ConfigObject}->Get('ShowMotd')) {
        $Param{"Motd"} = $Self->Output(TemplateFile => 'Motd', Data => \%Param);
    }
    # get language options
    $Param{Language} = $Self->OptionStrgHashRef(
        Data => $Self->{ConfigObject}->Get('DefaultUsedLanguages'),
        Name => 'Lang',
        SelectedID => $Self->{UserLanguage},
        OnChange => 'submit()',
        HTMLQuote => 0,
    );
    # create & return output
    $Output .= $Self->Output(TemplateFile => 'Login', Data => \%Param);
    # get lost password y
    if ($Self->{ConfigObject}->Get('LostPassword')
         && $Self->{ConfigObject}->Get('AuthModule') eq 'Kernel::System::Auth::DB') {
        $Output .= $Self->Output(TemplateFile => 'LostPassword', Data => \%Param);
    }
    return $Output;
}
# --
sub FatalError {
    my $Self = shift;
    my %Param = @_;
    if ($Param{Message}) {
        $Self->{LogObject}->Log(
          Caller => 1,
          Priority => 'error',
          Message => "$Param{Message}",
        );
    }
    print $Self->Header(Area => 'Frontend', Title => 'Fatal Error');
    print $Self->Error(%Param);
    print $Self->Footer();
    exit;
}
# --
sub ErrorScreen {
    my $Self = shift;
    my %Param = @_;
    my $Output = $Self->Header(Title => 'Error');
    $Output .= $Self->Error(%Param);
    $Output .= $Self->Footer();
    return $Output;
}
# --
sub Error {
    my $Self = shift;
    my %Param = @_;
    # get backend error messages
    foreach (qw(Message Traceback)) {
      $Param{'Backend'.$_} = $Self->{LogObject}->GetLogEntry(
          Type => 'Error',
          What => $_
      ) || '';
      $Param{'Backend'.$_} = $Self->Ascii2Html(
          Text => $Param{'Backend'.$_},
          HTMLResultMode => 1,
      );
    }
    if (!$Param{Message}) {
      $Param{Message} = $Param{BackendMessage};
    }
    # create & return output
    return $Self->Output(TemplateFile => 'Error', Data => \%Param);
}
# --
sub Warning {
    my $Self = shift;
    my %Param = @_;
    # get backend error messages
    foreach (qw(Message)) {
      $Param{'Backend'.$_} = $Self->{LogObject}->GetLogEntry(
          Type => 'Notice',
          What => $_
      ) || $Self->{LogObject}->GetLogEntry(
          Type => 'Error',
          What => $_
      ) || '';
      $Param{'Backend'.$_} = $Self->Ascii2Html(
          Text => $Param{'Backend'.$_},
          HTMLResultMode => 1,
      );
    }
    if (!$Param{Message}) {
      $Param{Message} = $Param{BackendMessage};
    }
    # create & return output
    return $Self->Output(TemplateFile => 'Warning', Data => \%Param);
}
# --
sub Notify {
    my $Self = shift;
    my %Param = @_;
    # create & return output
    if (!$Param{Info}) {
      foreach (qw(Message)) {
        $Param{'Backend'.$_} = $Self->{LogObject}->GetLogEntry(
          Type => 'Notice',
          What => $_
        ) || $Self->{LogObject}->GetLogEntry(
          Type => 'Error',
          What => $_
        ) || '';
      }
      $Param{Info} = $Param{BackendMessage};
    }
    $Param{Info} =~ s/\n//g if ($Param{Info});
    return $Self->Output(TemplateFile => 'Notify', Data => \%Param);
}
# --
sub Header {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    my $Type = $Param{Type} || '';
    # add cookies if exists
    if ($Self->{SetCookies} && $Self->{ConfigObject}->Get('SessionUseCookie')) {
        foreach (keys %{$Self->{SetCookies}}) {
            $Output .= "Set-Cookie: $Self->{SetCookies}->{$_}\n";
        }
    }
    # check area
    if (!$Param{'Area'} && $Param{'Title'}) {
        $Param{'Area'} = $Param{'Title'};
        $Param{'Title'} = '';
    }
    # fix IE bug if in filename is the word attachment
    my $File = $Param{Filename} || $Self->{Action} || 'unknown';
    if ($Self->{BrowserBreakDispositionHeader}) {
        $File =~ s/attachment/bttachment/gi;
    }
    # set file name for "save page as"
    $Param{"ContentDisposition"} = "filename=\"$File.html\"";
    # create & return output
    $Output .= $Self->Output(TemplateFile => "Header$Type", Data => \%Param);
    return $Output;
}
# --
sub Footer {
    my $Self = shift;
    my %Param = @_;
    my $Type = $Param{Type} || '';
    # create & return output
    return $Self->Output(TemplateFile => "Footer$Type", Data => \%Param);
}
# --
sub PrintHeader {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    if (!$Param{Width}) {
        $Param{Width} = 640;
    }
    # fix IE bug if in filename is the word attachment
    my $File = $Param{Filename} || $Self->{Action} || 'unknown';
    if ($Self->{BrowserBreakDispositionHeader}) {
        $File =~ s/attachment/bttachment/gi;
    }
    # set file name for "save page as"
    $Param{"ContentDisposition"} = "filename=\"$File.html\"";
    # create & return output
    $Output .= $Self->Output(TemplateFile => 'PrintHeader', Data => \%Param);
    return $Output;
}
# --
sub PrintFooter {
    my $Self = shift;
    my %Param = @_;
    $Param{Host} = $Self->Ascii2Html(
        Text => $ENV{SERVER_NAME}.$ENV{REQUEST_URI},
    );
    # create & return output
    return $Self->Output(TemplateFile => 'PrintFooter', Data => \%Param);
}
# --
sub Ascii2Html {
    my $Self = shift;
    my %Param = @_;
    my $Text = defined $Param{Text} ? $Param{Text} : return;
    my $Max  = $Param{Max} || '';
    my $VMax = $Param{VMax} || '';
    my $NewLine = $Param{NewLine} || '';
    my $HTMLMode = $Param{HTMLResultMode} || '';
    my $StripEmptyLines = $Param{StripEmptyLines} || '';
    # max width
    if ($Max) {
        $Text =~ s/^(.{$Max}).*$/$1\[\.\.\]/gs;
    }
    # newline
    if ($NewLine && length($Text) < 8000) {
         $Text =~ s/\r/\n/g;
         $Text =~ s/(.{$NewLine}.+?\s)/$1\n/g;
    }
    # strip empty lines
    if ($StripEmptyLines) {
        $Text =~ s/^\s*\n//mg;
    }
    # max lines
    if ($VMax) {
        my @TextList = split ('\n', $Text);
        $Text = '';
        my $Counter = 1;
        foreach (@TextList) {
          $Text .= $_ . "\n" if ($Counter <= $VMax);
          $Counter++;
        }
        $Text .= "[...]\n" if ($Counter >= $VMax);
    }
    # html quoting
    $Text =~ s/&/&amp;/g;
    $Text =~ s/</&lt;/g;
    $Text =~ s/>/&gt;/g;
    $Text =~ s/"/&quot;/g;
    # text -> html format quoting
    if ($HTMLMode) {
        $Text =~ s/\n/<br>\n/g;
        $Text =~ s/  /&nbsp;&nbsp;/g;
    }
    # return result
    return $Text;
}
# --
sub LinkQuote {
    my $Self = shift;
    my %Param = @_;
    my $Text = $Param{Text} || '';
    my $Target = $Param{Target} || 'NewPage'. int(rand(199));
    # do link quote
    $Text .= ' ';
    $Text =~ s{
        (http|https|ftp|www)((:\/\/|\.).*?)(\s|\)|\"|&quot;|&nbsp;|]|'|>|<|&gt;|&lt;)
    }
    {
        my $Link = $1.$2;
        my $OrigText = $1.$2;
        my $OrigTextEnd = $4;
        $Link =~ s/ //g;
        if ($Link !~ /^http:\/\/|ftp:\/\//) {
            $Link = "http://$Link";
        }
       "<a href=\"$Link\" target=\"$Target\">$OrigText<\/a>$OrigTextEnd";
    }egxi;
    # do mail to quote
    $Text =~ s/(mailto:.*?)(\s|\)|\"|]|')/<a href=\"$1\">$1<\/a>$2/gi;
    chop($Text);
    return $Text;
}
# --
sub LinkEncode {
    my $Self = shift;
    my $Link = shift;
    if (!defined($Link)) {
        return;
    }
    $Link =~ s/&/%26/g;
    $Link =~ s/=/%3D/g;
    $Link =~ s/\!/%21/g;
    $Link =~ s/"/%22/g;
    $Link =~ s/\#/%23/g;
    $Link =~ s/\$/%24/g;
    $Link =~ s/'/%27/g;
    $Link =~ s/\+/%2B/g;
    $Link =~ s/\?/%3F/g;
    $Link =~ s/\|/%7C/g;
    $Link =~ s/�/\%A7/g;
    $Link =~ s/ /\+/g;
    return $Link;
}
# --
sub CustomerAge {
    my $Self = shift;
    my %Param = @_;
    my $Age = defined($Param{Age}) ? $Param{Age} : return;
    my $Space = $Param{Space} || '<BR>';
    my $AgeStrg = '';
    if ($Age =~ /^-(.*)/) {
        $Age = $1;
        $AgeStrg = '-';
    }
    # get days
    if ($Age >= 86400) {
        $AgeStrg .= int( ($Age / 3600) / 24 ) . ' ';
        if (int( ($Age / 3600) / 24 ) > 1) {
            $AgeStrg .= $Self->{LanguageObject}->Get('days');
        }
        else {
            $AgeStrg .= $Self->{LanguageObject}->Get('day');
        }
        $AgeStrg .= $Space;
    }
    # get hours
    if ($Age >= 3600) {
        $AgeStrg .= int( ($Age / 3600) % 24 ) . ' ';
        if (int( ($Age / 3600) % 24 ) > 1) {
            $AgeStrg .= $Self->{LanguageObject}->Get('hours');
        }
        else {
            $AgeStrg .= $Self->{LanguageObject}->Get('hour');
        }
        $AgeStrg .= $Space;
    }
    # get minutes (just if age < 1 day)
    if ($Self->{ConfigObject}->Get('ShowAlwaysLongTime') || $Age < 86400) {
        $AgeStrg .= int( ($Age / 60) % 60) . ' ';
        if (int( ($Age / 60) % 60) > 1) {
            $AgeStrg .= $Self->{LanguageObject}->Get('minutes');
        }
        else {
            $AgeStrg .= $Self->{LanguageObject}->Get('minute');
        }
    }
    return $AgeStrg;
}
# --
sub OptionStrgHashRef {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    my $Name = $Param{Name} || '';
    my $Max = $Param{Max} || 80;
    my $Multiple = $Param{Multiple} ? 'multiple' : '';
    my $HTMLQuote = defined($Param{HTMLQuote}) ? $Param{HTMLQuote} : 1;
    my $LT = defined($Param{LanguageTranslation}) ? $Param{LanguageTranslation} : 1;
    my $Selected = defined($Param{Selected}) ? $Param{Selected} : '-not-possible-to-use-';
    my $SelectedID = defined($Param{SelectedID}) ? $Param{SelectedID} : '-not-possible-to-use-';
    my $SelectedIDRefArray = $Param{SelectedIDRefArray} || '';
    my $PossibleNone = $Param{PossibleNone} || '';
    my $SortBy = $Param{SortBy} || 'Value';
    my $Size = $Param{Size} || '';
    $Size = "size=$Size" if ($Size);
    if (!$Param{Data}) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Got no Data Param ref in OptionStrgHashRef()!",
        );
        $Self->FatalError();
    }
    elsif (ref($Param{Data}) ne 'HASH') {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message => "Need HashRef in Param Data! Got: '".ref($Param{Data})."'!",
        );
        $Self->FatalError();
    }
    my %Data = %{$Param{Data}};
    my $OnStuff = '';
    if ($Param{OnChangeSubmit}) {
        $OnStuff .= ' onchange="submit()" ';
    }
    if ($Param{OnChange}) {
        $OnStuff = " onchange=\"$Param{OnChange}\" ";
    }
    if ($Param{OnClick}) {
        $OnStuff = " onclick=\"$Param{OnClick}\" ";
    }
    # --
    # set default value
    # --
    my $NoSelectedDataGiven = 0;
    if ($Selected eq '-not-possible-to-use-' && $SelectedID eq '-not-possible-to-use-') {
        $NoSelectedDataGiven = 1;
    }
    if (($Name eq 'ValidID' || $Name eq 'Valid') && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultValid');
    }
    elsif (($Name eq 'CharsetID' || $Name eq 'Charset') && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultCharset');
    }
    elsif (($Name eq 'LanguageID' || $Name eq 'Language') && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultLanguage');
    }
    elsif (($Name eq 'ThemeID' || $Name eq 'Theme') && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultTheme');
    }
    elsif (($Name eq 'LanguageID' || $Name eq 'Language') && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultLanguage');
    }
    elsif ($Name eq 'NoteID' && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultNoteType');
    }
    elsif ($Name eq 'CloseNoteID' && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultCloseNoteType');
    }
    elsif ($Name eq 'CloseStateID' && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultCloseType');
    }
    elsif ($Name eq 'ComposeStateID' && $NoSelectedDataGiven) {
        $Selected = $Self->{ConfigObject}->Get('DefaultNextComposeType');
    }
    elsif ($NoSelectedDataGiven) {
        # else set 1?
#        $SelectedID = 1;
    }
    # --
    # build select string
    # --
    $Output .= "<select name=\"$Name\" $Multiple $OnStuff $Size>\n";
    if ($PossibleNone) {
        $Output .= '<option VALUE="">$Text{"none"}</option>';
    }
    # hash cleanup
    foreach (keys %Data) {
        if (!defined($Data{$_})) {
            delete $Data{$_};
        }
    }

    my @Order = ();
    if ($SortBy eq 'Key') {
         foreach (sort keys %Data) {
             push (@Order, $_);
         }
    }
    else {
         foreach (sort {$Data{$a} cmp $Data{$b}} keys %Data) {
             push (@Order, $_);
         }
    }
    foreach (@Order) {
        if (defined($_) && defined($Data{$_})) {
            # check if SelectedIDRefArray exists
            if ($SelectedIDRefArray && ref($SelectedIDRefArray) eq 'ARRAY') {
                foreach my $ID (@{$SelectedIDRefArray}) {
                    if ($ID eq $_) {
                        $Param{SelectedIDRefArrayOK}->{$_} = 1;
                    }
                }
            }
            # build select string
            if ($_ eq $SelectedID || $Data{$_} eq $Selected || $Param{SelectedIDRefArrayOK}->{$_}) {
              $Output .= '  <option selected value="'.$Self->Ascii2Html(Text => $_).'">';
            }
            else {
              $Output .= '  <option value="'.$Self->Ascii2Html(Text => $_).'">';
            }
            if ($LT) {
                $Data{$_} = $Self->{LanguageObject}->Get($Data{$_});
            }
            if ($HTMLQuote) {
                $Output .= $Self->Ascii2Html(Text => $Data{$_}, Max => $Max);
            }
            else {
                $Output .= $Data{$_};
            }
            $Output .= "</option>\n";
        }
    }
    $Output .= "</select>\n";
    return $Output;
}
# --
sub NoPermission {
    my $Self = shift;
    my %Param = @_;
    my $WithHeader = $Param{WithHeader} || 'yes';
    my $Output = '';
    $Param{Message} = 'No Permission!' if (!$Param{Message});
    # create output
    $Output = $Self->Header(Title => 'No Permission') if ($WithHeader eq 'yes');
    $Output .= $Self->Output(TemplateFile => 'NoPermission', Data => \%Param);
    $Output .= $Self->Footer() if ($WithHeader eq 'yes');
    # return output
    return $Output;
}
# --
sub CheckCharset {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    if (!$Param{Action}) {
       $Param{Action} = '$Env{"Action"}';
    }
    # with utf-8 can everything be shown
    if ($Self->{UserCharset} !~ /^utf-8$/i) {
      # replace ' or "
      $Param{ContentCharset} && $Param{ContentCharset} =~ s/'|"//gi;
      # if the content charset is different to the user charset
      if ($Param{ContentCharset} && $Self->{UserCharset} !~ /^$Param{ContentCharset}$/i) {
        # if the content charset is us-ascii it is always shown correctly
        if ($Param{ContentCharset} !~ /us-ascii/i) {
            $Output = '<p><i class="small">'.
              '$Text{"This message was written in a character set other than your own."}'.
              '$Text{"If it is not displayed correctly,"} '.
              '<a href="'.$Self->{Baselink}."Action=$Param{Action}&TicketID=$Param{TicketID}".
              "&ArticleID=$Param{ArticleID}&Subaction=ShowHTMLeMail\" target=\"HTMLeMail\" ".
              'onmouseover="window.status=\'$Text{"open it in a new window"}\'; return true;" onmouseout="window.status=\'\';">'.
              '$Text{"click here"}</a> $Text{"to open it in a new window."}</i></p>';
        }
      }
    }
    # return note string
    return $Output;
}
# --
sub CheckMimeType {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    if (!$Param{Action}) {
       $Param{Action} = '$Env{"Action"}';
    }
    # --
    # check if it is a text/plain email
    # --
    if ($Param{MimeType} && $Param{MimeType} !~ /text\/plain/i) {
         $Output = '<p><i class="small">$Text{"This is a"} '.$Param{MimeType}.
           ' $Text{"email"}, '.
           '<a href="'.$Self->{Baselink}."Action=$Param{Action}&TicketID=".
           "$Param{TicketID}&ArticleID=$Param{ArticleID}&Subaction=ShowHTMLeMail\" ".
           'target="HTMLeMail" '.
           'onmouseover="window.status=\'$Text{"open it in a new window"}\'; return true;" onmouseout="window.status=\'\';">'.
           '$Text{"click here"}</a> '.
           '$Text{"to open it in a new window."}</i></p>';
    }
    # just to be compat
    elsif ($Param{Body} =~ /^<.DOCTYPE html PUBLIC|^<HTML>/i) {
         $Output = '<p><i class="small">$Text{"This is a"} '.$Param{MimeType}.
           ' $Text{"email"}, '.
           '<a href="'.$Self->{Baselink}.'Action=$Env{"Action"}&TicketID='.
           "$Param{TicketID}&ArticleID=$Param{ArticleID}&Subaction=ShowHTMLeMail\" ".
           'target="HTMLeMail" '.
           'onmouseover="window.status=\'$Text{"open it in a new window"}\'; return true;" onmouseout="window.status=\'\';">'.
           '$Text{"click here"}</a> '.
           '$Text{"to open it in a new window."}</i></p>';
    }
    # return note string
    return $Output;
}
# --
sub ReturnValue {
    my $Self = shift;
    my $What = shift;
    return $Self->{$What};
}
# --
sub GetRelease {
    my $Self = shift;
    my %Param = @_;
    # --
    # chekc if this is already done
    # --
    if ($Self->{ReleaseHash}) {
        return %{$Self->{ReleaseHash}};
    }
    # --
    # open release data file
    # --
    my %Release = ();
    $Release{File} = $Self->{ConfigObject}->Get('Home').'/RELEASE';
    open (PRODUCT, "< $Release{File}") || print STDERR "Can't read $Release{File}: $!";
    while (<PRODUCT>) {
      # filtering of comment lines
      if ($_ !~ /^#/) {
        if ($_ =~ /^PRODUCT.=(.*)$/i) {
            $Release{Product} = $1;
        }
        elsif ($_ =~ /^VERSION.=(.*)$/i) {
            $Release{Version} = $1;
        }
      }
    }
    close (PRODUCT);
    # --
    # store data
    # --
    $Self->{ReleaseHash} = \%Release;
    # --
    # return data
    # --
    return %Release;
}
# --
sub Attachment {
    my $Self = shift;
    my %Param = @_;
    # reset binmode, don't use utf8
    binmode(STDOUT);
    # return attachment
    my $Output = "Content-Disposition: ";
    if ($Param{Type}) {
        $Output .= $Param{Type}.'; ';
    }
    $Output .= "filename=\"$Param{Filename}\"\n".
      "Content-Type: $Param{ContentType}\n\n".
      "$Param{Content}";
    return $Output;
}
# --
sub PageNavBar {
    my $Self = shift;
    my %Param = @_;
    my $Limit = $Param{Limit} || 0;
    $Param{AllHits} = 0 if (!$Param{AllHits});
    $Param{StartHit} = 0 if (!$Param{AllHits});
    my $Pages = int(($Param{AllHits} / $Param{PageShown}) + 0.99999);
    my $Page = int(($Param{StartHit} / $Param{PageShown}) + 0.99999);
    my $WindowSize = $Param{WindowSize} || 15;
    # build Results (1-5 or 16-30)
    if ($Param{AllHits} >= ($Param{StartHit}+$Param{PageShown})) {
        $Param{Results} = $Param{StartHit}."-".($Param{StartHit}+$Param{PageShown}-1);
    }
    else {
        $Param{Results} = "$Param{StartHit}-$Param{AllHits}";
    }
    # check total hits
    if ($Limit == $Param{AllHits}) {
       $Param{TotalHits} = "<font color=red>$Param{AllHits}</font>";
    }
    else {
       $Param{TotalHits} = $Param{AllHits};
    }
    # build page nav bar
    my $WindowStart = sprintf ("%.0f",($Param{StartHit} / $Param{PageShown}));
    $WindowStart = int(($WindowStart/$WindowSize))+1;
    $WindowStart = ($WindowStart*$WindowSize)-($WindowSize);
    my $i = 0;
    while ($i <= ($Pages-1)) {
      $i++;
      if ($i <= ($WindowStart+$WindowSize) && $i > $WindowStart) {
           $Param{SearchNavBar} .= " <a href=\"$Self->{Baselink}$Param{Action}&$Param{Link}".
           "StartWindow=$WindowStart&StartHit=". ((($i-1)*$Param{PageShown})+1);
           $Param{SearchNavBar} .= '">';
           if ($Page == $i) {
             $Param{SearchNavBar} .= '<b>'.($i).'</b>';
           }
           else {
             $Param{SearchNavBar} .= ($i);
           }
           $Param{SearchNavBar} .= '</a> ';
#}
       }
       # over window
       elsif ($i > ($WindowStart+$WindowSize)) {
           my $StartWindow = $WindowStart+$WindowSize+1;
           my $LastStartWindow = int($Pages/$WindowSize);
           $Param{SearchNavBar} .= "&nbsp;<a href=\"$Self->{Baselink}$Param{Action}&$Param{Link}".
              "StartHit=".$i*$Param{PageShown};
           $Param{SearchNavBar} .= '">'."&gt;&gt;</a>&nbsp;";
           $Param{SearchNavBar} .= " <a href=\"$Self->{Baselink}$Param{Action}&$Param{Link}".
              "StartHit=".(($Param{PageShown}*($Pages-1))+1);
           $Param{SearchNavBar} .= '">'."&gt;|</a> ";
           $i = 99999999;
       }
       elsif ($i < $WindowStart && ($i-1) < $Pages) {
           my $StartWindow = $WindowStart-$WindowSize-1;
           $Param{SearchNavBar} .= " <a href=\"$Self->{Baselink}$Param{Action}&$Param{Link}".
              "StartHit=1&StartWindow=1";
           $Param{SearchNavBar} .= '">'."|&lt;</a>&nbsp;";
           $Param{SearchNavBar} .= " <a href=\"$Self->{Baselink}$Param{Action}&$Param{Link}".
            "StartHit=".(($WindowStart-1)*($Param{PageShown})+1);
           $Param{SearchNavBar} .= '">'."&lt;&lt;</a>&nbsp;";
           $i = $WindowStart-1;
       }
    }
    # return data
    return (
        TotalHits => $Param{TotalHits},
        Result => $Param{Results},
        SiteNavBar => $Param{SearchNavBar},
        Link => $Param{Link},
    );
}
# --
sub NavigationBar {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    if (!$Param{Type}) {
        if (!$Self->{ModuleReg}->{NavBarName}) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Need NavBarName in Module registry!",
            );
            $Self->FatalError();
        }
        $Param{Type} = $Self->{ModuleReg}->{NavBarName};
    }
    # run notification modules
    if (ref($Self->{ConfigObject}->Get('Frontend::NotifyModule')) eq 'HASH') {
        my %Jobs = %{$Self->{ConfigObject}->Get('Frontend::NotifyModule')};
        foreach my $Job (sort keys %Jobs) {
            # log try of load module
            if ($Self->{Debug} > 1) {
                $Self->{LogObject}->Log(
                    Priority => 'debug',
                    Message => "Try to load module: $Jobs{$Job}->{Module}!",
                );
            }
            if (eval "require $Jobs{$Job}->{Module}") {
                my $Object = $Jobs{$Job}->{Module}->new(
                    %{$Self},
                    ConfigObject => $Self->{ConfigObject},
                    LogObject => $Self->{LogObject},
                    DBObject => $Self->{DBObject},
                    LayoutObject => $Self,
                    UserID => $Self->{UserID},
                    Debug => $Self->{Debug},
                );
                # log loaded module
                if ($Self->{Debug} > 1) {
                    $Self->{LogObject}->Log(
                        Priority => 'debug',
                        Message => "Module: $Jobs{$Job}->{Module} loaded!",
                    );
                }
                # run module
                $Output .= $Object->Run(%Param, Config => $Jobs{$Job});
            }
            else {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Can't load module $Jobs{$Job}->{Module}!",
                );
            }
        }
    }
    # create menu items
    my %NavBarModule = ();
    foreach my $Module (sort keys %{$Self->{ConfigObject}->Get('Frontend::Module')}) {
        my %Hash = %{$Self->{ConfigObject}->Get('Frontend::Module')->{$Module}};
        if ($Hash{NavBar} && ref($Hash{NavBar}) eq 'ARRAY') {
            my @Items = @{$Hash{NavBar}};
            foreach my $Item (@Items) {
                if (($Item->{NavBar} && $Item->{NavBar} eq $Param{Type}) || (!$Item->{NavBar} && $Item->{NavBarNotShown} && $Param{Type} !~ /^$Item->{NavBarNotShown}/) || (!$Item->{NavBar} && !$Item->{NavBarNotShown})) {
                    # highligt avtive area link
                    if ($Item->{NavBarHighlightOn} && $Item->{NavBarHighlightOn} eq $Param{Type}) {
                        $Item->{ItemAreaCSSSuffix} = 'active';
                    }
                    # get permissions from module if no permissions are defined for the icon
                    if (!$Item->{GroupRo} && !$Item->{Group}) {
                        if ($Hash{GroupRo}) {
                            $Item->{GroupRo} = $Hash{GroupRo};
                        }
                        if ($Hash{Group}) {
                            $Item->{Group} = $Hash{Group};
                        }
                    }
                    # check shown permission
                    my $Shown = 0;
                    foreach my $Permission (qw(GroupRo Group)) {
#                        if ($Item->{Group} && !$Item->{GroupRo} && $Permission eq 'Group') {
#                            $Shown = 0;
#                        }
                        # array access restriction
                        if ($Item->{$Permission} && ref($Item->{$Permission}) eq 'ARRAY') {
                            foreach (@{$Item->{$Permission}}) {
                                my $Key = "UserIs".$Permission."[".$_."]";
                                if ($Self->{$Key} && $Self->{$Key} eq 'Yes') {
                                    $Shown = 1;
                                }
                            }
                        }
                        # scalar access restriction
                        elsif ($Item->{$Permission}) {
                            my $Key = "UserIs".$Permission."[".$Item->{$Permission}."]";
                            if ($Self->{$Key} && $Self->{"$Key"} eq 'Yes') {
                                $Shown = 1;
                            }
                        }
                        # no access restriction
                        elsif (!$Item->{GroupRo} && !$Item->{Group}) {
                            $Shown = 1;
                        }
                    }
                    if ($Shown) {
                        my $Key = ($Item->{Block}||'').sprintf("%07d", $Item->{Prio});
                        foreach (1..51) {
                            if ($NavBarModule{$Key}) {
                                $Item->{Prio}++;
                                $Key = ($Item->{Block}||'').sprintf("%07d", $Item->{Prio});
                            }
                            if (!$NavBarModule{$Key}) {
                                last;
                            }
                        }
                        $NavBarModule{$Key} = $Item;
#print STDERR "$Item->{Block}-$Item->{Prio}\n";
                    }
                }
            }
        }
    }
    # run menu item modules
    if (ref($Self->{ConfigObject}->Get('Frontend::NavBarModule')) eq 'HASH') {
        my %Jobs = %{$Self->{ConfigObject}->Get('Frontend::NavBarModule')};
        foreach my $Job (sort keys %Jobs) {
            # log try of load module
            if ($Self->{Debug} > 1) {
                $Self->{LogObject}->Log(
                    Priority => 'debug',
                    Message => "Try to load module: $Jobs{$Job}->{Module}!",
                );
            }
            if (eval "require $Jobs{$Job}->{Module}") {
                my $Object = $Jobs{$Job}->{Module}->new(
                    %{$Self},
                    ConfigObject => $Self->{ConfigObject},
                    LogObject => $Self->{LogObject},
                    DBObject => $Self->{DBObject},
                    LayoutObject => $Self,
                    UserID => $Self->{UserID},
                    Debug => $Self->{Debug},
                );
                # log loaded module
                if ($Self->{Debug} > 1) {
                    $Self->{LogObject}->Log(
                        Priority => 'debug',
                        Message => "Module: $Jobs{$Job}->{Module} loaded!",
                    );
                }
                # run module
                %NavBarModule = (%NavBarModule, $Object->Run(%Param, Config => $Jobs{$Job}));
            }
            else {
                $Self->{LogObject}->Log(
                    Priority => 'error',
                    Message => "Can't load module $Jobs{$Job}->{Module}!",
                );
            }
        }
    }

    foreach (sort keys %NavBarModule) {
#print STDERR "$_ ���\n";
        $Self->Block(
            Name => $NavBarModule{$_}->{Block} || 'Item',
            Data => $NavBarModule{$_},
        );
    }

    # create & return output
    return $Self->Output(TemplateFile => 'AgentNavigationBar', Data => \%Param).$Output;
}
# --
sub WindowTabStart {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    if (!$Param{Tab} || ($Param{Tab} && ref($Param{Tab}) ne 'ARRAY')) {
        $Self->{LogObject}->Log(
                Priority => 'error',
                Message => "Need Tab as ARRAY ref in WindowTabStart()!",
        );
        $Self->FatalError();
    }
    foreach my $Hash (@{$Param{Tab}}) {
        if ($Hash->{Ready}) {
            $Hash->{Image} = 'ready.png';
        }
        else {
            $Hash->{Image} = 'notready.png';
        }
        $Self->Block(
             Name => 'Tab',
             Data => {
                 %{$Hash},
             },
         );
    }
    $Output .= $Self->Output(TemplateFile => 'AgentWindowTabStart', Data => \%Param);
    return $Output;
}
# --
sub WindowTabStop {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    if ($Param{"Layer0Footer"}) {
        foreach my $Hash (@{$Param{"Layer0Footer"}}) {
            $Self->Block(
                 Name => 'Layer0Footer',
                 Data => {
                     %{$Hash},
                 },
             );
        }
    }
    if ($Param{"Layer1Footer"}) {
        foreach my $Hash (@{$Param{"Layer1Footer"}}) {
            $Self->Block(
                 Name => 'Layer1Footer',
                 Data => {
                     %{$Hash},
                 },
             );
        }
    }
    $Output .= $Self->Output(TemplateFile => 'AgentWindowTabStop', Data => \%Param);
    return $Output;
}
# --
sub BuildDateSelection {
    my $Self = shift;
    my %Param = @_;
    my $Prefix = $Param{'Prefix'} || '';
    my $DiffTime = $Param{'DiffTime'} || 0;
    my $Format = defined($Param{Format}) ? $Param{Format} : 'DateInputFormatLong';
    my ($s,$m,$h, $D,$M,$Y, $wd,$yd,$dst) = localtime(time()+$DiffTime);
    $Y = $Y+1900;
    $M++;
    # year
    my %Year = ();
    foreach ($Y-10..$Y+1) {
        $Year{$_} = $_;
    }
    $Param{Year} = $Self->OptionStrgHashRef(
        Name => $Prefix.'Year',
        Data => \%Year,
        SelectedID => int($Param{$Prefix.'Year'} || $Y),
    );
    # month
    my %Month = ();
    foreach (1..12) {
        my $Tmp = sprintf("%02d", $_);
        $Month{$_} = $Tmp;
    }
    $Param{Month} = $Self->OptionStrgHashRef(
        Name => $Prefix.'Month',
        Data => \%Month,
        SelectedID => int($Param{$Prefix.'Month'} || $M),
    );
    # day
    my %Day = ();
    foreach (1..31) {
        my $Tmp = sprintf("%02d", $_);
        $Day{$_} = $Tmp;
    }
    $Param{Day} = $Self->OptionStrgHashRef(
        Name => $Prefix.'Day',
        Data => \%Day,
        SelectedID => int($Param{$Prefix.'Day'} || $D),
    );
    if ($Format eq 'DateInputFormatLong') {
        # hour
        my %Hour = ();
        foreach (0..23) {
            my $Tmp = sprintf("%02d", $_);
            $Hour{$_} = $Tmp;
        }
        $Param{Hour} = $Self->OptionStrgHashRef(
            Name => $Prefix.'Hour',
            Data => \%Hour,
            SelectedID => $Param{$Prefix.'Hour'} || $h,
        );
        # minute
        my %Minute = ();
        foreach (0..59) {
            my $Tmp = sprintf("%02d", $_);
            $Minute{$_} = $Tmp;
        }
        $Param{Minute} = $Self->OptionStrgHashRef(
            Name => $Prefix.'Minute',
            Data => \%Minute,
            SelectedID => $Param{$Prefix.'Minute'} || $m,
        );
    }
    #DateFormat
    return $Self->{LanguageObject}->Time(
        Action => 'Return',
        Format => 'DateInputFormat',
        Mode => 'NotNumeric',
        %Param,
    );
}
# --
sub OutputCSV {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    my @Head = ('##No Head Data##');
    if ($Param{Head}) {
        @Head = @{$Param{Head}};
    }
    my @Data = (['##No Data##']);
    if ($Param{Data}) {
        @Data = @{$Param{Data}};
    }

    foreach my $Entry (@Head) {
        # csv quote
        $Entry =~ s/"/""/g if ($Entry);
        $Entry = '' if (!defined($Entry));
        $Output .= "\"$Entry\";";
    }
    $Output .= "\n";

    foreach my $EntryRow (@Data) {
        foreach my $Entry (@{$EntryRow}) {
            # csv quote
            $Entry =~ s/"/""/g if ($Entry);
            $Entry = '' if (!defined($Entry));
            $Output .= "\"$Entry\";";
        }
        $Output .= "\n";
    }
    return $Output;
}
# --
sub OutputHTMLTable {
    my $Self = shift;
    my %Param = @_;
    my $Output = '';
    my @Head = ('##No Head Data##');
    if ($Param{Head}) {
        @Head = @{$Param{Head}};
    }
    my @Data = (['##No Data##']);
    if ($Param{Data}) {
        @Data = @{$Param{Data}};
    }

    $Output .= '<table border="0" width="100%" cellspacing="0" cellpadding="3">';
    $Output .= "<tr>\n";
    foreach my $Entry (@Head) {
        $Output .= "<td class=\"item\">$Entry</td>\n";
    }
    $Output .= "</tr>\n";

    foreach my $EntryRow (@Data) {
        $Output .= "<tr>\n";
        foreach my $Entry (@{$EntryRow}) {
            $Output .= "<td class=\"small\">$Entry</td>\n";
        }
        $Output .= "</tr>\n";
    }
    $Output .= "</table>\n";
    return $Output;
}
# --
1;
