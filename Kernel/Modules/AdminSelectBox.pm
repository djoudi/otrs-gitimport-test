# --
# Kernel/Modules/AdminSelectBox.pm - provides a SelectBox for admins
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: AdminSelectBox.pm,v 1.14 2005-03-27 11:50:50 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Modules::AdminSelectBox;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.14 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    foreach (keys %Param) {
        $Self->{$_} = $Param{$_};
    }

    # check needed Opjects
    foreach (qw(ParamObject DBObject LayoutObject LogObject ConfigObject)) {
        $Self->{LayoutObject}->FatalError(Message => "Got no $_!") if (!$Self->{$_});
    }

    return $Self;
}
# --
sub Run {
    my $Self = shift;
    my %Param = @_;
    # get params
    foreach (qw(SQL Max)) {
        $Param{SQL} = $Self->{ParamObject}->GetParam(Param => 'SQL') || 'SELECT * FROM ';
        $Param{Max} = $Self->{ParamObject}->GetParam(Param => 'Max') || '40';
    }
    # ------------------------------------------------------------ #
    # print form
    # ------------------------------------------------------------ #
    if ($Self->{Subaction} eq '' || !$Self->{Subaction}) {
        my $Output = $Self->{LayoutObject}->Header();
        $Output .= $Self->{LayoutObject}->NavigationBar();
        $Output .= $Self->{LayoutObject}->Output(
            TemplateFile => 'AdminSelectBoxForm',
            Data => \%Param,
        );
        $Output .= $Self->{LayoutObject}->Footer();
        return $Output;
    }
    # ------------------------------------------------------------ #
    # do select
    # ------------------------------------------------------------ #
    elsif ($Self->{Subaction} eq 'Select') {
        # add result block
        $Self->{LayoutObject}->Block(
            Name => 'Result',
            Data => { %Param },
        );
        # fetch database and add row blocks
        if ($Self->{DBObject}->Prepare(SQL => $Param{SQL}, Limit => $Param{Max})) {
            while (my @Row = $Self->{DBObject}->FetchrowArray(RowNames => 1) ){
                my $Row = '';
                foreach my $Item (@Row) {
                    my $Item1 = '';
                    my $Item2 = '';
                    if (! defined $Item) {
                        $Item1 = '<i>undef</i>';
                        $Item2 = 'undef';
                    }
                    else {
                        $Item1 = $Self->{LayoutObject}->Ascii2Html(
                            Text => $Item,
                            Max => 10,
                        );
                        $Item2 = $Self->{LayoutObject}->Ascii2Html(
                            Text => $Item,
                            Max => 60,
                        );
                    }
                    $Item2 =~ s/\n|\r//g;
                    $Row .= "<td class=\"small\"><div title=\"$Item2\">";
                    $Row .= $Item1;
                    $Row .= "</div></td>\n";
                }
                $Self->{LayoutObject}->Block(
                    Name => 'Row',
                    Data => {
                        Result => $Row,
                    },
                );
            }
            # generate outbut
            my $Output = $Self->{LayoutObject}->Header();
            $Output .= $Self->{LayoutObject}->NavigationBar();
            $Output .= $Self->{LayoutObject}->Output(
                TemplateFile => 'AdminSelectBoxForm',
                Data => \%Param,
            );
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
        else {
            my $Output = $Self->{LayoutObject}->Header();
            $Output .= $Self->{LayoutObject}->NavigationBar();
            $Output .= $Self->{LayoutObject}->Output(
                TemplateFile => 'AdminSelectBoxForm',
                Data => \%Param,
            );
            $Output .= $Self->{LayoutObject}->Error();
            $Output .= $Self->{LayoutObject}->Footer();
            return $Output;
        }
    }
    # else! error!
    else {
        return $Self->{LayoutObject}->ErrorScreen(
                Message => 'No Subaction!!',
                Comment => 'Please contact your admin',
        );
    }
}
# --
1;
