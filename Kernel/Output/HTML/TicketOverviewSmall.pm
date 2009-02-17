# --
# Kernel/Output/HTML/TicketOverviewSmall.pm
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: TicketOverviewSmall.pm,v 1.8 2009-02-17 00:20:37 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Output::HTML::TicketOverviewSmall;

use strict;
use warnings;

use Kernel::System::CustomerUser;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.8 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = \%Param;
    bless( $Self, $Type );

    # get needed objects
    for (
        qw(ConfigObject LogObject DBObject LayoutObject UserID UserObject GroupObject TicketObject MainObject QueueObject)
        )
    {
        $Self->{$_} = $Param{$_} || die "Got no $_!";
    }

    $Self->{CustomerUserObject} = Kernel::System::CustomerUser->new(%Param);

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for (qw(TicketIDs PageShown StartHit)) {
        if ( !$Param{$_} ) {
            $Self->{LogObject}->Log( Priority => 'error', Message => "Need $_!" );
            return;
        }
    }

    # check if bulk feature is enabled
    my $BulkFeature = 0;
    if ( $Param{Bulk} ) {
        my @Groups;
        if ( $Self->{ConfigObject}->Get('Ticket::BulkFeatureGroup') ) {
            @Groups = @{ $Self->{ConfigObject}->Get('Ticket::BulkFeatureGroup') };
        }
        if ( !@Groups ) {
            $BulkFeature = 1;
        }
        else {
            for my $Group (@Groups) {
                next if !$Self->{LayoutObject}->{"UserIsGroup[$Group]"};
                if ( $Self->{LayoutObject}->{"UserIsGroup[$Group]"} eq 'Yes' ) {
                    $BulkFeature = 1;
                    last;
                }
            }
        }
    }

    if ( $BulkFeature ) {
        $Self->{LayoutObject}->Block(
            Name => 'BulkHead',
            Data => \%Param,
        );
    }

    if ( $Param{Escalation} ) {
        $Self->{LayoutObject}->Block(
            Name => 'RecordEscalationHeader',
            Data => \%Param,
        );
    }

    my $Output  = '';
    my $Counter = 0;
    for my $TicketID ( @{ $Param{TicketIDs} } ) {
        $Counter++;
        if ( $Counter >= $Param{StartHit} && $Counter < ( $Param{PageShown} + $Param{StartHit} ) ) {

            # get last customer article
            my %Article = $Self->{TicketObject}->ArticleLastCustomerArticle(
                TicketID => $TicketID,
            );

            # prepare subject
            $Article{Subject} = $Self->{TicketObject}->TicketSubjectClean(
                TicketNumber => $Article{TicketNumber},
                Subject => $Article{Subject} || '',
            );

            # create human age
            $Article{Age} = $Self->{LayoutObject}->CustomerAge(
                Age   => $Article{Age},
                Space => ' ',
            );

            # escalation human times
            if ( $Article{EscalationTime} ) {
                $Article{EscalationTimeHuman} = $Self->{LayoutObject}->CustomerAgeInHours(
                    Age   => $Article{EscalationTime},
                    Space => ' ',
                );
                $Article{EscalationTimeWorkingTime} = $Self->{LayoutObject}->CustomerAgeInHours(
                    Age   => $Article{EscalationTimeWorkingTime},
                    Space => ' ',
                );
            }

            # customer info (customer name)
            my %CustomerData = ();
            if ( $Article{CustomerUserID} ) {
                %CustomerData = $Self->{CustomerUserObject}->CustomerUserDataGet(
                    User => $Article{CustomerUserID},
                );
            }
            if ( $CustomerData{UserLogin} ) {
                $Article{CustomerName} = $Self->{CustomerUserObject}->CustomerName(
                    UserLogin => $CustomerData{UserLogin},
                );
            }

            # user info
            my %UserInfo = $Self->{UserObject}->GetUserData(
                User   => $Article{Owner},
                Cached => 1
            );

            # seperate each searchresult line by using several css
            if ( $Counter % 2 ) {
                $Article{css} = "searchpassive";
            }
            else {
                $Article{css} = "searchactive";
            }
            $Self->{LayoutObject}->Block(
                Name => 'Record',
                Data => { %Article, %UserInfo },
            );

            # check if bulk feature is enabled
            if ( $BulkFeature ) {
                $Self->{LayoutObject}->Block(
                    Name => 'Bulk',
                    Data => { %Article, %UserInfo },
                );
            }

            if ( $Param{Escalation} ) {
                $Self->{LayoutObject}->Block(
                    Name => 'RecordEscalation',
                    Data => { %Article, %UserInfo },
                );
                if ( $Article{EscalationTime} < 60 * 60 * 1 ) {
                    $Self->{LayoutObject}->Block(
                        Name => 'RecordEscalationFontStart',
                        Data => { %Article, %UserInfo },
                    );
                    $Self->{LayoutObject}->Block(
                        Name => 'RecordEscalationFontStop',
                        Data => { %Article, %UserInfo },
                    );
                }
            }
        }
    }

    # check if bulk feature is enabled
    if ( $BulkFeature ) {
        $Self->{LayoutObject}->Block(
            Name => 'BulkFooter',
            Data => \%Param,
        );
    }
    $Self->{LayoutObject}->Block(
        Name => 'EscalationFooter',
        Data => \%Param,
    );

    # use template
    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'AgentTicketOverviewSmall',
        Data => { %Param, Type => $Self->{ViewType}, },
    );

    return $Output;
}

1;
