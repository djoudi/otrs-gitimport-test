# --
# Kernel/System/Config.pm - all system config tool functions
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Config.pm,v 1.39 2005-07-15 00:24:33 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::System::Config;

use strict;

use Kernel::System::XML;
use Kernel::Config;

use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.39 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

=head1 NAME

Kernel::System::Config - to manage config settings

=head1 SYNOPSIS

All functions to manage config settings.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create a object

  use Kernel::Config;
  use Kernel::System::Log;
  use Kernel::System::DB;
  use Kernel::System::Config;

  my $ConfigObject = Kernel::Config->new();
  my $LogObject    = Kernel::System::Log->new(
      ConfigObject => $ConfigObject,
  );
  my $DBObject = Kernel::System::DB->new(
      ConfigObject => $ConfigObject,
      LogObject => $LogObject,
  );
  my $ConfigToolObject = Kernel::System::Config->new(
      LogObject => $LogObject,
      ConfigObject => $ConfigObject,
      DBObject => $DBObject,
  );

=cut

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

    $Self->{Home} = $Self->{ConfigObject}->Get('Home');

    # create xml object
    $Self->{XMLObject} = Kernel::System::XML->new(%Param);
    # create config object
    $Self->{ConfigDefaultObject} = Kernel::Config->new(%Param, Level => 'Default');
    # create config object
    $Self->{ConfigObject} = Kernel::Config->new(%Param, Level => 'First');
    # create config object
    $Self->{ConfigClearObject} = Kernel::Config->new(%Param, Level => 'Clear');


    # read all config files
    $Self->{ConfigCounter} = $Self->_Init();
    # write default file
    $Self->_WriteDefault();

    return $Self;
}

sub _Init {
    my $Self = shift;
    my %Param = @_;
    my $Counter = 0;
    # check needed stuff
    foreach (qw()) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # load xml config files
    if (-e "$Self->{Home}/Kernel/Config/Files/") {
        my %Data = ();
        my @Files = glob("$Self->{Home}/Kernel/Config/Files/*.xml");
        foreach my $File (@Files) {
            my $ConfigFile = '';
            if (open (IN, "< $File")) {
                while (<IN>) {
                    $ConfigFile .= $_;
                }
                close (IN);
            }
            else {
                print STDERR "ERROR: $!: $File\n";
            }
            if ($ConfigFile) {
                my @XMLHash = $Self->{XMLObject}->XMLParse2XMLHash(String => $ConfigFile);
                $Data{$File} = \@XMLHash;
            }
        }
        $Self->{XMLConfig} = [];
        # load framework, application, config, changes
        foreach my $Init (qw(Framework Application Config Changes)) {
            foreach my $Set (sort keys %Data) {
                if ($Data{$Set}->[1]->{otrs_config}->[1]->{init} eq $Init) {
                    push (@{$Self->{XMLConfig}}, @{$Data{$Set}->[1]->{otrs_config}->[1]->{ConfigItem}});
                    delete $Data{$Set};
                }
            }
        }
        # load misc
        foreach my $Set (sort keys %Data) {
            push (@{$Self->{XMLConfig}}, @{$Data{$Set}->[1]->{otrs_config}->[1]->{ConfigItem}});
            delete $Data{$Set};
        }
    }
    # read all config files
    foreach my $ConfigItem (reverse @{$Self->{XMLConfig}}) {
        $Counter++;
        if ($ConfigItem->{Name} && !$Self->{Config}->{$ConfigItem->{Name}}) {
            $Self->{Config}->{$ConfigItem->{Name}} = $ConfigItem;
        }
    }
    return $Counter;
}

sub _WriteDefault {
    my $Self = shift;
    my %Param = @_;
    my $File = '';
    my %UsedKeys = ();
    my $Home = $Self->{Home};
    # check needed stuff
    foreach (qw()) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # read all config files
    foreach my $ConfigItem (@{$Self->{XMLConfig}}) {
        if ($ConfigItem->{Name} && !$UsedKeys{$ConfigItem->{Name}}) {
            $UsedKeys{$ConfigItem->{Name}} = 1;
            my %Config = $Self->ConfigItemGet(
                Name => $ConfigItem->{Name},
                Default => 1,
            );
            if ($Config{Valid}) {
                my $Name = $Config{Name};
                $Name =~ s/\\/\\\\/g;
                $Name =~ s/'/\'/g;
                $Name =~ s/###/'}->{'/g;
                $File .= "\$Self->{'$Name'} = ".$Self->_XML2Perl(Data => \%Config);
            }
        }
    }
    if (!open(OUT, "> $Home/Kernel/Config/Files/ZZZAAuto.pm")) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Can't write $Home/Kernel/Config/Files/ZZZAAuto.pm!");
        return;
    }
    else {
        print OUT $File;
        print OUT "\$Self->{'1'} = 1;\n";
        close (OUT);
    }
}

=item Download()

download config changes

    $ConfigToolObject->Download();

=cut

sub Download {
    my $Self = shift;
    my %Param = @_;
    my $File = '';
    my $Home = $Self->{'Home'};
    # check needed stuff
    foreach (qw()) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    if (!open(IN, "< $Home/Kernel/Config/Files/ZZZAuto.pm")) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Can't open $Home/Kernel/Config/Files/ZZZAuto.pm!");
        return '';
    }
    else {
        while (<IN>) {
            $File .= $_;
        }
        close (IN);
        return $File;
    }
}

=item Upload()

upload of config changes

    $ConfigToolObject->Upload(
        Content => $Content,
    );

=cut

sub Upload {
    my $Self = shift;
    my %Param = @_;
    my $File = '';
    my $Home = $Self->{'Home'};
    # check needed stuff
    foreach (qw(Content)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    if (!open(OUT, "> $Home/Kernel/Config/Files/ZZZAuto.pm")) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Can't write $Home/Kernel/Config/Files/ZZZAuto.pm!");
        return;
    }
    else {
        print OUT $Param{Content};
        close (OUT);
        return 1;
    }
}

=item CreateConfig()

submit config settings to application

    $ConfigToolObject->CreateConfig();

=cut

sub CreateConfig {
    my $Self = shift;
    my %Param = @_;
    my $File = '';
    my %UsedKeys = ();
    my $Home = $Self->{'Home'};
    # check needed stuff
    foreach (qw()) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # read all config files
    foreach my $ConfigItem (@{$Self->{XMLConfig}}) {
        if ($ConfigItem->{Name} && !$UsedKeys{$ConfigItem->{Name}}) {
            my %Config = $Self->ConfigItemGet(
                Name => $ConfigItem->{Name},
            );
            my %ConfigDefault = $Self->ConfigItemGet(
                Name => $ConfigItem->{Name},
                Default => 1,
            );
            $UsedKeys{$ConfigItem->{Name}} = 1;
            my $Name = $Config{Name};
            $Name =~ s/\\/\\\\/g;
            $Name =~ s/'/\'/g;
            $Name =~ s/###/'}->{'/g;
            if ($Config{Valid}) {
                my $C = $Self->_XML2Perl(Data => \%Config);
                my $D = $Self->_XML2Perl(Data => \%ConfigDefault);
                my ($A1, $A2);
                eval "\$A1 = $C";
                eval "\$A2 = $D";
                if (!defined($A1) && !defined($A2)) {
                    # do nothing
                }
                elsif ((defined($A1) && !defined($A2)) || (!defined($A1) && defined($A2)) || $Self->DataDiff(Data1 => $A1, Data2 => $A2) || ($Config{Valid} && !$ConfigDefault{Valid})) {
#            my $Dump = Data::Dumper::Dumper(\%Config);
#                    print STDERR "\$Self->{'$Name'} = $C - $Dump";
                    $File .= "\$Self->{'$Name'} = $C";
                }
                else {
                    # do nothing
                }
            }
            elsif (!$Config{Valid} && $ConfigDefault{Valid}) {
#            elsif (!$Config{Valid}) {
                $File .= "delete \$Self->{'$Name'};\n";
#                print OUT "    \$Self->{'Valid'}->{'$Name'} = '$Config{Valid}';\n";
            }
        }
    }
    if (!open(OUT, "> $Home/Kernel/Config/Files/ZZZAuto.pm")) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Can't write $Home/Kernel/Config/Files/ZZZAuto.pm!");
        return;
    }
    else {
        print OUT $File;
        print OUT "\$Self->{'1'} = 1;\n";
        close(OUT);
        return 1;
    }
}

=item ConfigItemUpdate()

submit config settings and save it

    $ConfigToolObject->ConfigItemUpdate(
        Valid => 1,
        Key => 'WebUploadCacheModule',
        Value => 'Kernel::System::Web::UploadCache::DB',
    );

=cut

sub ConfigItemUpdate {
    my $Self = shift;
    my %Param = @_;
    my %UsedKeys = ();
    my $Home = $Self->{'Home'};
    # check needed stuff
    foreach (qw(Valid Key Value)) {
        if (!defined($Param{$_})) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    if (!open(OUT, ">> $Home/Kernel/Config/Files/ZZZAuto.pm")) {
        $Self->{LogObject}->Log(Priority => 'error', Message => "Can't write $Home/Kernel/Config/Files/ZZZAuto.pm: $!");
        return;
    }
    else {
        # diff
        my %ConfigDefault = $Self->ConfigItemGet(
            Name => $Param{Key},
            Default => 1,
        );
        my %Config = $Self->ConfigItemGet(
            Name => $Param{Key},
        );
        $Param{Key} =~ s/\\/\\\\/g;
        $Param{Key} =~ s/'/\'/g;
        $Param{Key} =~ s/###/'}->{'/g;
        # store in config
        require Data::Dumper;
        if (!$Param{Valid}) {
            my $Dump = "delete \$Self->{'$Param{Key}'};";
            print OUT $Dump;
            close(OUT);
            return 1;
        }
        else {
            my $Dump = Data::Dumper::Dumper($Param{Value});
            $Dump =~ s/\$VAR1/\$Self->{'$Param{Key}'}/;
            print OUT $Dump;
            close(OUT);
            return 1;
        }
    }
}

=item ConfigItemGet()

get the current config setting

    my %Config = $ConfigToolObject->ConfigItemGet(
        Name => 'Ticket::NumberGenerator',
    );

get the default config setting

    my %Config = $ConfigToolObject->ConfigItemGet(
        Name => 'Ticket::NumberGenerator',
        Default => 1,
    );

=cut

sub ConfigItemGet {
    my $Self = shift;
    my %Param = @_;
    my $XMLConfig;
    # check needed stuff
    foreach (qw(Name)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    my $Level = '';
    if ($Param{Default}) {
        $Level = 'Default';
    }
#$Self->{LogObject}->Dumper(\%Param);

    if ($Self->{Config}->{$Param{Name}}) {
        # copy config and store it as default
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper($Self->{Config}->{$Param{Name}});
        $Dump =~ s/\$VAR1 =/\$ConfigItem =/;
        # rh as 8 bug fix
        $Dump =~ s/\${\\\$VAR1->{'.+?'}\[0\]}/\{\}/g;
        my $ConfigItem;
        if (!eval "$Dump") {
            die "ERROR: $!: $@ in $Dump";
        }
        # add current valid state
        if (!$Param{Default} && !defined($Self->ModGet(ConfigName => $ConfigItem->{Name}))) {
                $ConfigItem->{Valid} = 0;
        }
        elsif (!$Param{Default}) {
            $ConfigItem->{Valid} = 1;
        }
        # update xml with current config setting
        if ($ConfigItem->{Setting}->[1]->{String}) {
            # fill default
            $ConfigItem->{Setting}->[1]->{String}->[1]->{Default} = $ConfigItem->{Setting}->[1]->{String}->[1]->{Content};
            if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                $ConfigItem->{Setting}->[1]->{String}->[1]->{Content} = $Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level);
            }
        }
        if ($ConfigItem->{Setting}->[1]->{TextArea}) {
            # fill default
            $ConfigItem->{Setting}->[1]->{TextArea}->[1]->{Default} = $ConfigItem->{Setting}->[1]->{TextArea}->[1]->{Content};
            if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                $ConfigItem->{Setting}->[1]->{TextArea}->[1]->{Content} = $Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level);
            }
        }
        if ($ConfigItem->{Setting}->[1]->{Option}) {
            # fill default
            $ConfigItem->{Setting}->[1]->{Option}->[1]->{Default} = $ConfigItem->{Setting}->[1]->{Option}->[1]->{SelectedID};
            if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                $ConfigItem->{Setting}->[1]->{Option}->[1]->{SelectedID} = $Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level);
            }
        }
        if ($ConfigItem->{Setting}->[1]->{Hash}) {
           if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                my @Array = ();
                if (ref($ConfigItem->{Setting}->[1]->{Hash}->[1]->{Item}) eq 'ARRAY') {
                    @Array = @{$ConfigItem->{Setting}->[1]->{Hash}->[1]->{Item}};
                }
                @{$ConfigItem->{Setting}->[1]->{Hash}->[1]->{Item}} = (undef);
                my %Hash = %{$Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level)};
                foreach my $Key (sort keys %Hash) {
                   if (ref($Hash{$Key}) eq 'ARRAY') {
                        my @Array = (undef,{Content => '',});
                        @{$Array[1]{Item}} = (undef);
                        foreach my $Content (@{$Hash{$Key}}) {
                            push (@{$Array[1]{Item}}, {Content => $Content});
                        }
                        push (@{$ConfigItem->{Setting}->[1]->{Hash}->[1]->{Item}}, {
                                Key     => $Key,
                                Content => '',
                                Array   => \@Array,
                            },
                        );
                    }
                    elsif (ref($Hash{$Key}) eq 'HASH') {
                        my @Array = (undef,{Content => '',});
                        @{$Array[1]{Item}} = (undef);
                        foreach my $Key2 (keys %{$Hash{$Key}}) {
                            push (@{$Array[1]{Item}}, {Content => $Hash{$Key}{$Key2}, Key => $Key2});
                        }
                        push (@{$ConfigItem->{Setting}->[1]->{Hash}->[1]->{Item}}, {
                                Key     => $Key,
                                Content => '',
                                Hash    => \@Array,
                            },
                        );
                    }
                    else {
                       my $Option = 0;
                       foreach my $Index (1...$#Array) {
                           if (defined ($Array[$Index]{Key}) && $Array[$Index]{Key} eq $Key && defined ($Array[$Index]{Option})) {
                                $Option = 1;
                                $Array[$Index]{Option}[1]{SelectedID} = $Hash{$Key};
                                push (@{$ConfigItem->{Setting}->[1]->{Hash}->[1]->{Item}}, {
                                        Key     => $Key,
                                        Content => '',
                                        Option  => $Array[$Index]{Option},
                                    },
                                );
                            }
                        }
                        if ($Option == 0) {
                            push (@{$ConfigItem->{Setting}->[1]->{Hash}->[1]->{Item}}, {
                                    Key     => $Key,
                                    Content => $Hash{$Key},
                                },
                            );
                        }
                    }
                }
            }
        }
        if ($ConfigItem->{Setting}->[1]->{Array}) {
            if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                @{$ConfigItem->{Setting}->[1]->{Array}->[1]->{Item}} = (undef);
                my @Array = @{$Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level)};
                foreach my $Key (@Array) {
                    push (@{$ConfigItem->{Setting}->[1]->{Array}->[1]->{Item}}, {
                            Content => $Key,
                        },
                    );
                }
            }
        }
        if ($ConfigItem->{Setting}->[1]->{FrontendModuleReg}) {
             if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                @{$ConfigItem->{Setting}->[1]->{FrontendModuleReg}} = (undef);
                my %Hash = %{$Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level)};
#                   $Self->{LogObject}->Dumper(jkl => %Hash);
                foreach my $Key (sort keys %Hash) {
                    @{$ConfigItem->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}} = (undef);
                    if ($Key eq 'Group' || $Key eq 'GroupRo') {
                        my @Array = (undef);
                        foreach my $Content (@{$Hash{$Key}}) {
                            push (@{$ConfigItem->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}},
                                {Content => $Content}
                            );
#if ($ConfigItem->{Name} eq 'Frontend::Module###Admin') {
#print STDERR "GROUP: $Content\n";
#}
                        }
                    }
                    elsif ($Key eq 'NavBar' || $Key eq 'NavBarModule') {
#                         $Self->{LogObject}->Dumper($Key => \%Hash);
                        if (ref($Hash{$Key}) eq 'ARRAY') {
                            foreach my $Content (@{$Hash{$Key}}) {
                                my %NavBar;
                                foreach (sort keys %{$Content}) {
                                    if ($_ eq 'Group' || $_ eq 'GroupRo') {
                                        @{$NavBar{$_}} = (undef);
                                        foreach my $Group (@{$Content->{$_}}) {
                                            push (@{$NavBar{$_}}, {Content => $Group});
                                        }
                                    }
                                    else {
                                        push (@{$NavBar{$_}}, (undef, {Content => $Content->{$_}}));
                                    }
                                }
                                push (@{$ConfigItem->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}}, \%NavBar);
                            }
                        }
                        else {
                            my %NavBar;
                            my $Content = $Hash{$Key};
                            foreach (sort keys %{$Content}) {
                                if ($_ eq 'Group' || $_ eq 'GroupRo') {
                                    @{$NavBar{$_}} = (undef);
                                    foreach my $Group (@{$Content->{$_}}) {
                                        push (@{$NavBar{$_}}, {Content => $Group});
                                    }
                                }
                                else {
                                    push (@{$NavBar{$_}}, (undef, {Content => $Content->{$_}}));
                                }
                            }
                            $ConfigItem->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key} = \%NavBar;
                        }
                    }
                    else {
                        push (@{$ConfigItem->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}},
                            {Content => $Hash{$Key}}
                        );
                    }
                }
            }
#  $Self->{LogObject}->Dumper(jkl => $ConfigItem);
        }
        if ($ConfigItem->{Setting}->[1]->{TimeWorkingHours}) {
            if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                @{$ConfigItem->{Setting}->[1]->{TimeWorkingHours}->[1]->{Day}} = (undef);
                my %Days = %{$Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level)};
                foreach my $Day (keys %Days) {
                    my @Array = (undef);
                    foreach my $Hour (@{$Days{$Day}}) {
                        push (@Array, { Content => $Hour, });
                    }
                    push (@{$ConfigItem->{Setting}->[1]->{TimeWorkingHours}->[1]->{Day}}, {
                            Name => $Day,
                            Hour => \@Array,
                        },
                    );
                }
#$Self->{LogObject}->Dumper($ConfigItem);
            }
        }
        if ($ConfigItem->{Setting}->[1]->{TimeVacationDays}) {
            if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                @{$ConfigItem->{Setting}->[1]->{TimeVacationDays}->[1]->{Item}} = (undef);
                my %Hash = %{$Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level)};
                foreach my $Month (sort keys %Hash) {
                    foreach my $Day (sort keys %{$Hash{$Month}}) {
                        push (@{$ConfigItem->{Setting}->[1]->{TimeVacationDays}->[1]->{Item}}, {
                                Month => $Month,
                                Day => $Day,
                                Content => $Hash{$Month}->{$Day},
                            },
                        );
                    }
                }
#$Self->{LogObject}->Dumper($ConfigItem);
            }
        }
        if ($ConfigItem->{Setting}->[1]->{TimeVacationDaysOneTime}) {
            if (!$Param{Default} && defined($Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level))) {
                @{$ConfigItem->{Setting}->[1]->{TimeVacationDaysOneTime}->[1]->{Item}} = (undef);
                my %Hash = %{$Self->ModGet(ConfigName => $ConfigItem->{Name}, Level => $Level)};
                foreach my $Year (sort keys %Hash) {
                    foreach my $Month (sort keys %{$Hash{$Year}}) {
                        foreach my $Day (sort keys %{$Hash{$Year}->{$Month}}) {
                            push (@{$ConfigItem->{Setting}->[1]->{TimeVacationDaysOneTime}->[1]->{Item}}, {
                                    Year => $Year,
                                    Month => $Month,
                                    Day => $Day,
                                    Content => $Hash{$Year}->{$Month}->{$Day},
                                },
                            );
                        }
                    }
                }
#$Self->{LogObject}->Dumper($ConfigItem);
            }
        }
        if (!$Param{Default}) {
            my %ConfigItemDefault = $Self->ConfigItemGet(
                Name => $Param{Name},
                Default => 1,
            );
            my $C = $Self->_XML2Perl(Data => $ConfigItem);
            my $D = $Self->_XML2Perl(Data => \%ConfigItemDefault);
            my ($A1, $A2);
            eval "\$A1 = $C";
            eval "\$A2 = $D";
            if (!defined($A1) && !defined($A2)) {
                $ConfigItem->{Diff} = 0;
            }
            elsif ((defined($A1) && !defined($A2)) || (!defined($A1) && defined($A2)) || $Self->DataDiff(Data1 => $A1, Data2 => $A2)) {
                $ConfigItem->{Diff} = 1;
            }
        }
        if ($ConfigItem->{Setting}->[1]->{Option} && $ConfigItem->{Setting}->[1]->{Option}->[1]->{Location}) {
            my $Home = $Self->{Home};
            my @List = glob($Home."/$ConfigItem->{Setting}->[1]->{Option}->[1]->{Location}");
            foreach my $Item (@List) {
                $Item =~ s/$Home//g;
                $Item =~ s/\/\//\//g;
                $Item =~ s/^\///g;
                $Item =~ s/^(.*)\.pm/$1/g;
                $Item =~ s/\//::/g;
                $Item =~ s/\//::/g;
                my $Value = $Item;
                my $Key = $Item;
                $Value =~ s/^.*::(.+?)$/$1/g;
                if (!$ConfigItem->{Setting}->[1]->{Option}->[1]->{Item}) {
                    push (@{$ConfigItem->{Setting}->[1]->{Option}->[1]->{Item}}, undef);
                }
                push (@{$ConfigItem->{Setting}->[1]->{Option}->[1]->{Item}}, {
                        Key => $Key,
                        Content => $Value,
                    },
                );
            }
        }
        return %{$ConfigItem};
    }
}

sub ConfigItemReset {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    my %ConfigItemDefault = $Self->ConfigItemGet(
        Name => $Param{Name},
        Default => 1,
    );
    my $A = $Self->_XML2Perl(Data => \%ConfigItemDefault);
    my ($B);
    eval "\$B = $A";
    $Self->ConfigItemUpdate(Key => $Param{Name}, Value => $B, Valid => $ConfigItemDefault{Valid});
    return 1;
}

=item ConfigGroupList()

get a list of config groups

    my %ConfigGroupList = $ConfigToolObject->ConfigGroupList();

=cut

sub ConfigGroupList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw()) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    my %List = ();
    foreach my $ConfigItem (@{$Self->{XMLConfig}}) {
        if ($ConfigItem->{Group} && ref($ConfigItem->{Group}) eq 'ARRAY') {
            foreach my $Group (@{$ConfigItem->{Group}}) {
                if ($Group->{Content}) {
                    $List{$Group->{Content}} = $Group->{Content};
                }
            }
        }
    }
    return %List;
}

=item ConfigSubGroupList()

get a list of config sub groups

    my %ConfigGroupList = $ConfigToolObject->ConfigSubGroupList(Name => 'Framework');

=cut

sub ConfigSubGroupList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Name)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    my %List = ();
    foreach my $ConfigItem (@{$Self->{XMLConfig}}) {
        if ($ConfigItem->{Group} && ref($ConfigItem->{Group}) eq 'ARRAY') {
            my $Hit = 0;
            foreach my $Group (@{$ConfigItem->{Group}}) {
                if ($Group->{Content} && $Group->{Content} eq $Param{Name}) {
                    $Hit = 1;
                }
            }
            if ($Hit) {
                foreach my $SubGroup (@{$ConfigItem->{SubGroup}}) {
                    if ($SubGroup->{Content}) {
                         # get sub count
                         my @List = $Self->ConfigSubGroupConfigItemList(
                             Group => $Param{Name},
                             SubGroup => $SubGroup->{Content},
                         );
                         $List{$SubGroup->{Content}} = ($#List+1);
                    }
                }
            }
        }
    }
    return %List;
}

=item ConfigSubGroupConfigItemList()

get a list of config items of a sub group

    my @ConfigItemList = $ConfigToolObject->ConfigSubGroupConfigItemList(
        Group => 'Framework',
        SubGroup => 'Web',
    );

=cut

sub ConfigSubGroupConfigItemList {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Group SubGroup)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    my @List = ();
    my %Used = ();
    foreach my $ConfigItem (@{$Self->{XMLConfig}}) {
        my $Name = $ConfigItem->{Name};
        if ($ConfigItem->{Group} && ref($ConfigItem->{Group}) eq 'ARRAY') {
            my $Hit = 0;
            foreach my $Group (@{$ConfigItem->{Group}}) {
                if ($Group->{Content} && $Group->{Content} eq $Param{Group}) {
                    $Hit = 1;
                }
            }
            if ($Hit) {
                if ($ConfigItem->{SubGroup} && ref($ConfigItem->{SubGroup}) eq 'ARRAY') {
                    foreach my $SubGroup (@{$ConfigItem->{SubGroup}}) {
                        if (!$Used{$ConfigItem->{Name}} && $SubGroup->{Content} && $SubGroup->{Content} eq $Param{SubGroup}) {
                            $Used{$ConfigItem->{Name}} = 1;
                            push (@List, $ConfigItem->{Name});
                        }
                    }
                }
            }
        }
    }
    return @List;
}

sub ModGet {
    my $Self = shift;
    my %Param = @_;
    my $Content;
    my $ConfigObject;
    # do not use ZZZ files
    if ($Param{Level} && $Param{Level} eq 'Default') {
         $ConfigObject = $Self->{ConfigDefaultObject};
    }
    elsif ($Param{Level} && $Param{Level} eq 'Clear') {
         $ConfigObject = $Self->{ConfigClearObject};
    }
    else {
         $ConfigObject = $Self->{ConfigObject};
    }
    if ($Param{ConfigName} =~ /^(.*)###(.*)###(.*)$/) {
        if (defined($ConfigObject->Get($1))) {
            $Content = $ConfigObject->Get($1)->{$2}->{$3};
        }
    }
    elsif ($Param{ConfigName} =~ /^(.*)###(.*)$/) {
        if (defined($ConfigObject->Get($1))) {
            $Content = $ConfigObject->Get($1)->{$2};
        }
    }
    else {
        if (defined($ConfigObject->Get($Param{ConfigName}))) {
            $Content = $ConfigObject->Get($Param{ConfigName});
        }
    }
    return $Content;
}

sub DataDiff {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Data1 Data2)) {
        if (!defined($Param{$_})) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    # ''
    if (ref($Param{Data1}) eq '' && ref($Param{Data2}) eq '') {
        if (!defined($Param{Data1}) && !defined($Param{Data2})) {
            # do noting, it's ok
            return 0;
        }
        elsif (!defined($Param{Data1}) || !defined($Param{Data2})) {
            # return diff, because its different
            return 1;
        }
        elsif ($Param{Data1} ne $Param{Data2}) {
            # return diff, because its different
            return 1;
        }
        else {
            # return 0, because its not different
            return 0;
        }
    }
    # SCALAR
    if (ref($Param{Data1}) eq 'SCALAR' && ref($Param{Data2}) eq 'SCALAR') {
        if (!defined(${$Param{Data1}}) && !defined(${$Param{Data2}})) {
            # do noting, it's ok
            return 0;
        }
        elsif (!defined(${$Param{Data1}}) || !defined(${$Param{Data2}})) {
            # return diff, because its different
            return 1;
        }
        elsif (${$Param{Data1}} ne ${$Param{Data2}}) {
            # return diff, because its different
            return 1;
        }
        else {
            # return 0, because its not different
            return 0;
        }
    }
    # ARRAY
    if (ref($Param{Data1}) eq 'ARRAY' && ref($Param{Data2}) eq 'ARRAY') {
        my @A = @{$Param{Data1}};
        my @B = @{$Param{Data2}};
        # check if the count is different 
        if ($#A ne $#B) {
            return 1; 
        }
        # compare array
        foreach my $Count (0..$#A) {
            if (!defined($A[$Count]) && !defined($B[$Count])) {
                # do noting, it's ok
            }
            elsif (!defined($A[$Count]) || !defined($B[$Count])) {
                # return diff, because its different
                return 1; 
            }
            elsif ($A[$Count] ne $B[$Count]) {
                if (ref($A[$Count]) eq 'ARRAY' || ref($A[$Count]) eq 'HASH') {
                    if ($Self->DataDiff(Data1 => $A[$Count], Data2 => $B[$Count])) {
                        return 1;
                    }
                }
                else {
                    return 1; 
                }
            }
        }
        return 0;
    }
    # HASH
    if (ref($Param{Data1}) eq 'HASH' && ref($Param{Data2}) eq 'HASH') {
        my %A = %{$Param{Data1}};
        my %B = %{$Param{Data2}};
        # compare %A with %B and remove it if checked
        foreach my $Key (keys %A) {
            if (!defined($A{$Key}) && !defined($B{$Key})) {
                # do noting, it's ok
            }
            elsif (!defined($A{$Key}) || !defined($B{$Key})) {
                # return diff, because its different
                return 1;
            }
            elsif ($A{$Key} eq $B{$Key}) {
                delete $A{$Key};
                delete $B{$Key};
            }
            # return if values are different
            else {
                if (ref($A{$Key}) eq 'ARRAY' || ref($A{$Key}) eq 'HASH') {
                    if ($Self->DataDiff(Data1 => $A{$Key}, Data2 => $B{$Key})) {
                        return 1;
                    }
                    else {
                        delete $A{$Key};
                        delete $B{$Key};
                    }
                }
                else {
                    return 1; 
                }
            }
        }
        # check rest
        if (%B) {
            return 1; 
        }
        else {
            return 0;
        }
    }
    return 1;
}

sub _XML2Perl {
    my $Self = shift;
    my %Param = @_;
    # check needed stuff
    foreach (qw(Data)) {
        if (!$Param{$_}) {
            $Self->{LogObject}->Log(Priority => 'error', Message => "Need $_!");
            return;
        }
    }
    my $Data;
    if ($Param{Data}->{Setting}->[1]->{String}) {
        $Data = $Param{Data}->{Setting}->[1]->{String}->[1]->{Content};
        my $D = $Data;
        $Data = $D;
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper($Data);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    if ($Param{Data}->{Setting}->[1]->{Option}) {
        $Data = $Param{Data}->{Setting}->[1]->{Option}->[1]->{SelectedID};
        my $D = $Data;
        $Data = $D;
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper($Data);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    if ($Param{Data}->{Setting}->[1]->{TextArea}) {
        $Data = $Param{Data}->{Setting}->[1]->{TextArea}->[1]->{Content};
        $Data =~ s/(\n\r|\r\r\n|\r\n)/\n/g;
        my $D = $Data;
        $Data = $D;
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper($Data);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    if ($Param{Data}->{Setting}->[1]->{Hash}) {
        my %Hash = ();
        my @Array = ();
        if (ref($Param{Data}->{Setting}->[1]->{Hash}->[1]->{Item}) eq 'ARRAY') {
            @Array = @{$Param{Data}->{Setting}->[1]->{Hash}->[1]->{Item}};
        }
        foreach my $Item (1..$#Array) {
            if (defined($Array[$Item]->{Hash})) {
                my %SubHash = ();
                foreach my $Index (1...$#{$Param{Data}->{Setting}->[1]->{Hash}->[1]->{Item}->[$Item]->{Hash}->[1]->{Item}}) {
                    $SubHash{$Param{Data}->{Setting}->[1]->{Hash}->[1]->{Item}->[$Item]->{Hash}->[1]->{Item}->[$Index]->{Key}} = $Param{Data}->{Setting}->[1]->{Hash}->[1]->{Item}->[$Item]->{Hash}->[1]->{Item}->[$Index]->{Content};
                }
                $Hash{$Array[$Item]->{Key}} = \%SubHash;
            }
            elsif (defined($Array[$Item]->{Array})) {
                my @SubArray = ();
                foreach my $Index (1...$#{$Param{Data}->{Setting}->[1]->{Hash}->[1]->{Item}->[$Item]->{Array}->[1]->{Item}}) {
                    push (@SubArray, $Param{Data}->{Setting}->[1]->{Hash}->[1]->{Item}->[$Item]->{Array}->[1]->{Item}->[$Index]->{Content});
                }
                $Hash{$Array[$Item]->{Key}} = \@SubArray;
            }
            else {
                $Hash{$Array[$Item]->{Key}} = $Array[$Item]->{Content};
            };
        }
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper(\%Hash);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    if ($Param{Data}->{Setting}->[1]->{Array}) {
        my @ArrayNew = ();
        my @Array = ();
        if (ref($Param{Data}->{Setting}->[1]->{Array}->[1]->{Item}) eq 'ARRAY') {
            @Array = @{$Param{Data}->{Setting}->[1]->{Array}->[1]->{Item}};
        }
        foreach my $Item (1..$#Array) {
            push (@ArrayNew, $Array[$Item]->{Content});
        }
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper(\@ArrayNew);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    if ($Param{Data}->{Setting}->[1]->{FrontendModuleReg}) {
        my %Hash = ();
        foreach my $Key (sort keys %{$Param{Data}->{Setting}->[1]->{FrontendModuleReg}->[1]}) {
            if ($Key eq 'Group' || $Key eq 'GroupRo') {
                my @Array = ();
                foreach my $Index (1...$#{$Param{Data}->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}}) {
                    push(@Array, $Param{Data}->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}->[$Index]->{Content});
                }
                $Hash{$Key} = \@Array;
            }
            elsif ($Key eq 'NavBar' || $Key eq 'NavBarModule') {
                if (ref($Param{Data}->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}) eq 'ARRAY') {
                    foreach my $Index (1...$#{$Param{Data}->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}}) {
                        my $Content = $Param{Data}->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}->[$Index];
                        my %NavBar = ();
                        foreach $Key (sort keys %{$Content}) {
                            if ($Key eq 'Group' || $Key eq 'GroupRo') {
                                my @Array = ();
                                foreach my $Index (1...$#{$Content->{$Key}}) {
                                    push(@Array, $Content->{$Key}->[$Index]->{Content});
                                }
                                $NavBar{$Key} = \@Array;
                            }
                            else {
                                if ($Key ne 'Content') {
                                    $NavBar{$Key} = $Content->{$Key}->[1]->{Content};
                                }
                            }
                        }
                        if ($Key eq 'NavBar') {
                            push (@{$Hash{$Key}}, \%NavBar);
                        }
                        else {
                            $Hash{$Key} = \%NavBar;
                        }
                    }
                }
                else {
                    my $Content = $Param{Data}->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key};
                    my %NavBar = ();
                    foreach $Key (sort keys %{$Content}) {
                        if ($Key eq 'Group' || $Key eq 'GroupRo') {
                            my @Array = ();
                            foreach my $Index (1...$#{$Content->{$Key}}) {
                                push(@Array, $Content->{$Key}->[1]->{Content});
                            }
                            $NavBar{$Key} = \@Array;
                        }
                        else {
                            if ($Key ne 'Content') {
                                $NavBar{$Key} = $Content->{$Key}->[1]->{Content};
                            }
                        }
                    }
                    $Hash{$Key} = \%NavBar;
                }
            }
            else {
               if ($Key ne 'Content') {
                   $Hash{$Key} = $Param{Data}->{Setting}->[1]->{FrontendModuleReg}->[1]->{$Key}->[1]->{Content};
               }
            }
        }
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper(\%Hash);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    if ($Param{Data}->{Setting}->[1]->{TimeWorkingHours}) {
        my %Days = ();
        my @Array = @{$Param{Data}->{Setting}->[1]->{TimeWorkingHours}->[1]->{Day}};
        foreach my $Day (1..$#Array) {
            my @Array2 = ();
            if ($Array[$Day]->{Hour}) {
                my @Hours = @{$Array[$Day]->{Hour}};
                foreach my $Hour (1..$#Hours) {
                    push (@Array2, $Hours[$Hour]->{Content});
                }
            }
            $Days{$Array[$Day]->{Name}} = \@Array2;
        }
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper(\%Days);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    if ($Param{Data}->{Setting}->[1]->{TimeVacationDays}) {
        my %Hash = ();
        my @Array = @{$Param{Data}->{Setting}->[1]->{TimeVacationDays}->[1]->{Item}};
        foreach my $Item (1..$#Array) {
            $Hash{$Array[$Item]->{Month}}->{$Array[$Item]->{Day}} = $Array[$Item]->{Content};
        }
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper(\%Hash);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    if ($Param{Data}->{Setting}->[1]->{TimeVacationDaysOneTime}) {
        my %Hash = ();
        my @Array = @{$Param{Data}->{Setting}->[1]->{TimeVacationDaysOneTime}->[1]->{Item}};
        foreach my $Item (1..$#Array) {
            $Hash{$Array[$Item]->{Year}}->{$Array[$Item]->{Month}}->{$Array[$Item]->{Day}} = $Array[$Item]->{Content};
        }
        # store in config
        require Data::Dumper;
        my $Dump = Data::Dumper::Dumper(\%Hash);
        $Dump =~ s/\$VAR1 =//;
        $Data = $Dump;
    }
    return $Data;
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see http://www.gnu.org/licenses/gpl.txt.

=cut

=head1 VERSION

$Revision: 1.39 $ $Date: 2005-07-15 00:24:33 $

=cut
