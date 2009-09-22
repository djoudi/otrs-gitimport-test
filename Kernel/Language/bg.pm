# --
# Kernel/Language/bg.pm - provides bg language translation
# Copyright (C) 2004 Vladimir Gerdjikov <gerdjikov at gerdjikovs.net>
# Copyright (C) 2007 Alex Kantchev <ak at otrs.org>
# --
# $Id: bg.pm,v 1.94.2.1 2009-09-22 13:04:56 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::bg;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.94.2.1 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sat Jun 27 13:54:50 2009

    # possible charsets
    $Self->{Charset} = ['cp1251', 'Windows-1251', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%A %D %B %T %Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y - %T';
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
        'last' => '����������',
        'before' => '�����',
        'day' => '���',
        'days' => '���',
        'day(s)' => '���/���',
        'hour' => '���',
        'hours' => '������',
        'hour(s)' => '���(���)',
        'minute' => '������',
        'minutes' => '������',
        'minute(s)' => '������(�)',
        'month' => '�����',
        'months' => '������',
        'month(s)' => '�����(�)',
        'week' => '�������',
        'week(s)' => '�������(�)',
        'year' => '������',
        'years' => '������',
        'year(s)' => '������(�)',
        'second(s)' => '�������(�)',
        'seconds' => '�������',
        'second' => '�������',
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
        'Setting' => '',
        'Settings' => '',
        'Example' => '������',
        'Examples' => '�������',
        'valid' => '�������',
        'invalid' => '���������',
        '* invalid' => '',
        'invalid-temporarily' => '�������� ���������',
        ' 2 minutes' => ' 2 ������',
        ' 5 minutes' => ' 5 ������',
        ' 7 minutes' => ' 7 ������',
        '10 minutes' => '10 ������',
        '15 minutes' => '15 ������',
        'Mr.' => '�-�.',
        'Mrs.' => '�-��',
        'Next' => '������',
        'Back' => '�����',
        'Next...' => '������...',
        '...Back' => '...�����',
        '-none-' => '-����-',
        'none' => '����',
        'none!' => '����!',
        'none - answered' => '���� - ���������',
        'please do not edit!' => '����, �� ������������!',
        'AddLink' => '�������� �� ������',
        'Link' => '������',
        'Unlink' => '',
        'Linked' => '�������',
        'Link (Normal)' => '������ (��������)',
        'Link (Parent)' => '������ (�������)',
        'Link (Child)' => '������ (����)',
        'Normal' => '��������',
        'Parent' => '�������',
        'Child' => '����',
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
        'CustomerIDs' => '�������������� ����������',
        'customer' => '����������',
        'agent' => '�����',
        'system' => '�������',
        'Customer Info' => '������������� �����',
        'Customer Company' => '��������',
        'Company' => '��������',
        'go!' => '��!',
        'go' => '��',
        'All' => '������',
        'all' => '������',
        'Sorry' => '����������',
        'update!' => '����������!',
        'update' => '����������',
        'Update' => '����������',
        'Updated!' => '',
        'submit!' => '���������!',
        'submit' => '���������',
        'Submit' => '���������',
        'change!' => '���������!',
        'Change' => '�������',
        'change' => '���������',
        'click here' => '��������� ���',
        'Comment' => '��������',
        'Valid' => '�������',
        'Invalid Option!' => '��������� �����!',
        'Invalid time!' => '��������� �����!',
        'Invalid date!' => '��������� ����!',
        'Name' => '���',
        'Group' => '�����',
        'Description' => '��������',
        'description' => '��������',
        'Theme' => '����',
        'Created' => '��������',
        'Created by' => '�������� ��',
        'Changed' => '��������',
        'Changed by' => '�������� ��',
        'Search' => '�������',
        'and' => '�',
        'between' => '�����',
        'Fulltext Search' => '������������� �������',
        'Data' => '�����',
        'Options' => '���������',
        'Title' => '��������',
        'Item' => '�������',
        'Delete' => '���������',
        'Edit' => '��������',
        'View' => '������',
        'Number' => '�����',
        'System' => '�������',
        'Contact' => '�������',
        'Contacts' => '��������',
        'Export' => '������������',
        'Up' => '������',
        'Down' => '������',
        'Add' => '��������',
        'Added!' => '',
        'Category' => '���������',
        'Viewer' => 'Viewer',
        'Expand' => '',
        'New message' => '���� ���������',
        'New message!' => '���� ���������!',
        'Please answer this ticket(s) to get back to the normal queue view!' => '����, ���������� �� ���� �����(�) �� �� �� ������� � ��������� ������ �� ��������!',
        'You got new message!' => '��������� ���� ���������!',
        'You have %s new message(s)!' => '��� ����� %s ����/���� ���������/���������!',
        'You have %s reminder ticket(s)!' => '��� ����� %s �������/�������� �����/������!',
        'The recommended charset for your language is %s!' => '���������������� �������� ����� �� ������ ���� � %s!',
        'Passwords doesn\'t match! Please try it again!' => '�������� �� ��������! �������� ������!',
        'Password is already in use! Please use an other password!' => '�������� �� ��������! ���� �������� ������!',
        'Password is already used! Please use an other password!' => '�������� ���� � ����������. ���� �������� ������!',
        'You need to activate %s first to use it!' => '����� ������ �� ���������� %s ����� �� �� ��������!',
        'No suggestions' => '���� �������������',
        'Word' => '����',
        'Ignore' => '�������������',
        'replace with' => '������� �',
        'There is no account with that login name.' => '���� ���������� � ���� ���.',
        'Login failed! Your username or password was entered incorrectly.' => '��������� �����������! ������ ��� �/��� ������ �� �����������!',
        'Please contact your admin' => '����, �������� �� � ������ �������������',
        'Logout successful. Thank you for using OTRS!' => '������� � �������. ���������� ��, �� ����������� ���������.',
        'Invalid SessionID!' => '��������� SessionID!',
        'Feature not active!' => '��������� �� � �������',
        'Notification (Event)' => '����������� (Event)',
        'Login is needed!' => '�����-� � ������������',
        'Password is needed!' => '�������� � ������������',
        'License' => '������',
        'Take this Customer' => '��������� ���� ������',
        'Take this User' => '�������� ���� ����������',
        'possible' => '��������',
        'reject' => '���������',
        'reverse' => '��������',
        'Facility' => '��������������',
        'Timeover' => '����������� �� �������',
        'Pending till' => '� �������� ��',
        'Don\'t work with UserID 1 (System account)! Create new users!' => '�� �������� � UserID 1 (�������� ������)! �������� ���� �����������.',
        'Dispatching by email To: field.' => '������������ �� ���� To: �� �������.',
        'Dispatching by selected Queue.' => '������������� �� ������� ������.',
        'No entry found!' => '���� �������� ��������!',
        'Session has timed out. Please log in again.' => '����, ������������ �� ������. ���� ����� ���� � ���������.',
        'No Permission!' => '������ ����������!',
        'To: (%s) replaced with database email!' => 'To: (%s) �������� � e-mail ������ �� ������ �����',
        'Cc: (%s) added database email!' => 'Cc: (%s) e-mail ������ ������� �� ������ �����',
        '(Click here to add)' => '(�������� ��� �� ��������)',
        'Preview' => '�������',
        'Package not correctly deployed! You should reinstall the Package again!' => '���������� ����� �� � �������� ����������. ������ ������ �� �� ��������� ������',
        'Added User "%s"' => '������� ����������� "%s" ',
        'Contract' => '�������',
        'Online Customer: %s' => '������(�) ������: %s',
        'Online Agent: %s' => '�����(�) ������: %s',
        'Calendar' => '��������',
        'File' => '����',
        'Filename' => '��� �� ����',
        'Type' => '���',
        'Size' => '������',
        'Upload' => '�������',
        'Directory' => '����������',
        'Signed' => '���������',
        'Sign' => '�������',
        'Crypted' => '��������',
        'Crypt' => '�������',
        'Office' => '����',
        'Phone' => '�������',
        'Fax' => '����',
        'Mobile' => '������� �������',
        'Zip' => '�������� ���',
        'City' => '����',
        'Street' => '',
        'Country' => '�������',
        'Location' => '',
        'installed' => '�����������',
        'uninstalled' => '�������������',
        'Security Note: You should activate %s because application is already running!' => '���������: ������ �� ���������� %s ������ ������������ ���� ������!',
        'Unable to parse Online Repository index document!' => '��������� ������ �� ��������� �������� �� ���� Online repository!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '���� ������ �� ���� Framework � ���� Online Repository, �� ��� ������ �� ����� Frameworks',
        'No Packages or no new Packages in selected Online Repository!' => '���� (����) ������ � ��������� Online Repository',
        'printed at' => '���������� �',
        'Dear Mr. %s,' => '',
        'Dear Mrs. %s,' => '',
        'Dear %s,' => '',
        'Hello %s,' => '',
        'This account exists.' => '',
        'New account created. Sent Login-Account to %s.' => '',
        'Please press Back and try again.' => '',
        'Sent password token to: %s' => '',
        'Sent new password to: %s' => '',
        'Upcoming Events' => '',
        'Event' => '�������',
        'Events' => '',
        'Invalid Token!' => '',
        'more' => '',
        'For more info see:' => '',
        'Package verification failed!' => '',
        'Collapse' => '',
        'News' => '',
        'Product News' => '',
        'Bold' => '',
        'Italic' => '',
        'Underline' => '',
        'Font Color' => '',
        'Background Color' => '',
        'Remove Formatting' => '',
        'Show/Hide Hidden Elements' => '',
        'Align Left' => '',
        'Align Center' => '',
        'Align Right' => '',
        'Justify' => '',
        'Header' => '�����',
        'Indent' => '',
        'Outdent' => '',
        'Create an Unordered List' => '',
        'Create an Ordered List' => '',
        'HTML Link' => '',
        'Insert Image' => '',
        'CTRL' => '',
        'SHIFT' => '',
        'Undo' => '',
        'Redo' => '',

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
        'January' => '������',
        'February' => '��������',
        'March' => '����',
        'April' => '�����',
        'May_long' => '���',
        'June' => '���',
        'July' => '���',
        'August' => '������',
        'September' => '���������',
        'October' => '��������',
        'November' => '�������',
        'December' => '��������',

        # Template: AAANavBar
        'Admin-Area' => '��������������� ����',
        'Agent-Area' => '������',
        'Ticket-Area' => '������',
        'Logout' => '�����',
        'Agent Preferences' => '������������� �� ����� �����������',
        'Preferences' => '�������������',
        'Agent Mailbox' => '�������� �����',
        'Stats' => '����������',
        'Stats-Area' => '����������',
        'Admin' => '�������������',
        'Customer Users' => '������-�����������',
        'Customer Users <-> Groups' => '������-����������� <-> �����',
        'Users <-> Groups' => '����� ����������� <-> �����',
        'Roles' => '����',
        'Roles <-> Users' => '���� <-> �����������',
        'Roles <-> Groups' => '���� <-> �����',
        'Salutations' => '���������',
        'Signatures' => '�������',
        'Email Addresses' => 'E-mail ������',
        'Notifications' => '�����������',
        'Category Tree' => '����� �� �����������',
        'Admin Notification' => '��������������� �����������',

        # Template: AAAPreferences
        'Preferences updated successfully!' => '��������������� �� �������� �������',
        'Mail Management' => '���������� �� ������',
        'Frontend' => '����-����������',
        'Other Options' => '����� ���������',
        'Change Password' => '����� �� ��������',
        'New password' => '���� ������',
        'New password again' => '���� ������ (������)',
        'Select your QueueView refresh time.' => '�������� ������ ����� �� ���������� �� ������� �� ��������.',
        'Select your frontend language.' => '�������� ������ ����.',
        'Select your frontend Charset.' => '�������� ������ �������� �����.',
        'Select your frontend Theme.' => '�������� ������ ������������� ����',
        'Select your frontend QueueView.' => '�������� ���� �� ������������ ������������ �� ��������.',
        'Spelling Dictionary' => '����� �� �������� �� ���������',
        'Select your default spelling dictionary.' => '�������� ������ ������ �� �������� �� ����������',
        'Max. shown Tickets a page in Overview.' => '���������� ���� ������ �� �������� (��� �������)',
        'Can\'t update password, your new passwords do not match! Please try again!' => '���������� ������������� �� ��������! �������� �� ��������! ���� �������� ������!',
        'Can\'t update password, invalid characters!' => '���������� ������������� �� ��������! ��������� �������!',
        'Can\'t update password, must be at least %s characters!' => '���������� ������������� �� ��������! ���������� ������� %s �������!',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => '���������� ������������� �� ��������! ���������� �� 2 ����� � 2 ������ �����!',
        'Can\'t update password, needs at least 1 digit!' => '���������� ������������� �� ��������! ���������� � ������� 1 �����!',
        'Can\'t update password, needs at least 2 characters!' => '���������� ������������� �� ��������! ���������� �� ������� 2 �������!',

        # Template: AAAStats
        'Stat' => '����������',
        'Please fill out the required fields!' => '���� ��������� �������������� ������!',
        'Please select a file!' => '���� �������� ����!',
        'Please select an object!' => '���� �������� �����!',
        'Please select a graph size!' => '���� �������� ������ �� ���������!',
        'Please select one element for the X-axis!' => '���� �������� ���� ������� �� ���� �',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => '���� �������� ���� ���� ������� ��� �������� \'Fixed\', ������ ������ � ���������!',
        'If you use a checkbox you have to select some attributes of the select field!' => '��� ���������� �������, ������ �� �������� �������� �� ������!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '���� �������� �������� ��� ��������� ���� ��� ��������� ��������� \'Fixed\'!',
        'The selected end time is before the start time!' => '�������� ����� ������ �� ����� � ����� �������� ������!',
        'You have to select one or more attributes from the select field!' => '������ �� �������� ���� ��� ������ �������� �� ������!',
        'The selected Date isn\'t valid!' => '��������� ���� �� � �������!',
        'Please select only one or two elements via the checkbox!' => '���� �������� ���� ��� ��� �������� ����������� ���������!',
        'If you use a time scale element you can only select one element!' => '��� ���������� ������� ����� ���� �� �������� ���� ���� �������!',
        'You have an error in your time selection!' => '����� ������ ��� �������� �� �������� ������!',
        'Your reporting time interval is too small, please use a larger time scale!' => '�������� �������� �� ��������� � ��������� �����, ���� ����������� ��-����� ��������!',
        'The selected start time is before the allowed start time!' => '��������� ������� ������ �� ����� � ����� ��������� ����� ������ �� �����!',
        'The selected end time is after the allowed end time!' => '��������� ������� ������ �� ����� � ���� ��������� ����� ������ �� �����!',
        'The selected time period is larger than the allowed time period!' => '�������� ������� �������� � ��-����� �� ���������� ���������!',
        'Common Specification' => '���� ������������',
        'Xaxis' => '�� �',
        'Value Series' => '�������� �� ��������',
        'Restrictions' => '�����������',
        'graph-lines' => '�������-�����',
        'graph-bars' => '�������-�����',
        'graph-hbars' => '�������-������������ �����',
        'graph-points' => '�������-�����',
        'graph-lines-points' => '�������-����� � �����',
        'graph-area' => '����� �� �������',
        'graph-pie' => '�������-������',
        'extended' => '��������',
        'Agent/Owner' => '�����/����������',
        'Created by Agent/Owner' => '��������� �� �����/����������',
        'Created Priority' => '��������� � ���������',
        'Created State' => '��������� � ������',
        'Create Time' => '����� �� ���������',
        'CustomerUserLogin' => '����� �� ������-����������',
        'Close Time' => '����� �� ���������',
        'TicketAccumulation' => '',
        'Attributes to be printed' => '',
        'Sort sequence' => '',
        'Order by' => '',
        'Limit' => '�����',
        'Ticketlist' => '',
        'ascending' => '',
        'descending' => '',
        'First Lock' => '',
        'Evaluation by' => '',
        'Total Time' => '',
        'Ticket Average' => '',
        'Ticket Min Time' => '',
        'Ticket Max Time' => '',
        'Number of Tickets' => '',
        'Article Average' => '',
        'Article Min Time' => '',
        'Article Max Time' => '',
        'Number of Articles' => '',
        'Accounted time by Agent' => '',
        'Ticket/Article Accounted Time' => '',
        'TicketAccountedTime' => '',
        'Ticket Create Time' => '',
        'Ticket Close Time' => '',

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
        'Priority Update' => '',
        'State' => '������',
        'Compose' => '���������',
        'Pending' => '� ��������',
        'Owner' => '����������',
        'Owner Update' => '���������� �� ����������',
        'Responsible' => '����������',
        'Responsible Update' => '���������� �� �����������',
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
        'Free Fields' => '������',
        'Merge' => '�����������',
        'merged' => '��������',
        'closed successful' => '������� ��������',
        'closed unsuccessful' => '��������� ��������',
        'new' => '���',
        'open' => '�������',
        'Open' => '',
        'closed' => '��������',
        'Closed' => '',
        'removed' => '���������',
        'pending reminder' => '������ ���������',
        'pending auto' => '������ �����������',
        'pending auto close+' => '������ ����������� ���������+',
        'pending auto close-' => '������ ����������� ���������-',
        'email-external' => '������ �-����',
        'email-internal' => '�������� �-����',
        'note-external' => '������ �������',
        'note-internal' => '�������� �������',
        'note-report' => '������� �����',
        'phone' => '�������',
        'sms' => 'SMS',
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
        'Ticket "%s" created!' => '����� "%s" ��������!',
        'Ticket Number' => '����� �� ������',
        'Ticket Object' => '����� �� ��� �����',
        'No such Ticket Number "%s"! Can\'t link it!' => '������������� ����� �� ������ "%s"! �������� � ����������!',
        'Don\'t show closed Tickets' => '����������� ������ �� �� �� ��������',
        'Show closed Tickets' => '����������� ������ �� �� ��������',
        'New Article' => '��� �����',
        'Email-Ticket' => '����� �� �-����',
        'Create new Email Ticket' => '����� �-����',
        'Phone-Ticket' => '����� ��������� ��������',
        'Search Tickets' => '������� �� ������',
        'Edit Customer Users' => '�������� �� ������-�����������',
        'Edit Customer Company' => '',
        'Bulk Action' => '����������� ��������',
        'Bulk Actions on Tickets' => '����������� �������� ����� ������',
        'Send Email and create a new Ticket' => '��������� �� �-���� � ��������� �� ��� �����',
        'Create new Email Ticket and send this out (Outbound)' => '��������� �� ��� �����: �-���� � ��������� �� ���� (�������)',
        'Create new Phone Ticket (Inbound)' => '��������� �� �����: ��������� �������� (������)',
        'Overview of all open Tickets' => '������� �� ������ �������� ������',
        'Locked Tickets' => '��������� ������',
        'Watched Tickets' => '����������� ������',
        'Watched' => '�����������',
        'Subscribe' => '���������',
        'Unsubscribe' => '�����. ���������',
        'Lock it to work on it!' => '��������� ������ �� �� �������� �/� ����!',
        'Unlock to give it back to the queue!' => '��������� ������ �� �� �� ����� � ��������!',
        'Shows the ticket history!' => '������� ��������� �� ������!',
        'Print this ticket!' => '����� �� ������!',
        'Change the ticket priority!' => '����� �� ���������� �� ������!',
        'Change the ticket free fields!' => '����� �� �������� �� ������!',
        'Link this ticket to an other objects!' => '��������� �� ������ � ����� ������!',
        'Change the ticket owner!' => '����� �� ����������� �� ������!',
        'Change the ticket customer!' => '����� �� ������-����������� �� ������!',
        'Add a note to this ticket!' => '�������� �� ������� ��� ������!',
        'Merge this ticket!' => '����������� �� ������!',
        'Set this ticket to pending!' => '����� �� ������� �� ������ � �������',
        'Close this ticket!' => '��������� �� ������!',
        'Look into a ticket!' => '�������� ������� �� ������!',
        'Delete this ticket!' => '��������� �� ���� �����!',
        'Mark as Spam!' => '�������� ���� ����',
        'My Queues' => '��������� ������',
        'Shown Tickets' => '�������� ������',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '������ ����� � ����� �� ������ "<OTRS_TICKET>" � ��������� � "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => '',
        'Ticket %s: first response time will be over in %s!' => '',
        'Ticket %s: update time is over (%s)!' => '',
        'Ticket %s: update time will be over in %s!' => '',
        'Ticket %s: solution time is over (%s)!' => '',
        'Ticket %s: solution time will be over in %s!' => '',
        'There are more escalated tickets!' => '',
        'New ticket notification' => '��������� �� ��� �����',
        'Send me a notification if there is a new ticket in "My Queues".' => '��������� ����������� ��� ��� ��� ����� � "��������� ������".',
        'Follow up notification' => '�������� �� ��������� �� ������� �� ���������',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => '��������� �� ��������, ��� �������� ������� ������ �� ������� �� �������� � �� ��� ���������� �� ������',
        'Ticket lock timeout notification' => '�������� �� ����������������� �� ���������� �� �������',
        'Send me a notification if a ticket is unlocked by the system.' => '��������� �� ��������, ��� ������� � �������� �� ���������.',
        'Move notification' => '�������� �� �����������',
        'Send me a notification if a ticket is moved into one of "My Queues".' => '��������� ����������� ����� � ��������� � "��������� ������".',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '����� ����� �� ������������ ������. ��� �� �������� ����������� �� ���� ������ ��� ��� �� ���������.',
        'Custom Queue' => '������������� ������',
        'QueueView refresh time' => '����� �� ���������� �������� �� ��������',
        'Screen after new ticket' => '����� ���� ��� �����',
        'Select your screen after creating a new ticket.' => '�������� ����� ���� ��������� �� ��� �����',
        'Closed Tickets' => '��������� ������',
        'Show closed tickets.' => '�������� ����������� ������',
        'Max. shown Tickets a page in QueueView.' => '���������� ���� �������� ������ �� �������� � �������� �� ��������.',
        'Watch notification' => '',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '',
        'Out Of Office' => '',
        'Select your out of office time.' => '',
        'CompanyTickets' => '������ �� ����������',
        'MyTickets' => '��� ������',
        'New Ticket' => '��� �����',
        'Create new Ticket' => '��������� �� ��� �����',
        'Customer called' => '�������� �� ������',
        'phone call' => '�������� �� �������',
        'Reminder Reached' => '',
        'Reminder Tickets' => '',
        'Escalated Tickets' => '',
        'New Tickets' => '',
        'Open Tickets / Need to be answered' => '',
        'Tickets which need to be answered!' => '',
        'All new tickets!' => '',
        'All tickets which are escalated!' => '',
        'All tickets where the reminder date has reached!' => '',
        'Responses' => '��������',
        'Responses <-> Queue' => '�������� <-> ������',
        'Auto Responses' => '���� ��������',
        'Auto Responses <-> Queue' => '���� �������� <-> ������',
        'Attachments <-> Responses' => '��������� ������� <-> ������',
        'History::Move' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
        'History::TypeUpdate' => '������� �� ���� "%s".',
        'History::ServiceUpdate' => '������� �� service "%s".',
        'History::SLAUpdate' => '������� �� SLA "%s".',
        'History::NewTicket' => '�������� ��� ����� [%s] (�=%s;�=%s;�=%s).',
        'History::FollowUp' => '��������� ��� [%s]. %s',
        'History::SendAutoReject' => '���� ����� �������� �� "%s".',
        'History::SendAutoReply' => '���� ������� �������� �� "%s".',
        'History::SendAutoFollowUp' => '���� ������� ��� ����� �������� �� "%s".',
        'History::Forward' => '���������� �� "%s".',
        'History::Bounce' => '��������� ��� "%s".',
        'History::SendAnswer' => '�-���� ��������� �� "%s".',
        'History::SendAgentNotification' => '"%s"-����������� ��������� �� "%s".',
        'History::SendCustomerNotification' => '����������� ��������� �� "%s".',
        'History::EmailAgent' => '�-���� ��������� �� ������.',
        'History::EmailCustomer' => '�������� �-����. %s',
        'History::PhoneCallAgent' => '�������� �� ������ �� ������ �� �����.',
        'History::PhoneCallCustomer' => '������ �� �� �����.',
        'History::AddNote' => '�������� ������� (%s)',
        'History::Lock' => '������ � ��������.',
        'History::Unlock' => '������ � ��������.',
        'History::TimeAccounting' => '%s ������� �������(�) �� ��������. ���� %s ������� �������(�).',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => '�������������: %s',
        'History::PriorityUpdate' => '����� �� ���������� �� ������ �� "%s" (%s) ��� "%s" (%s).',
        'History::OwnerUpdate' => '��� ��������� � "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop-Protection! �� � �������� ���� ������� �� "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => '�������������: %s',
        'History::StateUpdate' => '����: "%s" ���: "%s"',
        'History::TicketFreeTextUpdate' => '�������������: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => '��������� ������ �� web.',
        'History::TicketLinkAdd' => '�������� ������ ��� ����� "%s".',
        'History::TicketLinkDelete' => '������� ������ ��� ����� "%s".',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

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
        'To get the first 20 character of the subject.' => '�� �� �� ������ ������� 20 ������� �� "�������" ������',
        'To get the first 5 lines of the email.' => '�� �� �� ������ ������� 5 ���� �� �����������.',
        'To get the realname of the sender (if given).' => '�� �� ����� ���������� ��� �� ��������� (��� ���)',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '�� �� ������ �������� �� ������/����������� (������: (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => '�������� �� ������� ������-���������� (������: <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => '�������� �� ����������� �� ������ (������: <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => '�������� �� ����������� �� ������ (������: <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => '�������� �� ������� ����������, ����� � ������� ���� �������� (������: <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '�������� �� ������ (������: <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => '�������� �� ���������� ������������ (������: <OTRS_CONFIG_HttpType>).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '���������� �� ������-�����',
        'Search for' => '�������',
        'Add Customer Company' => '�������� �� ������-�����',
        'Add a new Customer Company.' => '�������� �� ���� ������-�����',
        'List' => '������',
        'This values are required.' => '���� ��������� �� ������������.',
        'This values are read only.' => '���� ��������� �� ���� �� �������. (read only)',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => '�����������, ����� ���������� � ���������. �����.',
        'This window must be called from compose window' => '���� �������� ������ �� ���� ������� �� ��������� �� ���������',
        'Customer User Management' => '���������� �� ������-�����������',
        'Add Customer User' => '',
        'Source' => '��������',
        'Create' => '���������',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '������-����������� �� ������ �� ��� ������� � �� ���� �� ����� ���� ���������� ������������� ���������.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '���������� �� ������-����������� <-> �����',
        'Change %s settings' => '������� �� %s ���������',
        'Select the user:group permissions.' => '�������� ���������� �� ����������:�����',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '��� ���� �� � ������� ����������� ���� �� ��� ���������� �� ���� ����� (���� �� �� ������ �������� ����� �� � ���� ����� (�������� ����� �� � �������� �� ���� �����))',
        'Permission' => '����������',
        'ro' => '���� �� ������',
        'Read only access to the ticket in this group/queue.' => '������ ���� �� ������ �� �������� � ���� �����/������',
        'rw' => '������/�����',
        'Full read and write access to the tickets in this group/queue.' => '����� ������ �� �������� � ���� �����/������',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => '',
        'CustomerUser' => '������-����������',
        'Service' => 'Service',
        'Edit default services.' => '',
        'Search Result' => '�������� �� ��������',
        'Allocate services to CustomerUser' => '',
        'Active' => '�������',
        'Allocate CustomerUser to service' => '',

        # Template: AdminEmail
        'Message sent to' => '����������� � ��������� ��',
        'A message should have a subject!' => '����������� ������ �� ��� ����� � ���� "�������"!',
        'Recipients' => '����������',
        'Body' => '���� �� �������',
        'Send' => '���������',

        # Template: AdminGenericAgent
        'GenericAgent' => 'GenericAgent',
        'Job-List' => '������ �� ������',
        'Last run' => '�������� ����������',
        'Run Now!' => '��������� ����!',
        'x' => '�',
        'Save Job as?' => '����������� �� ��������?',
        'Is Job Valid?' => '�������� �������?',
        'Is Job Valid' => '�������� �������',
        'Schedule' => '��������� ����������',
        'Currently this generic agent job will not run automatically.' => '',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '������������� ������� � ������ (������: Mart*n ��� Baue*)',
        '(e. g. 10*5155 or 105658*)' => '(������: 10*5155 ��� 105658)',
        '(e. g. 234321)' => '(������: 234321)',
        'Customer User Login' => '����� �� ������-����������',
        '(e. g. U5150)' => '(������: U5150)',
        'SLA' => 'SLA',
        'Agent' => '�����',
        'Ticket Lock' => '���������� �� �����',
        'TicketFreeFields' => '������ �� ������',
        'Create Times' => '����� �� ���������',
        'No create time settings.' => '���� ��������� �� ����� �� ���������.',
        'Ticket created' => '������ � ��������',
        'Ticket created between' => '������ � �������� �����',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending Times' => '����� �� ��������',
        'No pending time settings.' => '���� ��������� �� ����� �� ��������',
        'Ticket pending time reached' => '������� �� �������� �� ������ ����������',
        'Ticket pending time reached between' => '������� �� �������� �� ������ ���������� �����',
        'Escalation Times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - First Response Time' => '��������� - ����� �� ����� �������',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - Update Time' => '��������� - ����� �� ������ ������',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - Solution Time' => '��������� - ����� �� ��������',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'New Service' => '',
        'New SLA' => '',
        'New Priority' => '��� ���������',
        'New Queue' => '�������� ������',
        'New State' => '��� ������',
        'New Agent' => '��� �����',
        'New Owner' => '��� ����������',
        'New Customer' => '��� ������-����������',
        'New Ticket Lock' => '��� ��� ���������� �� ������',
        'New Type' => '',
        'New Title' => '',
        'New TicketFreeFields' => '���� ��������� �� �������� �� ������',
        'Add Note' => '�������� �� �������',
        'Time units' => '����� ������� �� �������',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '���� ������� �� ���� ���������. ARG[0] (����� ��������) �� ���� ������ �� ������. ARG[1] (����� ��������) �� ���� TiketID.',
        'Delete tickets' => '��������� �� ������',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => '��������! ���� ������ �� ����� ������� �� ������ �����! �� �� ����� ��������!',
        'Send Notification' => '��������� �� �����������',
        'Param 1' => '��������� 1',
        'Param 2' => '��������� 2',
        'Param 3' => '��������� 3',
        'Param 4' => '��������� 4',
        'Param 5' => '��������� 5',
        'Param 6' => '��������� 6',
        'Send agent/customer notifications on changes' => '',
        'Save' => '�����������',
        '%s Tickets affected! Do you really want to use this job?' => '%s ������ ���� ���������! ������� �� ��� �� ������ �� ���������� ���� ������?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '',
        'Group Management' => '���������� �� �����',
        'Add Group' => '�������� �� �����',
        'Add a new Group.' => '�������� �� ���� �����',
        'The admin group is to get in the admin area and the stats group to get stats area.' => '������� admin �������� ������������������ ����, � stat ������� �������� ������ �� ����������.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => '��������� ���� ����� �� �� ����������� ������������ �� ���������� ����� �� ������ (�������� ����� �� ����� "��������", ����� "���������" � �.�.)',
        'It\'s useful for ASP solutions.' => '���� � ��������� �� ASP �������.',

        # Template: AdminLog
        'System Log' => '�������� ������',
        'Time' => '�����',

        # Template: AdminMailAccount
        'Mail Account Management' => '���������� �� e-mail �������',
        'Host' => '����',
        'Trusted' => '�������',
        'Dispatching' => '�������������',
        'All incoming emails with one account will be dispatched in the selected queue!' => '������ ������� ����� � ���� ������ �� �� ����������� � ��������� ������!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '��� ����� ������ � ������� �������������� X-OTRS ������ �� e-mail-� �� ����� ���������� (������: X-OTRS-Priority - �� ���������). ������� �� PostMaster ����� ����� �� �� ������� �� ���� ���������.',

        # Template: AdminNavigationBar
        'Users' => '�����������',
        'Groups' => '�����',
        'Misc' => '�������',

        # Template: AdminNotificationEventForm
        'Notification Management' => '���������� �� �������������',
        'Add Notification' => '',
        'Add a new Notification.' => '',
        'Name is required!' => '����� � ������������',
        'Event is required!' => '',
        'A message should have a body!' => '����������� ������ �� ��� �����',
        'Recipient' => '',
        'Group based' => '',
        'Agent based' => '',
        'Email based' => '',
        'Article Type' => '',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '',
        'Body match' => '',
        'Notifications are sent to an agent or a customer.' => '����������� �� �������� �� ����� ��� ������-����������',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => '�����������',

        # Template: AdminPackageManager
        'Package Manager' => '���������� �� ��������� ������',
        'Uninstall' => '�������������',
        'Version' => '������',
        'Do you really want to uninstall this package?' => '������� �� ��� �� ������ �� ������������� ���� ��������� �����?',
        'Reinstall' => '�������������',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '������� �� ��� �� ������ �� ������������� ���� ��������� ����� (������ ������������ ������� �� �����)?',
        'Continue' => '������������',
        'Install' => '�����������',
        'Package' => '��������� �����',
        'Online Repository' => 'Online Repository',
        'Vendor' => '���������',
        'Module documentation' => '',
        'Upgrade' => '�������',
        'Local Repository' => '������� Repository',
        'Status' => '������',
        'Overview' => '�������',
        'Download' => '�������',
        'Rebuild' => '�����������',
        'ChangeLog' => 'ChangeLog',
        'Date' => '����',
        'Filelist' => '������ �� �������',
        'Download file from package!' => '������� �� ����� �� ������!',
        'Required' => '������������',
        'PrimaryKey' => 'Primary Key',
        'AutoIncrement' => 'Auto Increment',
        'SQL' => 'SQL',
        'Diff' => '�������',

        # Template: AdminPerformanceLog
        'Performance Log' => '������ �� ������������������',
        'This feature is enabled!' => '���� �������������� � �������!',
        'Just use this feature if you want to log each request.' => '����������� ���� �������������� ��� ������ �� �� ��������� ����� ������.',
        'Activating this feature might affect your system performance!' => '',
        'Disable it here!' => '����������� �� ��������������� ���',
        'This feature is disabled!' => '���� �������������� � ���������',
        'Enable it here!' => '����������� �� ��������������� ���',
        'Logfile too large!' => '��������� ���� � ��������� �����!',
        'Logfile too large, you need to reset it!' => '��������� ���� � ��������� �����, ���������� � ������������ �� �����!',
        'Range' => '��������',
        'Interface' => '���������',
        'Requests' => '������',
        'Min Response' => '��������� ����� �� �������',
        'Max Response' => '���������� ����� �� �������',
        'Average Response' => '������ ����� �� �������',
        'Period' => '',
        'Min' => '',
        'Max' => '',
        'Average' => '',

        # Template: AdminPGPForm
        'PGP Management' => '���������� �� PGP',
        'Result' => '��������',
        'Identifier' => '�������������',
        'Bit' => '���',
        'Key' => '����',
        'Fingerprint' => 'Fingerprint',
        'Expires' => 'Expires',
        'In this way you can directly edit the keyring configured in SysConfig.' => '�� ���� ����� ���� �������� �� �� ��������� keyring-� ����� � ������������ � ������ SysConfig.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => '���������� ������� �� �-����',
        'Filtername' => '��� �� ������',
        'Stop after match' => '',
        'Match' => '����������',
        'Value' => '��������',
        'Set' => '���������',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '������ �� ����������� �� ���� �� ������� X-������! ��������� ����� � ���� ��������.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '��� ������ ���������� ���� �� e-mail ������ ����������� EMAILADDRESS:info@example.com � From, To ��� Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '��� ���������� ��������� �����, ���� �� ���������� ���������� �� ������������ �� ���������� ����� ���� [***] � \'Set\'.',

        # Template: AdminPriority
        'Priority Management' => '���������� �� ������������',
        'Add Priority' => '������ ���������',
        'Add a new Priority.' => '������ ��� ���������.',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => '���������� �� ������ <-> ���� ��������',
        'settings' => '',

        # Template: AdminQueueForm
        'Queue Management' => '���������� �� ������',
        'Sub-Queue of' => '���-������ ��',
        'Unlock timeout' => '����� �� ����������',
        '0 = no unlock' => '0 = ��� ����������',
        'Only business hours are counted.' => '',
        '0 = no escalation' => '0 = ��� ���������',
        'Notify by' => '',
        'Follow up Option' => '��������� �� ����������� ������������',
        'Ticket lock after a follow up' => '���������� �� ������� ���� ����������� �����������',
        'Systemaddress' => '�������� �����',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '��� ������� ������� ������� � ���(��� ��) �� ������� ������� � ������������ �����, ������� �� �� ������� �����������. ���� ������� �� ����� ����� �� ������ ����� ������',
        'Escalation time' => '����� �� ��������� (����������� �� �����������)',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => '��� ������� �� ������ ������� � ������������ �����, �� �� ������ ���� ���� �����',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '��� ������� � �������� � ����������� ������� ������ �� ������������, ������� �� ���� �������� �� ������ ����������',
        'Will be the sender address of this queue for email answers.' => '�� ���� ������� �� ������� �� ���� ������ ��� ����� ����������',
        'The salutation for email answers.' => '����������� �� ���������� �� �����',
        'The signature for email answers.' => '�������� �� ���������� �� �����',
        'Customer Move Notify' => '����������� ��� ����������� �� �����������',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS ������� �������� �� �-���� �� �������, ��� ������� � ���������.',
        'Customer State Notify' => '����������� �� ����������� �� �����������',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS ������� �������� �� �-���� �� �������, ��� �������� �� ������� � ��������.',
        'Customer Owner Notify' => '����������� �� �����������',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS ������� �������� �� �-���� �� �������, ��� ����������� �� ������ � ��������.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => '���������� �� �������� <-> ������',

        # Template: AdminQueueResponsesForm
        'Answer' => '�������',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => '���������� �� �������� <-> ��������� �������',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => '���������� �� ���������',
        'A response is default text to write faster answer (with default text) to customers.' => '��������� � ����� �� ������������, �������� �������������, � ��� ��-���� ������� ��� �������',
        'Don\'t forget to add a new response a queue!' => '�� ���������� �� �������� ������ ������� ��� ������ ������!',
        'The current ticket state is' => '������� ������ �� ������ �',
        'Your email address is new' => '����� e-mail ����� � ���',

        # Template: AdminRoleForm
        'Role Management' => '���������� �� ����',
        'Add Role' => '�������� �� ����',
        'Add a new Role.' => '�������� �� ���� ����',
        'Create a role and put groups in it. Then add the role to the users.' => '�������� ���� � �������� ����� � ���. ���� ���� �������� ������ �� �������������.',
        'It\'s useful for a lot of users and groups.' => '������� ������ ����� ����� ����������� � �����.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => '���������� �� ���� <-> �����',
        'move_into' => '�����������',
        'Permissions to move tickets into this group/queue.' => '���������� �� ����������� �� ����� � ���� �����/������.',
        'create' => '���������',
        'Permissions to create tickets in this group/queue.' => '���������� �� ��������� �� ����� � ���� �����/������.',
        'owner' => '����������',
        'Permissions to change the ticket owner in this group/queue.' => '���������� �� ����� ����������� �� ����� � ���� �����/������.',
        'priority' => '���������',
        'Permissions to change the ticket priority in this group/queue.' => '���������� �� ������� �� ���������� �� ����� � ���� �����/������.',

        # Template: AdminRoleGroupForm
        'Role' => '����',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => '����������� �� ���� <-> �����������',
        'Select the role:user relations.' => '�������� ������� ����:����������',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => '���������� �� �����������',
        'Add Salutation' => '�������� �� ���������',
        'Add a new Salutation.' => '�������� �� ���� ���������',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' => '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => '',
        'Go' => '�����������',
        'Select Box Result' => '�������� �� �������� ��������� � SelectBox',

        # Template: AdminService
        'Service Management' => '���������� �� service',
        'Add Service' => '',
        'Add a new Service.' => '',
        'Sub-Service of' => 'Sub-Service ��',

        # Template: AdminSession
        'Session Management' => '���������� �� �������',
        'Sessions' => '������',
        'Uniq' => '��������',
        'Kill all sessions' => '������� �� ������ �����',
        'Session' => '�����',
        'Content' => '����������',
        'kill session' => '��������� �� �������� �����',

        # Template: AdminSignatureForm
        'Signature Management' => '���������� �� ������',
        'Add Signature' => '�������� �� ������',
        'Add a new Signature.' => '�������� �� ��� ������',

        # Template: AdminSLA
        'SLA Management' => '���������� �� SLA',
        'Add SLA' => '',
        'Add a new SLA.' => '',

        # Template: AdminSMIMEForm
        'S/MIME Management' => '���������� �� S/MIME (Secure MIME)',
        'Add Certificate' => '�������� �� ����������',
        'Add Private Key' => '�������� �� ������ ����',
        'Secret' => '������',
        'Hash' => '���',
        'In this way you can directly edit the certification and private keys in file system.' => '�� ���� ����� ���� �� ����������� ����������� � ������ ������� ��� ��������� �������.',

        # Template: AdminStateForm
        'State Management' => '���������� �� ������',
        'Add State' => '�������� �� ������',
        'Add a new State.' => '�������� �� ��� ������',
        'State Type' => '��� ���������',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => '�� ���������� �� ����������� ��������� �� ������������ � �������������� �� ���������!',
        'See also' => '����� ����',

        # Template: AdminSysConfig
        'SysConfig' => '�������� ������������',
        'Group selection' => '�������� �� ����� �� ��������������� ���������',
        'Show' => '������',
        'Download Settings' => '������� �� �����������',
        'Download all system config changes.' => '������� �� ������ ������� �� ��������������.',
        'Load Settings' => '��������� �� ���������',
        'Subgroup' => '��������',
        'Elements' => '��������',

        # Template: AdminSysConfigEdit
        'Config Options' => '��������������� �����',
        'Default' => '�� ������������',
        'New' => '����',
        'New Group' => '���� ����� �� ��������������� ���������',
        'Group Ro' => '����� (���� ������)',
        'New Group Ro' => '���� ����� (���� ������)',
        'NavBarName' => '��� �� �������������� �����',
        'NavBar' => '������������ �����',
        'Image' => '��������',
        'Prio' => '���������',
        'Block' => '����',
        'AccessKey' => '������ �� ������ ������',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => '���������� �� ��������� ����� �����',
        'Add System Address' => '�������� �� �������� �����',
        'Add a new System Address.' => '�������� �� ��� �������� �����.',
        'Realname' => '�������� ���',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => '������ ������� ������ �� ���� ����� (��:) �� �� ����������� � ��������� ������.',

        # Template: AdminTypeForm
        'Type Management' => '���������� �� ���',
        'Add Type' => '�������� �� ���',
        'Add a new Type.' => '�������� �� ��� ���',

        # Template: AdminUserForm
        'User Management' => '���������� �� �����������',
        'Add User' => '��������',
        'Add a new Agent.' => '���������� �� ��� �����',
        'Login as' => '����� ����',
        'Firstname' => '���',
        'Lastname' => '�������',
        'Start' => '�����',
        'End' => '',
        'User will be needed to handle tickets.' => '�� � ��������� ����� ����������, �� �� ���� ������� �� �� ��������',
        'Don\'t forget to add a new user to groups and/or roles!' => '�� ���������� �� �������� ����� ����� ���������� ��� ����� �/��� ����!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => '���������� �� ����� ����������� <-> �����',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => '������� �����',
        'Return to the compose screen' => '������� �� ��� ������ �� ���������',
        'Discard all changes and return to the compose screen' => '��������� �� �� ������ ������� � �� ������� ��� ������ �� ���������',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerSearch

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => '',

        # Template: AgentDashboardCalendarOverview
        'in' => '',

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '',
        'Please update now.' => '',
        'Release Note' => '',
        'Level' => '',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '',

        # Template: AgentDashboardTicketOverview

        # Template: AgentDashboardTicketStats

        # Template: AgentInfo
        'Info' => '����������',

        # Template: AgentLinkObject
        'Link Object: %s' => '',
        'Object' => '�����',
        'Link Object' => '����� �� ���������',
        'with' => '',
        'Select' => '�����',
        'Unlink Object: %s' => '',

        # Template: AgentLookup
        'Lookup' => '�������',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => '�������� �� ����������',
        'spelling error(s)' => '���������� ������(������)',
        'or' => '���',
        'Apply these changes' => '������� �� ��� ���� �������',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => '������� �� ��� �� ������ �� �������� ���� �����?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => '�������� ����������� ����� �� �������������� ������������',
        'Fixed' => 'Fixed',
        'Please select only one element or turn off the button \'Fixed\'.' => '',
        'Absolut Period' => '��������� ��������',
        'Between' => '�����',
        'Relative Period' => '����������� ��������',
        'The last' => '����������',
        'Finish' => '����',
        'Here you can make restrictions to your stat.' => '��� ���� �� �������� ����������� �� ������ ����������.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => '��� ������� ������� \'Fixed\' ����� ����������� ����� �������� ������������ �� ���� �� ������� ���������� �������.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => '��������� �� ���� ������������',
        'Permissions' => '����������',
        'Format' => '������',
        'Graphsize' => '������ �� ���������',
        'Sum rows' => '���� �� ��������',
        'Sum columns' => '���� �� ��������',
        'Cache' => '���',
        'Required Field' => '������������ ����',
        'Selection needed' => '��������� � �����',
        'Explanation' => '���������',
        'In this form you can select the basic specifications.' => '� ���� �������� ���� �� �������� ������� ������������.',
        'Attribute' => '�������',
        'Title of the stat.' => '�������� �� ������������.',
        'Here you can insert a description of the stat.' => '��� ���� �� �������� �������� �� ������������.',
        'Dynamic-Object' => '��������� �����',
        'Here you can select the dynamic object you want to use.' => '��� ���� �� �������� ����� ��������� ����� ������ �� �� ��������.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(���������: ���� �� ����������� ������ ������ �� ���� �� ����������)',
        'Static-File' => '�������� ����',
        'For very complex stats it is possible to include a hardcoded file.' => '�� ������ ���������� � �������� �� �� ����� hardcoded ����.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => '��� � ������� ��� hardcoded ���� ���� ������� �� ���� ������� � �� ���� �� ���� ������.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '����� �� ������������. �������� ���� ��� ������ ����� �� ����� ������ ���� ���������� �� � ������.',
        'Multiple selection of the output format.' => '���������� ����� �� �������� ������.',
        'If you use a graph as output format you have to select at least one graph size.' => '��� ���������� ������� �� ������� ������ �� � ���������� �� �� ������ ������ �� ���������.',
        'If you need the sum of every row select yes' => '��� ������ �� ��� ������ ��� ������ �� ����� ��� �������� ��',
        'If you need the sum of every column select yes.' => '��� ������ �� ��� ��� ��� ������ �� ����� ������ �������� ��',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '�� �������� ���� �� ����������� ����� �� �� �������. ���� �� ������ ������������ �� ������ ����������.',
        '(Note: Useful for big databases and low performance server)' => '(���������: ������� � ��� ������ ���� ����� ��� ������������������� ������)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => '��� ������������ � ��������� ������� ���������� �� � �������������.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '���� � ������� ��� ������ ����� �� �� ���� ��������� �� ������������ ��� ������������ �� � ������������� �������.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => '�������� �������� �� ������� �� ���������',
        'Scale' => '�����',
        'minimal' => '���������',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => '������ ������� �� ������ �� ����������� ������ �� � ��-����� �� ���� �� ���� � (������: X-Axis => Month, ValueSeries => Year).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '��� ���� �� �������� ����� ���������. ��� ���� �� �������� ���� ��� ��� ��������. ���� ���� ���� �� �������� �������� �� ����������. ����� ������� �� ���� ������� ���� ����� �� �������� ���������. ��� �� �������� �������, ������ �������� �� �������� �� ����� �������� �� ����� �� ������������ �� ������������, ����� � ����� ��� ������� ������� ��� ������������ �� ������������.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => '�������� ������� ����� �� �� �������� �� ��������� �� ���� �',
        'maximal period' => '���������� ������',
        'minimal scale' => '��������� �����',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsImport
        'Import' => '�����������',
        'File is not a Stats config' => '����� �� � ��������� �� ����������',
        'No File selected' => '�� � ������ ����',

        # Template: AgentStatsOverview
        'Results' => '��������',
        'Total hits' => '��� ���� ���������',
        'Page' => '��������',

        # Template: AgentStatsPrint
        'Print' => '�����������',
        'No Element selected.' => '���� ������ �������',

        # Template: AgentStatsView
        'Export Config' => '������������ �� ������������',
        'Information about the Stat' => '���������� ������� ������������',
        'Exchange Axis' => '������� �� �����',
        'Configurable params of static stat' => '�������������� ��������� �� ���������� ����������',
        'No element selected.' => '���� ������ �������',
        'maximal period from' => '���������� ������ ��',
        'to' => '��',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '��� ������ �� ��������� ��� ����� ���� �� ������������� ������������ ������ ������ �����. ���� �� ���������� ��������� �� �������� ������ �� �������������� ����� � ������������ ���� ����������.',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => '����������� ������ �� ��� ��: �.�. ��������!',
        'You need a email address (e. g. customer@example.com) in To:!' => '������ �� ��� ������� ����� � ������ ��: (�������� support@hebros.bg)!',
        'Bounce ticket' => '������� �����',
        'Ticket locked!' => '������� � ��������!',
        'Ticket unlock!' => '������� � ��������!',
        'Bounce to' => '����� ��',
        'Next ticket state' => '�������� ��������� �� �������',
        'Inform sender' => '�� �� ��������� ����������',
        'Send mail!' => '��������� �����!',

        # Template: AgentTicketBulk
        'You need to account time!' => '��� �� �������� �� ����� �� �������',
        'Ticket Bulk Action' => '����������� ��������',
        'Spell Check' => '�������� �� ���������',
        'Note type' => '��������� � �� ���',
        'Next state' => '�������� ���������',
        'Pending date' => '� �������� - ����',
        'Merge to' => '����������� �',
        'Merge to oldest' => '',
        'Link together' => '',
        'Link to Parent' => '',
        'Unlock Tickets' => '���������� �� ������',

        # Template: AgentTicketClose
        'Ticket Type is required!' => '',
        'A required field is:' => '',
        'Close ticket' => '��������� �� ������',
        'Previous Owner' => '�������� ����������',
        'Inform Agent' => '���������� ������',
        'Optional' => '����������',
        'Inform involved Agents' => '���������� ���������� ������',
        'Attach' => '�������� ����',

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
        'All customer tickets.' => '������ ������ �� ���� ����������',

        # Template: AgentTicketEmail
        'Compose Email' => '��������� �� e-mail',
        'new ticket' => '��� �����',
        'Refresh' => '�����������',
        'Clear To' => '���������� �� ������: to',
        'All Agents' => '������ ������',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => '��� �� �����������',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => '��������� ������ �� ������',

        # Template: AgentTicketHistory
        'History of' => '������� ��',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => '���������� � �� ���������� ����� �� ������',
        'Ticket Merge' => '����������� �� �����',

        # Template: AgentTicketMove
        'Move Ticket' => '����������� �� ������',

        # Template: AgentTicketNote
        'Add note to ticket' => '�������� �� ������� ��� ������',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => '����� �� ����� �������',
        'Service Time' => 'Service Time',
        'Update Time' => '����� �� ������ �� �������',
        'Solution Time' => '����� �� ��������',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => '������ �� �������� ���-����� ���� �����!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => '������',
        'Change search options' => '�������� �� ���������',
        'Tickets' => '������',
        'of' => '��',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => '��������� �� �������',
        'Contact customer' => '������� � �������',
        'Change queue' => '������� �� ��������',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => '��������� ���������',
        'up' => '������',
        'sort downward' => '��������� ���������',
        'down' => '������',
        'Escalation in' => '���������� �� ���������� �',
        'Locked' => '��������',

        # Template: AgentTicketOwner
        'Change owner of ticket' => '������� ������������ �� ������',

        # Template: AgentTicketPending
        'Set Pending' => '� �������� - ��������',

        # Template: AgentTicketPhone
        'Phone call' => '��������� ��������',
        'Clear From' => '��������� �������',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => '���������',

        # Template: AgentTicketPrint
        'Ticket-Info' => '���������� �� ������',
        'Accounted time' => '�������� �����',
        'Linked-Object' => '������� �����',
        'by' => '��',

        # Template: AgentTicketPriority
        'Change priority of ticket' => '������� �� ���������� �� ������',

        # Template: AgentTicketQueue
        'Tickets shown' => '�������� ������',
        'Tickets available' => '������� ������',
        'All tickets' => '������ ������',
        'Queues' => '������',
        'Ticket escalation!' => '��������� (����������� �� ����������) �� ������!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '������� �� ����������� �� �����',

        # Template: AgentTicketSearch
        'Ticket Search' => '������� �� �����',
        'Profile' => '������',
        'Search-Template' => '������',
        'TicketFreeText' => '������ �� ������',
        'Created in Queue' => '�������� � ������',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '',
        'No change time settings.' => '',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => '������ �� ���������',
        'Save Search-Profile as Template?' => '���������� �� ������� ���� ������',
        'Yes, save it with name' => '��, ������� � �����',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => '�������������',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => '',
        'Collapse View' => '',
        'Split' => '����������',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => '',
        'Save filter settings as default' => '',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

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

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => '�����',
        'No time settings.' => '���� ������� ��������',

        # Template: CustomerTicketSearchOpenSearchDescription

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
        'Welcome to %s' => '����� ����� � %s',
        'Accept license' => '�������� �� �������',
        'Don\'t accept license' => '��������� �� �������',
        'Admin-User' => '�������������',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '',
        'Admin-Password' => '������ �� �������������',
        'Database-User' => '���������� �� ����',
        'default \'hot\'' => '�� ������������',
        'DB connect host' => '���� �� ������ ��� ����',
        'Database' => '���� �����',
        'Default Charset' => '�������� ����� �� ������������',
        'utf8' => '',
        'false' => 'false',
        'SystemID' => '�������� ID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(�������������� �� ���������. ����� ����� �� ����� � ����� http ����� ������� � ���� �����)',
        'System FQDN' => '�������� FQDN',
        '(Full qualified domain name of your system)' => '(����� ������������� ��� (FQDN) �� ���������)',
        'AdminEmail' => 'Admin �-����',
        '(Email of the system admin)' => '(����� �� ���������� �������������)',
        'Organization' => '�����������',
        'Log' => '������',
        'LogModule' => '�������� �����',
        '(Used log backend)' => '(��������� �������� �����)',
        'Logfile' => '�������� ����',
        '(Logfile just needed for File-LogModule!)' => '(���������� ���� � ��������� ���� �� File-LogModule)',
        'Webfrontend' => 'Web-����',
        'Use utf-8 it your database supports it!' => '����������� UTF-8 ��� ������ ����/���� ����� �� ��������',
        'Default Language' => '���� �� ������������',
        '(Used default language)' => '(�������� ���� �� ������������)',
        'CheckMXRecord' => 'CheckMXRecord (�������� MX �����)',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(��������� MX �������� �� ������ �� �������-��������. �� ����������� CheckMXRecord, ��� ������ OTRS ������ � �� ����������� �����! ',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '�� �� ���� �� ���������� OTRS, ��� ������ �� ��������, ���� superuser root � ��������� ��� (Terminal/Shell) �������� �������',
        'Restart your webserver' => '������� �� web �������',
        'After doing so your OTRS is up and running.' => '���� ������������ �� ����, ������ OTRS � ������� ��������������.',
        'Start page' => '������� ��������',
        'Your OTRS Team' => '������ OTRS ����',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => '������ ����������',

        # Template: Notify
        'Important' => '�����',

        # Template: PrintFooter
        'URL' => '�����',

        # Template: PrintHeader
        'printed by' => '���������� ��',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => '������� �������� �� OTRS',
        'Counter' => '�����',

        # Template: Warning

        # Template: YUI

        # Misc
        'Edit Article' => '�������� �� �����',
        'Create Database' => '��������� �� ���� �����',
        'DB Host' => '���� �� ������ �����',
        'Ticket Number Generator' => '��������� �� ������ �� ������',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(������������� �� ������. ��������: \'Ticket#\', \'Call#\' or \'MyTicket#\')',
        'Create new Phone Ticket' => '��������� �� ��� ����� �� ������ �� ��������� ��������',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '�� ���� ����� ���� �� ����������� keyring-� ������������ � Kernel/Config.pm.',
        'Symptom' => '�������',
        'U' => '�',
        'Site' => '�����',
        'Customer history search (e. g. "ID342425").' => '������� � ��������� �� ������� (�������� "ID342425").',
        'Can not delete link with %s!' => '',
        'for agent firstname' => '�� ����� ���',
        'Close!' => '���������!',
        'No means, send agent and customer notifications on changes.' => '�� �������� �� �� ����� ��������� ����������� (���: ����� � ���: ������) ������ ��� �������.',
        'A web calendar' => '��������',
        'to get the realname of the sender (if given)' => '�� �� �������� ���������� ��� �� ��������� (��� � ���������)',
        'OTRS DB Name' => '��� �������� ��� OTRS ���� �����',
        'Notification (Customer)' => '����������� (������/������-����������)',
        'Please select only one element or turn of the button \'Fixed\'.' => '���� �������� ���� ���� ������� ��� ��������� ������� \'Fixed\'.',
        'Select Source (for add)' => '�������� �������� (�� ��������)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '�������� �� ������ (������: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>;, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Child-Object' => '�����-����',
        'Queue ID' => 'ID �� ������',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => '��������������� ��������� (������: <OTRS_CONFIG_HttpType>)',
        'System History' => '�������� �������',
        'customer realname' => '��� �� �����������',
        'Pending messages' => '��������� � ��������',
        'Port' => '����',
        'Modules' => '������',
        'for agent login' => '�� ����� ��������� ����',
        'Keyword' => '������� ����',
        'Close type' => '��� ���������',
        'DB Admin User' => '���������� �� ������ �����',
        'for agent user id' => '�� ����� ������������� ID',
        'Change user <-> group settings' => '������� �� ���������� <-> ��������� �� �����',
        'Problem' => '�������',
        'Escalation' => '',
        '"}' => '"}',
        'Order' => '���',
        'next step' => '�������� ������',
        'Follow up' => '������ �� �������',
        'Customer history search' => '������� � ��������� �� �������',
        'Admin-Email' => '����� �� Admin',
        'Stat#' => '����������#',
        'Create new database' => '��������� �� ���� ���� �����',
        'ArticleID' => '������������� �� ������',
        'Keywords' => '������� ����',
        'Ticket Escalation View' => '',
        'Today' => '',
        'No * possible!' => '�� � �������� ���������� �� ������ *!',
        'Options ' => '�����',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '�������� �� ������� ���������� ����� � ������� ���� �������� (������: <OTRS_CURRENT_USERFIRSTNAME>).',
        'Message for new Owner' => '��������� �� ��� ����������',
        'to get the first 5 lines of the email' => '�� �� �������� ������� 5 ���� �� �������',
        'Sort by' => '��������� ��',
        'OTRS DB Password' => '������ �� OTRS ���� �����',
        'Last update' => '�������� ����������',
        'Tomorrow' => '',
        'to get the first 20 character of the subject' => '�� �� �������� ������� 20 ������� �� ���� "�������"',
        'Select the customeruser:service relations.' => '',
        'DB Admin Password' => '������ �� �������������� �� ������',
        'Advisory' => '�����������',
        'Drop Database' => '�������� ������ �����',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '��� ���� �� ���������� ���� �, ���� �� �������� ���� ������� (����������� ����� �����). ��� ���� �� �������� ���� ��� ��� ��������. ���� ���� ���� �� �������� �������� �� ����������. ����� ������� �� ���� ������� ���� ����� �� �������� ���������. ��� �� �������� �������, ������ �������� �� �������� �� ����� �������� �� ����� �� ������������ �� ������������, ����� � ����� ��� ������� ������� ��� ������������ �� ������������.',
        'FileManager' => '������ �������',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => '�������� �� ������� ������-���������� (������: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => '� �������� - ���',
        'Comment (internal)' => '�������� (��������)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '�������� �� ����������� �� ������ (������: <OTRS_OWNER_USERFIRSTNAME>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '�������� �� ������ (������: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(��������� ������ �� ������ �� �������)',
        'Reminder' => '���������',
        'Incident' => '��������',
        'OTRS DB connect host' => '���� ������� ��� OTRS ���� �����',
        'All Agent variables.' => '������ ���������� �������� � ������',
        ' (work units)' => ' (������� �������)',
        'Next Week' => '',
        'All Customer variables like defined in config option CustomerUser.' => '������ ���������� ������� �� ���� � ���������������� ��������� CustomerUser',
        'accept license' => '�������� �������',
        'for agent lastname' => '�� ����� �������',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => '�������� �� ����������� ����� � ������� ���� �������� (������: <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => '��������� ���������',
        'Parent-Object' => '�����-�������',
        'Of couse this feature will take some system performance it self!' => '���� ������������� �� ����� ������� �� ������������������ �� ���������!',
        'Ticket Hook' => '���������� �� �������',
        'IMAPS' => 'IMAPS',
        'Detail' => '�����������',
        'Your own Ticket' => '������ �������� �����',
        'Don\'t forget to add a new user to groups!' => '�� ���������� �� �������� ������ ���������� � ������� �����!',
        'Open Tickets' => '�������� ������',
        'You have to select two or more attributes from the select field!' => '������ �� �������� ��� ��� ������ �������� �� ������!',
        'System Settings' => '�������� ���������',
        'WebWatcher' => 'WebWatcher',
        'Finished' => '����������',
        'Account Type' => '��� �� �������',
        'D' => '�',
        'All messages' => '������ ���������',
        'System Status' => '�������� ������',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '�������� �� ������ (������: <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Artefact' => '��������',
        'Object already linked as %s.' => '',
        'A article should have a title!' => '����������� ������ �� ��� ��������',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '��������������� ��������� (������: <OTRS_CONFIG_HttpType>).',
        'All email addresses get excluded on replaying on composing and email.' => '',
        'don\'t accept license' => '�� �������� �������',
        'A web mail client' => 'Web-������� e-mail ������',
        'IMAP' => 'IMAP',
        'Compose Follow up' => '��������� ������������ �� �������',
        'WebMail' => 'WebMail',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => '�������� �� ����������� �� ������ (������: <OTRS_OWNER_UserFirstname>)',
        'DB Type' => '��� �� ������ �����',
        'Termin1' => 'Termin1',
        'kill all sessions' => '��������� �� ������ ������ �����',
        'to get the from line of the email' => '�� �� �������� ��� �� �������',
        'Solution' => '�������',
        'QueueView' => '������� �� ��������',
        'Select Box' => '����� �� SQL ������',
        'New messages' => '���� ���������',
        'Can not create link with %s!' => '',
        'Linked as' => '',
        'Welcome to OTRS' => '����� ����� � OTRS',
        'tmp_lock' => '�������� ����������',
        'modified' => '����������',
        'Delete old database' => '��������� �� ����� ���� �����',
        'A web file manager' => 'Web-������� ������ ��������',
        'Have a lot of fun!' => '������� ������!',
        'send' => '�������',
        'Send no notifications' => '�� �� �� �������� �����������',
        'Note Text' => '����� �� ���������',
        'POP3 Account Management' => '���������� �� POP3 �������',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '�������� �� ������� ������-���������� (������: <OTRS_CUSTOMER_DATA_USERFIRSTNAME>).',
        'System State Management' => '���������� �� �������� ���������',
        'OTRS DB User' => '���������� �� OTRS ���� �����',
        'Mailbox' => '�������� �����',
        'PhoneView' => '������� �� ����������',
        'maximal period form' => '����� �� ���������� ��������',
        'TicketID' => '������������� �� �����',
        'Management Summary' => '����� �� �����������',
        'Escaladed Tickets' => '',
        'Yes means, send no agent and customer notifications on changes.' => '�� �������� �� ���� �� ����� ��������� ����������� (���: ����� � ���: ������) ������ ��� �������.',
        'POP3' => 'POP3',
        'POP3S' => 'POP3S',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => '������� �� � ����� "<OTRS_TICKET>" � ��������� ��� "<OTRS_BOUNCE_TO>". �������� �� � ���� ����� �� ������ ����������',
        'Ticket Status View' => '������� �� �������',
        'Modified' => '����������',
        'Ticket selected for bulk action!' => '������ � �������� �� ����������� ��������',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
    };
    # $$STOP$$
    return;
}

1;
