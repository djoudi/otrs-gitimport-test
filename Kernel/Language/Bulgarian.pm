# --
# Kernel/Language/Bulgarian.pm - provides Bulgarian language translation
# Copyright (C) 2002 Vladimir Gerdjikov <gerdjikov at gerdjikovs.net>
# --
# $Id: Bulgarian.pm,v 1.2 2002-11-21 22:17:27 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::Bulgarian;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*\$/\$1/;
# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # possible charsets
    $Self->{Charset} = ['koi8-r'];

    # Template: AAABasics
    $Hash{' 2 minutes'} = ' 2 ������';
    $Hash{' 5 minutes'} = ' 5 ������';
    $Hash{' 7 minutes'} = ' 7 ������';
    $Hash{'10 minutes'} = '10 ������';
    $Hash{'15 minutes'} = '15 ������';
    $Hash{'AddLink'} = '�������� �� ������';
    $Hash{'AdminArea'} = '����-�������������';
    $Hash{'all'} = '������';
    $Hash{'All'} = '������';
    $Hash{'Attention'} = '��������';
    $Hash{'Bug Report'} = '����� �� ������';
    $Hash{'Cancel'} = '';
    $Hash{'change'} = '���������';
    $Hash{'Change'} = '�������';
    $Hash{'change!'} = '���������!';
    $Hash{'click here'} = '��������� ���';
    $Hash{'Comment'} = '��������';
    $Hash{'Customer'} = '����������';
    $Hash{'Customer info'} = '������������� �����';
    $Hash{'day'} = '���';
    $Hash{'days'} = '���';
    $Hash{'Description'} = '��������';
    $Hash{'description'} = '��������';
    $Hash{'Done'} = '';
    $Hash{'end'} = '����';
    $Hash{'Error'} = '������';
    $Hash{'Example'} = '������';
    $Hash{'Examples'} = '�������';
    $Hash{'go'} = '��';
    $Hash{'go!'} = '��!';
    $Hash{'Group'} = '�����';
    $Hash{'Hit'} = '���������';
    $Hash{'Hits'} = '';
    $Hash{'hour'} = '���';
    $Hash{'hours'} = '������';
    $Hash{'Ignore'} = '';
    $Hash{'Language'} = '����';
    $Hash{'Languages'} = '�����';
    $Hash{'Line'} = '�����';
    $Hash{'Logout successful. Thank you for using OTRS!'} = '������� � �������. ���������� ��, �� ����������� ���������.';
    $Hash{'Message'} = '���������';
    $Hash{'minute'} = '������';
    $Hash{'minutes'} = '������';
    $Hash{'Module'} = '�����';
    $Hash{'Modulefile'} = '����-�����';
    $Hash{'Name'} = '���';
    $Hash{'New message'} = '���� ���������';
    $Hash{'New message!'} = '���� ���������!';
    $Hash{'no'} = '��';
    $Hash{'No'} = '��';
    $Hash{'No suggestions'} = '';
    $Hash{'none'} = '����';
    $Hash{'none - answered'} = '���� - ���������';
    $Hash{'none!'} = '����!';
    $Hash{'off'} = '���������';
    $Hash{'Off'} = '���������';
    $Hash{'On'} = '��������';
    $Hash{'on'} = '��������';
    $Hash{'Password'} = '������';
    $Hash{'Please answer this ticket(s) to get back to the normal queue view!'} = '����, ���������� �� ���� �����(�) �� �� �� ������� � ��������� ������ �� ��������!';
    $Hash{'please do not edit!'} = '����, �� ������������!';
    $Hash{'QueueView'} = '������� �� ��������';
    $Hash{'replace with'} = '';
    $Hash{'Reset'} = '';
    $Hash{'Salutation'} = '���������';
    $Hash{'Signature'} = '������';
    $Hash{'Sorry'} = '����������';
    $Hash{'Stats'} = '����������';
    $Hash{'Subfunction'} = '����������';
    $Hash{'submit'} = '';
    $Hash{'submit!'} = '���������!';
    $Hash{'Text'} = '';
    $Hash{'The recommended charset for your language is %s!'} = '';
    $Hash{'Theme'} = '';
    $Hash{'top'} = '��� ��������';
    $Hash{'update'} = '����������';
    $Hash{'update!'} = '����������!';
    $Hash{'User'} = '����������';
    $Hash{'Username'} = '������������� ���';
    $Hash{'Valid'} = '�������';
    $Hash{'Warning'} = '';
    $Hash{'Welcome to OTRS'} = '';
    $Hash{'Word'} = '';
    $Hash{'wrote'} = '��������';
    $Hash{'yes'} = '��';
    $Hash{'Yes'} = '��';
    $Hash{'You got new message!'} = '��� ��������� ���� ���������!';

    # Template: AAALanguage
    $Hash{'Brazilian'} = '���������';
    $Hash{'Chinese'} = '��������';
    $Hash{'Czech'} = '������';
    $Hash{'Danish'} = '������';
    $Hash{'Dutch'} = '���������';
    $Hash{'English'} = '���������';
    $Hash{'French'} = '�������';
    $Hash{'German'} = '���������';
    $Hash{'Greek'} = '������';
    $Hash{'Italian'} = '����������';
    $Hash{'Korean'} = '��������';
    $Hash{'Polish'} = '������';
    $Hash{'Russian'} = '�����';
    $Hash{'Spanish'} = '��������';
    $Hash{'Swedish'} = '�������';

    # Template: AAAPreferences
    $Hash{'Custom Queue'} = '';
    $Hash{'Follow up notification'} = '�������� �� ��������� �� ������� �� ���������';
    $Hash{'Frontend'} = '';
    $Hash{'Mail Management'} = '';
    $Hash{'Move notification'} = '�������� �� �����������';
    $Hash{'New ticket notification'} = '��������� �� ��� �����';
    $Hash{'Other Options'} = '';
    $Hash{'Preferences updated successfully!'} = '';
    $Hash{'QueueView refresh time'} = '';
    $Hash{'Select your frontend Charset.'} = '�������� ������ �������� �����.';
    $Hash{'Select your frontend language.'} = '�������� ������ ����.';
    $Hash{'Select your frontend QueueView.'} = '�������� ���� �� ������������ ������������ �� ��������.';
    $Hash{'Select your frontend Theme.'} = '';
    $Hash{'Select your QueueView refresh time.'} = '�������� ������ ����� �� ���������� �� ������� �� ��������.';
    $Hash{'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.'} = '��������� �� ��������, ��� �������� ������� ������ �� ������� �� �������� � �� ��� ���������� �� ������';
    $Hash{'Send me a notification if a ticket is moved into a custom queue.'} = '��������� �� ��������, ��� ������� � ��������� � ������� ������������� ������.';
    $Hash{'Send me a notification if a ticket is unlocked by the system.'} = '��������� �� ��������, ��� ������� � �������� �� ���������.';
    $Hash{'Send me a notification if there is a new ticket in my custom queues.'} = '��������� �� ��������, ��� ��� ���(�) ����� � ����� ������������� ������.';
    $Hash{'Ticket lock timeout notification'} = '�������� �� ����������������� �� ���������� �� �������';

    # Template: AAATicket
    $Hash{'Action'} = '��������';
    $Hash{'Age'} = '�������';
    $Hash{'Article'} = '������';
    $Hash{'Attachment'} = '�������� ����';
    $Hash{'Attachments'} = '';
    $Hash{'Bcc'} = '';
    $Hash{'Bounce'} = '����������';
    $Hash{'Cc'} = '����� ��';
    $Hash{'Close'} = '���������';
    $Hash{'closed succsessful'} = '������� ��������';
    $Hash{'closed unsuccsessful'} = '��������� ��������';
    $Hash{'Compose'} = '���������';
    $Hash{'Created'} = '��������';
    $Hash{'Createtime'} = '����� �� ���������';
    $Hash{'eMail'} = '';
    $Hash{'email'} = '�����';
    $Hash{'email-external'} = '������ �����';
    $Hash{'email-internal'} = '�������� �����';
    $Hash{'Forward'} = '����������';
    $Hash{'From'} = '��';
    $Hash{'high'} = '�����';
    $Hash{'History'} = '�������';
    $Hash{'If it is not displayed correctly,'} = '��� �� �� ����� ��������,';
    $Hash{'Lock'} = '�������';
    $Hash{'low'} = '�����';
    $Hash{'Move'} = '�����������';
    $Hash{'new'} = '���';
    $Hash{'normal'} = '��������';
    $Hash{'note-external'} = '������ �������';
    $Hash{'note-internal'} = '�������� �������';
    $Hash{'note-report'} = '������� �����';
    $Hash{'open'} = '�������';
    $Hash{'Owner'} = '����������';
    $Hash{'Pending'} = '� ��������';
    $Hash{'phone'} = '�������';
    $Hash{'plain'} = '���������';
    $Hash{'Priority'} = '���������';
    $Hash{'Queue'} = '';
    $Hash{'removed'} = '���������';
    $Hash{'Sender'} = '��������';
    $Hash{'sms'} = '';
    $Hash{'State'} = '������';
    $Hash{'Subject'} = '�������';
    $Hash{'This is a'} = '���� �';
    $Hash{'This is a HTML email. Click here to show it.'} = '���� � ���� � HTML ������. ��������� ���, �� �� �� �������� ��������';
    $Hash{'This message was written in a character set other than your own.'} = '���� ����� � �������� � �������� �������� �������� �� ����, ����� �����.';
    $Hash{'Ticket'} = '�����';
    $Hash{'To'} = '��';
    $Hash{'to open it in a new window.'} = '�� �� �������� � ��� ��������';
    $Hash{'Unlock'} = '�������';
    $Hash{'very high'} = '����� �����';
    $Hash{'very low'} = '����� �����';
    $Hash{'View'} = '������';
    $Hash{'webrequest'} = '';
    $Hash{'Zoom'} = '��������';

    # Template: AdminAutoResponseForm
    $Hash{'Add auto response'} = '�������� �� ����������� �������';
    $Hash{'Auto Response From'} = '';
    $Hash{'Auto Response Management'} = '���������� �� ������������� �������';
    $Hash{'Change auto response settings'} = '������� �� ����������� �� ������������� �������';
    $Hash{'Charset'} = '';
    $Hash{'Note'} = '';
    $Hash{'Response'} = '�������';
    $Hash{'to get the first 20 character of the subject'} = '';
    $Hash{'to get the first 5 lines of the email'} = '';
    $Hash{'Type'} = '';
    $Hash{'Useable options'} = '����������� �����';

    # Template: AdminCharsetForm
    $Hash{'Add charset'} = '�������� �� �������� �����';
    $Hash{'Change system charset setting'} = '������� �� ���������� �������� �����';
    $Hash{'System Charset Management'} = '���������� �� ���������� �����';

    # Template: AdminCustomerUserForm
    $Hash{'Add customer user'} = '';
    $Hash{'Change customer user settings'} = '';
    $Hash{'Customer User Management'} = '';
    $Hash{'Customer user will be needed to to login via customer panels.'} = '';
    $Hash{'CustomerID'} = '������������� ���������';
    $Hash{'Email'} = '�����';
    $Hash{'Firstname'} = '���';
    $Hash{'Lastname'} = '�������';
    $Hash{'Login'} = '';

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
    $Hash{'Admin-Email'} = '';
    $Hash{'Body'} = '';
    $Hash{'OTRS-Admin Info!'} = '';
    $Hash{'Recipents'} = '';

    # Template: AdminEmailSent
    $Hash{'Message sent to'} = '';

    # Template: AdminGroupForm
    $Hash{'Add group'} = '�������� �� �����';
    $Hash{'Change group settings'} = '������� �� ��������� ���������';
    $Hash{'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).'} = '��������� ���� ����� �� �� ����������� ������������ �� ���������� ����� �� ������ (�������� ����� �� ����� "��������", ����� "���������" � �.�.)';
    $Hash{'Group Management'} = '���������� �� �����';
    $Hash{'It\'s useful for ASP solutions.'} = '���� � ��������� �� ������� � ASP.';
    $Hash{'The admin group is to get in the admin area and the stats group to get stats area.'} = '������� admin �������� admin ������, � stat ������� �������� stat ������';

    # Template: AdminLanguageForm
    $Hash{'Add language'} = '�������� �� ����';
    $Hash{'Change system language setting'} = '������� �� ����������� �� ���������� ����';
    $Hash{'System Language Management'} = '���������� �� ��������� ���������';

    # Template: AdminNavigationBar
    $Hash{'AdminEmail'} = '';
    $Hash{'AgentFrontend'} = '����-����������';
    $Hash{'Auto Response <-> Queue'} = '����������� ������� <-> ������';
    $Hash{'Auto Responses'} = '����������� �������';
    $Hash{'Charsets'} = '';
    $Hash{'CustomerUser'} = '';
    $Hash{'Email Addresses'} = '����� ������';
    $Hash{'Groups'} = '�����';
    $Hash{'Logout'} = '�����';
    $Hash{'Responses'} = '��������';
    $Hash{'Responses <-> Queue'} = '�������� <-> ������';
    $Hash{'Select Box'} = '';
    $Hash{'Session Management'} = '���������� �� ������';
    $Hash{'Status defs'} = '';
    $Hash{'User <-> Groups'} = '���������� <-> �����';

    # Template: AdminQueueAutoResponseForm
    $Hash{'Queue <-> Auto Response Management'} = '������ <-> ���������� �� ������������� �������';

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
    $Hash{'0 = no escalation'} = '';
    $Hash{'0 = no unlock'} = '';
    $Hash{'Add queue'} = '�������� �� ������';
    $Hash{'Change queue settings'} = '������� �� ����������� �� ��������';
    $Hash{'Escalation time'} = '����� �� ��������� (����������� �� �����������)';
    $Hash{'Follow up Option'} = '';
    $Hash{'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.'} = '';
    $Hash{'If a ticket will not be answered in thos time, just only this ticket will be shown.'} = '';
    $Hash{'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.'} = '';
    $Hash{'Key'} = '����';
    $Hash{'Queue Management'} = '���������� �� ������';
    $Hash{'Systemaddress'} = '';
    $Hash{'The salutation for email answers.'} = '';
    $Hash{'The signature for email answers.'} = '';
    $Hash{'Ticket lock after a follow up'} = '';
    $Hash{'Unlock timeout'} = '����� �� ����������';
    $Hash{'Will be the sender address of this queue for email answers.'} = '';

    # Template: AdminQueueResponsesChangeForm
    $Hash{'Change %s settings'} = '';
    $Hash{'Std. Responses <-> Queue Management'} = '���������� �������� <-> ���������� �� ��������';

    # Template: AdminQueueResponsesForm
    $Hash{'Answer'} = '';
    $Hash{'Change answer <-> queue settings'} = '������� �� ��������� <-> ��������� �� ��������';

    # Template: AdminResponseForm
    $Hash{'A response is default text to write faster answer (with default text) to customers.'} = '��������� � ����� �� ������������, �������� �������������, � ��� ��-���� ������� ��� �������';
    $Hash{'Add response'} = '�������� �� �������';
    $Hash{'Change response settings'} = '������� �� ���������� �� ���������';
    $Hash{'Don\'t forget to add a new response a queue!'} = '�� �� ��������� �� �������� ������ ������� ��� ������ ������!';
    $Hash{'Response Management'} = '���������� �� ���������';

    # Template: AdminSalutationForm
    $Hash{'Add salutation'} = '�������� �� ���������';
    $Hash{'Change salutation settings'} = '������� �� ����������� �� �����������';
    $Hash{'customer realname'} = '��� �� �����������';
    $Hash{'Salutation Management'} = '���������� �� �����������';

    # Template: AdminSelectBoxForm
    $Hash{'Max Rows'} = '���������� ���� ������';

    # Template: AdminSelectBoxResult
    $Hash{'Limit'} = '';
    $Hash{'Select Box Result'} = '';
    $Hash{'SQL'} = '';

    # Template: AdminSession
    $Hash{'kill all sessions'} = '��������� �� ������ ������ �����';

    # Template: AdminSessionTable
    $Hash{'kill session'} = '��������� �� �������� �����';
    $Hash{'SessionID'} = '';

    # Template: AdminSignatureForm
    $Hash{'Add signature'} = '�������� �� ������';
    $Hash{'Change signature settings'} = '������� �� ����������� �� ��������';
    $Hash{'for agent firstname'} = '�� ������ - ���';
    $Hash{'for agent lastname'} = '�� ������ - �������';
    $Hash{'Signature Management'} = '���������� �� ��������';

    # Template: AdminStateForm
    $Hash{'Add state'} = '�������� �� ���������';
    $Hash{'Change system state setting'} = '������� �� ����������� �� �������� ���������';
    $Hash{'System State Management'} = '���������� �� �������� ���������';

    # Template: AdminSystemAddressForm
    $Hash{'Add system address'} = '�������� �� ��� �������� �����';
    $Hash{'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!'} = '������ ������� ������ �� ���� ����� (��:) �� �� ����������� � ��������� ������';
    $Hash{'Change system address setting'} = '������� �� ����������� �� ���������� �����';
    $Hash{'Realname'} = '';
    $Hash{'System Email Addresses Management'} = '���������� �� ��������� ����� �����';

    # Template: AdminUserForm
    $Hash{'Add user'} = '�������� �� ����������';
    $Hash{'Change user settings'} = '������� �� ��������������� ���������';
    $Hash{'Don\'t forget to add a new user to groups!'} = '�� ���������� �� �������� ������ ���������� � ������� �����!';
    $Hash{'User Management'} = '���������� �� �����������';
    $Hash{'User will be needed to handle tickets.'} = '�� � ��������� ����������, �� �� ���� ������� �� �� ��������';

    # Template: AdminUserGroupChangeForm
    $Hash{'Change  settings'} = '';
    $Hash{'User <-> Group Management'} = '���������� <-> ���������� �� �����';

    # Template: AdminUserGroupForm
    $Hash{'Change user <-> group settings'} = '������� �� ���������� <-> ��������� �� �����';

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
    $Hash{'A message should have a To: recipient!'} = '����������� ������ �� ��� ��: �.�. ��������!';
    $Hash{'Bounce ticket'} = '';
    $Hash{'Bounce to'} = '';
    $Hash{'Inform sender'} = '';
    $Hash{'Next ticket state'} = '�������� ��������� �� �������';
    $Hash{'Send mail!'} = '��������� �����!';
    $Hash{'You need a email address (e. g. customer@example.com) in To:!'} = '������ �� ��� ������� ����� � ������ ��: (�������� support@hebros.bg)!';
    $Hash{'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further inforamtions.'} = '';

    # Template: AgentClose
    $Hash{' (work units)'} = '';
    $Hash{'Close ticket'} = '';
    $Hash{'Close type'} = '';
    $Hash{'Close!'} = '';
    $Hash{'Note Text'} = '';
    $Hash{'Note type'} = '��������� � �� ���';
    $Hash{'store'} = '����������';
    $Hash{'Time units'} = '';

    # Template: AgentCompose
    $Hash{'A message should have a subject!'} = '����������� ������ �� ��� ����� � ���� "�������"!';
    $Hash{'Attach'} = '';
    $Hash{'Compose answer for ticket'} = '��������� �� ������� �� ���� �����';
    $Hash{'Is the ticket answered'} = '';
    $Hash{'Options'} = '';
    $Hash{'Spell Check'} = '';

    # Template: AgentCustomer
    $Hash{'Back'} = '�����';
    $Hash{'Change customer of ticket'} = '';
    $Hash{'Set customer id of a ticket'} = '�������� �� ������������� ��������� �� ������';

    # Template: AgentCustomerHistory
    $Hash{'Customer history'} = '';

    # Template: AgentCustomerHistoryTable

    # Template: AgentForward
    $Hash{'Article type'} = '������ ���';
    $Hash{'Date'} = '';
    $Hash{'End forwarded message'} = '';
    $Hash{'Forward article of ticket'} = '�������� �������� �� ���� �����';
    $Hash{'Forwarded message from'} = '';
    $Hash{'Reply-To'} = '';

    # Template: AgentHistoryForm
    $Hash{'History of'} = '';

    # Template: AgentMailboxTicket
    $Hash{'Add Note'} = '�������� �� �������';

    # Template: AgentNavigationBar
    $Hash{'FAQ'} = '';
    $Hash{'Locked tickets'} = '��������� ������';
    $Hash{'new message'} = '���� ���������';
    $Hash{'PhoneView'} = '������� �� ����������';
    $Hash{'Preferences'} = '�������������';
    $Hash{'Utilities'} = '������� ��������';

    # Template: AgentNote
    $Hash{'Add note to ticket'} = '�������� �� ������� ��� ������';
    $Hash{'Note!'} = '';

    # Template: AgentOwner
    $Hash{'Change owner of ticket'} = '';
    $Hash{'Message for new Owner'} = '';
    $Hash{'New user'} = '';

    # Template: AgentPhone
    $Hash{'Customer called'} = '';
    $Hash{'Phone call'} = '��������� ��������';
    $Hash{'Phone call at %s'} = '';

    # Template: AgentPhoneNew
    $Hash{'A message should have a From: recipient!'} = '����������� ������ �� ��� ��������� ���� ��:';
    $Hash{'new ticket'} = '��� �����';
    $Hash{'New ticket via call.'} = '';
    $Hash{'You need a email address (e. g. customer@example.com) in From:!'} = '������ �� ����� ����� ����� (�������� customer@example.com) � ���� ��:';

    # Template: AgentPlain
    $Hash{'ArticleID'} = '';
    $Hash{'Plain'} = '���������';
    $Hash{'TicketID'} = '';

    # Template: AgentPreferencesCustomQueue
    $Hash{'Select your custom queues'} = '�������� ������ ������������� ������';

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
    $Hash{'Change Password'} = '������� �� ������';
    $Hash{'New password'} = '���� ������';
    $Hash{'New password again'} = '�������� ������ ��������';

    # Template: AgentPriority
    $Hash{'Change priority of ticket'} = '������� �� ���������� �� ������';
    $Hash{'New state'} = '';

    # Template: AgentSpelling
    $Hash{'Apply these changes'} = '';
    $Hash{'Discard all changes and return to the compose screen'} = '';
    $Hash{'Return to the compose screen'} = '';
    $Hash{'Spell Checker'} = '';
    $Hash{'spelling error(s)'} = '';
    $Hash{'The message being composed has been closed.  Exiting.'} = '';
    $Hash{'This window must be called from compose window'} = '';

    # Template: AgentStatusView
    $Hash{'D'} = '';
    $Hash{'sort downward'} = '';
    $Hash{'sort upward'} = '';
    $Hash{'Ticket limit:'} = '';
    $Hash{'Ticket Status'} = '';
    $Hash{'U'} = '';

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
    $Hash{'Ticket locked!'} = '������� � ��������!';
    $Hash{'unlock'} = '�������';

    # Template: AgentUtilSearchByCustomerID
    $Hash{'Customer history search'} = '������� � ��������� �� �������';
    $Hash{'Customer history search (e. g. "ID342425").'} = '������� � ��������� �� ������� (�������� "ID342425").';
    $Hash{'No * possible!'} = '�� � �������� ���������� �� ������ *!';

    # Template: AgentUtilSearchByText
    $Hash{'Article free text'} = '';
    $Hash{'Fulltext search'} = '�������� �������';
    $Hash{'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")'} = '�������� ������� (�������� "Mar*in" ��� "Baue*" ��� "martin+hallo")';
    $Hash{'Search in'} = '';
    $Hash{'Ticket free text'} = '';

    # Template: AgentUtilSearchByTicketNumber
    $Hash{'search'} = '�������';
    $Hash{'search (e. g. 10*5155 or 105658*)'} = '������� (�������� 10*5155 ��� 105658*)';

    # Template: AgentUtilSearchNavBar
    $Hash{'Results'} = '';
    $Hash{'Site'} = '';
    $Hash{'Total hits'} = '��� ���� ���������';

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
    $Hash{'All open tickets'} = '';
    $Hash{'open tickets'} = '';
    $Hash{'Provides an overview of all'} = '';
    $Hash{'So you see what is going on in your system.'} = '';

    # Template: CustomerCreateAccount
    $Hash{'Create'} = '';
    $Hash{'Create Account'} = '';

    # Template: CustomerError
    $Hash{'Backend'} = '';
    $Hash{'BackendMessage'} = '';
    $Hash{'Click here to report a bug!'} = '��������� ���, �� �� ��������� ����� �� ��������!';
    $Hash{'Handle'} = '';

    # Template: CustomerFooter
    $Hash{'Powered by'} = '';

    # Template: CustomerHeader

    # Template: CustomerLogin

    # Template: CustomerLostPassword
    $Hash{'Lost your password?'} = '';
    $Hash{'Request new password'} = '';

    # Template: CustomerMessage
    $Hash{'Follow up'} = '';

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
    $Hash{'Create new Ticket'} = '';
    $Hash{'My Tickets'} = '����� ������';
    $Hash{'New Ticket'} = '��� �����';
    $Hash{'Ticket-Overview'} = '';
    $Hash{'Welcome %s'} = '';

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom
    $Hash{'Accounted time'} = '';

    # Template: CustomerWarning

    # Template: Error

    # Template: Footer

    # Template: Header
    $Hash{'Home'} = '';

    # Template: InstallerStart
    $Hash{'next step'} = '';

    # Template: InstallerSystem

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
    $Hash{'No Permission'} = '������ ����������';

    # Template: Notify
    $Hash{'Info'} = '';

    # Template: QueueView
    $Hash{'All tickets'} = '������ ������';
    $Hash{'Queues'} = '������';
    $Hash{'Show all'} = '��������� �� ������';
    $Hash{'Ticket available'} = '������� ������';
    $Hash{'tickets'} = '������';
    $Hash{'Tickets shown'} = '�������� ������';

    # Template: SystemStats
    $Hash{'Graphs'} = '�������';
    $Hash{'Tickets'} = '';

    # Template: Test
    $Hash{'OTRS Test Page'} = '';

    # Template: TicketEscalation
    $Hash{'Ticket escalation!'} = '��������� (����������� �� ����������) �� ������!';

    # Template: TicketView
    $Hash{'Change queue'} = '������� �� ��������';
    $Hash{'Compose Answer'} = '��������� �� �������';
    $Hash{'Contact customer'} = '������� � �������';
    $Hash{'phone call'} = '��������� ��������';
    $Hash{'Time till escalation'} = '����� �� ���������';

    # Template: TicketViewLite

    # Template: TicketZoom

    # Template: TicketZoomNote

    # Template: TicketZoomSystem

    # Template: Warning

    # Misc
    $Hash{'(Click here to add a group)'} = '(��������� ���, �� �� �������� ���� �����)';
    $Hash{'(Click here to add a queue)'} = '(��������� ���, �� �� �������� ���� ������)';
    $Hash{'(Click here to add a response)'} = '(��������� ���, �� �� �������� ��� �������)';
    $Hash{'(Click here to add a salutation)'} = '(��������� ���, �� �� �������� ���� ���������)';
    $Hash{'(Click here to add a signature)'} = '(��������� ���, �� �� �������� ��� ������)';
    $Hash{'(Click here to add a system email address)'} = '(��������� ���, �� �� �������� ��� �������� �����)';
    $Hash{'(Click here to add a user)'} = '(��������� ���, �� �� �������� ��� ����������)';
    $Hash{'(Click here to add an auto response)'} = '(��������� ���, �� �� �������� ��� ����������� �������)';
    $Hash{'(Click here to add charset)'} = '(��������� ���, �� �� �������� ��� �������� �����)';
    $Hash{'(Click here to add language)'} = '(��������� ���, �� �� �������� ��� ����)';
    $Hash{'(Click here to add state)'} = '(��������� ���, �� �� �������� ���� �������� ��������� )';
    $Hash{'Update auto response'} = '���������� �� ������������� �������';
    $Hash{'Update charset'} = '���������� �� �������� �����';
    $Hash{'Update group'} = '���������� �� �����';
    $Hash{'Update language'} = '���������� �� ����';
    $Hash{'Update queue'} = '���������� �� ������';
    $Hash{'Update response'} = '���������� �� ���������';
    $Hash{'Update salutation'} = '���������� �� ���������';
    $Hash{'Update signature'} = '���������� �� ������';
    $Hash{'Update state'} = '���������� �� ���������';
    $Hash{'Update system address'} = '���������� �� ���������� �����';
    $Hash{'Update user'} = '���������� �� ����������';
    $Hash{'You have to be in the admin group!'} = '������ �� ��� ���� �� admin �������!';
    $Hash{'You have to be in the stats group!'} = '������ �� ��� ���� �� stat �������!';
    $Hash{'auto responses set'} = '����� ����������� ��������';

    $Self->{Translation} = \%Hash;

}
# --
1;
