# --
# Kernel/Output/HTML/TicketOverviewSmall.pm
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: TicketOverviewSmall.pm,v 1.13.2.2 2010-02-01 00:57:38 martin Exp $
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
$VERSION = qw($Revision: 1.13.2.2 $) [1];

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

    $Self->{SmallViewColumnHeader}
        = $Self->{ConfigObject}->Get('Ticket::Frontend::OverviewSmall')->{ColumnHeader};

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
    if ( $Param{Bulk} && $Self->{ConfigObject}->Get('Ticket::Frontend::BulkFeature') ) {
        my @Groups;
        if ( $Self->{ConfigObject}->Get('Ticket::Frontend::BulkFeatureGroup') ) {
            @Groups = @{ $Self->{ConfigObject}->Get('Ticket::Frontend::BulkFeatureGroup') };
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

    if ($BulkFeature) {
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

    # check if last customer subject or ticket title should be shown
    if ( $Self->{SmallViewColumnHeader} eq 'LastCustomerSubject' ) {
        $Self->{LayoutObject}->Block(
            Name => 'RecordLastCustomerSubjectHeader',
            Data => \%Param,
        );
    }
    elsif ( $Self->{SmallViewColumnHeader} eq 'TicketTitle' ) {
        $Self->{LayoutObject}->Block(
            Name => 'RecordTicketTitleHeader',
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
            if (
                $Param{Config}->{CustomerInfo}
                || $Self->{ConfigObject}->Get('Ticket::Frontend::CustomerInfoQueue')
                )
            {
                if ( $Article{CustomerUserID} ) {
                    $Article{CustomerName} = $Self->{CustomerUserObject}->CustomerName(
                        UserLogin => $Article{CustomerUserID},
                    );
                }
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
            if ($BulkFeature) {
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

            # check if last customer subject or ticket title should be shown
            if ( $Self->{SmallViewColumnHeader} eq 'LastCustomerSubject' ) {
                $Self->{LayoutObject}->Block(
                    Name => 'RecordLastCustomerSubject',
                    Data => { %Article, %UserInfo },
                );
            }
            elsif ( $Self->{SmallViewColumnHeader} eq 'TicketTitle' ) {
                $Self->{LayoutObject}->Block(
                    Name => 'RecordTicketTitle',
                    Data => { %Article, %UserInfo },
                );
            }
        }
    }

    # check if bulk feature is enabled
    if ($BulkFeature) {
        $Self->{LayoutObject}->Block(
            Name => 'BulkFooter',
            Data => \%Param,
        );
    }

    # increase footer size on escalation view
    if ( $Param{Escalation} ) {
        $Self->{LayoutObject}->Block(
            Name => 'EscalationFooter',
            Data => \%Param,
        );
    }

    # use template
    $Output .= $Self->{LayoutObject}->Output(
        TemplateFile => 'AgentTicketOverviewSmall',
        Data => { %Param, Type => $Self->{ViewType}, },
    );

    return $Output;
}

1;
