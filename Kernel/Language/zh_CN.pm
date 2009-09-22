# --
# Kernel/Language/zh_CN.pm -  provides Chinese Simple language translation
# Copyright (C) 2005 zuowei <j2ee at hirain-sh.com>
# Copyright (C) 2008-2009 Never Min <never at qnofae.org>
# Copyright (C) 2009 Bin Du <bindu2008 at gmail.com>,
# Copyright (C) 2009 Yiye Huang <yiyehuang at gmail.com>
# Copyright (C) 2009 Qingjiu Jia <jiaqj at yahoo.com>
# --
# $Id: zh_CN.pm,v 1.69.2.1 2009-09-22 13:04:55 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::zh_CN;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.69.2.1 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sun Jul 19 12:24:20 2009

    # possible charsets
    $Self->{Charset} = ['GBK', 'GB2312', ];
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
        'no' => 'δ����',
        'Off' => '��',
        'off' => '��',
        'On' => '��',
        'on' => '��',
        'top' => '����',
        'end' => '�ײ�',
        'Done' => 'ȷ��',
        'Cancel' => 'ȡ��',
        'Reset' => '����',
        'last' => '���',
        'before' => '����',
        'day' => '��',
        'days' => '��',
        'day(s)' => '��',
        'hour' => 'Сʱ',
        'hours' => 'Сʱ',
        'hour(s)' => 'Сʱ',
        'minute' => '����',
        'minutes' => '����',
        'minute(s)' => '����',
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
        'wrote' => 'д��',
        'Message' => '��Ϣ',
        'Error' => '����',
        'Bug Report' => 'Bug ����',
        'Attention' => 'ע��',
        'Warning' => '����',
        'Module' => 'ģ��',
        'Modulefile' => 'ģ���ļ�',
        'Subfunction' => '�ӹ���',
        'Line' => '��',
        'Setting' => '����',
        'Settings' => '����',
        'Example' => 'ʾ��',
        'Examples' => 'ʾ��',
        'valid' => '��Ч',
        'invalid' => '��Ч',
        '* invalid' => '* ��Ч',
        'invalid-temporarily' => '��ʱ��Ч',
        ' 2 minutes' => ' 2 ����',
        ' 5 minutes' => ' 5 ����',
        ' 7 minutes' => ' 7 ����',
        '10 minutes' => '10 ����',
        '15 minutes' => '15 ����',
        'Mr.' => '����',
        'Mrs.' => '����',
        'Next' => '��һ��',
        'Back' => '����',
        'Next...' => '��һ��...',
        '...Back' => '...����',
        '-none-' => '-��-',
        'none' => '��',
        'none!' => '��!',
        'none - answered' => '�� - �Ѵ𸴵�',
        'please do not edit!' => '��Ҫ�༭!',
        'AddLink' => '��������',
        'Link' => '����',
        'Unlink' => 'δ����',
        'Linked' => '������',
        'Link (Normal)' => '���� (����)',
        'Link (Parent)' => '���� (��)',
        'Link (Child)' => '���� (��)',
        'Normal' => '����',
        'Parent' => '��',
        'Child' => '��',
        'Hit' => '���',
        'Hits' => '�����',
        'Text' => '����',
        'Standard' => '��׼',
        'Lite' => '���',
        'User' => '�û�',
        'Username' => '�û�����',
        'Language' => '����',
        'Languages' => '����',
        'Password' => '����',
        'Salutation' => '��ν',
        'Signature' => 'ǩ��',
        'Customer' => '�ͻ�',
        'CustomerID' => '�ͻ����',
        'CustomerIDs' => '�ͻ����',
        'customer' => '�ͻ�',
        'agent' => '����֧����Ա',
        'system' => 'ϵͳ',
        'Customer Info' => '�ͻ���Ϣ',
        'Customer Company' => '�ͻ���λ',
        'Company' => '��λ',
        'go!' => '��ʼ!',
        'go' => '��ʼ',
        'All' => 'ȫ��',
        'all' => 'ȫ��',
        'Sorry' => '�Բ���',
        'update!' => '����!',
        'update' => '����',
        'Update' => '����',
        'Updated!' => '�Ѹ���',
        'submit!' => '�ύ!',
        'submit' => '�ύ',
        'Submit' => '�ύ',
        'change!' => '�޸�!',
        'Change' => '�޸�',
        'change' => '�޸�',
        'click here' => '�������',
        'Comment' => 'ע��',
        'Valid' => '��Ч',
        'Invalid Option!' => '��Чѡ��!',
        'Invalid time!' => '��Чʱ��!',
        'Invalid date!' => '��Ч����!',
        'Name' => '����',
        'Group' => '����',
        'Description' => '����',
        'description' => '����',
        'Theme' => '����',
        'Created' => '����',
        'Created by' => '������',
        'Changed' => '���޸�',
        'Changed by' => '�޸���',
        'Search' => '����',
        'and' => '��',
        'between' => '��',
        'Fulltext Search' => 'ȫ������',
        'Data' => '����',
        'Options' => 'ѡ��',
        'Title' => '����',
        'Item' => '��Ŀ',
        'Delete' => 'ɾ��',
        'Edit' => '�༭',
        'View' => '�鿴',
        'Number' => '���',
        'System' => 'ϵͳ',
        'Contact' => '��ϵ��',
        'Contacts' => '��ϵ��',
        'Export' => '����',
        'Up' => '��',
        'Down' => '��',
        'Add' => '����',
        'Added!' => '������!',
        'Category' => 'Ŀ¼',
        'Viewer' => '�鿴��',
        'Expand' => '��չ',
        'New message' => '����Ϣ',
        'New message!' => '����Ϣ!',
        'Please answer this ticket(s) to get back to the normal queue view!' => '���Ȼظ��� Ticket��Ȼ��ص�����������ͼ!',
        'You got new message!' => '��������Ϣ!',
        'You have %s new message(s)!' => '���� %s ������Ϣ!',
        'You have %s reminder ticket(s)!' => '���� %s ������!',
        'The recommended charset for your language is %s!' => '�������������Ե��ַ��� %s!',
        'Passwords doesn\'t match! Please try it again!' => '���벻����������!',
        'Password is already in use! Please use an other password!' => '�����뱻ʹ�ã���ʹ����������!',
        'Password is already used! Please use an other password!' => '�����뱻ʹ�ã���ʹ����������!',
        'You need to activate %s first to use it!' => '%s ��ʹ��֮ǰ���ȼ���!',
        'No suggestions' => '�޽���',
        'Word' => '��',
        'Ignore' => '����',
        'replace with' => '�滻',
        'There is no account with that login name.' => '���û���û���ʻ���Ϣ.',
        'Login failed! Your username or password was entered incorrectly.' => '��¼ʧ�ܣ������û��������벻��ȷ.',
        'Please contact your admin' => '����ϵϵͳ����Ա',
        'Logout successful. Thank you for using OTRS!' => '�ɹ�ע����ллʹ��!',
        'Invalid SessionID!' => '��Ч�ĻỰ��ʶ��!',
        'Feature not active!' => '��������δ����!',
        'Notification (Event)' => '֪ͨ���¼���',
        'Login is needed!' => '��Ҫ�ȵ�¼!',
        'Password is needed!' => '��Ҫ����!',
        'License' => '���֤',
        'Take this Customer' => 'ȡ������ͻ�',
        'Take this User' => 'ȡ������û�',
        'possible' => '����',
        'reject' => '�ܾ�',
        'reverse' => '����',
        'Facility' => '���',
        'Timeover' => '����',
        'Pending till' => '�ȴ���',
        'Don\'t work with UserID 1 (System account)! Create new users!' => '��Ҫʹ�� UserID 1 (ϵͳ�˺�)! �봴��һ���µ��û�!',
        'Dispatching by email To: field.' => '�����ʼ���: ��.',
        'Dispatching by selected Queue.' => '�����ʼ�����ѡ����.',
        'No entry found!' => '������!',
        'Session has timed out. Please log in again.' => '�Ự��ʱ�������µ�¼.',
        'No Permission!' => '��Ȩ��!',
        'To: (%s) replaced with database email!' => 'To: (%s) �����ݿ��ʼ���ַ�����',
        'Cc: (%s) added database email!' => 'Cc: (%s) �������ݿ��ʼ���ַ!',
        '(Click here to add)' => '(����˴�����)',
        'Preview' => 'Ԥ��',
        'Package not correctly deployed! You should reinstall the Package again!' => '�����չ��������! ����Ҫ��һ�����°�װ��������',
        'Added User "%s"' => '�����û� "%s".',
        'Contract' => '��ͬ',
        'Online Customer: %s' => '���߿ͻ�: %s',
        'Online Agent: %s' => '���߼���֧����Ա��%s',
        'Calendar' => '����',
        'File' => '�ļ�',
        'Filename' => '�ļ���',
        'Type' => '����',
        'Size' => '��С',
        'Upload' => '�ϴ�',
        'Directory' => 'Ŀ¼',
        'Signed' => '��ǩ��',
        'Sign' => 'ǩ��',
        'Crypted' => '�Ѽ���',
        'Crypt' => '����',
        'Office' => '�칫��',
        'Phone' => '�绰',
        'Fax' => '����',
        'Mobile' => '�ֻ�',
        'Zip' => '�ʱ�',
        'City' => '����',
        'Street' => '�ֵ�',
        'Country' => '����',
        'Location' => '��',
        'installed' => '�Ѱ�װ',
        'uninstalled' => 'δ��װ',
        'Security Note: You should activate %s because application is already running!' => '��ȫ��ʾ: �����ܼ���� %s, ��Ϊ��Ӧ���Ѿ�������!',
        'Unable to parse Online Repository index document!' => '���ܷ���������Դ�����ĵ�',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '������Դ��û���������Ӧ��Ҫ�Ŀ�ܣ����������Ŀ�����������',
        'No Packages or no new Packages in selected Online Repository!' => '����ѡ��������Դ�У�û���ִ���µ������',
        'printed at' => '��ӡ����',
        'Loading...' => '',
        'Dear Mr. %s,' => '�𾴵� %s ����:',
        'Dear Mrs. %s,' => '�𾴵� %s Ůʿ:',
        'Dear %s,' => '�𾴵� %s:',
        'Hello %s,' => '����, %s:',
        'This account exists.' => '����ʻ��Ѵ���',
        'New account created. Sent Login-Account to %s.' => '�µ��ʺ��Ѵ���, ������֪ͨ�� %s.',
        'Please press Back and try again.' => '�뷵������һ��.',
        'Sent password token to: %s' => '�������뵽: %s',
        'Sent new password to: %s' => '�����µ����뵽: %s',
        'Upcoming Events' => '�����������¼�',
        'Event' => '�¼�',
        'Events' => '�¼�',
        'Invalid Token!' => '�Ƿ��ı��',
        'more' => '����',
        'For more info see:' => '������Ϣ�뿴',
        'Package verification failed!' => '�������֤ʧ��',
        'Collapse' => '����',
        'Shown' => '��ʾ',
        'News' => '����',
        'Product News' => '��Ʒ����',
        'OTRS News' => 'OTRS ����',
        '7 Day Stats' => '��� 7 ��ͳ��',
        'Bold' => '����',
        'Italic' => 'б��',
        'Underline' => '����',
        'Font Color' => '������ɫ',
        'Background Color' => '����ɫ',
        'Remove Formatting' => 'ɾ����ʽ',
        'Show/Hide Hidden Elements' => '��ʾ/���� ����Ҫ��',
        'Align Left' => '�����',
        'Align Center' => '���ж���',
        'Align Right' => '�Ҷ���',
        'Justify' => '����',
        'Header' => '��Ϣͷ',
        'Indent' => '��',
        'Outdent' => '��ͻ',
        'Create an Unordered List' => '����һ�������б�',
        'Create an Ordered List' => '����һ�������б�',
        'HTML Link' => 'HTML����',
        'Insert Image' => '����ͼ��',
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
        'May_long' => '����',
        'June' => '����',
        'July' => '����',
        'August' => '����',
        'September' => '����',
        'October' => 'ʮ��',
        'November' => 'ʮһ��',
        'December' => 'ʮ����',

        # Template: AAANavBar
        'Admin-Area' => '��������',
        'Agent-Area' => '����֧����Ա��',
        'Ticket-Area' => 'Ticket��',
        'Logout' => 'ע��',
        'Agent Preferences' => '��������',
        'Preferences' => '����',
        'Agent Mailbox' => '����֧����Ա����',
        'Stats' => 'ͳ��',
        'Stats-Area' => 'ͳ����',
        'Admin' => '����',
        'Customer Users' => '�ͻ��û�',
        'Customer Users <-> Groups' => '�ͻ��û� <-> ��',
        'Users <-> Groups' => '�û� <-> ��',
        'Roles' => '��ɫ',
        'Roles <-> Users' => '��ɫ <-> �û�',
        'Roles <-> Groups' => '��ɫ <-> ��',
        'Salutations' => '��ν',
        'Signatures' => 'ǩ��',
        'Email Addresses' => 'Email ��ַ',
        'Notifications' => 'ϵͳ֪ͨ',
        'Category Tree' => 'Ŀ¼��',
        'Admin Notification' => '����Ա֪ͨ',

        # Template: AAAPreferences
        'Preferences updated successfully!' => '���ø��³ɹ�!',
        'Mail Management' => '�ʼ��������',
        'Frontend' => 'ǰ�˽���',
        'Other Options' => '����ѡ��',
        'Change Password' => '�޸�����',
        'New password' => '������',
        'New password again' => '�ظ�������',
        'Select your QueueView refresh time.' => '������ͼˢ��ʱ��.',
        'Select your frontend language.' => '��������',
        'Select your frontend Charset.' => '�����ַ���.',
        'Select your frontend Theme.' => '��������.',
        'Select your frontend QueueView.' => '������ͼ.',
        'Spelling Dictionary' => 'ƴд����ֵ�',
        'Select your default spelling dictionary.' => 'ȱʡƴд����ֵ�.',
        'Max. shown Tickets a page in Overview.' => 'ÿһҳ��ʾ����� Tickets ��Ŀ.',
        'Can\'t update password, your new passwords do not match! Please try again!' => '�������β������޷����£�����������',
        'Can\'t update password, invalid characters!' => '�޷��������룬������Ч�ַ�.',
        'Can\'t update password, must be at least %s characters!' => '�޷��������룬���볤������%sλ.',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => '�޷��������룬���ٰ���2����д�ַ���2��Сд�ַ�.',
        'Can\'t update password, needs at least 1 digit!' => '�޷��������룬���ٰ���1λ����',
        'Can\'t update password, needs at least 2 characters!' => '�޷��������룬���ٰ���2����ĸ!',

        # Template: AAAStats
        'Stat' => 'ͳ��',
        'Please fill out the required fields!' => '����д�����ֶ�',
        'Please select a file!' => '��ѡ��һ���ļ�!',
        'Please select an object!' => '��ѡ��һ������!',
        'Please select a graph size!' => '��ѡ��ͼƬ�ߴ�!',
        'Please select one element for the X-axis!' => '��ѡ��һ��Ԫ�ص�X-��',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => '��ֻѡ��һ��Ԫ�ػ�رձ�ѡ���\'Fixed\'��ť',
        'If you use a checkbox you have to select some attributes of the select field!' => '�����ʹ�ø�ѡ�������ѡ��ѡ���һЩ����!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '��ѡ���������������һ��ֵ����ر�\'Fixed\'��ѡ��',
        'The selected end time is before the start time!' => 'ѡ���Ľ���ʱ�����ڿ�ʼʱ�䣡',
        'You have to select one or more attributes from the select field!' => '�ӱ�ѡ���������ѡ��һ���������ԣ�',
        'The selected Date isn\'t valid!' => '��ѡ���ڲ���Ч',
        'Please select only one or two elements via the checkbox!' => 'ͨ����ѡ����ֻѡ��һ��������Ҫ�أ�',
        'If you use a time scale element you can only select one element!' => '�����ʹ�õ���ʱ��߶�Ҫ����ֻ��ѡ������һ����ɲ���',
        'You have an error in your time selection!' => '����һ�������ʱ��ѡ��',
        'Your reporting time interval is too small, please use a larger time scale!' => '���ı���ʱ����̫С����ʹ�ø���ļ��',
        'The selected start time is before the allowed start time!' => 'ѡ���Ŀ�ʼʱ����������Ŀ�ʼʱ��',
        'The selected end time is after the allowed end time!' => 'ѡ���Ľ���ʱ����������Ľ���ʱ��',
        'The selected time period is larger than the allowed time period!' => '��ѡ��ʱ��δ��������ʱ���',
        'Common Specification' => '��ͬ�淶',
        'Xaxis' => 'X��',
        'Value Series' => '��ֵϵ��',
        'Restrictions' => '����',
        'graph-lines' => '��ͼ',
        'graph-bars' => '��״ͼ',
        'graph-hbars' => 'H��״ͼ',
        'graph-points' => 'ͼ��',
        'graph-lines-points' => 'ͼ�ߵ�',
        'graph-area' => 'ͼ��',
        'graph-pie' => '��ͼ',
        'extended' => '��չ',
        'Agent/Owner' => '������',
        'Created by Agent/Owner' => '����֧����Ա������',
        'Created Priority' => '���������ȼ�',
        'Created State' => '������״̬',
        'Create Time' => '����ʱ��',
        'CustomerUserLogin' => '�ͻ���½',
        'Close Time' => '�ر�ʱ��',
        'TicketAccumulation' => 'Ticket����',
        'Attributes to be printed' => 'Ҫ��ӡ������',
        'Sort sequence' => '��������',
        'Order by' => '��˳����',
        'Limit' => '����',
        'Ticketlist' => 'Ticket�嵥',
        'ascending' => '����',
        'descending' => '����',
        'First Lock' => '��������',
        'Evaluation by' => '���۵���',
        'Total Time' => '��ʱ��',
        'Ticket Average' => 'Ticket����ƽ��ʱ��',
        'Ticket Min Time' => 'Ticket������Сʱ��',
        'Ticket Max Time' => 'Ticket�������ʱ��',
        'Number of Tickets' => 'Ticket��Ŀ',
        'Article Average' => 'Article����ƽ��ʱ��',
        'Article Min Time' => 'Article������Сʱ��',
        'Article Max Time' => 'Article�������ʱ��',
        'Number of Articles' => 'Article����',
        'Accounted time by Agent' => '����֧����Ա����Ticket���õ�ʱ��',
        'Ticket/Article Accounted Time' => 'Ticket/Article��ռ�õ�ʱ��',
        'TicketAccountedTime' => 'Ticket��ռ�õ�ʱ��',
        'Ticket Create Time' => 'Ticket����ʱ��',
        'Ticket Close Time' => 'Ticket�ر�ʱ��',

        # Template: AAATicket
        'Lock' => '����',
        'Unlock' => '����',
        'History' => '��ʷ',
        'Zoom' => '�ʼ�չ��',
        'Age' => '��ʱ��',
        'Bounce' => '����',
        'Forward' => 'ת��',
        'From' => '������',
        'To' => '�ռ���',
        'Cc' => '����',
        'Bcc' => '����',
        'Subject' => '����',
        'Move' => '�ƶ�',
        'Queue' => '����',
        'Priority' => '���ȼ�',
        'Priority Update' => '�������ȼ�',
        'State' => '״̬',
        'Compose' => '׫д',
        'Pending' => '�ȴ�',
        'Owner' => '������',
        'Owner Update' => '����������',
        'Responsible' => '������',
        'Responsible Update' => '���¸�����',
        'Sender' => '������',
        'Article' => '�ż�',
        'Ticket' => 'Ticket',
        'Createtime' => '����ʱ��',
        'plain' => '���ı�',
        'Email' => '�ʼ���ַ',
        'email' => 'E-Mail',
        'Close' => '�ر�',
        'Action' => '����',
        'Attachment' => '����',
        'Attachments' => '����',
        'This message was written in a character set other than your own.' => '����ʼ������ַ����뱾ϵͳ�ַ�������',
        'If it is not displayed correctly,' => '�����ʾ����ȷ,',
        'This is a' => '����һ��',
        'to open it in a new window.' => '���´����д�',
        'This is a HTML email. Click here to show it.' => '����һ��HTML��ʽ�ʼ������������ʾ.',
        'Free Fields' => '������Ϣ',
        'Merge' => '�ϲ�',
        'merged' => '�Ѻϲ�',
        'closed successful' => '�ɹ��ر�',
        'closed unsuccessful' => '�ر�ʧ��',
        'new' => '�½�',
        'open' => '��',
        'Open' => '��',
        'closed' => '�ر�',
        'Closed' => '�ر�',
        'removed' => 'ɾ��',
        'pending reminder' => '�ȴ�����',
        'pending auto' => '�Զ��ȴ�',
        'pending auto close+' => '�ȴ��Զ��ر�+',
        'pending auto close-' => '�ȴ��Զ��ر�-',
        'email-external' => '�ⲿ E-Mail ',
        'email-internal' => '�ڲ� E-Mail ',
        'note-external' => '�ⲿע��',
        'note-internal' => '�ڲ�ע��',
        'note-report' => 'ע�ⱨ��',
        'phone' => '�绰',
        'sms' => '����',
        'webrequest' => 'Web����',
        'lock' => '����',
        'unlock' => 'δ����',
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
        'Ticket "%s" created!' => 'Ticket "%s" �Ѵ���!',
        'Ticket Number' => 'Ticket ���',
        'Ticket Object' => 'Ticket ����',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Ticket "%s" �����ڣ����ܴ������������!',
        'Don\'t show closed Tickets' => '����ʾ�ѹرյ� Tickets',
        'Show closed Tickets' => '��ʾ�ѹرյ� Tickets',
        'New Article' => '������',
        'Email-Ticket' => '�ʼ� Ticket',
        'Create new Email Ticket' => '�����µ��ʼ� Ticket',
        'Phone-Ticket' => '�绰 Ticket',
        'Search Tickets' => '���� Tickets',
        'Edit Customer Users' => '�༭�ͻ��ʻ�',
        'Edit Customer Company' => '�༭�ͻ���λ',
        'Bulk Action' => '��������',
        'Bulk Actions on Tickets' => '�������� Tickets',
        'Send Email and create a new Ticket' => '���� Email ������һ���µ� Ticket',
        'Create new Email Ticket and send this out (Outbound)' => '�����µ� Ticket�����ͳ�ȥ',
        'Create new Phone Ticket (Inbound)' => '�����µĵ绰Ticket��������Ticket��',
        'Overview of all open Tickets' => '���п��� Tickets �ſ�',
        'Locked Tickets' => '������ Ticket',
        'Watched Tickets' => '���� Tickets',
        'Watched' => '����',
        'Subscribe' => '����',
        'Unsubscribe' => '�˶�',
        'Lock it to work on it!' => '��������ʼ���� !',
        'Unlock to give it back to the queue!' => '�������ͻض���!',
        'Shows the ticket history!' => '��ʾ Ticket ��ʷ״��!',
        'Print this ticket!' => '��ӡ Ticket !',
        'Change the ticket priority!' => '�޸� Ticket ���ȼ�',
        'Change the ticket free fields!' => '�޸� Ticket ������Ϣ',
        'Link this ticket to an other objects!' => '���Ӹ� Ticket ����������!',
        'Change the ticket owner!' => '�޸� Ticket ������!',
        'Change the ticket customer!' => '�޸� Ticket �����ͻ�!',
        'Add a note to this ticket!' => '�� Ticket ����ע��!',
        'Merge this ticket!' => '�ϲ��� Ticket!',
        'Set this ticket to pending!' => '���� Ticket ת��ȴ�״̬',
        'Close this ticket!' => '�رո� Ticket!',
        'Look into a ticket!' => '�鿴 Ticket ����',
        'Delete this ticket!' => 'ɾ���� Ticket!',
        'Mark as Spam!' => '���Ϊ����!',
        'My Queues' => '�ҵĶ���',
        'Shown Tickets' => '��ʾ Tickets',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '�����ʼ� "<OTRS_TICKET>" ���ϲ��� "<OTRS_MERGE_TO_TICKET>" !',
        'Ticket %s: first response time is over (%s)!' => 'Ticket %s: ��һ��Ӧʱ���Ѻ�ʱ(%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Ticket %s: ��һ��Ӧʱ�佫��ʱ(%s)!',
        'Ticket %s: update time is over (%s)!' => 'Ticket %s: ����ʱ���Ѻ�ʱ(%s)!',
        'Ticket %s: update time will be over in %s!' => 'Ticket %s: ����ʱ�佫��ʱ(%s)!',
        'Ticket %s: solution time is over (%s)!' => 'Ticket %s: �������Ѻ�ʱ(%s)!',
        'Ticket %s: solution time will be over in %s!' => '����������ʱ(%s)!',
        'There are more escalated tickets!' => '�и���������tickets',
        'New ticket notification' => '�� Ticket ֪ͨ',
        'Send me a notification if there is a new ticket in "My Queues".' => '����ҵĶ��������µ� Ticket����֪ͨ��.',
        'Follow up notification' => '����֪ͨ',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => '����ͻ������� Ticket �ظ����������Ǹ� Ticket ��������.',
        'Ticket lock timeout notification' => 'Ticket ������ʱ֪ͨ ',
        'Send me a notification if a ticket is unlocked by the system.' => '��� Ticket ��ϵͳ��������֪ͨ��.',
        'Move notification' => '�ƶ�֪ͨ',
        'Send me a notification if a ticket is moved into one of "My Queues".' => '����� Ticket ��ת���ҵĶ��У���֪ͨ��.',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '������ö��У���������ʼ����ü��������õ��ö��е�״̬֪ͨ.',
        'Custom Queue' => '�ͻ�����',
        'QueueView refresh time' => '������ͼˢ��ʱ��',
        'Screen after new ticket' => '������ Ticket �����ͼ',
        'Select your screen after creating a new ticket.' => 'ѡ���������� Ticket ������ʾ����ͼ.',
        'Closed Tickets' => '�ر� Tickets',
        'Show closed tickets.' => '��ʾ�ѹر� Tickets.',
        'Max. shown Tickets a page in QueueView.' => '������ͼÿҳ��ʾ Ticket ��.',
        'Watch notification' => '��ע֪ͨ',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '��������ע��ticket�����ticket��ӵ����һ��������Ҳ��һ��֪ͨ',
        'Out Of Office' => '���ڰ칫��',
        'Select your out of office time.' => 'ѡ���㲻�ڰ칫�ҵ�ʱ��',
        'CompanyTickets' => '��˾Tickets',
        'MyTickets' => '�ҵ� Tickets',
        'New Ticket' => '�µ� Ticket',
        'Create new Ticket' => '�����µ� Ticket',
        'Customer called' => '�ͻ��µ�',
        'phone call' => '�绰����',
        'Reminder Reached' => '�����Ѵ�',
        'Reminder Tickets' => '���ѵ� Ticket',
        'Escalated Tickets' => '������Ticket',
        'New Tickets' => '�µ�Ticket',
        'Open Tickets / Need to be answered' => '�򿪵�Tickets/��Ҫ�ش�',
        'Tickets which need to be answered!' => '��Ҫ�ش�� Ticket',
        'All new tickets!' => '�����µ�tickets',
        'All tickets which are escalated!' => '����������tickets',
        'All tickets where the reminder date has reached!' => '�����ѵ��������ڵ�Ticket',
        'Responses' => '�ظ�',
        'Responses <-> Queue' => '�ظ� <-> ����',
        'Auto Responses' => '�Զ��ظ�����',
        'Auto Responses <-> Queue' => '�Զ��ظ� <-> ����',
        'Attachments <-> Responses' => '���� <-> �ظ�',
        'History::Move' => 'Ticket �Ƶ����� "%s" (%s) �Ӷ��� "%s" (%s).',
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => '���·��񼶱�Э�� to %s (ID=%s).',
        'History::NewTicket' => 'New ticket [%s] created (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'FollowUp for [%s]. %s',
        'History::SendAutoReject' => '�Զ��ܾ����͸� "%s".',
        'History::SendAutoReply' => '�Զ��ظ����͸� "%s".',
        'History::SendAutoFollowUp' => '�Զ����ٷ��͸� "%s".',
        'History::Forward' => 'ת���� "%s".',
        'History::Bounce' => '���˵� "%s".',
        'History::SendAnswer' => '�ż����͸� "%s".',
        'History::SendAgentNotification' => '"%s"-Benachrichtigung versand an "%s".',
        'History::SendCustomerNotification' => '֪ͨ���͸� "%s".',
        'History::EmailAgent' => '���ʼ����ͻ�.',
        'History::EmailCustomer' => 'Add mail. %s',
        'History::PhoneCallAgent' => 'Called customer',
        'History::PhoneCallCustomer' => '�ͻ��Ѵ���绰',
        'History::AddNote' => '��ע�� (%s)',
        'History::Lock' => 'Ticket ����.',
        'History::Unlock' => 'Ticket ����.',
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
        'History::WebRequestCustomer' => '�ͻ�������������.',
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
        'Auto Response Management' => '�Զ��ظ�����',
        'Response' => '�ظ�',
        'Auto Response From' => '�Զ��ظ�����',
        'Note' => 'ע��',
        'Useable options' => '���ú����',
        'To get the first 20 character of the subject.' => '��ʾ�����ǰ20���ֽ�',
        'To get the first 5 lines of the email.' => '��ʾ���ʵ�ǰ����',
        'To get the realname of the sender (if given).' => '��ʾ�����˵���ʵ����',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => '��ǰ�ͻ���Ϣ�Ŀ�ѡ�� (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Ticketӵ���ߵĿ�ѡ�� e. g. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Ticket����ѡ�� (e. g. <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => '',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '��ѡ�� ticket ���� (����: <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',

        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => '',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '������˵�λ',
        'Search for' => '����',
        'Add Customer Company' => '���ӿ��˵�λ',
        'Add a new Customer Company.' => '���ӿ��˵���λ��',
        'List' => '�б�',
        'This values are required.' => '����Ŀ������д.',
        'This values are read only.' => '������ֻ��.',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => '������Ϣ׫д�Ĵ����Ѿ����ر�,�˳�.',
        'This window must be called from compose window' => '�ô��ڱ�����׫д���ڵ���',
        'Customer User Management' => '�ͻ��û�����',
        'Add Customer User' => '���ӿ���',
        'Source' => '����Դ',
        'Create' => '����',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '�ͻ��û�������һ���˺Ŵӿͻ���¼ҳ���¼ϵͳ.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '�ͻ��û� <-> �� ����',
        'Change %s settings' => '�޸� %s ����',
        'Select the user:group permissions.' => 'ѡ�� �û�:�� Ȩ��.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '�����ѡ�������û��Ȩ�� (�����޷����� Ticket)',
        'Permission' => 'Ȩ��',
        'ro' => 'ֻ��',
        'Read only access to the ticket in this group/queue.' => '�����е� Ticket ֻ��.',
        'rw' => '��д',
        'Full read and write access to the tickets in this group/queue.' => '�����е� Ticket ��/д.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => '�ͻ��ʺ� <-> �������',
        'CustomerUser' => '�ͻ��û�',
        'Service' => '����',
        'Edit default services.' => '�༭Ĭ�Ϸ���',
        'Search Result' => '�������',
        'Allocate services to CustomerUser' => '���������ͻ�',
        'Active' => '����',
        'Allocate CustomerUser to service' => 'ָ�ɿͻ�������',

        # Template: AdminEmail
        'Message sent to' => '��Ϣ���͸�',
        'A message should have a subject!' => '�ʼ������б���!',
        'Recipients' => '�ռ���',
        'Body' => '����',
        'Send' => '����',

        # Template: AdminGenericAgent
        'GenericAgent' => '�ƻ�����',
        'Job-List' => '�����б�',
        'Last run' => '�������',
        'Run Now!' => '��������!',
        'x' => 'x',
        'Save Job as?' => '���湤��Ϊ?',
        'Is Job Valid?' => '�����Ƿ���Ч?',
        'Is Job Valid' => '������Ч',
        'Schedule' => '����',
        'Currently this generic agent job will not run automatically.' => 'Ŀǰ��һͨ��Agent��ҵ�������Զ�����',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '�����Զ�ִ������ѡ��һ��ֵ���ӣ�ʱ�������',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '����ȫ������ (����: "Mar*in" ���� "Baue*")',
        '(e. g. 10*5155 or 105658*)' => '  ����: 10*5144 ���� 105658*',
        '(e. g. 234321)' => '����: 234321',
        'Customer User Login' => '�ͻ��û���¼��Ϣ',
        '(e. g. U5150)' => '����: U5150',
        'SLA' => '���񼶱�Э��(SLA)',
        'Agent' => '����֧����Ա',
        'Ticket Lock' => 'Ticket ��״̬',
        'TicketFreeFields' => 'Ticket ��������',
        'Create Times' => '����ʱ��',
        'No create time settings.' => 'û�д���ʱ������',
        'Ticket created' => '����ʱ��',
        'Ticket created between' => ' ����ʱ����',
        'Close Times' => '�ر�ʱ��',
        'No close time settings.' => 'û���趨�ر�ʱ��.',
        'Ticket closed' => '�رյ� Ticket',
        'Ticket closed between' => 'Ticket �ر�ʱ����',
        'Pending Times' => '����ʱ��',
        'No pending time settings.' => 'û�����ô���ʱ��',
        'Ticket pending time reached' => '����ʱ���ѵ���Ticket',
        'Ticket pending time reached between' => '�ڴ���ʱ���ڵ�Ticket ',
        'Escalation Times' => '����ʱ��',
        'No escalation time settings.' => 'û������ʱ������',
        'Ticket escalation time reached' => '�ѵ�����ʱ��Ticket',
        'Ticket escalation time reached between' => '������ʱ���ڵ�Ticket',
        'Escalation - First Response Time' => '������� - �״λظ���ʱ��',
        'Ticket first response time reached' => '�״λظ�ʱ���ѵ���Ticket',
        'Ticket first response time reached between' => '���״λظ�ʱ���ڵ�Ticket',
        'Escalation - Update Time' => '������� - ���µ�ʱ��',
        'Ticket update time reached' => '����ʱ���ѵ���Ticket',
        'Ticket update time reached between' => '�ڸ���ʱ���ڵ�Ticket',
        'Escalation - Solution Time' => '������� - �����ʱ��',
        'Ticket solution time reached' => '�������ʱ���ѵ���Ticket',
        'Ticket solution time reached between' => '�ڷ������ʱ�����ѵ���Ticket',
        'New Service' => '�µķ��񼶱�',
        'New SLA' => '�µķ��񼶱�Э��(SLA)',
        'New Priority' => '�����ȼ�',
        'New Queue' => '�¶���',
        'New State' => '��״̬',
        'New Agent' => '�¼���֧����Ա',
        'New Owner' => '��������',
        'New Customer' => '�¿ͻ�',
        'New Ticket Lock' => '�� Ticket ��',
        'New Type' => '�µ�����',
        'New Title' => '�µı���',
        'New TicketFreeFields' => '�µ� Ticket ��������',
        'Add Note' => '����ע��',
        'Time units' => 'ʱ�䵥Ԫ',
        'CMD' => '����',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '��ִ���������, ��һ�������� Ticket ��ţ��ڶ��������� Ticket �ı�ʶ��.',
        'Delete tickets' => 'ɾ�� Tickets',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => '����! �� Ticket ��������ݿ�ɾ�����޷��ָ�!',
        'Send Notification' => '����֪ͨ',
        'Param 1' => '���� 1',
        'Param 2' => '���� 2',
        'Param 3' => '���� 3',
        'Param 4' => '���� 4',
        'Param 5' => '���� 5',
        'Param 6' => '���� 6',
        'Send agent/customer notifications on changes' => '���ʹ���/�ͻ�֪ͨ���',
        'Save' => '����',
        '%s Tickets affected! Do you really want to use this job?' => '%s Tickets �ܵ�Ӱ��! ��ȷ��Ҫʹ������ƻ�����?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '���棺��������\'����\'�������ʱ����SysConfig������Ӧ�ı仯֮ǰ���㽫�����������ס����������������������SQL���������Ļص�\'admin\'',
        'Group Management' => '�����',
        'Add Group' => '�����µ���',
        'Add a new Group.' => '����һ������',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Admin ����Խ���ϵͳ��������, Stats ����Խ���ͳ�ƹ�����',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => '�����µ��������Ʋ�ͬ�Ĵ�ȡȨ��',
        'It\'s useful for ASP solutions.' => '����һ����Ч��Ӧ�÷����ṩ��(ASP)�������.',

        # Template: AdminLog
        'System Log' => 'ϵͳ��־',
        'Time' => 'ʱ��',

        # Template: AdminMailAccount
        'Mail Account Management' => '�ʼ��ʺŹ���',
        'Host' => '����',
        'Trusted' => '�Ƿ�����',
        'Dispatching' => '����',
        'All incoming emails with one account will be dispatched in the selected queue!' => '��������һ���ʼ��˺ŵ��ʼ����ᱻ�ַ�����ѡ����!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '��������ʻ���ֵ�������ģ����е�X-OTRS���⵽��ʱ�䣨���ȣ� ... ������ʹ�ã���������������ʹ��',

        # Template: AdminNavigationBar
        'Users' => '�û�',
        'Groups' => '��',
        'Misc' => '�ۺ�',

        # Template: AdminNotificationEventForm
        'Notification Management' => '֪ͨ����',
        'Add Notification' => '����֪ͨ',
        'Add a new Notification.' => '����һ��֪ͨ.',
        'Name is required!' => '��Ҫ����!',
        'Event is required!' => '��Ҫ�¼�',
        'A message should have a body!' => '�ʼ������������!',
        'Recipient' => '�ռ���',
        'Group based' => '�������',
        'Agent based' => '���ڼ���֧�ִ����',
        'Email based' => '���ڵ��ʵ�',
        'Article Type' => 'Article��� ',
        'Only for ArticleCreate Event.' => '�������� ArticleCreate �¼�',
        'Subject match' => '����ƥ��',
        'Body match' => '����ƥ��',
        'Notifications are sent to an agent or a customer.' => '֪ͨ�����͵�����֧����Ա���߿ͻ�.',
        'To get the first 20 character of the subject (of the latest agent article).' => '��ȡ������Ա���ʼ������ǰ 20 ���ַ�.',
        'To get the first 5 lines of the body (of the latest agent article).' => '��ȡ������Ա���ʼ���������ǰ 5 ��.',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => 'ȡ���ż������� (����: <OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).',
        'To get the first 20 character of the subject (of the latest customer article).' => '��ȡ�ͻ������ʼ������ǰ 20 ���ַ�.',
        'To get the first 5 lines of the body (of the latest customer article).' => '��ȡ���������ʼ���������ǰ 5 ��.',

        # Template: AdminNotificationForm
        'Notification' => 'ϵͳ֪ͨ',

        # Template: AdminPackageManager
        'Package Manager' => '���������',
        'Uninstall' => 'ж��',
        'Version' => '�汾',
        'Do you really want to uninstall this package?' => '�Ƿ�ȷ��ж�ظ������?',
        'Reinstall' => '���°�װ',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '���Ƿ�׼�������°�װ��Щ����� (�����ֹ����ý��᲻��)?',
        'Continue' => '����',
        'Install' => '��װ',
        'Package' => '�����',
        'Online Repository' => '����֪ʶ��',
        'Vendor' => '�ṩ��',
        'Module documentation' => 'ģ���ĵ�',
        'Upgrade' => '����',
        'Local Repository' => '����֪ʶ��',
        'Status' => '״̬',
        'Overview' => '�ſ�',
        'Download' => '����',
        'Rebuild' => '���¹���',
        'ChangeLog' => '�ı��¼',
        'Date' => '����',
        'Filelist' => '�ļ��嵥',
        'Download file from package!' => '�����������������ļ�',
        'Required' => '�����',
        'PrimaryKey' => '�ؼ���Key',
        'AutoIncrement' => '�Զ�����',
        'SQL' => 'SQL',
        'Diff' => '�Ƚ�',

        # Template: AdminPerformanceLog
        'Performance Log' => 'ϵͳ������',
        'This feature is enabled!' => '�ù���������',
        'Just use this feature if you want to log each request.' => '���������ϸ��¼ÿ������, ������ʹ�øù���.',
        'Activating this feature might affect your system performance!' => '�����ù��ܿ���Ӱ������ϵͳ����',
        'Disable it here!' => '�رոù���',
        'This feature is disabled!' => '�ù����ѹر�',
        'Enable it here!' => '�򿪸ù���',
        'Logfile too large!' => '��־�ļ�����',
        'Logfile too large, you need to reset it!' => '��־�ļ�����, ����Ҫ������',
        'Range' => '��Χ',
        'Interface' => '����',
        'Requests' => '����',
        'Min Response' => '��С��Ӧ',
        'Max Response' => '����Ӧ',
        'Average Response' => 'ƽ����Ӧ',
        'Period' => '����',
        'Min' => '��С',
        'Max' => '���',
        'Average' => 'ƽ��',

        # Template: AdminPGPForm
        'PGP Management' => 'PGP ����',
        'Result' => '���',
        'Identifier' => '��ʶ��',
        'Bit' => 'λ',
        'Key' => '�ܳ�',
        'Fingerprint' => 'ָӡ',
        'Expires' => '����',
        'In this way you can directly edit the keyring configured in SysConfig.' => '���ַ�ʽ��������ֱ�ӱ༭��SysConfig���õļ�',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => '�ʼ����˹���',
        'Filtername' => '����������',
        'Stop after match' => '',
        'Match' => 'ƥ��',
        'Value' => 'ֵ',
        'Set' => '����',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '���������� X-Headers ���������ˣ�����ʹ����������ʽ.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '��������ƥ��email ��ַ�� ��ʹ��EMAILADDRESS:info@example.com in From, To or Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '�������RegExp����Ҳ��ʹ��ƥ��ֵin () as [***] in \'Set\'',

        # Template: AdminPriority
        'Priority Management' => '����Ȩ����',
        'Add Priority' => '�������Ȩ',
        'Add a new Priority.' => '����һ���µ�����Ȩ',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => '���� <-> �Զ��ظ�����',
        'settings' => '����',

        # Template: AdminQueueForm
        'Queue Management' => '���й���',
        'Sub-Queue of' => '�Ӷ���',
        'Unlock timeout' => '�Զ�������ʱ����',
        '0 = no unlock' => '0 = ���Զ�����  ',
        'Only business hours are counted.' => '�����ϰ�ʱ�����',
        '0 = no escalation' => '0 = ����ʱ  ',
        'Notify by' => '����֪ͨ',
        'Follow up Option' => '����ѡ��',
        'Ticket lock after a follow up' => '����ȷ���Ժ�Ticket �����Զ�����',
        'Systemaddress' => 'ϵͳ�ʼ���ַ',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '�������֧����Ա������ Ticket,������һ����ʱ����û�лظ����� Ticket ���ᱻ�Զ��������������еļ���֧����Ա����.',
        'Escalation time' => '��ʱ��ʱ��',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => '�ö���ֻ��ʾ�涨ʱ����û�б������ Ticket',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '��� Ticket �Ѿ����ڹر�״̬�����ͻ��ͷ�����һ������ Ticket����ô��� Ticket ���ᱻֱ�Ӽ������������߱�����Ϊԭ��������',
        'Will be the sender address of this queue for email answers.' => '�ظ��ʼ����õķ����ߵ�ַ',
        'The salutation for email answers.' => '�ظ��ʼ����ó�ν.',
        'The signature for email answers.' => '�ظ��ʼ�����ǩ��.',
        'Customer Move Notify' => 'Ticket �ƶ��ͻ�֪ͨ',
        'OTRS sends an notification email to the customer if the ticket is moved.' => '��� Ticket ���ƶ���ϵͳ���ᷢ��һ��֪ͨ�ʼ����ͻ�',
        'Customer State Notify' => 'Ticket ״̬�ͻ�֪ͨ',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => '��� Ticket ״̬�ı䣬ϵͳ���ᷢ��֪ͨ�ʼ����ͻ�',
        'Customer Owner Notify' => '�ͻ�������ͨ��',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => '��� Ticket �����߸ı䣬ϵͳ���ᷢ��֪ͨ�ʼ����ͻ�.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => '�ظ� <-> ���й���',

        # Template: AdminQueueResponsesForm
        'Answer' => '�ظ�',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => '�ظ� <-> ��������',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => '�ظ����ݹ���',
        'A response is default text to write faster answer (with default text) to customers.' => 'Ϊ�˿��ٻظ����ظ����ݶ�����ÿ���ظ����ظ�������.',
        'Don\'t forget to add a new response a queue!' => '��Ҫ��������һ���µĻظ����ݵ�����!',
        'The current ticket state is' => '��ǰ Ticket ״̬��',
        'Your email address is new' => '�����ʼ���ַ���µ�',

        # Template: AdminRoleForm
        'Role Management' => '��ɫ����',
        'Add Role' => '���ӽ�ɫ',
        'Add a new Role.' => '����һ����ɫ',
        'Create a role and put groups in it. Then add the role to the users.' => '����һ����ɫ����������ɫ,Ȼ�󽫽�ɫ�����û�.',
        'It\'s useful for a lot of users and groups.' => '���д������û������ʱ�򣬽�ɫ�ǳ��ʺ�.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => '��ɫ <-> �����',
        'move_into' => '�ƶ���',
        'Permissions to move tickets into this group/queue.' => '�����ƶ� Tickets ������/����.',
        'create' => '����',
        'Permissions to create tickets in this group/queue.' => '�ڸ���/�����д��� Tickets ��Ȩ��.',
        'owner' => '������',
        'Permissions to change the ticket owner in this group/queue.' => '�ڸ���/�������޸� Tickets �����ߵ�Ȩ��.',
        'priority' => '���ȼ�',
        'Permissions to change the ticket priority in this group/queue.' => '�ڸ���/�������޸� Tickets ���ȼ���Ȩ��.',

        # Template: AdminRoleGroupForm
        'Role' => '��ɫ',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => '��ɫ <-> �û�����',
        'Select the role:user relations.' => 'ѡ�� ��ɫ:�û� ����.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => '�ƺ������',
        'Add Salutation' => '���ӳƺ���',
        'Add a new Salutation.' => '����һ���µĳƺ���',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '��ȫģʽ��Ҫ����',
        'Secure mode will (normally) be set after the initial installation is completed.' => '�ڳ�ʼ��װ�����󣬰�ȫģʽͨ����������',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => 'Ϊ��������Web ���氲װ����ȫģʽ����disabled',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '�������ģʽû�б���������ͨ��ϵͳ������������Ϊ����OTRS�����Ѿ�����',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'SQL��ѯ����',
        'CSV' => '',
        'HTML' => '',
        'Select Box Result' => '��ѯ���',

        # Template: AdminService
        'Service Management' => '�������',
        'Add Service' => '���ӷ���',
        'Add a new Service.' => '����һ������',
        'Sub-Service of' => '�ӷ���������',

        # Template: AdminSession
        'Session Management' => '�Ự����',
        'Sessions' => '�Ự',
        'Uniq' => '��һ',
        'Kill all sessions' => '��ֹ���лỰ',
        'Session' => '�Ự',
        'Content' => '����',
        'kill session' => '��ֹ�Ự',

        # Template: AdminSignatureForm
        'Signature Management' => 'ǩ������',
        'Add Signature' => '����ǩ��',
        'Add a new Signature.' => '����һ��ǩ��',

        # Template: AdminSLA
        'SLA Management' => '���񼶱�Э��(SLA)����',
        'Add SLA' => '���ӷ��񼶱�Э��(SLA)',
        'Add a new SLA.' => '����һ�����񼶱�Э��(SLA).',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME ����',
        'Add Certificate' => '���֤��',
        'Add Private Key' => '���˽��',
        'Secret' => '����',
        'Hash' => 'Hash',
        'In this way you can directly edit the certification and private keys in file system.' => '�����ַ�ʽ������ֱ�ӱ༭֤���˽��',

        # Template: AdminStateForm
        'State Management' => '״̬����',
        'Add State' => '����״̬',
        'Add a new State.' => '����һ���µ�״̬',
        'State Type' => '״̬����',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => '��ͬʱ������ Kernel/Config.pm �е�ȱʡ״̬!',
        'See also' => '�μ�',

        # Template: AdminSysConfig
        'SysConfig' => 'ϵͳ����',
        'Group selection' => 'ѡ����',
        'Show' => '��ʾ',
        'Download Settings' => '��������',
        'Download all system config changes.' => '�������е�ϵͳ���ñ仯.',
        'Load Settings' => '��������',
        'Subgroup' => '����',
        'Elements' => 'Ԫ��',

        # Template: AdminSysConfigEdit
        'Config Options' => '����ѡ��',
        'Default' => 'ȱʡ',
        'New' => '��',
        'New Group' => '����',
        'Group Ro' => 'ֻ��Ȩ�޵���',
        'New Group Ro' => '�µ�ֻ��Ȩ�޵���',
        'NavBarName' => '����������',
        'NavBar' => '������',
        'Image' => 'ͼƬ',
        'Prio' => '���ȼ�',
        'Block' => '��',
        'AccessKey' => '��Կ',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'ϵͳ�ʼ���ַ����',
        'Add System Address' => '����ϵͳ�ʼ���ַ',
        'Add a new System Address.' => '����һ���µ�ϵͳ�ʼ���ַ.',
        'Realname' => '��ʵ����',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => '���з��͵����ռ��˵���Ϣ����ת����ѡ��Ķ���',

        # Template: AdminTypeForm
        'Type Management' => '���͹���',
        'Add Type' => '��������',
        'Add a new Type.' => '����һ���µ�����',

        # Template: AdminUserForm
        'User Management' => '��Ա����',
        'Add User' => '������Ա',
        'Add a new Agent.' => '����һ���µ���Ա',
        'Login as' => '��¼��',
        'Firstname' => '��',
        'Lastname' => '��',
        'Start' => '��ʼ',
        'End' => '����',
        'User will be needed to handle tickets.' => '��Ҫ�û������� Tickets.',
        'Don\'t forget to add a new user to groups and/or roles!' => '��Ҫ��������һ���û�����ͽ�ɫ!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => '�û� <-> �����',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => '��ַ��',
        'Return to the compose screen' => '�ص�׫дҳ��',
        'Discard all changes and return to the compose screen' => '���������޸�,�ص�׫дҳ��',

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
        'Please update now.' => '�����',
        'Release Note' => '�汾����ע��',
        'Level' => '����',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '',

        # Template: AgentDashboardTicketGeneric

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline

        # Template: AgentInfo
        'Info' => '����',

        # Template: AgentLinkObject
        'Link Object: %s' => '���Ӷ���: %s',
        'Object' => '����',
        'Link Object' => '���Ӷ���',
        'with' => '��',
        'Select' => 'ѡ��',
        'Unlink Object: %s' => 'δ���Ӷ��� %s',

        # Template: AgentLookup
        'Lookup' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'ƴд���',
        'spelling error(s)' => 'ƴд����',
        'or' => '����',
        'Apply these changes' => 'Ӧ����Щ�ı�',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => '���Ƿ�ȷ��ɾ���ö���?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'ѡ�����Ʋ�����ʹͳ��������',
        'Fixed' => '����',
        'Please select only one element or turn off the button \'Fixed\'.' => '��ֻѡ��һ��Ԫ�ػ�رձ�ѡ���\'Fixed\'��ť',
        'Absolut Period' => '��������',
        'Between' => '',
        'Relative Period' => '�������',
        'The last' => '',
        'Finish' => '',
        'Here you can make restrictions to your stat.' => '������Ϊ����ͳ���ƶ����Ʋ���',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => '�����ɾ�����ڡ��̶�����ѡ�����ɸ�ͳ�Ƶļ���֧�ִ�����Ըı���ӦҪ�ص�����',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => '���빲ͬ�淶',
        'Permissions' => '����',
        'Format' => '��ʽ',
        'Graphsize' => 'ͼ�λ�',
        'Sum rows' => '�ܺ���',
        'Sum columns' => '�ܺ���',
        'Cache' => '����',
        'Required Field' => '�����ֶ�',
        'Selection needed' => 'ѡ����Ҫ',
        'Explanation' => '����',
        'In this form you can select the basic specifications.' => '��������ʽ��������ѡ������淶',
        'Attribute' => '����',
        'Title of the stat.' => 'ͳ�Ƶı���',
        'Here you can insert a description of the stat.' => '�����Բ���ͳ�Ƶ�����',
        'Dynamic-Object' => '��̬����',
        'Here you can select the dynamic object you want to use.' => '������ѡ������Ҫʹ�õĶ�̬����',
        '(Note: It depends on your installation how many dynamic objects you can use)' => 'ע����ȡ�������İ�װ���ٶ�̬�������ʹ��',
        'Static-File' => '��̬�ļ�',
        'For very complex stats it is possible to include a hardcoded file.' => '���ڷǳ����ӵ�ͳ���п��ܰ���һ��Ӳ�����ļ�',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => '���һ���µ�Ӳ�����ļ����ڣ��ɴ����Խ���ʾ��������ѡ������һ��',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Ȩ�����á�������ѡ��һ���������壬��ͬ�ļ���֧�ִ����ɿ��������õ�ͳ��',
        'Multiple selection of the output format.' => '�����ʽ�Ķ���ѡ��',
        'If you use a graph as output format you have to select at least one graph size.' => '�����ʹ�õ���ͼ�ε������ʽ���������ѡ��һ��ͼ�εĴ�С',
        'If you need the sum of every row select yes' => '����Ҫÿ�е��ܺ�ѡ�� yes��',
        'If you need the sum of every column select yes.' => '����Ҫÿ�е��ܺ�ѡ��yes��',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '�������ͳ�����Ͽ��Ի���,�⽫�ӿ���һͳ�Ƶ�չʾ.',
        '(Note: Useful for big databases and low performance server)' => 'ע�������ڴ������ݿ�͵����ܵķ�����',
        'With an invalid stat it isn\'t feasible to generate a stat.' => '����Ч��ͳ�Ʋ�������ͳ��',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '���Ƿǳ����õģ�����㲻�����˵õ�ͳ�ƵĽ����ͳ�ƽ����������',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'ѡ���ֵϵ�е�Ҫ��',
        'Scale' => '�߶�',
        'minimal' => '��С��',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => '���ס����ȶ��ļ�ֵϵ��Ҫ����X��ĳ߶ȣ���X -��=>���£� ValueSeries =>�꣩ ',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '����������Զ���һϵ�е�ֵ�����п���ѡ��һ��������Ԫ�ء�Ȼ��������ѡ��Ԫ�ص����ԡ�ÿ�����Խ���ʾΪ��һ��ֵ���������ѡ���κ�����, ��ô��������һ��ͳ�Ƶ�ʱ������Ԫ�ص����Խ���ʹ�á�����һ���µ����Ա����µ��ϴ�������',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'ѡ������x���Ԫ��',
        'maximal period' => '�������',
        'minimal scale' => '��С�߶�',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '����������Զ���x�ᡣ������ѡ���һ������ͨ����ѡ��ť�������û��ѡ������Ԫ�ص����Խ���ʹ�õ�������һ��ͳ�Ƶ�ʱ�򡣲���һ���µ����Ա����µ��ϴ�������',

        # Template: AgentStatsImport
        'Import' => '����',
        'File is not a Stats config' => '�ļ�����һ��ͳ������',
        'No File selected' => 'û���ļ���ѡ��',

        # Template: AgentStatsOverview
        'Results' => '���',
        'Total hits' => '�����',
        'Page' => 'ҳ',

        # Template: AgentStatsPrint
        'Print' => '��ӡ',
        'No Element selected.' => 'û��Ԫ�ر�ѡ��',

        # Template: AgentStatsView
        'Export Config' => '��������',
        'Information about the Stat' => '����ͳ�Ƶ���Ϣ',
        'Exchange Axis' => 'ת����',
        'Configurable params of static stat' => '��̬ͳ�Ƶ����ò���',
        'No element selected.' => 'û�б�ѡ����',
        'maximal period from' => '������ڱ�',
        'to' => '��',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'ͨ�������ѡ���ֶΣ������԰���������������ͳ�ơ��������޸ı༭��Щͳ��Ҫ��������ͳ�����Ϲ���Ա�����á�',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => '�ʼ��������ռ���!',
        'You need a email address (e. g. customer@example.com) in To:!' => '�ռ�����Ϣ�������ʼ���ַ(���磺customer@example.com)',
        'Bounce ticket' => '���� Ticket ',
        'Ticket locked!' => 'Ticket ������!',
        'Ticket unlock!' => '���� Ticket!',
        'Bounce to' => '���˵� ',
        'Next ticket state' => 'Tickets ״̬',
        'Inform sender' => '֪ͨ������',
        'Send mail!' => '����!',

        # Template: AgentTicketBulk
        'You need to account time!' => '����Ҫ��¼ʱ��',
        'Ticket Bulk Action' => 'Ticket ��������',
        'Spell Check' => 'ƴд���',
        'Note type' => 'ע������',
        'Next state' => 'Ticket ״̬',
        'Pending date' => '����������',
        'Merge to' => '�ϲ���',
        'Merge to oldest' => '�ϲ������ϵ�',
        'Link together' => '�ϲ���һ��',
        'Link to Parent' => '�ϲ�����һ��',
        'Unlock Tickets' => '���� Tickets',

        # Template: AgentTicketClose
        'Ticket Type is required!' => 'Ticket �������Ǳ����!',
        'A required field is:' => '������ֶ���',
        'Close ticket' => '�ر� Ticket',
        'Previous Owner' => 'ǰһ��������',
        'Inform Agent' => '֪ͨ����֧����Ա',
        'Optional' => 'ѡ��',
        'Inform involved Agents' => '֪ͨ��ؼ���֧����Ա',
        'Attach' => '����',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => '��Ϣ���뾭��ƴд���!',
        'Compose answer for ticket' => '׫д��,Ticket ���',
        'Pending Date' => '����ȴ�״̬����',
        'for pending* states' => '��Եȴ�״̬',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => '�޸� Tickets �����ͻ�',
        'Set customer user and customer id of a ticket' => '���� Ticket �����ͻ��û�',
        'Customer User' => '�ͻ��û�',
        'Search Customer' => '�����ͻ�',
        'Customer Data' => '�ͻ�����',
        'Customer history' => '�ͻ���ʷ���',
        'All customer tickets.' => '�ÿͻ����� Tickets ��¼.',

        # Template: AgentTicketEmail
        'Compose Email' => '׫д Email',
        'new ticket' => '�½� Ticket',
        'Refresh' => 'ˢ��',
        'Clear To' => '���',
        'All Agents' => '���м���֧����Ա',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => '��������',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => '�޸� Ticket ������Ϣ',

        # Template: AgentTicketHistory
        'History of' => '��ʷ',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => '����Ҫʹ��һ�� Ticket ���!',
        'Ticket Merge' => 'Ticket �ϲ�',

        # Template: AgentTicketMove
        'Move Ticket' => '�ƶ� Ticket',

        # Template: AgentTicketNote
        'Add note to ticket' => '����ע�⵽ Ticket',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => '�״α���ʱ��',
        'Service Time' => '����ʱ��',
        'Update Time' => '����ʱ��',
        'Solution Time' => '���ʱ��',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => '��������Ҫѡ��һ�� Ticket!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => '������',
        'Change search options' => '�޸�����ѡ��',
        'Tickets' => '',
        'of' => '',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => '׫д��',
        'Contact customer' => '��ϵ�ͻ�',
        'Change queue' => '�ı����',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => '��������',
        'up' => '��',
        'sort downward' => '��������',
        'down' => '��',
        'Escalation in' => '��ʱ',
        'Locked' => '����״̬',

        # Template: AgentTicketOwner
        'Change owner of ticket' => '�޸� Ticket ������',

        # Template: AgentTicketPending
        'Set Pending' => '���ô�����״̬',

        # Template: AgentTicketPhone
        'Phone call' => '�绰',
        'Clear From' => '����',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => '���ı�',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Ticket��Ϣ',
        'Accounted time' => '����ʱ��',
        'Linked-Object' => '�����Ӷ���',
        'by' => '��',

        # Template: AgentTicketPriority
        'Change priority of ticket' => '���� Ticket ���ȼ�',

        # Template: AgentTicketQueue
        'Tickets shown' => '��ʾ Ticket',
        'Tickets available' => '���� Ticket',
        'All tickets' => '����Ticket',
        'Queues' => '����',
        'Ticket escalation!' => 'Ticket ��ʱ����!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '���� Ticket �ĸ�����',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Ticket ����',
        'Profile' => '����Լ������',
        'Search-Template' => '����ģ��',
        'TicketFreeText' => 'Ticket ������Ϣ',
        'Created in Queue' => '�ڶ����ｨ��',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '�ı�ʱ��',
        'No change time settings.' => '���ı�ʱ������',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => '���������ʾΪ',
        'Save Search-Profile as Template?' => '��������������Ϊģ��',
        'Yes, save it with name' => '��, ����Ϊ����',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'ȫ��',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => 'չ��',
        'Collapse View' => '�۵�',
        'Split' => '�ֽ�',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => 'Article ��������',
        'Save filter settings as default' => '�����������Ϊȱʡֵ',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => '׷��',

        # Template: CustomerFooter
        'Powered by' => '������',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => '��¼',
        'Lost your password?' => '��������?',
        'Request new password' => '����������',
        'Create Account' => '�����ʻ�',

        # Template: CustomerNavigationBar
        'Welcome %s' => '��ӭ %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'ʱ��',
        'No time settings.' => '��ʱ��Լ��.',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => '������ﱨ��һ�� Bug!',

        # Template: Footer
        'Top of Page' => 'ҳ�涥��',

        # Template: FooterSmall

        # Template: Header
        'Home' => '��ҳ',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'WEB ��װ��',
        'Welcome to %s' => '��ӭʹ�� %s',
        'Accept license' => 'ͬ�����',
        'Don\'t accept license' => '��ͬ��',
        'Admin-User' => '����Ա',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '����������ݿ������� root ����, ������������, ����, �뱣���հ�. ���ڰ�ȫ����, ���ǽ�����Ϊ root ����һ������, ������Ϣ��ο����ݿ�����ĵ�.',
        'Admin-Password' => '����Ա����',
        'Database-User' => '���ݿ��û�����',
        'default \'hot\'' => 'Ĭ������ \'hot\'',
        'DB connect host' => '������������',
        'Database' => '���ݿ�',
        'Default Charset' => 'ȱʡ�ַ���',
        'utf8' => 'UTF-8',
        'false' => '��',
        'SystemID' => 'ϵͳID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(ϵͳ��ʶ��. Ticket ��ź� http �Ự���������ʶ����ͷ)',
        'System FQDN' => 'ϵͳ����',
        '(Full qualified domain name of your system)' => '(ϵͳ����)',
        'AdminEmail' => '����Ա��ַ',
        '(Email of the system admin)' => '(ϵͳ����Ա�ʼ���ַ)',
        'Organization' => '��֯',
        'Log' => '��־',
        'LogModule' => '��־ģ��',
        '(Used log backend)' => 'ʹ����־���',
        'Logfile' => '��־�ļ�',
        '(Logfile just needed for File-LogModule!)' => '(ֻ�м��� File-LogModule ʱ����Ҫ Logfile!)',
        'Webfrontend' => 'Web ǰ��',
        'Use utf-8 it your database supports it!' => '����������ݿ�֧�֣�ʹ��UTF-8�ַ�����!',
        'Default Language' => 'ȱʡ����',
        '(Used default language)' => '(ʹ��ȱʡ����)',
        'CheckMXRecord' => '��� MX ��¼',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => 'ͨ��׫д��������ù��ĵ����ʼ���ַ��MX��¼����OTRS�����ڲ��Ž���ĵ���������벻Ҫʹ��CheckMXRecord!',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Ϊ���ܹ�ʹ��OTRS, ��������root�����������������������(Terminal/Shell).',
        'Restart your webserver' => '�������������� webserver.',
        'After doing so your OTRS is up and running.' => '��ɺ����������� OTRS ϵͳ��.',
        'Start page' => '��ʼҳ��',
        'Your OTRS Team' => '���� OTRS С��.',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => '��Ȩ��',

        # Template: Notify
        'Important' => '��Ҫ',

        # Template: PrintFooter
        'URL' => '��ַ',

        # Template: PrintHeader
        'printed by' => '��ӡ��',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: Test
        'OTRS Test Page' => 'OTRS ����ҳ',
        'Counter' => '������',

        # Template: Warning

        # Misc
        'Edit Article' => '�༭�ż�',
        'Create Database' => '�������ݿ�',
        'DB Host' => '���ݿ�����',
        'Ticket Number Generator' => 'Ticket ���������',
        'Create new Phone Ticket' => '�����µĵ绰 Ticket',
        'Symptom' => '֢״',
        'U' => '����',
        'Site' => 'վ��',
        'Customer history search (e. g. "ID342425").' => '�����ͻ���ʷ (���磺 "ID342425").',
        'Can not delete link with %s!' => '����ɾ�� %s ������',
        'for agent firstname' => '����֧����Ա ��',
        'Close!' => '�ر�!',
        'No means, send agent and customer notifications on changes.' => '���иı�ʱ������֪ͨ��������Ա��ͻ�.',
        'A web calendar' => 'Web ����',
        'to get the realname of the sender (if given)' => '�ʼ������˵���ʵ���� (�������)',
        'OTRS DB Name' => '���ݿ�����',
        'Notification (Customer)' => '֪ͨ(�ͻ�)',
        'Select Source (for add)' => 'ѡ������Դ(���ӹ���ʹ��)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '��ѡ�� ticket ���� (����: &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => '�Ӷ���',
        'Days' => '��',
        'Queue ID' => '���б��',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => '����ѡ�� (����:<OTRS_CONFIG_HttpType>)',
        'System History' => 'ϵͳ��ʷ',
        'customer realname' => '�ͻ���ʵ����',
        'Pending messages' => '��Ϣת��ȴ�״̬',
        'for agent login' => '����֧����Ա ��¼��',
        'Keyword' => '�ؼ���',
        'Close type' => '�ر�����',
        'DB Admin User' => '���ݿ����Ա�û���',
        'for agent user id' => '����֧����Ա �û���',
        'Change user <-> group settings' => '�޸� �û� <-> �� ����',
        'Problem' => '����',
        'Escalation' => '����',
        '"}' => '',
        'Order' => '����',
        'next step' => '��һ��',
        'Follow up' => '����',
        'Customer history search' => '�ͻ���ʷ����',
        'PostMaster Mail Account' => '�ʼ��ʺŹ���',
        'Stat#' => 'ͳ�ƺ�',
        'Create new database' => '�����µ����ݿ�',
        'Go' => 'ִ��',
        'Keywords' => '�ؼ���',
        'Ticket Escalation View' => '�����鿴 Ticket',
        'Today' => '����',
        'No * possible!' => '����ʹ��ͨ��� "*" !',
        'Load' => '����',
        'PostMaster Filter' => '�ʼ����ݹ���',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'ѡ��ǰ�û�˭��Ҫ������� (����: &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => '�������ߵ���Ϣ',
        'to get the first 5 lines of the email' => '�ʼ�����ǰ5��',
        'Sort by' => '����',
        'OTRS DB Password' => 'OTRS �û�����',
        'Last update' => '��������',
        'Tomorrow' => '����',
        'not rated' => '��������',
        'to get the first 20 character of the subject' => '�ʼ�����ǰ20���ַ�',
        'Select the customeruser:service relations.' => 'ѡ��ͻ��ͷ����ϵ.',
        'DB Admin Password' => '����ϵͳ����Ա����',
        'Drop Database' => 'ɾ�����ݿ�',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '����������Զ���x�ᡣ������ѡ���һ������ͨ����ѡ��ť��Ȼ�������ѡ���Ԫ���������������ϵ����ԡ��������ѡ���κ�����, ��ô��������һ��ͳ�Ƶ�ʱ������Ԫ�ص����Խ���ʹ�á�����һ���µ����Ա����µ��ϴ�������',
        'FileManager' => '�ļ�������',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => '��ǰ�ͻ��û���Ϣ (����: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => '����������',
        'Comment (internal)' => 'ע�� (�ڲ�)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '���õ� Ticket ��������Ϣ (����: &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '���õ��й� Ticket ��Ϣ (����: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(ʹ�� Ticket ��Ÿ�ʽ)',
        'Reminder' => '����',
        'OTRS DB connect host' => 'OTRS ���ݿ�����',
        'All Agent variables.' => '���еļ�����Ա����',
        ' (work units)' => '������Ԫ',
        'Next Week' => '����',
        'All Customer variables like defined in config option CustomerUser.' => '���пͻ���������������ѡ��CustomerUser�ж���',
        'for agent lastname' => '����֧����Ա ��',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => '������������Ϣ (����: <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => '��Ϣ����',
        'Parent-Object' => '������',
        'Of couse this feature will take some system performance it self!' => '��Ȼ, �ù��ܻ�ռ��һ����ϵͳ��Դ, ����ϵͳ�ĸ���!',
        'Your own Ticket' => '���Լ��� Ticket',
        'Detail' => 'ϸ��',
        'TicketZoom' => 'Ticket չ��',
        'Open Tickets' => '���� Tickets',
        'Don\'t forget to add a new user to groups!' => '��Ҫ���������µ��û�����!',
        'General Catalog' => '��Ŀ¼',
        'CreateTicket' => '���� Ticket',
        'You have to select two or more attributes from the select field!' => '��������ѡ�ֶ���ѡ���������������ϵ�����',
        'System Settings' => '���ݿ����� ',
        'Finished' => '���',
        'D' => '����',
        'All messages' => '������Ϣ',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '��ѡ�� ticket ���� (����: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Object already linked as %s.' => '���������ӵ� %s.',
        'A article should have a title!' => '���±����б���!',
        'Customer Users <-> Services' => '�ͻ��ʺ� <-> �������',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '����ѡ�� (����: &lt;OTRS_CONFIG_HttpType&gt;)',
        'All email addresses get excluded on replaying on composing and email.' => '���б�ȡ��׫д�ʼ����ܵ��ʼ���ַ',
        'A web mail client' => 'WebMail �ͻ���',
        'Compose Follow up' => '׫д���ٴ�',
        'WebMail' => 'WebMail',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Ticket ������ѡ�� (����: <OTRS_OWNER_UserFirstname>)',
        'DB Type' => '���ݿ�����',
        'kill all sessions' => '��ֹ���лỰ',
        'to get the from line of the email' => '�ʼ�����',
        'Solution' => '�������',
        'QueueView' => '������ͼ',
        'My Queue' => '�ҵĶ���',
        'Select Box' => 'ѡ�񷽿�',
        'New messages' => '����Ϣ',
        'Can not create link with %s!' => '����Ϊ %s ��������',
        'Linked as' => '������Ϊ',
        'modified' => '�޸���',
        'Delete old database' => 'ɾ�������ݿ�',
        'A web file manager' => 'Web �ļ�������',
        'Have a lot of fun!' => 'Have a lot of fun!',
        'send' => '����',
        'QuickSearch' => '��������',
        'Send no notifications' => '������֪ͨ',
        'Note Text' => 'ע��',
        'POP3 Account Management' => 'POP3 �ʻ�����',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
        'System State Management' => 'ϵͳ״̬����',
        'OTRS DB User' => 'OTRS ���ݿ��û���',
        'Mailbox' => '����',
        'PhoneView' => '�绰��ͼ',
        'maximal period form' => '������ڱ�',
        'Escaladed Tickets' => '',
        'Yes means, send no agent and customer notifications on changes.' => '���иı�ʱ������֪ͨ��������Ա��ͻ�.',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => '�����ʼ� ���: "<OTRS_TICKET>" ���˵� "<OTRS_BOUNCE_TO>" . ����ϵ���µ�ַ��ȡ��ϸ��Ϣ.',
        'Ticket Status View' => 'Ticket ״̬��ͼ',
        'Modified' => '�޸���',
        'Ticket selected for bulk action!' => '��ѡ�н������������� Tickets',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
    };
    # $$STOP$$
    return;
}

1;
