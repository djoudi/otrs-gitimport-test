#! /usr/bin/perl
use strict;

# make sure we are in a sane environment.
#$ENV{GATEWAY_INTERFACE} =~ /^CGI-Perl/ or die "GATEWAY_INTERFACE not Perl!";
# check $ENV{MOD_PERL}, $ENV{GATEWAY_INTERFACE} is deprecated for mod_perl2
$ENV{MOD_PERL} =~ /mod_perl/ or die "MOD_PERL not used!";

# --
# set otrs lib path!
# --
use lib "/opt/otrs/";
use lib "/opt/otrs/Kernel/cpan-lib";

# pull in things we will use in most requests so it is read and compiled
# exactly once

#use CGI (); CGI->compile(':all');
use CGI (); CGI->compile(':cgi');
use CGI::Carp ();

#use Apache ();
#use Apache::DBI ();
#Apache::DBI->connect_on_init('DBI:mysql:otrs', 'otrs', 'some-pass');
use DBI ();
use DBD::mysql ();

use Kernel::Config;
use Kernel::Config::Modules;
use Kernel::Config::ModulesCustomerPanel;

use Kernel::System::Web::InterfaceAgent;
use Kernel::System::Web::InterfaceCustomer;
use Kernel::System::Web::InterfaceFAQPublic;
use Kernel::System::Web::Request;
use Kernel::System::Web::UploadCache;
use Kernel::System::DB;
use Kernel::System::Encode;
use Kernel::System::Time;
use Kernel::System::Auth;
use Kernel::System::Auth::DB;
#use Kernel::System::Auth::LDAP;
use Kernel::System::AuthSession;
#use Kernel::System::AuthSession::IPC;
use Kernel::System::AuthSession::DB;
#use Kernel::System::AuthSession::FS;
use Kernel::System::User;
use Kernel::System::User::Preferences::DB;
use Kernel::System::Permission;
use Kernel::System::User::Preferences::DB;
use Kernel::System::Log;
use Kernel::System::Log::SysLog;
#use Kernel::System::Log::File;

use Kernel::System::Ticket;
#use Kernel::System::Ticket::ArticleStorageDB;
#use Kernel::System::Ticket::ArticleStorageFS;
#use Kernel::System::Ticket::IndexAccelerator::RuntimeDB;
#use Kernel::System::Ticket::IndexAccelerator::StaticDB;
use Kernel::System::Ticket::Number::DateChecksum;
#use Kernel::System::Ticket::Number::Date;
#use Kernel::System::Ticket::Number::AutoIncrement;
#use Kernel::System::Ticket::Number::Random;

use Kernel::System::Queue;
use Kernel::System::Lock;
use Kernel::System::State;
use Kernel::System::Priority;
use Kernel::System::CustomerUser;
#use Kernel::System::CustomerUser::DB;
#use Kernel::System::CustomerUser::LDAP;
use Kernel::System::CustomerGroup;
use Kernel::System::CustomerAuth;
#use Kernel::System::CustomerAuth::DB;
#use Kernel::System::CustomerAuth::LDAP;
use Kernel::System::CheckItem;
use Kernel::System::AutoResponse;
use Kernel::System::Notification;
use Kernel::System::FAQ;
use Kernel::System::Email;

use Kernel::Output::HTML::Generic;

# web agent middle ware modules
use Kernel::Modules::AgentTicketQueue;
use Kernel::Modules::AgentTicketStatusView;
use Kernel::Modules::AgentTicketMove;
use Kernel::Modules::AgentTicketZoom;
use Kernel::Modules::AgentTicketAttachment;
use Kernel::Modules::AgentTicketPrint;
use Kernel::Modules::AgentTicketPlain;
use Kernel::Modules::AgentTicketNote;
use Kernel::Modules::AgentTicketLock;
use Kernel::Modules::AgentTicketPriority;
use Kernel::Modules::AgentTicketFreeText;
use Kernel::Modules::AgentTicketClose;
use Kernel::Modules::AgentTicketPending;
use Kernel::Modules::AgentTicketSearch;
use Kernel::Modules::AgentTicketCompose;
use Kernel::Modules::AgentTicketForward;
use Kernel::Modules::AgentTicketBounce;
use Kernel::Modules::AgentTicketCustomer;
use Kernel::Modules::AgentTicketMailbox;
use Kernel::Modules::AgentTicketOwner;
use Kernel::Modules::AgentTicketHistory;
use Kernel::Modules::AgentTicketBulk;
use Kernel::Modules::AgentTicketPhone;
use Kernel::Modules::AgentTicketEmail;
use Kernel::Modules::AgentSpelling;
use Kernel::Modules::AgentBook;
use Kernel::Modules::AgentLinkObject;
use Kernel::Modules::AgentPreferences;

# web admin middle ware modules
use Kernel::Modules::Admin;
use Kernel::Modules::AdminLog;
use Kernel::Modules::AdminSession;
use Kernel::Modules::AdminSelectBox;
use Kernel::Modules::AdminResponse;
use Kernel::Modules::AdminQueueResponses;
use Kernel::Modules::AdminAttachment;
use Kernel::Modules::AdminResponseAttachment;
use Kernel::Modules::AdminQueue;
use Kernel::Modules::AdminAutoResponse;
use Kernel::Modules::AdminQueueAutoResponse;
use Kernel::Modules::AdminSalutation;
use Kernel::Modules::AdminSignature;
use Kernel::Modules::AdminUser;
use Kernel::Modules::AdminGroup;
use Kernel::Modules::AdminUserGroup;
use Kernel::Modules::AdminSystemAddress;
use Kernel::Modules::AdminPOP3;
use Kernel::Modules::AdminPostMasterFilter;
use Kernel::Modules::AdminState;
use Kernel::Modules::AdminNotification;
use Kernel::Modules::AdminEmail;
use Kernel::Modules::AdminCustomerUser;
use Kernel::Modules::AdminCustomerUserGroup;

# faq middle ware modules
use Kernel::Modules::FAQ;
use Kernel::Modules::FAQCategory;
use Kernel::Modules::FAQLanguage;

# web customer middle ware modules
use Kernel::Modules::CustomerAttachment;
use Kernel::Modules::CustomerMessage;
use Kernel::Modules::CustomerPreferences;
use Kernel::Modules::CustomerTicketOverView;
use Kernel::Modules::CustomerZoom;
use Kernel::Modules::CustomerFAQ;

# web stats module
use Kernel::Modules::SystemStats;

1;
