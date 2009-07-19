# --
# Kernel/Language/zh_TW.pm - provides Chinese Traditional language translation
# --
# Copyright (C) 2009 Bin Du <bindu2008 at gmail.com>
# Copyright (C) 2009 Yiye Huang <yiyehuang at gmail.com>
# Copyright (C) 2009 Qingjiu Jia <jiaqj at yahoo.com>
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::zh_TW;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sun Jul 19 12:24:09 2009

    # possible charsets
    $Self->{Charset} = ['GBK', 'Big5', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%Y.%M.%D %T';
    $Self->{DateFormatLong}      = ' %A %Y/%M/%D %T';
    $Self->{DateFormatShort}     = '%Y.%M.%D';
    $Self->{DateInputFormat}     = '%Y.%M.%D';
    $Self->{DateInputFormatLong} = '%Y.%M.%D - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => '��',
        'No' => '��',
        'yes' => '��',
        'no' => 'δ�O��',
        'Off' => '�P',
        'off' => '�P',
        'On' => '�_',
        'on' => '�_',
        'top' => '픶�',
        'end' => '�ײ�',
        'Done' => '�_�J',
        'Cancel' => 'ȡ��',
        'Reset' => '����',
        'last' => '���',
        'before' => '���',
        'day' => '��',
        'days' => '��',
        'day(s)' => '��',
        'hour' => 'С�r',
        'hours' => 'С�r',
        'hour(s)' => 'С�r',
        'minute' => '���',
        'minutes' => '���',
        'minute(s)' => '���',
        'month' => '��',
        'months' => '��',
        'month(s)' => '��',
        'week' => '����',
        'week(s)' => '����',
        'year' => '��',
        'years' => '��',
        'year(s)' => '��',
        'second(s)' => '��',
        'seconds' => '��',
        'second' => '��',
        'wrote' => '����',
        'Message' => '��Ϣ',
        'Error' => '�e�`',
        'Bug Report' => 'Bug ���',
        'Attention' => 'ע��',
        'Warning' => '����',
        'Module' => 'ģ�K',
        'Modulefile' => 'ģ�K�ļ�',
        'Subfunction' => '�ӹ���',
        'Line' => '��',
        'Setting' => '�O��',
        'Settings' => '�O��',
        'Example' => 'ʾ��',
        'Examples' => 'ʾ��',
        'valid' => '��Ч',
        'invalid' => '�oЧ',
        '* invalid' => '* �oЧ',
        'invalid-temporarily' => '���r�oЧ',
        ' 2 minutes' => ' 2 ���',
        ' 5 minutes' => ' 5 ���',
        ' 7 minutes' => ' 7 ���',
        '10 minutes' => '10 ���',
        '15 minutes' => '15 ���',
        'Mr.' => '����',
        'Mrs.' => '����',
        'Next' => '��һ��',
        'Back' => '����',
        'Next...' => '��һ��...',
        '...Back' => '...����',
        '-none-' => '-�o-',
        'none' => '�o',
        'none!' => '�o!',
        'none - answered' => '�o - �Ѵ��͵�',
        'please do not edit!' => '��Ҫ��݋!',
        'AddLink' => '����朽�',
        'Link' => '朽�',
        'Unlink' => 'δ朽�',
        'Linked' => '��朽�',
        'Link (Normal)' => '朽� (����)',
        'Link (Parent)' => '朽� (��)',
        'Link (Child)' => '朽� (��)',
        'Normal' => '����',
        'Parent' => '��',
        'Child' => '��',
        'Hit' => '�c��',
        'Hits' => '�c����',
        'Text' => '����',
        'Standard' => '',
        'Lite' => '����',
        'User' => '�Ñ�',
        'Username' => '�Ñ����Q',
        'Language' => '�Z��',
        'Languages' => '�Z��',
        'Password' => '�ܴa',
        'Salutation' => '�Q�^',
        'Signature' => '����',
        'Customer' => '�͑�',
        'CustomerID' => '�͑���̖',
        'CustomerIDs' => '�͑���̖',
        'customer' => '�͑�',
        'agent' => '���g֧���ˆT',
        'system' => 'ϵ�y',
        'Customer Info' => '�͑���Ϣ',
        'Customer Company' => '�͑��λ',
        'Company' => '��λ',
        'go!' => '�_ʼ!',
        'go' => '�_ʼ',
        'All' => 'ȫ��',
        'all' => 'ȫ��',
        'Sorry' => '������',
        'update!' => '����!',
        'update' => '����',
        'Update' => '����',
        'Updated!' => '',
        'submit!' => '�ύ!',
        'submit' => '�ύ',
        'Submit' => '�ύ',
        'change!' => '�޸�!',
        'Change' => '�޸�',
        'change' => '�޸�',
        'click here' => '�c���@�e',
        'Comment' => 'ע�',
        'Valid' => '��Ч',
        'Invalid Option!' => '�oЧ�x�!',
        'Invalid time!' => '�oЧ�r�g!',
        'Invalid date!' => '�oЧ����!',
        'Name' => '���Q',
        'Group' => '�M��',
        'Description' => '����',
        'description' => '����',
        'Theme' => '���}',
        'Created' => '����',
        'Created by' => '������',
        'Changed' => '���޸�',
        'Changed by' => '�޸���',
        'Search' => '����',
        'and' => '��',
        'between' => '��',
        'Fulltext Search' => 'ȫ������',
        'Data' => '����',
        'Options' => '�x�',
        'Title' => '���}',
        'Item' => '�lĿ',
        'Delete' => '�h��',
        'Edit' => '��݋',
        'View' => '�鿴',
        'Number' => '��̖',
        'System' => 'ϵ�y',
        'Contact' => 'ϵ��',
        'Contacts' => 'ϵ��',
        'Export' => '����',
        'Up' => '��',
        'Down' => '��',
        'Add' => '����',
        'Added!' => '',
        'Category' => 'Ŀ�',
        'Viewer' => '�鿴��',
        'Expand' => '�Uչ',
        'New message' => '����Ϣ',
        'New message!' => '����Ϣ!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'Ո�Ȼ؏�ԓ Ticket��Ȼ��ص��������ҕ�D!',
        'You got new message!' => '��������Ϣ!',
        'You have %s new message(s)!' => '���� %s �l����Ϣ!',
        'You have %s reminder ticket(s)!' => '���� %s ������!',
        'The recommended charset for your language is %s!' => '���h�������Z�Ե��ַ��� %s!',
        'Passwords doesn\'t match! Please try it again!' => '�ܴa������Ո��ԇ!',
        'Password is already in use! Please use an other password!' => 'ԓ�ܴa��ʹ�ã�Ոʹ�������ܴa!',
        'Password is already used! Please use an other password!' => 'ԓ�ܴa��ʹ�ã�Ոʹ�������ܴa!',
        'You need to activate %s first to use it!' => '%s ��ʹ��֮ǰՈ�ȼ���!',
        'No suggestions' => '�o���h',
        'Word' => '��',
        'Ignore' => '����',
        'replace with' => '��Q',
        'There is no account with that login name.' => 'ԓ�Ñ����]�Ў�����Ϣ.',
        'Login failed! Your username or password was entered incorrectly.' => '���ʧ���������Ñ������ܴa�����_.',
        'Please contact your admin' => 'Ոϵϵ�y����T',
        'Logout successful. Thank you for using OTRS!' => '�ɹ�ע�N���x�xʹ��!',
        'Invalid SessionID!' => '�oЧ�ĕ�Ԓ���R��!',
        'Feature not active!' => 'ԓ������δ����!',
        'Notification (Event)' => '֪ͨ���¼���',
        'Login is needed!' => '��Ҫ�ȵ��!',
        'Password is needed!' => '��Ҫ�ܴa!',
        'License' => '�S���^',
        'Take this Customer' => 'ȡ���@���͑�',
        'Take this User' => 'ȡ���@���Ñ�',
        'possible' => '����',
        'reject' => '�ܽ^',
        'reverse' => '����',
        'Facility' => 'e',
        'Timeover' => '�Y��',
        'Pending till' => '�ȴ���',
        'Don\'t work with UserID 1 (System account)! Create new users!' => '��Ҫʹ�� UserID 1 (ϵ�y�~̖)! Ո����һ���µ��Ñ�!',
        'Dispatching by email To: field.' => '�����]����: ��.',
        'Dispatching by selected Queue.' => '�����]�������x���.',
        'No entry found!' => '�o����!',
        'Session has timed out. Please log in again.' => '��Ԓ���r��Ո���µ��.',
        'No Permission!' => '�o����!',
        'To: (%s) replaced with database email!' => 'To: (%s) ���������]����ַ�����',
        'Cc: (%s) added database email!' => 'Cc: (%s) ���Ӕ������]����ַ!',
        '(Click here to add)' => '(�c����̎����)',
        'Preview' => '�A�[',
        'Package not correctly deployed! You should reinstall the Package again!' => 'ܛ����չ�_������! ����Ҫ��һ�����°��b�@��ܛ����',
        'Added User "%s"' => '�����Ñ� "%s".',
        'Contract' => '��ͬ',
        'Online Customer: %s' => '�ھ��͑�: %s',
        'Online Agent: %s' => '�ھ����g֧���ˆT��%s',
        'Calendar' => '�՚v',
        'File' => '�ļ�',
        'Filename' => '�ļ���',
        'Type' => '���',
        'Size' => '��С',
        'Upload' => '���d',
        'Directory' => 'Ŀ�',
        'Signed' => '�Ѻ���',
        'Sign' => '����',
        'Crypted' => '�Ѽ���',
        'Crypt' => '����',
        'Office' => '�k����',
        'Phone' => '�Ԓ',
        'Fax' => '����',
        'Mobile' => '�֙C',
        'Zip' => '�]��',
        'City' => '����',
        'Street' => '�ֵ�',
        'Country' => '����',
        'Location' => '�^',
        'installed' => '�Ѱ��b',
        'uninstalled' => 'δ���b',
        'Security Note: You should activate %s because application is already running!' => '��ȫ��ʾ: �����ܼ���� %s, ���ˑ����ѽ����\��!',
        'Unable to parse Online Repository index document!' => '���ܷ����ھ��YԴ�����ęn',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '�ھ��YԴ�Л]��ܛ����������Ҫ�Ŀ�ܣ����������Ŀ������ܛ����',
        'No Packages or no new Packages in selected Online Repository!' => '�����x���ھ��YԴ�У��]�ЬF����µ�ܛ����',
        'printed at' => '��ӡ����',
        'Loading...' => '',
        'Dear Mr. %s,' => '�𾴵� %s ����:',
        'Dear Mrs. %s,' => '�𾴵� %s Ůʿ:',
        'Dear %s,' => '�𾴵� %s:',
        'Hello %s,' => '����, %s:',
        'This account exists.' => '�@�������Ѵ���',
        'New account created. Sent Login-Account to %s.' => '�µĎ�̖�ф���, �K����֪ͨ�o %s.',
        'Please press Back and try again.' => 'Ո������ԇһ��.',
        'Sent password token to: %s' => '�l���ܴa��: %s',
        'Sent new password to: %s' => '�l���µ��ܴa��: %s',
        'Upcoming Events' => '����������¼�',
        'Event' => '�¼�',
        'Events' => '�¼�',
        'Invalid Token!' => '�Ƿ��Ę�ӛ',
        'more' => '����',
        'For more info see:' => '������ϢՈ��',
        'Package verification failed!' => 'ܛ������^ʧ��',
        'Collapse' => '��',
        'Shown' => '',
        'News' => '��',
        'Product News' => '�aƷ��',
        'OTRS News' => '',
        '7 Day Stats' => '',
        'Bold' => '���w',
        'Italic' => 'б�w',
        'Underline' => '�׾�',
        'Font Color' => '�����ɫ',
        'Background Color' => '����ɫ',
        'Remove Formatting' => '�h����ʽ',
        'Show/Hide Hidden Elements' => '�@ʾ/�[�� �[��Ҫ��',
        'Align Left' => '���R',
        'Align Center' => '���Ќ��R',
        'Align Right' => '�Ҍ��R',
        'Justify' => '���R',
        'Header' => '��Ϣ�^',
        'Indent' => '�s',
        'Outdent' => '��ͻ',
        'Create an Unordered List' => '����һ���o���б�',
        'Create an Ordered List' => '����һ�������б�',
        'HTML Link' => 'HTML朽�',
        'Insert Image' => '����D��',
        'CTRL' => '��CTRL',
        'SHIFT' => '��SHIFT',
        'Undo' => '��ԭ',
        'Redo' => '����',

        # Template: AAAMonth
        'Jan' => 'һ��',
        'Feb' => '����',
        'Mar' => '����',
        'Apr' => '����',
        'May' => '����',
        'Jun' => '����',
        'Jul' => '����',
        'Aug' => '����',
        'Sep' => '����',
        'Oct' => 'ʮ��',
        'Nov' => 'ʮһ��',
        'Dec' => 'ʮ����',
        'January' => 'һ��',
        'February' => '����',
        'March' => '����',
        'April' => '����',
        'June' => '����',
        'July' => '����',
        'August' => '����',
        'September' => '����',
        'October' => 'ʮ��',
        'November' => 'ʮһ��',
        'December' => 'ʮ����',

        # Template: AAANavBar
        'Admin-Area' => '����^��',
        'Agent-Area' => '���g֧���ˆT�^',
        'Ticket-Area' => 'Ticket�^',
        'Logout' => 'ע�N',
        'Agent Preferences' => '�����O��',
        'Preferences' => '�O��',
        'Agent Mailbox' => '���g֧���ˆT�]��',
        'Stats' => '�yӋ',
        'Stats-Area' => '�yӋ�^',
        'Admin' => '����',
        'Customer Users' => '�͑��Ñ�',
        'Customer Users <-> Groups' => '�͑��Ñ� <-> �M',
        'Users <-> Groups' => '�Ñ� <-> �M',
        'Roles' => '��ɫ',
        'Roles <-> Users' => '��ɫ <-> �Ñ�',
        'Roles <-> Groups' => '��ɫ <-> �M',
        'Salutations' => '�Q�^',
        'Signatures' => '����',
        'Email Addresses' => 'Email ��ַ',
        'Notifications' => 'ϵ�y֪ͨ',
        'Category Tree' => 'Ŀ䛘�',
        'Admin Notification' => '����T֪ͨ',

        # Template: AAAPreferences
        'Preferences updated successfully!' => '�O�ø��³ɹ�!',
        'Mail Management' => '�]�����P�O��',
        'Frontend' => 'ǰ�˽���',
        'Other Options' => '�����x�',
        'Change Password' => '�޸��ܴa',
        'New password' => '���ܴa',
        'New password again' => '�؏����ܴa',
        'Select your QueueView refresh time.' => '���ҕ�Dˢ�r�g.',
        'Select your frontend language.' => '�����Z��',
        'Select your frontend Charset.' => '�����ַ���.',
        'Select your frontend Theme.' => '�������}.',
        'Select your frontend QueueView.' => '���ҕ�D.',
        'Spelling Dictionary' => 'ƴ���z���ֵ�',
        'Select your default spelling dictionary.' => 'ȱʡƴ���z���ֵ�.',
        'Max. shown Tickets a page in Overview.' => 'ÿһ��@ʾ����� Tickets ��Ŀ.',
        'Can\'t update password, your new passwords do not match! Please try again!' => '�ܴa�ɴβ������o�����£�Ո����ݔ��',
        'Can\'t update password, invalid characters!' => '�o�������ܴa�������oЧ�ַ�.',
        'Can\'t update password, must be at least %s characters!' => '�o�������ܴa���ܴa�L������%sλ.',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => '�o�������ܴa�����ٰ���2�����ַ���2��С���ַ�.',
        'Can\'t update password, needs at least 1 digit!' => '�o�������ܴa�����ٰ���1λ����',
        'Can\'t update password, needs at least 2 characters!' => '�o�������ܴa�����ٰ���2����ĸ!',

        # Template: AAAStats
        'Stat' => '�yӋ',
        'Please fill out the required fields!' => 'Ո������ֶ�',
        'Please select a file!' => 'Ո�x��һ���ļ�!',
        'Please select an object!' => 'Ո�x��һ������!',
        'Please select a graph size!' => 'Ո�x��DƬ�ߴ�!',
        'Please select one element for the X-axis!' => 'Ո�x��һ��Ԫ�ص�X-�S',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Ո�b�x��һ��Ԫ�ػ��P�]���x���\'Fixed\'���o',
        'If you use a checkbox you have to select some attributes of the select field!' => '�����ʹ�Ï��x�������x���x���һЩ����!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '���x����ݔ���Ո����һ��ֵ�����P�]\'Fixed\'���x��',
        'The selected end time is before the start time!' => '�x���ĽY���r�g����_ʼ�r�g��',
        'You have to select one or more attributes from the select field!' => '�ı��x���������x��һ����������ԣ�',
        'The selected Date isn\'t valid!' => '���x���ڲ���Ч',
        'Please select only one or two elements via the checkbox!' => 'ͨ�^���x��Ո�b�x��һ����ɂ�Ҫ�أ�',
        'If you use a time scale element you can only select one element!' => '�����ʹ�õ��Ǖr�g�߶�Ҫ�����b���x������һ���M�ɲ���',
        'You have an error in your time selection!' => '����һ���e�`�ĕr�g�x��',
        'Your reporting time interval is too small, please use a larger time scale!' => '���Ĉ��r�g�g��̫С��Ոʹ�ø�����g��',
        'The selected start time is before the allowed start time!' => '�x�����_ʼ�r�g������S���_ʼ�r�g',
        'The selected end time is after the allowed end time!' => '�x���ĽY���r�g������S�ĽY���r�g',
        'The selected time period is larger than the allowed time period!' => '���x���r�g�δ�����S�ĕr�g��',
        'Common Specification' => '��ͬҎ��',
        'Xaxis' => 'X�S',
        'Value Series' => '�rֵϵ��',
        'Restrictions' => '����',
        'graph-lines' => '���D',
        'graph-bars' => '����D',
        'graph-hbars' => 'H����D',
        'graph-points' => '�D�c',
        'graph-lines-points' => '�D���c',
        'graph-area' => '�D�^',
        'graph-pie' => 'D',
        'extended' => '�Uչ',
        'Agent/Owner' => '������',
        'Created by Agent/Owner' => '���g֧���ˆT������',
        'Created Priority' => '�����ă��ȼ�',
        'Created State' => '�����Ġ�B',
        'Create Time' => '�����r�g',
        'CustomerUserLogin' => '�͑����',
        'Close Time' => '�P�]�r�g',
        'TicketAccumulation' => 'Ticket�e��',
        'Attributes to be printed' => 'Ҫ��ӡ�Č���',
        'Sort sequence' => '��������',
        'Order by' => '�������',
        'Limit' => '�O��',
        'Ticketlist' => 'Ticket���',
        'ascending' => '����',
        'descending' => '����',
        'First Lock' => '�����i��',
        'Evaluation by' => '�u�r����',
        'Total Time' => '���r�g',
        'Ticket Average' => 'Ticket̎��ƽ���r�g',
        'Ticket Min Time' => 'Ticket̎����С�r�g',
        'Ticket Max Time' => 'Ticket̎�����r�g',
        'Number of Tickets' => 'Ticket��Ŀ',
        'Article Average' => 'Article̎��ƽ���r�g',
        'Article Min Time' => 'Article̎����С�r�g',
        'Article Max Time' => 'Article̎�����r�g',
        'Number of Articles' => 'Article����',
        'Accounted time by Agent' => '���g֧���ˆT̎��Ticket���õĕr�g',
        'Ticket/Article Accounted Time' => 'Ticket/Article�����õĕr�g',
        'TicketAccountedTime' => 'Ticket�����õĕr�g',
        'Ticket Create Time' => 'Ticket�����r�g',
        'Ticket Close Time' => 'Ticket�P�]�r�g',

        # Template: AAATicket
        'Lock' => '�i��',
        'Unlock' => '���i',
        'History' => '�vʷ',
        'Zoom' => '�]��չ�_',
        'Age' => '���r�g',
        'Bounce' => '����',
        'Forward' => '�D�l',
        'From' => '�l����',
        'To' => '�ռ���',
        'Cc' => '����',
        'Bcc' => '����',
        'Subject' => '���}',
        'Move' => '�Ƅ�',
        'Queue' => '���',
        'Priority' => '���ȼ�',
        'Priority Update' => '�����ȼ�',
        'State' => '��B',
        'Compose' => '׫��',
        'Pending' => '�ȴ�',
        'Owner' => '������',
        'Owner Update' => '����������',
        'Responsible' => 'ؓ؟��',
        'Responsible Update' => '����ؓ؟��',
        'Sender' => '�l����',
        'Article' => '�ż�',
        'Ticket' => 'Ticket',
        'Createtime' => '�����r�g',
        'plain' => '���ı�',
        'Email' => '�]����ַ',
        'email' => 'E-Mail',
        'Close' => '�P�]',
        'Action' => '����',
        'Attachment' => '����',
        'Attachments' => '����',
        'This message was written in a character set other than your own.' => '�@���]�������ַ����c��ϵ�y�ַ�������',
        'If it is not displayed correctly,' => '����@ʾ�����_,',
        'This is a' => '�@��һ��',
        'to open it in a new window.' => '���´����д��_',
        'This is a HTML email. Click here to show it.' => '�@��һ��HTML��ʽ�]�����c���@�e�@ʾ.',
        'Free Fields' => '�~����Ϣ',
        'Merge' => '�ρK',
        'merged' => '�ѺρK',
        'closed successful' => '�ɹ��P�]',
        'closed unsuccessful' => '�P�]ʧ��',
        'new' => '�½�',
        'open' => '���_',
        'Open' => '���_',
        'closed' => '�P�]',
        'Closed' => '�P�]',
        'removed' => '�h��',
        'pending reminder' => '�ȴ�����',
        'pending auto' => '�Ԅӵȴ�',
        'pending auto close+' => '�ȴ��Ԅ��P�]+',
        'pending auto close-' => '�ȴ��Ԅ��P�]-',
        'email-external' => '�ⲿ E-Mail ',
        'email-internal' => '�Ȳ� E-Mail ',
        'note-external' => '�ⲿע��',
        'note-internal' => '�Ȳ�ע��',
        'note-report' => 'ע����',
        'phone' => '�Ԓ',
        'sms' => '����',
        'webrequest' => 'WebՈ��',
        'lock' => '�i��',
        'unlock' => 'δ�i��',
        'very low' => '�ǳ���',
        'low' => '��',
        'normal' => '����',
        'high' => '��',
        'very high' => '�ǳ���',
        '1 very low' => '1 �ǳ���',
        '2 low' => '2 ��',
        '3 normal' => '3 ����',
        '4 high' => '4 ��',
        '5 very high' => '5 �ǳ���',
        'Ticket "%s" created!' => 'Ticket "%s" �ф���!',
        'Ticket Number' => 'Ticket ��̖',
        'Ticket Object' => 'Ticket ����',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Ticket "%s" �����ڣ����܄��������朽�!',
        'Don\'t show closed Tickets' => '���@ʾ���P�]�� Tickets',
        'Show closed Tickets' => '�@ʾ���P�]�� Tickets',
        'New Article' => '������',
        'Email-Ticket' => '�]�� Ticket',
        'Create new Email Ticket' => '�����µ��]�� Ticket',
        'Phone-Ticket' => '�Ԓ Ticket',
        'Search Tickets' => '���� Tickets',
        'Edit Customer Users' => '��݋�͑􎤑�',
        'Edit Customer Company' => '��݋�͑��λ',
        'Bulk Action' => '����̎��',
        'Bulk Actions on Tickets' => '����̎�� Tickets',
        'Send Email and create a new Ticket' => '�l�� Email �K����һ���µ� Ticket',
        'Create new Email Ticket and send this out (Outbound)' => '�����µ� Ticket�K�l�ͳ�ȥ',
        'Create new Phone Ticket (Inbound)' => '�����µ��ԒTicket���M���Ticket��',
        'Overview of all open Tickets' => '�����_�� Tickets �śr',
        'Locked Tickets' => '���i�� Ticket',
        'Watched Tickets' => 'ӆ� Tickets',
        'Watched' => 'ӆ�',
        'Subscribe' => 'ӆ�',
        'Unsubscribe' => '��ӆ',
        'Lock it to work on it!' => '�i���K�_ʼ���� !',
        'Unlock to give it back to the queue!' => '���i�K�ͻ����!',
        'Shows the ticket history!' => '�@ʾ Ticket �vʷ��r!',
        'Print this ticket!' => '��ӡ Ticket !',
        'Change the ticket priority!' => '�޸� Ticket ���ȼ�',
        'Change the ticket free fields!' => '�޸� Ticket �~����Ϣ',
        'Link this ticket to an other objects!' => '朽�ԓ Ticket ����������!',
        'Change the ticket owner!' => '�޸� Ticket ������!',
        'Change the ticket customer!' => '�޸� Ticket ���ٿ͑�!',
        'Add a note to this ticket!' => '�o Ticket ����ע��!',
        'Merge this ticket!' => '�ρKԓ Ticket!',
        'Set this ticket to pending!' => '��ԓ Ticket �D��ȴ���B',
        'Close this ticket!' => '�P�]ԓ Ticket!',
        'Look into a ticket!' => '�鿴 Ticket ����',
        'Delete this ticket!' => '�h��ԓ Ticket!',
        'Mark as Spam!' => '��ӛ������!',
        'My Queues' => '�ҵ����',
        'Shown Tickets' => '�@ʾ Tickets',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '�����]�� "<OTRS_TICKET>" ���ρK�� "<OTRS_MERGE_TO_TICKET>" !',
        'Ticket %s: first response time is over (%s)!' => 'Ticket %s: ��һ푑��r�g�Ѻĕr(%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Ticket %s: ��һ푑��r�g���ĕr(%s)!',
        'Ticket %s: update time is over (%s)!' => 'Ticket %s: ���r�g�Ѻĕr(%s)!',
        'Ticket %s: update time will be over in %s!' => 'Ticket %s: ���r�g���ĕr(%s)!',
        'Ticket %s: solution time is over (%s)!' => 'Ticket %s: ̎���Q�Ѻĕr(%s)!',
        'Ticket %s: solution time will be over in %s!' => '̎���Q���ĕr(%s)!',
        'There are more escalated tickets!' => '�и���������tickets',
        'New ticket notification' => '�� Ticket ֪ͨ',
        'Send me a notification if there is a new ticket in "My Queues".' => '����ҵ���������µ� Ticket��Ո֪ͨ��.',
        'Follow up notification' => '��֪ۙͨ',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => '����͑��l���� Ticket �؏ͣ��K������ԓ Ticket ��������.',
        'Ticket lock timeout notification' => 'Ticket �i�����r֪ͨ ',
        'Send me a notification if a ticket is unlocked by the system.' => '��� Ticket ��ϵ�y���i��Ո֪ͨ��.',
        'Move notification' => '�Ƅ�֪ͨ',
        'Send me a notification if a ticket is moved into one of "My Queues".' => '����� Ticket ���D���ҵ���У�Ո֪ͨ��.',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '���������У���������]���O�ü���������õ�ԓ��еĠ�B֪ͨ.',
        'Custom Queue' => '�͑����',
        'QueueView refresh time' => '���ҕ�Dˢ�r�g',
        'Screen after new ticket' => '������ Ticket ���ҕ�D',
        'Select your screen after creating a new ticket.' => '�x���������� Ticket �����@ʾ��ҕ�D.',
        'Closed Tickets' => '�P�] Tickets',
        'Show closed tickets.' => '�@ʾ���P�] Tickets.',
        'Max. shown Tickets a page in QueueView.' => '���ҕ�Dÿ��@ʾ Ticket ��.',
        'Watch notification' => '�Pע֪ͨ',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '�������Pע��ticket����ԓticket�ē�����һ�ӣ��o��Ҳ�lһ��֪ͨ',
        'Out Of Office' => '�����k����',
        'Select your out of office time.' => '�x���㲻���k���ҵĕr�g',
        'CompanyTickets' => '��˾Tickets',
        'MyTickets' => '�ҵ� Tickets',
        'New Ticket' => '�µ� Ticket',
        'Create new Ticket' => '�����µ� Ticket',
        'Customer called' => '�͑����',
        'phone call' => '�Ԓ����',
        'Reminder Reached' => '�������_',
        'Reminder Tickets' => '���ѵ� Ticket',
        'Escalated Tickets' => '������Ticket',
        'New Tickets' => '�µ�Ticket',
        'Open Tickets / Need to be answered' => '���_��Tickets/��Ҫ�ش�',
        'Tickets which need to be answered!' => '��Ҫ�ش�� Ticket',
        'All new tickets!' => '�����µ�tickets',
        'All tickets which are escalated!' => '����������tickets',
        'All tickets where the reminder date has reached!' => '�����ѵ��������ڵ�Ticket',
        'Responses' => '�؏�',
        'Responses <-> Queue' => '�؏� <-> ���',
        'Auto Responses' => '�Ԅӻ؏͹���',
        'Auto Responses <-> Queue' => '�Ԅӻ؏� <-> ���',
        'Attachments <-> Responses' => '���� <-> �؏�',
        'History::Move' => 'Ticket �Ƶ���� "%s" (%s) ����� "%s" (%s).',
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => '���·��ռ��e�f�h to %s (ID=%s).',
        'History::NewTicket' => 'New ticket [%s] created (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'FollowUp for [%s]. %s',
        'History::SendAutoReject' => '�ԄӾܽ^�l�ͽo "%s".',
        'History::SendAutoReply' => '�Ԅӻ؏Ͱl�ͽo "%s".',
        'History::SendAutoFollowUp' => '�ԄӸ�ۙ�l�ͽo "%s".',
        'History::Forward' => '�D�l�o "%s".',
        'History::Bounce' => '���˵� "%s".',
        'History::SendAnswer' => '�ż��l�ͽo "%s".',
        'History::SendAgentNotification' => '"%s"-Benachrichtigung versand an "%s".',
        'History::SendCustomerNotification' => '֪ͨ�l�ͽo "%s".',
        'History::EmailAgent' => '�l�]���o�͑�.',
        'History::EmailCustomer' => 'Add mail. %s',
        'History::PhoneCallAgent' => 'Called customer',
        'History::PhoneCallCustomer' => '�͑��Ѵ��^�Ԓ',
        'History::AddNote' => '��ע� (%s)',
        'History::Lock' => 'Ticket �i��.',
        'History::Unlock' => 'Ticket ���i.',
        'History::TimeAccounting' => '%s time unit(d) counted. Totaly %s time unit(s) counted.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Refreshed: %s',
        'History::PriorityUpdate' => '���ȼ������£���  "%s" (%s) �� "%s" (%s).',
        'History::OwnerUpdate' => 'New owner is "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop protection! sent no auto answer to "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Refreshed: %s',
        'History::StateUpdate' => 'Before "%s" ��: "%s"',
        'History::TicketFreeTextUpdate' => 'Refreshed: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => '�͑��M�оW��Ո��.',
        'History::TicketLinkAdd' => 'Link to "%s" established.',
        'History::TicketLinkDelete' => 'Link to "%s" removed.',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

        # Template: AAAWeekDay
        'Sun' => '������',
        'Mon' => '����һ',
        'Tue' => '���ڶ�',
        'Wed' => '������',
        'Thu' => '������',
        'Fri' => '������',
        'Sat' => '������',

        # Template: AdminAttachmentForm
        'Attachment Management' => '��������',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => '�Ԅӻ؏͹���',
        'Response' => '�؏�',
        'Auto Response From' => '�Ԅӻ؏́���',
        'Note' => 'ע��',
        'Useable options' => '���ú�׃��',
        'To get the first 20 character of the subject.' => '�@ʾ���}��ǰ20���ֹ�',
        'To get the first 5 lines of the email.' => '�@ʾ��]��ǰ����',
        'To get the realname of the sender (if given).' => '�@ʾ�l���˵��挍����',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => '��ǰ�͑���Ϣ�Ŀ��x� (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Ticket�����ߵĿ��x� e. g. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Ticket؟���x� (e. g. <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => '',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => '',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '������ˆ�λ',
        'Search for' => '����',
        'Add Customer Company' => '���ӿ��ˆ�λ',
        'Add a new Customer Company.' => '���ӿ��˵���λ�e',
        'List' => '�б�',
        'This values are required.' => 'ԓ�lĿ����.',
        'This values are read only.' => 'ԓ�����b�x.',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => '�M����Ϣ׫���Ĵ����ѽ����P�],�˳�.',
        'This window must be called from compose window' => 'ԓ���ڱ����׫�������{��',
        'Customer User Management' => '�͑��Ñ�����',
        'Add Customer User' => '���ӿ���',
        'Source' => '����Դ',
        'Create' => '����',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '�͑��Ñ������һ���~̖�Ŀ͑���������ϵ�y.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '�͑��Ñ� <-> �M ����',
        'Change %s settings' => '�޸� %s �O��',
        'Select the user:group permissions.' => '�x�� �Ñ�:�M ����.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '������x�񣬄tԓ�M�]�Й��� (ԓ�M�o��̎�� Ticket)',
        'Permission' => '����',
        'ro' => '�b�x',
        'Read only access to the ticket in this group/queue.' => '����е� Ticket �b�x.',
        'rw' => '�x��',
        'Full read and write access to the tickets in this group/queue.' => '����е� Ticket �x/��.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => '�͑�̖ <-> ���չ���',
        'CustomerUser' => '�͑��Ñ�',
        'Service' => '����',
        'Edit default services.' => '��݋Ĭ�J����',
        'Search Result' => '�����Y��',
        'Allocate services to CustomerUser' => '������սo�͑�',
        'Active' => '����',
        'Allocate CustomerUser to service' => 'ָ�ɿ͑�������',

        # Template: AdminEmail
        'Message sent to' => '��Ϣ�l�ͽo',
        'A message should have a subject!' => '�]������И��}!',
        'Recipients' => '�ռ���',
        'Body' => '����',
        'Send' => '�l��',

        # Template: AdminGenericAgent
        'GenericAgent' => 'Ӌ���΄�',
        'Job-List' => '�����б�',
        'Last run' => '����\��',
        'Run Now!' => '�F���\��!',
        'x' => '',
        'Save Job as?' => '���湤����?',
        'Is Job Valid?' => '�����Ƿ���Ч?',
        'Is Job Valid' => '������Ч',
        'Schedule' => '����',
        'Currently this generic agent job will not run automatically.' => 'Ŀǰ�@һͨ��Agent���I�������Ԅ��\��',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '�����Ԅӈ��������x��һ��ֵ��犣��r�g������',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '����ȫ������ (����: "Mar*in" ���� "Baue*")',
        '(e. g. 10*5155 or 105658*)' => '  ����: 10*5144 ���� 105658*',
        '(e. g. 234321)' => '����: 234321',
        'Customer User Login' => '�͑��Ñ������Ϣ',
        '(e. g. U5150)' => '����: U5150',
        'SLA' => '���ռ��e�f�h(SLA)',
        'Agent' => '���g֧���ˆT',
        'Ticket Lock' => 'Ticket �i��B',
        'TicketFreeFields' => 'Ticket ���Ʌ^��',
        'Create Times' => '�����r�g',
        'No create time settings.' => '�]�Є����r�g�O��',
        'Ticket created' => '�����r�g',
        'Ticket created between' => ' �����r�g��',
        'Close Times' => '�P�]�r�g',
        'No close time settings.' => '',
        'Ticket closed' => '�P�]�� Ticket',
        'Ticket closed between' => '',
        'Pending Times' => '�����r�g',
        'No pending time settings.' => '�]���O�ô����r�g',
        'Ticket pending time reached' => '�����r�g�ѵ���Ticket',
        'Ticket pending time reached between' => '�ڴ����r�g�ȵ�Ticket ',
        'Escalation Times' => '�����r�g',
        'No escalation time settings.' => '�]�������r�g�O��',
        'Ticket escalation time reached' => '�ѵ������r�gTicket',
        'Ticket escalation time reached between' => '�������r�g�ȵ�Ticket',
        'Escalation - First Response Time' => '�΄��{�� - �״λ؏͵ĕr�g',
        'Ticket first response time reached' => '�״λ؏͕r�g�ѵ���Ticket',
        'Ticket first response time reached between' => '���״λ؏͕r�g�ȵ�Ticket',
        'Escalation - Update Time' => '�΄��{�� - ���µĕr�g',
        'Ticket update time reached' => '���r�g�ѵ���Ticket',
        'Ticket update time reached between' => '�ڸ��r�g�ȵ�Ticket',
        'Escalation - Solution Time' => '�΄��{�� - ��Q�ĕr�g',
        'Ticket solution time reached' => '������Q�r�g�ѵ���Ticket',
        'Ticket solution time reached between' => '�ڷ�����Q�r�g���ѵ���Ticket',
        'New Service' => '�µķ��ռ��e',
        'New SLA' => '�µķ��ռ��e�f�h(SLA)',
        'New Priority' => '���ȼ�',
        'New Queue' => '�����',
        'New State' => '� �B',
        'New Agent' => '�¼��g֧���ˆT',
        'New Owner' => '��������',
        'New Customer' => '�¿͑�',
        'New Ticket Lock' => '�� Ticket �i',
        'New Type' => '�µ����',
        'New Title' => '�µĘ��}',
        'New TicketFreeFields' => '�µ� Ticket ���Ʌ^��',
        'Add Note' => '����ע��',
        'Time units' => '�r�g��Ԫ',
        'CMD' => '����',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '�������@������, ��һ�������� Ticket ��̖���ڶ��������� Ticket �Ę��R��.',
        'Delete tickets' => '�h�� Tickets',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => '����! ԓ Ticket �����Ĕ�����h�����o���֏�!',
        'Send Notification' => '�l��֪ͨ',
        'Param 1' => '���� 1',
        'Param 2' => '���� 2',
        'Param 3' => '���� 3',
        'Param 4' => '���� 4',
        'Param 5' => '���� 5',
        'Param 6' => '���� 6',
        'Send agent/customer notifications on changes' => '�l�ʹ���/�͑�֪ͨ׃��',
        'Save' => '����',
        '%s Tickets affected! Do you really want to use this job?' => '%s Tickets �ܵ�Ӱ�! ���_��Ҫʹ���@��Ӌ���΄�?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '���棺��������\'����\'�M�����Q�r����SysConfig����������׃��֮ǰ���㌢����������iס������l���@�N��r��Ո��SQL�Z��ѽM���Ļص�\'admin\'',
        'Group Management' => '�M����',
        'Add Group' => '�����µĽM',
        'Add a new Group.' => '����һ���½M',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Admin �M�����M��ϵ�y����^��, Stats �M�����M��yӋ����^',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => '�����µĽM����Ʋ�ͬ�Ĵ�ȡ����',
        'It\'s useful for ASP solutions.' => '�@��һ����Ч�đ��÷����ṩ��(ASP)��Q����.',

        # Template: AdminLog
        'System Log' => 'ϵ�y��־',
        'Time' => '�r�g',

        # Template: AdminMailAccount
        'Mail Account Management' => '�]����̖����',
        'Host' => '���C',
        'Trusted' => '�Ƿ�����',
        'Dispatching' => '����',
        'All incoming emails with one account will be dispatched in the selected queue!' => '���Ё���һ���]���~̖���]���������ְl�����x���!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '������Ď�����ֵ����ه�ģ��F�е�X-OTRS���}���_�r�g�����ȣ� ... ������ʹ�ã��]���^�V������ʹ��',

        # Template: AdminNavigationBar
        'Users' => '�Ñ�',
        'Groups' => '�M',
        'Misc' => '�C��',

        # Template: AdminNotificationEventForm
        'Notification Management' => '֪ͨ����',
        'Add Notification' => '����֪ͨ',
        'Add a new Notification.' => '',
        'Name is required!' => '��Ҫ���Q!',
        'Event is required!' => '��Ҫ�¼�',
        'A message should have a body!' => '�]����횰�������!',
        'Recipient' => '�ռ���',
        'Group based' => '��춽M��',
        'Agent based' => '��춼��g֧�ִ����',
        'Email based' => '�����]��',
        'Article Type' => 'Articlee ',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '���}ƥ��',
        'Body match' => '����ƥ��',
        'Notifications are sent to an agent or a customer.' => '֪ͨ���l�͵����g֧���ˆT���߿͑�.',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => 'ϵ�y֪ͨ',

        # Template: AdminPackageManager
        'Package Manager' => 'ܛ��������',
        'Uninstall' => 'ж�d',
        'Version' => '�汾',
        'Do you really want to uninstall this package?' => '�Ƿ�_�Jж�dԓܛ����?',
        'Reinstall' => '���°��b',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '���Ƿ�׼������°��b�@Щܛ���� (�����ֹ��O�Ì�����Ҋ)?',
        'Continue' => '�^�m',
        'Install' => '���b',
        'Package' => 'ܛ����',
        'Online Repository' => '�ھ�֪�R��',
        'Vendor' => '�ṩ��',
        'Module documentation' => 'ģ�K�ęn',
        'Upgrade' => '����',
        'Local Repository' => '����֪�R��',
        'Status' => '��B',
        'Overview' => '�śr',
        'Download' => '���d',
        'Rebuild' => '������',
        'ChangeLog' => '��׃ӛ�',
        'Date' => '����',
        'Filelist' => '�ļ����',
        'Download file from package!' => '��ܛ���������d�@���ļ�',
        'Required' => '�����',
        'PrimaryKey' => '�P�I��Key',
        'AutoIncrement' => '�Ԅ��f��',
        'SQL' => 'SQL',
        'Diff' => '���^',

        # Template: AdminPerformanceLog
        'Performance Log' => 'ϵ�y�Oҕ��',
        'This feature is enabled!' => 'ԓ�����ц���',
        'Just use this feature if you want to log each request.' => '�������Ԕ��ӛ�ÿ��Ո��, ������ʹ��ԓ����.',
        'Activating this feature might affect your system performance!' => '����ԓ���ܿ���Ӱ�����ϵ�y����',
        'Disable it here!' => '�P�]ԓ����',
        'This feature is disabled!' => 'ԓ�������P�]',
        'Enable it here!' => '���_ԓ����',
        'Logfile too large!' => '��־�ļ��^��',
        'Logfile too large, you need to reset it!' => '��־�ļ��^��, ����Ҫ������',
        'Range' => '����',
        'Interface' => '����',
        'Requests' => 'Ո��',
        'Min Response' => '��С�ؑ�',
        'Max Response' => '���ؑ�',
        'Average Response' => 'ƽ���ؑ�',
        'Period' => '����',
        'Min' => '��С',
        'Max' => '���',
        'Average' => 'ƽ��',

        # Template: AdminPGPForm
        'PGP Management' => 'PGP ����',
        'Result' => '�Y��',
        'Identifier' => '���R��',
        'Bit' => 'λ',
        'Key' => '�ܳ�',
        'Fingerprint' => 'ָӡ',
        'Expires' => '�^��',
        'In this way you can directly edit the keyring configured in SysConfig.' => '�@�N��ʽ��������ֱ�Ӿ�݋��SysConfig�O�õ��I',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => '�]���^�V����',
        'Filtername' => '�^�V�����Q',
        'Stop after match' => '',
        'Match' => 'ƥ��',
        'Value' => 'ֵ',
        'Set' => '�O��',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '���������� X-Headers ���݁��^�V������ʹ����Ҏ�t���_ʽ.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '�������Hƥ��email ��ַ�� Ոʹ��EMAILADDRESS:info@example.com in From, To or Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '�������RegExp����Ҳ��ʹ��ƥ��ֵin () as [***] in \'Set\'',

        # Template: AdminPriority
        'Priority Management' => '���ș����',
        'Add Priority' => '��Ӄ��ș�',
        'Add a new Priority.' => '����һ���µă��ș�',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => '��� <-> �Ԅӻ؏͹���',
        'settings' => '�O��',

        # Template: AdminQueueForm
        'Queue Management' => '��й���',
        'Sub-Queue of' => '�����',
        'Unlock timeout' => '�Ԅӽ��i���r����',
        '0 = no unlock' => '0 = ���Ԅӽ��i  ',
        'Only business hours are counted.' => '�H���ϰ��r�gӋ��',
        '0 = no escalation' => '0 = �o�ޕr  ',
        'Notify by' => '�M��֪ͨ',
        'Follow up Option' => '���M�x�',
        'Ticket lock after a follow up' => '���M�_�J�Ժ�Ticket �����Ԅ����i',
        'Systemaddress' => 'ϵ�y�]����ַ',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '������g֧���ˆT�i���� Ticket,������һ���ĕr�g�ț]�л؏ͣ�ԓ Ticket �������Ԅӽ��i���������еļ��g֧���ˆT��ҕ.',
        'Escalation time' => '�ޕr���͕r�g',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'ԓ����b�@ʾҎ���r�g�ț]�б�̎��� Ticket',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '��� Ticket �ѽ�̎��P�]��B�����͑��Ͱl����һ�����M Ticket�����N�@�� Ticket ������ֱ�Ӽ��i���������߱����x��ԭ��������',
        'Will be the sender address of this queue for email answers.' => '�؏��]�����õİl���ߵ�ַ',
        'The salutation for email answers.' => '�؏��]�����÷Q�^.',
        'The signature for email answers.' => '�؏��]�����ú���.',
        'Customer Move Notify' => 'Ticket �Ƅӿ͑�֪ͨ',
        'OTRS sends an notification email to the customer if the ticket is moved.' => '��� Ticket ���Ƅӣ�ϵ�y�����l��һ��֪ͨ�]���o�͑�',
        'Customer State Notify' => 'Ticket ��B�͑�֪ͨ',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => '��� Ticket ��B��׃��ϵ�y�����l��֪ͨ�]���o�͑�',
        'Customer Owner Notify' => '�͑�������ͨ��',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => '��� Ticket �����߸�׃��ϵ�y�����l��֪ͨ�]���o�͑�.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => '�؏� <-> ��й���',

        # Template: AdminQueueResponsesForm
        'Answer' => '�؏�',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => '�؏� <-> ��������',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => '�؏̓��ݹ���',
        'A response is default text to write faster answer (with default text) to customers.' => '���˿��ٻ؏ͣ��؏̓��ݶ��x��ÿ���؏����؏͵ă���.',
        'Don\'t forget to add a new response a queue!' => '��Ҫ��ӛ����һ���µĻ؏̓��ݵ����!',
        'The current ticket state is' => '��ǰ Ticket ��B��',
        'Your email address is new' => '�����]����ַ���µ�',

        # Template: AdminRoleForm
        'Role Management' => '��ɫ����',
        'Add Role' => '���ӽ�ɫ',
        'Add a new Role.' => '����һ����ɫ',
        'Create a role and put groups in it. Then add the role to the users.' => '����һ����ɫ�K���M�����ɫ,Ȼ�󌢽�ɫ�x�o�Ñ�.',
        'It\'s useful for a lot of users and groups.' => '���д������Ñ��ͽM�ĕr�򣬽�ɫ�ǳ��m��.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => '��ɫ <-> �M����',
        'move_into' => '�Ƅӵ�',
        'Permissions to move tickets into this group/queue.' => '���S�Ƅ� Tickets ��ԓ�M/���.',
        'create' => '����',
        'Permissions to create tickets in this group/queue.' => '��ԓ�M/����Є��� Tickets �ę���.',
        'owner' => '������',
        'Permissions to change the ticket owner in this group/queue.' => '��ԓ�M/������޸� Tickets �����ߵę���.',
        'priority' => '���ȼ�',
        'Permissions to change the ticket priority in this group/queue.' => '��ԓ�M/������޸� Tickets ���ȼ��ę���.',

        # Template: AdminRoleGroupForm
        'Role' => '��ɫ',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => '��ɫ <-> �Ñ�����',
        'Select the role:user relations.' => '�x�� ��ɫ:�Ñ� �P.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => '�Q���Z����',
        'Add Salutation' => '���ӷQ���Z',
        'Add a new Salutation.' => '����һ���µķQ���Z',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '��ȫģʽ��Ҫ����',
        'Secure mode will (normally) be set after the initial installation is completed.' => '�ڳ�ʼ���b�Y���󣬰�ȫģʽͨ�������O��',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '����������Web ���氲�b����ȫģʽ���disabled',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '�������ģʽ�]�б����ӣ�Ոͨ�^ϵ�y�O�Æ������������OTRS�����ѽ��\��',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'SQL��ԃ����',
        'CSV' => '',
        'HTML' => '',
        'Select Box Result' => '��ԃ�Y��',

        # Template: AdminService
        'Service Management' => '���չ���',
        'Add Service' => '���ӷ���',
        'Add a new Service.' => '����һ������',
        'Sub-Service of' => '�ӷ����`���',

        # Template: AdminSession
        'Session Management' => '��Ԓ����',
        'Sessions' => '��Ԓ',
        'Uniq' => '��һ',
        'Kill all sessions' => '�Kֹ���Е�Ԓ',
        'Session' => '��Ԓ',
        'Content' => '����',
        'kill session' => '�Kֹ��Ԓ',

        # Template: AdminSignatureForm
        'Signature Management' => '��������',
        'Add Signature' => '���Ӻ���',
        'Add a new Signature.' => '����һ������',

        # Template: AdminSLA
        'SLA Management' => '���ռ��e�f�h(SLA)����',
        'Add SLA' => '���ӷ��ռ��e�f�h(SLA)',
        'Add a new SLA.' => '����һ�����ռ��e�f�h(SLA).',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME ����',
        'Add Certificate' => '����^��',
        'Add Private Key' => '���˽��',
        'Secret' => '�ܴa',
        'Hash' => 'Hash',
        'In this way you can directly edit the certification and private keys in file system.' => '���@�N��ʽ������ֱ�Ӿ�݋�^����˽��',

        # Template: AdminStateForm
        'State Management' => '��B����',
        'Add State' => '���Ӡ�B',
        'Add a new State.' => '����һ���µĠ�B',
        'State Type' => '��B���',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => '��ͬ�r������ Kernel/Config.pm �е�ȱʡ��B!',
        'See also' => '��Ҋ',

        # Template: AdminSysConfig
        'SysConfig' => 'ϵ�y����',
        'Group selection' => '�x��M',
        'Show' => '�@ʾ',
        'Download Settings' => '���d�O��',
        'Download all system config changes.' => '���d���е�ϵ�y����׃��.',
        'Load Settings' => '���d�O��',
        'Subgroup' => '�ӽM',
        'Elements' => 'Ԫ��',

        # Template: AdminSysConfigEdit
        'Config Options' => '�����x�',
        'Default' => 'ȱʡ',
        'New' => '��',
        'New Group' => '�½M',
        'Group Ro' => '�b�x���޵ĽM',
        'New Group Ro' => '�µ��b�x���޵ĽM',
        'NavBarName' => '���������Q',
        'NavBar' => '������',
        'Image' => '�DƬ',
        'Prio' => '���ȼ�',
        'Block' => '�K',
        'AccessKey' => '�M�',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'ϵ�y�]����ַ����',
        'Add System Address' => '����ϵ�y�]����ַ',
        'Add a new System Address.' => '����һ���µ�ϵ�y�]����ַ.',
        'Realname' => '�挍����',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => '���аl�͵�ԓ�ռ��˵���Ϣ�����D�����x������',

        # Template: AdminTypeForm
        'Type Management' => '��͹���',
        'Add Type' => '�������',
        'Add a new Type.' => '����һ���µ����',

        # Template: AdminUserForm
        'User Management' => '�ˆT����',
        'Add User' => '�����ˆT',
        'Add a new Agent.' => '����һ���µ��ˆT',
        'Login as' => '�����',
        'Firstname' => '��',
        'Lastname' => '��',
        'Start' => '�_ʼ',
        'End' => '�Y��',
        'User will be needed to handle tickets.' => '��Ҫ�Ñ��̎�� Tickets.',
        'Don\'t forget to add a new user to groups and/or roles!' => '��Ҫ��ӛ����һ���Ñ����M�ͽ�ɫ!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => '�Ñ� <-> �M����',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => '��ַ��',
        'Return to the compose screen' => '�ص�׫�����',
        'Discard all changes and return to the compose screen' => '�ŗ������޸�,�ص�׫�����',

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
        'Please update now.' => 'Ո����',
        'Release Note' => '�汾�l��ע�',
        'Level' => '���e',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '',

        # Template: AgentDashboardTicketGeneric

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline

        # Template: AgentInfo
        'Info' => 'Ԕ��',

        # Template: AgentLinkObject
        'Link Object: %s' => '�B�ӌ���: %s',
        'Object' => '����',
        'Link Object' => '朽ӌ���',
        'with' => '��',
        'Select' => '�x��',
        'Unlink Object: %s' => 'δ�B�ӌ��� %s',

        # Template: AgentLookup
        'Lookup' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'ƴ���z��',
        'spelling error(s)' => 'ƴ���e�`',
        'or' => '����',
        'Apply these changes' => '�����@Щ��׃',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => '���Ƿ�_�J�h��ԓ����?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => '�x�����ƅ�����ʹ�yӋ������',
        'Fixed' => '',
        'Please select only one element or turn off the button \'Fixed\'.' => 'Ո�b�x��һ��Ԫ�ػ��P�]���x���\'Fixed\'���o',
        'Absolut Period' => '�^������',
        'Between' => '',
        'Relative Period' => '��������',
        'The last' => '',
        'Finish' => '',
        'Here you can make restrictions to your stat.' => '�����Ԟ����ĽyӋ�ƶ����ƅ���',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => '������h���^�ڡ��̶������x������ԓ�yӋ�ļ��g֧�ִ�����Ը�׃����Ҫ�صČ���',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => '���빲ͬҎ��',
        'Permissions' => '���S',
        'Format' => '��ʽ',
        'Graphsize' => '�D�λ�',
        'Sum rows' => '������',
        'Sum columns' => '������',
        'Cache' => '����',
        'Required Field' => '�����ֶ�',
        'Selection needed' => '�x����Ҫ',
        'Explanation' => '���',
        'In this form you can select the basic specifications.' => '���@�N��ʽ���������x�����Ҏ��',
        'Attribute' => '����',
        'Title of the stat.' => '�yӋ�Ę��}',
        'Here you can insert a description of the stat.' => '�����Բ���yӋ������',
        'Dynamic-Object' => '�ӑB����',
        'Here you can select the dynamic object you want to use.' => '�������x������Ҫʹ�õĄӑB����',
        '(Note: It depends on your installation how many dynamic objects you can use)' => 'ע���@ȡ�Q����İ��b���لӑB�������ʹ��',
        'Static-File' => '�o�B�ļ�',
        'For very complex stats it is possible to include a hardcoded file.' => '��춷ǳ����s�ĽyӋ�п��ܰ���һ��Ӳ���a�ļ�',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => '���һ���µ�Ӳ���a�ļ����ڣ��ɴˌ��Ԍ��@ʾ���������x������һ��',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '�����O�á��������x��һ��������F�w����ͬ�ļ��g֧�ִ����ɿ�Ҋԓ���õĽyӋ',
        'Multiple selection of the output format.' => 'ݔ����ʽ�Ķ�N�x��',
        'If you use a graph as output format you have to select at least one graph size.' => '�����ʹ�õ��ǈD�ε�ݔ����ʽ���������x��һ���D�εĴ�С',
        'If you need the sum of every row select yes' => '����Ҫÿ�еĿ����x�� yes��',
        'If you need the sum of every column select yes.' => '����Ҫÿ�еĿ����x��yes��',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '������ĽyӋ�Y�Ͽ��Ծ���,�@���ӿ��@һ�yӋ��չʾ.',
        '(Note: Useful for big databases and low performance server)' => 'ע���m��춴��͔�����͵����ܵķ�����',
        'With an invalid stat it isn\'t feasible to generate a stat.' => '�ßoЧ�ĽyӋ�������ɽyӋ',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '�@�Ƿǳ����õģ�����㲻��׌�˵õ��yӋ�ĽY����yӋ�Y���K������',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => '�x��rֵϵ�е�Ҫ��',
        'Scale' => '�߶�',
        'minimal' => '��С��',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Ոӛס���@���~��ărֵϵ��Ҫ���X�S�ĳ߶ȣ���X -�S=>���£� ValueSeries =>�꣩ ',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '���@�e�������Զ��xһϵ�е�ֵ�����п����x��һ����ɂ����ء�Ȼ���������x��Ԫ�صČ��ԡ�ÿ�����Ԍ��@ʾ���һ��ֵ����������x���κΌ���, ���N��������һ���yӋ�ĕr������Ԫ�صČ��Ԍ���ʹ�á��K��һ���µČ��Ա����µ��ϴ�������',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => '�x������x�S��Ԫ��',
        'maximal period' => '�������',
        'minimal scale' => '��С�߶�',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '���@�e�������Զ��xx�S���������x���һ������ͨ�^���x���o�������]���x������Ԫ�صČ��Ԍ���ʹ�î�������һ���yӋ�ĕr�򡣁K��һ���µČ��Ա����µ��ϴ�������',

        # Template: AgentStatsImport
        'Import' => '����',
        'File is not a Stats config' => '�ļ�����һ���yӋ����',
        'No File selected' => '�]���ļ����x��',

        # Template: AgentStatsOverview
        'Results' => '�Y��',
        'Total hits' => '�c����',
        'Page' => '�',

        # Template: AgentStatsPrint
        'Print' => '��ӡ',
        'No Element selected.' => '�]��Ԫ�ر��x��',

        # Template: AgentStatsView
        'Export Config' => '��������',
        'Information about the Stat' => '�P춽yӋ����Ϣ',
        'Exchange Axis' => '�D�Q�S',
        'Configurable params of static stat' => '�o�B�yӋ�����Å���',
        'No element selected.' => '�]�б��x����',
        'maximal period from' => '������ڱ�',
        'to' => '��',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'ͨ�^ݔ����x���ֶΣ������԰�������������ýyӋ���������޸ľ�݋��Щ�yӋҪ�������ĽyӋ�Y�Ϲ���T���O�á�',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => '�]��������ռ���!',
        'You need a email address (e. g. customer@example.com) in To:!' => '�ռ�����Ϣ������]����ַ(���磺customer@example.com)',
        'Bounce ticket' => '���� Ticket ',
        'Ticket locked!' => 'Ticket ���i��!',
        'Ticket unlock!' => '���i Ticket!',
        'Bounce to' => '���˵� ',
        'Next ticket state' => 'Tickets ��B',
        'Inform sender' => '֪ͨ�l����',
        'Send mail!' => '�l��!',

        # Template: AgentTicketBulk
        'You need to account time!' => '����Ҫӛ䛕r�g',
        'Ticket Bulk Action' => 'Ticket ����̎��',
        'Spell Check' => 'ƴ���z��',
        'Note type' => 'ע����',
        'Next state' => 'Ticket ��B',
        'Pending date' => '��̎������',
        'Merge to' => '�ρK��',
        'Merge to oldest' => '�ρK�����ϵ�',
        'Link together' => '�ρK��һ��',
        'Link to Parent' => '�ρK����һ��',
        'Unlock Tickets' => '���i Tickets',

        # Template: AgentTicketClose
        'Ticket Type is required!' => 'Ticket ������Ǳ�횵�!',
        'A required field is:' => '��횵��ֶ���',
        'Close ticket' => '�P�] Ticket',
        'Previous Owner' => 'ǰһ��������',
        'Inform Agent' => '֪ͨ���g֧���ˆT',
        'Optional' => '�x�',
        'Inform involved Agents' => '֪ͨ���P���g֧���ˆT',
        'Attach' => '����',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => '��Ϣ��횽��^ƴ���z��!',
        'Compose answer for ticket' => '׫������,Ticket ��̖',
        'Pending Date' => '�M��ȴ���B����',
        'for pending* states' => 'ᘌ��ȴ���B',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => '�޸� Tickets ���ٿ͑�',
        'Set customer user and customer id of a ticket' => '�O�� Ticket ���ٿ͑��Ñ�',
        'Customer User' => '�͑��Ñ�',
        'Search Customer' => '�����͑�',
        'Customer Data' => '�͑�����',
        'Customer history' => '�͑��vʷ��r',
        'All customer tickets.' => 'ԓ�͑����� Tickets ӛ�.',

        # Template: AgentTicketEmail
        'Compose Email' => '׫�� Email',
        'new ticket' => '�½� Ticket',
        'Refresh' => 'ˢ��',
        'Clear To' => '���',
        'All Agents' => '���м��g֧���ˆT',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => '�������',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => '�޸� Ticket �~����Ϣ',

        # Template: AgentTicketHistory
        'History of' => '�vʷ',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => '����Ҫʹ��һ�� Ticket ��̖!',
        'Ticket Merge' => 'Ticket �ρK',

        # Template: AgentTicketMove
        'Move Ticket' => '�Ƅ� Ticket',

        # Template: AgentTicketNote
        'Add note to ticket' => '����ע�⵽ Ticket',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => '�״Έ��r�g',
        'Service Time' => '���Օr�g',
        'Update Time' => '���r�g',
        'Solution Time' => '��Q�r�g',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => '��������Ҫ�x��һ�� Ticket!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => '�^�V��',
        'Change search options' => '�޸������x�',
        'Tickets' => '',
        'of' => '',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => '׫������',
        'Contact customer' => 'ϵ�͑�',
        'Change queue' => '��׃���',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => '��������',
        'up' => '��',
        'sort downward' => '��������',
        'down' => '��',
        'Escalation in' => '�ޕr',
        'Locked' => '�i����B',

        # Template: AgentTicketOwner
        'Change owner of ticket' => '�޸� Ticket ������',

        # Template: AgentTicketPending
        'Set Pending' => '�O�ô�̎���B',

        # Template: AgentTicketPhone
        'Phone call' => '�Ԓ',
        'Clear From' => '����',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => '���ı�',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Ticket��Ϣ',
        'Accounted time' => '���Õr�g',
        'Linked-Object' => '��朽ӌ���',
        'by' => '��',

        # Template: AgentTicketPriority
        'Change priority of ticket' => '�{�� Ticket ���ȼ�',

        # Template: AgentTicketQueue
        'Tickets shown' => '�@ʾ Ticket',
        'Tickets available' => '���� Ticket',
        'All tickets' => '����Ticket',
        'Queues' => '���',
        'Ticket escalation!' => 'Ticket �ޕr̎��!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '���� Ticket ��ؓ؟��',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Ticket ����',
        'Profile' => '�����s���l��',
        'Search-Template' => '����ģ��',
        'TicketFreeText' => 'Ticket �~����Ϣ',
        'Created in Queue' => '������e����',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '��׃�r�g',
        'No change time settings.' => '����׃�r�g�O��',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => '�����Y���@ʾ��',
        'Save Search-Profile as Template?' => '�������l�������ģ��',
        'Yes, save it with name' => '��, ��������Q',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'ȫ��',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => 'չ�_',
        'Collapse View' => '�ۯB',
        'Split' => '�ֽ�',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => 'Article �^�V�O��',
        'Save filter settings as default' => '�����^�V�O�Þ�ȱʡֵ',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => '׷��',

        # Template: CustomerFooter
        'Powered by' => '�ӷ�',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => '���',
        'Lost your password?' => '��ӛ�ܴa?',
        'Request new password' => '�O�����ܴa',
        'Create Account' => '��������',

        # Template: CustomerNavigationBar
        'Welcome %s' => '�gӭ %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => '�r�g',
        'No time settings.' => '�o�r�g�s��.',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => '�c���@�e���һ�� Bug!',

        # Template: Footer
        'Top of Page' => '���픶�',

        # Template: FooterSmall

        # Template: Header
        'Home' => '',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'WEB ���b��',
        'Welcome to %s' => '�gӭʹ�� %s',
        'Accept license' => 'ͬ���S��',
        'Don\'t accept license' => '��ͬ��',
        'Admin-User' => '����T',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '������Ĕ��������O�� root �ܴa, Ո���@�eݔ��, ��t, Ո�����հ�. ��춰�ȫ���], �҂����h���� root �O��һ���ܴa, ������ϢՈ��������������ęn.',
        'Admin-Password' => '����T�ܴa',
        'Database-User' => '�������Ñ����Q',
        'default \'hot\'' => 'Ĭ�J�ܴa \'hot\'',
        'DB connect host' => '�����B�����C',
        'Database' => '������',
        'Default Charset' => 'ȱʡ�ַ���',
        'utf8' => 'UTF-8',
        'false' => '��',
        'SystemID' => 'ϵ�yID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(ϵ�y���R��. Ticket ��̖�� http ��Ԓ�����@�����R���_�^)',
        'System FQDN' => 'ϵ�y����',
        '(Full qualified domain name of your system)' => '(ϵ�y����)',
        'AdminEmail' => '����T��ַ',
        '(Email of the system admin)' => '(ϵ�y����T�]����ַ)',
        'Organization' => '�M��',
        'Log' => '��־',
        'LogModule' => '��־ģ�K',
        '(Used log backend)' => 'ʹ����־���',
        'Logfile' => '��־�ļ�',
        '(Logfile just needed for File-LogModule!)' => '(�b�м��� File-LogModule �r����Ҫ Logfile!)',
        'Webfrontend' => 'Web ǰ��',
        'Use utf-8 it your database supports it!' => '������Ĕ�����֧�֣�ʹ��UTF-8�ַ����a!',
        'Default Language' => 'ȱʡ�Z��',
        '(Used default language)' => '(ʹ��ȱʡ�Z��)',
        'CheckMXRecord' => '�z�� MX ӛ�',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => 'ͨ�^׫���𰸁�z�����^������]����ַ��MXӛ䛡���OTRS�C���ړ�̖����ĵ��پW�j�e��Ո��Ҫʹ��CheckMXRecord!',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '�����܉�ʹ��OTRS, �������root���ݔ������������������(Terminal/Shell).',
        'Restart your webserver' => 'Ո���������� webserver.',
        'After doing so your OTRS is up and running.' => '��ɺ������Ԇ��� OTRS ϵ�y��.',
        'Start page' => '�_ʼ���',
        'Your OTRS Team' => '���� OTRS С�M.',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => '�o����',

        # Template: Notify
        'Important' => '��Ҫ',

        # Template: PrintFooter
        'URL' => '�Wַ',

        # Template: PrintHeader
        'printed by' => '��ӡ�',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: Test
        'OTRS Test Page' => 'OTRS �yԇ�',
        'Counter' => 'Ӌ����',

        # Template: Warning

        # Misc
        'Edit Article' => '��݋�ż�',
        'Create Database' => '����������',
        'DB Host' => '���������C',
        'Ticket Number Generator' => 'Ticket ��̖������',
        'Create new Phone Ticket' => '�����µ��Ԓ Ticket',
        'Symptom' => '֢��',
        'U' => '����',
        'Site' => 'վ�c',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_USERFIRSTNAME>)' => '',
        'Customer history search (e. g. "ID342425").' => '�����͑��vʷ (���磺 "ID342425").',
        'Can not delete link with %s!' => '���܄h�� %s ���B��',
        'for agent firstname' => '���g֧���ˆT ��',
        'Close!' => '�P�]!',
        'No means, send agent and customer notifications on changes.' => '���и�׃�r���l��֪ͨ�o���g�ˆT��͑�.',
        'A web calendar' => 'Web �՚v',
        'to get the realname of the sender (if given)' => '�]���l���˵��挍���� (�������)',
        'OTRS DB Name' => '���������Q',
        'Notification (Customer)' => '',
        'Select Source (for add)' => '�x�񔵓�Դ(���ӹ���ʹ��)',
        'Child-Object' => '�ӌ���',
        'Days' => '��',
        'Queue ID' => '��о�̖',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => '�����x� (����: <OTRS_CONFIG_HttpType>)',
        'System History' => 'ϵ�y�vʷ',
        'customer realname' => '�͑��挍����',
        'Pending messages' => '��Ϣ�D��ȴ���B',
        'for agent login' => '���g֧���ˆT �����',
        'Keyword' => '�P�I��',
        'Close type' => '�P�]���',
        'DB Admin User' => '���������T�Ñ���',
        'for agent user id' => '���g֧���ˆT �Ñ���',
        'Change user <-> group settings' => '�޸� �Ñ� <-> �M �O��',
        'Problem' => '���}',
        'Escalation' => '�{��',
        '"}' => '',
        'Order' => '����',
        'next step' => '��һ��',
        'Follow up' => '���M',
        'Customer history search' => '�͑��vʷ����',
        'PostMaster Mail Account' => '�]����̖����',
        'Stat#' => '',
        'Create new database' => '�����µĔ�����',
        'Go' => '����',
        'Keywords' => '�P�I��',
        'Ticket Escalation View' => '�{���鿴 Ticket',
        'Today' => '����',
        'No * possible!' => '����ʹ��ͨ��� "*" !',
        'Load' => '���d',
        'PostMaster Filter' => '�]�������^�V',
        'Message for new Owner' => '�o�����ߵ���Ϣ',
        'to get the first 5 lines of the email' => '�]������ǰ5��',
        'Sort by' => '����',
        'OTRS DB Password' => 'OTRS �Ñ��ܴa',
        'Last update' => '�������',
        'Tomorrow' => '����',
        'not rated' => '�����u��',
        'to get the first 20 character of the subject' => '�]�����}ǰ20���ַ�',
        'Select the customeruser:service relations.' => '',
        'DB Admin Password' => '����ϵ�y����T�ܴa',
        'Drop Database' => '�h��������',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '���@�e�������Զ��xx�S���������x���һ������ͨ�^���x���o��Ȼ�������x��ԓԪ�؃ɂ���ɂ����ϵČ��ԡ���������x���κΌ���, ���N��������һ���yӋ�ĕr������Ԫ�صČ��Ԍ���ʹ�á��K��һ���µČ��Ա����µ��ϴ�������',
        'FileManager' => '�ļ�������',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => '��ǰ�͑��Ñ���Ϣ (����: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => '��̎�����',
        'Comment (internal)' => 'ע� (�Ȳ�)',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '���õ����P Ticket ��Ϣ (����: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(ʹ�� Ticket ��̖��ʽ)',
        'Reminder' => '����',
        'OTRS DB connect host' => 'OTRS ���������C',
        'All Agent variables.' => '���еļ��g�ˆT׃��',
        ' (work units)' => '������Ԫ',
        'Next Week' => '����',
        'All Customer variables like defined in config option CustomerUser.' => '���п͑�׃�������������x�CustomerUser�ж��x',
        'for agent lastname' => '���g֧���ˆT ��',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => '����Ո������Ϣ (����: <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => '��Ϣ����',
        'Parent-Object' => '������',
        'Of couse this feature will take some system performance it self!' => '��Ȼ, ԓ���ܕ�����һ����ϵ�y�YԴ, ����ϵ�y��ؓ��!',
        'Your own Ticket' => '���Լ��� Ticket',
        'Detail' => '����',
        'TicketZoom' => 'Ticket չ�_',
        'Open Tickets' => '�_�� Tickets',
        'Don\'t forget to add a new user to groups!' => '��Ҫ��ӛ�����µ��Ñ����M!',
        'General Catalog' => '��Ŀ�',
        'CreateTicket' => '���� Ticket',
        'You have to select two or more attributes from the select field!' => '���횏����x�ֶ����x��ɂ���ɂ����ϵČ���',
        'System Settings' => '�������O�� ',
        'Finished' => '���',
        'D' => '����',
        'All messages' => '������Ϣ',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        'Object already linked as %s.' => '�������B�ӵ� %s.',
        'A article should have a title!' => '���±���И��}!',
        'Customer Users <-> Services' => '�͑�̖ <-> ���չ���',
        'All email addresses get excluded on replaying on composing and email.' => '���б�ȡ��׫���]�����ܵ��]����ַ',
        'A web mail client' => 'WebMail �͑���',
        'Compose Follow up' => '׫����ۙ����',
        'WebMail' => 'WebMail',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Ticket �������x� (����: <OTRS_OWNER_UserFirstname>)',
        'DB Type' => '���������',
        'kill all sessions' => '��ֹ���Е�Ԓ',
        'to get the from line of the email' => '�]������',
        'Solution' => '��Q����',
        'QueueView' => '���ҕ�D',
        'My Queue' => '�ҵ����',
        'Select Box' => '�x�񷽿�',
        'New messages' => '����Ϣ',
        'Ticket owner options (e. g. <OTRS_OWNER_USERFIRSTNAME>)' => '���õ� Ticket �w������Ϣ (����: <OTRS_OWNER_USERFIRSTNAME>)',
        'Can not create link with %s!' => '���ܞ� %s �����B��',
        'Linked as' => '���B�Ӟ�',
        'modified' => '�޸��',
        'Delete old database' => '�h���f������',
        'A web file manager' => 'Web �ļ�������',
        'Have a lot of fun!' => 'Have a lot of fun!',
        'send' => '�l��',
        'QuickSearch' => '��������',
        'Send no notifications' => '���l��֪ͨ',
        'Note Text' => 'ע��',
        'POP3 Account Management' => 'POP3 ��������',
        'System State Management' => 'ϵ�y��B����',
        'OTRS DB User' => 'OTRS �������Ñ���',
        'Mailbox' => '�]��',
        'PhoneView' => '�Ԓҕ�D',
        'maximal period form' => '������ڱ�',
        'Escaladed Tickets' => '',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_USERFIRSTNAME>)' => '',
        'Yes means, send no agent and customer notifications on changes.' => '���и�׃�r���l��֪ͨ�o���g�ˆT��͑�.',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => '�����]�� ��̖: "<OTRS_TICKET>" ���˵� "<OTRS_BOUNCE_TO>" . Ոϵ���µ�ַ�@ȡԔ����Ϣ.',
        'Ticket Status View' => 'Ticket ��Bҕ�D',
        'Modified' => '�޸��',
        'Ticket selected for bulk action!' => '���x���M������������ Tickets',
    };
    # $$STOP$$
    return;
}

1;
