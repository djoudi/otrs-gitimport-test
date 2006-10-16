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
$VERSION = '$Revision: 1.47 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Oct  5 06:03:42 2006

    # possible charsets
    $Self->{Charset} = ['cp1251', 'Windows-1251', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateFormatShort} = '%D.%M.%Y';
    $Self->{DateInputFormat} = '%D.%M.%Y - %T';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => '��',
      'No' => '��',
      'yes' => '��',
      'no' => '��',
      'Off' => '���������',
      'off' => '���������',
      'On' => '��������',
      'on' => '��������',
      'top' => '��� ��������',
      'end' => '����',
      'Done' => '������.',
      'Cancel' => '�����',
      'Reset' => '�����������',
      'last' => '',
      'before' => '',
      'day' => '���',
      'days' => '���',
      'day(s)' => '',
      'hour' => '���',
      'hours' => '������',
      'hour(s)' => '',
      'minute' => '������',
      'minutes' => '������',
      'minute(s)' => '',
      'month' => '',
      'months' => '',
      'month(s)' => '',
      'week' => '',
      'week(s)' => '',
      'year' => '',
      'years' => '',
      'year(s)' => '',
      'second(s)' => '',
      'seconds' => '',
      'second' => '',
      'wrote' => '��������',
      'Message' => '���������',
      'Error' => '������',
      'Bug Report' => '����� �� ������',
      'Attention' => '��������',
      'Warning' => '��������������',
      'Module' => '�����',
      'Modulefile' => '����-�����',
      'Subfunction' => '����������',
      'Line' => '�����',
      'Example' => '������',
      'Examples' => '�������',
      'valid' => '',
      'invalid' => '���������',
      'invalid-temporarily' => '',
      ' 2 minutes' => ' 2 ������',
      ' 5 minutes' => ' 5 ������',
      ' 7 minutes' => ' 7 ������',
      '10 minutes' => '10 ������',
      '15 minutes' => '15 ������',
      'Mr.' => '',
      'Mrs.' => '',
      'Next' => '',
      'Back' => '�����',
      'Next...' => '',
      '...Back' => '',
      '-none-' => '',
      'none' => '����',
      'none!' => '����!',
      'none - answered' => '���� - ���������',
      'please do not edit!' => '����, �� ������������!',
      'AddLink' => '�������� �� ������',
      'Link' => '',
      'Linked' => '',
      'Link (Normal)' => '',
      'Link (Parent)' => '',
      'Link (Child)' => '',
      'Normal' => '',
      'Parent' => '',
      'Child' => '',
      'Hit' => '���������',
      'Hits' => '���������',
      'Text' => '�����',
      'Lite' => '����',
      'User' => '����������',
      'Username' => '������������� ���',
      'Language' => '����',
      'Languages' => '�����',
      'Password' => '������',
      'Salutation' => '���������',
      'Signature' => '������',
      'Customer' => '����������',
      'CustomerID' => '������������� ���������',
      'CustomerIDs' => '',
      'customer' => '����������',
      'agent' => '�����',
      'system' => '�������',
      'Customer Info' => '������������� �����',
      'go!' => '��!',
      'go' => '��',
      'All' => '������',
      'all' => '������',
      'Sorry' => '����������',
      'update!' => '����������!',
      'update' => '����������',
      'Update' => '',
      'submit!' => '���������!',
      'submit' => '���������',
      'Submit' => '',
      'change!' => '���������!',
      'Change' => '�������',
      'change' => '���������',
      'click here' => '��������� ���',
      'Comment' => '��������',
      'Valid' => '�������',
      'Invalid Option!' => '',
      'Invalid time!' => '',
      'Invalid date!' => '',
      'Name' => '���',
      'Group' => '�����',
      'Description' => '��������',
      'description' => '��������',
      'Theme' => '����',
      'Created' => '��������',
      'Created by' => '',
      'Changed' => '',
      'Changed by' => '',
      'Search' => '',
      'and' => '',
      'between' => '',
      'Fulltext Search' => '',
      'Data' => '',
      'Options' => '���������',
      'Title' => '',
      'Item' => '',
      'Delete' => '',
      'Edit' => '',
      'View' => '������',
      'Number' => '',
      'System' => '�������',
      'Contact' => '�������',
      'Contacts' => '',
      'Export' => '',
      'Up' => '',
      'Down' => '',
      'Add' => '',
      'Category' => '',
      'Viewer' => '',
      'New message' => '���� ���������',
      'New message!' => '���� ���������!',
      'Please answer this ticket(s) to get back to the normal queue view!' => '����, ���������� �� ���� �����(�) �� �� �� ������� � ��������� ������ �� ��������!',
      'You got new message!' => '��������� ���� ���������!',
      'You have %s new message(s)!' => '��� ����� %s ����/���� ���������/���������!',
      'You have %s reminder ticket(s)!' => '��� ����� %s �������/�������� �����/������!',
      'The recommended charset for your language is %s!' => '���������������� �������� ����� �� ������ ���� � %s',
      'Passwords doesn\'t match! Please try it again!' => '',
      'Password is already in use! Please use an other password!' => '',
      'Password is already used! Please use an other password!' => '',
      'You need to activate %s first to use it!' => '',
      'No suggestions' => '���� �������������',
      'Word' => '����',
      'Ignore' => '�������������',
      'replace with' => '������� �',
      'Welcome to OTRS' => '',
      'There is no account with that login name.' => '���� ���������� � ���� ���.',
      'Login failed! Your username or password was entered incorrectly.' => '��������� �����������! ������ ��� �/��� ������ �� �����������!',
      'Please contact your admin' => '����, �������� �� � ������ �������������',
      'Logout successful. Thank you for using OTRS!' => '������� � �������. ���������� ��, �� ����������� ���������.',
      'Invalid SessionID!' => '��������� SessionID!',
      'Feature not active!' => '��������� �� � �������',
      'License' => '������',
      'Take this Customer' => '',
      'Take this User' => '�������� ���� ����������',
      'possible' => '��������',
      'reject' => '���������',
      'reverse' => '',
      'Facility' => '��������������',
      'Timeover' => '����������� �� �������',
      'Pending till' => '� �������� ��',
      'Don\'t work with UserID 1 (System account)! Create new users!' => '�� �������� � UserID 1 (�������� ������)! �������� ���� �����������.',
      'Dispatching by email To: field.' => '������������ �� ���� To: �� �������.',
      'Dispatching by selected Queue.' => '������������� �� ������� ������.',
      'No entry found!' => '���� �������� ��������!',
      'Session has timed out. Please log in again.' => '����, ������������ �� ������. ���� ����� ���� � ���������.',
      'No Permission!' => '',
      'To: (%s) replaced with database email!' => '',
      'Cc: (%s) added database email!' => '',
      '(Click here to add)' => '',
      'Preview' => '',
      'Package not correctly deployed! You should reinstall the Package again!' => '',
      'Added User "%s"' => '',
      'Contract' => '',
      'Online Customer: %s' => '',
      'Online Agent: %s' => '',
      'Calendar' => '',
      'File' => '',
      'Filename' => '',
      'Type' => '���',
      'Size' => '',
      'Upload' => '',
      'Directory' => '',
      'Signed' => '',
      'Sign' => '',
      'Crypted' => '',
      'Crypt' => '',
      'Office' => '',
      'Phone' => '',
      'Fax' => '',
      'Mobile' => '',
      'Zip' => '',
      'City' => '',
      'Country' => '',
      'installed' => '',
      'uninstalled' => '',
      'printed at' => '',

      # Template: AAAMonth
      'Jan' => '���',
      'Feb' => '���',
      'Mar' => '���',
      'Apr' => '���',
      'May' => '���',
      'Jun' => '���',
      'Jul' => '���',
      'Aug' => '���',
      'Sep' => '���',
      'Oct' => '���',
      'Nov' => '���',
      'Dec' => '���',
      'January' => '',
      'February' => '',
      'March' => '',
      'April' => '',
      'June' => '',
      'July' => '',
      'August' => '',
      'September' => '',
      'October' => '',
      'November' => '',
      'December' => '',

      # Template: AAANavBar
      'Admin-Area' => '',
      'Agent-Area' => '',
      'Ticket-Area' => '',
      'Logout' => '�����',
      'Agent Preferences' => '',
      'Preferences' => '�������������',
      'Agent Mailbox' => '',
      'Stats' => '����������',
      'Stats-Area' => '',
      'Admin' => '',
      'A web calendar' => '',
      'WebMail' => '',
      'A web mail client' => '',
      'FileManager' => '',
      'A web file manager' => '',
      'Artefact' => '',
      'Incident' => '',
      'Advisory' => '',
      'WebWatcher' => '',
      'Customer Users' => '',
      'Customer Users <-> Groups' => '',
      'Users <-> Groups' => '',
      'Roles' => '',
      'Roles <-> Users' => '',
      'Roles <-> Groups' => '',
      'Salutations' => '',
      'Signatures' => '',
      'Email Addresses' => '',
      'Notifications' => '',
      'Category Tree' => '',
      'Admin Notification' => '',

      # Template: AAAPreferences
      'Preferences updated successfully!' => '��������������� �� �������� �������',
      'Mail Management' => '���������� �� ������',
      'Frontend' => '����-����������',
      'Other Options' => '����� ���������',
      'Change Password' => '',
      'New password' => '',
      'New password again' => '',
      'Select your QueueView refresh time.' => '�������� ������ ����� �� ���������� �� ������� �� ��������.',
      'Select your frontend language.' => '�������� ������ ����.',
      'Select your frontend Charset.' => '�������� ������ �������� �����.',
      'Select your frontend Theme.' => '�������� ������ ������������� ����',
      'Select your frontend QueueView.' => '�������� ���� �� ������������ ������������ �� ��������.',
      'Spelling Dictionary' => '����� �� �������� �� ���������',
      'Select your default spelling dictionary.' => '�������� ������ ������ �� �������� �� ����������',
      'Max. shown Tickets a page in Overview.' => '',
      'Can\'t update password, passwords doesn\'t match! Please try it again!' => '',
      'Can\'t update password, invalid characters!' => '',
      'Can\'t update password, need min. 8 characters!' => '',
      'Can\'t update password, need 2 lower and 2 upper characters!' => '',
      'Can\'t update password, need min. 1 digit!' => '',
      'Can\'t update password, need min. 2 characters!' => '',
      'Password is needed!' => '',

      # Template: AAAStats
      'Stat' => '',
      'Please fill out the required fields!' => '',
      'Please select a file!' => '',
      'Please select an object!' => '',
      'Please select a graph size!' => '',
      'Please select one element for the X-axis!' => '',
      'You have to select two or more attributes from the select field!' => '',
      'Please select only one element or turn of the button \'Fixed\' where the select field is marked!' => '',
      'If you use a checkbox you have to select some attributes of the select field!' => '',
      'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '',
      'The selected end time is before the start time!' => '',
      'You have to select one or more attributes from the select field!' => '',
      'The selected Date isn\'t valid!' => '',
      'Please select only one or two elements via the checkbox!' => '',
      'If you use a time scale element you can only select one element!' => '',
      'You have an error in your time selection!' => '',
      'Your reporting time interval is to small, please use a larger time scale!' => '',
      'The selected start time is before the allowed start time!' => '',
      'The selected end time is after the allowed end time!' => '',
      'The selected time period is larger than the allowed time period!' => '',
      'Common Specification' => '',
      'Xaxis' => '',
      'Value Series' => '',
      'Restrictions' => '',
      'graph-lines' => '',
      'graph-bars' => '',
      'graph-hbars' => '',
      'graph-points' => '',
      'graph-lines-points' => '',
      'graph-area' => '',
      'graph-pie' => '',
      'extended' => '',
      'Agent/Owner' => '',
      'Created by Agent/Owner' => '',
      'Created Priority' => '',
      'Created State' => '',
      'Create Time' => '',
      'CustomerUserLogin' => '',
      'Close Time' => '',

      # Template: AAATicket
      'Lock' => '�������',
      'Unlock' => '�������',
      'History' => '�������',
      'Zoom' => '��������',
      'Age' => '�������',
      'Bounce' => '��������',
      'Forward' => '����������',
      'From' => '��',
      'To' => '��',
      'Cc' => '����� ��',
      'Bcc' => '������ �����',
      'Subject' => '�������',
      'Move' => '�����������',
      'Queue' => '������',
      'Priority' => '���������',
      'State' => '������',
      'Compose' => '���������',
      'Pending' => '� ��������',
      'Owner' => '����������',
      'Owner Update' => '',
      'Responsible' => '',
      'Responsible Update' => '',
      'Sender' => '��������',
      'Article' => '������',
      'Ticket' => '�����',
      'Createtime' => '����� �� ���������',
      'plain' => '���������',
      'Email' => '�-����',
      'email' => '�-����',
      'Close' => '���������',
      'Action' => '��������',
      'Attachment' => '�������� ����',
      'Attachments' => '��������� �������',
      'This message was written in a character set other than your own.' => '���� ����� � �������� � �������� �������� �������� �� ����, ����� ����������.',
      'If it is not displayed correctly,' => '��� �� �� ����� ��������,',
      'This is a' => '���� �',
      'to open it in a new window.' => '�� �� �������� � ��� ��������',
      'This is a HTML email. Click here to show it.' => '���� � ���� � HTML ������. ��������� ���, �� �� �������� ��������',
      'Free Fields' => '',
      'Merge' => '',
      'closed successful' => '������� ��������',
      'closed unsuccessful' => '��������� ��������',
      'new' => '���',
      'open' => '�������',
      'closed' => '',
      'removed' => '���������',
      'pending reminder' => '������ ���������',
      'pending auto close+' => '������ ����������� ���������+',
      'pending auto close-' => '������ ����������� ���������-',
      'email-external' => '������ �-����',
      'email-internal' => '�������� �-����',
      'note-external' => '������ �������',
      'note-internal' => '�������� �������',
      'note-report' => '������� �����',
      'phone' => '�������',
      'sms' => '',
      'webrequest' => '������ �� web',
      'lock' => '�������',
      'unlock' => '�������',
      'very low' => '����� �����',
      'low' => '�����',
      'normal' => '��������',
      'high' => '�����',
      'very high' => '����� �����',
      '1 very low' => '1 ����� �����',
      '2 low' => '2 �����',
      '3 normal' => '3 ��������',
      '4 high' => '4 �����',
      '5 very high' => '5 ����� �����',
      'Ticket "%s" created!' => '',
      'Ticket Number' => '',
      'Ticket Object' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'Don\'t show closed Tickets' => '',
      'Show closed Tickets' => '',
      'Email-Ticket' => '',
      'Create new Email Ticket' => '',
      'Phone-Ticket' => '',
      'Create new Phone Ticket' => '',
      'Search Tickets' => '',
      'Edit Customer Users' => '',
      'Bulk-Action' => '',
      'Bulk Actions on Tickets' => '',
      'Send Email and create a new Ticket' => '',
      'Overview of all open Tickets' => '',
      'Locked Tickets' => '',
      'Lock it to work on it!' => '',
      'Unlock to give it back to the queue!' => '',
      'Shows the ticket history!' => '',
      'Print this ticket!' => '',
      'Change the ticket priority!' => '',
      'Change the ticket free fields!' => '',
      'Link this ticket to an other objects!' => '',
      'Change the ticket owner!' => '',
      'Change the ticket customer!' => '',
      'Add a note to this ticket!' => '',
      'Merge this ticket!' => '',
      'Set this ticket to pending!' => '',
      'Close this ticket!' => '',
      'Look into a ticket!' => '',
      'Delete this ticket!' => '',
      'Mark as Spam!' => '',
      'My Queues' => '',
      'Shown Tickets' => '',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '',
      'New ticket notification' => '��������� �� ��� �����',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Follow up notification' => '�������� �� ��������� �� ������� �� ���������',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => '��������� �� ��������, ��� �������� ������� ������ �� ������� �� �������� � �� ��� ���������� �� ������',
      'Ticket lock timeout notification' => '�������� �� ����������������� �� ���������� �� �������',
      'Send me a notification if a ticket is unlocked by the system.' => '��������� �� ��������, ��� ������� � �������� �� ���������.',
      'Move notification' => '�������� �� �����������',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '',
      'Custom Queue' => '������������� ������',
      'QueueView refresh time' => '����� �� ���������� �������� �� ��������',
      'Screen after new ticket' => '',
      'Select your screen after creating a new ticket.' => '',
      'Closed Tickets' => '��������� ������',
      'Show closed tickets.' => '�������� ����������� ������',
      'Max. shown Tickets a page in QueueView.' => '',
      'CompanyTickets' => '',
      'MyTickets' => '',
      'New Ticket' => '',
      'Create new Ticket' => '',
      'Customer called' => '',
      'phone call' => '',
      'Responses' => '��������',
      'Responses <-> Queue' => '',
      'Auto Responses' => '',
      'Auto Responses <-> Queue' => '',
      'Attachments <-> Responses' => '',
      'History::Move' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
      'History::NewTicket' => 'New Ticket [%s] created (Q=%s;P=%s;S=%s).',
      'History::FollowUp' => 'FollowUp for [%s]. %s',
      'History::SendAutoReject' => 'AutoReject sent to "%s".',
      'History::SendAutoReply' => 'AutoReply sent to "%s".',
      'History::SendAutoFollowUp' => 'AutoFollowUp sent to "%s".',
      'History::Forward' => 'Forwarded to "%s".',
      'History::Bounce' => 'Bounced to "%s".',
      'History::SendAnswer' => 'Email sent to "%s".',
      'History::SendAgentNotification' => '"%s"-notification sent to "%s".',
      'History::SendCustomerNotification' => 'Notification sent to "%s".',
      'History::EmailAgent' => 'Email sent to customer.',
      'History::EmailCustomer' => 'Added email. %s',
      'History::PhoneCallAgent' => 'Agent called customer.',
      'History::PhoneCallCustomer' => 'Customer called us.',
      'History::AddNote' => 'Added note (%s)',
      'History::Lock' => 'Locked ticket.',
      'History::Unlock' => 'Unlocked ticket.',
      'History::TimeAccounting' => '%s time unit(s) accounted. Now total %s time unit(s).',
      'History::Remove' => '%s',
      'History::CustomerUpdate' => 'Updated: %s',
      'History::PriorityUpdate' => 'Changed priority from "%s" (%s) to "%s" (%s).',
      'History::OwnerUpdate' => 'New owner is "%s" (ID=%s).',
      'History::LoopProtection' => 'Loop-Protection! No auto-response sent to "%s".',
      'History::Misc' => '%s',
      'History::SetPendingTime' => 'Updated: %s',
      'History::StateUpdate' => 'Old: "%s" New: "%s"',
      'History::TicketFreeTextUpdate' => 'Updated: %s=%s;%s=%s;',
      'History::WebRequestCustomer' => 'Customer request via web.',
      'History::TicketLinkAdd' => 'Added link to ticket "%s".',
      'History::TicketLinkDelete' => 'Deleted link to ticket "%s".',

      # Template: AAAWeekDay
      'Sun' => '���',
      'Mon' => '���',
      'Tue' => '���',
      'Wed' => '���',
      'Thu' => '���',
      'Fri' => '���',
      'Sat' => '���',

      # Template: AdminAttachmentForm
      'Attachment Management' => '���������� �� �������� ����',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => '���������� �� ������������� �������',
      'Response' => '�������',
      'Auto Response From' => '����������� ������� ��',
      'Note' => '�������',
      'Useable options' => '����������� �����',
      'to get the first 20 character of the subject' => '�� �� �������� ������� 20 ������� �� ���� "�������"',
      'to get the first 5 lines of the email' => '�� �� �������� ������� 5 ���� �� �������',
      'to get the from line of the email' => '�� �� �������� ��� �� �������',
      'to get the realname of the sender (if given)' => '�� �� �������� ���������� ��� �� ��������� (��� � ���������)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => '�����������, ����� ���������� � ���������. �����.',
      'This window must be called from compose window' => '���� �������� ������ �� ���� ������� �� ��������� �� ���������',
      'Customer User Management' => '���������� �� ������-�����������',
      'Search for' => '',
      'Result' => '',
      'Select Source (for add)' => '',
      'Source' => '',
      'This values are read only.' => '',
      'This values are required.' => '',
      'Customer user will be needed to have a customer history and to login via customer panel.' => '',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => '',
      'Change %s settings' => '������� �� %s ���������',
      'Select the user:group permissions.' => '',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '',
      'Permission' => '����������',
      'ro' => '',
      'Read only access to the ticket in this group/queue.' => '',
      'rw' => '',
      'Full read and write access to the tickets in this group/queue.' => '',

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => '����������� � ��������� ��',
      'Recipents' => '����������',
      'Body' => '���� �� �������',
      'send' => '�������',

      # Template: AdminGenericAgent
      'GenericAgent' => '',
      'Job-List' => '',
      'Last run' => '',
      'Run Now!' => '',
      'x' => '',
      'Save Job as?' => '',
      'Is Job Valid?' => '',
      'Is Job Valid' => '',
      'Schedule' => '',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '',
      '(e. g. 10*5155 or 105658*)' => '',
      '(e. g. 234321)' => '',
      'Customer User Login' => '',
      '(e. g. U5150)' => '',
      'Agent' => '',
      'Ticket Lock' => '',
      'TicketFreeFields' => '',
      'Times' => '',
      'No time settings.' => '',
      'Ticket created' => '',
      'Ticket created between' => '',
      'New Priority' => '',
      'New Queue' => '�������� ������',
      'New State' => '',
      'New Agent' => '',
      'New Owner' => '',
      'New Customer' => '',
      'New Ticket Lock' => '',
      'CustomerUser' => '������-����������',
      'New TicketFreeFields' => '',
      'Add Note' => '�������� �� �������',
      'CMD' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '',
      'Delete tickets' => '',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => '',
      'Send Notification' => '',
      'Param 1' => '',
      'Param 2' => '',
      'Param 3' => '',
      'Param 4' => '',
      'Param 5' => '',
      'Param 6' => '',
      'Send no notifications' => '',
      'Yes means, send no agent and customer notifications on changes.' => '',
      'No means, send agent and customer notifications on changes.' => '',
      'Save' => '',
      '%s Tickets affected! Do you really want to use this job?' => '',

      # Template: AdminGroupForm
      'Group Management' => '���������� �� �����',
      'The admin group is to get in the admin area and the stats group to get stats area.' => '������� admin �������� ������������������ ����, � stat ������� �������� ������ �� ����������.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => '��������� ���� ����� �� �� ����������� ������������ �� ���������� ����� �� ������ (�������� ����� �� ����� "��������", ����� "���������" � �.�.)',
      'It\'s useful for ASP solutions.' => '���� � ��������� �� ������� � ASP.',

      # Template: AdminLog
      'System Log' => '�������� ������',
      'Time' => '',

      # Template: AdminNavigationBar
      'Users' => '',
      'Groups' => '�����',
      'Misc' => '�������',

      # Template: AdminNotificationForm
      'Notification Management' => '',
      'Notification' => '',
      'Notifications are sent to an agent or a customer.' => '',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminPackageManager
      'Package Manager' => '',
      'Uninstall' => '',
      'Version' => '',
      'Do you really want to uninstall this package?' => '',
      'Reinstall' => '',
      'Do you really want to reinstall this package (all manual changes get lost)?' => '',
      'Install' => '',
      'Package' => '',
      'Online Repository' => '',
      'Vendor' => '',
      'Upgrade' => '',
      'Local Repository' => '',
      'Status' => '������',
      'Package not correctly deployed, you need to deploy it again!' => '',
      'Overview' => '',
      'Download' => '',
      'Rebuild' => '',
      'Download file from package!' => '',
      'Required' => '',
      'PrimaryKey' => '',
      'AutoIncrement' => '',
      'SQL' => '',
      'Diff' => '',

      # Template: AdminPerformanceLog
      'Performance Log' => '',
      'Logfile too large!' => '',
      'Logfile too large, you need to reset it!' => '',
      'Range' => '',
      'Interface' => '',
      'Requests' => '',
      'Min Response' => '',
      'Max Response' => '',
      'Average Response' => '',

      # Template: AdminPGPForm
      'PGP Management' => '',
      'Identifier' => '',
      'Bit' => '',
      'Key' => '����',
      'Fingerprint' => '',
      'Expires' => '',
      'In this way you can directly edit the keyring configured in SysConfig.' => '',

      # Template: AdminPOP3
      'POP3 Account Management' => '���������� �� POP3 �������',
      'Host' => '����',
      'List' => '',
      'Trusted' => '�������',
      'Dispatching' => '�������������',
      'All incoming emails with one account will be dispatched in the selected queue!' => '������ ������� ����� � ���� ������ �� �� ����������� � ��������� ������!',
      'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => '',
      'Filtername' => '',
      'Match' => '',
      'Header' => '',
      'Value' => '��������',
      'Set' => '',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => '',

      # Template: AdminQueueForm
      'Queue Management' => '���������� �� ������',
      'Sub-Queue of' => '���-������ ��',
      'Unlock timeout' => '����� �� ����������',
      '0 = no unlock' => '0 = ��� ����������',
      'Escalation time' => '����� �� ��������� (����������� �� �����������)',
      '0 = no escalation' => '0 = ��� ���������',
      'Follow up Option' => '��������� �� ����������� ������������',
      'Ticket lock after a follow up' => '���������� �� ������� ���� ����������� �����������',
      'Systemaddress' => '�������� �����',
      'Customer Move Notify' => '����������� ��� ������������� �� �����������',
      'Customer State Notify' => '����������� �� ����������� �� �����������',
      'Customer Owner Notify' => '����������� �� �����������',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '��� ������� ������� ������� � ���(��� ��) �� ������� ������� � ������������ �����, ������� �� �� ������� �����������. ���� ������� �� ����� ����� �� ������ ����� ������',
      'If a ticket will not be answered in this time, just only this ticket will be shown.' => '��� ������� �� ������ ������� � ������������ �����, �� �� ������ ���� ���� �����',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '��� ������� � �������� � ����������� ������� ������ �� ������������, ������� �� ���� �������� �� ������ ����������',
      'Will be the sender address of this queue for email answers.' => '�� ���� ������� �� ������� �� ���� ������ ��� ����� ����������',
      'The salutation for email answers.' => '����������� �� ���������� �� �����',
      'The signature for email answers.' => '�������� �� ���������� �� �����',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS ������� �������� �� �-���� �� �������, ��� ������� � ���������.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS ������� �������� �� �-���� �� �������, ��� �������� �� ������� � ��������.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS ������� �������� �� �-���� �� �������, ��� ����������� �� ������ � ��������.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => '',

      # Template: AdminQueueResponsesForm
      'Answer' => '�������',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => '',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => '���������� �� ���������',
      'A response is default text to write faster answer (with default text) to customers.' => '��������� � ����� �� ������������, �������� �������������, � ��� ��-���� ������� ��� �������',
      'Don\'t forget to add a new response a queue!' => '�� �� ��������� �� �������� ������ ������� ��� ������ ������!',
      'Next state' => '�������� ���������',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'The current ticket state is' => '',
      'Your email address is new' => '',

      # Template: AdminRoleForm
      'Role Management' => '',
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => '',
      'move_into' => '',
      'Permissions to move tickets into this group/queue.' => '',
      'create' => '���������',
      'Permissions to create tickets in this group/queue.' => '',
      'owner' => '',
      'Permissions to change the ticket owner in this group/queue.' => '',
      'priority' => '',
      'Permissions to change the ticket priority in this group/queue.' => '',

      # Template: AdminRoleGroupForm
      'Role' => '',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => '',
      'Active' => '',
      'Select the role:user relations.' => '',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => '���������� �� �����������',
      'customer realname' => '��� �� �����������',
      'All Agent variables.' => '',
      'for agent firstname' => '�� ����� ���',
      'for agent lastname' => '�� ����� �������',
      'for agent user id' => '�� ����� ������������� ID',
      'for agent login' => '�� ����� ��������� ����',

      # Template: AdminSelectBoxForm
      'Select Box' => '�������� �����',
      'Limit' => '�����',
      'Select Box Result' => '����� �� ����� �� ���������',

      # Template: AdminSession
      'Session Management' => '���������� �� ������',
      'Sessions' => '',
      'Uniq' => '',
      'kill all sessions' => '��������� �� ������ ������ �����',
      'Session' => '',
      'Content' => '',
      'kill session' => '��������� �� �������� �����',

      # Template: AdminSignatureForm
      'Signature Management' => '���������� �� ��������',

      # Template: AdminSMIMEForm
      'S/MIME Management' => '',
      'Add Certificate' => '',
      'Add Private Key' => '',
      'Secret' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',

      # Template: AdminStateForm
      'System State Management' => '���������� �� �������� ���������',
      'State Type' => '��� ���������',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => '',
      'See also' => '',

      # Template: AdminSysConfig
      'SysConfig' => '',
      'Group selection' => '',
      'Show' => '',
      'Download Settings' => '',
      'Download all system config changes.' => '',
      'Load Settings' => '',
      'Subgroup' => '',
      'Elements' => '',

      # Template: AdminSysConfigEdit
      'Config Options' => '',
      'Default' => '',
      'New' => '����',
      'New Group' => '',
      'Group Ro' => '',
      'New Group Ro' => '',
      'NavBarName' => '',
      'NavBar' => '',
      'Image' => '',
      'Prio' => '',
      'Block' => '',
      'AccessKey' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => '���������� �� ��������� ����� �����',
      'Realname' => '�������� ���',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => '������ ������� ������ �� ���� ����� (��:) �� �� ����������� � ��������� ������.',

      # Template: AdminUserForm
      'User Management' => '���������� �� �����������',
      'Login as' => '',
      'Firstname' => '���',
      'Lastname' => '�������',
      'User will be needed to handle tickets.' => '�� � ��������� ����������, �� �� ���� ������� �� �� ��������',
      'Don\'t forget to add a new user to groups and/or roles!' => '',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => '',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => '',
      'Return to the compose screen' => '������� �� ��� ������ �� ���������',
      'Discard all changes and return to the compose screen' => '��������� �� �� ������ ������� � �� ������� ��� ������ �� ���������',

      # Template: AgentCalendarSmall

      # Template: AgentCalendarSmallIcon

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => '����������',

      # Template: AgentLinkObject
      'Link Object' => '',
      'Select' => '',
      'Results' => '��������',
      'Total hits' => '��� ���� ���������',
      'Page' => '',
      'Detail' => '',

      # Template: AgentLookup
      'Lookup' => '',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => '�������� �� ����������',
      'spelling error(s)' => '���������� ������(������)',
      'or' => '���',
      'Apply these changes' => '������� �� ��� ���� �������',

      # Template: AgentStatsDelete
      'Do you really want to delete this Object?' => '',

      # Template: AgentStatsEditRestrictions
      'Select the restrictions to characterise the stat' => '',
      'Fixed' => '',
      'Please select only one Element or turn of the button \'Fixed\'.' => '',
      'Absolut Period' => '',
      'Between' => '',
      'Relative Period' => '',
      'The last' => '',
      'Finish' => '',
      'Here you can make restrictions to your stat.' => '',
      'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributs of the corresponding element.' => '',

      # Template: AgentStatsEditSpecification
      'Insert of the common specifications' => '',
      'Permissions' => '',
      'Format' => '',
      'Graphsize' => '',
      'Sum rows' => '',
      'Sum columns' => '',
      'Cache' => '',
      'Required Field' => '',
      'Selection needed' => '',
      'Explanation' => '',
      'In this form you can select the basic specifications.' => '',
      'Attribute' => '',
      'Title of the stat.' => '',
      'Here you can insert a description of the stat.' => '',
      'Dynamic-Object' => '',
      'Here you can select the dynamic object you want to use.' => '',
      '(Note: It depends on your installation how many dynamic objects you can use)' => '',
      'Static-File' => '',
      'For very complex stats it is possible to include a hardcoded file.' => '',
      'If a new hardcoded file is available this attribute will be shown and you can select one.' => '',
      'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '',
      'Multiple selection of the output format.' => '',
      'If you use a graph as output format you have to select at least one graph size.' => '',
      'If you need the sum of every row select yes' => '',
      'If you need the sum of every column select yes.' => '',
      'Most of the stats can be cached. This will speed up the presentation of this stat.' => '',
      '(Note: Useful for big databases and low performance server)' => '',
      'With an invalid stat it isn\'t feasible to generate a stat.' => '',
      'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '',

      # Template: AgentStatsEditValueSeries
      'Select the elements for the value series' => '',
      'Scale' => '',
      'minimal' => '',
      'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => '',
      'Here you can the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

      # Template: AgentStatsEditXaxis
      'Select the element, which will be used at the X-axis' => '',
      'maximal period' => '',
      'minimal scale' => '',
      'Here you can define the x-axis. You can select one element via the radio button. Than you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

      # Template: AgentStatsImport
      'Import' => '',
      'File is not a Stats config' => '',
      'No File selected' => '',

      # Template: AgentStatsOverview
      'Object' => '',

      # Template: AgentStatsPrint
      'Print' => '�����������',
      'No Element selected.' => '',

      # Template: AgentStatsView
      'Export Config' => '',
      'Informations about the Stat' => '',
      'Exchange Axis' => '',
      'Configurable params of static stat' => '',
      'No element selected.' => '',
      'maximal period form' => '',
      'to' => '',
      'Start' => '',
      'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => '����������� ������ �� ��� ��: �.�. ��������!',
      'You need a email address (e. g. customer@example.com) in To:!' => '������ �� ��� ������� ����� � ������ ��: (�������� support@hebros.bg)!',
      'Bounce ticket' => '������� �����',
      'Bounce to' => '����� ��',
      'Next ticket state' => '�������� ��������� �� �������',
      'Inform sender' => '�� �� ��������� ����������',
      'Send mail!' => '��������� �����!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => '����������� ������ �� ��� ����� � ���� "�������"!',
      'Ticket Bulk Action' => '',
      'Spell Check' => '�������� �� ���������',
      'Note type' => '��������� � �� ���',
      'Unlock Tickets' => '',

      # Template: AgentTicketClose
      'A message should have a body!' => '',
      'You need to account time!' => '��� �� �������� �� ����� �� �������',
      'Close ticket' => '��������� �������',
      'Ticket locked!' => '������� � ��������!',
      'Ticket unlock!' => '������� � ��������!',
      'Previous Owner' => '',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',
      'Attach' => '�������� ����',
      'Pending date' => '� �������� - ����',
      'Time units' => '����� ������� �� �������',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => '����������� ������ �� ���� ��������� �� ������!',
      'Compose answer for ticket' => '��������� �� ������� �� ���� �����',
      'Pending Date' => '� ��������-����',
      'for pending* states' => '�� ��������� � ��������* ',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => '������� �� ������������ �� ������',
      'Set customer user and customer id of a ticket' => '������� ���������� � ������������� ������������� �� ������',
      'Customer User' => '������-����������',
      'Search Customer' => '������� �� ����������',
      'Customer Data' => '����� �� �����������',
      'Customer history' => '������� �� ������������',
      'All customer tickets.' => '',

      # Template: AgentTicketCustomerMessage
      'Follow up' => '������ �� �������',

      # Template: AgentTicketEmail
      'Compose Email' => '',
      'new ticket' => '��� �����',
      'Refresh' => '',
      'Clear To' => '',
      'All Agents' => '',

      # Template: AgentTicketForward
      'Article type' => '������ ���',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => '��������� ������ �� ������',

      # Template: AgentTicketHistory
      'History of' => '������� ��',

      # Template: AgentTicketLocked

      # Template: AgentTicketMailbox
      'Mailbox' => '�������� �����',
      'Tickets' => '������',
      'of' => '��',
      'Filter' => '',
      'All messages' => '������ ���������',
      'New messages' => '���� ���������',
      'Pending messages' => '��������� � ��������',
      'Reminder messages' => '��������� ���������',
      'Reminder' => '���������',
      'Sort by' => '��������� ��',
      'Order' => '���',
      'up' => '������',
      'down' => '������',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => '',
      'Ticket Merge' => '',
      'Merge to' => '',

      # Template: AgentTicketMove
      'Move Ticket' => '����������� �� ������',

      # Template: AgentTicketNote
      'Add note to ticket' => '�������� �� ������� ��� ������',

      # Template: AgentTicketOwner
      'Change owner of ticket' => '������� ������������ �� ������',

      # Template: AgentTicketPending
      'Set Pending' => '� �������� - ��������',

      # Template: AgentTicketPhone
      'Phone call' => '��������� ��������',
      'Clear From' => '��������� �������',
      'Create' => '',

      # Template: AgentTicketPhoneOutbound

      # Template: AgentTicketPlain
      'Plain' => '���������',
      'TicketID' => '������������� �� �����',
      'ArticleID' => '������������� �� ������',

      # Template: AgentTicketPrint
      'Ticket-Info' => '',
      'Accounted time' => '�������� �����',
      'Escalation in' => '���������� �� ���������� �',
      'Linked-Object' => '',
      'Parent-Object' => '',
      'Child-Object' => '',
      'by' => '��',

      # Template: AgentTicketPriority
      'Change priority of ticket' => '������� �� ���������� �� ������',

      # Template: AgentTicketQueue
      'Tickets shown' => '�������� ������',
      'Tickets available' => '������� ������',
      'All tickets' => '������ ������',
      'Queues' => '������',
      'Ticket escalation!' => '��������� (����������� �� ����������) �� ������!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => '������ �������� �����',
      'Compose Follow up' => '��������� ������������ �� �������',
      'Compose Answer' => '��������� �� �������',
      'Contact customer' => '������� � �������',
      'Change queue' => '������� �� ��������',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketResponsible
      'Change responsible of ticket' => '',

      # Template: AgentTicketSearch
      'Ticket Search' => '������� �� �����',
      'Profile' => '',
      'Search-Template' => '',
      'TicketFreeText' => '',
      'Created in Queue' => '',
      'Result Form' => '',
      'Save Search-Profile as Template?' => '',
      'Yes, save it with name' => '',

      # Template: AgentTicketSearchResult
      'Search Result' => '',
      'Change search options' => '',

      # Template: AgentTicketSearchResultPrint

      # Template: AgentTicketSearchResultShort
      'sort upward' => '��������� ���������',
      'U' => '',
      'sort downward' => '��������� ���������',
      'D' => '',

      # Template: AgentTicketStatusView
      'Ticket Status View' => '',
      'Open Tickets' => '',

      # Template: AgentTicketZoom
      'Locked' => '',
      'Split' => '����������',

      # Template: AgentWindowTab

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => '������������',

      # Template: CustomerFooter
      'Powered by' => '� ������� ��',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin
      'Login' => '����',
      'Lost your password?' => '��������� ������',
      'Request new password' => '����� �� ���� ������',
      'Create Account' => '��������� �� ������',

      # Template: CustomerNavigationBar
      'Welcome %s' => '������ %s',

      # Template: CustomerPreferencesForm

      # Template: CustomerStatusView

      # Template: CustomerTicketMessage

      # Template: CustomerTicketSearch

      # Template: CustomerTicketSearchResultCSV

      # Template: CustomerTicketSearchResultPrint

      # Template: CustomerTicketSearchResultShort

      # Template: CustomerTicketZoom

      # Template: CustomerWarning

      # Template: Error
      'Click here to report a bug!' => '��������� ���, �� �� ��������� ����� �� ��������!',

      # Template: Footer
      'Top of Page' => '������ �� ����������',

      # Template: FooterSmall

      # Template: Header
      'Home' => '������',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Web ����������',
      'accept license' => '�������� �������',
      'don\'t accept license' => '�� �������� �������',
      'Admin-User' => '�������������',
      'Admin-Password' => '',
      'your MySQL DB should have a root password! Default is empty!' => '������ MYSQL ���� ����� ������ �� ��� ������ �� root �����������. �� ������������ � ������!',
      'Database-User' => '',
      'default \'hot\'' => '�� ������������',
      'DB connect host' => '',
      'Database' => '',
      'false' => '',
      'SystemID' => '�������� ID',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(�������������� �� ���������. ����� ����� �� ����� � ����� http ����� ������� � ���� �����)',
      'System FQDN' => '�������� FQDN',
      '(Full qualified domain name of your system)' => '(����� ������������� ��� (FQDN) �� ���������)',
      'AdminEmail' => 'Admin �-����',
      '(Email of the system admin)' => '(����� �� ���������� �������������)',
      'Organization' => '�����������',
      'Log' => '',
      'LogModule' => '�������� �����',
      '(Used log backend)' => '(��������� �������� �����)',
      'Logfile' => '�������� ����',
      '(Logfile just needed for File-LogModule!)' => '(���������� ���� � ��������� ���� �� File-LogModule)',
      'Webfrontend' => 'Web-����',
      'Default Charset' => '�������� ����� �� ������������',
      'Use utf-8 it your database supports it!' => '',
      'Default Language' => '���� �� ������������',
      '(Used default language)' => '(�������� ���� �� ������������)',
      'CheckMXRecord' => 'CheckMXRecord (�������� MX �����)',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(��������� MX �������� �� ������ �� �������-��������. �� ����������� CheckMXRecord, ��� ������ OTRS ������ � �� ����������� �����! ',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '�� �� ���� �� ���������� OTRS, ��� ������ �� ��������, ���� ����� ���������� root � �������� ����� (Terminal/Shell) �������� �������',
      'Restart your webserver' => '������� �� web ��������',
      'After doing so your OTRS is up and running.' => '���� ������������ �� ����, ������ OTRS � ������� ��������������.',
      'Start page' => '������� ��������',
      'Have a lot of fun!' => '������� ������!',
      'Your OTRS Team' => '������ OTRS ����',

      # Template: Login
      'Welcome to %s' => '����� ����� � %s',

      # Template: Motd

      # Template: NoPermission
      'No Permission' => '������ ����������',

      # Template: Notify
      'Important' => '',

      # Template: PrintFooter
      'URL' => '�����',

      # Template: PrintHeader
      'printed by' => '���������� ��',

      # Template: Redirect

      # Template: Test
      'OTRS Test Page' => '������� �������� �� OTRS',
      'Counter' => '',

      # Template: Warning
      # Misc
      'OTRS DB connect host' => '���� ������� ��� OTRS ���� �����',
      'Create Database' => '��������� �� ���� �����',
      ' (work units)' => ' (������� �������)',
      'DB Host' => '���� �� ������ �����',
      'Ticket Number Generator' => '��������� �� ������ �� ������',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(������������� �� ������. ��������: \'Ticket#\', \'Call#\' or \'MyTicket#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Symptom' => '',
      'Site' => '�����',
      'Customer history search (e. g. "ID342425").' => '������� � ��������� �� ������� (�������� "ID342425").',
      'Ticket Hook' => '���������� �� �������',
      'Close!' => '���������!',
      'Don\'t forget to add a new user to groups!' => '�� ���������� �� �������� ������ ���������� � ������� �����!',
      'OTRS DB Name' => '��� �������� ��� OTRS ���� �����',
      'System Settings' => '�������� ���������',
      'Finished' => '����������',
      'Queue ID' => '',
      'A article should have a title!' => '',
      'System History' => '',
      'Modules' => '',
      'Keyword' => '',
      'Close type' => '��� ���������',
      'DB Admin User' => '���������� �� ������ �����',
      'Change user <-> group settings' => '������� �� ���������� <-> ��������� �� �����',
      'Name is required!' => '',
      'Problem' => '',
      'DB Type' => '��� �� ������ �����',
      'next step' => '�������� ������',
      'Termin1' => '',
      'Customer history search' => '������� � ��������� �� �������',
      'Solution' => '',
      'Admin-Email' => '����� �� Admin',
      'QueueView' => '������� �� ��������',
      'Create new database' => '��������� �� ���� ���� �����',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => '������� �� � ����� "<OTRS_TICKET>" � ��������� ��� "<OTRS_BOUNCE_TO>". �������� �� � ���� ����� �� ������ ����������',
      'modified' => '',
      'Delete old database' => '��������� �� ����� ���� �����',
      'Keywords' => '',
      'Note Text' => '����� �� ���������',
      'No * possible!' => '�� � �������� ���������� �� ������ *!',
      'OTRS DB User' => '���������� �� OTRS ���� �����',
      'Options ' => '',
      'PhoneView' => '������� �� ����������',
      'Verion' => '',
      'Message for new Owner' => '��������� �� ��� ����������',
      'OTRS DB Password' => '������ �� OTRS ���� �����',
      'Last update' => '',
      'DB Admin Password' => '������ �� �������������� �� ������',
      'Drop Database' => '�������� ������ �����',
      'Pending type' => '� �������� - ���',
      'Comment (internal)' => '',
      '(Used ticket number format)' => '(��������� ������ �� ������ �� �������)',
      'Fulltext' => '',
      'Modified' => '',
      'Watched Tickets' => '',
      'Watched' => '',
      'Subscribe' => '',
      'Unsubscribe' => '',
    };
    # $$STOP$$
}

1;
