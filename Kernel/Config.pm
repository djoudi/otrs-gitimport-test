# --
# Config.pm - Config file for OpenTRS kernel
# Copyright (C) 2001-2002 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Config.pm,v 1.32 2002-05-26 10:15:43 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see 
# the enclosed file COPYING for license information (GPL). If you 
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
#
#  Note: 
#         -->> Config options see below -- line 30 <<--
# 
# -- 

package Kernel::Config;

use strict;
use vars qw(@ISA $VERSION);
$VERSION = '$Revision: 1.32 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

# --
sub Load {
    my $Self = shift;
    # debug
    if ($Self->{Debug} > 0) {
        $Self->{LogObject}->Log(Priority=>'debug', MSG=>'Kernel::Config->Load()');
    }

    # ----------------------------------------------------#
    # ----------------------------------------------------#
    #                                                     #
    #             Start of config options!!!              #
    #                                                     #
    # ----------------------------------------------------#
    # ----------------------------------------------------#

    # ----------------------------------------------------#
    # system data                                         #
    # ----------------------------------------------------#

    # SecureMode
    # (Enable this so you can't use the installer.pl)
    $Self->{SecureMode} = 0;

    # SystemID
    # (The identify oh the system. Each ticket number and
    # each http session id starts with this number)
    $Self->{SystemID} = 10; 

    # TicketHook 
    # (To set the Ticket identifier. Some people want to 
    # set this to e. g. 'Call#', 'MyTicket#' or 'TN'.)
    $Self->{TicketHook} = 'Ticket#',

    # FQDN
    # (Full qualified domain name of your system.)
    $Self->{FQDN} = 'yourhost.example.com';

    # Sendmail
    # (Where is sendmail located and some options.
    # See 'man sendmail' for details.) 
    $Self->{Sendmail} = '/usr/sbin/sendmail -t -f ';

    # SendmailBcc
    # (Send all outgoing email via bcc to... 
    # Warning: use it only for external archive funktions)
    $Self->{SendmailBcc} = '';

    # CustomQueue
    # (The name of custom queue.)
    $Self->{CustomQueue} = 'PersonalQueue';

    # MoveInToAllQueues
    # (Possible to move in all queue? Not only queue which
    # the own groups) [1|0]
    $Self->{MoveInToAllQueues} = 1;


    # ----------------------------------------------------#
    # database settings                                   #
    # ----------------------------------------------------#

    # DatabaseHost
    # (The database host.)
    $Self->{DatabaseHost} = 'localhost';
   
    # Database
    # (The database name.)
    $Self->{Database} = 'otrs';

    # DatabaseUser
    # (The database user.)
    $Self->{DatabaseUser} = 'otrs';

    # DatabasePw
    # (The password of database user.)
    $Self->{DatabasePw} = 'some-pass';
   
    # DatabaseDSN
    # (The database DNS.)
    $Self->{DatabaseDSN} = 'DBI:mysql:database='.
        $Self->{Database}.';host='.$Self->{DatabaseHost}.';';

    # SessionTable 
    $Self->{DatabaseSessionTable} = 'session';
    # SessionTable id column
    $Self->{DatabaseSessionTableID} = 'session_id';
    # SessionTable value column
    $Self->{DatabaseSessionTableValue} = 'value';

    # UserTable
    $Self->{DatabaseUserTable} = 'system_user';
    $Self->{DatabaseUserTableUserID} = 'id';
    $Self->{DatabaseUserTableUserPW} = 'pw';
    $Self->{DatabaseUserTableUser} = 'login';

    # preferences table data
    $Self->{DatabasePreferencesTable} = 'user_preferences';
    $Self->{DatabasePreferencesTableKey} = 'preferences_key';
    $Self->{DatabasePreferencesTableValue} = 'preferences_value';
    $Self->{DatabasePreferencesTableUserID} = 'user_id';

    # ----------------------------------------------------#
    # user preferences settings                           #
    # (allow you to add simply more user preferences)     #
    # ----------------------------------------------------#

    $Self->{UserPreferences} = {
      # key => value
      # key is usable with $Data{"UserCharset"} in dtl.
      UserCharset => 'Charset',
      UserTheme => 'Theme',
      UserLanguage => 'Language',
      UserComment => 'Comment',
      UserSendFollowUpNotification => 'UserSendFollowUpNotification',
      UserSendNewTicketNotification => 'UserSendNewTicketNotification',
    };

    $Self->{UserPreferencesMaskUse} = [
      # keys
      # html params in dtl files
      'ID',
      'Salutation',
      'Login',
      'Fristname',
      'Lastname',
      'ValidID',
      'Pw',
    ];

    # ----------------------------------------------------#
    # default agent settings                              #
    # ----------------------------------------------------#

    # ViewableTickets
    # (The default viewable tickets a page.)
    $Self->{ViewableTickets} = 25;

    # ViewableTicketLines
    # (Max viewable ticket lines in the QueueView.)
    $Self->{ViewableTicketLines} = 18;

    # ViewableTicketNewLine
    # (insert new line in ticket-article after max x chars and 
    # the next word)
    $Self->{ViewableTicketNewLine} = 85;

    # ViewableTicketLinesZoom
    # (Max viewable ticket lines in the QueueZoom.)
    $Self->{ViewableTicketLinesZoom} = 6000;

    # MaxLimit
    # (Max viewable tickets a page.)
    $Self->{MaxLimit} = 150;
    
    # Refresh (in minutes)
    # (Default reload time for teh QueueView.)
    $Self->{Refresh} = 2;

    # RefreshOptions
    # (Refresh option list for preferences)
    $Self->{RefreshOptions} = {
        2 => ' 2 minutes',
        5 => ' 5 minutes',
        7 => ' 7 minutes',
        10 => '10 minutes',
        15 => '15 minutes',
    };

    # Highligh*
    # (Set the age and the color for highlighting of old queue
    # in the QueueView.)
    # highlight age1 in min
    $Self->{HighlightAge1} = 1440;
    $Self->{HighlightColor1} = 'orange';
    # highlight age2 in min
    $Self->{HighlightAge2} = 2880;
    $Self->{HighlightColor2} = 'red';


    # ----------------------------------------------------#
    # AgentUtil                                           #
    # ----------------------------------------------------#

    # default limit for Tn search
    # [default: 20]
    $Self->{SearchLimitTn} = 20;

    # default limit for Txt search
    # [default: 20]
    $Self->{SearchLimitTxt} = 20;

    # viewable ticket lines by search util
    # [default: 15]
    $Self->{ViewableTicketLinesBySearch} = 15;


    # ----------------------------------------------------#
    # session settings                                    #
    # ----------------------------------------------------#

    # SessionDriver
    # (How should be the session-data stored? [sql|fs]
    # Advantage of sql is that you can split the 
    # Frontendserver from the DB-Server. fs is faster.)
    $Self->{SessionDriver} = 'sql';

    # SessionCheckRemoteIP 
    # (If the application is used via a proxy-farm then the 
    # remote ip address is mostly different. In this case,
    # turn of the CheckRemoteID. ) [1|0] 
    $Self->{SessionCheckRemoteIP} = 1;

    # SessionDeleteIfNotRemoteID
    # (Delete session if the session id is used with an 
    # invalied remote IP?) [0|1]
    $Self->{SessionDeleteIfNotRemoteID} = 1;

    # SessionMaxTime
    # (Max valid time of one session id in second (8h = 28800).)
    $Self->{SessionMaxTime} = 28800;

    # SessionDeleteIfTimeToOld
    # (Delete session's witch are requested and to old?) [0|1]
    $Self->{SessionDeleteIfTimeToOld} = 1;


    # ----------------------------------------------------#
    # web stuff                                           #
    # ----------------------------------------------------#

    # CGIHandle
    # (Global CGI handle.)
    $Self->{CGIHandle} = 'index.pl';


    # ----------------------------------------------------#
    # directories                                         #
    # ----------------------------------------------------#
    # root directory
    $Self->{Home} = '/opt/OpenTRS';
    # directory for all sessen id informations (just needed if 
    # $Self->{SessionDriver}='fs')
    $Self->{SessionDir} = $Self->{Home} . '/var/sessions';
    # counter log
    $Self->{CounterLog} = $Self->{Home} . '/var/log/TicketCounter.log';
    # article fs dir
    $Self->{ArticleDir} = $Self->{Home} . '/var/article';
    # loop protection Log
    $Self->{LoopProtectionLog} = $Self->{Home} . '/var/log/LoopProtection';
    # stats dir
    $Self->{StatsPicDir} = $Self->{Home} . '/var/pics/stats';

    # ----------------------------------------------------#
    # Ticket stuff                                        #
    # (Viewable tickets in queue view)                    #
    # ----------------------------------------------------#
    # ViewableLocks 
    # default: ["'unlock'", "'tmp_lock'"]
    $Self->{ViewableLocks} = ["'unlock'", "'tmp_lock'"];

    # ViewableStats 
    # default: ["'open'", "'new'"]
    $Self->{ViewableStats} = ["'open'", "'new'"];

    # ViewableSenderTypes 
    #  default:  ["'customer'"]
    $Self->{ViewableSenderTypes} = ["'customer'"];


    # ----------------------------------------------------#
    # PostMaster stuff                                    #
    # ----------------------------------------------------#
   
    # MaxPostMasterEmails
    # (Max post master daemon email to own email-address a day.
    # Loop-Protection!) [default: 20]
    $Self->{MaxPostMasterEmails} = 20;

    # PostmasterUserID
    # (The post master db-uid.) [default: 1]
    $Self->{PostmasterUserID} = 1;

    # DefaultQueue
    # (The default queue of all.) [default: Raw]
    $Self->{DefaultQueue} = 'Raw';

    # DefaultPriority
    # (The default priority of new tickets.) [default: normal]
    $Self->{DefaultPriority} = 'normal';

    # DefaultState
    # (The default state of new tickets.) [default: new]
    $Self->{DefaultState} = 'new';

    # X-Header
    # (All scanned x-headers.)
    $Self->{"X-Header"} = [
      'From',
      'To',
      'Cc',
      'Reply-To',
      'ReplyTo',
      'Subject',
      'Message-ID',
      'Message-Id',
      'Precedence',
      'Mailing-List',
      'X-Loop',
      'X-No-Loop',
      'X-OTRS-Loop',
      'X-OTRS-Info',
      'X-OTRS-Priority',
      'X-OTRS-Queue',
      'X-OTRS-Ignore',
      'X-OTRS-State',
      'X-OTRS-CustomerNo',
      'X-OTRS-ArticleKey1',
      'X-OTRS-ArticleKey2',
      'X-OTRS-ArticleKey3',
      'X-OTRS-ArticleValue1',
      'X-OTRS-ArticleValue2',
      'X-OTRS-ArticleValue3',
      'X-OTRS-TicketKey1',
      'X-OTRS-TicketKey2',
      'X-OTRS-TicketValue1',
      'X-OTRS-TicketValue2',
    ];

    # ----------------------------------------------------#
    # notification stuff                                  #
    # ----------------------------------------------------#
    # notification sender
    $Self->{NotificationSenderName} = 'OpenTRS Notification Master';
    $Self->{NotificationSenderEmail} = 'otrs@'.$Self->{FQDN};

    # new ticket
    $Self->{NotificationSubjectNewTicket} = 'New ticket notification! (<OTRS_CUSTOMER_SUBJECT[10]>)';
    $Self->{NotificationBodyNewTicket} = "
Hi,

there is a new ticket in '<OTRS_QUEUE>'!

<snip>
<OTRS_CUSTOMER_EMAIL[6]>
<snip>

http://$Self->{FQDN}/otrs/index.pl?Action=AgentZoom&TicketID=<OTRS_TICKET_ID>

Your OpenTRS Notification Master

";

    # follow up
    $Self->{NotificationSubjectFollowUp} = 'You got follow up! (<OTRS_CUSTOMER_SUBJECT[10]>)';
    $Self->{NotificationBodyFollowUp} = "
Hi <OTRS_USER_FIRSTNAME>,

you got a follow up!

<snip>
<OTRS_CUSTOMER_EMAIL[6]>
<snip>

http://$Self->{FQDN}/otrs/index.pl?Action=AgentZoom&TicketID=<OTRS_TICKET_ID>

Your OpenTRS Notification Master

";

    # ----------------------------------------------------#
    # default values                                      #
    # (default values for GUIs)                           #
    # ----------------------------------------------------#
    # default valid
    $Self->{DefaultValid} = 'valid';
    # default charset
    # (default frontend charset) [default: iso-8859-1]
    $Self->{DefaultCharset} = 'iso-8859-1';
    # default langauge
    # (the default frontend langauge) [default: English]
    $Self->{DefaultLanguage} = 'English';
    # default theme
    # (the default html theme) [default: Standard]
    $Self->{DefaultTheme} = 'Standard';
    # OnChangeSubmit 
    # (Use the onchange=submit() funktion for ticket move in
    # QueueView and TicketZoom) [default: 1] [0|1]
    $Self->{OnChangeSubmit} = 1;

    # ----------------------------------------------------#
    # defaults for add note                               #
    # ----------------------------------------------------#
    # default note type
    $Self->{DefaultNoteType} = 'note-internal';
    # default note subject
    $Self->{DefaultNoteSubject} = 'Note!';
    # default note text
    $Self->{DefaultNoteText} = '';


    # ----------------------------------------------------#
    # defaults for close ticket                           #
    # ----------------------------------------------------#
    # CloseNoteType
    $Self->{DefaultCloseNoteType} = 'note-internal';
    # CloseNoteSubject
    $Self->{DefaultCloseNoteSubject} = 'Close!';
    # CloseNoteText
    $Self->{DefaultCloseNoteText} = '';
    # CloseType
    $Self->{DefaultCloseType} = 'closed succsessful';


    # ----------------------------------------------------#
    # defaults for compose message                        #
    # ----------------------------------------------------#
    # default compose next state
    $Self->{DefaultNextComposeType} = 'open';
    # new line after x chars and onew word
    $Self->{ComposeTicketNewLine} = 75;
    # next possible states for compose message
    $Self->{DefaultNextComposeTypePossible} = [
        'open', 
        'closed succsessful', 
        'closed unsuccsessful',
    ];

    # ----------------------------------------------------#
    # defaults for phone stuff                            #
    # ----------------------------------------------------#
    # default note type
    $Self->{DefaultPhoneArticleType} = 'phone';
    $Self->{DefaultPhoneSenderType} = 'agent'; 
    # default note subject
    $Self->{DefaultPhoneSubject} = '$Text{"Phone call at"} \''. localtime() ."'";
    # default note text
    $Self->{DefaultPhoneNoteText} = 'Customer called ';
    # next possible states after phone
    $Self->{DefaultPhoneNextStatePossible} = [
        'open', 
        'closed succsessful',
        'closed unsuccsessful',
    ];
    # default next state
    $Self->{DefaultPhoneNextState} = 'closed succsessful';
    # default history type
    $Self->{DefaultPhoneHistoryType} = 'PhoneCallAgent';
    $Self->{DefaultPhoneHistoryComment} = 'Called customer.';

   
    # default article type
    $Self->{DefaultPhoneNewArticleType} = 'phone';
    $Self->{DefaultPhoneNewSenderType} = 'customer'; 
    # default note subject
    $Self->{DefaultPhoneNewSubject} = '$Text{"Phone call at"} \''. localtime() ."'";
    # default note text
    $Self->{DefaultPhoneNewNoteText} = 'New ticket via call. ';
    # default next state
    $Self->{DefaultPhoneNewNextState} = 'open';
    # default history type
    $Self->{DefaultPhoneNewHistoryType} = 'PhoneCallCustomer';
    $Self->{DefaultPhoneNewHistoryComment} = 'Customer called us.';


    # ----------------------------------------------------#
    # defaults for forward message                        #
    # ----------------------------------------------------#
    # next possible states for compose message
    $Self->{DefaultNextForwardTypePossible} = [
        'open', 
        'closed succsessful',
        'closed unsuccsessful',
    ];
    # possible email type 
    $Self->{DefaultForwardEmailType} = [
        'email-external',
        'email-internal',
    ];

    # ----------------------------------------------------#
    # misc                                                #
    # ----------------------------------------------------#
    # yes / no options
    $Self->{YesNoOptions} = {
        1 => 'Yes',
        0 => 'No',
    };

    # ----------------------------------------------------#
    # EOC
    # ----------------------------------------------------#
}
# --
sub new {
    my $Type = shift;
    my %Param = @_;

    # allocate new hash for object
    my $Self = {};
    bless ($Self, $Type);

    # get Log Object
    $Self->{LogObject} = $Param{LogObject};

    # 0=off; 1=log if there exists no entry; 2=log all;
    $Self->{Debug} = 0;

    # load config
    $Self->Load();
    return $Self;
}
# --
sub Get {
    my $Self = shift;
    my $What = shift;
    # debug
    if ($Self->{Debug} > 1) {
        $Self->{LogObject}->Log(
          Priority => 'debug', 
          MSG => "->Get('$What') --> $Self->{$What}"
        );
    }
    # warn if the value is not def
    if (!$Self->{$What} && $Self->{Debug} > 0) {
        $Self->{LogObject}->Log(
          Priority => 'error',
          MSG => "No value for '$What' in Config.pm found!"
        );
    }
    return $Self->{$What};
}
# --

1;

