# --
# Modules.pm - config file of all used application modules
# Copyright (C) 2002 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Modules.pm,v 1.3 2002-07-17 22:35:51 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see 
# the enclosed file COPYING for license information (GPL). If you 
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Config::Modules;

use strict;
use vars qw($VERSION);
$VERSION = '$Revision: 1.3 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

# --
# all custom modules
# --
use Kernel::Config::ModulesCustom;

# --
# all OpenTRS modules 
# --

# system basic lib modules
use Kernel::System::Queue;
use Kernel::System::Ticket;
use Kernel::System::Article;
use Kernel::System::EmailSend;

# web agent middle ware modules
use Kernel::Modules::AgentQueueView;
use Kernel::Modules::AgentMove;
use Kernel::Modules::AgentZoom;
use Kernel::Modules::AgentAttachment;
use Kernel::Modules::AgentPlain;
use Kernel::Modules::AgentNote;
use Kernel::Modules::AgentLock;
use Kernel::Modules::AgentPriority;
use Kernel::Modules::AgentClose;
use Kernel::Modules::AgentUtilities;
use Kernel::Modules::AgentCompose;
use Kernel::Modules::AgentForward;
use Kernel::Modules::AgentPreferences;
use Kernel::Modules::AgentMailbox;
use Kernel::Modules::AgentOwner;
use Kernel::Modules::AgentHistory;
use Kernel::Modules::AgentPhone;
use Kernel::Modules::AgentBounce;
use Kernel::Modules::AgentCustomer;

# web admin middle ware modules
use Kernel::Modules::Admin;
use Kernel::Modules::AdminSession;
use Kernel::Modules::AdminSelectBox;
use Kernel::Modules::AdminResponse;
use Kernel::Modules::AdminQueueResponses;
use Kernel::Modules::AdminQueue;
use Kernel::Modules::AdminAutoResponse;
use Kernel::Modules::AdminQueueAutoResponse;
use Kernel::Modules::AdminSalutation;
use Kernel::Modules::AdminSignature;
use Kernel::Modules::AdminUser;
use Kernel::Modules::AdminGroup;
use Kernel::Modules::AdminUserGroup;
use Kernel::Modules::AdminSystemAddress;
use Kernel::Modules::AdminCharset;
use Kernel::Modules::AdminLanguage;
use Kernel::Modules::SystemStats;
use Kernel::Modules::AdminState;

# --
# common needed objects
# (so you can access this modules in Kernel::Modules::* with 
# $Self->{Key})
# --
$Kernel::Config::Modules::CommonObject = {
    # key => module
    QueueObject => 'Kernel::System::Queue', 
    TicketObject => 'Kernel::System::Ticket',
    ArticleObject => 'Kernel::System::Article',
};
# --
# common needed params
# (so you can access this params in Kernel::Modules::* with
# $Self->{Key})
# --
$Kernel::Config::Modules::Param = {
    # param => default value
    Action => 'AgentQueueView',
    QueueID => 0,
    TicketID => '',
};
# --
1; 
