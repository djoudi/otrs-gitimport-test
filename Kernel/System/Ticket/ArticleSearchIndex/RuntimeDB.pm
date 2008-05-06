# --
# Kernel/System/Ticket/ArticleSearchIndex/RuntimeDB.pm - article search index backend runtime
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: RuntimeDB.pm,v 1.2 2008-05-06 23:32:16 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::System::Ticket::ArticleSearchIndex::RuntimeDB;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

sub ArticleIndexBuild {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ArticleID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    return 1;
}

sub ArticleIndexDelete {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(ArticleID UserID)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    return 1;
}

sub _ArticleIndexQuerySQL {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Data)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # use also article table if required
    my $SQL    = '';
    my $SQLExt = '';
    for (qw(From To Cc Subject Body)) {
        if ( $Param{Data}->{$_} ) {
            $SQL    = ', article at ';
            $SQLExt = ' AND st.id = at.ticket_id';
            last;
        }
    }

    return $SQL, $SQLExt;
}

sub _ArticleIndexQuerySQLExt {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(Data)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    my %FieldSQLMapFullText = (
        From    => 'at.a_from',
        To      => 'at.a_to',
        Cc      => 'at.a_cc',
        Subject => 'at.a_subject',
        Body    => 'at.a_body',
    );
    my $SQLExt         = '';
    my $FullTextSQL    = '';
    for my $Key ( keys %FieldSQLMapFullText ) {
        if ( $Param{Data}->{$Key} ) {
            $Param{Data}->{$Key} =~ s/\*/%/gi;

            # check search attribute, we do not need to search for *
            next if $Param{Data}->{$Key} =~ /^\%{1,3}$/;

            if ($FullTextSQL) {
                $FullTextSQL .= ' ' . $Param{Data}->{ContentSearch} . ' ';
            }

            # check if search condition extention is used
            if ( $Param{Data}->{ConditionInline} && $Param{Data}->{$Key} =~ /(&&|\|\||\!|\+|AND|OR)/ ) {
                $FullTextSQL .= $Self->{DBObject}->QueryCondition(
                    Key          => $FieldSQLMapFullText{$Key},
                    Value        => $Param{Data}->{$Key},
                    SearchPrefix => '*',
                    SearchSuffix => '*',
                );
            }
            else {

                # check if database supports LIKE in large text types (in this case for body)
                if ( $Self->{DBObject}->GetDatabaseFunction('NoLowerInLargeText') ) {
                    $FullTextSQL .= " $FieldSQLMapFullText{$Key} LIKE '"
                        . $Self->{DBObject}->Quote( $Param{Data}->{$Key}, 'Like' ) . "'";
                }
                elsif ( $Self->{DBObject}->GetDatabaseFunction('LcaseLikeInLargeText') ) {
                    $FullTextSQL .= " LCASE($FieldSQLMapFullText{$Key}) LIKE LCASE('"
                        . $Self->{DBObject}->Quote( $Param{Data}->{$Key}, 'Like' ) . "')";
                }
                else {
                    $FullTextSQL .= " LOWER($FieldSQLMapFullText{$Key}) LIKE LOWER('"
                        . $Self->{DBObject}->Quote( $Param{Data}->{$Key}, 'Like' ) . "')";
                }
            }
        }
    }
    if ($FullTextSQL) {
        $SQLExt = ' AND (' . $FullTextSQL . ')';
    }

    return $SQLExt;
}

1;
