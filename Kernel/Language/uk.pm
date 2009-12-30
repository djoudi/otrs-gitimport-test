# --
# Kernel/Language/uk.pm - provides Ukrainian language translation
# Copyright (C) 2009 - Belskii Artem <admin at alliancebank.org.ua>
# --
# $Id: uk.pm,v 1.2 2009-12-30 12:28:13 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::uk;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Fri Jul 17 17:59:25 2009

    # possible charsets
    $Self->{Charset} = ['cp1251', 'Windows-1251', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%T, %A %D %B, %Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
        # Template: Aaabase
        'Yes' => '���',
        'No' => '�i',
        'yes' => '���',
        'no' => '�i',
        'Off' => '���������',
        'off' => '���������',
        'On' => '��������',
        'on' => '��������',
        'top' => '� �������',
        'end' => '� �i����',
        'Done' => '������.',
        'Cancel' => '���������',
        'Reset' => '�i�������',
        'last' => '������i�',
        'before' => '�����',
        'day' => '����',
        'days' => '��i',
        'day(s)' => '��i',
        'hour' => '������',
        'hours' => '�����',
        'hour(s)' => '���.',
        'minute' => '��.',
        'minutes' => '��.',
        'minute(s)' => '��.',
        'month' => '�i�.',
        'months' => '�i�.',
        'month(s)' => '�i�.',
        'week' => '�������',
        'week(s)' => '�������',
        'year' => '�i�.',
        'years' => '�i�.',
        'year(s)' => '�i�.',
        'second(s)' => '���.',
        'seconds' => '���.',
        'second' => '���.',
        'wrote' => '�������(�)',
        'Message' => '���i��������',
        'Error' => '�������',
        'Bug Report' => '��i� ��� �������',
        'Attention' => '�����',
        'Warning' => '������������',
        'Module' => '������',
        'Modulefile' => '���� ������',
        'Subfunction' => '�i������i�',
        'Line' => '�����',
        'Setting' => '��������',
        'Settings' => '���������',
        'Example' => '�������',
        'Examples' => '��������',
        'valid' => '�i�����',
        'invalid' => '���i�����',
        '* invalid' => '* ���i�����',
        'invalid-temporarily' => '��������� ���i�����',
        ' 2 minutes' => ' 2 �������',
        ' 5 minutes' => ' 5 ������',
        ' 7 minutes' => ' 7 ������',
        '10 minutes' => '10 ������',
        '15 minutes' => '15 ������',
        'Mr.' => '',
        'Mrs.' => '',
        'Next' => '������',
        'Back' => '�����',
        'Next...' => '������...',
        '...Back' => '...�����',
        '-none-' => '-����-',
        'none' => '�i',
        'none!' => '����!',
        'none - answered' => '���� . �i����i�i',
        'please do not edit!' => '�� ����������!',
        'Addlink' => '������ ���������',
        'Link' => '��\'�����',
        'Unlink' => '�i��\'�����',
        'Linked' => '��\'������',
        'Link (Normal)' => '��\'���� (��������)',
        'Link (Parent)' => '��\'���� (������)',
        'Link (Child)' => '��\'���� (�������)',
        'Normal' => '���������',
        'Parent' => '������',
        'Child' => '�������',
        'Hit' => '��������',
        'Hits' => '��������',
        'Text' => '�����',
        'Standard' => '',
        'Lite' => '����������',
        'User' => '����������',
        'Username' => 'I�\'� �����������',
        'Language' => '����',
        'Languages' => '����',
        'Password' => '������',
        'Salutation' => '�i�����',
        'Signature' => '�i����',
        'Customer' => '��i���',
        'Customerid' => 'ID �����������',
        'Customerids' => 'ID ����������i�',
        'customer' => '��i���',
        'agent' => '�����',
        'system' => '�������',
        'Customer Info' => 'I�������i� ��� ��i����',
        'Customer Company' => '������i� ��i����',
        'Company' => '������i�',
        'go!' => '��!',
        'go' => '��',
        'All' => '��i',
        'all' => '��i',
        'Sorry' => ' �������',
        'update!' => '��������!',
        'update' => '��������',
        'Update' => '��������',
        'Updated!' => '��������!',
        'submit!' => '������!',
        'submit' => '������',
        'Submit' => '������',
        'change!' => '��i����!',
        'Change' => '��i����',
        'change' => '��i��',
        'click here' => '������i�� ���',
        'Comment' => '��������',
        'Valid' => '�i�����',
        'Invalid Option!' => '���i���� ��������!',
        'Invalid time!' => '���i���� ���!',
        'Invalid date!' => '���i��� ����!',
        'Name' => 'I�\'�',
        'Group' => '�����',
        'Description' => '����',
        'description' => '����',
        'Theme' => '����',
        'Created' => '���������',
        'Created by' => '��������',
        'Changed' => '��i�����',
        'Changed by' => '��i����',
        'Search' => '�����',
        'and' => '�',
        'between' => ' �i�',
        'Fulltext Search' => '�������������� �����',
        'Data' => '����',
        'Options' => '������������',
        'Title' => '���������',
        'Item' => '�����',
        'Delete' => '��������',
        'Edit' => '����������',
        'View' => '��������',
        'Number' => '�����',
        'System' => '�������',
        'Contact' => '�������',
        'Contacts' => '��������',
        'Export' => '�������',
        'Up' => '������',
        'Down' => '����',
        'Add' => '������',
        'Added!' => '������!',
        'Category' => '�������i�',
        'Viewer' => '��������',
        'Expand' => '����������',
        'New message' => '���� ���i��������',
        'New message!' => '���� ���i��������!',
        'Please answer this ticket(s) to get back to the normal queue view!' => '�i����i����� �� �i ������ ��� �����i� �� ���������� ��������� ����� !',
        'You got new message!' => ' � ��� ���� ���i��������!',
        'You have %s new message(s)!' => '�i���i��� ����� ���i�������: %s',
        'You have %s reminder ticket(s)!' => '�i���i��� ����������: %s!',
        'The recommended charset for your language is %s!' => '������������� ��������� ��� ���� ����: %s',
        'Passwords doesn\'t match! Please try it again!' => '���i���� ������!',
        'Password is already in use! Please use an other password!' => '������ ��� ���������������! ��������� ��������������� i���� ������',
        'Password is already used! Please use an other password!' => '������ ��� ����������������! ��������� ��������������� i���� ������',
        'You need to activate %s first to use it!' => '��� �����i��� �������� ���������� %s ��� ��������������� ��',
        'No suggestions' => '���� ��������i�',
        'Word' => '�����',
        'Ignore' => 'I���������',
        'replace with' => '���i���� ��',
        'There is no account with that login name.' => '���� ����������� � ����� i�����.',
        'Login failed! Your username or password was entered incorrectly.' => '������� i������i���i�! ��������� ����������� i�\'� ��� ������!',
        'Please contact your admin' => '��\'��i���� � ���i�i���������',
        'Logout successful. Thank you for using OTRS!' => '�� ���i��� ������ i� �������. ������ �� ������������ �������� OTRS !',
        'Invalid Sessionid!' => '���i���� i������i����� ���i�!',
        'Feature not active!' => '�����i� �� ����������!',
        'Notification (Event)' => '���i�������� ��� ���i�',
        'Login is needed!' => ' �����i��� ������ ���i�',
        'Password is needed!' => ' �����i��� ������ ������',
        'License' => '�i����i�',
        'Take this Customer' => '������� ����� ��i����',
        'Take this User' => '������� ����� �����������',
        'possible' => '�������',
        'reject' => '�i�������',
        'reverse' => '���������',
        'Facility' => '�������������',
        'Timeover' => '��� ��i������� �����',
        'Pending till' => ' ������� ��',
        'Don\'t work with Userid 1 (System account)! Create new users!' => '�� �������� � Userid 1 (��������� ���i����� �����)! �����i�� i����� �����������!',
        'Dispatching by email To: field.' => '������������ �� ����������i To: ������������ �����',
        'Dispatching by selected Queue.' => '������������ �� �����i� ����i',
        'No entry found!' => '����� �� ���������',
        'Session has timed out. Please log in again.' => '����� ����������. ��������� ��i��� ������.',
        'No Permission!' => '���� �������!',
        'To: (%s) replaced with database email!' => 'To: (%s) ���i���� �� e-mail ���� �����!',
        'Cc: (%s) added database email!' => 'Cc: (%s) ������� e-mail ���� �����!',
        '(Click here to add)' => '(������i�� ���� ��� ������)',
        'Preview' => '��������',
        'Package not correctly deployed! You should reinstall the Package again!' => '����� ������������ ����������! �� ������i �������������� �����!',
        'Added User "%s"' => '������� ���������� "%s"',
        'Contract' => '��������',
        'Online Customer: %s' => '��i��� ������: %s',
        'Online Agent: %s' => '���������� ������: %s',
        'Calendar' => '��������',
        'File' => '����',
        'Filename' => 'I�\'� �����',
        'Type' => '���',
        'Size' => '����i�',
        'Upload' => '�����������',
        'Directory' => '�������',
        'Signed' => '�i�������',
        'Sign' => '�i�������',
        'Crypted' => '�����������',
        'Crypt' => '����������',
        'Office' => '��i�',
        'Phone' => '�������',
        'Fax' => '����',
        'Mobile' => '���i����� �������',
        'Zip' => 'I�����',
        'City' => '�i���',
        'Street' => '������',
        'Country' => '�����',
        'Location' => ' �i��� ������������',
        'installed' => '�����������',
        'uninstalled' => '��i�����������',
        'Security Note: You should activate %s because application is already running!' => '������������ ��� �������: �� ������i ���������� .%s., ���� �� ������� ��� ���������!',
        'Unable to parse Online Repository index document!' => '��������� �������� i�������� ���� ��������� ���������i�!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '���� �����i� ��� ���������� ���������� � ����� ��������� ���������i�, ��� � ������ ��� i���� ���������!',
        'No Packages or no new Packages in selected Online Repository!' => '���� �����i� ��� ����� �����i� � �������� ��������� ���������i�!',
        'printed at' => '����������� �',
        'Dear Mr. % s,' => '�������� %s,',
        'Dear Mrs. % s,' => '������� %s,',
        'Dear %s,' => '�������� %s, ',
        'Hello %s,' => '³����, %s,',
        'This account exists.' => '��� ���i����� ����� ��� i���.',
        'New account created. Sent Login-Account to %s.' => '��������� ����� ���i����� �����. ���i ��� ����� � ������� �i��������i �� �������: %s.',
        'Please press Back and try again.' => '������i�� .�����. i ��������� �� ���',
        'Sent password token to: %s' => '���� ��� ��������� ������ ������ �i��������� �� �������: %s',
        'Sent new password to: %s' => '����� ������ �i���������� �� �������: %s',
        'Upcoming Events' => '��������i ���i�',
        'Event' => '���i�',
        'Events' => '���i�',
        'Invalid Token!' => '���i���� ����� !',
        'more' => '���i',
        'For more info see:' => '��������� i�������i� ����������� �� �������:',
        'Package verification failed!' => '������� �����i��� �i�i�����i ������',
        'Collapse' => '��������',
        'Shown' => '��������',
        'News' => '������',
        'Product News' => '������ ��� �������',
        'OTRS News' => '������ OTRS',
        '7 Day Stats' => '���������� �� 7 ���',
        'Bold' => '���i�������',
        'Italic' => '������',
        'Underline' => '�i����������',
        'Font Color' => '���i� ������',
        'Background Color' => '���i� ���',
        'Remove Formatting' => '�������� ������������',
        'Show/Hide Hidden Elements' => '����� �������� �������i�',
        'Align Left' => ' �� �i���� ����',
        'Align Center' => ' �� ������',
        'Align Right' => ' �� ������� ����',
        'Justify' => ' �� �����i',
        'Header' => '���������',
        'Indent' => '��i������ �i�����',
        'Outdent' => '�������� �i�����',
        'Create an Unordered List' => '�������� ������������� ������',
        'Create an Ordered List' => '�������� ����������� ������',
        'HTML Link' => '��������� HTML',
        'Insert Image' => '�������� ����������',
        'CTRL' => 'Ctrl',
        'SHIFT' => 'Shift',
        'Undo' => '���������',
        'Redo' => '���������',

        # Template: Aaamonth
        'Jan' => '�i�.',
        'Feb' => '���.',
        'Mar' => '���.',
        'Apr' => '��i�.',
        'May' => '����.',
        'Jun' => '����.',
        'Jul' => '���.',
        'Aug' => '����.',
        'Sep' => '���.',
        'Oct' => '����.',
        'Nov' => '����.',
        'Dec' => '����.',
        'January' => '�i����',
        'February' => '�����',
        'March' => '��������',
        'April' => '��i����',
        'May_long' => '�������',
        'June' => '�������',
        'July' => '������',
        'August' => '������',
        'September' => '��������',
        'October' => '�������',
        'November' => '��������',
        'December' => '�������',

        # Template: Aaanavbar
        'Admin-Area' => '���i�i��������� �������',
        'Agent-Area' => '����������',
        'Ticket-Area' => '������',
        'Logout' => '���i�',
        'Agent Preferences' => '������������ �����������',
        'Preferences' => '����������',
        'Agent Mailbox' => ' ������� �������� �����������',
        'Stats' => '����������',
        'Stats-Area' => '����������',
        'Admin' => '���i�i���������',
        'Customer Users' => '��i����',
        'Customer Users <-> Groups' => '����� ��i���i�',
        'Users <-> Groups' => '������������ ����',
        'Roles' => '���i',
        'Roles <-> Users' => '���i <-> ����������i',
        'Roles <-> Groups' => '���i <-> �����',
        'Salutations' => '�i�����',
        'Signatures' => '�i�����',
        'Email Addresses' => '������ email',
        'Notifications' => '���i��������',
        'Category Tree' => 'I�����i� �������i�',
        'Admin Notification' => '���i�������� ���i�i���������',

        # Template: Aaapreferences
        'Preferences updated successfully!' => '������������ ���i��� �������i',
        'Mail Management' => '��������� ������',
        'Frontend' => '����� �����������',
        'Other Options' => 'I��i ������������',
        'Change Password' => '�����i���� ������',
        'New password' => '����� ������',
        'New password again' => '������i�� ����� ������',
        'Select your Queueview refresh time.' => '��� ��������� ���i���� ����',
        'Select your frontend language.' => '���� i���������',
        'Select your frontend Charset.' => '���������',
        'Select your frontend Theme.' => '���� i���������',
        'Select your frontend Queueview.' => '���� ���i���� ����.',
        'Spelling Dictionary' => '�������',
        'Select your default spelling dictionary.' => '�������� �������',
        'Max. shown Tickets a page in Overview.' => '����������� �i���i��� ������ ��� �����i �����',
        'Can\'t update password, your new passwords do not match! Please try again!' => '��������� �����i���� ������, �����i �� ��i�������!',
        'Can\'t update password, invalid characters!' => '��������� �����i���� ������, ���i��� ���������!',
        'Can\'t update password, must be at least %s characters!' => '��������� �����i���� ������, ������ ������� ���� �� ���� %s ������i�!',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => '��������� �����i���� ������, �����i��� 2 ������� � �������� � 2 . � ��������� ���i�����!',
        'Can\'t update password, needs at least 1 digit!' => '��������� �����i���� ������, ������� ���� �������i� �� �i�i��� 1 �����!',
        'Can\'t update password, needs at least 2 characters!' => '��������� �����i���� ������, �����i��� �i�i��� 2 �������!',

        # Template: Aaastats
        'Stat' => '����������',
        'Please fill out the required fields!' => '��������� ����\'�����i ����!',
        'Please select a file!' => '�����i�� ����!',
        'Please select an object!' => '�����i�� ��\'���!',
        'Please select a graph size!' => '�����i�� ����i� ����i��!',
        'Please select one element for the X-axis!' => '�����i�� ���� ������� ��� ��i X',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => '�����i�� �i���� ���� ������� ��� ��i�i�� ������ \'Fixed\' � �������� ���i!',
        'If you use a checkbox you have to select some attributes of the select field!' => '���� �� ������������� �������i ���i�����, �� ������i ������� �i���� �����i� � �������� ����!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '������� �������� � ������ ���� ��� ��i�i�� ������ .Fixed.!',
        'The selected end time is before the start time!' => '���������� ��� ���i������ ���i�� �������!',
        'You have to select one or more attributes from the select field!' => '�� ������i ������� ���� ��� �i���� �����i� � �������� ����',
        'The selected Date isn\'t valid!' => '������ ���� ���i���!',
        'Please select only one or two elements via the checkbox!' => '�����i�� �i���� ���� ��� ��� ������, �������������� �������i',
        'If you use a time scale element you can only select one element!' => '���� �� ������������� ������� ���i���, �� ������ ������� �i���� ���� �����!',
        'You have an error in your time selection!' => '������� ����i��� ����',
        'Your reporting time interval is too small, please use a larger time scale!' => '���i�� ��i�����i ������� �����, ����i�� �i����� i�������',
        'The selected start time is before the allowed start time!' => '������� ��� ������� �������� �� ���i �����������!',
        'The selected end time is after the allowed end time!' => '������� ��� �i��� �������� �� ���i �����������!',
        'The selected time period is larger than the allowed time period!' => '������� ���i�� ���� �i����, �i� ���������� ���i��!',
        'Common Specification' => '�������� ������i���i�',
        'Xaxis' => '�i�� X',
        'Value Series' => '��� �������',
        'Restrictions' => '���������',
        'graph-lines' => '����i�',
        'graph-bars' => '�i��������',
        'graph-hbars' => '�i�i�����',
        'graph-points' => '��������',
        'graph-lines-points' => '����i� i� ��������� �i�������',
        'graph-area' => '� ���������',
        'graph-pie' => '�������',
        'extended' => 'I���',
        'Agent/Owner' => '����� (�������)',
        'Created by Agent/Owner' => '�������� ������� (���������)',
        'Created Priority' => '��i������',
        'Created State' => '����',
        'Create Time' => '��� ���������',
        'Customeruserlogin' => '���i� ��i����',
        'Close Time' => '��� ��������',
        'Ticketaccumulation' => '����������� ������',
        'Attributes to be printed' => '�������� ��� �������',
        'Sort sequence' => '������� ����������',
        'Order by' => '����������',
        'Limit' => '�i�i�',
        'Ticketlist' => '������ ������',
        'ascending' => ' �� ���������',
        'descending' => ' �� ��������',
        'First Lock' => '����� ����������',
        'Evaluation by' => '�����������',
        'Total Time' => '������ ����',
        'Ticket Average' => '������i� ��� �������� ������',
        'Ticket Min Time' => '�i�. ��� �������� ������',
        'Ticket Max Time' => '����. ��� �������� ������',
        'Number of Tickets' => '�i���i��� ������',
        'Article Average' => '������i� ��� �i� ���i����������',
        'Article Min Time' => '�i�. ��� �i� ���i����������',
        'Article Max Time' => '����. ��� �i� ���i����������',
        'Number of Articles' => '�i���i��� ���i�������',
        'Accounted time by Agent' => '������� �������� ���� �� �������',
        'Ticket/Article Accounted Time' => '������� �������� ���� �� ������ ��� ���i��������',
        'Ticketaccountedtime' => '������� �������� ����',
        'Ticket Create Time' => '��� ��������� ������',
        'Ticket Close Time' => '��� �������� ������',

        # Template: Aaaticket
        'Lock' => '���������',
        'Unlock' => '������������',
        'History' => 'I����i�',
        'Zoom' => '��������',
        'Age' => '�i�',
        'Bounce' => '���������',
        'Forward' => '���������',
        'From' => '�i��������',
        'To' => '���������',
        'Cc' => '���i�',
        'Bcc' => '������� ���i�',
        'Subject' => '����',
        'Move' => '�����i�����',
        'Queue' => '�����',
        'Priority' => '��i������',
        'Priority Update' => '��i���� ��i�������',
        'State' => '������',
        'Compose' => '��������',
        'Pending' => '�i�������',
        'Owner' => '�������',
        'Owner Update' => '����� �������',
        'Responsible' => '�i����i�������',
        'Responsible Update' => '����� �i����i�������',
        'Sender' => '�i��������',
        'Article' => '���i��������',
        'Ticket' => '������',
        'Createtime' => '��� ���������',
        'plain' => '���������',
        'Email' => 'Email',
        'email' => 'Email',
        'Close' => '�������',
        'Action' => '�i�',
        'Attachment' => '�����i������ ����',
        'Attachments' => '�����i����i �����',
        'This message was written in a character set other than your own.' => '�� ���i�������� �������� � ��������i. �i��i��� �i� ����.',
        'If it is not displayed correctly,' => '���� ����� �i����������� ����������,',
        'This is a' => '��',
        'to open it in a new window.' => '�i������ � ���i� �i��i',
        'This is a HTML email. Click here to show it.' => '��� ����������� ���� � ������i HTML. ������i�� ��� ��� ���������',
        'Free Fields' => '�i���� ����',
        'Merge' => '��\'������',
        'merged' => '��\'�������',
        'closed successful' => '�������� ���i���',
        'closed unsuccessful' => '�������� �����i���',
        'new' => '�����',
        'open' => '�i�������',
        'Open' => '�i������',
        'closed' => '��������',
        'Closed' => '��������',
        'removed' => '���������',
        'pending reminder' => '�i�������� �����������',
        'pending auto' => '����� �� ������������',
        'pending auto close+' => '����� �� ������������+',
        'pending auto close-' => '����� �� ������������-',
        'email-external' => '����i��i� email',
        'email-internal' => '�����i��i� email',
        'note-external' => '����i��� ���i���',
        'note-internal' => '�����i��� ���i���',
        'note-report' => ' ����������i�',
        'phone' => '���i���',
        'sms' => '���',
        'webrequest' => '���-������',
        'lock' => '����������',
        'unlock' => '�������������',
        'very low' => '���������',
        'low' => '�������',
        'normal' => '���������',
        'high' => '�������',
        'very high' => '���i��������',
        '1 very low' => '1 ���������',
        '2 low' => '2 �������',
        '3 normal' => '3 ���������',
        '4 high' => '4 �������',
        '5 very high' => '5 ���i��������',
        'Ticket "%s" created!' => '�������� ������ .%s..',
        'Ticket Number' => '����� ������',
        'Ticket Object' => '��\'��� ������',
        'No such Ticket Number "%s"! Can\'t link it!' => '������ � ������� .%s. �� i���, ��������� ��\'����� � ���!',
        'Don\'t show closed Tickets' => '�� ���������� ������i ������',
        'Show closed Tickets' => '���������� ������i ������',
        'New Article' => '���� ���i��������',
        'Email-Ticket' => '����',
        'Create new Email Ticket' => '�������� ���� ������',
        'Phone-Ticket' => '���������� ���i���',
        'Search Tickets' => '����� ������',
        'Edit Customer Users' => '���������� ��i���i�',
        'Edit Customer Company' => '���������� ������i� ��i���i�',
        'Bulk Action' => '������ �i�',
        'Bulk Actions on Tickets' => '������ �i� ��� ��������',
        'Send Email and create a new Ticket' => '�i�������� ���� i �������� ���� ������',
        'Create new Email Ticket and send this out (Outbound)' => '�������� ���� ������ email i �i�������� ��',
        'Create new Phone Ticket (Inbound)' => '�������� ���� ��������� ������',
        'Overview of all open Tickets' => '����� ��i� ������',
        'Locked Tickets' => '����������i ������',
        'Watched Tickets' => ' ������, �� �i���i����������, ',
        'Watched' => ', �� �i���i����������',
        'Subscribe' => '�i���������',
        'Unsubscribe' => '�i���������',
        'Lock it to work on it!' => '�����������, ��� ���������� ������!',
        'Unlock to give it back to the queue!' => '������������ � ��������� � �����!',
        'Shows the ticket history!' => '�������� i����i� ������!',
        'Print this ticket!' => '���� ������!',
        'Change the ticket priority!' => '��i���� ��i������!',
        'Change the ticket free fields!' => '��i���� �i���i ���� ������!',
        'Link this ticket to an other objects!' => '��\'����� ������ � i����� ��\'������!',
        'Change the ticket owner!' => '��i���� ��������!',
        'Change the ticket customer!' => '��i���� ��i����!',
        'Add a note to this ticket!' => '������ ���i��� �� ������!',
        'Merge this ticket!' => '��\'������ ������',
        'Set this ticket to pending!' => '��������� �� ������ � ����� ��i�������!',
        'Close this ticket!' => '������� ������!',
        'Look into a ticket!' => '����������� ������!',
        'Delete this ticket!' => '�������� ������!',
        'Mark as Spam!' => '��������� �� ����!',
        'My Queues' => '�� �����',
        'Shown Tickets' => '���������i ������',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '��� email � ������� ������ .<OTRS_TICKET>. ��\'������� � "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => '������ %s: ��� ����� �i����i�i ����� (%s)!',
        'Ticket %s: first response time will be over in %s!' => '������ %s: ��� ����� �i����i�i ���� ����� %s!',
        'Ticket %s: update time is over (%s)!' => '������ %s: ��� �i��������� ������ ����� (%s)!',
        'Ticket %s: update time will be over in %s!' => '������ %s: ��� �i��������� ������ ���� ����� %s!',
        'Ticket %s: solution time is over (%s)!' => '������ %s: ��� �i����� ������ ����� (%s)!',
        'Ticket %s: solution time will be over in %s!' => '������ %s: ��� �i����� ������ ���� ����� %s!',
        'There are more escalated tickets!' => '���������i��� ������ �i���� ����!',
        'New ticket notification' => '���i�������� ��� ���� ������',
        'Send me a notification if there is a new ticket in "My Queues".' => '���i�������� ��� ���i ������',
        'Follow up notification' => '���i�������� ��� �i���������',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => '���i����� ���i ���i��������, ���� ��i��� ���i���� �i����i�� i � ������� ������.',
        'Ticket lock timeout notification' => '���i�������� ��� ���i������ ������ ���������� ������ ��������',
        'Send me a notification if a ticket is unlocked by the system.' => '���i����� ���i ���i��������, ���� ������ ��i������ ��������.',
        'Move notification' => '���i�������� ��� �����i�����',
        'Send me a notification if a ticket is moved into one of "My Queues".' => '���i����� ���i ���i��������, ���� ������ �����i���� � ���� � ��� ����.',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '���i� ����, ��i ��� �i�������. ��� ������ ��������� ���i�������� ����������� ������, ��� ���i ������, �� ���i���� �� ��� ����.',
        'Custom Queue' => '�������� �����',
        'Queueview refresh time' => '��� �i��������� ���i���� ����',
        'Screen after new ticket' => '����i� �i��� ��������� ���� ������',
        'Select your screen after creating a new ticket.' => '�����i�� ����i� �i��� ��������� ���� ������',
        'Closed Tickets' => '������i ������',
        'Show closed tickets.' => '���������� ������i ������',
        'Max. shown Tickets a page in Queueview.' => '����������� �i���i��� ������ ��� ��������i �����',
        'Watch notification' => '���i�������� ��� �i��������i',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '���i����� ���i � ���������i ���i��������, ���� �������� ������, �� �i���i���������.',
        'Out Of Office' => '���i�������� ��� �i�����i���',
        'Select your out of office time.' => '����i�� ���i�� �i��������i',
        'Companytickets' => '������ ������i�',
        'CompanyTickets' => '������ ������i�',
        'Mytickets' => '�� ������',
        'MyTickets' => '�� ������',
        'New Ticket' => '���� ������',
        'Create new Ticket' => '�������� ���� ������',
        'Customer called' => '���i��� ��i����',
        'phone call' => '���������� ���i���',
        'Reminder Reached' => '�����������',
        'Reminder Tickets' => '������ � ������������',
        'Escalated Tickets' => '����������i ������',
        'New Tickets' => '���i ������',
        'Open Tickets / Need to be answered' => '�i�����i ������ ( ����i��� �i����i���)',
        'Tickets which need to be answered!' => '������, �� ��������� �i����i�i',
        'All new tickets!' => '��i ���i ������',
        'All tickets which are escalated!' => '��i �����������i ������',
        'All tickets where the reminder date has reached!' => '��i ������ � �����, �� �������, �����������',
        'Responses' => '�i����i�i',
        'Responses <-> Queue' => '�i����i�i <-> �����',
        'Auto Responses' => '�����i����i�i',
        'Auto Responses <-> Queue' => '�����i����i�i <-> �����',
        'Attachments <-> Responses' => '�����i����i ����� <-> �i����i�i',
        'History::Move' => '������ �����i���� � ����� .%s. (%s) i� ����� .%s. (%s).',
        'History::Typeupdate' => '��� ��i����� �� %s (ID=%s).',
        'History::Serviceupdate' => '����i� ��i����� �� %s (ID=%s).',
        'History::Slaupdate' => 'SLA ��i����� �� %s (ID=%s).',
        'History::Newticket' => '���� ������ [%s] (Q=%s;P=%s;S=%s).',
        'History::Followup' => '�i����i�� �� [%s]. % s',
        'History::Sendautoreject' => '�������������� �i��������� .%s..',
        'History::Sendautoreply' => '�����i����i�� �i��������� .%s..',
        'History::Sendautofollowup' => '�����i����i�� �i��������� .%s..',
        'History::Forward' => '�������������� .%s..',
        'History::Bounce' => '��������� .%s..',
        'History::Sendanswer' => '�i����i�� ��������� .%s..',
        'History::Sendagentnotification' => '%s: ���i�������� �i��������� �� %s.',
        'History::Sendcustomernotification' => '���i�������� �i��������� �� %s.',
        'History::Emailagent' => '��i�����i %s �i���������� ����.',
        'History::Emailcustomer' => '��������� ���� �i� %s.',
        'History::Phonecallagent' => '��i����i���� ��������� ��i�����i',
        'History::Phonecallcustomer' => '��i��� ��������� ���.',
        'History::Addnote' => '������ ���i��� (%s)',
        'History::Lock' => '����������� ������.',
        'History::Unlock' => '������������ ������.',
        'History::Timeaccounting' => '������ ������� ����: %s. ������ ������� ����: %s.',
        'History::Remove' => '%s',
        'History::Customerupdate' => '��i����: %s',
        'History::Priorityupdate' => '��i����� ��i������ � .%s. (%s) �� .%s. (%s).',
        'History::Ownerupdate' => '����� ������� .%s. (ID=%s).',
        'History::Loopprotection' => '������ �i� ����������! ����-�i����i�� �� .%s. �� �i����������.',
        'History::Misc' => '%s',
        'History::Setpendingtime' => '��������: %s',
        'History::Stateupdate' => '������i� ����: %s, ����� ����: %s',
        'History::Ticketfreetextupdate' => '��������: %s=%s;%s=%s;',
        'History::Webrequestcustomer' => '���-����� �����������.',
        'History::Ticketlinkadd' => ' �� ������ .%s. ������� ��\'����.',
        'History::Ticketlinkdelete' => '��\'���� i� ������� .%s. ��������.',
        'History::Subscribe' => '������ �i������ ��� ����������� .%s..',
        'History::Unsubscribe' => '�������� �i������ ��� ����������� .%s..',

        # Template: Aaaweekday
        'Sun' => '���i��',
        'Mon' => '�����i���',
        'Tue' => '�i������',
        'Wed' => '������  ',
        'Thu' => '������',
        'Fri' => '�\'������',
        'Sat' => '������',
        'Sat' => '������',

        # Template: Adminattachmentform
        'Attachment Management' => '��������� �����i������� �������',

        # Template: Adminautoresponseform
        'Auto Response Management' => '��������� �����i����i����',
        'Response' => '�i����i��',
        'Auto Response From' => '����������� �i����i�� �i�',
        'Note' => '�������',
        'Useable options' => '��������������i ���i�',
        'To get the first 20 character of the subject.' => '��� ������ ����i 20 ������i� ����',
        'To get the first 5 lines of the email.' => '��� ������ ����i 5 ����i� email',
        'To get the realname of the sender (if given).' => '��� ������ ������� i�\'� �i��������� (���� ���������)',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '���i ���i�������� (���������, <OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> i <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_Userfirstname>).' => '������i ���i ��� ��i���� (���������, <OTRS_CUSTOMER_DATA_Userfirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_Userfirstname>).' => '���i �������� ������ (���������, <OTRS_OWNER_Userfirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_Userfirstname>).' => '���i �i����i�������� �� ������ (���������, <OTRS_RESPONSIBLE_Userfirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_Userfirstname>).' => '���i ��������� �����������, ���� �������� �� �i� (���������, <OTRS_CURRENT_Userfirstname>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_Ticketnumber>, <OTRS_TICKET_Ticketid>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '���i ������ (���������, <OTRS_TICKET_Ticketnumber>, <OTRS_TICKET_Ticketid>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_Httptype>).' => '��������� ����i�����i� (���������, <OTRS_CONFIG_Httptype>).',

        # Template: Admincustomercompanyform
        'Customer Company Management' => '��������� ������i��� ��i���i�',
        'Search for' => '�����',
        'Add Customer Company' => '������ ������i� ��i����',
        'Add a new Customer Company.' => '������ ������i� ��i����',
        'List' => '������',
        'This values are required.' => '���� ���� ����\'������',
        'This values are read only.' => '���� ���� �i���� ��� �������',

        # Template: Admincustomeruserform
        'The message being composed has been closed.  Exiting.' => '���������� ���i�������� ���� �������. ���i�.',
        'This window must be called from compose window' => '�� �i��� ������� ����������� � �i��� ��������',
        'Customer User Management' => '��������� ������������� ( ��� ��i���i�)',
        'Add Customer User' => '������ ��i����',
        'Source' => '�������',
        'Create' => '��������',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '���������� ��i���� �����������, ��� ���������� ������ �� i����i� ��i���� � ������� ����� �������������� i��������',

        # Template: Admincustomerusergroupchangeform
        'Customer Users <-> Groups Management' => '��������� ������� ��i���i�',
        'Change %s settings' => '��i���� ���������: %s',
        'Select the user:group permissions.' => '������ � ������i ����������:�����.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '���� �i���� �� ������, �� ������ ������ ���������i ��� �����������',
        'Permission' => '����� �������',
        'ro' => '�i���� �������',
        'Read only access to the ticket in this group/queue.' => '����� �i���� �� ������� ������ � ���i� ����i/�����',
        'rw' => '�������/�����',
        'Full read and write access to the tickets in this group/queue.' => '����i ����� �� ������ � ���i� ����i/�����',

        # Template: Admincustomerusergroupform

        # Template: Admincustomeruserservice
        'Customer Users <-> Services Management' => '��i���� <-> ����i��',
        'Customeruser' => '��i���',
        'Service' => '����i�',
        'Edit default services.' => '����i�� �� �������������',
        'Search Result' => '��������� ������',
        'Allocate services to Customeruser' => '����\'����� ����i�� �� ��i����',
        'Active' => '��������',
        'Allocate Customeruser to service' => '����\'����� ��i���� �� ����i�i�',

        # Template: Adminemail
        'Message sent to' => '���i�������� �i��������� ���',
        'A message should have a subject!' => '���i�������� ������� ���� ���� ����!',
        'Recipients' => '���������i',
        'Body' => '�i�� �����',
        'Send' => '�i��������',

        # Template: Admingenericagent
        'Genericagent' => '������������ �������',
        'Job-List' => '������ �������',
        'Last run' => '������i� ������',
        'Run Now!' => '�������� �����!',
        'x' => 'x',
        'Save Job as?' => '�������� �������� ��?',
        'Is Job Valid?' => '���� �������� �i����?',
        'Is Job Valid' => '���� �������� �i����',
        'Schedule' => '�������',
        'Currently this generic agent job will not run automatically.' => '�� �������� ������ �� ����������� �����������',
        'To enable automatic execution select at least one value from minutes, hours and days!' => ' ��� ������������� ������� ����i�� �� �i�i��� ���� �i ������� � ��������, ��������� ��� ����',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '�������������� ����� � �����i (���������, .Mar*in. ��� .Baue*.)',
        '(e. g. 10*5155 or 105658*)' => '(���������, 10*5155 ��� 105658*)',
        '(e. g. 234321)' => '(���������, 234321)',
        'Customer User Login' => '���i� ��i����',
        '(e. g. U5150)' => '(���������, U5150)',
        'SLA' => '�i���� ��������������',
        'Agent' => '�����',
        'Ticket Lock' => '���������� ������',
        'Ticketfreefields' => '�i���i ���� ������',
        'Create Times' => '��� ���������',
        'No create time settings.' => ' ��� ���i�� ���� ���������',
        'Ticket created' => '������ ��������',
        'Ticket created between' => '������ �������� �i� ',
        'Close Times' => '��� ��������',
        'No close time settings.' => ' ��� ���i�� ���� ��������',
        'Ticket closed' => '������ �������',
        'Ticket closed between' => '������ ������� �i�',
        'Pending Times' => '���, ���� ����� ��� �i���������',
        'No pending time settings.' => ' ��� ���i�� ����, ���� ����� ��� �i���������',
        'Ticket pending time reached' => '������ ���� �i��������',
        'Ticket pending time reached between' => '������ ���� �i�������� �i�',
        'Escalation Times' => '��� �������i�',
        'No escalation time settings.' => ' ��� ���i�� ���� �������i�',
        'Ticket escalation time reached' => '������ ���� ������������',
        'Ticket escalation time reached between' => '������ ���� ������������ �i�',
        'Escalation - First Response Time' => '�������i� . ��� ����� �i����i�i',
        'Ticket first response time reached' => '����� �i����i��',
        'Ticket first response time reached between' => '����� �i����i�� �i�',
        'Escalation - Update Time' => '�������i� . ��� �i���������',
        'Ticket update time reached' => '������ ���� ��������',
        'Ticket update time reached between' => '������ ���� �������� �i�',
        'Escalation - Solution Time' => '�������i� . ��� �i�����',
        'Ticket solution time reached' => '������ ���� ���i����',
        'Ticket solution time reached between' => '������ ���� ���i���� �i�',
        'New Service' => '���� ������',
        'New SLA' => '����� SLA',
        'New Priority' => '����� ��i������',
        'New Queue' => '���� �����',
        'New State' => '����� ������',
        'New Agent' => '����� �����',
        'New Owner' => '����� �������',
        'New Customer' => '����� ��i���',
        'New Ticket Lock' => '����� ������ ������',
        'New Type' => '����� ���',
        'New Title' => '���� �����',
        'New Ticketfreefields' => '���i �i���i ���� ������',
        'Add Note' => '������ ���i���',
        'Time units' => '������i ����',
        'CMD' => '�������',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '�� ������� ���� ��������. ARG[0] . ����� ������. ARG[1] . id ������.',
        'Delete tickets' => '�������� ������',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => '�����! ��������i ������ ������ �������i � ����!',
        'Send Notification' => '�i��������� ���i��������',
        'Param 1' => '�������� 1',
        'Param 2' => '�������� 2',
        'Param 3' => '�������� 3',
        'Param 4' => '�������� 4',
        'Param 5' => '�������� 5',
        'Param 6' => '�������� 6',
        'Send agent/customer notifications on changes' => '�i��������� ���i�������� �������i ��� ��i���',
        'Save' => '��������',
        '%s Tickets affected! Do you really want to use this job?' => '%s ������ ���� ��i����! �������� �� ��������?',

        # Template: Admingroupform
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the Sysconfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '�����! ���� �� ��i���� i�\'� ����� .admin. �� ����, �� ���i����� ����� �i�� ����� ����i�����i� �������, � ��� �� ���� ���� ������� �� ������ ���i�i���������. ���� �� �i�������, ������i�� ������� ����� ����� (admin) ������ �������� SQL.',
        'Group Management' => '��������� �������',
        'Add Group' => '������ �����',
        'Add a new Group.' => '������ ���� �����',
        'The admin group is to get in the admin area and the stats group to get stats area.' => '����� admin ���� ��i�������� ���i�i���������, � ����� stats . ����������� ����������',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => '�������� ���i ����� ��� ����������� ���� ������� ������ �����i� (�i��i� �����i����, �i��i� ������i�, �i��i� ����i������� � �.�.)',
        'It\'s useful for ASP solutions.' => '�� �i������� ��� ���������i�.',

        # Template: Adminlog
        'System Log' => '��������� ������',
        'Time' => '���',

        # Template: Adminmailaccount
        'Mail Account Management' => '��������� ��������� ���i������ ��������',
        'Host' => '������',
        'Trusted' => '��������',
        'Dispatching' => '������������',
        'All incoming emails with one account will be dispatched in the selected queue!' => '��i ��i��i ����� i� ����������� ���i������ ������ ������ ���������i � ������ �����!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! Postmaster filter will be used anyway.' => '���� ��� ���i����� ����� ���������, � ������ ���� ����������� ���� ��������� X-OTRS ( ��� ��i������� � i���� �����)! �i���� Postmaster ���� ������������ � ������� ���i.',

        # Template: Adminnavigationbar
        'Users' => '����������i',
        'Groups' => '�����',
        'Misc' => '���������',

        # Template: Adminnotificationeventform
        'Notification Management' => '��������� ���i����������',
        'Add Notification' => '������ ���i��������',
        'Add a new Notification.' => '������ ���i��������',
        'Name is required!' => '����� ����\'������!',
        'Event is required!' => '���i� ����\'������!',
        'A message should have a body!' => '�i�� ����� �� ���� ���� ������i�!',
        'Recipient' => '���������',
        'Group based' => '�����',
        'Agent based' => '�����',
        'Email based' => '������ ���������� �����',
        'Article Type' => '��� ���i��������',
        'Only for Articlecreate Event.' => '�i���� ��� ��������i ���i�������',
        'Subject match' => '�i����i��i��� ���i',
        'Body match' => '�i����i��i��� �i�� �����',
        'Notifications are sent to an agent or a customer.' => '���i�������� �i��������i �������i ��� ��i�����i',
        'To get the first 20 character of the subject (of the latest agent article).' => '����i 20 ������i� ���� � ���������� ���i�������� ������',
        'To get the first 5 lines of the body (of the latest agent article).' => '����i 5 ����i� ���������� ���i�������� ������',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '���� ���i�������� (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>)',
        'To get the first 20 character of the subject (of the latest customer article).' => '����i 20 ������i� ���� � ���������� ���i�������� ��i����',
        'To get the first 5 lines of the body (of the latest customer article).' => '����i 5 ����i� ���������� ���i�������� ��i����',

        # Template: Adminnotificationform
        'Notification' => '���i��������',

        # Template: Adminpackagemanager
        'Package Manager' => '��������� ��������',
        'Uninstall' => '��������',
        'Version' => '����i�',
        'Do you really want to uninstall this package?' => '�������� ��� �����?',
        'Reinstall' => '��������������',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '�������������� ��� ����� (��i ��i��, �������i ������, ������ ��������i)?',
        'Continue' => '����������',
        'Install' => '����������',
        'Package' => '�����',
        'Online Repository' => '���������� ���������i�',
        'Vendor' => '������������',
        'Module documentation' => '����������i� ������',
        'Upgrade' => '��������',
        'Local Repository' => '��������� ���������i�',
        'Status' => '������',
        'Overview' => '�����',
        'Download' => '�����������',
        'Rebuild' => '������������',
        'Changelog' => '������ ��i�',
        'Date' => '����',
        'Filelist' => '������ ����i�',
        'Download file from package!' => '����������� ���� i� ������!',
        'Required' => ' ����i���',
        'Primarykey' => '��������� ����',
        'Autoincrement' => '����i��������',
        'SQL' => 'SQL',
        'Diff' => 'Diff',

        # Template: Adminperformancelog
        'Performance Log' => '������ �������������i',
        'This feature is enabled!' => '���� �����i� ����������!',
        'Just use this feature if you want to log each request.' => '�������������� �� �����i�, ���� �������� �������� ������ ����� � ������',
        'Activating this feature might affect your system performance!' => '��������� �i�� �����i� ���� ����������� �� �������������i ���� �������',
        'Disable it here!' => '�i�������� �����i�!',
        'This feature is disabled!' => '���� �����i� �i��������!',
        'Enable it here!' => '�������� �����i�!',
        'Logfile too large!' => '���� ������� ������� �������!',
        'Logfile too large, you need to reset it!' => '���� ������� ������� �������, ��� ����i��� �������� ����!',
        'Range' => '�i������',
        'Interface' => 'I��������',
        'Requests' => '�����i�',
        'Min Response' => '�i�i������� ��� �i����i�i',
        'Max Response' => '������������ ��� �i����i�i',
        'Average Response' => '������i� ��� �i����i�i',
        'Period' => '���i��',
        'Min' => '�i�',
        'Max' => '����',
        'Average' => '������',

        # Template: Adminpgpform
        'PGP Management' => '��������� �i������� PGP',
        'Result' => '���������',
        'Identifier' => 'I������i�����',
        'Bit' => '�i�',
        'Key' => '����',
        'Fingerprint' => '�������� �i������',
        'Expires' => '����',
        'In this way you can directly edit the keyring configured in Sysconfig.' => ' � ����� ������� �� ������ ��i���� ����i ����� � ����i�����i� �������',

        # Template: Adminpostmasterfilter
        'Postmaster Filter Management' => '��������� �i������ Postmaster',
        'Filtername' => 'I�\'� �i�����',
        'Stop after match' => '��������� �����i��� �i��� ��i��',
        'Match' => '�i����i��',
        'Value' => '��������',
        'Set' => '����������',
        'Do dispatch or filter incoming emails based on email X-Headers! Regexp is also possible.' => '��������� ��� �i��i����������� ��i��i ����� �� �����i ���i� ���������! ������� ������������ ���������� ��������.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '���� �� �������� �i��i����������i���� �� ������� ���������� �����, �������������� EMAILADDRESS:info@example.com � ����� From, To ��� Cc.',
        'If you use Regexp, you also can use the matched value in () as [***] in \'Set\'.' => '���� �� ������������� ��������i ���������, �� ������ ��������������� ��i��i � () �� [***] ��� ��������i �������',

        # Template: Adminpriority
        'Priority Management' => '��������� ��i���������',
        'Add Priority' => '�������� ��i������',
        'Add a new Priority.' => '�������� ��i������.',

        # Template: Adminqueueautoresponseform
        'Queue <-> Auto Responses Management' => '�����i����i�i � ����i',
        'settings' => '���������',

        # Template: Adminqueueform
        'Queue Management' => '��������� ������',
        'Sub-Queue of' => '�i������ �',
        'Unlock timeout' => '����� ����������',
        '0 = no unlock' => '0 . ��� ����������',
        'Only business hours are counted.' => '� ���i��� �i���� �������� ����.',
        '0 = no escalation' => '0 . ��� �������i�',
        'Notify by' => '���i�������� �i�',
        'Follow up Option' => '��������� �����i����i�i',
        'Ticket lock after a follow up' => '��������� ������ �i��� ��������� �i����i�i',
        'Systemaddress' => '�������� ������',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '���� ����� ���������� ������ � �� �i�������� �i����i�� ��i�����i �������� ������������� ����, �� ������ ����������� ������������ � ����� ��������� ��� i���� �����i�.',
        'Escalation time' => '��� �� �������i� ������',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => '���� ������ �� ���� ��������� � ������������ ���, ���������� �i���� �� ������',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '���� ������ �������, � ��i��� ���i���� ���i��������, �� ������ ���� ����������� ��� ������������ ��������',
        'Will be the sender address of this queue for email answers.' => '��������� ������ �i��������� ��� �i����i��� � �i� ����i.',
        'The salutation for email answers.' => '�i����� ��� ����i�',
        'The signature for email answers.' => '�i���� ��� ����i�',
        'Customer Move Notify' => '����i���� ��i���� ��� �����i�����',
        'OTRS sends an notification email to the customer if the ticket is moved.' => ' ��� �����i����i ������ ���� �i��������� ���i�������� ��i�����i.',
        'Customer State Notify' => '����i���� ��i���� ��� ��i�� �������',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => ' ��� ��i�i ������� ������ ���� �i��������� ���i�������� ��i�����i.',
        'Customer Owner Notify' => '����i���� ��i���� ��� ��i�� ��������',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => ' ��� ��i�i �������� ������ ���� �i��������� ���i�������� ��i�����i.',

        # Template: Adminqueueresponseschangeform
        'Responses <-> Queue Management' => '��������� �i����i���� � ������',

        # Template: Adminqueueresponsesform
        'Answer' => '�i����i��',

        # Template: Adminresponseattachmentchangeform
        'Responses <-> Attachments Management' => '��������� ������������ ������� � �i����i���',

        # Template: Adminresponseattachmentform

        # Template: Adminresponseform
        'Response Management' => '��������� �i����i����',
        'A response is default text to write faster answer (with default text) to customers.' => '�i����i�� . ������ �i����i�i ��i�����i',
        'Don\'t forget to add a new response a queue!' => '�� �������� ������ �i����i�� ��� �����!',
        'The current ticket state is' => '�������� ���� ������',
        'Your email address is new' => '���� ������ ���������� ����� �����',

        # Template: Adminroleform
        'Role Management' => '��������� ������',
        'Add Role' => '������ ����',
        'Add a new Role.' => '������ ����',
        'Create a role and put groups in it. Then add the role to the users.' => '�����i�� ���� i ������� � �� �����. ���i� ������i���� ���i �� ������������.',
        'It\'s useful for a lot of users and groups.' => '�� ������� ��� �����������i ����i�i ����������i� i ����',

        # Template: Adminrolegroupchangeform
        'Roles <-> Groups Management' => '��������� ������ � ������',
        'move_into' => '�����i�����',
        'Permissions to move tickets into this group/queue.' => '����� �� �����i����� ������ � �� �����/�����',
        'create' => '���������',
        'Permissions to create tickets in this group/queue.' => '����� �� ��������� ������ � �i� ����i/�����',
        'owner' => '�������',
        'Permissions to change the ticket owner in this group/queue.' => '����� �� ��i�� �������� ������ � �i� ����i/�����',
        'priority' => '��i������',
        'Permissions to change the ticket priority in this group/queue.' => '����� �� ��i�� ��i������� ������ � �i� ����i/�����',

        # Template: Adminrolegroupform
        'Role' => '����',

        # Template: Adminroleuserchangeform
        'Roles <-> Users Management' => '��������� ������ ����������i�',
        'Select the role:user relations.' => '�����i�� ��\'���� �i� ����� � ������������',

        # Template: Adminroleuserform

        # Template: Adminsalutationform
        'Salutation Management' => '��������� �i�������',
        'Add Salutation' => '������ �i�����',
        'Add a new Salutation.' => '������ �i�����',

        # Template: Adminsecuremode
        'Secure Mode need to be enabled!' => '��������� ����� ������� ���� ���������',
        'Secure mode will (normally) be set after the initial installation is completed.' => '�i��� ��������� ������� �������� �i����� � ��������� ��������� �����.',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '��������� ����� ������� ���� �i��������� ��� ������������i ����� ���-i��������',
        'If Secure Mode is not activated, activate it via Sysconfig because your application is already running.' => '���� ��������� ����� �� ���������, �������� ���� � ����i�����i� �������',

        # Template: Adminselectboxform
        'SQL Box' => '����� SQL',
        'CSV' => '',
        'HTML' => '',
        'Select Box Result' => '�����i�� i� ����',

        # Template: Adminservice
        'Service Management' => '��������� ����i����',
        'Add Service' => '������ ����i�',
        'Add a new Service.' => '������ ����i�',
        'Sub-Service of' => '��������� ����i� ���',

        # Template: Adminsession
        'Session Management' => '��������� ��������',
        'Sessions' => '������',
        'Uniq' => '��i�������',
        'Kill all sessions' => '��������� ��i ������',
        'Session' => '�����',
        'Content' => '��i��',
        'kill session' => '��������� �����',

        # Template: Adminsignatureform
        'Signature Management' => '��������� �i�������',
        'Add Signature' => '������ �i����',
        'Add a new Signature.' => '������ �i����',

        # Template: Adminsla
        'SLA Management' => '��������� SLA',
        'Add SLA' => '������ SLA',
        'Add a new SLA.' => '������ SLA',

        # Template: Adminsmimeform
        'S/MIME Management' => '��������� S/MIME',
        'Add Certificate' => '������ ������i���',
        'Add Private Key' => '������ �������� ����',
        'Secret' => '������',
        'Hash' => 'պ�',
        'In this way you can directly edit the certification and private keys in file system.' => '�� ������ ���������� ������i���� � ������i ����i ����� �� ������i� ������i',

        # Template: Adminstateform
        'State Management' => '��������� ���������',
        'Add State' => '������ ������',
        'Add a new State.' => '������ ������',
        'State Type' => '��� �������',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => '�������� ������� �� ������������� ����� i � ����i Kernel/Config.pm!',
        'See also' => '���. �����',

        # Template: Adminsysconfig
        'Sysconfig' => '����i�����i� �������',
        'Group selection' => '���i� �����',
        'Show' => '��������',
        'Download Settings' => '����������� ���������',
        'Download all system config changes.' => '����������� ��i ��i�� ����i�����i�, ������i � �������',
        'Load Settings' => '����������� ����i�����i� � �����',
        'Subgroup' => '�i������',
        'Elements' => '��������',

        # Template: Adminsysconfigedit
        'Config Options' => '��������� ����i�����i�',
        'Default' => ' �� �������������',
        'New' => '�����',
        'New Group' => '���� �����',
        'Group Ro' => '����� �i���� ��� �������',
        'New Group Ro' => '���� ����� �i���� ��� �������',
        'Navbarname' => 'I�\'� � ����',
        'Navbar' => '����',
        'Image' => '������',
        'Prio' => '��i������',
        'Block' => '����i�',
        'Accesskey' => '����i�� �������',

        # Template: Adminsystemaddressform
        'System Email Addresses Management' => '��������� ���������� �������� ���������� �����',
        'Add System Address' => '������ �������� ������',
        'Add a new System Address.' => '������ �������� ������',
        'Realname' => 'I�\'�',
        'All email addresses get excluded on replaying on composing an email.' => '��i ������, �� ������������ ��� �i����i�i �� ����',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => '��i ��i��i ���i�������� i� ��� ����������� ������ ���������i � ������ �����',

        # Template: Admintypeform
        'Type Management' => '��������� ������ ������',
        'Add Type' => '������ ���',
        'Add a new Type.' => '������ ���',

        # Template: Adminuserform
        'User Management' => '��������� �������������',
        'Add User' => '������ �����������',
        'Add a new Agent.' => '������ �����������',
        'Login as' => '����� ����� ������������',
        'Firstname' => 'I�\'�',
        'Lastname' => '��i�����',
        'Start' => '�������',
        'End' => '���i������',
        'User will be needed to handle tickets.' => ' ��� ������� ������ ����i��� ����� ������������.',
        'Don\'t forget to add a new user to groups and/or roles!' => '�� �������� ������ ������ ����������� � ����� � ���i!',

        # Template: Adminusergroupchangeform
        'Users <-> Groups Management' => '��������� ������� ����������i�',

        # Template: Adminusergroupform

        # Template: Agentbook
        'Address Book' => '������� �����',
        'Return to the compose screen' => '����������� � �i��� ��������� �����',
        'Discard all changes and return to the compose screen' => '�i��������� �i� ��i� ��i� i ����������� � �i��� ��������� �����',

        # Template: Agentcalendarsmall

        # Template: Agentcalendarsmallicon

        # Template: Agentcustomersearch

        # Template: Agentcustomertableview

        # Template: Agentdashboard
        'Dashboard' => '��������',

        # Template: Agentdashboardcalendaroverview
        'in' => '�',

        # Template: Agentdashboardimage

        # Template: Agentdashboardproductnotify
        '%s %s is available!' => '%s %s ���������',
        'Please update now.' => '�������� �����',
        'Release Note' => '����i��� �� ���i��',
        'Level' => '�i����',

        # Template: Agentdashboardrssoverview
        'Posted %s ago.' => '�����i������ %s ����',

        # Template: Agentdashboardticketgeneric

        # Template: Agentdashboardticketstats

        # Template: Agentdashboarduseronline

        # Template: Agentinfo
        'Info' => 'I�������i�',

        # Template: Agentlinkobject
        'Link Object: %s' => '��\'����� ��\'���: %s',
        'Object' => '��\'���',
        'Link Object' => '��\'����� ��\'���',
        'with' => '�',
        'Select' => '���i�',
        'Unlink Object: %s' => '��������� ����\'���� ��\'����: %s',

        # Template: Agentlookup
        'Lookup' => '�����',

        # Template: Agentnavigationbar

        # Template: Agentpreferencesform

        # Template: Agentspelling
        'Spell Checker' => '�����i��� ��������i�',
        'spelling error(s)' => '��������i��i �������',
        'or' => '���',
        'Apply these changes' => '����������� ��i��',

        # Template: Agentstatsdelete
        'Do you really want to delete this Object?' => '�������� ��� ��\'���?',

        # Template: Agentstatseditrestrictions
        'Select the restrictions to characterise the stat' => '�����i�� ��������� ��� ���������� ����������',
        'Fixed' => '�i�������',
        'Please select only one element or turn off the button \'Fixed\'.' => '�����i�� �i���� ���� ����� ��� �����i�� ��������� .�i�������..',
        'Absolut Period' => '������ ���i��',
        'Between' => ' �i�',
        'Relative Period' => '�i������� ���i��',
        'The last' => '������i�',
        'Finish' => '���i�����',
        'Here you can make restrictions to your stat.' => '��� �� ������ ������ ��������� � ���� ����������',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => '���� �� ��i�i�� ��������� ��������� "�i�������", ����������, ���� ���� ���������� ��i��, ����� �i���� ��������� �i����i����� ��������',

        # Template: Agentstatseditspecification
        'Insert of the common specifications' => '������� ��������i ������',
        'Permissions' => '�����',
        'Format' => '������',
        'Graphsize' => '����i� ����i��',
        'Sum rows' => '���� ����i�',
        'Sum columns' => '���� ������i�',
        'Cache' => '���',
        'Required Field' => '����\'������ ����',
        'Selection needed' => '�����i��� ���i�����',
        'Explanation' => '���������',
        'In this form you can select the basic specifications.' => '� ���i� ����i �� ������ ������� ������i ������.',
        'Attribute' => '�������',
        'Title of the stat.' => '����� ��i��',
        'Here you can insert a description of the stat.' => '��� �� ������ �������� ���� ��i��',
        'Dynamic-Object' => '�����i���� ��\'���',
        'Here you can select the dynamic object you want to use.' => '��� �� ������ ������� �����i���� ��\'���, ���� �� �������� ���������������',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '����������: �i���i��� �����i���� ��\'���i� �������� �i� �������.',
        'Static-File' => '��������� ����',
        'For very complex stats it is possible to include a hardcoded file.' => ' ��� ���� �������� ��i�i�, �������, �����i��� ��������������� ���������� ����',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => '���� ���������� ���� ���������, ���� ��������� ������, � ����� �� ������ ������� ����.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '������������ ���� �������. �� ������ ������� ���� ��� �i���� ����, ��� ��i� ��� ����� ��� �i���� ����������i�.',
        'Multiple selection of the output format.' => '���i� ������i� ������.',
        'If you use a graph as output format you have to select at least one graph size.' => '���� �� ������������� ����i��, ��� �����i��� ������� ���� � ���� ����i� ����i��.',
        'If you need the sum of every row select yes' => '���� ��� �����i���� ����� ���� �� ������� ������i, �����i�� .���.',
        'If you need the sum of every column select yes.' => '���� ��� �����i���� ����� ���� �� ������� �������, �����i�� .���.',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '�i���i��� ��i�i� ������ ���������. �� ��i������ �����i��� ������ ��i�i�.',
        '(Note: Useful for big databases and low performance server)' => '����i���: ������� ��� �i����� ��� ����� ��� ��� ������i� � ������� ����������i���.',
        'With an invalid stat it isn\'t feasible to generate a stat.' => ' ��� ������i ��i�� .���i�����. ��i� �� ���� ���� �����������.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '�� ������� ��������������� ��� ���������� ��i�� (���������, �i� �� �� �� �i��� ���������).',

        # Template: Agentstatseditvalueseries
        'Select the elements for the value series' => '�����i�� �������� ��� ����i�������i �������',
        'Scale' => '�������',
        'minimal' => '�i�i�������',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, Valueseries => Year).' => '����i��, �� ������� ��� ����i�������i ������� ������� ���� �i����, �i� ������� ��� ��i X (���������, �i�� � . �i����, ����i����i��� ������� . �i�).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '��� �� ������ ��������� ����i����i��� �������. � ��� � ������i��� ������� ���� ��� ��� ��������. ���i� �� ������ ������� �������� �������i�. �������� ������� �������� ���� �������i �� ������ ����i����i��� �������. ���� �� �� �����i�� ������� ��������, � ��i�i ������ ����������i ��i �������i ��������.',

        # Template: Agentstatseditxaxis
        'Select the element, which will be used at the X-axis' => '�����i�� �������, ���� ���� ������������ �� ��i �',
        'maximal period' => '������������ ���i��',
        'minimal scale' => '�i�i������� �������',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '��� �� ������ ��������� �������� ��� ��i X. �����i�� ���� �������, �������������� ���������. ���� �� �� �����i�� ������� ��������, � ��i�i ������ ����������i ��i �������i ��������.',

        # Template: Agentstatsimport
        'Import' => 'I�����',
        'File is not a Stats config' => '���� �� � ������ ����i�����i� ��i�i�',
        'No File selected' => '���� �� �������',

        # Template: Agentstatsoverview
        'Results' => '���������',
        'Total hits' => '�������� ��������',
        'Page' => '����i���',

        # Template: Agentstatsprint
        'Print' => '����',
        'No Element selected.' => '������� �� �������.',

        # Template: Agentstatsview
        'Export Config' => '������� ����i�����i�',
        'Information about the Stat' => 'I�������i� ��� ��i�',
        'Exchange Axis' => '���i���� ��i',
        'Configurable params of static stat' => '������������i ��������� ���������� ��i��',
        'No element selected.' => '�������� �� �����i',
        'maximal period from' => '������������ ���i�� �',
        'to' => '��',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '������� ���i �� ��������� ����, �� ������ ���������� ����� ��i�, ���� ��� �����i���. �i� ���i�i��������, �� ������� ��� ��i�, �������� ��i ���� ����� �� ������� �������.',

        # Template: Agentticketbounce
        'A message should have a To: recipient!' => '� ����i ������� ���� ���������� ���������!',
        'You need a email address (e. g. customer@example.com) in To:!' => '����i�� ������ ���������� ����� � ���� ���������� (���������, support@example.ru)!',
        'Bounce ticket' => '����������� ������',
        'Ticket locked!' => '������ �����������!',
        'Ticket unlock!' => '������ ������������!',
        'Bounce to' => '��������� ���',
        'Next ticket state' => '��������� ���� ������',
        'Inform sender' => 'I���������� �i���������',
        'Send mail!' => '�������� ����!',

        # Template: Agentticketbulk
        'You need to account time!' => '��� �����i��� ���������� ���!',
        'Ticket Bulk Action' => '������ �i�',
        'Spell Check' => '�����i��� ��������i�',
        'Note type' => '��� ���i���',
        'Next state' => '��������� ����',
        'Pending date' => '���� ��i�������',
        'Merge to' => '��\'������ �',
        'Merge to oldest' => '��\'������ i� ����� ������',
        'Link together' => '��\'�����',
        'Link to Parent' => '��\'����� � �����i������ ��\'�����',
        'Unlock Tickets' => '������������ ������',

        # Template: Agentticketclose
        'Ticket Type is required!' => ' ����i��� ������� ���!',
        'A required field is:' => '�����i��� ����:',
        'Close ticket' => '������� ������',
        'Previous Owner' => '��������i� �������',
        'Inform Agent' => '���i������ ������',
        'Optional' => '������\'������',
        'Inform involved Agents' => '���i������ �������, �� �����������, ',
        'Attach' => '��������� ����',

        # Template: Agentticketcompose
        'A message must be spell checked!' => '���i�������� ������� ���� �����i���� �� �������!',
        'Compose answer for ticket' => '��������� �i����i�� �� ������',
        'Pending Date' => '�������� ����',
        'for pending* states' => ' ��� ��������� ����i�* ',

        # Template: Agentticketcustomer
        'Change customer of ticket' => '��i���� ��i���� ������',
        'Set customer user and customer id of a ticket' => '������� ����������� ��i���� � i������i����� ����������� ������',
        'Customer User' => '���������� ��i����',
        'Search Customer' => '������ ��i����',
        'Customer Data' => '���i���i ���i ��i����',
        'Customer history' => 'I����i� ��i����',
        'All customer tickets.' => '��i ������ ��i����.',

        # Template: Agentticketemail
        'Compose Email' => '�������� ����',
        'new ticket' => '���� ������',
        'Refresh' => '��������',
        'Clear To' => '��������',
        'All Agents' => '��i ������',

        # Template: Agentticketescalation

        # Template: Agentticketforward
        'Article type' => '��� ���i��������',

        # Template: Agentticketfreetext
        'Change free text of ticket' => '��i���� �i����� ����� ������',

        # Template: Agenttickethistory
        'History of' => 'I����i�',

        # Template: Agentticketlocked

        # Template: Agentticketmerge
        'You need to use a ticket number!' => '��� �����i��� ��������������� ����� ������!',
        'Ticket Merge' => '��\'������� ������',

        # Template: Agentticketmove
        'Move Ticket' => '�����i����� ������',

        # Template: Agentticketnote
        'Add note to ticket' => '������ ���i��� �� ������',

        # Template: Agentticketoverviewmedium
        'First Response Time' => '��� �� ����� �i����i�i',
        'Service Time' => '��� ��������������',
        'Update Time' => '��� �� ��i�� ������',
        'Solution Time' => '��� �i����� ������',

        # Template: Agentticketoverviewmediummeta
        'You need min. one selected Ticket!' => '��� �����i��� ������� ���� � ���� ������!',

        # Template: Agentticketoverviewnavbar
        'Filter' => '�i����',
        'Change search options' => '��i���� ��������� ������',
        'Tickets' => '������',
        'of' => '��',

        # Template: Agentticketoverviewnavbarsmall

        # Template: Agentticketoverviewpreview
        'Compose Answer' => '�������� �i����i��',
        'Contact customer' => '��\'������� i� ��i�����',
        'Change queue' => '�����i����� � i��� �����',

        # Template: Agentticketoverviewpreviewmeta

        # Template: Agentticketoverviewsmall
        'sort upward' => '���������� �� ���������',
        'up' => '������',
        'sort downward' => '���������� �� ��������',
        'down' => '����',
        'Escalation in' => '�������i� �����',
        'Locked' => '����������',

        # Template: Agentticketowner
        'Change owner of ticket' => '��i���� �������� ������',

        # Template: Agentticketpending
        'Set Pending' => '��������� ��i�������',

        # Template: Agentticketphone
        'Phone call' => '���������� ���i���',
        'Clear From' => '�������� �����',

        # Template: Agentticketphoneoutbound

        # Template: Agentticketplain
        'Plain' => '���������',

        # Template: Agentticketprint
        'Ticket-Info' => 'I�������i� ��� ������',
        'Accounted time' => '��������� �� ������ ���',
        'Linked-Object' => '��\'������ ��\'���',
        'by' => '',

        # Template: Agentticketpriority
        'Change priority of ticket' => '��i���� ��i������ ������',

        # Template: Agentticketqueue
        'Tickets shown' => '�������i ������',
        'Tickets available' => '�������i ������',
        'All tickets' => '��i ������',
        'Queues' => '�����',
        'Ticket escalation!' => '������ ������������!',

        # Template: Agentticketresponsible
        'Change responsible of ticket' => '�����i���� �i����i�������� �� ������',

        # Template: Agentticketsearch
        'Ticket Search' => '����� ������',
        'Profile' => '���������',
        'Search-Template' => '������ ������',
        'Ticketfreetext' => '�i���i ���� ������',
        'Created in Queue' => '�������� � ����i',
        'Article Create Times' => '��� ��������� ���i��������',
        'Article created' => '���i�������� ��������',
        'Article created between' => '���i�������� �������� � ���i��',
        'Change Times' => '��� ��i�',
        'No change time settings.' => '�� ��i������ ��������� ����',
        'Ticket changed' => '������ ��i����',
        'Ticket changed between' => '������ ��i���� � ���i��',
        'Result Form' => '���i� ���������i�',
        'Save Search-Profile as Template?' => '�������� ��������� ������ �� �������?',
        'Yes, save it with name' => ' ���, �������� � i�����',

        # Template: Agentticketsearchopensearchdescriptionfulltext
        'Fulltext' => '��������������',

        # Template: Agentticketsearchopensearchdescriptionticketnumber

        # Template: Agentticketsearchresultprint

        # Template: Agentticketzoom
        'Expand View' => '��������',
        'Collapse View' => '�������',
        'Split' => '����i����',

        # Template: Agentticketzoomarticlefilterdialog
        'Article filter settings' => '�i���� ���i�������',
        'Save filter settings as default' => '�������� ����� �i����� ��� ������ �� �������������',

        # Template: Agentwindowtab

        # Template: AJAX

        # Template: Copyright

        # Template: Customeraccept

        # Template: Customercalendarsmallicon

        # Template: Customererror
        'Traceback' => '�i���������',

        # Template: Customerfooter
        'Powered by' => '�����������',

        # Template: Customerfootersmall

        # Template: Customerheader

        # Template: Customerheadersmall

        # Template: Customerlogin
        'Login' => '��i�',
        'Lost your password?' => '������ ��i� ������?',
        'Request new password' => '���i����� ����� ������',
        'Create Account' => '�������� ���i����� �����',

        # Template: Customernavigationbar
        'Welcome %s' => '³����, %s',

        # Template: Customerpreferencesform

        # Template: Customerstatusview

        # Template: Customerticketmessage

        # Template: Customerticketprint

        # Template: Customerticketsearch
        'Times' => '���',
        'No time settings.' => ' ��� ���������� ��������',

        # Template: Customerticketsearchopensearchdescription

        # Template: Customerticketsearchresultcsv

        # Template: Customerticketsearchresultprint

        # Template: Customerticketsearchresultshort

        # Template: Customerticketzoom

        # Template: Customerwarning

        # Template: Error
        'Click here to report a bug!' => '�i�������� ���i�������� ��� �������!',

        # Template: Footer
        'Top of Page' => '� ������� ����i���',

        # Template: Footersmall

        # Template: Header
        'Home' => '������� ����i���',

        # Template: Headersmall

        # Template: Installer
        'Web-Installer' => '��������� ����� ���-i��������',
        'Welcome to %s' => ' ������� ������� � %s',
        'Accept license' => '�������� ����� �i����i�',
        'Don\'t accept license' => '�� ���������� ����� �i����i�',
        'Admin-User' => '���i�i�������',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '���� ��� ���i�i�������� ���� ����� ������������ ������, ����i�� ���� ���. ���� �i, �����i�� ���� ������i�. � �i������� ������� �� ����������� �������� ������ ���i�i��������. I�������i� i� �i�� ���� ����� ������ � ����������i� �� ��������������i� ���i �����',
        'Admin-Password' => '������ ���i�i��������',
        'Database-User' => '���������� ���� �����',
        'default \'hot\'' => ' �� �������������: \'hot\'',
        'DB connect host' => '������ ���� �����',
        'Database' => 'I�\'� ���� �����',
        'Default Charset' => '��������� �� �������������',
        'utf8' => 'utf8',
        'false' => '�i',
        'Systemid' => '��������� ID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => 'I������i����� �������. ������ ����� ������ � ����� ���������� i� ����� �����)',
        'System FQDN' => '�������� FQDN',
        '(Full qualified domain name of your system)' => '����� ������� i�\'� (FQDN) ���� �������',
        'Adminemail' => '������ ���������� ����� ���i�i��������',
        '(Email of the system admin)' => '������ ���������� ����� ���������� ���i�i��������',
        'Organization' => '�����i���i�',
        'Log' => '������',
        'Logmodule' => '������ ������� ',
        '(Used log backend)' => '���������������� ������ �������',
        'Logfile' => '���� �������',
        '(Logfile just needed for File-logmodule!)' => '���� ������� �����i���� �i���� ��� ������ �������!',
        'Webfrontend' => '���-i��������',
        'Use utf-8 it your database supports it!' => '�������������� utf-8, ���� ���� ���� ����� �i������ �� ���������!',
        'Default Language' => '���� �� �������������',
        '(Used default language)' => '��������������� ���� �� �������������',
        'Checkmxrecord' => '�����i���� ������ MX',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use Checkmxrecord if your OTRS machine is behinde a dial-up line $!)' => '�����i���� M� ������ ������, �� ���� �i������������ email ��� �i����i�i. �� �������������� �� ������i���, ���� ������ � OTRS ��������� �� �������� ������!',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '��� ��������������� OTRS, �������� � ���������� ����� �i� ������� root �������� �������:',
        'Restart your webserver' => ' ��������� ����� ��� ���-������',
        'After doing so your OTRS is up and running.' => '�i��� ��� �i� ������� ��� ��������.',
        'Start page' => '������� ����i���',
        'Your OTRS Team' => '������� �����������i� OTRS',

        # Template: Linkobject

        # Template: Login

        # Template: Motd

        # Template: Nopermission
        'No Permission' => '����������� ������ �������',

        # Template: Notify
        'Important' => '�������',

        # Template: Printfooter
        'URL' => 'URL',

        # Template: Printheader
        'printed by' => '�����������',

        # Template: Publicdefault

        # Template: Redirect

        # Template: Richtexteditor

        # Template: Test
        'OTRS Test Page' => '������� ����i��� OTRS',
        'Counter' => '�i�������',

        # Template: Warning

        # Misc
        'Edit Article' => '���������� ������',
        'auto responses set!' => '������������ �����i����i���',
        'Create Database' => '�������� ����',
        'Ticket Number Generator' => '��������� �����i� ������',
        'Create new Phone Ticket' => '�������� ��������� ������',
        'Symptom' => '������',
        'U' => 'U',
        'Site' => '�i���',
        'Customer history search (e. g. "ID342425").' => '����� �� ��i���i (���������, .ID342425.).',
        'Can not delete link with %s!' => '��������� �������� ��\'���� � .%s.!',
        'for agent firstname' => 'i�\'� ��� ������',
        'Close!' => '�������!',
        'Subgroup \'' => '�i������ \'',
        'No means, send agent and customer notifications on changes.' => '.�i. . �i��������� ���i�������� ������� i ��i����� ��� ��i���',
        'A web calendar' => '��������',
        'to get the realname of the sender (if given)' => '�������� (���� �) i�\'� �i���������',
        'Notification (Customer)' => '���i�������� ��i�����i',
        'Select Source (for add)' => '���i� �������',
        'Involved' => '���������',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '���� ������ (���������, &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => ' ��\'��� �������',
        'Days' => '��i',
        'Locked tickets' => '����������i ������',
        'Queue ID' => 'ID �����',
        'System History' => 'I����i�',
        'customer realname' => 'I�\'� ��i����',
        'Pending messages' => '���i�������� �������',
        'Modules' => '�����i',
        'Keyword' => '������� �����',
        'Close type' => '��� ��������',
        'Change user <-> group settings' => '����� ����������i�',
        'Problem' => '��������',
        'for ' => ' ���',
        'Escalation' => '�������i�',
        '"}' => '',
        'Order' => '�������',
        'next step' => '��������� ����',
        'Follow up' => '�i����i��',
        'Customer history search' => '����� �� i����i� ��i����',
        '5 Day' => '5 ��i�',
        'Admin-Email' => 'Email ���i�i��������',
        'Stat#' => '��i� .',
        'Create new database' => '�������� ���� ���� �����',
        'Articleid' => 'ID ���i���',
        'Go' => '��������',
        'Keywords' => '������i �����',
        'Ticket Escalation View' => '��� �������i� ������',
        'Today' => '�������i',
        'Tommorow' => '������',
        'No * possible!' => ' �� ����� ��������������� ������ .*. !',
        'Options ' => '���i',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '���� i�������i� ��� �����������, ���� �������� �� �i� (���������, &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => '���i�������� ��� ������ ��������',
        'to get the first 5 lines of the email' => '�������� ����i 5 ����i� �����',
        'Sort by' => '���������� ��',
        'Last update' => '������� ��i��',
        'Tomorrow' => '������',
        'to get the first 20 character of the subject' => '�������� ����i 20 ������i� ����',
        'Select the customeruser:service relations.' => '�����i�� �i������� ��i���� � ������.',
        'Drop Database' => '�������� ���� �����',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '��� �� ������ ��������� �i�� X. � ��� � ������i��� ������� ���� ��� ��� ��������. ���i� �� ������ ������� �������� �������i�. �������� ������� �������� ���� �������i �� ������ ����i����i��� �������. ���� �� �� �����i�� ������� ��������, � ��i�i ������ ����������i ��i �������i ��������.',
        'Filemanager' => '��������� �������',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_Userfirstname>)' => '���� i�������i� ��� ����������� (���������, <OTRS_CUSTOMER_DATA_Userfirstname>)',
        'Pending type' => '��� ��i�������',
        'Comment (internal)' => '�������� (�����i��i�)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '���� i�������i� ��� �������� ������ (���������, &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'Minutes' => '�������',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '���� i�������i� ��� ������ (���������, <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '���������������� ������ �����i� ������',
        'Reminder' => '�����������',
        ' (work units)' => ' ( �����i ������i)',
        'Next Week' => ' ���������� �����',
        'All Customer variables like defined in config option Customeruser.' => '��i ��������i ���� i�������i� ��� ��i���� ������������ ���������� �����������.',
        'for agent lastname' => ' ��� ������ . ��i�����',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_Userfirstname>)' => '���� i�������i� ��� �����������, ���� �������� �� �i� (��������� <OTRS_CURRENT_Userfirstname>)',
        'Reminder messages' => '���i�������� � �������������',
        'Change users <-> roles settings' => '��i���� ������i�� ����� �� ������������',
        'Parent-Object' => ' ��\'���� ������',
        'Of couse this feature will take some system performance it self!' => '���� �����i� ����������� �������i �������!',
        'Ticket Hook' => '���i� ������',
        'Your own Ticket' => '���� ������ ������',
        'Detail' => '��������',
        'Ticketzoom' => '�������� ������',
        'Open Tickets' => '�i�����i ������',
        'Don\'t forget to add a new user to groups!' => '�� �������� ������ ������ ����������� � �����!',
        'Createticket' => '��������� ������',
        'You have to select two or more attributes from the select field!' => '��� �����i��� ������� ��� ��� �i��� �����i� � �������� ����!',
        'System Settings' => '�������i ���������',
        'Webwatcher' => '���-�������i���',
        'Hours' => '��������',
        'Finished' => '���i�����',
        'D' => 'D',
        'All messages' => '��i ���i��������',
        'Options of the ticket data (e. g. <OTRS_TICKET_Ticketnumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '���� i�������i� ��� ������ (���������, <OTRS_TICKET_Ticketnumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Object already linked as %s.' => '��\'��� ��� ���\'������ � %s.!',
        '7 Day' => '7 ��i�',
        'Ticket Overview' => '����� ������',
        'All email addresses get excluded on replaying on composing and email.' => '��i ��������i ������ ���������� ����� ������ ����������� � �i����i����� ����i.',
        'A web mail client' => '�������� ���-��i���',
        'Compose Follow up' => '�������� �i����i��',
        'Webmail' => '�����',
        'Options of the ticket data (e. g. <OTRS_TICKET_Ticketnumber>, <OTRS_TICKET_Ticketid>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '���� i�������i� ��� ������ (���������, <OTRS_TICKET_Ticketnumber>, <OTRS_TICKET_Ticketid>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Ticket owner options (e. g. <OTRS_OWNER_Userfirstname>)' => '���i� �������� ������ (��������� <OTRS_OWNER_Userfirstname>)',
        'kill all sessions' => '������� ��i ������i ������',
        'to get the from line of the email' => '��������� �����',
        'Solution' => '�i�����',
        'Queueview' => '�������� �����',
        'Select Box' => '������� SELECT',
        'New messages' => '���i ���i��������',
        'Can not create link with %s!' => '��������� �������� ��\'���� � %s.!',
        'Linked as' => '��\'������ ��',
        'Welcome to OTRS' => ' ������� ������� � OTRS',
        'modified' => '��i����',
        'Running' => '����������',
        'Have a lot of fun!' => '������������!',
        'send' => '�i��������',
        'Send no notifications' => '�� �i��������� ���i��������',
        'Note Text' => '����� ���i���',
        '3 Month' => '3 �i����',
        'POP3 Account Management' => '��������� ���i����� ������� POP3',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '���� i�������i� ��� ��i���� (���������, &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'Jule' => '������',
        'System State Management' => '��������� ���������� �������',
        'Mailbox' => ' ������� ��������',
        'Phoneview' => '������ �� ��������',
        'maximal period form' => '������������ ���i�� �',
        'Ticketid' => 'ID ������',
        'Mart' => '��������',
        'Escaladed Tickets' => '�������������� ������',
        'Yes means, send no agent and customer notifications on changes.' => '.���. . �� �i��������� ���i�������� ������� i ��i����� ��� ��i���.',
        'Change setting' => '��i���� ���������',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => '��� ���� i� ������� ������ "<OTRS_TICKET>" �i������ i ���������� �� ������� "<OTRS_BOUNCE_TO>". ���� �����, ��\'��i���� �� �i� �����i ��� �\'�������� ������. ',
        'Ticket Status View' => '�������� ������� ������',
        'Modified' => '��i����',
        'Ticket selected for bulk action!' => '������ ������ ��� ������ �i�!',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
        '��������� ����' => '³��������  �����',
        '������� ����' => '��������� ����',
        'QueueView' => '�������� ����',
        'CustomerID -ID' => '������ �볺���',
        '��������� ����' => '������� ��� ��������� ����',
        '�����������' => '���������� ��� �������',
        'TicketFreeText' => '���������� ����� � ������',
        '�������� �����/�������' => '�������� (�����/�������)',
        '�������� ��������� ������ �� �������' => '�������� ��������� ������ � ����� �������',
        '�� ��i������ ��������� ����' => '�� ����������� �������� ���� ��i�� � �������',
        'My Locked Tickets' => '�� ���������� ������',
        'QueueView refresh time' => '��� ������������� �������',
        'Select your QueueView refresh time' => '������ ��� ������������� ������� � �������� ������',
        '����i�� ���i�� �i��������i' => '����i�� ���i�� ���� �i��������i',
        '��������' => '�������',
        'I��i ������������' => 'I��i ������������',
        '���i�������� ��� �i���������' => '���i�������� ��� �i�����',
        '�����i�� ����i� �i��� ��������� ���� ������' => '�����i�� ����i�, �� ���� ����������, �i��� ��������� ���� ������',
        '��������� ����\'�����i ����' => '�������� ����\'�����i ����',
        '������' => '���',
        '�����' => '������',
        '���������� ��i���� �����������, ��� ���������� ������ �� i����i� ��i���� � ������� ����� �������������� i��������' => '��\'� ����������� ��i���� ������� ��� ����, ��� ���� ������ �� i����i� ��i���� �� ��� ����� ����� i�������� �����������',
        'StatusView' => '��������_�� ��������',
        'EscalationView' => '�������� ���������',

    };
    # $$STOP$$
    return;
}

1;
