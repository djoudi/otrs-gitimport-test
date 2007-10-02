# --
# Kernel/Language/zh_CN.pm - provides za_CN language translation
# Copyright (C) 2005 zuowei <j2ee@hirain-sh.com>
# --
# $Id: zh_CN.pm,v 1.33 2007-10-02 10:45:42 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Language::zh_CN;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.33 $) [1];

sub Data {
    my ( $Self, %Param ) = @_;

    # $$START$$
    # Last translation file sync: Tue May 29 15:27:37 2007

    # possible charsets
    $Self->{Charset} = [ 'GBK', 'GB2312', ];

    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%Y.%M.%D %T';
    $Self->{DateFormatLong}      = ' %A %Y/%M/%D %T';
    $Self->{DateFormatShort}     = '%Y.%M.%D';
    $Self->{DateInputFormat}     = '%Y.%M.%D';
    $Self->{DateInputFormatLong} = '%Y.%M.%D - %T';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes'                 => '��',
        'No'                  => '��',
        'yes'                 => '��',
        'no'                  => 'δ����',
        'Off'                 => '��',
        'off'                 => '��',
        'On'                  => '��',
        'on'                  => '��',
        'top'                 => '����',
        'end'                 => '�ײ�',
        'Done'                => 'ȷ��',
        'Cancel'              => 'ȡ��',
        'Reset'               => '����',
        'last'                => '',
        'before'              => '����',
        'day'                 => '��',
        'days'                => '��',
        'day(s)'              => '��',
        'hour'                => 'Сʱ',
        'hours'               => 'Сʱ',
        'hour(s)'             => 'Сʱ',
        'minute'              => '����',
        'minutes'             => '����',
        'minute(s)'           => '����',
        'month'               => '��',
        'months'              => '��',
        'month(s)'            => '��',
        'week'                => '����',
        'week(s)'             => '����',
        'year'                => '��',
        'years'               => '��',
        'year(s)'             => '��',
        'second(s)'           => '',
        'seconds'             => '',
        'second'              => '',
        'wrote'               => 'д��',
        'Message'             => '��Ϣ',
        'Error'               => '����',
        'Bug Report'          => 'Bug ����',
        'Attention'           => 'ע��',
        'Warning'             => '����',
        'Module'              => 'ģ��',
        'Modulefile'          => 'ģ���ļ�',
        'Subfunction'         => '�ӹ���',
        'Line'                => '��',
        'Example'             => 'ʾ��',
        'Examples'            => 'ʾ��',
        'valid'               => '��Ч',
        'invalid'             => '��Ч',
        '* invalid'           => '',
        'invalid-temporarily' => '��ʱ��Ч',
        ' 2 minutes'          => ' 2 ����',
        ' 5 minutes'          => ' 5 ����',
        ' 7 minutes'          => ' 7 ����',
        '10 minutes'          => '10 ����',
        '15 minutes'          => '15 ����',
        'Mr.'                 => '����',
        'Mrs.'                => '����',
        'Next'                => '��һ��',
        'Back'                => '����',
        'Next...'             => '��һ��...',
        '...Back'             => '...����',
        '-none-'              => '-��-',
        'none'                => '��',
        'none!'               => '��!',
        'none - answered'     => '',
        'please do not edit!' => '��Ҫ�༭!',
        'AddLink'             => '��������',
        'Link'                => '����',
        'Linked'              => '������',
        'Link (Normal)'       => '���� (����)',
        'Link (Parent)'       => '���� (��)',
        'Link (Child)'        => '���� (��)',
        'Normal'              => '����',
        'Parent'              => '��',
        'Child'               => '��',
        'Hit'                 => '���',
        'Hits'                => '�����',
        'Text'                => '����',
        'Lite'                => '���',
        'User'                => '�û�',
        'Username'            => '�û�����',
        'Language'            => '����',
        'Languages'           => '����',
        'Password'            => '����',
        'Salutation'          => '��ν',
        'Signature'           => 'ǩ��',
        'Customer'            => '�ͻ�',
        'CustomerID'          => '�ͻ����',
        'CustomerIDs'         => '�ͻ����',
        'customer'            => '�ͻ�',
        'agent'               => '����֧����Ա',
        'system'              => 'ϵͳ',
        'Customer Info'       => '�ͻ���Ϣ',
        'Customer Company'    => '',
        'Company'             => '',
        'go!'                 => '��ʼ!',
        'go'                  => '��ʼ',
        'All'                 => 'ȫ��',
        'all'                 => 'ȫ��',
        'Sorry'               => '�Բ���',
        'update!'             => '����!',
        'update'              => '����',
        'Update'              => '����',
        'submit!'             => '�ύ!',
        'submit'              => '�ύ',
        'Submit'              => '�ύ',
        'change!'             => '�޸�!',
        'Change'              => '�޸�',
        'change'              => '�޸�',
        'click here'          => '�������',
        'Comment'             => 'ע��',
        'Valid'               => '��Ч',
        'Invalid Option!'     => '��Чѡ��!',
        'Invalid time!'       => '��Чʱ��!',
        'Invalid date!'       => '��Ч����!',
        'Name'                => '����',
        'Group'               => '����',
        'Description'         => '����',
        'description'         => '����',
        'Theme'               => '����',
        'Created'             => '����',
        'Created by'          => '������',
        'Changed'             => '���޸�',
        'Changed by'          => '�޸���',
        'Search'              => '����',
        'and'                 => '��',
        'between'             => '��',
        'Fulltext Search'     => 'ȫ������',
        'Data'                => '����',
        'Options'             => 'ѡ��',
        'Title'               => '����',
        'Item'                => '��Ŀ',
        'Delete'              => 'ɾ��',
        'Edit'                => '�༭',
        'View'                => '�鿴',
        'Number'              => '���',
        'System'              => 'ϵͳ',
        'Contact'             => '��ϵ��',
        'Contacts'            => '��ϵ��',
        'Export'              => '����',
        'Up'                  => '��',
        'Down'                => '��',
        'Add'                 => '����',
        'Category'            => 'Ŀ¼',
        'Viewer'              => '�鿴��',
        'New message'         => '����Ϣ',
        'New message!'        => '����Ϣ!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            '���Ȼظ��� Ticket��Ȼ��ص�����������ͼ!',
        'You got new message!'                             => '��������Ϣ!',
        'You have %s new message(s)!'                      => '���� %s ������Ϣ!',
        'You have %s reminder ticket(s)!'                  => '���� %s ������!',
        'The recommended charset for your language is %s!' => '�������������Ե��ַ��� %s!',
        'Passwords doesn\'t match! Please try it again!'   => '���벻����������!',
        'Password is already in use! Please use an other password!' =>
            '�����뱻ʹ�ã���ʹ����������!',
        'Password is already used! Please use an other password!' =>
            '�����뱻ʹ�ã���ʹ����������!',
        'You need to activate %s first to use it!'  => '%s ��ʹ��֮ǰ���ȼ���!',
        'No suggestions'                            => '�޽���',
        'Word'                                      => '��',
        'Ignore'                                    => '����',
        'replace with'                              => '�滻',
        'There is no account with that login name.' => '���û���û���ʻ���Ϣ.',
        'Login failed! Your username or password was entered incorrectly.' =>
            '��¼ʧ�ܣ������û��������벻��ȷ.',
        'Please contact your admin'                    => '����ϵϵͳ����Ա',
        'Logout successful. Thank you for using OTRS!' => '�ɹ�ע����ллʹ��!',
        'Invalid SessionID!'                           => '��Ч�ĻỰ��ʶ��!',
        'Feature not active!'                          => '��������δ����!',
        'Login is needed!'                             => '',
        'Password is needed!'                          => '��Ҫ����!',
        'License'                                      => '',
        'Take this Customer'                           => '',
        'Take this User'                               => '',
        'possible'                                     => '����',
        'reject'                                       => '�ܾ�',
        'reverse'                                      => '',
        'Facility'                                     => '���',
        'Timeover'                                     => '����',
        'Pending till'                                 => '�ȴ���',
        'Don\'t work with UserID 1 (System account)! Create new users!' =>
            '��Ҫʹ�� UserID 1 (ϵͳ�˺�)! �봴��һ���µ��û�!',
        'Dispatching by email To: field.'             => '�����ʼ���: ��.',
        'Dispatching by selected Queue.'              => '�����ʼ�����ѡ����.',
        'No entry found!'                             => '������!',
        'Session has timed out. Please log in again.' => '�Ự��ʱ�������µ�¼.',
        'No Permission!'                              => '��Ȩ��!',
        'To: (%s) replaced with database email!'      => 'To: (%s) �����ݿ��ʼ���ַ�����',
        'Cc: (%s) added database email!'              => 'Cc: (%s) �������ݿ��ʼ���ַ!',
        '(Click here to add)'                         => '(����˴�����)',
        'Preview'                                     => 'Ԥ��',
        'Package not correctly deployed! You should reinstall the Package again!' => '',
        'Added User "%s"'     => '�����û� "%s".',
        'Contract'            => '��ͬ',
        'Online Customer: %s' => '���߿ͻ�: %s',
        'Online Agent: %s'    => '���߼���֧����Ա��%s',
        'Calendar'            => '����',
        'File'                => '�ļ�',
        'Filename'            => '�ļ���',
        'Type'                => '����',
        'Size'                => '��С',
        'Upload'              => '����',
        'Directory'           => 'Ŀ¼',
        'Signed'              => '��ǩ��',
        'Sign'                => 'ǩ��',
        'Crypted'             => '�Ѽ���',
        'Crypt'               => '����',
        'Office'              => '',
        'Phone'               => '',
        'Fax'                 => '',
        'Mobile'              => '',
        'Zip'                 => '',
        'City'                => '',
        'Country'             => '',
        'installed'           => '',
        'uninstalled'         => '',
        'Security Note: You should activate %s because application is already running!' => '',
        'Unable to parse Online Repository index document!'                             => '',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!'
            => '',
        'No Packages or no new Packages in selected Online Repository!' => '',
        'printed at'                                                    => '',

        # Template: AAAMonth
        'Jan'       => 'һ��',
        'Feb'       => '����',
        'Mar'       => '����',
        'Apr'       => '����',
        'May'       => '����',
        'Jun'       => '����',
        'Jul'       => '����',
        'Aug'       => '����',
        'Sep'       => '����',
        'Oct'       => 'ʮ��',
        'Nov'       => 'ʮһ��',
        'Dec'       => 'ʮ����',
        'January'   => '',
        'February'  => '',
        'March'     => '',
        'April'     => '',
        'June'      => '',
        'July'      => '',
        'August'    => '',
        'September' => '',
        'October'   => '',
        'November'  => '',
        'December'  => '',

        # Template: AAANavBar
        'Admin-Area'                => '������',
        'Agent-Area'                => '����֧����Ա��',
        'Ticket-Area'               => 'Ticket��',
        'Logout'                    => 'ע��',
        'Agent Preferences'         => '����֧����Ա����',
        'Preferences'               => '����',
        'Agent Mailbox'             => '����֧����Ա����',
        'Stats'                     => 'ͳ��',
        'Stats-Area'                => 'ͳ����',
        'Admin'                     => '����',
        'Customer Users'            => '�ͻ��û�',
        'Customer Users <-> Groups' => '�ͻ��û� <-> ��',
        'Users <-> Groups'          => '�û� <-> ��',
        'Roles'                     => '��ɫ',
        'Roles <-> Users'           => '��ɫ <-> �û�',
        'Roles <-> Groups'          => '��ɫ <-> ��',
        'Salutations'               => '��ν',
        'Signatures'                => 'ǩ��',
        'Email Addresses'           => 'Email ��ַ',
        'Notifications'             => '֪ͨ',
        'Category Tree'             => 'Ŀ¼��',
        'Admin Notification'        => '����Ա֪ͨ',

        # Template: AAAPreferences
        'Preferences updated successfully!'        => '���ø��³ɹ�!',
        'Mail Management'                          => '�ʼ��������',
        'Frontend'                                 => 'ǰ�˽���',
        'Other Options'                            => '����ѡ��',
        'Change Password'                          => '�޸�����',
        'New password'                             => '������',
        'New password again'                       => '�ظ�������',
        'Select your QueueView refresh time.'      => '������ͼˢ��ʱ��.',
        'Select your frontend language.'           => '��������',
        'Select your frontend Charset.'            => '�����ַ���.',
        'Select your frontend Theme.'              => '��������.',
        'Select your frontend QueueView.'          => '������ͼ.',
        'Spelling Dictionary'                      => 'ƴд����ֵ�',
        'Select your default spelling dictionary.' => 'ȱʡƴд����ֵ�.',
        'Max. shown Tickets a page in Overview.'   => 'ÿһҳ��ʾ����� Tickets ��Ŀ.',
        'Can\'t update password, passwords doesn\'t match! Please try it again!' =>
            '�������β������޷����£�����������',
        'Can\'t update password, invalid characters!'     => '�޷��������룬������Ч�ַ�.',
        'Can\'t update password, need min. 8 characters!' => '�޷��������룬���볤������8λ.',
        'Can\'t update password, need 2 lower and 2 upper characters!' =>
            '�޷��������룬���ٰ���2����д�ַ���2��Сд�ַ�.',
        'Can\'t update password, need min. 1 digit!'      => '�޷��������룬���ٰ���1λ����',
        'Can\'t update password, need min. 2 characters!' => '�޷��������룬���ٰ���2����ĸ!',

        # Template: AAAStats
        'Stat'                                                             => '',
        'Please fill out the required fields!'                             => '',
        'Please select a file!'                                            => '',
        'Please select an object!'                                         => '',
        'Please select a graph size!'                                      => '',
        'Please select one element for the X-axis!'                        => '',
        'You have to select two or more attributes from the select field!' => '',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!'
            => '',
        'If you use a checkbox you have to select some attributes of the select field!' => '',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' =>
            '',
        'The selected end time is before the start time!'                            => '',
        'You have to select one or more attributes from the select field!'           => '',
        'The selected Date isn\'t valid!'                                            => '',
        'Please select only one or two elements via the checkbox!'                   => '',
        'If you use a time scale element you can only select one element!'           => '',
        'You have an error in your time selection!'                                  => '',
        'Your reporting time interval is too small, please use a larger time scale!' => '',
        'The selected start time is before the allowed start time!'                  => '',
        'The selected end time is after the allowed end time!'                       => '',
        'The selected time period is larger than the allowed time period!'           => '',
        'Common Specification'                                                       => '',
        'Xaxis'                                                                      => '',
        'Value Series'                                                               => '',
        'Restrictions'                                                               => '',
        'graph-lines'                                                                => '',
        'graph-bars'                                                                 => '',
        'graph-hbars'                                                                => '',
        'graph-points'                                                               => '',
        'graph-lines-points'                                                         => '',
        'graph-area'                                                                 => '',
        'graph-pie'                                                                  => '',
        'extended'                                                                   => '',
        'Agent/Owner'                                                                => '',
        'Created by Agent/Owner'                                                     => '',
        'Created Priority'                                                           => '',
        'Created State'                                                              => '',
        'Create Time'                                                                => '',
        'CustomerUserLogin'                                                          => '',
        'Close Time'                                                                 => '',

        # Template: AAATicket
        'Lock'               => '����',
        'Unlock'             => '����',
        'History'            => '��ʷ',
        'Zoom'               => '�ʼ�չ��',
        'Age'                => '��ʱ��',
        'Bounce'             => '����',
        'Forward'            => 'ת��',
        'From'               => '������',
        'To'                 => '�ռ���',
        'Cc'                 => '����',
        'Bcc'                => '����',
        'Subject'            => '����',
        'Move'               => '�ƶ�',
        'Queue'              => '����',
        'Priority'           => '���ȼ�',
        'State'              => '״̬',
        'Compose'            => '׫д',
        'Pending'            => '�ȴ�',
        'Owner'              => '������',
        'Owner Update'       => '�����߸���',
        'Responsible'        => '',
        'Responsible Update' => '',
        'Sender'             => '������',
        'Article'            => '��������ʽ',
        'Ticket'             => '',
        'Createtime'         => '����ʱ��',
        'plain'              => '���ı�',
        'Email'              => '�ʼ���ַ',
        'email'              => 'E-Mail',
        'Close'              => '�ر�',
        'Action'             => '����',
        'Attachment'         => '����',
        'Attachments'        => '����',
        'This message was written in a character set other than your own.' =>
            '����ʼ������ַ����뱾ϵͳ�ַ�������',
        'If it is not displayed correctly,'            => '�����ʾ����ȷ,',
        'This is a'                                    => '����һ��',
        'to open it in a new window.'                  => '���´����д�',
        'This is a HTML email. Click here to show it.' => '����һ��HTML��ʽ�ʼ������������ʾ.',
        'Free Fields'                                  => '������Ϣ',
        'Merge'                                        => '�ϲ�',
        'merged'                                       => '',
        'closed successful'                            => '�ɹ��ر�',
        'closed unsuccessful'                          => '�ر�ʧ��',
        'new'                                          => '�½�',
        'open'                                         => '����',
        'closed'                                       => '�ر�',
        'removed'                                      => 'ɾ��',
        'pending reminder'                             => '�ȴ�����',
        'pending auto'                                 => '',
        'pending auto close+'                          => '�ȴ��Զ��ر�+',
        'pending auto close-'                          => '�ȴ��Զ��ر�-',
        'email-external'                               => '�ⲿ E-Mail ',
        'email-internal'                               => '�ڲ� E-Mail ',
        'note-external'                                => '�ⲿע��',
        'note-internal'                                => '�ڲ�ע��',
        'note-report'                                  => 'ע�ⱨ��',
        'phone'                                        => '�绰',
        'sms'                                          => '����',
        'webrequest'                                   => 'Web����',
        'lock'                                         => '����',
        'unlock'                                       => '����',
        'very low'                                     => '�ǳ���',
        'low'                                          => '��',
        'normal'                                       => '����',
        'high'                                         => '��',
        'very high'                                    => '�ǳ���',
        '1 very low'                                   => '1 �ǳ���',
        '2 low'                                        => '2 ��',
        '3 normal'                                     => '3 ����',
        '4 high'                                       => '4 ��',
        '5 very high'                                  => '5 �ǳ���',
        'Ticket "%s" created!'                         => 'Ticket "%s" �Ѵ���!',
        'Ticket Number'                                => 'Ticket ���',
        'Ticket Object'                                => 'Ticket ����',
        'No such Ticket Number "%s"! Can\'t link it!'  => 'Ticket "%s" �����ڣ����ܴ������������!',
        'Don\'t show closed Tickets'                   => '����ʾ�ѹرյ� Tickets',
        'Show closed Tickets'                          => '��ʾ�ѹرյ� Tickets',
        'New Article'                                  => '������',
        'Email-Ticket'                                 => '�ʼ� Ticket',
        'Create new Email Ticket'                      => '�����µ��ʼ� Ticket',
        'Phone-Ticket'                                 => '�绰 Ticket',
        'Search Tickets'                               => '���� Tickets',
        'Edit Customer Users'                          => '�༭�ͻ��û�',
        'Bulk-Action'                                  => '��������',
        'Bulk Actions on Tickets'                      => '�������� Tickets',
        'Send Email and create a new Ticket'           => '���� Email ������һ���µ� Ticket',
        'Create new Email Ticket and send this out (Outbound)' => '',
        'Create new Phone Ticket (Inbound)'                    => '',
        'Overview of all open Tickets'                         => '���п��� Tickets �ſ�',
        'Locked Tickets'                                       => '������Ticket',
        'Watched Tickets'                                      => '',
        'Watched'                                              => '',
        'Subscribe'                                            => '',
        'Unsubscribe'                                          => '',
        'Lock it to work on it!'                               => '��������ʼ���� !',
        'Unlock to give it back to the queue!'                 => '�������ͻض���!',
        'Shows the ticket history!'                            => '��ʾ Ticket ��ʷ״��!',
        'Print this ticket!'                                   => '��ӡ Ticket !',
        'Change the ticket priority!'                          => '�޸� Ticket ���ȼ�',
        'Change the ticket free fields!'                       => '�޸� Ticket ������Ϣ',
        'Link this ticket to an other objects!'                => '���Ӹ� Ticket ����������!',
        'Change the ticket owner!'                             => '�޸� Ticket ������!',
        'Change the ticket customer!'                          => '�޸� Ticket �����ͻ�!',
        'Add a note to this ticket!'                           => '�� Ticket ����ע��!',
        'Merge this ticket!'                                   => '�ϲ��� Ticket!',
        'Set this ticket to pending!'                          => '���� Ticket ת��ȴ�״̬',
        'Close this ticket!'                                   => '�رո� Ticket!',
        'Look into a ticket!'                                  => '�鿴 Ticket ����',
        'Delete this ticket!'                                  => 'ɾ���� Ticket!',
        'Mark as Spam!'                                        => '���Ϊ����!',
        'My Queues'                                            => '�ҵĶ���',
        'Shown Tickets'                                        => '��ʾ Tickets',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            '�����ʼ� "<OTRS_TICKET>" ���ϲ��� "<OTRS_MERGE_TO_TICKET>" !',
        'Ticket %s: first response time is over (%s)!'       => '',
        'Ticket %s: first response time will be over in %s!' => '',
        'Ticket %s: update time is over (%s)!'               => '',
        'Ticket %s: update time will be over in %s!'         => '',
        'Ticket %s: solution time is over (%s)!'             => '',
        'Ticket %s: solution time will be over in %s!'       => '',
        'There are more escalated tickets!'                  => '',
        'New ticket notification'                            => '�� Ticket ֪ͨ',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            '����ҵĶ��������µ� Ticket����֪ͨ��.',
        'Follow up notification' => '����֪ͨ',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.'
            => '����ͻ������� Ticket �ظ����������Ǹ� Ticket ��������.',
        'Ticket lock timeout notification' => 'Ticket ������ʱ֪ͨ ',
        'Send me a notification if a ticket is unlocked by the system.' =>
            '��� Ticket ��ϵͳ��������֪ͨ��.',
        'Move notification' => '�ƶ�֪ͨ',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            '����� Ticket ��ת���ҵĶ��У���֪ͨ��.',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.'
            => '������ö��У���������ʼ����ü��������õ��ö��е�״̬֪ͨ.',
        'Custom Queue'            => '�ͻ�����',
        'QueueView refresh time'  => '������ͼˢ��ʱ��',
        'Screen after new ticket' => '������ Ticket �����ͼ',
        'Select your screen after creating a new ticket.' =>
            'ѡ���������� Ticket ������ʾ����ͼ.',
        'Closed Tickets'                          => '�ر� Tickets',
        'Show closed tickets.'                    => '��ʾ�ѹر� Tickets.',
        'Max. shown Tickets a page in QueueView.' => '������ͼÿҳ��ʾ Ticket ��.',
        'CompanyTickets'                          => '',
        'MyTickets'                               => '',
        'New Ticket'                              => '',
        'Create new Ticket'                       => '',
        'Customer called'                         => '',
        'phone call'                              => '',
        'Responses'                               => '�ظ�',
        'Responses <-> Queue'                     => '�ظ� <-> ����',
        'Auto Responses'                          => '�Զ��ظ�����',
        'Auto Responses <-> Queue'                => '�Զ��ظ� <-> ����',
        'Attachments <-> Responses'               => '���� <-> �ظ�',
        'History::Move'             => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
        'History::TypeUpdate'       => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate'    => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate'        => 'Updated SLA to %s (ID=%s).',
        'History::NewTicket'        => 'New ticket [%s] created (Q=%s;P=%s;S=%s).',
        'History::FollowUp'         => 'FollowUp for [%s]. %s',
        'History::SendAutoReject'   => 'Sent AutoReject to "%s".',
        'History::SendAutoReply'    => 'Sent AutoReply to "%s".',
        'History::SendAutoFollowUp' => 'Sent AutoFollowUp to "%s".',
        'History::Forward'          => 'Forwarded to "%s".',
        'History::Bounce'           => '���˵� "%s".',
        'History::SendAnswer'       => 'Mail sent to "%s".',
        'History::SendAgentNotification'    => '"%s"-Benachrichtigung versand an "%s".',
        'History::SendCustomerNotification' => 'Notification sent to "%s".',
        'History::EmailAgent'               => 'Sent mail to customer.',
        'History::EmailCustomer'            => 'Add mail. %s',
        'History::PhoneCallAgent'           => 'Called customer',
        'History::PhoneCallCustomer'        => 'Customer has called.',
        'History::AddNote'                  => 'Added note (%s)',
        'History::Lock'                     => 'Ticket locked.',
        'History::Unlock'                   => 'Ticket unlocked.',
        'History::TimeAccounting' => '%s time unit(d) counted. Totaly %s time unit(s) counted.',
        'History::Remove'         => '%s',
        'History::CustomerUpdate' => 'Refreshed: %s',
        'History::PriorityUpdate' => 'Priority was refreshed from "%s" (%s) to "%s" (%s).',
        'History::OwnerUpdate'    => 'New owner is "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop protection! sent no auto answer to "%s".',
        'History::Misc'           => '%s',
        'History::SetPendingTime' => 'Refreshed: %s',
        'History::StateUpdate'    => 'Before "%s" ��: "%s"',
        'History::TicketFreeTextUpdate' => 'Refreshed: %s=%s;%s=%s;',
        'History::WebRequestCustomer'   => 'Customer made a web request.',
        'History::TicketLinkAdd'        => 'Link to "%s" established.',
        'History::TicketLinkDelete'     => 'Link to "%s" removed.',

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
        'Auto Response Management'                      => '�Զ��ظ�����',
        'Response'                                      => '�ظ�',
        'Auto Response From'                            => '�Զ��ظ�����',
        'Note'                                          => 'ע��',
        'Useable options'                               => '���ú����',
        'To get the first 20 character of the subject.' => '',
        'To get the first 5 lines of the email.'        => '',
        'To get the realname of the sender (if given).' => '',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).'
            => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' =>
            '',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).'             => '',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => '',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).'
            => '',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).'
            => '',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => '',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '',
        'Add Customer Company'        => '',
        'Add a new Customer Company.' => '',
        'List'                        => '',
        'This values are required.'   => '����Ŀ������д.',
        'This values are read only.'  => '������ֻ��.',

        # Template: AdminCustomerUserForm
        'Customer User Management' => '�ͻ��û�����',
        'Search for'               => '����',
        'Add Customer User'        => '',
        'Source'                   => '����Դ',
        'Create'                   => '����',
        'Customer user will be needed to have a customer history and to login via customer panel.'
            => '�ͻ��û�������һ���˺Ŵӿͻ���¼ҳ���¼ϵͳ.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '�ͻ��û� <-> �� ����',
        'Change %s settings'                   => '�޸� %s ����',
        'Select the user:group permissions.'   => 'ѡ�� �û�:�� Ȩ��.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).'
            => '�����ѡ�������û��Ȩ�� (�����޷����� Ticket)',
        'Permission'                                          => 'Ȩ��',
        'ro'                                                  => '',
        'Read only access to the ticket in this group/queue.' => '�����е� Ticket ֻ��.',
        'rw'                                                  => '',
        'Full read and write access to the tickets in this group/queue.' =>
            '�����е� Ticket ��/д.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminEmail
        'Message sent to' => '��Ϣ���͸�',
        'Recipents'       => '�ռ���',
        'Body'            => '����',
        'Send'            => '',

        # Template: AdminGenericAgent
        'GenericAgent'  => 'ͨ�ü���֧����Ա',
        'Job-List'      => '�����б�',
        'Last run'      => '�������',
        'Run Now!'      => '��������!',
        'x'             => '',
        'Save Job as?'  => '���湤��Ϊ?',
        'Is Job Valid?' => '�����Ƿ���Ч?',
        'Is Job Valid'  => '������Ч',
        'Schedule'      => '����',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' =>
            '����ȫ������ (����: "Mar*in" ���� "Baue*")',
        '(e. g. 10*5155 or 105658*)'          => '  ����: 10*5144 ���� 105658*',
        '(e. g. 234321)'                      => '����: 234321',
        'Customer User Login'                 => '�ͻ��û���¼��Ϣ',
        '(e. g. U5150)'                       => '����: U5150',
        'Agent'                               => '����֧����Ա',
        'Ticket Lock'                         => 'Ticket ��״̬',
        'TicketFreeFields'                    => '',
        'Create Times'                        => '',
        'No create time settings.'            => '',
        'Ticket created'                      => '����ʱ��',
        'Ticket created between'              => ' ����ʱ����',
        'Pending Times'                       => '',
        'No pending time settings.'           => '',
        'Ticket pending time reached'         => '',
        'Ticket pending time reached between' => '',
        'New Priority'                        => '�����ȼ�',
        'New Queue'                           => '�¶���',
        'New State'                           => '��״̬',
        'New Agent'                           => '�¼���֧����Ա',
        'New Owner'                           => '��������',
        'New Customer'                        => '�¿ͻ�',
        'New Ticket Lock'                     => '�� Ticket ��',
        'CustomerUser'                        => '�ͻ��û�',
        'New TicketFreeFields'                => '',
        'Add Note'                            => '����ע��',
        'CMD'                                 => '',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            '��ִ���������, ��һ�������� Ticket ��ţ��ڶ��������� Ticket �ı�ʶ��.',
        'Delete tickets' => 'ɾ�� Tickets',
        'Warning! This tickets will be removed from the database! This tickets are lost!' =>
            '����! �� Ticket ��������ݿ�ɾ�����޷��ָ�!',
        'Send Notification'                                               => '',
        'Param 1'                                                         => '���� 1',
        'Param 2'                                                         => '���� 2',
        'Param 3'                                                         => '���� 3',
        'Param 4'                                                         => '���� 4',
        'Param 5'                                                         => '���� 5',
        'Param 6'                                                         => '���� 6',
        'Send no notifications'                                           => '',
        'Yes means, send no agent and customer notifications on changes.' => '',
        'No means, send agent and customer notifications on changes.'     => '',
        'Save'                                                            => '����',
        '%s Tickets affected! Do you really want to use this job?'        => '',
        '"}'                                                              => '',

        # Template: AdminGroupForm
        'Group Management' => '�����',
        'Add Group'        => '',
        'Add a new Group.' => '',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            'Admin ����Խ���ϵͳ��������, Stats ����Խ���ͳ�ƹ�����',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).'
            => '�����µ��������Ʋ�ͬ�Ĵ�ȡȨ��',
        'It\'s useful for ASP solutions.' => '',

        # Template: AdminLog
        'System Log' => 'ϵͳ��־',
        'Time'       => 'ʱ��',

        # Template: AdminNavigationBar
        'Users'  => '�û�',
        'Groups' => '��',
        'Misc'   => '�ۺ�',

        # Template: AdminNotificationForm
        'Notification Management'                           => '֪ͨ����',
        'Notification'                                      => '֪ͨ',
        'Notifications are sent to an agent or a customer.' => '֪ͨ�����͵�����֧����Ա���߿ͻ�.',

        # Template: AdminPackageManager
        'Package Manager'                               => '���������',
        'Uninstall'                                     => 'ж��',
        'Version'                                       => '�汾',
        'Do you really want to uninstall this package?' => '�Ƿ�ȷ��ж�ظ������?',
        'Reinstall'                                     => '���°�װ',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '',
        'Continue'                                                                    => '',
        'Install'                                                                     => '��װ',
        'Package'                                                                     => '�����',
        'Online Repository'           => '����֪ʶ��',
        'Vendor'                      => '�ṩ��',
        'Upgrade'                     => '����',
        'Local Repository'            => '����֪ʶ��',
        'Status'                      => '״̬',
        'Overview'                    => '�ſ�',
        'Download'                    => '����',
        'Rebuild'                     => '���¹���',
        'ChangeLog'                   => '',
        'Date'                        => '',
        'Filelist'                    => '',
        'Download file from package!' => '',
        'Required'                    => '',
        'PrimaryKey'                  => '',
        'AutoIncrement'               => '',
        'SQL'                         => '',
        'Diff'                        => '',

        # Template: AdminPerformanceLog
        'Performance Log'                                                  => '',
        'This feature is enabled!'                                         => '',
        'Just use this feature if you want to log each request.'           => '',
        'Of couse this feature will take some system performance it self!' => '',
        'Disable it here!'                                                 => '',
        'This feature is disabled!'                                        => '',
        'Enable it here!'                                                  => '',
        'Logfile too large!'                                               => '',
        'Logfile too large, you need to reset it!'                         => '',
        'Range'                                                            => '',
        'Interface'                                                        => '',
        'Requests'                                                         => '',
        'Min Response'                                                     => '',
        'Max Response'                                                     => '',
        'Average Response'                                                 => '',

        # Template: AdminPGPForm
        'PGP Management'                                                         => 'PGP ����',
        'Result'                                                                 => '���',
        'Identifier'                                                             => '��ʶ��',
        'Bit'                                                                    => 'λ',
        'Key'                                                                    => '�ܳ�',
        'Fingerprint'                                                            => 'ָӡ',
        'Expires'                                                                => '����',
        'In this way you can directly edit the keyring configured in SysConfig.' => '',

        # Template: AdminPOP3
        'POP3 Account Management' => 'POP3 �ʻ�����',
        'Host'                    => '����',
        'Trusted'                 => '�Ƿ�����',
        'Dispatching'             => '����',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            '��������һ���ʼ��˺ŵ��ʼ����ᱻ�ַ�����ѡ����!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.'
            => '',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'PostMaster ����������',
        'Filtername'                   => '����������',
        'Match'                        => 'ƥ��',
        'Header'                       => '��Ϣͷ',
        'Value'                        => 'ֵ',
        'Set'                          => '����',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.'
            => '���������� X-Headers ���������ˣ�����ʹ����������ʽ.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.'
            => '',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => '���� <-> �Զ��ظ�����',

        # Template: AdminQueueForm
        'Queue Management'                 => '���й���',
        'Sub-Queue of'                     => '�Ӷ���',
        'Unlock timeout'                   => '�Զ�������ʱ����',
        '0 = no unlock'                    => '0 = ���Զ�����  ',
        'Escalation - First Response Time' => '',
        '0 = no escalation'                => '0 = ����ʱ  ',
        'Escalation - Update Time'         => '',
        'Escalation - Solution Time'       => '',
        'Follow up Option'                 => '����ѡ��',
        'Ticket lock after a follow up'    => '����ȷ���Ժ�Ticket �����Զ�����',
        'Systemaddress'                    => 'ϵͳ�ʼ���ַ',
        'Customer Move Notify'             => 'Ticket �ƶ��ͻ�֪ͨ',
        'Customer State Notify'            => 'Ticket ״̬�ͻ�֪ͨ',
        'Customer Owner Notify'            => '�ͻ�������ͨ��',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.'
            => '�������֧����Ա������ Ticket,������һ����ʱ����û�лظ����� Ticket ���ᱻ�Զ��������������еļ���֧����Ա����.',
        'Escalation time' => '��ʱ��ʱ��',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' =>
            '�ö���ֻ��ʾ�涨ʱ����û�б������ Ticket',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.'
            => '��� Ticket �Ѿ����ڹر�״̬�����ͻ��ͷ�����һ������ Ticket����ô��� Ticket ���ᱻֱ�Ӽ������������߱�����Ϊԭ��������',
        'Will be the sender address of this queue for email answers.' => '�ظ��ʼ����õķ����ߵ�ַ',
        'The salutation for email answers.'                           => '�ظ��ʼ����ó�ν.',
        'The signature for email answers.'                            => '�ظ��ʼ�����ǩ��.',
        'OTRS sends an notification email to the customer if the ticket is moved.' =>
            '��� Ticket ���ƶ���ϵͳ���ᷢ��һ��֪ͨ�ʼ����ͻ�',
        'OTRS sends an notification email to the customer if the ticket state has changed.' =>
            '��� Ticket ״̬�ı䣬ϵͳ���ᷢ��֪ͨ�ʼ����ͻ�',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' =>
            '��� Ticket �����߸ı䣬ϵͳ���ᷢ��֪ͨ�ʼ����ͻ�.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => '�ظ� <-> ���й���',

        # Template: AdminQueueResponsesForm
        'Answer' => '�ظ�',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => '�ظ� <-> ��������',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => '�ظ����ݹ���',
        'A response is default text to write faster answer (with default text) to customers.' =>
            'Ϊ�˿��ٻظ����ظ����ݶ�����ÿ���ظ����ظ�������.',
        'Don\'t forget to add a new response a queue!' => '��Ҫ��������һ���µĻظ����ݵ�����!',
        'The current ticket state is'                  => '��ǰ Ticket ״̬��',
        'Your email address is new'                    => '�����ʼ���ַ��',

        # Template: AdminRoleForm
        'Role Management' => '��ɫ����',
        'Add Role'        => '',
        'Add a new Role.' => '',
        'Create a role and put groups in it. Then add the role to the users.' =>
            '����һ����ɫ����������ɫ,Ȼ�󽫽�ɫ�����û�.',
        'It\'s useful for a lot of users and groups.' => '���д������û������ʱ�򣬽�ɫ�ǳ��ʺ�.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management'                        => '��ɫ <-> �����',
        'move_into'                                          => '�ƶ���',
        'Permissions to move tickets into this group/queue.' => '�����ƶ� Tickets ������/����.',
        'create'                                             => '����',
        'Permissions to create tickets in this group/queue.' => '�ڸ���/�����д��� Tickets ��Ȩ��.',
        'owner'                                              => '������',
        'Permissions to change the ticket owner in this group/queue.' =>
            '�ڸ���/�������޸� Tickets �����ߵ�Ȩ��.',
        'priority' => '���ȼ�',
        'Permissions to change the ticket priority in this group/queue.' =>
            '�ڸ���/�������޸� Tickets ���ȼ���Ȩ��.',

        # Template: AdminRoleGroupForm
        'Role' => '��ɫ',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management'      => '��ɫ <-> �û�����',
        'Active'                          => '����',
        'Select the role:user relations.' => 'ѡ�� ��ɫ:�û� ����.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => '��ν����',
        'Add Salutation'        => '',
        'Add a new Salutation.' => '',

        # Template: AdminSelectBoxForm
        'Select Box'        => '',
        'Limit'             => '',
        'Go'                => '',
        'Select Box Result' => '',

        # Template: AdminService
        'Service Management' => '',
        'Add Service'        => '',
        'Add a new Service.' => '',
        'Service'            => '',
        'Sub-Service of'     => '',

        # Template: AdminSession
        'Session Management' => '�Ự����',
        'Sessions'           => '�Ự',
        'Uniq'               => '',
        'Kill all sessions'  => '',
        'Session'            => '�Ự',
        'Content'            => '����',
        'kill session'       => '��ֹ�Ự',

        # Template: AdminSignatureForm
        'Signature Management' => 'ǩ������',
        'Add Signature'        => '',
        'Add a new Signature.' => '',

        # Template: AdminSLA
        'SLA Management'      => '',
        'Add SLA'             => '',
        'Add a new SLA.'      => '',
        'SLA'                 => '',
        'First Response Time' => '',
        'Update Time'         => '',
        'Solution Time'       => '',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME ����',
        'Add Certificate'   => '���֤��',
        'Add Private Key'   => '���˽��',
        'Secret'            => '����',
        'Hash'              => '',
        'In this way you can directly edit the certification and private keys in file system.' =>
            '������ֱ�ӱ༭֤���˽��',

        # Template: AdminStateForm
        'State Management' => '',
        'Add State'        => '',
        'Add a new State.' => '',
        'State Type'       => '״̬����',
        'Take care that you also updated the default states in you Kernel/Config.pm!' =>
            '��ͬʱ������ Kernel/Config.pm �е�ȱʡ״̬!',
        'See also' => '�μ�',

        # Template: AdminSysConfig
        'SysConfig'                           => '',
        'Group selection'                     => 'ѡ����',
        'Show'                                => '��ʾ',
        'Download Settings'                   => '��������',
        'Download all system config changes.' => '�������е�ϵͳ����.',
        'Load Settings'                       => '��������',
        'Subgroup'                            => '����',
        'Elements'                            => 'Ԫ��',

        # Template: AdminSysConfigEdit
        'Config Options' => '����ѡ��',
        'Default'        => 'ȱʡ',
        'New'            => '��',
        'New Group'      => '����',
        'Group Ro'       => '',
        'New Group Ro'   => '',
        'NavBarName'     => '����������',
        'NavBar'         => '������',
        'Image'          => '',
        'Prio'           => '',
        'Block'          => '',
        'AccessKey'      => '',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'ϵͳ�ʼ���ַ����',
        'Add System Address'                => '',
        'Add a new System Address.'         => '',
        'Realname'                          => '��ʵ����',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' =>
            '���з��͵����ռ��˵���Ϣ����ת����ѡ��Ķ���',

        # Template: AdminTypeForm
        'Type Management' => '',
        'Add Type'        => '',
        'Add a new Type.' => '',

        # Template: AdminUserForm
        'User Management'                        => '�û�����',
        'Add User'                               => '',
        'Add a new Agent.'                       => '',
        'Login as'                               => '',
        'Firstname'                              => '��',
        'Lastname'                               => '��',
        'User will be needed to handle tickets.' => '��Ҫ�û������� Tickets.',
        'Don\'t forget to add a new user to groups and/or roles!' =>
            '��Ҫ��������һ���û�����ͽ�ɫ!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => '�û� <-> �����',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book'                                         => '��ַ��',
        'Return to the compose screen'                         => '�ص�׫дҳ��',
        'Discard all changes and return to the compose screen' => '���������޸�,�ص�׫дҳ��',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerTableView

        # Template: AgentInfo
        'Info' => '',

        # Template: AgentLinkObject
        'Link Object' => '���Ӷ���',
        'Select'      => 'ѡ��',
        'Results'     => '���',
        'Total hits'  => '�����',
        'Page'        => 'ҳ',
        'Detail'      => 'ϸ��',

        # Template: AgentLookup
        'Lookup' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker'       => 'ƴд���',
        'spelling error(s)'   => 'ƴд����',
        'or'                  => '����',
        'Apply these changes' => 'Ӧ��',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => '���Ƿ�ȷ��ɾ���ö���?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat'                 => '',
        'Fixed'                                                            => '',
        'Please select only one element or turn off the button \'Fixed\'.' => '',
        'Absolut Period'                                                   => '',
        'Between'                                                          => '',
        'Relative Period'                                                  => '',
        'The last'                                                         => '',
        'Finish'                                                           => '',
        'Here you can make restrictions to your stat.'                     => '',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.'
            => '',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications'                                          => '',
        'Permissions'                                                                  => '',
        'Format'                                                                       => '',
        'Graphsize'                                                                    => '',
        'Sum rows'                                                                     => '',
        'Sum columns'                                                                  => '',
        'Cache'                                                                        => '',
        'Required Field'                                                               => '',
        'Selection needed'                                                             => '',
        'Explanation'                                                                  => '',
        'In this form you can select the basic specifications.'                        => '',
        'Attribute'                                                                    => '',
        'Title of the stat.'                                                           => '',
        'Here you can insert a description of the stat.'                               => '',
        'Dynamic-Object'                                                               => '',
        'Here you can select the dynamic object you want to use.'                      => '',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '',
        'Static-File'                                                                  => '',
        'For very complex stats it is possible to include a hardcoded file.'           => '',
        'If a new hardcoded file is available this attribute will be shown and you can select one.'
            => '',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.'
            => '',
        'Multiple selection of the output format.'                                           => '',
        'If you use a graph as output format you have to select at least one graph size.'    => '',
        'If you need the sum of every row select yes'                                        => '',
        'If you need the sum of every column select yes.'                                    => '',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '',
        '(Note: Useful for big databases and low performance server)'                        => '',
        'With an invalid stat it isn\'t feasible to generate a stat.'                        => '',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.'
            => '',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => '',
        'Scale'                                    => '',
        'minimal'                                  => '',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).'
            => '',
        'Here you can the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.'
            => '',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => '',
        'maximal period'                                       => '',
        'minimal scale'                                        => '',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.'
            => '',

        # Template: AgentStatsImport
        'Import'                     => '',
        'File is not a Stats config' => '',
        'No File selected'           => '',

        # Template: AgentStatsOverview
        'Object' => '',

        # Template: AgentStatsPrint
        'Print'                => '��ӡ',
        'No Element selected.' => '',

        # Template: AgentStatsView
        'Export Config'                      => '',
        'Informations about the Stat'        => '',
        'Exchange Axis'                      => '',
        'Configurable params of static stat' => '',
        'No element selected.'               => '',
        'maximal period from'                => '',
        'to'                                 => '',
        'Start'                              => '',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.'
            => '',

        # Template: AgentTicketBounce
        'Bounce ticket'     => '���� Ticket ',
        'Ticket locked!'    => 'Ticket ������!',
        'Ticket unlock!'    => 'Ticket ������!',
        'Bounce to'         => '���˵� ',
        'Next ticket state' => 'Tickets ״̬',
        'Inform sender'     => '֪ͨ������',
        'Send mail!'        => '����!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Ticket ��������',
        'Spell Check'        => 'ƴд���',
        'Note type'          => 'ע������',
        'Unlock Tickets'     => '���� Tickets',

        # Template: AgentTicketClose
        'Close ticket'           => '�ر� Ticket',
        'Previous Owner'         => 'ǰһ��������',
        'Inform Agent'           => '֪ͨ����֧����Ա',
        'Optional'               => 'ѡ��',
        'Inform involved Agents' => '֪ͨ��ؼ���֧����Ա',
        'Attach'                 => '����',
        'Next state'             => 'Ticket ״̬',
        'Pending date'           => '����������',
        'Time units'             => '',

        # Template: AgentTicketCompose
        'Compose answer for ticket' => '׫д��,Ticket ���',
        'Pending Date'              => '����ȴ�״̬����',
        'for pending* states'       => '��Եȴ�״̬',

        # Template: AgentTicketCustomer
        'Change customer of ticket'                     => '�޸� Tickets �����ͻ�',
        'Set customer user and customer id of a ticket' => '���� Ticket �����ͻ��û�',
        'Customer User'                                 => '�ͻ��û�',
        'Search Customer'                               => '�����ͻ�',
        'Customer Data'                                 => '�ͻ�����',
        'Customer history'                              => '�ͻ���ʷ���',
        'All customer tickets.'                         => '�ÿͻ����� Tickets ��¼.',

        # Template: AgentTicketCustomerMessage
        'Follow up' => '����',

        # Template: AgentTicketEmail
        'Compose Email' => '׫д Email',
        'new ticket'    => '�½� Ticket',
        'Refresh'       => '',
        'Clear To'      => '���',

        # Template: AgentTicketForward
        'Article type' => '��������',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => '�޸� Ticket ������Ϣ',

        # Template: AgentTicketHistory
        'History of' => '��ʷ',

        # Template: AgentTicketLocked

        # Template: AgentTicketMailbox
        'Mailbox'      => '����',
        'Tickets'      => '',
        'of'           => '',
        'Filter'       => '',
        'New messages' => '����Ϣ',
        'Reminder'     => '����',
        'Sort by'      => '����',
        'Order'        => '����',
        'up'           => '��',
        'down'         => '��',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Ticket �ϲ�',
        'Merge to'     => '�ϲ���',

        # Template: AgentTicketMove
        'Move Ticket' => '�ƶ� Ticket',

        # Template: AgentTicketNote
        'Add note to ticket' => '����ע�⵽ Ticket',

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
        'Ticket-Info'    => 'Ticket��Ϣ',
        'Accounted time' => '',
        'Escalation in'  => '��ʱ',
        'Linked-Object'  => '�����Ӷ���',
        'Parent-Object'  => '������',
        'Child-Object'   => '�Ӷ���',
        'by'             => '��',

        # Template: AgentTicketPriority
        'Change priority of ticket' => '���� Ticket ���ȼ�',

        # Template: AgentTicketQueue
        'Tickets shown'      => '��ʾ Ticket',
        'Tickets available'  => '���� Ticket',
        'All tickets'        => '����Ticket',
        'Queues'             => '����',
        'Ticket escalation!' => 'Ticket ��ʱ����!',

        # Template: AgentTicketQueueTicketView
        'Service Time'      => '',
        'Your own Ticket'   => '���Լ��� Ticket',
        'Compose Follow up' => '׫д���ٴ�',
        'Compose Answer'    => '׫д��',
        'Contact customer'  => '��ϵ�ͻ�',
        'Change queue'      => '�ı����',

        # Template: AgentTicketQueueTicketViewLite

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '',

        # Template: AgentTicketSearch
        'Ticket Search'                    => 'Ticket ����',
        'Profile'                          => '����Լ������',
        'Search-Template'                  => '����ģ��',
        'TicketFreeText'                   => 'Ticket ������Ϣ',
        'Created in Queue'                 => '',
        'Result Form'                      => '���������ʾΪ',
        'Save Search-Profile as Template?' => '��������������Ϊģ��',
        'Yes, save it with name'           => '��, ����Ϊ����',

        # Template: AgentTicketSearchResult
        'Search Result'         => '�������',
        'Change search options' => '�޸�����ѡ��',

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketSearchResultShort
        'U' => '����',
        'D' => '����',

        # Template: AgentTicketStatusView
        'Ticket Status View' => 'Ticket ״̬��ͼ',
        'Open Tickets'       => '���� Tickets',
        'Locked'             => '����״̬',

        # Template: AgentTicketZoom

        # Template: AgentWindowTab

        # Template: Copyright

        # Template: css

        # Template: customer-css

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => '',

        # Template: CustomerFooter
        'Powered by' => '',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login'                => '��¼',
        'Lost your password?'  => '��������?',
        'Request new password' => '����������',
        'Create Account'       => '�����ʻ�',

        # Template: CustomerNavigationBar
        'Welcome %s' => '��ӭ %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times'             => 'ʱ��',
        'No time settings.' => '��ʱ��Լ��.',

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => '',

        # Template: Footer
        'Top of Page' => 'ҳ�涥��',

        # Template: FooterSmall

        # Template: Header

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer'         => '',
        'Accept license'        => '',
        'Don\'t accept license' => '',
        'Admin-User'            => '����Ա',
        'Admin-Password'        => '����Ա����',
        'your MySQL DB should have a root password! Default is empty!' =>
            '���� MySQL ���ݿ���Ҫ��һ�������û����룬ȱʡΪ��!',
        'Database-User'   => '���ݿ��û�����',
        'default \'hot\'' => '',
        'DB connect host' => '������������',
        'Database'        => '',
        'false'           => '��',
        'SystemID'        => '',
        '(The identify of the system. Each ticket number and each http session id starts with this number)'
            => '(ϵͳ��ʶ��. Ticket ��ź� http �Ự���������ʶ����ͷ)',
        'System FQDN'                                 => 'ϵͳ����',
        '(Full qualified domain name of your system)' => '(ϵͳ����)',
        'AdminEmail'                                  => '����Ա��ַ',
        '(Email of the system admin)'                 => '(ϵͳ����Ա�ʼ���ַ)',
        'Organization'                                => '��֯',
        'Log'                                         => '',
        'LogModule'                                   => '',
        '(Used log backend)'                          => '',
        'Logfile'                                     => '��־�ļ�',
        '(Logfile just needed for File-LogModule!)' =>
            '(ֻ�м��� File-LogModule ʱ����Ҫ Logfile!)',
        'Webfrontend'                             => 'Web ǰ��',
        'Default Charset'                         => 'ȱʡ�ַ���',
        'Use utf-8 it your database supports it!' => '����������ݿ�֧�֣�ʹ��UTF-8�ַ�����!',
        'Default Language'                        => 'ȱʡ����',
        '(Used default language)'                 => '(ʹ��ȱʡ����)',
        'CheckMXRecord'                           => '��� MX ��¼',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)'
            => '',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.'
            => '.',
        'Restart your webserver'                      => '�������������� webserver.',
        'After doing so your OTRS is up and running.' => '��ɺ����������� OTRS ϵͳ��.',
        'Start page'                                  => '��ʼҳ��',
        'Have a lot of fun!'                          => '',
        'Your OTRS Team'                              => '����Ƽ��ͻ�����.',

        # Template: Login
        'Welcome to %s' => '��ӭʹ�� ����Ƽ��ͻ�����ϵͳ %s',

        # Template: Motd

        # Template: NoPermission
        'No Permission' => '��Ȩ��',

        # Template: Notify
        'Important' => '��Ҫ',

        # Template: PrintFooter
        'URL' => '',

        # Template: PrintHeader
        'printed by' => '��ӡ��',

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'OTRS ����ҳ',
        'Counter'        => '������',

        # Template: Warning
        # Misc
        'Edit Article'                                => '',
        'Create Database'                             => '�������ݿ�',
        'DB Host'                                     => '���ݿ�����',
        'Ticket Number Generator'                     => 'Ticket ���������',
        'Create new Phone Ticket'                     => '�����µĵ绰 Ticket',
        'Symptom'                                     => '֢״',
        'A message should have a To: recipient!'      => '�ʼ��������ռ���!',
        'Site'                                        => 'վ��',
        'Customer history search (e. g. "ID342425").' => '�����ͻ���ʷ (���磺 "ID342425").',
        'Close!'                                      => '�ر�!',
        'for agent firstname'                         => '����֧����Ա ��',
        'The message being composed has been closed.  Exiting.' =>
            '������Ϣ׫д�Ĵ����Ѿ����ر�,�˳�.',
        'A web calendar'                               => 'Web ����',
        'to get the realname of the sender (if given)' => '�ʼ������˵���ʵ���� (�������)',
        'OTRS DB Name'                                 => '���ݿ�����',
        'Notification (Customer)'                      => '',
        'Select Source (for add)'                      => 'ѡ������Դ(���ӹ���ʹ��)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)'
            => '',
        'Days'                                          => '��',
        'Queue ID'                                      => '���б��',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => '����ѡ�� (����:<OTRS_CONFIG_HttpType>)',
        'System History'                                => 'ϵͳ��ʷ',
        'customer realname'                             => '�ͻ���ʵ����',
        'Pending messages'                              => '��Ϣת��ȴ�״̬',
        'for agent login'                               => '����֧����Ա ��¼��',
        'Keyword'                                       => '�ؼ���',
        'with'                                          => '��',
        'Close type'                                    => '�ر�����',
        'DB Admin User'                                 => '���ݿ����Ա�û���',
        'for agent user id'                             => '����֧����Ա �û���',
        'sort upward'                                   => '��������',
        'Change user <-> group settings'                => '�޸� �û� <-> �� ����',
        'Problem'                                       => '����',
        'next step'                                     => '��һ��',
        'Customer history search'                       => '�ͻ���ʷ����',
        'Create new database'                           => '�����µ����ݿ�',
        'A message must be spell checked!'              => '��Ϣ���뾭��ƴд���!',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.'
            => '�����ʼ� ���: "<OTRS_TICKET>" ���˵� "<OTRS_BOUNCE_TO>" . ����ϵ���µ�ַ��ȡ��ϸ��Ϣ.',
        'A message should have a body!' => '�ʼ������������!',
        'All Agents'                    => '���м���֧����Ա',
        'Keywords'                      => '�ؼ���',
        'No * possible!'                => '����ʹ��ͨ��� "*" !',
        'Load'                          => '����',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)'
            => '',
        'Message for new Owner'                        => '�������ߵ���Ϣ',
        'to get the first 5 lines of the email'        => '�ʼ�����ǰ5��',
        'OTRS DB Password'                             => 'OTRS �û�����',
        'Last update'                                  => '��������',
        '���ӵ�ַ'                                     => '',
        'to get the first 20 character of the subject' => '�ʼ�����ǰ20���ַ�',
        'DB Admin Password'                            => '����ϵͳ����Ա����',
        'Drop Database'                                => 'ɾ�����ݿ�',
        'FileManager'                                  => '�ļ�������',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' =>
            '��ǰ�ͻ��û���Ϣ (����: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type'                                                  => '����������',
        'Comment (internal)'                                            => 'ע�� (�ڲ�)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',
        'This window must be called from compose window' => '�ô��ڱ�����׫д���ڵ���',
        'You need min. one selected Ticket!'             => '��������Ҫѡ��һ�� Ticket!',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)'
            => '���õ��й� Ticket ��Ϣ (����: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(ʹ�� Ticket ��Ÿ�ʽ)',
        'Fulltext'                    => 'ȫ��',
        'OTRS DB connect host'        => 'OTRS ���ݿ�����',
        'All Agent variables.'        => '',
        ' (work units)'               => '',
        'All Customer variables like defined in config option CustomerUser.' => '',
        'for agent lastname'                                                 => '����֧����Ա ��',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)'
            => '������������Ϣ (e. g. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages'                          => '��Ϣ����',
        'A message should have a subject!'           => '�ʼ������б���!',
        'TicketZoom'                                 => 'Ticket չ��',
        'Don\'t forget to add a new user to groups!' => '��Ҫ���������µ��û�����!',
        'You need a email address (e. g. customer@example.com) in To:!' =>
            '�ռ�����Ϣ�������ʼ���ַ(���磺customer@example.com)',
        'CreateTicket'              => '���� Ticket',
        'You need to account time!' => '',
        'System Settings'           => '���ݿ����� ',
        'Finished'                  => '����',
        'Split'                     => '�ֽ�',
        'All messages'              => '������Ϣ',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)'
            => '',
        'A article should have a title!'                      => '���±����б���!',
        'Event'                                               => '',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
        'A web mail client'                                   => 'WebMail �ͻ���',
        'WebMail'                                             => '',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' =>
            'Ticket ������ѡ�� (����: <OTRS_OWNER_UserFirstname>)',
        'Name is required!'                 => '��Ҫ����!',
        'DB Type'                           => '���ݿ�����',
        'kill all sessions'                 => '��ֹ���лỰ',
        'to get the from line of the email' => '�ʼ�����',
        'Solution'                          => '�������',
        'QueueView'                         => '������ͼ',
        'My Queue'                          => '�ҵĶ���',
        'modified'                          => '�޸���',
        'Delete old database'               => 'ɾ�������ݿ�',
        'sort downward'                     => '��������',
        'You need to use a ticket number!'  => '����Ҫʹ��һ�� Ticket ���!',
        'A web file manager'                => 'Web �ļ�������',
        'send'                              => '����',
        'Note Text'                         => 'ע��',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)'
            => '',
        'System State Management'          => 'ϵͳ״̬����',
        'OTRS DB User'                     => 'OTRS ���ݿ��û���',
        'PhoneView'                        => '�绰��ͼ',
        'maximal period form'              => '',
        'Verion'                           => '�汾',
        'Modified'                         => '�޸���',
        'Ticket selected for bulk action!' => '��ѡ�н������������� Tickets',
    };

    # $$STOP$$
    return;
}

1;
