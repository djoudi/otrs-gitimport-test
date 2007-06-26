# --
# Kernel/Language/ru.pm - provides ru language translation
# Copyright (C) 2003 Serg V Kravchenko <skraft at rgs.ru>
# Copyright (C) 2007 Andrey Feldman <afeldman at alt-lan.ru>
# --
# $Id: ru.pm,v 1.47 2007-06-26 16:30:14 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Language::ru;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.47 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*\$/$1/;

sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Tue May 29 15:22:57 2007

    # possible charsets
    $Self->{Charset} = ['cp1251', 'Windows-1251', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%T, %A %D %B, %Y �.';
    $Self->{DateFormatShort} = '%D.%M.%Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => '��',
        'No' => '���',
        'yes' => '��',
        'no' => '���',
        'Off' => '���������',
        'off' => '���������',
        'On' => '��������',
        'on' => '��������',
        'top' => '� ������',
        'end' => '� �����',
        'Done' => '������.',
        'Cancel' => '�����',
        'Reset' => '�������',
        'last' => '���������',
        'before' => '�����',
        'day' => '�����',
        'days' => '�����',
        'day(s)' => '����',
        'hour' => '���',
        'hours' => '�����',
        'hour(s)' => '�.',
        'minute' => '���.',
        'minutes' => '���.',
        'minute(s)' => '���.',
        'month' => '���.',
        'months' => '���.',
        'month(s)' => '���.',
        'week' => '���.',
        'week(s)' => '���.',
        'year' => '���.',
        'years' => '���.',
        'year(s)' => '���.',
        'second(s)' => '���.',
        'seconds' => '���.',
        'second' => '���.',
        'wrote' => '�������(�)',
        'Message' => '���������',
        'Error' => '������',
        'Bug Report' => '����� �� �������',
        'Attention' => '��������',
        'Warning' => '��������������',
        'Module' => '������',
        'Modulefile' => '����-������',
        'Subfunction' => '����������',
        'Line' => '�����',
        'Example' => '������',
        'Examples' => '�������',
        'valid' => '��������������',
        'invalid' => '����������������',
        '* invalid' => '* ����������������',
        'invalid-temporarily' => '�������� ����������������',
        ' 2 minutes' => ' 2 ������',
        ' 5 minutes' => ' 5 �����',
        ' 7 minutes' => ' 7 �����',
        '10 minutes' => '10 �����',
        '15 minutes' => '15 �����',
        'Mr.' => '',
        'Mrs.' => '',
        'Next' => '������',
        'Back' => '�����',
        'Next...' => '������...',
        '...Back' => '...�����',
        '-none-' => '-���-',
        'none' => '���',
        'none!' => '���!',
        'none - answered' => '��� - �������',
        'please do not edit!' => '�� �������������!',
        'AddLink' => '�������� ������',
        'Link' => '�������',
        'Linked' => '������',
        'Link (Normal)' => '����� (�������)',
        'Link (Parent)' => '����� (��������)',
        'Link (Child)' => '����� (�������)',
        'Normal' => '����������',
        'Parent' => '��������',
        'Child' => '�������',
        'Hit' => '���������',
        'Hits' => '���������',
        'Text' => '�����',
        'Lite' => '�����������',
        'User' => '������������',
        'Username' => '��� ������������',
        'Language' => '����',
        'Languages' => '�����',
        'Password' => '������',
        'Salutation' => '�����������',
        'Signature' => '�������',
        'Customer' => '������',
        'CustomerID' => 'ID ������������',
        'CustomerIDs' => '',
        'customer' => '������',
        'agent' => '�����',
        'system' => '�������',
        'Customer Info' => '���������� � �������',
        'Customer Company' => '�������� �������',
        'Company' => '��������',
        'go!' => '��!',
        'go' => '��',
        'All' => '���',
        'all' => '���',
        'Sorry' => '��������',
        'update!' => '��������!',
        'update' => '��������',
        'Update' => '��������',
        'submit!' => '������!',
        'submit' => '������',
        'Submit' => '������',
        'change!' => '��������!',
        'Change' => '���������',
        'change' => '���������',
        'click here' => '�������� �����',
        'Comment' => '�����������',
        'Valid' => '��������������',
        'Invalid Option!' => '�������� �����!',
        'Invalid time!' => '�������� �����!',
        'Invalid date!' => '�������� ����!',
        'Name' => '���',
        'Group' => '������',
        'Description' => '��������',
        'description' => '��������',
        'Theme' => '����',
        'Created' => '������',
        'Created by' => '�������',
        'Changed' => '�������',
        'Changed by' => '��������',
        'Search' => '�����',
        'and' => '�',
        'between' => '�����',
        'Fulltext Search' => '',
        'Data' => '����',
        'Options' => '���������',
        'Title' => '���������',
        'Item' => '�����',
        'Delete' => '�������',
        'Edit' => '�������������',
        'View' => '��������',
        'Number' => '�����',
        'System' => '�������',
        'Contact' => '�������',
        'Contacts' => '��������',
        'Export' => '�������',
        'Up' => '�����',
        'Down' => '����',
        'Add' => '��������',
        'Category' => '���������',
        'Viewer' => '�����������',
        'New message' => '����� ���������',
        'New message!' => '����� ���������!',
        'Please answer this ticket(s) to get back to the normal queue view!' => '�������� �� ��� ������ ��� �������� � �������� ��������� ������� !',
        'You got new message!' => '� ��� ����� ���������!',
        'You have %s new message(s)!' => '���������� ����� ���������: %s',
        'You have %s reminder ticket(s)!' => '���������� %s �����������!',
        'The recommended charset for your language is %s!' => '������������� ��������� ��� ������ ����� %s',
        'Passwords doesn\'t match! Please try it again!' => '�������� ������!',
        'Password is already in use! Please use an other password!' => '������ ��� ������������! ���������� ������������ ������ ������',
        'Password is already used! Please use an other password!' => '������ ��� �������������! ���������� ������������ ������ ������',
        'You need to activate %s first to use it!' => '��� ���������� ������� ������������ %s ����� ������������ ���',
        'No suggestions' => '��� �����������',
        'Word' => '�����',
        'Ignore' => '����������',
        'replace with' => '�������� ��',
        'There is no account with that login name.' => '��� ������������ � ����� ������.',
        'Login failed! Your username or password was entered incorrectly.' => '���������� �����������! ���� ��� ��� ������ �������!',
        'Please contact your admin' => '��������� � ���������������',
        'Logout successful. Thank you for using OTRS!' => '����� �������. ���������� �� ����������� �������� OTRS',
        'Invalid SessionID!' => '�������� ������������� ������!',
        'Feature not active!' => '������� �� ������������!',
        'Login is needed!' => '���������� ������ �����',
        'Password is needed!' => '���������� ������ ������',
        'License' => '��������',
        'Take this Customer' => '������� �������',
        'Take this User' => '������� ����� ������������',
        'possible' => '��������',
        'reject' => '����������',
        'reverse' => '�������',
        'Facility' => '��������������',
        'Timeover' => '����� �������� �������',
        'Pending till' => '� �������� ���',
        'Don\'t work with UserID 1 (System account)! Create new users!' => '�� ��������� � UserID 1 (��������� ������� ������)! �������� ������� ������������!',
        'Dispatching by email To: field.' => '��������������� �� ������ To: ������������ ������',
        'Dispatching by selected Queue.' => '��������������� �� ��������� �������',
        'No entry found!' => '������ �� �������',
        'Session has timed out. Please log in again.' => '������ ���������. ���������� ����� ������.',
        'No Permission!' => '��� �������!',
        'To: (%s) replaced with database email!' => 'To: (%s) �������� �� e-mail ���� ������!',
        'Cc: (%s) added database email!' => 'Cc: (%s) �������� e-mail ���� ������!',
        '(Click here to add)' => '(������� ���� ����� ��������)',
        'Preview' => '��������',
        'Package not correctly deployed! You should reinstall the Package again!' => '����� ���������� �����������!�� ������ �������������� �����!',
        'Added User "%s"' => '�������� ������������ "%s"',
        'Contract' => '��������',
        'Online Customer: %s' => '������ ������: %s',
        'Online Agent: %s' => '������������ ������: %s',
        'Calendar' => '���������',
        'File' => '����',
        'Filename' => '��� �����',
        'Type' => '���',
        'Size' => '������',
        'Upload' => '���������',
        'Directory' => '����������',
        'Signed' => '���������',
        'Sign' => '���������',
        'Crypted' => '�����������',
        'Crypt' => '����������',
        'Office' => '����',
        'Phone' => '�������',
        'Fax' => '����',
        'Mobile' => '��������� �������',
        'Zip' => '������',
        'City' => '�����',
        'Country' => '������',
        'installed' => '�����������',
        'uninstalled' => '����������������',
        'Security Note: You should activate %s because application is already running!' => '������� � ������������: �� ������ ������������ %s �.�. ���������� ��� ��������!',
        'Unable to parse Online Repository index document!' => '���������� ���������� ��������� ���� ������ �����������!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '��� ������� ��� ������������ Framework � ���� ������ �����������, �� ���� ������ ��� ������ Framework-��!',
        'No Packages or no new Packages in selected Online Repository!' => '��� ������� ��� ����� ������� � ��������� ������ �����������!',
        'printed at' => '���������� �',

        # Template: AAAMonth
        'Jan' => '������',
        'Feb' => '�������',
        'Mar' => '�����',
        'Apr' => '������',
        'May' => '���',
        'Jun' => '����',
        'Jul' => '����',
        'Aug' => '�������',
        'Sep' => '��������',
        'Oct' => '�������',
        'Nov' => '������',
        'Dec' => '�������',
        'January' => '������',
        'February' => '�������',
        'March' => '����',
        'April' => '������',
        'June' => '����',
        'July' => '����',
        'August' => '�������',
        'September' => '��������',
        'October' => '�������',
        'November' => '������',
        'December' => '�������',

        # Template: AAANavBar
        'Admin-Area' => '����������������� �������',
        'Agent-Area' => '������������',
        'Ticket-Area' => '������',
        'Logout' => '�����',
        'Agent Preferences' => '��������� ������������',
        'Preferences' => '������������',
        'Agent Mailbox' => '�������� ���� ������������',
        'Stats' => '����������',
        'Stats-Area' => '����������',
        'Admin' => '�����������������',
        'Customer Users' => '�������',
        'Customer Users <-> Groups' => '������ ��������',
        'Users <-> Groups' => '��������� �����',
        'Roles' => '����',
        'Roles <-> Users' => '���� <-> ������������' ,
        'Roles <-> Groups' => '���� <-> ������' ,
        'Salutations' => '�����������',
        'Signatures' => '�������',
        'Email Addresses' => 'Email ������',
        'Notifications' => '�����������',
        'Category Tree' => '����� ���������',
        'Admin Notification' => '����������� ���������������',

        # Template: AAAPreferences
        'Preferences updated successfully!' => '��������� ������� ���������',
        'Mail Management' => '���������� ������',
        'Frontend' => '����� ������������',
        'Other Options' => '������ ���������',
        'Change Password' => '������� ������',
        'New password' => '����� ������',
        'New password again' => '����� ������ ��������',
        'Select your QueueView refresh time.' => '�������� ����� ���������� �������� ��������.',
        'Select your frontend language.' => '�������� ��� ����.',
        'Select your frontend Charset.' => '�������� ���� ���������.',
        'Select your frontend Theme.' => '�������� ���� ����������',
        'Select your frontend QueueView.' => '�������� ���� ��� �������� ��������.',
        'Spelling Dictionary' => '�������',
        'Select your default spelling dictionary.' => '�������� �������� �������',
        'Max. shown Tickets a page in Overview.' => '����. ���-�� ������� �� �������� ��� ����������� �������',
        'Can\'t update password, passwords doesn\'t match! Please try it again!' => '���������� ������� ������, ������ ���������������!',
        'Can\'t update password, invalid characters!' => '���������� ������� ������, �������� ���������!',
        'Can\'t update password, need min. 8 characters!' => '���������� ������� ������, ���������� �� ����� 8 ��������!',
        'Can\'t update password, need 2 lower and 2 upper characters!' => '���������� ������� ������, ���������� 2 ������� � ������ � 2 � ������� ���������!',
        'Can\'t update password, need min. 1 digit!' => '���������� ������� ������, ������ ������������� ��� ������� 1 �����!',
        'Can\'t update password, need min. 2 characters!' => '���������� ������� ������, ���������� ������� 2 �������!',

        # Template: AAAStats
        'Stat' => '����������',
        'Please fill out the required fields!' => '����������, ��������� ����������� ����!',
        'Please select a file!' => '����������, �������� ����!',
        'Please select an object!' => '����������, �������� ������!',
        'Please select a graph size!' => '����������, �������� ������ �������!',
        'Please select one element for the X-axis!' => '����������, �������� ���� ������� ��� ��� X',
        'You have to select two or more attributes from the select field!' => '��� ���������� ������� ��� ��� ����� ������� �� ���������� ����!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => '����������, �������� ������ ���� ������� ��� ������� ���� \'Fixed\' � ���������� ����!',
        'If you use a checkbox you have to select some attributes of the select field!' => '���� �� ����������� �������, �� ������ ������� ��������� ������� �� ���������� ����!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '����������, �������� �������� � ��������� ���� ��� ������� ���� \'Fixed\'!',
        'The selected end time is before the start time!' => '��������� ����� ��������� �� ������� ������!',
        'You have to select one or more attributes from the select field!' => '�� ������ ������� ���� ��� ��������� ������� �� ���������� ����',
        'The selected Date isn\'t valid!' => '��������� ���� �������!',
        'Please select only one or two elements via the checkbox!' => '����������, �������� ������ ����� ��� ��� ������ ��������� ��������',
        'If you use a time scale element you can only select one element!' => '���� �� ����������� ������� ���������� ��������� , �� ������ ������� ������ ���� �������!',
        'You have an error in your time selection!' => '������ ������ �������',
        'Your reporting time interval is to small, please use a larger time scale!' => '��������� �������� ���������� ������� ���, ����������, �������� ������� ��������',
        'The selected start time is before the allowed start time!' => '��������� ����� ������ ������ ������� �� ������� ������������!',
        'The selected end time is after the allowed end time!' => '��������� ����� ����� ������ ������� �� ������� ������������!',
        'The selected time period is larger than the allowed time period!' => '��������� ������ ������� ������, ��� ����������� ������!',
        'Common Specification' => '����� ������������',
        'Xaxis' => '��� X',
        'Value Series' => '��� ��������',
        'Restrictions' => '�����������',
        'graph-lines' => '�������� ���������(�����)',
        'graph-bars' => '�����������',
        'graph-hbars' => '�������������� �����������',
        'graph-points' => '�������� ���������',
        'graph-lines-points' => '��������-�������� ���������',
        'graph-area' => '�������� ���������(� ��������)',
        'graph-pie' => '�������� ���������',
        'extended' => '�����������',
        'Agent/Owner' => '������������/��������',
        'Created by Agent/Owner' => '������� �������������/��������',
        'Created Priority' => '���������',
        'Created State' => '���������',
        'Create Time' => '����� ��������',
        'CustomerUserLogin' => '����� �������',
        'Close Time' => '����� ��������',

        # Template: AAATicket
        'Lock' => '����������',
        'Unlock' => '��������������',
        'History' => '�������',
        'Zoom' => '��������',
        'Age' => '�������',
        'Bounce' => '����������',
        'Forward' => '���������',
        'From' => '��',
        'To' => '���',
        'Cc' => '����� ���',
        'Bcc' => '������� �����',
        'Subject' => '����',
        'Move' => '�����������',
        'Queue' => '�������',
        'Priority' => '���������',
        'State' => '������',
        'Compose' => '�������',
        'Pending' => '��������',
        'Owner' => '��������',
        'Owner Update' => '����� ��������',
        'Responsible' => '�������������',
        'Responsible Update' => '����� �������������',
        'Sender' => '�����������',
        'Article' => '������',
        'Ticket' => '������',
        'Createtime' => '����� ��������',
        'plain' => '�������',
        'Email' => 'e-mail',
        'email' => 'e-mail',
        'Close' => '�������',
        'Action' => '��������',
        'Attachment' => '������������� ����',
        'Attachments' => '������������� �����',
        'This message was written in a character set other than your own.' => '��� ��������� �������� � ���������. �������� �� �����.',
        'If it is not displayed correctly,' => '���� ������ ����� ������������ �����������,',
        'This is a' => '���',
        'to open it in a new window.' => '������� � ������ ����',
        'This is a HTML email. Click here to show it.' => '���� e-mail � HTML �������. �������� ����� ��� ���������',
        'Free Fields' => '��������� ����',
        'Merge' => '����������',
        'merged' => '������������',
        'closed successful' => '������ �������',
        'closed unsuccessful' => '������ ���������',
        'new' => '�����',
        'open' => '��������',
        'closed' => '��������',
        'removed' => '���������',
        'pending reminder' => '���������� �����������',
        'pending auto' => '������� �� ����',
        'pending auto close+' => '������� �� ���� ��������+',
        'pending auto close-' => '������� �� ���� ��������-',
        'email-external' => '������� e-mail',
        'email-internal' => '���������� e-mail',
        'note-external' => '������� �������',
        'note-internal' => '���������� �������',
        'note-report' => '�������-�����',
        'phone' => '�������',
        'sms' => '���',
        'webrequest' => 'web-������',
        'lock' => '����������',
        'unlock' => '�������������',
        'very low' => '����� ������',
        'low' => '������',
        'normal' => '����������',
        'high' => '�������',
        'very high' => '����������������',
        '1 very low' => '1 ����� ������',
        '2 low' => '2 ������',
        '3 normal' => '3 ����������',
        '4 high' => '4 �������',
        '5 very high' => '5 ����������������',
        'Ticket "%s" created!' => '������ "%s" �������!',
        'Ticket Number' => '����� ������',
        'Ticket Object' => '������ ������',
        'No such Ticket Number "%s"! Can\'t link it!' => '������ � ������� "%s" �� ����������, ���������� ���������� ��!',
        'Don\'t show closed Tickets' => '�� ���������� �������� ������',
        'Show closed Tickets' => '���������� �������� ������',
        'New Article' => '����� ������',
        'Email-Ticket' => '������',
        'Create new Email Ticket' => '������� ����� ������',
        'Phone-Ticket' => '���������� ������',
        'Search Tickets' => '����� ������',
        'Edit Customer Users' => '������������� ��������',
        'Bulk-Action' => '�������� ��������',
        'Bulk Actions on Tickets' => '�������� �������� ��� ��������',
        'Send Email and create a new Ticket' => '��������� ������ � ������� ����� ������',
        'Create new Email Ticket and send this out (Outbound)' => '������� ����� e-mail ������ � �������� ��',
        'Create new Phone Ticket (Inbound)' => '������� ����� ���������� ������',
        'Overview of all open Tickets' => '����� ���� ������',
        'Locked Tickets' => '�������������� ������',
        'Watched Tickets' => '������������� ������',
        'Watched' => '�������������',
        'Subscribe' => '�����������',
        'Unsubscribe' => '����������',
        'Lock it to work on it!' => '������������� ����� ����������� ������!',
        'Unlock to give it back to the queue!' => '�������������� � ������� � �������!',
        'Shows the ticket history!' => '�������� ������� ������!',
        'Print this ticket!' => '������ ������!',
        'Change the ticket priority!' => '�������� ���������!',
        'Change the ticket free fields!' => '�������� ��������� ���� ������!',
        'Link this ticket to an other objects!' => '���������� ������ � ������� ���������!',
        'Change the ticket owner!' => '�������� ���������!',
        'Change the ticket customer!' => '�������� �������!',
        'Add a note to this ticket!' => '�������� ������� � ������!',
        'Merge this ticket!' => '���������� ������',
        'Set this ticket to pending!' => '��������� ��� ������ � ����� ��������!',
        'Close this ticket!' => '������� ������!',
        'Look into a ticket!' => '����������� ������!',
        'Delete this ticket!' => '������� ������!',
        'Mark as Spam!' => '�������� ��� Spam!',
        'My Queues' => '��� �������',
        'Shown Tickets' => '������������ ������',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '��� email � ������� ������ "<OTRS_TICKET>" ��������� � "<OTRS_MERGE_TO_TICKET>".' ,
        'Ticket %s: first response time is over (%s)!' => '������ %s: ����� ������� ������ ������� (%s)!',
        'Ticket %s: first response time will be over in %s!' => '������ %s: ����� ������� ������ ������� ����� %s!',
        'Ticket %s: update time is over (%s)!' => '������ %s: ����� ���������� ������ ������� (%s)!' ,
        'Ticket %s: update time will be over in %s!' => '������ %s: ����� ���������� ������ ������� ����� %s!' ,
        'Ticket %s: solution time is over (%s)!' => '������ %s: ����� ������� ������ ������� (%s)!',
        'Ticket %s: solution time will be over in %s!' => '������ %s: ����� ������� ������ ������� ����� %s!',
        'There are more escalated tickets!' => '�������������� ������ ������ ���!',
        'New ticket notification' => '����������� � ������ ������',
        'Send me a notification if there is a new ticket in "My Queues".' => '����������� � ����� �������',
        'Follow up notification' => '����������� �� �����������',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => '�������� ��� �����������, ���� ������ ������� ���������� � � ����������� ������.',
        'Ticket lock timeout notification' => '����������� � ��������� ����� ���������� ������ ��������',
        'Send me a notification if a ticket is unlocked by the system.' => '�������� ��� �����������, ���� ������ ����������� ��������.',
        'Move notification' => '����������� � �����������',
        'Send me a notification if a ticket is moved into one of "My Queues".' => '�������� ��� �����������, ���� ������ ���������� � ���� �� "���� ��������".',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '����� ��������, ������� ��� ����������. �� ����� ������ ������������ �� email, ���� ��� ������� ��������. ',
        'Custom Queue' => '�������������� (custom) �������',
        'QueueView refresh time' => '����� ���������� �������� ��������',
        'Screen after new ticket' => '������ ����� �������� ����� ������',
        'Select your screen after creating a new ticket.' => '�������� ������ ����� �������� ����� ������',
        'Closed Tickets' => '�������� ������',
        'Show closed tickets.' => '���������� �������� ������',
        'Max. shown Tickets a page in QueueView.' => '����. ���-�� ������ �� �������� � ��������� �������',
        'CompanyTickets' => '������ ��������',
        'MyTickets' => '��� ������',
        'New Ticket' => '����� ������',
        'Create new Ticket' => '������� ����� ������',
        'Customer called' => '������ �������',
        'phone call' => '���������� ������',
        'Responses' => '������',
        'Responses <-> Queue' => '������ <-> �������',
        'Auto Responses' => '����������',
        'Auto Responses <-> Queue' => '���������� ��������',
        'Attachments <-> Responses' => '������������� ����� <-> ������',
        'History::Move' => '������ ���������� � ������� "%s" (%s) �� ������� "%s" (%s).',
        'History::TypeUpdate' => '��� ������� �� %s (ID=%s).',
        'History::ServiceUpdate' => '������ ������� �� %s (ID=%s).',
        'History::SLAUpdate' => 'SLA ������� �� %s (ID=%s).',
        'History::NewTicket' => '�������� ������ [%s] (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => '����� �� [%s]. %s',
        'History::SendAutoReject' => 'AutoReject ������ "%s".',
        'History::SendAutoReply' => '��������� ������ "%s".',
        'History::SendAutoFollowUp' => 'AutoFollowUp ������ "%s".',
        'History::Forward' => '�������������� � "%s".',
        'History::Bounce' => 'Bounced to "%s".',
        'History::SendAnswer' => '��������� ��������� ��� "%s".',
        'History::SendAgentNotification' => '"%s"-����������� ���������� �� "%s".',
        'History::SendCustomerNotification' => '����������� ���������� �� "%s".',
        'History::EmailAgent' => '������� ���������� ���������.',
        'History::EmailCustomer' => '�������� ���������. %s',
        'History::PhoneCallAgent' => '��������� �������� �������',
        'History::PhoneCallCustomer' => '������ �������� ���.',
        'History::AddNote' => '��������� ������� (%s)',
        'History::Lock' => '���������� ������.',
        'History::Unlock' => '��������������� ������.',
        'History::TimeAccounting' => '��������� %s time-������. ����� %s time-������.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => '��������: %s',
        'History::PriorityUpdate' => '������� ��������� � "%s" (%s) �� "%s" (%s).',
        'History::OwnerUpdate' => '����� �������� "%s" (ID=%s).',
        'History::LoopProtection' => '������ �� ������������! ����-����� �� "%s" �� �������.',
        'History::Misc' => '%s',
        'History::SetPendingTime' => '���������: %s',
        'History::StateUpdate' => '������: "%s" �����: "%s"',
        'History::TicketFreeTextUpdate' => '���������: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Web-������ ������������.',
        'History::TicketLinkAdd' => '�������� ���� � ������ "%s".',
        'History::TicketLinkDelete' => '���� � ������ "%s" ������.',

        # Template: AAAWeekDay
        'Sun' => '�����������',
        'Mon' => '�����������',
        'Tue' => '�������',
        'Wed' => '�����  ',
        'Thu' => '�������',
        'Fri' => '�������',
        'Sat' => '�������',

        # Template: AdminAttachmentForm
        'Attachment Management' => '���������� �������������� �������',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => '���������� ������������',
        'Response' => '�����',
        'Auto Response From' => '�������������� ����� ��',
        'Note' => '�������',
        'Useable options' => '������������ �����',
        'To get the first 20 character of the subject.' => '����� ������ ������ 20 �������� ����',
        'To get the first 5 lines of the email.' => '����� ������ ������ 5 ����� email',
        'To get the realname of the sender (if given).' => '����� ������ �������� ��� �����������(���� �������)',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '����� ������ ����� ������ (�������� (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> � <OTRS_CUSTOMER_Body>).' ,
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => '����� ������� ������ ������� (�������� <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => '����� ��������� ������ (�������� <OTRS_OWNER_UserFirstname>).' ,
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => '����� �������������� �� ������ (�������� <OTRS_RESPONSIBLE_UserFirstname>).' ,
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => '����� �������� ������������, ������� �������� ��� ��������(�������� <OTRS_CURRENT_UserFirstname>).' ,
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '����� ������ ������ (�������� <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' ,
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' =>  '����� ������������ (�������� <OTRS_CONFIG_HttpType>).' ,

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '���������� ���������� ��������',
        'Add Customer Company' => '�������� �������� �������',
        'Add a new Customer Company.' => '�������� ����� �������� �������',
        'List' => '������',
        'This values are required.' => '������ �������� �����������',
        'This values are read only.' => '������ �������� ������ ��� ������',

        # Template: AdminCustomerUserForm
        'Customer User Management' => '���������� �������������� (��� ��������)',
        'Search for' => '������',
        'Add Customer User' => '�������� �������',
        'Source' => '��������',
        'Create' => '�������',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '���������� ������������ ������������ ����� �������� ���������� �������� � ������� ����� ���������������� ���������',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '���������� �������� ��������',
        'Change %s settings' => '�������� %s ��������',
        'Select the user:group permissions.' => '������� user:group ������.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '���� ������ �� �������, �� � ������ ������ ��� �������(������ ����� ���������� ��� ������������)',
        'Permission' => '�����',
        'ro' => '������ ������',
        'Read only access to the ticket in this group/queue.' => '����� ������ �� ������ ������ � ������ ������/�������',
        'rw' => '������/������',
        'Full read and write access to the tickets in this group/queue.' => '������ ����� �� ������ � ������ ������/�������',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminEmail
        'Message sent to' => '��������� ���������� ���',
        'Recipents' => '����������',
        'Body' => '���� ������',
        'Send' => '���������',

        # Template: AdminGenericAgent
        'GenericAgent' => '����������� �����',
        'Job-List' => '������ �����',
        'Last run' => '��������� ������',
        'Run Now!' => '��������� ������!',
        'x' => '',
        'Save Job as?' => '��������� ������ ���?',
        'Is Job Valid?' => '������ ������ �������������?',
        'Is Job Valid' => '������ ������ �������������',
        'Schedule' => '����������',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '�������������� ����� � ������ (�������� "Mar*in" ��� "Baue*")' ,
        '(e. g. 10*5155 or 105658*)' => '(�������� 10*5155 ��� 105658*)' ,
        '(e. g. 234321)' => '(�������� 234321)',
        'Customer User Login' => '����� �������',
        '(e. g. U5150)' => '(�������� U5150)' ,
        'Agent' => '������������',
        'Ticket Lock' => '�������� ������',
        'TicketFreeFields' => '��������� ���� ������',
        'Create Times' => '����� ��������',
        'No create time settings.' => '��� ����� ������� �������',
        'Ticket created' => '������ �������',
        'Ticket created between' => '������ ������� ����� ',
        'Pending Times' => '�����, ����� ������ ��� �������',
        'No pending time settings.' => '��� ����� ������� �������',
        'Ticket pending time reached' => '������ ��� �������',
        'Ticket pending time reached between' => '������ ��� ������� �����',
        'New Priority' => '����� ���������',
        'New Queue' => '����� �������',
        'New State' => '����� ������',
        'New Agent' => '����� �����',
        'New Owner' => '����� ��������',
        'New Customer' => '����� ������',
        'New Ticket Lock' => '����� ������ ������',
        'CustomerUser' => '������������ �������',
        'New TicketFreeFields' => '����� ��������� ���� ������',
        'Add Note' => '�������� �������',
        'CMD' => '��������',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '��� ������� ����� ���������. ARG[0] - ����� ������. ARG[1] - id ������',
        'Delete tickets' => '������� ������',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => '��������! ������ ������ ����� ������� �� ����!',
        'Send Notification' => '������� �����������',
        'Param 1' => '�������� 1',
        'Param 2' => '�������� 2',
        'Param 3' => '�������� 3',
        'Param 4' => '�������� 4',
        'Param 5' => '�������� 5',
        'Param 6' => '�������� 6',
        'Send no notifications' => '�� �������� �����������',
        'Yes means, send no agent and customer notifications on changes.' => '�� ������ �� �������� ����������� ������������� � �������� ��� ����������',
        'No means, send agent and customer notifications on changes.' => '��� ������ �������� ����������� ������������� � �������� ��� ����������',
        'Save' => '���������',
        '%s Tickets affected! Do you really want to use this job?' => '%s ������ ����� ��������������! �� ������������� ������ ��������� ��� �������?',
        '"}' => '',

        # Template: AdminGroupForm
        'Group Management' => '���������� ��������',
        'Add Group' => '�������� ������',
        'Add a new Group.' => '�������� ����� ������',
        'The admin group is to get in the admin area and the stats group to get stats area.' => '������ admin ������ ���� � admin ����, � stats ������ � stat ����',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => '������� ����� ������ ��� �������� ������� ��������� ����� ������� (����� �������, ����� ������, ����� ������������ � �.�.)',
        'It\'s useful for ASP solutions.' => '��� �������� ��� ASP.',

        # Template: AdminLog
        'System Log' => '��������� ������',
        'Time' => '�����',

        # Template: AdminNavigationBar
        'Users' => '������������',
        'Groups' => '������',
        'Misc' => '�������������',

        # Template: AdminNotificationForm
        'Notification Management' => '���������� �������������',
        'Notification' => '�����������',
        'Notifications are sent to an agent or a customer.' => '����������� ������� ����������� ��� �������',

        # Template: AdminPackageManager
        'Package Manager' => '���������� ��������',
        'Uninstall' => '�������',
        'Version' => '������',
        'Do you really want to uninstall this package?' => '�� ������������� ������ ������� ���� �����?',
        'Reinstall' => '��������������',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '�� ������������� ������ �������������� ���� ����� (��� ������ ��������� ����� �������)?',
        'Cancle' => '��������',
        'Continue' => '����������',
        'Install' => '����������',
        'Package' => '�����',
        'Online Repository' => '������ �����������',
        'Vendor' => '������������',
        'Upgrade' => '��������',
        'Local Repository' => '��������� �����������',
        'Status' => '������',
        'Overview' => '�����',
        'Download' => '�������',
        'Rebuild' => '�����������',
        'ChangeLog' => '��� ���������',
        'Date' => '����',
        'Filelist' => '������ ������',
        'Download file from package!' => '������� ���� �� ������!',
        'Required' => '���������',
        'PrimaryKey' => '',
        'AutoIncrement' => '',
        'SQL' => '',
        'Diff' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => '��� ������������������',
        'This feature is enabled!' => '������ ������� ������������!',
        'Just use this feature if you want to log each request.' => '������ ����������� ��� ������� ���� �� ������ ����������� ������ ������',
        'Of couse this feature will take some system performance it self!' => '�������, ������ ������� ���� ������� ������� ��������!',
        'Disable it here!' => '��������� ��!',
        'This feature is disabled!' => '������ ������� ���������!',
        'Enable it here!' => '�������� ��!',
        'Logfile too large!' => '���-���� ������� �������!',
        'Logfile too large, you need to reset it!' => '���-���� ������� �������, ��� ����� �������� ���!',
        'Range' => '����������',
        'Interface' => '���������',
        'Requests' => '��������',
        'Min Response' => '���. ����� ������',
        'Max Response' => '����. ����� ������',
        'Average Response' => '�����. ����� ������',

        # Template: AdminPGPForm
        'PGP Management' => '���������� PGP',
        'Result' => '���������',
        'Identifier' => '�������������',
        'Bit' => '���',
        'Key' => '����',
        'Fingerprint' => '',
        'Expires' => '��������',
        'In this way you can directly edit the keyring configured in SysConfig.' => '� ������ ������ �� ������ �������� "keyring" ����� � ������������ �������',

        # Template: AdminPOP3
        'POP3 Account Management' => '���������� ������� ������� POP3',
        'Host' => '������',
        'Trusted' => '����������',
        'Dispatching' => '���������������',
        'All incoming emails with one account will be dispatched in the selected queue!' => '��� �������� ������ � ����� ������� ������ ����� ���������� � ��������� �������!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '���� ��� ������ ����������, ��� ������������ ����� X-OTRS ����� ����������� ��� ��������(��� ����������, ...)! ������ PostMaster ����� ����������� � ����� ������.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => '���������� �������� PostMaster-�',
        'Filtername' => '��� �������',
        'Match' => '�������������',
        'Header' => '���������',
        'Value' => '��������',
        'Set' => '����������',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '���������� ��� ����������� �������� ������ �������� �� X-������!�������� ������������� ���������.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '���� �� ������ ����������� ������ �� email-�������, ����������� EMAILADDRESS:info@example.com � From, To ��� Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '���� �� ����������� ��������, �� ������ ����� ������������ ���������� � () ��� [***] \'Set\'.' ,

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => '���������� � �������',

        # Template: AdminQueueForm
        'Queue Management' => '���������� ��������',
        'Sub-Queue of' => '���������� �',
        'Unlock timeout' => '���� ����������',
        '0 = no unlock' => '0 = ��� ����������',
        'Escalation - First Response Time' => '',
        '0 = no escalation' => '0 = ��� ���������',
        'Escalation - Update Time' => '��������� - ����� ���������',
        'Escalation - Solution Time' => '��������� - ����� �������',
        'Follow up Option' => '��������� ����-�������� ?',
        'Ticket lock after a follow up' => '���������� ������ ����� ������� ����������',
        'Systemaddress' => '��������� �����',
        'Customer Move Notify' => '�������� ������� � �����������',
        'Customer State Notify' => '�������� ������� � ����� ���������',
        'Customer Owner Notify' => '�������� ������� � ����� ���������',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '���� ����� ������������ ������ � �� ������ ����� ������� � ������� �������������� �������, �� ������ ������������� �������������� � ������ ��������� ��� ��������� �������',
        'Escalation time' => '����� �� ��������� ������ (���������� ����������)',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => '���� ������ �� ����� ��������� � ������������� �����, ���������� ������ ��� ������',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '���� ������ �������, � ������ ������� ����������,�� ������ ����� ������������� ��� ����������� ���������',
        'Will be the sender address of this queue for email answers.' => '��������� ������ ����������� ��� ������� � ���� �������',
        'The salutation for email answers.' => '����������� ��� �������� ���������',
        'The signature for email answers.' => '������� ��� �������� ���������',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS �������� ����������� ������� ��� ����������� ������',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS �������� ����������� ������� ��� ��������� ������� ������',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS �������� ����������� ������� ��� ����� ��������� ������',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => '���������� �������� � ��������',

        # Template: AdminQueueResponsesForm
        'Answer' => '�����',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => '���������� ������������ ������� � �������',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => '���������� ��������',
        'A response is default text to write faster answer (with default text) to customers.' => '����� - ��������� ������ ��� ������ ��������',
        'Don\'t forget to add a new response a queue!' => '�� �������� �������� ����� ��� �������!',
        'The current ticket state is' => '������� ��������� ������',
        'Your email address is new' => '��� email ����� �����',

        # Template: AdminRoleForm
        'Role Management' => '���������� ������',
        'Add Role' => '�������� ����',
        'Add a new Role.' => '�������� ����� ����',
        'Create a role and put groups in it. Then add the role to the users.' => '�������� ���� � �������� �� �� ������. ����� ��������� ���� � �������������.',
        'It\'s useful for a lot of users and groups.' => '��� ������� ��� ������������� ��������� ������������� � �����',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => '���������� ������ � �������',
        'move_into' => '�����������',
        'Permissions to move tickets into this group/queue.' => '����� �� ����������� ������ � ��� ������/�������',
        'create' => '��������',
        'Permissions to create tickets in this group/queue.' => '����� �� �������� ������ � ���� ������/�������',
        'owner' => '��������',
        'Permissions to change the ticket owner in this group/queue.' => '����� �� ����� ��������� ������ � ���� ������/�������',
        'priority' => '���������',
        'Permissions to change the ticket priority in this group/queue.' => '����� �� ����� ���������� ������ � ���� ������/�������',

        # Template: AdminRoleGroupForm
        'Role' => '����',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => '���������� ������ �������������',
        'Active' => '��������',
        'Select the role:user relations.' => '�������� ����� ����� ����� � �������������',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => '���������� �������������',
        'Add Salutation' => '�������� �����������',
        'Add a new Salutation.' => '�������� ����� �����������',

        # Template: AdminSelectBoxForm
        'Select Box' => '���� ������� SELECT',
        'Limit' => '�����',
        'Go' => '���������',
        'Select Box Result' => '�������� �� ����',

        # Template: AdminService
        'Service Management' => '���������� ���������',
        'Add Service' => '�������� ������',
        'Add a new Service.' => '�������� ����� ������',
        'Service' => '������',
        'Sub-Service of' => '���������',

        # Template: AdminSession
        'Session Management' => '���������� ��������',
        'Sessions' => '������',
        'Uniq' => '����������',
        'Kill all sessions' => '����� ��� ������',
        'Session' => '������',
        'Content' => '����������',
        'kill session' => '������� ������',

        # Template: AdminSignatureForm
        'Signature Management' => '���������� ��������',
        'Add Signature' => '�������� �������',
        'Add a new Signature.' => '�������� ����� �������',

        # Template: AdminSLA
        'SLA Management' => '���������� SLA',
        'Add SLA' => '�������� SLA',
        'Add a new SLA.' => '�������� ����� SLA',
        'SLA' => '',
        'First Response Time' => '����� �� ������� ������',
        'Update Time' => '����� �� ��������� ������',
        'Solution Time' => '����� ������� ������',

        # Template: AdminSMIMEForm
        'S/MIME Management' => '���������� S/MIME',
        'Add Certificate' => '�������� ����������',
        'Add Private Key' => '�������� Private Key',
        'Secret' => '',
        'Hash' => '���',
        'In this way you can directly edit the certification and private keys in file system.' => '� ������ ������ �� ������ ������������� ����������� � Private Keys ����� �� �������� �������',

        # Template: AdminStateForm
        'State Management' => '���������� ���������',
        'Add State' => '�������� ������',
        'Add a new State.' => '�������� ����� ������',
        'State Type' => '��� �������',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => '�� ������ ����� �������� ��������� ������� � Kernel/Config.pm!',
        'See also' => '��. �����',

        # Template: AdminSysConfig
        'SysConfig' => '������������ �������',
        'Group selection' => '����� ������',
        'Show' => '��������',
        'Download Settings' => '������� ���������',
        'Download all system config changes.' => '������� ��� ��������� ������������, ��������� � �������',
        'Load Settings' => '��������� ���������',
        'Subgroup' => '���������',
        'Elements' => '��������',

        # Template: AdminSysConfigEdit
        'Config Options' => '����� ������������',
        'Default' => '��-���������',
        'New' => '�����',
        'New Group' => '����� ������',
        'Group Ro' => '������ ������ ������',
        'New Group Ro' => '����� ������ ������ ������',
        'NavBarName' => '��� � ������������� ����',
        'NavBar' => '������������� ����',
        'Image' => '��������',
        'Prio' => '',
        'Block' => '',
        'AccessKey' => '',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => '���������� ���������� e-mail ��������',
        'Add System Address' => '�������� ��������� �����',
        'Add a new System Address.' => '�������� ����� ��������� �����',
        'Realname' => '�������� ���',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => '��� �������� ��������� � ���� ����� (���:) ����� ���������� � ��������� �������',

        # Template: AdminTypeForm
        'Type Management' => '���������� ������ ������',
        'Add Type' => '�������� ���',
        'Add a new Type.' => '�������� ����� ���',

        # Template: AdminUserForm
        'User Management' => '���������� ��������������',
        'Add User' => '�������� ������������',
        'Add a new Agent.' => '�������� ����� ������������',
        'Login as' => '������������ ������ �������������',
        'Firstname' => '���',
        'Lastname' => '�������',
        'User will be needed to handle tickets.' => '��� ��������� ������ ����� ������������',
        'Don\'t forget to add a new user to groups and/or roles!' => '�� �������� �������� ������ ������������ � ������ � ����!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => '���������� �������� �������������',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => '�������� �����',
        'Return to the compose screen' => '��������� � ���� �����',
        'Discard all changes and return to the compose screen' => '���������� �� ���� ��������� � ��������� � ���� �����',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerTableView

        # Template: AgentInfo
        'Info' => '����������',

        # Template: AgentLinkObject
        'Link Object' => '������� ������',
        'Select' => '�������',
        'Results' => '���������',
        'Total hits' => '������������ ���������',
        'Page' => '��������',
        'Detail' => '��������',

        # Template: AgentLookup
        'Lookup' => '�����',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => '�������� ������������',
        'spelling error(s)' => '������ ������������',
        'or' => '���',
        'Apply these changes' => '��������� ��� ���������',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => '�� ������������� ������ ������� ���� ������?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => '�������� ����������� ��� ����������� ����������',
        'Fixed' => '�����������',
        'Please select only one element or turn off the button \'Fixed\'.' => '����������, �������� ������ ���� ������� ��� ������� ������ \'Fixed\'.',
        'Absolut Period' => '������ ������',
        'Between' => '�����',
        'Relative Period' => '������������� ������',
        'The last' => '���������',
        'Finish' => '���������',
        'Here you can make restrictions to your stat.' => '����� �� ������ ������ ����������� � ���� ����������',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => '���� �� ������� ������� �� �������� "Fixed", ������������, ������� ����� ��������� ������ ������ ������ ��������� ���������������� ��������',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => '�������� �������������� ����������',
        'Permissions' => '�����',
        'Format' => '������',
        'Graphsize' => '������ �������',
        'Sum rows' => '����� �����',
        'Sum columns' => '����� ��������',
        'Cache' => '���',
        'Required Field' => '������������ ����',
        'Selection needed' => '���������� ���������',
        'Explanation' => '���������',
        'In this form you can select the basic specifications.' => '� ������ ����� �� ������ ������� �������� ����������.',
        'Attribute' => '��������',
        'Title of the stat.' => '�������� ������',
        'Here you can insert a description of the stat.' => '����� �� ������ �������� �������� ������',
        'Dynamic-Object' => '������������-������',
        'Here you can select the dynamic object you want to use.' => '����� �� ������ ������� ����������� ������, ������� �� ������ ������������',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(�������: ��, ������� �������� ����� ������������, ������� �� ����� �����������)',
        'Static-File' => '�����������-����',
        'For very complex stats it is possible to include a hardcoded file.' => '��� ����� ����������� ������� �������� ���������� "hardcoded" ����',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => '���� ����� "hardcoded" ���� ��������, ���� �������� ����� ������� � �� ������� ������� ���� �� ���.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '��������� �������. �� ������ ������� ���� ��� ��������� ����� ����� ����� ��� ����� ��� ������ �������������.',
        'Multiple selection of the output format.' => '����� �������� ������.',
        'If you use a graph as output format you have to select at least one graph size.' => '���� �� ����������� �������, ��� ���������� ������� ������ ���� ������ �������.',
        'If you need the sum of every row select yes' => '���� ��� ���������� ����� ������� ���� �������� ��',
        'If you need the sum of every column select yes.' => '���� ��� ���������� ����� ������� ������� �������� ��',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '����������� ������� ����� ������������. ��� �������� �������� ����������� �������.',
        '(Note: Useful for big databases and low performance server)' => '(�������: ������� ��� ������� ��� ������ ��� ��� �������� � ������ �������������������)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => '��� ������� ������ "����������������" ����� �� ����� ���� �����������.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '��� ������� ���� �� �� ������ ����� ��������� ���� �������� ���������� ������ ��� ����� ��� ������������ �� ���������������.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => '�������� �������� ��� ������������������ ��������',
        'Scale' => '�������',
        'minimal' => '�����������',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => '�������, ��� ������� ��� ������������������ �������� ������ ���� ������, ��� ������� ��� ��� X (�������� ��� � => �����, ������������������ �������� => ���).',
        'Here you can the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => '',
        'maximal period' => '',
        'minimal scale' => '',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '����� �� ������ ���������� ��� X. �� ������ ������� ���� �������. ����� ���������� ������� ��� ��� ����� ���������� ��������. ���� �� ������ �� �������� ���������� �������� - ��� ��������� ����� ������������ ��� ��������� ������, � ����� ����� ����������� ���������.',

        # Template: AgentStatsImport
        'Import' => '������',
        'File is not a Stats config' => '���� �� �������� ������ ������������ �������',
        'No File selected' => '���� �� ������',

        # Template: AgentStatsOverview
        'Object' => '������',

        # Template: AgentStatsPrint
        'Print' => '������',
        'No Element selected.' => '������� �� ������.',

        # Template: AgentStatsView
        'Export Config' => '������� ������������',
        'Informations about the Stat' => '���������� �� ������',
        'Exchange Axis' => '�������� ���',
        'Configurable params of static stat' => '��������������� ��������� ������������ ������',
        'No element selected.' => '�������� �� �������',
        'maximal period from' => '������������ ������ �',
        'to' => '��',
        'Start' => '������',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '����� ������ � ������� ���� �� ������ ��������������� ����� ��� ��� ����������. �� �������������� , ������������ ������ �����, ������� ����� ������ �� ������ ���������������. ',

        # Template: AgentTicketBounce
        'Bounce ticket' => '��������� ������',
        'Ticket locked!' => '������ �������������!',
        'Ticket unlock!' => '������ ��������������!',
        'Bounce to' => '��������� ���',
        'Next ticket state' => '��������� ��������� ������',
        'Inform sender' => '������������� �����������',
        'Send mail!' => '������� e-mail!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => '�������� ��������',
        'Spell Check' => '�������� ������������',
        'Note type' => '��� �������',
        'Unlock Tickets' => '�������������� ������',

        # Template: AgentTicketClose
        'Close ticket' => '������� ������',
        'Previous Owner' => '���������� ��������',
        'Inform Agent' => '���������� ������������',
        'Optional' => '�����������',
        'Inform involved Agents' => '���������� ����������� �������������',
        'Attach' => '���������� ����',
        'Next state' => '��������� ���������',
        'Pending date' => '���� ��������',
        'Time units' => '������� �������',

        # Template: AgentTicketCompose
        'Compose answer for ticket' => '�������� ����� �� ������',
        'Pending Date' => '��������� ����',
        'for pending* states' => '��� ����������� ���������* ',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => '�������� ������� ������',
        'Set customer user and customer id of a ticket' => '���������� ����������� ������������ � ���������� id ��� ������',
        'Customer User' => '������������ �������',
        'Search Customer' => '������ �������',
        'Customer Data' => '������� ������ �������',
        'Customer history' => '������� �������',
        'All customer tickets.' => '��� ������ �������.',

        # Template: AgentTicketCustomerMessage
        'Follow up' => '���������� � ������',

        # Template: AgentTicketEmail
        'Compose Email' => '�������� ������',
        'new ticket' => '����� ������',
        'Refresh' => '��������',
        'Clear To' => '��������',

        # Template: AgentTicketForward
        'Article type' => '��� ������',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => '�������� ��������� ����� ������',

        # Template: AgentTicketHistory
        'History of' => '�������',

        # Template: AgentTicketLocked

        # Template: AgentTicketMailbox
        'Mailbox' => '�������� ����',
        'Tickets' => '������',
        'of' => '��',
        'Filter' => '������',
        'New messages' => '����� ���������',
        'Reminder' => '�����������',
        'Sort by' => '���������� ��',
        'Order' => '�������',
        'up' => '�����',
        'down' => '����',

        # Template: AgentTicketMerge
        'Ticket Merge' => '����������� ������',
        'Merge to' => '���������� �',

        # Template: AgentTicketMove
        'Move Ticket' => '����������� ������',

        # Template: AgentTicketNote
        'Add note to ticket' => '�������� ������� � ������',

        # Template: AgentTicketOwner
        'Change owner of ticket' => '�������� ����������� ������',

        # Template: AgentTicketPending
        'Set Pending' => '�������� ��������',

        # Template: AgentTicketPhone
        'Phone call' => '���������� ������',
        'Clear From' => '�������� �����',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => '������������',

        # Template: AgentTicketPrint
        'Ticket-Info' => '���������� � ������',
        'Accounted time' => '����������� �� ������ �����',
        'Escalation in' => '��������� �����',
        'Linked-Object' => '������������-������',
        'Parent-Object' => '������-��������',
        'Child-Object' => '������-�������',
        'by' => '',

        # Template: AgentTicketPriority
        'Change priority of ticket' => '�������� ��������� ������',

        # Template: AgentTicketQueue
        'Tickets shown' => '�������� ������',
        'Tickets available' => '��������� ������',
        'All tickets' => '��� ������',
        'Queues' => '�������',
        'Ticket escalation!' => '������� ����� �� ��������� ������ !',

        # Template: AgentTicketQueueTicketView
        'Service Time' => '����� ������������',
        'Your own Ticket' => '���� ����������� ������',
        'Compose Follow up' => '������� ���������(���� ������ �������)',
        'Compose Answer' => '������� �����',
        'Contact customer' => '��������� � ��������',
        'Change queue' => '����������� � ������ �������',

        # Template: AgentTicketQueueTicketViewLite

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '������� �������������� �� ������',

        # Template: AgentTicketSearch
        'Ticket Search' => '����� ������',
        'Profile' => '���������',
        'Search-Template' => '������',
        'TicketFreeText' => '��������� ���� ������',
        'Created in Queue' => '������� � �������',
        'Result Form' => '����� �����������',
        'Save Search-Profile as Template?' => '��������� ��������� ������ � �������� �������?',
        'Yes, save it with name' => '��, ��������� � ������',

        # Template: AgentTicketSearchResult
        'Search Result' => '��������� ������',
        'Change search options' => '�������� ��������� ������',

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketSearchResultShort
        'U' => '',
        'D' => '',

        # Template: AgentTicketStatusView
        'Ticket Status View' => '�������� ������� ������',
        'Open Tickets' => '�������� ������',
        'Locked' => '����������',

        # Template: AgentTicketZoom

        # Template: AgentWindowTab

        # Template: Copyright

        # Template: css

        # Template: customer-css

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => '������������',

        # Template: CustomerFooter
        'Powered by' => '',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => '����',
        'Lost your password?' => '������ ���� ������',
        'Request new password' => '�������� ����� ������',
        'Create Account' => '������� ������� ������',

        # Template: CustomerNavigationBar
        'Welcome %s' => '������������, %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => '�����',
        'No time settings.' => '��� ��������� �����������',

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => '�������� �����,����� ������� ��������� �� ������',

        # Template: Footer
        'Top of Page' => '���� ��������',

        # Template: FooterSmall

        # Template: Header

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => '¸� �����������',
        'Accept license' => '������� ������� ��������',
        'Don\'t accept license' => '�� ��������� ������� ��������',
        'Admin-User' => '��� ������������(�������������)',
        'Admin-Password' => '������ ������������',
        'your MySQL DB should have a root password! Default is empty!' => '� ������������ root ����� �� MySQL ������ ���� ������! ��-��������� ��� ���!',
        'Database-User' => '�� ������������',
        'default \'hot\'' => '�� ��������� \'hot\'',
        'DB connect host' => '��� ��-�����',
        'Database' => '��� ��',
        'false' => '',
        'SystemID' => '��������� ID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(ID �������. ������ ����� ������ � ������ http ������ ����� ���������� � ����� �����)',
        'System FQDN' => '��������� FQDN',
        '(Full qualified domain name of your system)' => '(������ �������� ��� (FQDN) ����� �������)',
        'AdminEmail' => 'e-mail ��������������',
        '(Email of the system admin)' => '(e-mail ���������� ��������������)',
        'Organization' => '�����������',
        'Log' => '���',
        'LogModule' => '������ ������� ',
        '(Used log backend)' => '(������������ ������ backend)',
        'Logfile' => '���� �������',
        '(Logfile just needed for File-LogModule!)' => '(������-���� ��������� ������ ��� ������ File-Log)',
        'Webfrontend' => 'Web-���������',
        'Default Charset' => '��������� �� ���������',
        'Use utf-8 it your database supports it!' => '����������� utf-8 ���� ���� �� ��� ������������!',
        'Default Language' => '���� �� ���������',
        '(Used default language)' => '(������������ ���� �� ���������)',
        'CheckMXRecord' => '��������� MX �����',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '��������� MX ������ ������, �� ������� ������������ e-mail(��� ����������� ������). �� ����������� CheckMXRecord ���� ������ � OTRS �������� �� dial-up !',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '����� ������������ OTRS ��� ���������� ������ ��������� ������ � ���� (�� ������������ root).',
        'Restart your webserver' => '������������� ��� web-������',
        'After doing so your OTRS is up and running.' => '����� ���� �������� ��� OTRS ��� �������.',
        'Start page' => '��������� ��������',
        'Have a lot of fun!' => '�������������!',
        'Your OTRS Team' => '������� ������������� OTRS',

        # Template: Login
        'Welcome to %s' => '����� ���������� � %s',

        # Template: Motd

        # Template: NoPermission
        'No Permission' => '��� ����',

        # Template: Notify
        'Important' => '�����',

        # Template: PrintFooter
        'URL' => '',

        # Template: PrintHeader
        'printed by' => '����������',

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => '�������� �������� OTRS',
        'Counter' => '�������',

        # Template: Warning
        # Misc
        'Edit Article' => '������������� ������',
        'auto responses set!' => '������������� �����������',
        'Create Database' => '������� ����',
        'End' => '���������',
        'Ticket Number Generator' => '��������� ������ ������',
        'Create new Phone Ticket' => '������� ���������� ������',
        'Symptom' => '�������',
        'A message should have a To: recipient!' => '��������� ������ ����� ���� ���: ��������!',
        'Site' => '�����',
        'Customer history search (e. g. "ID342425").' => '����� ������� ������� (����. "ID342425").',
        'Close!' => '�������!',
        'for agent firstname' => '��� ������ - ���',
        'Subgroup \'' => '���������',
        'The message being composed has been closed.  Exiting.' => '����������� ��������� ���� �������. �����.',
        'A web calendar' => '���������',
        'to get the realname of the sender (if given)' => '�������� (���� ����) ��� �����������',
        'Notification (Customer)' => '����������� (�������)',
        'Involved' => '��������� �',
        'Select Source (for add)' => '������� ��������',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '����� ������ ������ (��������  &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Days' => '���',
        'Queue ID' => 'ID �������',
        'Locked tickets' => '��������������� ������',
        'Home' => '������',
        'System History' => '�������',
        'customer realname' => '��� �������',
        'Pending messages' => '��������� � ��������',
        'Modules' => '������',
        'Keyword' => '�������� �����',
        'Close type' => '��� ��������',
        'sort upward' => '���������� �� �����������',
        'Change user <-> group settings' => '�������� ��������� ����� �������������',
        'Problem' => '��������',
        'for ' => '���',
        'next step' => '��������� ���',
        'Customer history search' => '����� ������� �������',
        '5 Day' => '5 ����',
        'Admin-Email' => 'e-mail ��������������',
        'Create new database' => '������� ����� ��',
        'A message must be spell checked!' => '��������� ������ ���� ��������� �� ������!',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => '��� e-mail � ������� ������ "<OTRS_TICKET>" ��������� � �������� �� ������ "<OTRS_BOUNCE_TO>". ����������, ��������� �� ����� ������ ��� ��������� ������. ',
        'ArticleID' => 'ID �������',
        'A message should have a body!' => '���� ��������� �� ����� ���� ������!',
        'Keywords' => '�������� �����',
        'Today' => '�������',
        'Tommorow' => '������',
        'No * possible!' => '������ ������������ ������ * !',
        'Options ' => '�����',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '����� �������� ������������, ������� �������� ��� �������� (�������� &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => '��������� ��� ������ ���������',
        'to get the first 5 lines of the email' => '�������� ������ 5 ����� ������',
        'Last update' => '��������� ���������',
        'to get the first 20 character of the subject' => '�������� ������ 20 �������� ���� "����"',
        'Drop Database' => '������� ����',
        'FileManager' => '���� ��������',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => '����� ������� ������ ������������ (�������� <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => '��� ��������',
        'Comment (internal)' => '����������� (����������)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '����� ��������� ������ (�������� &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'This window must be called from compose window' => '��� ���� ������ ���������� �� ���� �����',
        'Minutes' => '������',
        'You need min. one selected Ticket!' => '��� ��������� ������� ������ ���� ������!',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '����� ������ ������ (�������� <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(������������ ������ ������� ������)',
        'Fulltext' => '��������������',
        ' (work units)' => ' (������� �������)',
        'All Customer variables like defined in config option CustomerUser.' => '��� ���������� ������� ����������� � ������������ ����������� ������������.',
        'for agent lastname' => '��� ������ - �������',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => '����� ��� �������� ������������, ������� �������� ��� �������� (�������� <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => '������������ ���������',
        'Change users <-> roles settings' => '�������� ��������� ������������ <-> ����',
        'A message should have a subject!' => '��������� ������ ����� ���� "����"!',
        'Ticket Hook' => '�������� ������',
        'Events' => '�������',
        'TicketZoom' => '�������� ������',
        'Don\'t forget to add a new user to groups!' => '�� �������� �������� ������� ������������ � ������!',
        'You need a email address (e. g. customer@example.com) in To:!' => '����� ���������� ����� � ���� ���: (support@example.ru)!',
        'CreateTicket' => '�������� ������',
        'You need to account time!' => '��� ���������� ��������� �����!',
        'System Settings' => '��������� ���������',
        'WebWatcher' => 'Web-�����������',
        'Hours' => '����',
        'Finished' => '���������',
        'Split' => '���������',
        'All messages' => '��� ���������',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '����� ������ (�������� <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '7 Day' => '7 ����',
        'Ticket Overview' => '����� ������',
        'Event' => '�������',
        'A web mail client' => '�������� ���-������',
        'WebMail' => '�����',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '����� ������ (�������� <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => '����� ��������� ������ (�������� <OTRS_OWNER_UserFirstname>)',
        'Name is required!' => '��������� ����������!',
        'kill all sessions' => '������� ��� ������� ������',
        'to get the from line of the email' => '�������� ���� "��" ������',
        'Solution' => '�������',
        'QueueView' => '�������� �������',
        'Welcome to OTRS' => '����� ���������� � OTRS',
        'modified' => '��������',
        'Running' => '�����������',
        'sort downward' => '���������� �� ��������',
        'You need to use a ticket number!' => '��� ���������� ������������ ����� ������!',
        'send' => '���������',
        'Note Text' => '����� �������',
        '3 Month' => '3 ������',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '����� ��� ������ �������� ������������-������� (�������� &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'Jule' => '����',
        'System State Management' => '���������� ���������� �����������',
        'PhoneView' => '������ �� ��������',
        'maximal period form' => '������������ ������ �',
        'Verion' => '������',
        'TicketID' => 'ID ������',
        'Mart' => '�����',
        'Change setting' => '�������� ���������',
        'Modified' => '��������',
        'Ticket selected for bulk action!' => '������ ������� ��� ��������� ��������!',
    };
    # $$STOP$$
    return;
}

1;
