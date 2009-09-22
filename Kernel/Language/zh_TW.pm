# --
# Kernel/Language/zh_TW.pm - provides Chinese Traditional language translation
# Copyright (C) 2009 Bin Du <bindu2008 at gmail.com>
# Copyright (C) 2009 Yiye Huang <yiyehuang at gmail.com>
# Copyright (C) 2009 Qingjiu Jia <jiaqj at yahoo.com>
# --
# $Id: zh_TW.pm,v 1.4 2009-09-22 13:04:23 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::zh_TW;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.4 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Thurs July16 13:56:58 2009

    # possible charsets
    $Self->{Charset} = ['big5', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%Y.%M.%D %T';
    $Self->{DateFormatLong}      = ' %A %Y/%M/%D %T';
    $Self->{DateFormatShort}     = '%Y.%M.%D';
    $Self->{DateInputFormat}     = '%Y.%M.%D';
    $Self->{DateInputFormatLong} = '%Y.%M.%D - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => '�O',
        'No' => '�_',
        'yes' => '�O',
        'no' => '���]�m',
        'Off' => '��',
        'off' => '��',
        'On' => '�}',
        'on' => '�}',
        'top' => '����',
        'end' => '����',
        'Done' => '�T�{',
        'Cancel' => '����',
        'Reset' => '���m',
        'last' => '�̦Z',
        'before' => '����',
        'day' => '��',
        'days' => '��',
        'day(s)' => '��',
        'hour' => '�p��',
        'hours' => '�p��',
        'hour(s)' => '�p��',
        'minute' => '����',
        'minutes' => '����',
        'minute(s)' => '����',
        'month' => '��',
        'months' => '��',
        'month(s)' => '��',
        'week' => '�P��',
        'week(s)' => '�P��',
        'year' => '�~',
        'years' => '�~',
        'year(s)' => '�~',
        'second(s)' => '��',
        'seconds' => '��',
        'second' => '��',
        'wrote' => '�g�D',
        'Message' => '����',
        'Error' => '���~',
        'Bug Report' => 'Bug ���i',
        'Attention' => '�`�N',
        'Warning' => 'ĵ�i',
        'Module' => '�Ҷ�',
        'Modulefile' => '�Ҷ����',
        'Subfunction' => '�l�\��',
        'Line' => '��',
        'Setting' => '�]�m',
        'Settings' => '�]�m',
        'Example' => '�ܨ�',
        'Examples' => '�ܨ�',
        'valid' => '����',
        'invalid' => '�L��',
        '* invalid' => '* �L��',
        'invalid-temporarily' => '�ȮɵL��',
        ' 2 minutes' => ' 2 ����',
        ' 5 minutes' => ' 5 ����',
        ' 7 minutes' => ' 7 ����',
        '10 minutes' => '10 ����',
        '15 minutes' => '15 ����',
        'Mr.' => '����',
        'Mrs.' => '�ҤH',
        'Next' => '�U�@��',
        'Back' => '�Z�h',
        'Next...' => '�U�@��...',
        '...Back' => '...�Z�h',
        '-none-' => '-�L-',
        'none' => '�L',
        'none!' => '�L!',
        'none - answered' => '�L - �w���_��',
        'please do not edit!' => '���n�s��!',
        'AddLink' => '�W�[�챵',
        'Link' => '�챵',
        'Unlink' => '���챵',
        'Linked' => '�w�챵',
        'Link (Normal)' => '�챵 (���`)',
        'Link (Parent)' => '�챵 (��)',
        'Link (Child)' => '�챵 (�l)',
        'Normal' => '���`',
        'Parent' => '��',
        'Child' => '�l',
        'Hit' => '�I��',
        'Hits' => '�I����',
        'Text' => '����',
        'Lite' => '²��',
        'User' => '�Τ�',
        'Username' => '�Τ�W��',
        'Language' => '�y��',
        'Languages' => '�y��',
        'Password' => '�K�X',
        'Salutation' => '�ٿ�',
        'Signature' => 'ñ�W',
        'Customer' => '�Ȥ�',
        'CustomerID' => '�Ȥ�s��',
        'CustomerIDs' => '�Ȥ�s��',
        'customer' => '�Ȥ�',
        'agent' => '�޳N����H��',
        'system' => '�t��',
        'Customer Info' => '�Ȥ�H��',
        'Customer Company' => '�Ȥ���',
        'Company' => '���',
        'go!' => '�}�l!',
        'go' => '�}�l',
        'All' => '����',
        'all' => '����',
        'Sorry' => '�藍�_',
        'update!' => '��s!',
        'update' => '��s',
        'Update' => '��s',
        'Updated!' => '',
        'submit!' => '����!',
        'submit' => '����',
        'Submit' => '����',
        'change!' => '�ק�!',
        'Change' => '�ק�',
        'change' => '�ק�',
        'click here' => '�I���o��',
        'Comment' => '�`��',
        'Valid' => '����',
        'Invalid Option!' => '�L�Ŀﶵ!',
        'Invalid time!' => '�L�Įɶ�!',
        'Invalid date!' => '�L�Ĥ��!',
        'Name' => '�W��',
        'Group' => '�զW',
        'Description' => '�y�z',
        'description' => '�y�z',
        'Theme' => '�D�D',
        'Created' => '�Ы�',
        'Created by' => '�Ыإ�',
        'Changed' => '�w�ק�',
        'Changed by' => '�ק��',
        'Search' => '�j��',
        'and' => '�M',
        'between' => '�b',
        'Fulltext Search' => '����j��',
        'Data' => '���',
        'Options' => '�ﶵ',
        'Title' => '���D',
        'Item' => '����',
        'Delete' => '�R��',
        'Edit' => '�s��',
        'View' => '�d��',
        'Number' => '�s��',
        'System' => '�t��',
        'Contact' => '�p�t�H',
        'Contacts' => '�p�t�H',
        'Export' => '�ɥX',
        'Up' => '�W',
        'Down' => '�U',
        'Add' => '�W�[',
        'Added!' => '',
        'Category' => '�ؿ�',
        'Viewer' => '�d�ݾ�',
        'Expand' => '�X�i',
        'New message' => '�s����',
        'New message!' => '�s����!',
        'Please answer this ticket(s) to get back to the normal queue view!' => '�Х��^�_�� Ticket�A�M�Z�^�쥿�`���C����!',
        'You got new message!' => '�z���s����!',
        'You have %s new message(s)!' => '�z�� %s ���s����!',
        'You have %s reminder ticket(s)!' => '�z�� %s �Ӵ���!',
        'The recommended charset for your language is %s!' => '��ĳ�z�ҥλy�����r�Ŷ� %s!',
        'Passwords doesn\'t match! Please try it again!' => '�K�X���šA�Э���!',
        'Password is already in use! Please use an other password!' => '�ӱK�X�Q�ϥΡA�ШϥΨ�L�K�X!',
        'Password is already used! Please use an other password!' => '�ӱK�X�Q�ϥΡA�ШϥΨ�L�K�X!',
        'You need to activate %s first to use it!' => '%s �b�ϥΤ��e�Х��E��!',
        'No suggestions' => '�L��ĳ',
        'Word' => '�r',
        'Ignore' => '����',
        'replace with' => '����',
        'There is no account with that login name.' => '�ӥΤ�W�S���b��H��.',
        'Login failed! Your username or password was entered incorrectly.' => '�n�����ѡA�z���Τ�W�αK�X�����T.',
        'Please contact your admin' => '���p�t�t�κ޲z��',
        'Logout successful. Thank you for using OTRS!' => '���\�`�P�A���¨ϥ�!',
        'Invalid SessionID!' => '�L�Ī��|�ܼ��Ѳ�!',
        'Feature not active!' => '�ӯS�ʩ|���E��!',
        'Notification (Event)' => '�q���]�ƥ�^',
        'Login is needed!' => '�ݭn���n��!',
        'Password is needed!' => '�ݭn�K�X!',
        'License' => '�\�i��',
        'Take this Customer' => '���o�o�ӫȤ�',
        'Take this User' => '���o�o�ӥΤ�',
        'possible' => '�i��',
        'reject' => '�ڵ�',
        'reverse' => '�Z�h',
        'Facility' => '���O',
        'Timeover' => '����',
        'Pending till' => '���ݦ�',
        'Don\'t work with UserID 1 (System account)! Create new users!' => '���n�ϥ� UserID 1 (�t�ν㸹)! �гЫؤ@�ӷs���Τ�!',
        'Dispatching by email To: field.' => '�����l���: ��.',
        'Dispatching by selected Queue.' => '�����l���ҿﶤ�C.',
        'No entry found!' => '�L���e!',
        'Session has timed out. Please log in again.' => '�|�ܶW�ɡA�Э��s�n��.',
        'No Permission!' => '�L�v��!',
        'To: (%s) replaced with database email!' => 'To: (%s) �Q�ƾڮw�l��a�}�Ҵ��N',
        'Cc: (%s) added database email!' => 'Cc: (%s) �W�[�ƾڮw�l��a�}!',
        '(Click here to add)' => '(�I�����B�W�[)',
        'Preview' => '�w��',
        'Package not correctly deployed! You should reinstall the Package again!' => '�n��]�i�}�����`! �z�ݭn�A�@�����s�w�˳o�ӳn��]',
        'Added User "%s"' => '�W�[�Τ� "%s".',
        'Contract' => '�X�P',
        'Online Customer: %s' => '�b�u�Ȥ�: %s',
        'Online Agent: %s' => '�b�u�޳N����H���G%s',
        'Calendar' => '���',
        'File' => '���',
        'Filename' => '���W',
        'Type' => '����',
        'Size' => '�j�p',
        'Upload' => '�W��',
        'Directory' => '�ؿ�',
        'Signed' => '�wñ�W',
        'Sign' => 'ñ�p',
        'Crypted' => '�w�[�K',
        'Crypt' => '�[�K',
        'Office' => '�줽��',
        'Phone' => '�q��',
        'Fax' => '�ǯu',
        'Mobile' => '���',
        'Zip' => '�l�s',
        'City' => '����',
        'Street' => '��D',
        'Country' => '��a',
        'Location' => '��',
        'installed' => '�w�w��',
        'uninstalled' => '���w��',
        'Security Note: You should activate %s because application is already running!' => '�w������: �z����E���� %s, �]�������Τw�g�b�B��!',
        'Unable to parse Online Repository index document!' => '������C�b�u�귽���ޤ���',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '�b�u�귽���S���n��]�����ݭn���ج[�A������L���ج[�һݳn��]',
        'No Packages or no new Packages in selected Online Repository!' => '�b�ҿ諸�b�u�귽���A�S���{�s�ηs���n��]',
        'printed at' => '���L���',
        'Dear Mr. %s,' => '�L�q�� %s ����:',
        'Dear Mrs. %s,' => '�L�q�� %s �k�h:',
        'Dear %s,' => '�L�q�� %s:',
        'Hello %s,' => '�z�n, %s:',
        'This account exists.' => '�o�ӱb��w�s�b',
        'New account created. Sent Login-Account to %s.' => '�s���b���w�Ы�, �ñH�e�q���� %s.',
        'Please press Back and try again.' => '�Ъ�^�A�դ@��.',
        'Sent password token to: %s' => '�o�e�K�X��: %s',
        'Sent new password to: %s' => '�o�e�s���K�X��: %s',
        'Upcoming Events' => '�Y�N��Ӫ��ƥ�',
        'Event' => '�ƥ�',
        'Events' => '�ƥ�',
        'Invalid Token!' => '�D�k���аO',
        'more' => '��h',
        'For more info see:' => '��h�H���Ь�',
        'Package verification failed!' => '�n��]�������',
        'Collapse' => '��',
        'News' => '�s�D',
        'Product News' => '���~�s�D',
        'Bold' => '����',
        'Italic' => '����',
        'Underline' => '���u',
        'Font Color' => '�r���C��',
        'Background Color' => '�I����',
        'Remove Formatting' => '�R���榡',
        'Show/Hide Hidden Elements' => '���/���� ���ín��',
        'Align Left' => '�����',
        'Align Center' => '�~�����',
        'Align Right' => '�k���',
        'Justify' => '���',
        'Header' => '�H���Y',
        'Indent' => '�Y',
        'Outdent' => '�~��',
        'Create an Unordered List' => '�Ыؤ@�ӵL�ǦC��',
        'Create an Ordered List' => '�Ыؤ@�Ӧ��ǦC��',
        'HTML Link' => 'HTML�챵',
        'Insert Image' => '���J�Ϲ�',
        'CTRL' => '��CTRL',
        'SHIFT' => '��SHIFT',
        'Undo' => '�_��',
        'Redo' => '����',

        # Template: AAAMonth
        'Jan' => '�@��',
        'Feb' => '�G��',
        'Mar' => '�T��',
        'Apr' => '�|��',
        'May' => '����',
        'Jun' => '����',
        'Jul' => '�C��',
        'Aug' => '�K��',
        'Sep' => '�E��',
        'Oct' => '�Q��',
        'Nov' => '�Q�@��',
        'Dec' => '�Q�G��',
        'January' => '�@��',
        'February' => '�G��',
        'March' => '�T��',
        'April' => '�|��',
        'June' => '����',
        'July' => '�C��',
        'August' => '�K��',
        'September' => '�E��',
        'October' => '�Q��',
        'November' => '�Q�@��',
        'December' => '�Q�G��',

        # Template: AAANavBar
        'Admin-Area' => '�޲z�ϰ�',
        'Agent-Area' => '�޳N����H����',
        'Ticket-Area' => 'Ticket��',
        'Logout' => '�`�P',
        'Agent Preferences' => '�ӤH�]�m',
        'Preferences' => '�]�m',
        'Agent Mailbox' => '�޳N����H���l�c',
        'Stats' => '�έp',
        'Stats-Area' => '�έp��',
        'Admin' => '�޲z',
        'Customer Users' => '�Ȥ�Τ�',
        'Customer Users <-> Groups' => '�Ȥ�Τ� <-> ��',
        'Users <-> Groups' => '�Τ� <-> ��',
        'Roles' => '����',
        'Roles <-> Users' => '���� <-> �Τ�',
        'Roles <-> Groups' => '���� <-> ��',
        'Salutations' => '�ٿ�',
        'Signatures' => 'ñ�W',
        'Email Addresses' => 'Email �a�}',
        'Notifications' => '�t�γq��',
        'Category Tree' => '�ؿ���',
        'Admin Notification' => '�޲z���q��',

        # Template: AAAPreferences
        'Preferences updated successfully!' => '�]�m��s���\!',
        'Mail Management' => '�l������]�m',
        'Frontend' => '�e�ݬɭ�',
        'Other Options' => '��L�ﶵ',
        'Change Password' => '�ק�K�X',
        'New password' => '�s�K�X',
        'New password again' => '���_�s�K�X',
        'Select your QueueView refresh time.' => '���C���Ϩ�s�ɶ�.',
        'Select your frontend language.' => '�ɭ��y��',
        'Select your frontend Charset.' => '�ɭ��r�Ŷ�.',
        'Select your frontend Theme.' => '�ɭ��D�D.',
        'Select your frontend QueueView.' => '���C����.',
        'Spelling Dictionary' => '���g�ˬd�r��',
        'Select your default spelling dictionary.' => '�ʬ٫��g�ˬd�r��.',
        'Max. shown Tickets a page in Overview.' => '�C�@����ܪ��̤j Tickets �ƥ�.',
        'Can\'t update password, your new passwords do not match! Please try again!' => '�K�X�⦸���šA�L�k��s�A�Э��s��J',
        'Can\'t update password, invalid characters!' => '�L�k��s�K�X�A�]�t�L�Ħr��.',
        'Can\'t update password, must be at least %s characters!' => '�L�k��s�K�X�A�K�X���צܤ�%s��.',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => '�L�k��s�K�X�A�ܤ֥]�t2�Ӥj�g�r�ũM2�Ӥp�g�r��.',
        'Can\'t update password, needs at least 1 digit!' => '�L�k��s�K�X�A�ܤ֥]�t1��Ʀr',
        'Can\'t update password, needs at least 2 characters!' => '�L�k��s�K�X�A�ܤ֥]�t2�Ӧr��!',

        # Template: AAAStats
        'Stat' => '�έp',
        'Please fill out the required fields!' => '�ж�g����r�q',
        'Please select a file!' => '�п�ܤ@�Ӥ��!',
        'Please select an object!' => '�п�ܤ@�ӹ�H!',
        'Please select a graph size!' => '�п�ܹϤ��ؤo!',
        'Please select one element for the X-axis!' => '�п�ܤ@�Ӥ�����X-�b',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => '�а���ܤ@�Ӥ����������Q��쪺\'Fixed\'���s',
        'If you use a checkbox you have to select some attributes of the select field!' => '�p�G�A�ϥδ_��اA������ܳQ��쪺�@���ݩ�!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '�b��w����J��д��J�@�ӭȡA������\'Fixed\'�_��ءI',
        'The selected end time is before the start time!' => '��w�������ɶ�����}�l�ɶ��I',
        'You have to select one or more attributes from the select field!' => '�q�Q��줤�A������ܤ@�өΦh���ݩʡI',
        'The selected Date isn\'t valid!' => '�ҿ���������',
        'Please select only one or two elements via the checkbox!' => '�q�L�_��ءA�а���ܤ@�өΨ�ӭn���I',
        'If you use a time scale element you can only select one element!' => '�p�G�z�ϥΪ��O�ɶ��ث׭n���A�����ܨ䤤�@�Ӳզ�����',
        'You have an error in your time selection!' => '�A���@�ӿ��~���ɶ���ܡI',
        'Your reporting time interval is too small, please use a larger time scale!' => '�z�����i�ɶ����j�Ӥp�A�ШϥΧ�j�����j',
        'The selected start time is before the allowed start time!' => '��w���}�l�ɶ����󤹳\���}�l�ɶ�',
        'The selected end time is after the allowed end time!' => '��w�������ɶ��ߩ󤹳\�������ɶ�',
        'The selected time period is larger than the allowed time period!' => '�b��w�ɶ��q�j�󤹳\���ɶ��q',
        'Common Specification' => '�@�P�W�S',
        'Xaxis' => 'X�b',
        'Value Series' => '���Ȩt�C',
        'Restrictions' => '����',
        'graph-lines' => '�u��',
        'graph-bars' => '�W����',
        'graph-hbars' => 'H�W����',
        'graph-points' => '���I',
        'graph-lines-points' => '�Ͻu�I',
        'graph-area' => '�ϰ�',
        'graph-pie' => '���',
        'extended' => '�X�i',
        'Agent/Owner' => '�Ҧ���',
        'Created by Agent/Owner' => '�޳N����H���Ыت�',
        'Created Priority' => '�Ыت��u����',
        'Created State' => '�Ыت����A',
        'Create Time' => '�Ыخɶ�',
        'CustomerUserLogin' => '�Ȥ�n��',
        'Close Time' => '�����ɶ�',
        'TicketAccumulation' => 'Ticket�n��',
        'Attributes to be printed' => '�n���L���ݩ�',
        'Sort sequence' => '�ƧǧǦC',
        'Order by' => '�����Ǳ�',
        'Limit' => '����',
        'Ticketlist' => 'Ticket�M��',
        'ascending' => '�ɧ�',
        'descending' => '����',
        'First Lock' => '������w',
        'Evaluation by' => '�������H',
        'Total Time' => '�`�ɶ�',
        'Ticket Average' => 'Ticket�B�z�����ɶ�',
        'Ticket Min Time' => 'Ticket�B�z�̤p�ɶ�',
        'Ticket Max Time' => 'Ticket�B�z�̤j�ɶ�',
        'Number of Tickets' => 'Ticket�ƥ�',
        'Article Average' => 'Article�B�z�����ɶ�',
        'Article Min Time' => 'Article�B�z�̤p�ɶ�',
        'Article Max Time' => 'Article�B�z�̤j�ɶ�',
        'Number of Articles' => 'Article�ƶq',
        'Accounted time by Agent' => '�޳N����H���B�zTicket�ҥΪ��ɶ�',
        'Ticket/Article Accounted Time' => 'Ticket/Article�Ҧ��Ϊ��ɶ�',
        'TicketAccountedTime' => 'Ticket�Ҧ��Ϊ��ɶ�',
        'Ticket Create Time' => 'Ticket�Ыخɶ�',
        'Ticket Close Time' => 'Ticket�����ɶ�',

        # Template: AAATicket
        'Lock' => '��w',
        'Unlock' => '����',
        'History' => '���v',
        'Zoom' => '�l��i�}',
        'Age' => '�`�ɶ�',
        'Bounce' => '�^�h',
        'Forward' => '��o',
        'From' => '�o��H',
        'To' => '����H',
        'Cc' => '�۰e',
        'Bcc' => '�t�e',
        'Subject' => '���D',
        'Move' => '����',
        'Queue' => '���C',
        'Priority' => '�u����',
        'Priority Update' => '��s�u����',
        'State' => '���A',
        'Compose' => '���g',
        'Pending' => '����',
        'Owner' => '�Ҧ���',
        'Owner Update' => '��s�Ҧ���',
        'Responsible' => '�t�d�H',
        'Responsible Update' => '��s�t�d�H',
        'Sender' => '�o��H',
        'Article' => '�H��',
        'Ticket' => 'Ticket',
        'Createtime' => '�Ыخɶ�',
        'plain' => '�¤奻',
        'Email' => '�l��a�}',
        'email' => 'E-Mail',
        'Close' => '����',
        'Action' => '�ʧ@',
        'Attachment' => '����',
        'Attachments' => '����',
        'This message was written in a character set other than your own.' => '�o�ʶl��ҥΦr�Ŷ��P���t�Φr�Ŷ�����',
        'If it is not displayed correctly,' => '�p�G��ܤ����T,',
        'This is a' => '�o�O�@��',
        'to open it in a new window.' => '�b�s���f�����}',
        'This is a HTML email. Click here to show it.' => '�o�O�@��HTML�榡�l��A�I���o�����.',
        'Free Fields' => '�B�~�H��',
        'Merge' => '�X��',
        'merged' => '�w�X��',
        'closed successful' => '���\����',
        'closed unsuccessful' => '��������',
        'new' => '�s��',
        'open' => '���}',
        'Open' => '���}',
        'closed' => '����',
        'Closed' => '����',
        'removed' => '�R��',
        'pending reminder' => '���ݴ���',
        'pending auto' => '�۰ʵ���',
        'pending auto close+' => '���ݦ۰�����+',
        'pending auto close-' => '���ݦ۰�����-',
        'email-external' => '�~�� E-Mail ',
        'email-internal' => '���� E-Mail ',
        'note-external' => '�~���`��',
        'note-internal' => '�����`��',
        'note-report' => '�`�ѳ��i',
        'phone' => '�q��',
        'sms' => '�u�H',
        'webrequest' => 'Web�ШD',
        'lock' => '��w',
        'unlock' => '����w',
        'very low' => '�D�`�C',
        'low' => '�C',
        'normal' => '���`',
        'high' => '��',
        'very high' => '�D�`��',
        '1 very low' => '1 �D�`�C',
        '2 low' => '2 �C',
        '3 normal' => '3 ���`',
        '4 high' => '4 ��',
        '5 very high' => '5 �D�`��',
        'Ticket "%s" created!' => 'Ticket "%s" �w�Ы�!',
        'Ticket Number' => 'Ticket �s��',
        'Ticket Object' => 'Ticket ��H',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Ticket "%s" ���s�b�A����Ыب�䪺�챵!',
        'Don\'t show closed Tickets' => '����ܤw������ Tickets',
        'Show closed Tickets' => '��ܤw������ Tickets',
        'New Article' => '�s�峹',
        'Email-Ticket' => '�l�� Ticket',
        'Create new Email Ticket' => '�Ыطs���l�� Ticket',
        'Phone-Ticket' => '�q�� Ticket',
        'Search Tickets' => '�j�� Tickets',
        'Edit Customer Users' => '�s��Ȥ�b��',
        'Edit Customer Company' => '�s��Ȥ���',
        'Bulk Action' => '��q�B�z',
        'Bulk Actions on Tickets' => '��q�B�z Tickets',
        'Send Email and create a new Ticket' => '�o�e Email �óЫؤ@�ӷs�� Ticket',
        'Create new Email Ticket and send this out (Outbound)' => '�Ыطs�� Ticket�õo�e�X�h',
        'Create new Phone Ticket (Inbound)' => '�Ыطs���q��Ticket�]�i�Ӫ�Ticket�^',
        'Overview of all open Tickets' => '�Ҧ��}�� Tickets ���p',
        'Locked Tickets' => '�w��w Ticket',
        'Watched Tickets' => '�q�\ Tickets',
        'Watched' => '�q�',
        'Subscribe' => '�q�',
        'Unsubscribe' => '�h�q',
        'Lock it to work on it!' => '��w�ö}�l�u�@ !',
        'Unlock to give it back to the queue!' => '����ðe�^���C!',
        'Shows the ticket history!' => '��� Ticket ���v���p!',
        'Print this ticket!' => '���L Ticket !',
        'Change the ticket priority!' => '�ק� Ticket �u����',
        'Change the ticket free fields!' => '�ק� Ticket �B�~�H��',
        'Link this ticket to an other objects!' => '�챵�� Ticket ���L��H!',
        'Change the ticket owner!' => '�ק� Ticket �Ҧ���!',
        'Change the ticket customer!' => '�ק� Ticket ���ݫȤ�!',
        'Add a note to this ticket!' => '�� Ticket �W�[�`��!',
        'Merge this ticket!' => '�X�ø� Ticket!',
        'Set this ticket to pending!' => '�N�� Ticket ��J���ݪ��A',
        'Close this ticket!' => '������ Ticket!',
        'Look into a ticket!' => '�d�� Ticket ���e',
        'Delete this ticket!' => '�R���� Ticket!',
        'Mark as Spam!' => '�аO���U��!',
        'My Queues' => '�ڪ����C',
        'Shown Tickets' => '��� Tickets',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '�z���l�� "<OTRS_TICKET>" �Q�X�è� "<OTRS_MERGE_TO_TICKET>" !',
        'Ticket %s: first response time is over (%s)!' => 'Ticket %s: �Ĥ@�T���ɶ��w�Ӯ�(%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Ticket %s: �Ĥ@�T���ɶ��N�Ӯ�(%s)!',
        'Ticket %s: update time is over (%s)!' => 'Ticket %s: ��s�ɶ��w�Ӯ�(%s)!',
        'Ticket %s: update time will be over in %s!' => 'Ticket %s: ��s�ɶ��N�Ӯ�(%s)!',
        'Ticket %s: solution time is over (%s)!' => 'Ticket %s: �B�z�ѨM�w�Ӯ�(%s)!',
        'Ticket %s: solution time will be over in %s!' => '�B�z�ѨM�N�Ӯ�(%s)!',
        'There are more escalated tickets!' => '����h�ɯŪ�tickets',
        'New ticket notification' => '�s Ticket �q��',
        'Send me a notification if there is a new ticket in "My Queues".' => '�p�G�ڪ����C�����s�� Ticket�A�гq����.',
        'Follow up notification' => '���ܳq��',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => '�p�G�Ȥ�o�e�F Ticket �^�_�A�åB�ڬO�� Ticket ���Ҧ���.',
        'Ticket lock timeout notification' => 'Ticket ��w�W�ɳq�� ',
        'Send me a notification if a ticket is unlocked by the system.' => '�p�G Ticket �Q�t�θ���A�гq����.',
        'Move notification' => '���ʳq��',
        'Send me a notification if a ticket is moved into one of "My Queues".' => '�p�G�� Ticket �Q��J�ڪ����C�A�гq����.',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '�z���̱`�ζ��C�A�p�G�z���l��]�m�E���A�z�N�|�o��Ӷ��C�����A�q��.',
        'Custom Queue' => '�Ȥᶤ�C',
        'QueueView refresh time' => '���C���Ϩ�s�ɶ�',
        'Screen after new ticket' => '�Ыطs Ticket �Z������',
        'Select your screen after creating a new ticket.' => '��ܱz�Ыطs Ticket �Z�A����ܪ�����.',
        'Closed Tickets' => '���� Tickets',
        'Show closed tickets.' => '��ܤw���� Tickets.',
        'Max. shown Tickets a page in QueueView.' => '���C���ϨC����� Ticket ��.',
        'Watch notification' => '���`�q��',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '��ک����`��ticket�A����ticket���֦��H�@�ˡA���ڤ]�o�@���q��',
        'Out Of Office' => '���b�줽��',
        'Select your out of office time.' => '��ܧA���b�줽�Ǫ��ɶ�',
        'CompanyTickets' => '���qTickets',
        'MyTickets' => '�ڪ� Tickets',
        'New Ticket' => '�s�� Ticket',
        'Create new Ticket' => '�Ыطs�� Ticket',
        'Customer called' => '�Ȥ�P�q',
        'phone call' => '�q�ܩI�s',
        'Reminder Reached' => '�����w�F',
        'Reminder Tickets' => '������ Ticket',
        'Escalated Tickets' => '�ɯŪ�Ticket',
        'New Tickets' => '�s��Ticket',
        'Open Tickets / Need to be answered' => '���}��Tickets/�ݭn�^��',
        'Tickets which need to be answered!' => '�ݭn�^���� Ticket',
        'All new tickets!' => '�Ҧ��s��tickets',
        'All tickets which are escalated!' => '�Ҧ��ɯŪ�tickets',
        'All tickets where the reminder date has reached!' => '�Ҧ��w�촣�������Ticket',
        'Responses' => '�^�_',
        'Responses <-> Queue' => '�^�_ <-> ���C',
        'Auto Responses' => '�۰ʦ^�_�\��',
        'Auto Responses <-> Queue' => '�۰ʦ^�_ <-> ���C',
        'Attachments <-> Responses' => '���� <-> �^�_',
        'History::Move' => 'Ticket ���춤�C "%s" (%s) �q���C "%s" (%s).',
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => '��s�A�ȯŧO��ĳ to %s (ID=%s).',
        'History::NewTicket' => 'New ticket [%s] created (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'FollowUp for [%s]. %s',
        'History::SendAutoReject' => '�۰ʩڵ��o�e�� "%s".',
        'History::SendAutoReply' => '�۰ʦ^�_�o�e�� "%s".',
        'History::SendAutoFollowUp' => '�۰ʸ��ܵo�e�� "%s".',
        'History::Forward' => '��o�� "%s".',
        'History::Bounce' => '�^�h�� "%s".',
        'History::SendAnswer' => '�H��o�e�� "%s".',
        'History::SendAgentNotification' => '"%s"-Benachrichtigung versand an "%s".',
        'History::SendCustomerNotification' => '�q���o�e�� "%s".',
        'History::EmailAgent' => '�o�l�󵹫Ȥ�.',
        'History::EmailCustomer' => 'Add mail. %s',
        'History::PhoneCallAgent' => 'Called customer',
        'History::PhoneCallCustomer' => '�Ȥ�w���L�q��',
        'History::AddNote' => '�[�`�� (%s)',
        'History::Lock' => 'Ticket ��w.',
        'History::Unlock' => 'Ticket ����.',
        'History::TimeAccounting' => '%s time unit(d) counted. Totaly %s time unit(s) counted.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Refreshed: %s',
        'History::PriorityUpdate' => '�u���ųQ��s�A�q  "%s" (%s) �� "%s" (%s).',
        'History::OwnerUpdate' => 'New owner is "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop protection! sent no auto answer to "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Refreshed: %s',
        'History::StateUpdate' => 'Before "%s" �s: "%s"',
        'History::TicketFreeTextUpdate' => 'Refreshed: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => '�Ȥ�i����W�ШD.',
        'History::TicketLinkAdd' => 'Link to "%s" established.',
        'History::TicketLinkDelete' => 'Link to "%s" removed.',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

        # Template: AAAWeekDay
        'Sun' => '�P����',
        'Mon' => '�P���@',
        'Tue' => '�P���G',
        'Wed' => '�P���T',
        'Thu' => '�P���|',
        'Fri' => '�P����',
        'Sat' => '�P����',

        # Template: AdminAttachmentForm
        'Attachment Management' => '����޲z',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => '�۰ʦ^�_�޲z',
        'Response' => '�^�_',
        'Auto Response From' => '�۰ʦ^�_�Ӧ�',
        'Note' => '�`��',
        'Useable options' => '�i�Χ��ܶq',
        'To get the first 20 character of the subject.' => '��ܼ��D���e20�Ӧr�`',
        'To get the first 5 lines of the email.' => '��ܹq�l���e����',
        'To get the realname of the sender (if given).' => '��ܵo��H���u��W�r',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => '��e�Ȥ�H�����i�ﶵ (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Ticket�֦��̪��i�ﶵ e. g. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Ticket�d���ﶵ (e. g. <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => '',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => '',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '�޲z�ȤH���',
        'Search for' => '�j��',
        'Add Customer Company' => '�W�[�ȤH���',
        'Add a new Customer Company.' => '�W�[�ȤH�����',
        'List' => '�C��',
        'This values are required.' => '�ӱ��إ�����g.',
        'This values are read only.' => '�Ӽƾڰ�Ū.',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => '�i��������g�����f�w�g�Q����,�h�X.',
        'This window must be called from compose window' => '�ӵ��f�����Ѽ��g���f�ե�',
        'Customer User Management' => '�Ȥ�Τ�޲z',
        'Add Customer User' => '�W�[�ȤH',
        'Source' => '�ƾڷ�',
        'Create' => '�Ы�',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '�Ȥ�Τᥲ�����@�ӽ㸹�q�Ȥ�n�������n���t��.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '�Ȥ�Τ� <-> �� �޲z',
        'Change %s settings' => '�ק� %s �]�m',
        'Select the user:group permissions.' => '��� �Τ�:�� �v��.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '�p�G����ܡA�h�ӲըS���v�� (�ӲյL�k�B�z Ticket)',
        'Permission' => '�v��',
        'ro' => '��Ū',
        'Read only access to the ticket in this group/queue.' => '���C���� Ticket ��Ū.',
        'rw' => 'Ū�g',
        'Full read and write access to the tickets in this group/queue.' => '���C���� Ticket Ū/�g.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => '�Ȥ�b�� <-> �A�Ⱥ޲z',
        'CustomerUser' => '�Ȥ�Τ�',
        'Service' => '�A��',
        'Edit default services.' => '�s���q�{�A��',
        'Search Result' => '�j�����G',
        'Allocate services to CustomerUser' => '���t�A�ȵ��Ȥ�',
        'Active' => '�E��',
        'Allocate CustomerUser to service' => '�����Ȥ��A��',

        # Template: AdminEmail
        'Message sent to' => '�����o�e��',
        'A message should have a subject!' => '�l�󥲶������D!',
        'Recipients' => '����H',
        'Body' => '���e',
        'Send' => '�o�e',

        # Template: AdminGenericAgent
        'GenericAgent' => '�p������',
        'Job-List' => '�u�@�C��',
        'Last run' => '�̦Z�B��',
        'Run Now!' => '�{�b�B��!',
        'x' => '',
        'Save Job as?' => '�O�s�u�@��?',
        'Is Job Valid?' => '�u�@�O�_����?',
        'Is Job Valid' => '�u�@����',
        'Schedule' => '�w��',
        'Currently this generic agent job will not run automatically.' => '�ثe�o�@�q��Agent�@�~�N���|�۰ʹB��',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '�ҥΦ۰ʰ���ܤֿ�ܤ@�ӭȤ����A�ɶ��M���',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '�峹����j�� (�Ҧp: "Mar*in" �Ϊ� "Baue*")',
        '(e. g. 10*5155 or 105658*)' => '  �Ҧp: 10*5144 �Ϊ� 105658*',
        '(e. g. 234321)' => '�Ҧp: 234321',
        'Customer User Login' => '�Ȥ�Τ�n���H��',
        '(e. g. U5150)' => '�Ҧp: U5150',
        'SLA' => '�A�ȯŧO��ĳ(SLA)',
        'Agent' => '�޳N����H��',
        'Ticket Lock' => 'Ticket �ꪬ�A',
        'TicketFreeFields' => 'Ticket �ۥѰϰ�',
        'Create Times' => '�Ыخɶ�',
        'No create time settings.' => '�S���Ыخɶ��]�m',
        'Ticket created' => '�Ыخɶ�',
        'Ticket created between' => ' �Ыخɶ��b',
        'Close Times' => '�����ɶ�',
        'No close time settings.' => '',
        'Ticket closed' => '������ Ticket',
        'Ticket closed between' => '',
        'Pending Times' => '�ݩw�ɶ�',
        'No pending time settings.' => '�S���]�m�ݩw�ɶ�',
        'Ticket pending time reached' => '�ݩw�ɶ��w�쪺Ticket',
        'Ticket pending time reached between' => '�b�ݩw�ɶ�����Ticket ',
        'Escalation Times' => '�ɯŮɶ�',
        'No escalation time settings.' => '�S���ɯŮɶ��]�m',
        'Ticket escalation time reached' => '�w��ɯŮɶ�Ticket',
        'Ticket escalation time reached between' => '�b�ɯŮɶ�����Ticket',
        'Escalation - First Response Time' => '���Ƚդ� - �����^�_���ɶ�',
        'Ticket first response time reached' => '�����^�_�ɶ��w�쪺Ticket',
        'Ticket first response time reached between' => '�b�����^�_�ɶ�����Ticket',
        'Escalation - Update Time' => '���Ƚդ� - ��s���ɶ�',
        'Ticket update time reached' => '��s�ɶ��w�쪺Ticket',
        'Ticket update time reached between' => '�b��s�ɶ�����Ticket',
        'Escalation - Solution Time' => '���Ƚդ� - �ѨM���ɶ�',
        'Ticket solution time reached' => '��׸ѨM�ɶ��w�쪺Ticket',
        'Ticket solution time reached between' => '�b��׸ѨM�ɶ����w�쪺Ticket',
        'New Service' => '�s���A�ȯŧO',
        'New SLA' => '�s���A�ȯŧO��ĳ(SLA)',
        'New Priority' => '�s�u����',
        'New Queue' => '�s���C',
        'New State' => '�s���A',
        'New Agent' => '�s�޳N����H��',
        'New Owner' => '�s�Ҧ���',
        'New Customer' => '�s�Ȥ�',
        'New Ticket Lock' => '�s Ticket ��',
        'New Type' => '�s������',
        'New Title' => '�s�����D',
        'New TicketFreeFields' => '�s�� Ticket �ۥѰϰ�',
        'Add Note' => '�W�[�`��',
        'Time units' => '�ɶ��椸',
        'CMD' => '�R�O',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '�N����o�өR�O, �Ĥ@�ӰѼƬO Ticket �s���A�ĤG�ӰѼƬO Ticket �����Ѳ�.',
        'Delete tickets' => '�R�� Tickets',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'ĵ�i! �� Ticket �N�|�q�ƾڮw�R���A�L�k��_!',
        'Send Notification' => '�o�e�q��',
        'Param 1' => '�Ѽ� 1',
        'Param 2' => '�Ѽ� 2',
        'Param 3' => '�Ѽ� 3',
        'Param 4' => '�Ѽ� 4',
        'Param 5' => '�Ѽ� 5',
        'Param 6' => '�Ѽ� 6',
        'Send agent/customer notifications on changes' => '�o�e�N�z/�Ȥ�q���ܧ�',
        'Save' => '�O�s',
        '%s Tickets affected! Do you really want to use this job?' => '%s Tickets ����v�T! �z�T�w�n�ϥγo�ӭp������?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => 'ĵ�i�G��z���\'�޲z\'�ժ��W�ٮɡA�bSysConfig�@�X�������ܤƤ��e�A�A�N�Q�޲z���O���I�p�G�o�ͳo�ر��p�A�Х�SQL�y�y��զW��^��\'admin\'',
        'Group Management' => '�պ޲z',
        'Add Group' => '�W�[�s����',
        'Add a new Group.' => '�W�[�@�ӷs��',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Admin �եi�H�i�J�t�κ޲z�ϰ�, Stats �եi�H�i�J�έp�޲z��',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => '�Ыطs���ըӱ���P���s���v��',
        'It\'s useful for ASP solutions.' => '�o�O�@�Ӧ��Ī����ΪA�ȴ��Ѱ�(ASP)�ѨM���.',

        # Template: AdminLog
        'System Log' => '�t�Τ��',
        'Time' => '�ɶ�',

        # Template: AdminMailAccount
        'Mail Account Management' => '�l��b���޲z',
        'Host' => '�D��',
        'Trusted' => '�O�_�H��',
        'Dispatching' => '����',
        'All incoming emails with one account will be dispatched in the selected queue!' => '�Ҧ��Ӧۤ@�Ӷl��㸹���l��N�|�Q���o��ҿﶤ�C!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '�p�G�z���b��O�ȱo�H�઺�A�{����X-OTRS���D��F�ɶ��]�u���A ... �^�N�Q�ϥΡI�l�F�L�o���N�Q�ϥ�',

        # Template: AdminNavigationBar
        'Users' => '�Τ�',
        'Groups' => '��',
        'Misc' => '��X',

        # Template: AdminNotificationEventForm
        'Notification Management' => '�q���޲z',
        'Add Notification' => '�W�[�q��',
        'Add a new Notification.' => '',
        'Name is required!' => '�ݭn�W��!',
        'Event is required!' => '�ݭn�ƥ�',
        'A message should have a body!' => '�l�󥲶��]�t���e!',
        'Recipient' => '����H',
        'Group based' => '���ժ�',
        'Agent based' => '���޳N����N��',
        'Email based' => '���q�l��',
        'Article Type' => 'Article���O ',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '���D�ǰt',
        'Body match' => '���e�ǰt',
        'Notifications are sent to an agent or a customer.' => '�q���Q�o�e��޳N����H���Ϊ̫Ȥ�.',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => '�t�γq��',

        # Template: AdminPackageManager
        'Package Manager' => '�n��]�޲z',
        'Uninstall' => '����',
        'Version' => '����',
        'Do you really want to uninstall this package?' => '�O�_�T�{�����ӳn��]?',
        'Reinstall' => '���s�w��',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '�z�O�_��Ʀn���s�w�˳o�ǳn��] (�Ҧ���u�]�m�N�|����)?',
        'Continue' => '�~��',
        'Install' => '�w��',
        'Package' => '�n��]',
        'Online Repository' => '�b�u���Ѯw',
        'Vendor' => '���Ѫ�',
        'Module documentation' => '�Ҷ�����',
        'Upgrade' => '�ɯ�',
        'Local Repository' => '���a���Ѯw',
        'Status' => '���A',
        'Overview' => '���p',
        'Download' => '�U��',
        'Rebuild' => '���s�c��',
        'ChangeLog' => '���ܰO��',
        'Date' => '���',
        'Filelist' => '���M��',
        'Download file from package!' => '�q�n��]���U���o�Ӥ��',
        'Required' => '���ݪ�',
        'PrimaryKey' => '���䪺Key',
        'AutoIncrement' => '�۰ʻ��W',
        'SQL' => 'SQL',
        'Diff' => '���',

        # Template: AdminPerformanceLog
        'Performance Log' => '�t�κʵ���',
        'This feature is enabled!' => '�ӥ\��w�ҥ�',
        'Just use this feature if you want to log each request.' => '�p�G�z�Q�ԲӰO���C�ӽШD, �z�i�H�ϥθӥ\��.',
        'Activating this feature might affect your system performance!' => '�Ұʸӥ\��i��v�T�z���t�Ωʯ�',
        'Disable it here!' => '�����ӥ\��',
        'This feature is disabled!' => '�ӥ\��w����',
        'Enable it here!' => '���}�ӥ\��',
        'Logfile too large!' => '��Ӥ��L�j',
        'Logfile too large, you need to reset it!' => '��Ӥ��L�j, �A�ݭn���m��',
        'Range' => '�S��',
        'Interface' => '�ɭ�',
        'Requests' => '�ШD',
        'Min Response' => '�̤p�^��',
        'Max Response' => '�̤j�^��',
        'Average Response' => '�����^��',
        'Period' => '�P��',
        'Min' => '�̤p',
        'Max' => '�̤j',
        'Average' => '����',

        # Template: AdminPGPForm
        'PGP Management' => 'PGP �޲z',
        'Result' => '���G',
        'Identifier' => '���Ѳ�',
        'Bit' => '��',
        'Key' => '�K��',
        'Fingerprint' => '���L',
        'Expires' => '�L��',
        'In this way you can directly edit the keyring configured in SysConfig.' => '�o�ؤ覡�A�z�i�H�����s��bSysConfig�]�m����',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => '�l��L�o�޲z',
        'Filtername' => '�L�o���W��',
        'Stop after match' => '',
        'Match' => '�ǰt',
        'Value' => '��',
        'Set' => '�]�m',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '�p�G�z�Q�ھ� X-Headers ���e�ӹL�o�A�i�H�ϥΥ��W�h��F��.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '�p�G�z�Q�Ȥǰtemail �a�}�A �Шϥ�EMAILADDRESS:info@example.com in From, To or Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '�p�G�z��RegExp�A�z�]��ϥΤǰt��in () as [***] in \'Set\'',

        # Template: AdminPriority
        'Priority Management' => '�u���v�޲z',
        'Add Priority' => '�K�[�u���v',
        'Add a new Priority.' => '�W�[�@�ӷs���u���v',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => '���C <-> �۰ʦ^�_�޲z',
        'settings' => '�]�m',

        # Template: AdminQueueForm
        'Queue Management' => '���C�޲z',
        'Sub-Queue of' => '�l���C',
        'Unlock timeout' => '�۰ʸ���W�ɴ���',
        '0 = no unlock' => '0 = ���۰ʸ���  ',
        'Only business hours are counted.' => '�ȥH�W�Z�ɶ��p��',
        '0 = no escalation' => '0 = �L����  ',
        'Notify by' => '�i�׳q��',
        'Follow up Option' => '��i�ﶵ',
        'Ticket lock after a follow up' => '��i�T�{�H�Z�ATicket �N�Q�۰ʤW��',
        'Systemaddress' => '�t�ζl��a�}',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '�p�G�޳N����H����w�F Ticket,���O�b�@�w���ɶ����S���^�_�A�� Ticket �N�|�Q�۰ʸ���A�ӹ�Ҧ����޳N����H���i��.',
        'Escalation time' => '���ɵ��_�ɶ�',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => '�Ӷ��C����ܳW�w�ɶ����S���Q�B�z�� Ticket',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '�p�G Ticket �w�g�B���������A�A�ӫȤ�N�o�e�F�@�Ӹ�i Ticket�A����o�� Ticket �N�|�Q�����[��A�өҦ��̳Q�w�q����өҦ���',
        'Will be the sender address of this queue for email answers.' => '�^�_�l��ҥΪ��o�e�̦a�}',
        'The salutation for email answers.' => '�^�_�l��ҥκٿ�.',
        'The signature for email answers.' => '�^�_�l��ҥ�ñ�W.',
        'Customer Move Notify' => 'Ticket ���ʫȤ�q��',
        'OTRS sends an notification email to the customer if the ticket is moved.' => '�p�G Ticket �Q���ʡA�t�αN�|�o�e�@�ӳq���l�󵹫Ȥ�',
        'Customer State Notify' => 'Ticket ���A�Ȥ�q��',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => '�p�G Ticket ���A���ܡA�t�αN�|�o�e�q���l�󵹫Ȥ�',
        'Customer Owner Notify' => '�Ȥ�Ҧ��̳q�i',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => '�p�G Ticket �Ҧ��̧��ܡA�t�αN�|�o�e�q���l�󵹫Ȥ�.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => '�^�_ <-> ���C�޲z',

        # Template: AdminQueueResponsesForm
        'Answer' => '�^�_',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => '�^�_ <-> ����޲z',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => '�^�_���e�޲z',
        'A response is default text to write faster answer (with default text) to customers.' => '���F�ֳt�^�_�A�^�_���e�w�q�F�C�Ӧ^�_�����_�����e.',
        'Don\'t forget to add a new response a queue!' => '���n�ѰO�W�[�@�ӷs���^�_���e�춤�C!',
        'The current ticket state is' => '��e Ticket ���A�O',
        'Your email address is new' => '�z���l��a�}�O�s��',

        # Template: AdminRoleForm
        'Role Management' => '����޲z',
        'Add Role' => '�W�[����',
        'Add a new Role.' => '�s�W�@�Ө���',
        'Create a role and put groups in it. Then add the role to the users.' => '�Ыؤ@�Ө���ñN�ե[�J����,�M�Z�N����ᵹ�Τ�.',
        'It\'s useful for a lot of users and groups.' => '���j�q���Τ�M�ժ��ɭԡA����D�`�A�X.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => '���� <-> �պ޲z',
        'move_into' => '���ʨ�',
        'Permissions to move tickets into this group/queue.' => '���\���� Tickets ��Ӳ�/���C.',
        'create' => '�Ы�',
        'Permissions to create tickets in this group/queue.' => '�b�Ӳ�/���C���Ы� Tickets ���v��.',
        'owner' => '�Ҧ���',
        'Permissions to change the ticket owner in this group/queue.' => '�b�Ӳ�/���C���ק� Tickets �Ҧ��̪��v��.',
        'priority' => '�u����',
        'Permissions to change the ticket priority in this group/queue.' => '�b�Ӳ�/���C���ק� Tickets �u���Ū��v��.',

        # Template: AdminRoleGroupForm
        'Role' => '����',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => '���� <-> �Τ�޲z',
        'Select the role:user relations.' => '��� ����:�Τ� ���p.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => '�٩I�y�޲z',
        'Add Salutation' => '�W�[�٩I�y',
        'Add a new Salutation.' => '�W�[�@�ӷs���٩I�y',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '�w���Ҧ��ݭn�Ұ�',
        'Secure mode will (normally) be set after the initial installation is completed.' => '�b��l�w�˵����Z�A�w���Ҧ��q�`�N�Q�]�m',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '���F���s��Web �ɭ��w�ˡA�w���Ҧ�����disabled',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '�p�G�ҰʼҦ��S���Q�ҰʡA�гq�L�t�γ]�m�Ұʥ��]���z��OTRS�{�Ǥw�g�B��',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'SQL�d�ߵ��f',
        'Go' => '����',
        'Select Box Result' => '�d�ߵ��G',

        # Template: AdminService
        'Service Management' => '�A�Ⱥ޲z',
        'Add Service' => '�W�[�A��',
        'Add a new Service.' => '�s�W�@�ӪA��',
        'Sub-Service of' => '�l�A�����ݩ�',

        # Template: AdminSession
        'Session Management' => '�|�ܺ޲z',
        'Sessions' => '�|��',
        'Uniq' => '��@',
        'Kill all sessions' => '�פ�Ҧ��|��',
        'Session' => '�|��',
        'Content' => '���e',
        'kill session' => '�פ�|��',

        # Template: AdminSignatureForm
        'Signature Management' => 'ñ�W�޲z',
        'Add Signature' => '�W�[ñ�W',
        'Add a new Signature.' => '�s�W�@��ñ�W',

        # Template: AdminSLA
        'SLA Management' => '�A�ȯŧO��ĳ(SLA)�޲z',
        'Add SLA' => '�W�[�A�ȯŧO��ĳ(SLA)',
        'Add a new SLA.' => '�s�W�@�ӪA�ȯŧO��ĳ(SLA).',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME �޲z',
        'Add Certificate' => '�K�[����',
        'Add Private Key' => '�K�[�p��',
        'Secret' => '�K�X',
        'Hash' => 'Hash',
        'In this way you can directly edit the certification and private keys in file system.' => '�γo�ؤ覡�z�i�H�����s����ѩM�p��',

        # Template: AdminStateForm
        'State Management' => '���A�޲z',
        'Add State' => '�W�[���A',
        'Add a new State.' => '�W�[�@�ӷs�����A',
        'State Type' => '���A����',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => '�z�P�ɧ�s�F Kernel/Config.pm �����ʬ٪��A!',
        'See also' => '�Ѩ�',

        # Template: AdminSysConfig
        'SysConfig' => '�t�ΰt�m',
        'Group selection' => '��ܲ�',
        'Show' => '���',
        'Download Settings' => '�U���]�m',
        'Download all system config changes.' => '�U���Ҧ����t�ΰt�m�ܤ�.',
        'Load Settings' => '�[���]�m',
        'Subgroup' => '�l��',
        'Elements' => '����',

        # Template: AdminSysConfigEdit
        'Config Options' => '�t�m�ﶵ',
        'Default' => '�ʬ�',
        'New' => '�s',
        'New Group' => '�s��',
        'Group Ro' => '��Ū�v������',
        'New Group Ro' => '�s����Ū�v������',
        'NavBarName' => '�ɯ���W��',
        'NavBar' => '�ɯ���',
        'Image' => '�Ϥ�',
        'Prio' => '�u����',
        'Block' => '��',
        'AccessKey' => '�i�_',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => '�t�ζl��a�}�޲z',
        'Add System Address' => '�W�[�t�ζl��a�}',
        'Add a new System Address.' => '�W�[�@�ӷs���t�ζl��a�}.',
        'Realname' => '�u��m�W',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => '�Ҧ��o�e��Ӧ���H�������N�Q���ҿ�ܪ����C',

        # Template: AdminTypeForm
        'Type Management' => '�����޲z',
        'Add Type' => '�W�[����',
        'Add a new Type.' => '�W�[�@�ӷs������',

        # Template: AdminUserForm
        'User Management' => '�H���޲z',
        'Add User' => '�W�[�H��',
        'Add a new Agent.' => '�W�[�@�ӷs���H��',
        'Login as' => '�n���W',
        'Firstname' => '�W',
        'Lastname' => '�m',
        'Start' => '�}�l',
        'End' => '����',
        'User will be needed to handle tickets.' => '�ݭn�Τ�ӳB�z Tickets.',
        'Don\'t forget to add a new user to groups and/or roles!' => '���n�ѰO�W�[�@�ӥΤ��թM����!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => '�Τ� <-> �պ޲z',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => '�a�}ï',
        'Return to the compose screen' => '�^�켶�g����',
        'Discard all changes and return to the compose screen' => '���Ҧ��ק�,�^�켶�g����',

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
        'Please update now.' => '�Ч�s',
        'Release Note' => '�����o���`��',
        'Level' => '�ŧO',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '',

        # Template: AgentDashboardTicketOverview

        # Template: AgentDashboardTicketStats

        # Template: AgentInfo
        'Info' => '�Ա�',

        # Template: AgentLinkObject
        'Link Object: %s' => '�s����H: %s',
        'Object' => '��H',
        'Link Object' => '�챵��H',
        'with' => '�M',
        'Select' => '���',
        'Unlink Object: %s' => '���s����H %s',

        # Template: AgentLookup
        'Lookup' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => '���g�ˬd',
        'spelling error(s)' => '���g���~',
        'or' => '�Ϊ�',
        'Apply these changes' => '���γo�ǧ���',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => '�z�O�_�T�{�R���ӹ�H?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => '��ܭ���ѼơA�ϲέp�S����',
        'Fixed' => '',
        'Please select only one element or turn off the button \'Fixed\'.' => '�а���ܤ@�Ӥ����������Q��쪺\'Fixed\'���s',
        'Absolut Period' => '����P��',
        'Between' => '',
        'Relative Period' => '�۹�P��',
        'The last' => '',
        'Finish' => '',
        'Here you can make restrictions to your stat.' => '�z�i�H���z���έp��w����Ѽ�',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => '�p�G�z�R���_�b���T�w���_��ءA�ͦ��Ӳέp���޳N����N��i�H���ܬ����n�����ݩ�',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => '���J�@�P�W�S',
        'Permissions' => '�i�',
        'Format' => '�榡',
        'Graphsize' => '�ϧΤ�',
        'Sum rows' => '�`�M��',
        'Sum columns' => '�`�M�C',
        'Cache' => '�w�s',
        'Required Field' => '����r�q',
        'Selection needed' => '��ܻݭn',
        'Explanation' => '����',
        'In this form you can select the basic specifications.' => '�H�o�اΦ��A�z�i�H��ܰ򥻳W�S',
        'Attribute' => '�ݩ�',
        'Title of the stat.' => '�έp�����D',
        'Here you can insert a description of the stat.' => '�z�i�H���J�έp���y�z',
        'Dynamic-Object' => '�ʺA��H',
        'Here you can select the dynamic object you want to use.' => '�z�i�H��ܱz�ݭn�ϥΪ��ʺA��H',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '�`�G�o���M��z���w�˦h�ְʺA��H�i�H�ϥ�',
        'Static-File' => '�R�A���',
        'For very complex stats it is possible to include a hardcoded file.' => '���D�`�_�����έp���i��]�A�@�ӵw�s�X���',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => '�p�G�@�ӷs���w�s�X���s�b�A�i���ݩʱN��ܡA�z�i�H��ܨ䤤�@��',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '�v���]�m�C�z�i�H��ܤ@�өΦh�ӹ���A���P���޳N����N���i�ݨ��Ӱt�m���έp',
        'Multiple selection of the output format.' => '��X�榡���h�ؿ��',
        'If you use a graph as output format you have to select at least one graph size.' => '�p�G�z�ϥΪ��O�ϧΪ���X�榡�A�����ܤֿ�ܤ@�ӹϧΪ��j�p',
        'If you need the sum of every row select yes' => '�p�ݭn�C�檺�`�M��� yes��',
        'If you need the sum of every column select yes.' => '�p�ݭn�C�C���`�M��ܡ�yes��',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '�j�h�ƪ��έp��ƥi�H�w�s,�o�N�[�ֳo�@�έp���i��.',
        '(Note: Useful for big databases and low performance server)' => '�`�G�A�Ω�j���ƾڮw�M�C�ʯ઺�A�Ⱦ�',
        'With an invalid stat it isn\'t feasible to generate a stat.' => '�εL�Ī��έp���i�ͦ��έp',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '�o�O�D�`���Ϊ��A�p�G�A���Q���H�o��έp�����G�βέp���G�ä�����',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => '��ܻ��Ȩt�C���n��',
        'Scale' => '�ث�',
        'minimal' => '�̤p��',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => '�аO��A�o���B�����Ȩt�C�n�j��X�b���ثס]�pX -�b=>����A ValueSeries =>�~�^ ',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '�b�o�̡A�z�i�H�w�q�@�t�C���ȡC�A���i���ܤ@�өΨ�Ӧ]���C�M�Z�z�i�H��ܤ������ݩʡC�C���ݩʱN��ܬ���@���ȡC�p�G�z����ܥ����ݩ�, �����z�ͦ��@�Ӳέp���ɭԩҦ��������ݩʱN�Q�ϥΡC�åB�@�ӷs���ݩʳQ��s��W���t�m��',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => '��ܱN�Φbx�b������',
        'maximal period' => '�̤j�P��',
        'minimal scale' => '�̤p�ث�',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '�b�o�̡A�z�i�H�w�qx�b�C�z�i�H��ܪ��@�Ӧ]���q�L�����s�C�p�G�A�S����ܡA�Ҧ��������ݩʱN�Q�ϥη�z�ͦ��@�Ӳέp���ɭԡC�åB�@�ӷs���ݩʳQ��s��W���t�m��',

        # Template: AgentStatsImport
        'Import' => '�ɤJ',
        'File is not a Stats config' => '��󤣬O�@�Ӳέp�t�m',
        'No File selected' => '�S�����Q�襤',

        # Template: AgentStatsOverview
        'Results' => '���G',
        'Total hits' => '�I����',
        'Page' => '��',

        # Template: AgentStatsPrint
        'Print' => '���L',
        'No Element selected.' => '�S�������Q�襤',

        # Template: AgentStatsView
        'Export Config' => '�ɥX�t�m',
        'Information about the Stat' => '����έp���H��',
        'Exchange Axis' => '�ഫ�b',
        'Configurable params of static stat' => '�R�A�έp���t�m�Ѽ�',
        'No element selected.' => '�S���Q��Ѽ�',
        'maximal period from' => '�̤j�P����',
        'to' => '��',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '�q�L��J�M��ܦr�q�A�z�i�H���z���ݨD�Ӱt�m�έp�C�z�i�H�ק�s�診�ǲέp�n���ѱz���έp��ƺ޲z���ӳ]�m�C',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => '�l�󥲶�������H!',
        'You need a email address (e. g. customer@example.com) in To:!' => '����H�H�������O�l��a�}(�Ҧp�Gcustomer@example.com)',
        'Bounce ticket' => '�^�h Ticket ',
        'Ticket locked!' => 'Ticket �Q��w!',
        'Ticket unlock!' => '���� Ticket!',
        'Bounce to' => '�^�h�� ',
        'Next ticket state' => 'Tickets ���A',
        'Inform sender' => '�q���o�e��',
        'Send mail!' => '�o�e!',

        # Template: AgentTicketBulk
        'You need to account time!' => '�z�ݭn�O���ɶ�',
        'Ticket Bulk Action' => 'Ticket ��q�B�z',
        'Spell Check' => '���g�ˬd',
        'Note type' => '�`������',
        'Next state' => 'Ticket ���A',
        'Pending date' => '�ݳB�z���',
        'Merge to' => '�X�è�',
        'Merge to oldest' => '�X�è�̦Ѫ�',
        'Link together' => '�X�æb�@�_',
        'Link to Parent' => '�X�è�W�@��',
        'Unlock Tickets' => '���� Tickets',

        # Template: AgentTicketClose
        'Ticket Type is required!' => 'Ticket �������O������!',
        'A required field is:' => '�������r�q�O',
        'Close ticket' => '���� Ticket',
        'Previous Owner' => '�e�@�өҦ���',
        'Inform Agent' => '�q���޳N����H��',
        'Optional' => '�ﶵ',
        'Inform involved Agents' => '�q�������޳N����H��',
        'Attach' => '����',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => '���������g�L���g�ˬd!',
        'Compose answer for ticket' => '���g���_,Ticket �s��',
        'Pending Date' => '�i�J���ݪ��A���',
        'for pending* states' => '�w�ﵥ�ݪ��A',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => '�ק� Tickets ���ݫȤ�',
        'Set customer user and customer id of a ticket' => '�]�m Ticket ���ݫȤ�Τ�',
        'Customer User' => '�Ȥ�Τ�',
        'Search Customer' => '�j���Ȥ�',
        'Customer Data' => '�Ȥ�ƾ�',
        'Customer history' => '�Ȥ���v���p',
        'All customer tickets.' => '�ӫȤ�Ҧ� Tickets �O��.',

        # Template: AgentTicketEmail
        'Compose Email' => '���g Email',
        'new ticket' => '�s�� Ticket',
        'Refresh' => '��s',
        'Clear To' => '�M��',
        'All Agents' => '�Ҧ��޳N����H��',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => '�峹����',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => '�ק� Ticket �B�~�H��',

        # Template: AgentTicketHistory
        'History of' => '���v',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => '�z�ݭn�ϥΤ@�� Ticket �s��!',
        'Ticket Merge' => 'Ticket �X��',

        # Template: AgentTicketMove
        'Move Ticket' => '���� Ticket',

        # Template: AgentTicketNote
        'Add note to ticket' => '�W�[�`�Ѩ� Ticket',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => '�������i�ɶ�',
        'Service Time' => '�A�Ȯɶ�',
        'Update Time' => '��s�ɶ�',
        'Solution Time' => '�ѨM�ɶ�',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => '�z�ܤֻݭn��ܤ@�� Ticket!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => '�L�o��',
        'Change search options' => '�ק�j���ﶵ',
        'Tickets' => '',
        'of' => '',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => '���g���_',
        'Contact customer' => '�p�t�Ȥ�',
        'Change queue' => '���ܶ��C',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => '���ǱƧ�',
        'up' => '�W',
        'sort downward' => '�f�ǱƧ�',
        'down' => '�U',
        'Escalation in' => '����',
        'Locked' => '��w���A',

        # Template: AgentTicketOwner
        'Change owner of ticket' => '�ק� Ticket �Ҧ���',

        # Template: AgentTicketPending
        'Set Pending' => '�]�m�ݳB�z���A',

        # Template: AgentTicketPhone
        'Phone call' => '�q��',
        'Clear From' => '���m',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => '�¤奻',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Ticket�H��',
        'Accounted time' => '�ҥήɶ�',
        'Linked-Object' => '�w�챵��H',
        'by' => '��',

        # Template: AgentTicketPriority
        'Change priority of ticket' => '�վ� Ticket �u����',

        # Template: AgentTicketQueue
        'Tickets shown' => '��� Ticket',
        'Tickets available' => '�i�� Ticket',
        'All tickets' => '�Ҧ�Ticket',
        'Queues' => '���C',
        'Ticket escalation!' => 'Ticket ���ɳB�z!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '��� Ticket ���t�d�H',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Ticket �j��',
        'Profile' => '�j����������',
        'Search-Template' => '�j���ҪO',
        'TicketFreeText' => 'Ticket �B�~�H��',
        'Created in Queue' => '�b���C�̫إ�',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '���ܮɶ�',
        'No change time settings.' => '�����ܮɶ��]�m',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => '�j�����G��ܬ�',
        'Save Search-Profile as Template?' => '�N�j������O�s���ҪO',
        'Yes, save it with name' => '�O, �O�s���W��',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => '����',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => '�i�}',
        'Collapse View' => '���|',
        'Split' => '����',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => 'Article �L�o�]�m',
        'Save filter settings as default' => '�O�s�L�o�]�m���ʬ٭�',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => '�l��',

        # Template: CustomerFooter
        'Powered by' => '�X�ʤ�',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => '�n��',
        'Lost your password?' => '�ѰO�K�X?',
        'Request new password' => '�]�m�s�K�X',
        'Create Account' => '�Ыرb��',

        # Template: CustomerNavigationBar
        'Welcome %s' => '�w�� %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => '�ɶ�',
        'No time settings.' => '�L�ɶ�����.',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => '�I���o�̳��i�@�� Bug!',

        # Template: Footer
        'Top of Page' => '��������',

        # Template: FooterSmall

        # Template: Header
        'Home' => '',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'WEB �w�˦V��',
        'Welcome to %s' => '�w��ϥ� %s',
        'Accept license' => '�P�N�\�i',
        'Don\'t accept license' => '���P�N',
        'Admin-User' => '�޲z��',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '�p�G�z���ƾڮw���]�m root �K�X, �Цb�o�̿�J, �_�h, �ЫO�d�ť�. �X��w���Ҽ{, �ڭ̫�ĳ�z�� root �]�m�@�ӱK�X, ��h�H���аѦҼƾڮw���U����.',
        'Admin-Password' => '�޲z���K�X',
        'Database-User' => '�ƾڮw�Τ�W��',
        'default \'hot\'' => '�q�{�K�X \'hot\'',
        'DB connect host' => '�ƾڳs���D��',
        'Database' => '�ƾڮw',
        'Default Charset' => '�ʬ٦r�Ŷ�',
        'utf8' => 'UTF-8',
        'false' => '��',
        'SystemID' => '�t��ID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(�t�μ��Ѳ�. Ticket �s���M http �|�ܳ��H�o�Ӽ��ѲŶ}�Y)',
        'System FQDN' => '�t�ΰ�W',
        '(Full qualified domain name of your system)' => '(�t�ΰ�W)',
        'AdminEmail' => '�޲z���a�}',
        '(Email of the system admin)' => '(�t�κ޲z���l��a�})',
        'Organization' => '��´',
        'Log' => '���',
        'LogModule' => '��ӼҶ�',
        '(Used log backend)' => '�ϥΤ�ӦZ��',
        'Logfile' => '��Ӥ��',
        '(Logfile just needed for File-LogModule!)' => '(�����E�� File-LogModule �ɤ~�ݭn Logfile!)',
        'Webfrontend' => 'Web �e��',
        'Use utf-8 it your database supports it!' => '�p�G�z���ƾڮw����A�ϥ�UTF-8�r�Žs�X!',
        'Default Language' => '�ʬٻy��',
        '(Used default language)' => '(�ϥίʬٻy��)',
        'CheckMXRecord' => '�ˬd MX �O��',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '�q�L���g���ר��ˬd�ιL���q�l�l��a�}��MX�O���C�zOTRS�����b�������J���C�t�����̡A�Ф��n�ϥ�CheckMXRecord!',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '���F����ϥ�OTRS, �z�����Hroot������J�H�U��b�R�O�椤(Terminal/Shell).',
        'Restart your webserver' => '�Э��s�Ұʱz�� webserver.',
        'After doing so your OTRS is up and running.' => '�����Z�A�z�i�H�Ұ� OTRS �t�ΤF.',
        'Start page' => '�}�l����',
        'Your OTRS Team' => '�z�� OTRS �p��.',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => '�L�v��',

        # Template: Notify
        'Important' => '���n',

        # Template: PrintFooter
        'URL' => '���}',

        # Template: PrintHeader
        'printed by' => '���L��',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'OTRS ���խ�',
        'Counter' => '�p�ƾ�',

        # Template: Warning

        # Template: YUI

        # Misc
        'Edit Article' => '�s��H��',
        'Create Database' => '�Ыؼƾڮw',
        'DB Host' => '�ƾڮw�D��',
        'Ticket Number Generator' => 'Ticket �s���ͦ���',
        'Create new Phone Ticket' => '�Ыطs���q�� Ticket',
        'Symptom' => '�g��',
        'U' => '�ɧ�',
        'Site' => '���I',
        'Customer history search (e. g. "ID342425").' => '�j���Ȥ���v (�Ҧp�G "ID342425").',
        'Can not delete link with %s!' => '����R�� %s ���s��',
        'Close!' => '����!',
        'for agent firstname' => '�޳N����H�� �W',
        'No means, send agent and customer notifications on changes.' => '�����ܮɤ��o�e�q�����޳N�H���ΫȤ�.',
        'A web calendar' => 'Web ���',
        'to get the realname of the sender (if given)' => '�l��o�e�H���u��m�W (�p�G�s�b)',
        'OTRS DB Name' => '�ƾڮw�W��',
        'Notification (Customer)' => '',
        'Select Source (for add)' => '��ܼƾڷ�(�W�[�\��ϥ�)',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        'Child-Object' => '�l��H',
        'Days' => '��',
        'Queue ID' => '���C�s��',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => '�t�m�ﶵ (�Ҧp:<OTRS_CONFIG_HttpType>)',
        'System History' => '�t�ξ��v',
        'customer realname' => '�Ȥ�u��m�W',
        'Pending messages' => '������J���ݪ��A',
        'for agent login' => '�޳N����H�� �n���W',
        'Keyword' => '����r',
        'Close type' => '��������',
        'DB Admin User' => '�ƾڮw�޲z���Τ�W',
        'for agent user id' => '�޳N����H�� �Τ�W',
        'Change user <-> group settings' => '�ק� �Τ� <-> �� �]�m',
        'Problem' => '���D',
        'Escalation' => '�վ�',
        '"}' => '',
        'Order' => '����',
        'next step' => '�U�@�B',
        'Follow up' => '��i',
        'Customer history search' => '�Ȥ���v�j��',
        'PostMaster Mail Account' => '�l��b���޲z',
        'Stat#' => '',
        'Create new database' => '�Ыطs���ƾڮw',
        'Keywords' => '����r',
        'Ticket Escalation View' => '�վ�d�� Ticket',
        'Today' => '����',
        'No * possible!' => '���i�ϥγq�t�� "*" !',
        'Load' => '�[��',
        'PostMaster Filter' => '�l�󤺮e�L�o',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_USERFIRSTNAME>)' => '',
        'Message for new Owner' => '���Ҧ��̪�����',
        'to get the first 5 lines of the email' => '�l�󥿤�e5��',
        'Sort by' => '�Ƨ�',
        'OTRS DB Password' => 'OTRS �Τ�K�X',
        'Last update' => '�̦Z��s��',
        'Tomorrow' => '����',
        'not rated' => '��������',
        'to get the first 20 character of the subject' => '�l����D�e20�Ӧr��',
        'Select the customeruser:service relations.' => '',
        'DB Admin Password' => '�ƾڨt�κ޲z���K�X',
        'Drop Database' => '�R���ƾڮw',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '�b�o�̡A�z�i�H�w�qx�b�C�z�i�H��ܪ��@�Ӧ]���q�L�����s�C�M�Z�A�A������ܸӤ�����өΨ�ӥH�W���ݩʡC�p�G�z����ܥ����ݩ�, �����z�ͦ��@�Ӳέp���ɭԩҦ��������ݩʱN�Q�ϥΡC�åB�@�ӷs���ݩʳQ��s��W���t�m��',
        'FileManager' => '���޲z��',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => '��e�Ȥ�Τ�H�� (�Ҧp: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => '�ݳB�z����',
        'Comment (internal)' => '�`�� (����)',
        'Ticket owner options (e. g. <OTRS_OWNER_USERFIRSTNAME>)' => '�i�Ϊ� Ticket �k�ݤH�H�� (�Ҧp: <OTRS_OWNER_USERFIRSTNAME>)',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '�i�Ϊ����� Ticket �H�� (�Ҧp: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(�ϥ� Ticket �s���榡)',
        'Reminder' => '����',
        'OTRS DB connect host' => 'OTRS �ƾڮw�D��',
        'All Agent variables.' => '�Ҧ����޳N�H���ܶq',
        ' (work units)' => '�u�@�椸',
        'Next Week' => '�U�P',
        'All Customer variables like defined in config option CustomerUser.' => '�Ҧ��Ȥ��ܶq�i�H�b�t�m�ﶵCustomerUser���w�q',
        'for agent lastname' => '�޳N����H�� �W',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => '�ʧ@�ШD�̫H�� (�Ҧp: <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => '��������',
        'Parent-Object' => '����H',
        'Of couse this feature will take some system performance it self!' => '��M, �ӥ\��|���Τ@�w���t�θ귽, �[���t�Ϊ��t��!',
        'Detail' => '�Ӹ`',
        'Your own Ticket' => '�z�ۤv�� Ticket',
        'TicketZoom' => 'Ticket �i�}',
        'Don\'t forget to add a new user to groups!' => '���n�ѰO�W�[�s���Τ���!',
        'Open Tickets' => '�}�� Tickets',
        'General Catalog' => '�`�ؿ�',
        'CreateTicket' => '�Ы� Ticket',
        'You have to select two or more attributes from the select field!' => '�A�����q�ҿ�r�q����ܨ�өΨ�ӥH�W���ݩ�',
        'System Settings' => '�ƾڮw�]�m ',
        'Finished' => '����',
        'D' => '����',
        'All messages' => '�Ҧ�����',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        'Object already linked as %s.' => '��H�w�s���� %s.',
        'A article should have a title!' => '�峹���������D!',
        'Customer Users <-> Services' => '�Ȥ�b�� <-> �A�Ⱥ޲z',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => '�t�m�ﶵ (�Ҧp: <OTRS_CONFIG_HttpType>)',
        'All email addresses get excluded on replaying on composing and email.' => '�Ҧ��Q�������g�l��\�઺�l��a�}',
        'A web mail client' => 'WebMail �Ȥ��',
        'Compose Follow up' => '���g���ܵ��_',
        'WebMail' => 'WebMail',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Ticket �Ҧ��̿ﶵ (�Ҧp: <OTRS_OWNER_UserFirstname>)',
        'DB Type' => '�ƾڮw����',
        'kill all sessions' => '����Ҧ��|��',
        'to get the from line of the email' => '�l��Ӧ�',
        'Solution' => '�ѨM���',
        'QueueView' => '���C����',
        'My Queue' => '�ڪ����C',
        'Select Box' => '��ܤ��',
        'New messages' => '�s����',
        'Can not create link with %s!' => '���ର %s �Ыسs��',
        'Linked as' => '�w�s����',
        'modified' => '�ק��',
        'Delete old database' => '�R���¼ƾڮw',
        'A web file manager' => 'Web ���޲z��',
        'Have a lot of fun!' => 'Have a lot of fun!',
        'send' => '�o�e',
        'QuickSearch' => '�ֳt�j��',
        'Send no notifications' => '���o�e�q��',
        'Note Text' => '�`��',
        'POP3 Account Management' => 'POP3 �b��޲z',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_USERFIRSTNAME>)' => '',
        'System State Management' => '�t�Ϊ��A�޲z',
        'OTRS DB User' => 'OTRS �ƾڮw�Τ�W',
        'Mailbox' => '�l�c',
        'PhoneView' => '�q�ܵ���',
        'maximal period form' => '�̤j�P����',
        'Escaladed Tickets' => '',
        'Yes means, send no agent and customer notifications on changes.' => '�����ܮɤ��o�e�q�����޳N�H���ΫȤ�.',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => '�z���l�� �s��: "<OTRS_TICKET>" �^�h�� "<OTRS_BOUNCE_TO>" . ���p�t�H�U�a�}����ԲӫH��.',
        'Ticket Status View' => 'Ticket ���A����',
        'Modified' => '�ק��',
        'Ticket selected for bulk action!' => '�Q�襤�i���q�ާ@�� Tickets',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
    };
    # $$STOP$$
    return;
}

1;
