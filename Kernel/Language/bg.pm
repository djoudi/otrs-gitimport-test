# --
# Kernel/Language/bg.pm - provides bg language translation
# Copyright (C) 2004 Vladimir Gerdjikov <gerdjikov at gerdjikovs.net>
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::bg;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.17.2.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;
# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation

    # possible charsets
    $Self->{Charset} = ['cp1251', 'Windows-1251', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 ������',
      ' 5 minutes' => ' 5 ������',
      ' 7 minutes' => ' 7 ������',
      '10 minutes' => '10 ������',
      '15 minutes' => '15 ������',
      'AddLink' => '�������� �� ������',
      'AdminArea' => '����-�������������',
      'agent' => '�����',
      'all' => '������',
      'All' => '������',
      'Attention' => '��������',
      'Bug Report' => '����� �� ������',
      'Cancel' => '�����',
      'change' => '���������',
      'Change' => '�������',
      'change!' => '���������!',
      'click here' => '��������� ���',
      'Comment' => '��������',
      'Customer' => '����������',
      'customer' => '����������',
      'Customer Info' => '������������� �����',
      'day' => '���',
      'days' => '���',
      'description' => '��������',
      'Description' => '��������',
      'Dispatching by email To: field.' => '������������ �� ���� To: �� �������.',
      'Dispatching by selected Queue.' => '������������� �� ������� ������.',
      'Don\'t work with UserID 1 (System account)! Create new users!' => '�� �������� � UserID 1 (�������� ������)! �������� ���� �����������.',
      'Done' => '������.',
      'end' => '����',
      'Error' => '������',
      'Example' => '������',
      'Examples' => '�������',
      'Facility' => '��������������',
      'Feature not active!' => '��������� �� � �������',
      'go' => '��',
      'go!' => '��!',
      'Group' => '�����',
      'Hit' => '���������',
      'Hits' => '���������',
      'hour' => '���',
      'hours' => '������',
      'Ignore' => '�������������',
      'invalid' => '���������',
      'Invalid SessionID!' => '��������� SessionID!',
      'Language' => '����',
      'Languages' => '�����',
      'Line' => '�����',
      'Lite' => '����',
      'Login failed! Your username or password was entered incorrectly.' => '��������� �����������! ������ ��� �/��� ������ �� �����������!',
      'Logout successful. Thank you for using OTRS!' => '������� � �������. ���������� ��, �� ����������� ���������.',
      'Message' => '���������',
      'minute' => '������',
      'minutes' => '������',
      'Module' => '�����',
      'Modulefile' => '����-�����',
      'Name' => '���',
      'New message' => '���� ���������',
      'New message!' => '���� ���������!',
      'No' => '��',
      'no' => '��',
      'No entry found!' => '���� �������� ��������!',
      'No suggestions' => '���� �������������',
      'none' => '����',
      'none - answered' => '���� - ���������',
      'none!' => '����!',
      'Off' => '���������',
      'off' => '���������',
      'On' => '��������',
      'on' => '��������',
      'Password' => '������',
      'Pending till' => '� �������� ��',
      'Please answer this ticket(s) to get back to the normal queue view!' => '����, ���������� �� ���� �����(�) �� �� �� ������� � ��������� ������ �� ��������!',
      'Please contact your admin' => '����, �������� �� � ������ �������������',
      'please do not edit!' => '����, �� ������������!',
      'possible' => '��������',
      'QueueView' => '������� �� ��������',
      'reject' => '���������',
      'replace with' => '������� �',
      'Reset' => '�����������',
      'Salutation' => '���������',
      'Session has timed out. Please log in again.' => '����, ������������ �� ������. ���� ����� ���� � ���������.',
      'Signature' => '������',
      'Sorry' => '����������',
      'Stats' => '����������',
      'Subfunction' => '����������',
      'submit' => '���������',
      'submit!' => '���������!',
      'system' => '�������',
      'Take this User' => '�������� ���� ����������',
      'Text' => '�����',
      'The recommended charset for your language is %s!' => '���������������� �������� ����� �� ������ ���� � %s',
      'Theme' => '����',
      'There is no account with that login name.' => '���� ���������� � ���� ���.',
      'Timeover' => '����������� �� �������',
      'top' => '��� ��������',
      'update' => '����������',
      'update!' => '����������!',
      'User' => '����������',
      'Username' => '������������� ���',
      'Valid' => '�������',
      'Warning' => '��������������',
      'Welcome to OTRS' => '����� ����� � OTRS',
      'Word' => '����',
      'wrote' => '��������',
      'yes' => '��',
      'Yes' => '��',
      'You got new message!' => '��������� ���� ���������!',
      'You have %s new message(s)!' => '��� ����� %s ����/���� ���������/���������!',
      'You have %s reminder ticket(s)!' => '��� ����� %s �������/�������� �����/������!',

    # Template: AAAMonth
      'Apr' => '���',
      'Aug' => '���',
      'Dec' => '���',
      'Feb' => '���',
      'Jan' => '���',
      'Jul' => '���',
      'Jun' => '���',
      'Mar' => '���',
      'May' => '���',
      'Nov' => '���',
      'Oct' => '���',
      'Sep' => '���',

    # Template: AAAPreferences
      'Closed Tickets' => '��������� ������',
      'Custom Queue' => '������������� ������',
      'Follow up notification' => '�������� �� ��������� �� ������� �� ���������',
      'Frontend' => '����-����������',
      'Mail Management' => '���������� �� ������',
      'Move notification' => '�������� �� �����������',
      'New ticket notification' => '��������� �� ��� �����',
      'Other Options' => '����� ���������',
      'Preferences updated successfully!' => '��������������� �� �������� �������',
      'QueueView refresh time' => '����� �� ���������� �������� �� ��������',
      'Select your default spelling dictionary.' => '�������� ������ ������ �� �������� �� ����������',
      'Select your frontend Charset.' => '�������� ������ �������� �����.',
      'Select your frontend language.' => '�������� ������ ����.',
      'Select your frontend QueueView.' => '�������� ���� �� ������������ ������������ �� ��������.',
      'Select your frontend Theme.' => '�������� ������ ������������� ����',
      'Select your QueueView refresh time.' => '�������� ������ ����� �� ���������� �� ������� �� ��������.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => '��������� �� ��������, ��� �������� ������� ������ �� ������� �� �������� � �� ��� ���������� �� ������',
      'Send me a notification if a ticket is moved into a custom queue.' => '��������� �� ��������, ��� ������� � ��������� � ������� ������������� ������.',
      'Send me a notification if a ticket is unlocked by the system.' => '��������� �� ��������, ��� ������� � �������� �� ���������.',
      'Send me a notification if there is a new ticket in my custom queues.' => '��������� �� ��������, ��� ��� ���(�) ����� � ����� ������������� ������.',
      'Show closed tickets.' => '�������� ����������� ������',
      'Spelling Dictionary' => '����� �� �������� �� ���������',
      'Ticket lock timeout notification' => '�������� �� ����������������� �� ���������� �� �������',

    # Template: AAATicket
      '1 very low' => '1 ����� �����',
      '2 low' => '2 �����',
      '3 normal' => '3 ��������',
      '4 high' => '4 �����',
      '5 very high' => '5 ����� �����',
      'Action' => '��������',
      'Age' => '�������',
      'Article' => '������',
      'Attachment' => '�������� ����',
      'Attachments' => '��������� �������',
      'Bcc' => '������ �����',
      'Bounce' => '��������',
      'Cc' => '����� ��',
      'Close' => '���������',
      'closed successful' => '������� ��������',
      'closed unsuccessful' => '��������� ��������',
      'Compose' => '���������',
      'Created' => '��������',
      'Createtime' => '����� �� ���������',
      'email' => '�-����',
      'eMail' => '�-����',
      'email-external' => '������ �-����',
      'email-internal' => '�������� �-����',
      'Forward' => '����������',
      'From' => '��',
      'high' => '�����',
      'History' => '�������',
      'If it is not displayed correctly,' => '��� �� �� ����� ��������,',
      'lock' => '�������',
      'Lock' => '�������',
      'low' => '�����',
      'Move' => '�����������',
      'new' => '���',
      'normal' => '��������',
      'note-external' => '������ �������',
      'note-internal' => '�������� �������',
      'note-report' => '������� �����',
      'open' => '�������',
      'Owner' => '����������',
      'Pending' => '� ��������',
      'pending auto close+' => '������ ����������� ���������+',
      'pending auto close-' => '������ ����������� ���������-',
      'pending reminder' => '������ ���������',
      'phone' => '�������',
      'plain' => '���������',
      'Priority' => '���������',
      'Queue' => '������',
      'removed' => '���������',
      'Sender' => '��������',
      'sms' => 'sms',
      'State' => '������',
      'Subject' => '�������',
      'This is a' => '���� �',
      'This is a HTML email. Click here to show it.' => '���� � ���� � HTML ������. ��������� ���, �� �� �������� ��������',
      'This message was written in a character set other than your own.' => '���� ����� � �������� � �������� �������� �������� �� ����, ����� ����������.',
      'Ticket' => '�����',
      'To' => '��',
      'to open it in a new window.' => '�� �� �������� � ��� ��������',
      'unlock' => '�������',
      'Unlock' => '�������',
      'very high' => '����� �����',
      'very low' => '����� �����',
      'View' => '������',
      'webrequest' => '������ �� web',
      'Zoom' => '��������',

    # Template: AAAWeekDay
      'Fri' => '���',
      'Mon' => '���',
      'Sat' => '���',
      'Sun' => '���',
      'Thu' => '���',
      'Tue' => '���',
      'Wed' => '���',

    # Template: AdminAttachmentForm
      'Add attachment' => '�������� �� �������� ����',
      'Attachment Management' => '���������� �� �������� ����',
      'Change attachment settings' => '������� �������� �� ��������� �������',

    # Template: AdminAutoResponseForm
      'Add auto response' => '�������� �� ����������� �������',
      'Auto Response From' => '����������� ������� ��',
      'Auto Response Management' => '���������� �� ������������� �������',
      'Change auto response settings' => '������� �� ����������� �� ������������� �������',
      'Charset' => '�������� �����',
      'Note' => '�������',
      'Response' => '�������',
      'to get the first 20 character of the subject' => '�� �� �������� ������� 20 ������� �� ���� "�������"',
      'to get the first 5 lines of the email' => '�� �� �������� ������� 5 ���� �� �������',
      'to get the from line of the email' => '�� �� �������� ��� �� �������',
      'to get the realname of the sender (if given)' => '�� �� �������� ���������� ��� �� ��������� (��� � ���������)',
      'to get the ticket id of the ticket' => '�� �� �������� �������������� �� ������',
      'to get the ticket number of the ticket' => '�� �� �������� ������ �� ������',
      'Type' => '���',
      'Useable options' => '����������� �����',

    # Template: AdminCharsetForm
      'Add charset' => '�������� �� �������� �����',
      'Change system charset setting' => '������� �� ���������� �������� �����',
      'System Charset Management' => '���������� �� ���������� �����',

    # Template: AdminCustomerUserForm
      'Add customer user' => '�������� ������-����������',
      'Change customer user settings' => '����� �� ������-��������������� ���������',
      'Customer User Management' => '���������� �� ������-�����������',
      'Customer user will be needed to to login via customer panels.' => '�� �� � ��������� ������������� �������� ���������� �� ������ �� �������������� �����',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => '����� �� Admin',
      'Body' => '���� �� �������',
      'OTRS-Admin Info!' => '���������� �� OTRS-Admin',
      'Permission' => '����������',
      'Recipents' => '����������',
      'send' => '�������',

    # Template: AdminEmailSent
      'Message sent to' => '����������� � ��������� ��',

    # Template: AdminGroupForm
      'Add group' => '�������� �� �����',
      'Change group settings' => '������� �� ��������� ���������',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => '��������� ���� ����� �� �� ����������� ������������ �� ���������� ����� �� ������ (�������� ����� �� ����� "��������", ����� "���������" � �.�.)',
      'Group Management' => '���������� �� �����',
      'It\'s useful for ASP solutions.' => '���� � ��������� �� ������� � ASP.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => '������� admin �������� ������������������ ����, � stat ������� �������� ������ �� ����������.',

    # Template: AdminLog
      'System Log' => '�������� ������',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Admin �-����',
      'AgentFrontend' => '����-����������',
      'Attachment <-> Response' => '�������� ����<->�������',
      'Auto Response <-> Queue' => '����������� ������� <-> ������',
      'Auto Responses' => '����������� �������',
      'Charsets' => '�������� �����',
      'Customer User' => '������-����������',
      'Email Addresses' => '�-�������� ������',
      'Groups' => '�����',
      'Logout' => '�����',
      'Misc' => '�������',
      'POP3 Account' => 'POP3 ������',
      'Responses' => '��������',
      'Responses <-> Queue' => '�������� <-> ������',
      'Select Box' => '�������� �����',
      'Session Management' => '���������� �� ������',
      'Status' => '������',
      'System' => '�������',
      'User <-> Groups' => '���������� <-> �����',

    # Template: AdminPOP3Form
      'Add POP3 Account' => '�������� �� POP3 ������',
      'All incoming emails with one account will be dispatched in the selected queue!' => '������ ������� ����� � ���� ������ �� �� ����������� � ��������� ������!',
      'Change POP3 Account setting' => '��������� POP3 ����������� �� �������',
      'Dispatching' => '�������������',
      'Host' => '����',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => '��� ������ ������ � �������, �� �� �������� ����� x-otrs (�� �������������, � �.�.)!',
      'Login' => '����',
      'POP3 Account Management' => '���������� �� POP3 �������',
      'Trusted' => '�������',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => '������ <-> ���������� �� ������������� �������',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = ��� ���������',
      '0 = no unlock' => '0 = ��� ����������',
      'Add queue' => '�������� �� ������',
      'Change queue settings' => '������� �� ����������� �� ��������',
      'Customer Move Notify' => '����������� ��� ������������� �� �����������',
      'Customer Owner Notify' => '����������� �� �����������',
      'Customer State Notify' => '����������� �� ����������� �� �����������',
      'Escalation time' => '����� �� ��������� (����������� �� �����������)',
      'Follow up Option' => '��������� �� ����������� ������������',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '��� ������� � �������� � ����������� ������� ������ �� ������������, ������� �� ���� �������� �� ������ ����������',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => '��� ������� �� ������ ������� � ������������ �����, �� �� ������ ���� ���� �����',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '��� ������� ������� ������� � ���(��� ��) �� ������� ������� � ������������ �����, ������� �� �� ������� �����������. ���� ������� �� ����� ����� �� ������ ����� ������',
      'Key' => '����',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS ������� �������� �� �-���� �� �������, ��� ������� � ���������.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS ������� �������� �� �-���� �� �������, ��� ����������� �� ������ � ��������.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS ������� �������� �� �-���� �� �������, ��� �������� �� ������� � ��������.',
      'Queue Management' => '���������� �� ������',
      'Sub-Queue of' => '���-������ ��',
      'Systemaddress' => '�������� �����',
      'The salutation for email answers.' => '����������� �� ���������� �� �����',
      'The signature for email answers.' => '�������� �� ���������� �� �����',
      'Ticket lock after a follow up' => '���������� �� ������� ���� ����������� �����������',
      'Unlock timeout' => '����� �� ����������',
      'Will be the sender address of this queue for email answers.' => '�� ���� ������� �� ������� �� ���� ������ ��� ����� ����������',

    # Template: AdminQueueResponsesChangeForm
      'Change %s settings' => '������� �� %s ���������',
      'Std. Responses <-> Queue Management' => '���������� �������� <-> ���������� �� ��������',

    # Template: AdminQueueResponsesForm
      'Answer' => '�������',
      'Change answer <-> queue settings' => '������� �� ��������� <-> ��������� �� ��������',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => '�����.�������� <-> �����.���������� �� ����������� �������',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => '������� �� ���������� <-> ��������� ��������� �������',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => '��������� � ����� �� ������������, �������� �������������, � ��� ��-���� ������� ��� �������',
      'Add response' => '�������� �� �������',
      'Change response settings' => '������� ���������� �� ���������',
      'Don\'t forget to add a new response a queue!' => '�� �� ��������� �� �������� ������ ������� ��� ������ ������!',
      'Response Management' => '���������� �� ���������',

    # Template: AdminSalutationForm
      'Add salutation' => '�������� �� ���������',
      'Change salutation settings' => '������� �� ����������� �� �����������',
      'customer realname' => '��� �� �����������',
      'for agent firstname' => '�� ����� ���',
      'for agent lastname' => '�� ����� �������',
      'for agent login' => '�� ����� ��������� ����',
      'for agent user id' => '�� ����� ������������� ID',
      'Salutation Management' => '���������� �� �����������',

    # Template: AdminSelectBoxForm
      'Max Rows' => '���������� ���� ������',

    # Template: AdminSelectBoxResult
      'Limit' => '�����',
      'Select Box Result' => '����� �� ����� �� ���������',
      'SQL' => 'SQL',

    # Template: AdminSession
      'kill all sessions' => '��������� �� ������ ������ �����',

    # Template: AdminSessionTable
      'kill session' => '��������� �� �������� �����',
      'SessionID' => '������������� �� �����',

    # Template: AdminSignatureForm
      'Add signature' => '�������� �� ������',
      'Change signature settings' => '������� �� ����������� �� ��������',
      'Signature Management' => '���������� �� ��������',

    # Template: AdminStateForm
      'Add state' => '�������� �� ���������',
      'Change system state setting' => '������� �� ����������� �� �������� ���������',
      'State Type' => '��� ���������',
      'System State Management' => '���������� �� �������� ���������',

    # Template: AdminSystemAddressForm
      'Add system address' => '�������� �� ��� �������� �����',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => '������ ������� ������ �� ���� ����� (��:) �� �� ����������� � ��������� ������.',
      'Change system address setting' => '������� �� ����������� �� ���������� �����',
      'Email' => '�-����',
      'Realname' => '�������� ���',
      'System Email Addresses Management' => '���������� �� ��������� ����� �����',

    # Template: AdminUserForm
      'Add user' => '�������� �� ����������',
      'Change user settings' => '������� �� ��������������� ���������',
      'Don\'t forget to add a new user to groups!' => '�� ���������� �� �������� ������ ���������� � ������� �����!',
      'Firstname' => '���',
      'Lastname' => '�������',
      'User Management' => '���������� �� �����������',
      'User will be needed to handle tickets.' => '�� � ��������� ����������, �� �� ���� ������� �� �� ��������',

    # Template: AdminUserGroupChangeForm
      'Change  settings' => '������� �� ���������',
      'User <-> Group Management' => '���������� <-> ���������� �� �����',

    # Template: AdminUserGroupForm
      'Change user <-> group settings' => '������� �� ���������� <-> ��������� �� �����',

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
      'A message should have a To: recipient!' => '����������� ������ �� ��� ��: �.�. ��������!',
      'Bounce ticket' => '������� �����',
      'Bounce to' => '����� ��',
      'Inform sender' => '�� �� ��������� ����������',
      'Next ticket state' => '�������� ��������� �� �������',
      'Send mail!' => '��������� �����!',
      'You need a email address (e. g. customer@example.com) in To:!' => '������ �� ��� ������� ����� � ������ ��: (�������� support@hebros.bg)!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => '������� �� � ����� "<OTRS_TICKET>" � ��������� ��� "<OTRS_BOUNCE_TO>". �������� �� � ���� ����� �� ������ ����������',

    # Template: AgentClose
      ' (work units)' => ' (������� �������)',
      'A message should have a subject!' => '����������� ������ �� ��� ����� � ���� "�������"!',
      'Close ticket' => '��������� �������',
      'Close type' => '��� ���������',
      'Close!' => '���������!',
      'Note Text' => '����� �� ���������',
      'Note type' => '��������� � �� ���',
      'Options' => '���������',
      'Spell Check' => '�������� �� ���������',
      'Time units' => '����� ������� �� �������',
      'You need to account time!' => '��� �� �������� �� ����� �� �������',

    # Template: AgentCompose
      'A message must be spell checked!' => '����������� ������ �� ���� ��������� �� ������!',
      'Attach' => '�������� ����',
      'Compose answer for ticket' => '��������� �� ������� �� ���� �����',
      'for pending* states' => '�� ��������� � ��������* ',
      'Is the ticket answered' => '���� ������� � ������� �������',
      'Pending Date' => '� ��������-����',

    # Template: AgentCustomer
      'Back' => '�����',
      'Change customer of ticket' => '������� �� ������������ �� ������',
      'CustomerID' => '������������� ���������',
      'Search Customer' => '������� �� ����������',
      'Set customer user and customer id of a ticket' => '������� ���������� � ������������� ������������� �� ������',

    # Template: AgentCustomerHistory
      'Customer history' => '������� �� ������������',

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerMessage
      'Follow up' => '������ �� �������',
      'Next state' => '�������� ���������',

    # Template: AgentCustomerView
      'Customer Data' => '����� �� �����������',

    # Template: AgentForward
      'Article type' => '������ ���',
      'Date' => '����',
      'End forwarded message' => '���� �� ������������ ���������',
      'Forward article of ticket' => '�������� �������� �� ���� �����',
      'Forwarded message from' => '���������� ��������� ��',
      'Reply-To' => '������� ��',

    # Template: AgentFreeText
      'Change free text of ticket' => '��������� ������ �� ������',
      'Value' => '��������',

    # Template: AgentHistoryForm
      'History of' => '������� ��',

    # Template: AgentMailboxNavBar
      'All messages' => '������ ���������',
      'down' => '������',
      'Mailbox' => '�������� �����',
      'New' => '����',
      'New messages' => '���� ���������',
      'Open' => '��������',
      'Open messages' => '�������� ���������',
      'Order' => '���',
      'Pending messages' => '��������� � ��������',
      'Reminder' => '���������',
      'Reminder messages' => '��������� ���������',
      'Sort by' => '��������� ��',
      'Tickets' => '������',
      'up' => '������',

    # Template: AgentMailboxTicket

    # Template: AgentMove
      'Move Ticket' => '����������� �� ������',
      'New Queue' => '�������� ������',
      'New user' => '��� ����������',

    # Template: AgentNavigationBar
      'Locked tickets' => '��������� ������',
      'new message' => '���� ���������',
      'PhoneView' => '������� �� ����������',
      'Preferences' => '�������������',
      'Utilities' => '������� ��������',

    # Template: AgentNote
      'Add note to ticket' => '�������� �� ������� ��� ������',
      'Note!' => '�������!',

    # Template: AgentOwner
      'Change owner of ticket' => '������� ������������ �� ������',
      'Message for new Owner' => '��������� �� ��� ����������',

    # Template: AgentPending
      'Pending date' => '� �������� - ����',
      'Pending type' => '� �������� - ���',
      'Pending!' => '� ��������',
      'Set Pending' => '� �������� - ��������',

    # Template: AgentPhone
      'Customer called' => '��������� � ���.�������� �� ������������',
      'Phone call' => '��������� ��������',
      'Phone call at %s' => '��������� �������� � %s',

    # Template: AgentPhoneNew
      'Clear From' => '��������� �������',
      'create' => '���������',
      'new ticket' => '��� �����',

    # Template: AgentPlain
      'ArticleID' => '������������� �� ������',
      'Plain' => '���������',
      'TicketID' => '������������� �� �����',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => '�������� ������ ������������� ������',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => '������� �� ������',
      'New password' => '���� ������',
      'New password again' => '�������� ������ ��������',

    # Template: AgentPriority
      'Change priority of ticket' => '������� �� ���������� �� ������',
      'New state' => '���� ���������',

    # Template: AgentSpelling
      'Apply these changes' => '������� �� ��� ���� �������',
      'Discard all changes and return to the compose screen' => '��������� �� �� ������ ������� � �� ������� ��� ������ �� ���������',
      'Return to the compose screen' => '������� �� ��� ������ �� ���������',
      'Spell Checker' => '�������� �� ����������',
      'spelling error(s)' => '���������� ������(������)',
      'The message being composed has been closed.  Exiting.' => '�����������, ����� ���������� � ���������. �����.',
      'This window must be called from compose window' => '���� �������� ������ �� ���� ������� �� ��������� �� ���������',

    # Template: AgentStatusView
      'D' => 'D',
      'of' => '��',
      'Site' => '�����',
      'sort downward' => '��������� ���������',
      'sort upward' => '��������� ���������',
      'Ticket Status' => '��������� �� �������',
      'U' => 'U',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
      'Ticket locked!' => '������� � ��������!',
      'Ticket unlock!' => '������� � ��������!',

    # Template: AgentTicketPrint
      'by' => '��',

    # Template: AgentTicketPrintHeader
      'Accounted time' => '�������� �����',
      'Escalation in' => '���������� �� ���������� �',
      'printed by' => '���������� ��',

    # Template: AgentUtilSearch
      'Article free text' => '������ �������� �����',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => '�������� ������� (�������� "Mar*in" ��� "Baue*" ��� "martin+hallo")',
      'search' => '�������',
      'search (e. g. 10*5155 or 105658*)' => '������� (�������� 10*5155 ��� 105658*)',
      'Ticket free text' => '����� �������� �����',
      'Ticket Search' => '������� �� �����',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => '������� � ��������� �� �������',
      'Customer history search (e. g. "ID342425").' => '������� � ��������� �� ������� (�������� "ID342425").',
      'No * possible!' => '�� � �������� ���������� �� ������ *!',

    # Template: AgentUtilSearchNavBar
      'Results' => '��������',
      'Total hits' => '��� ���� ���������',

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
      'All closed tickets' => '������ ���������� ������',
      'All open tickets' => '������ �������� ������',
      'closed tickets' => '��������� ������',
      'open tickets' => '�������� ������',
      'or' => '���',
      'Provides an overview of all' => '��������� ��� ������� �� ������',
      'So you see what is going on in your system.' => '����� ����� ��� ������ �������',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => '��������� ������������ �� �������',
      'Your own Ticket' => '������ �������� �����',

    # Template: AgentZoomAnswer
      'Compose Answer' => '��������� �� �������',
      'Contact customer' => '������� � �������',
      'phone call' => '��������� ��������',

    # Template: AgentZoomArticle
      'Split' => '����������',

    # Template: AgentZoomBody
      'Change queue' => '������� �� ��������',

    # Template: AgentZoomHead
      'Free Fields' => '�������� ������',
      'Print' => '�����������',

    # Template: AgentZoomStatus

    # Template: CustomerCreateAccount
      'Create Account' => '��������� �� ������',

    # Template: CustomerError
      'Traceback' => '������������',

    # Template: CustomerFooter
      'Powered by' => '� ������� ��',

    # Template: CustomerHeader
      'Contact' => '�������',
      'Home' => '������',
      'Online-Support' => '�� �����-���������',
      'Products' => '��������',
      'Support' => '���������',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => '��������� ������',
      'Request new password' => '����� �� ���� ������',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => '��������� �� ��� �����',
      'My Tickets' => '����� ������',
      'New Ticket' => '��� �����',
      'Ticket-Overview' => '������-�������',
      'Welcome %s' => '������ %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => '��������� ���, �� �� ��������� ����� �� ��������!',

    # Template: Footer
      'Top of Page' => '������ �� ����������',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => '��������� �� ���� �����',
      'Drop Database' => '�������� ������ �����',
      'Finished' => '����������',
      'System Settings' => '�������� ���������',
      'Web-Installer' => 'Web ����������',

    # Template: InstallerFinish
      'Admin-User' => '�������������',
      'After doing so your OTRS is up and running.' => '���� ������������ �� ����, ������ OTRS � ������� ��������������.',
      'Have a lot of fun!' => '������� ������!',
      'Restart your webserver' => '������� �� web ��������',
      'Start page' => '������� ��������',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '�� �� ���� �� ���������� OTRS, ��� ������ �� ��������, ���� ����� ���������� root � �������� ����� (Terminal/Shell) �������� �������',
      'Your OTRS Team' => '������ OTRS ����',

    # Template: InstallerLicense
      'accept license' => '�������� �������',
      'don\'t accept license' => '�� �������� �������',
      'License' => '������',

    # Template: InstallerStart
      'Create new database' => '��������� �� ���� ���� �����',
      'DB Admin Password' => '������ �� �������������� �� ������',
      'DB Admin User' => '���������� �� ������ �����',
      'DB Host' => '���� �� ������ �����',
      'DB Type' => '��� �� ������ �����',
      'default \'hot\'' => '�� ������������',
      'Delete old database' => '��������� �� ����� ���� �����',
      'next step' => '�������� ������',
      'OTRS DB connect host' => '���� ������� ��� OTRS ���� �����',
      'OTRS DB Name' => '��� �������� ��� OTRS ���� �����',
      'OTRS DB Password' => '������ �� OTRS ���� �����',
      'OTRS DB User' => '���������� �� OTRS ���� �����',
      'your MySQL DB should have a root password! Default is empty!' => '������ MYSQL ���� ����� ������ �� ��� ������ �� root �����������. �� ������������ � ������!',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(��������� MX �������� �� ������ �� �������-��������. �� ����������� CheckMXRecord, ��� ������ OTRS ������ � �� ����������� �����! ',
      '(Email of the system admin)' => '(����� �� ���������� �������������)',
      '(Full qualified domain name of your system)' => '(����� ������������� ��� (FQDN) �� ���������)',
      '(Logfile just needed for File-LogModule!)' => '(���������� ���� � ��������� ���� �� File-LogModule)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(�������������� �� ���������. ����� ����� �� ����� � ����� http ����� ������� � ���� �����)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(������������� �� ������. ��������: \'Ticket#\', \'Call#\' or \'MyTicket#\')',
      '(Used default language)' => '(�������� ���� �� ������������)',
      '(Used log backend)' => '(��������� �������� �����)',
      '(Used ticket number format)' => '(��������� ������ �� ������ �� �������)',
      'CheckMXRecord' => 'CheckMXRecord (�������� MX �����)',
      'Default Charset' => '�������� ����� �� ������������',
      'Default Language' => '���� �� ������������',
      'Logfile' => '�������� ����',
      'LogModule' => '�������� �����',
      'Organization' => '�����������',
      'System FQDN' => '�������� FQDN',
      'SystemID' => '�������� ID',
      'Ticket Hook' => '���������� �� �������',
      'Ticket Number Generator' => '��������� �� ������ �� ������',
      'Webfrontend' => 'Web-����',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => '������ ����������',

    # Template: Notify
      'Info' => '����������',

    # Template: PrintFooter
      'URL' => '�����',

    # Template: PrintHeader

    # Template: QueueView
      'All tickets' => '������ ������',
      'Queues' => '������',
      'Tickets available' => '������� ������',
      'Tickets shown' => '�������� ������',

    # Template: SystemStats
      'Graphs' => '�������',

    # Template: Test
      'OTRS Test Page' => '������� �������� �� OTRS',

    # Template: TicketEscalation
      'Ticket escalation!' => '��������� (����������� �� ����������) �� ������!',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => '�������� �� �������',

    # Template: Warning

    # Misc
      '(Click here to add a group)' => '(��������� ���, �� �� �������� ���� �����)',
      '(Click here to add a queue)' => '(��������� ���, �� �� �������� ���� ������)',
      '(Click here to add a response)' => '(��������� ���, �� �� �������� ��� �������)',
      '(Click here to add a salutation)' => '(��������� ���, �� �� �������� ���� ���������)',
      '(Click here to add a signature)' => '(��������� ���, �� �� �������� ��� ������)',
      '(Click here to add a system email address)' => '(��������� ���, �� �� �������� ��� �������� �����)',
      '(Click here to add a user)' => '(��������� ���, �� �� �������� ��� ����������)',
      '(Click here to add an auto response)' => '(��������� ���, �� �� �������� ��� ����������� �������)',
      '(Click here to add charset)' => '(��������� ���, �� �� �������� ��� �������� �����)',
      '(Click here to add language)' => '(��������� ���, �� �� �������� ��� ����)',
      '(Click here to add state)' => '(��������� ���, �� �� �������� ���� �������� ��������� )',
      '(Ticket identifier. Some people want to set this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(������������� �� �������. ����� ���� ������ �� ������� ���������, ���� \'Ticket#\', \'Call#\' ��� \'MyTicket#\')',
      'A message should have a From: recipient!' => '����������� ������ �� ��� ��������� ���� ��:',
      'Add language' => '�������� �� ����',
      'Backend' => '�����',
      'BackendMessage' => '������ ���������',
      'Change system language setting' => '������� �� ����������� �� ���������� ����',
      'Create' => '���������',
      'CustomerUser' => '������-����������',
      'FAQ' => '����� �������� �������',
      'Fulltext search' => '�������� �������',
      'Handle' => '�����������',
      'New ticket via call.' => '��� ����� ���� ��������',
      'Search in' => '������� �',
      'Set customer id of a ticket' => '�������� �� ������������� ��������� �� ������',
      'Show all' => '��������� �� ������',
      'Status defs' => '��������� �� ���������',
      'System Language Management' => '���������� �� ��������� ���������',
      'Ticket limit:' => '����������� �� �����:',
      'Time till escalation' => '����� �� ���������',
      'Update auto response' => '���������� �� ������������� �������',
      'Update charset' => '���������� �� �������� �����',
      'Update group' => '���������� �� �����',
      'Update language' => '���������� �� ����',
      'Update queue' => '���������� �� ������',
      'Update response' => '���������� �� ���������',
      'Update salutation' => '���������� �� ���������',
      'Update signature' => '���������� �� ������',
      'Update state' => '���������� �� ���������',
      'Update system address' => '���������� �� ���������� �����',
      'Update user' => '���������� �� ����������',
      'With State' => '��� ���������',
      'You have to be in the admin group!' => '������ �� ��� ���� �� admin �������!',
      'You have to be in the stats group!' => '������ �� ��� ���� �� stat �������!',
      'You need a email address (e. g. customer@example.com) in From:!' => '������ �� ����� ����� ����� (�������� customer@example.com) � ���� ��:',
      'auto responses set' => '����� ����������� ��������',
      'store' => '����������',
      'tickets' => '������',
    );

    # $$STOP$$
    $Self->{Translation} = \%Hash;

}
# --
1;
