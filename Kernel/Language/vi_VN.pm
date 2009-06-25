# --
# Kernel/Language/vi_VN.pm - provides vi_VN language translation
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: vi_VN.pm,v 1.26 2009-06-25 18:18:15 ub Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
package Kernel::Language::vi_VN;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.26 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Tue Jun 23 02:23:03 2009

    # possible charsets
    $Self->{Charset} = ['viscii', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%T - %D.%M.%Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => 'C�',
        'No' => 'Kh�ng',
        'yes' => 'C�',
        'no' => 'Kh�ng',
        'Off' => 'T�t',
        'off' => 't�t',
        'On' => 'M�',
        'on' => 'm�',
        'top' => 'tr�n �u',
        'end' => 'cu�i',
        'Done' => '�� xong',
        'Cancel' => 'H�y',
        'Reset' => 'L�m l�i',
        'last' => 'Sau',
        'before' => 'Tr߾c',
        'day' => 'ng�y',
        'days' => 'ng�y',
        'day(s)' => 'ng�y',
        'hour' => 'gi�',
        'hours' => 'gi�',
        'hour(s)' => 'gi�',
        'minute' => 'ph�t',
        'minutes' => 'ph�t',
        'minute(s)' => 'ph�t',
        'month' => 'th�ng',
        'months' => 'th�ng',
        'month(s)' => 'th�ng',
        'week' => 'tu�n',
        'week(s)' => 'tu�n',
        'year' => 'n�m',
        'years' => 'n�m',
        'year(s)' => 'n�m',
        'second(s)' => 'gi�y',
        'seconds' => 'gi�y',
        'second' => 'gi�y',
        'wrote' => 'vi�t',
        'Message' => 'Th�ng b�o',
        'Error' => 'L�i',
        'Bug Report' => 'B�o c�o l�i',
        'Attention' => 'Ch� �',
        'Warning' => 'C�nh b�o',
        'Module' => 'M� �un',
        'Modulefile' => 'File m� �un',
        'Subfunction' => 'Ch�c n�ng con',
        'Line' => 'D�ng',
        'Setting' => '',
        'Settings' => '',
        'Example' => 'V� d�',
        'Examples' => 'C�c v� d�',
        'valid' => 'H�p l�',
        'invalid' => 'Kh�ng h�p l�',
        '* invalid' => '* kh�ng h�p l�',
        'invalid-temporarily' => 't�m th�i kh�ng h�p l�',
        ' 2 minutes' => '2 ph�t',
        ' 5 minutes' => '5 ph�t',
        ' 7 minutes' => '7 ph�t',
        '10 minutes' => '10 ph�t',
        '15 minutes' => '15 ph�t',
        'Mr.' => '�ng',
        'Mrs.' => 'B�',
        'Next' => 'Ti�p',
        'Back' => 'Tr� l�i',
        'Next...' => 'Ti�p...',
        '...Back' => '...Tr� l�i',
        '-none-' => 'kh�ng',
        'none' => 'kh�ng',
        'none!' => 'kh�ng!',
        'none - answered' => 'kh�ng ���c tr� l�i',
        'please do not edit!' => 'Xin ��ng ch�nh s�a!',
        'AddLink' => 'Th�m li�n k�t',
        'Link' => 'Li�n k�t',
        'Unlink' => '',
        'Linked' => '�� li�n k�t',
        'Link (Normal)' => 'Li�n k�t (Th߶ng)',
        'Link (Parent)' => 'Li�n k�t (Cha)',
        'Link (Child)' => 'Li�n k�t (Con)',
        'Normal' => 'Th߶ng',
        'Parent' => 'Cha',
        'Child' => 'Con',
        'Hit' => 'Nh�n chu�t',
        'Hits' => 'Nh�n chu�t',
        'Text' => 'V�n b�n',
        'Lite' => 'Nh�',
        'User' => 'Ng߶i d�ng',
        'Username' => 'T�n ��ng nh�p',
        'Language' => 'Ng�n ng�',
        'Languages' => 'C�c ng�n ng�',
        'Password' => 'M�t kh�u',
        'Salutation' => 'L�i ch�o',
        'Signature' => 'Ch� k�',
        'Customer' => 'Kh�ch h�ng',
        'CustomerID' => 'M� kh�ch h�ng',
        'CustomerIDs' => 'M� kh�ch h�ng',
        'customer' => 'kh�ch h�ng',
        'agent' => 'nh�n vi�n',
        'system' => 'h� th�ng',
        'Customer Info' => 'Th�ng tin kh�ch h�ng',
        'Customer Company' => 'C�ng ty kh�ch h�ng',
        'Company' => 'C�ng ty',
        'go!' => 'ti�p t�c!',
        'go' => 'ti�p t�c',
        'All' => 't�t c�',
        'all' => 't�t c�',
        'Sorry' => 'Xin l�i',
        'update!' => 'c�p nh�t!',
        'update' => 'c�p nh�t',
        'Update' => 'C�p nh�t',
        'Updated!' => '',
        'submit!' => 'x�c nh�n!',
        'submit' => 'x�c nh�n',
        'Submit' => 'X�c nh�n',
        'change!' => 'thay �i!',
        'Change' => 'Thay �i',
        'change' => 'thay �i',
        'click here' => 'Nh�n chu�t v�o ��y',
        'Comment' => 'Nh�n x�t',
        'Valid' => 'H�p l�',
        'Invalid Option!' => 'L�a ch�n kh�ng h�p l�!',
        'Invalid time!' => 'Th�i gian kh�ng h�p l�!',
        'Invalid date!' => 'Ng�y th�ng kh�ng h�p l�!',
        'Name' => 'T�n',
        'Group' => 'Nh�m',
        'Description' => 'M� t�',
        'description' => 'm� t�',
        'Theme' => 'Giao di�n',
        'Created' => '�� kh�i t�o',
        'Created by' => 'Kh�i t�o b�i',
        'Changed' => '�� thay �i',
        'Changed by' => 'Thay �i b�i',
        'Search' => 'T�m ki�m',
        'and' => 'v�',
        'between' => 'gi�a',
        'Fulltext Search' => 'T�m ki�m to�n b� v�n b�n',
        'Data' => 'D� li�u',
        'Options' => 'C�c t�y ch�n',
        'Title' => 'Ti�u �',
        'Item' => 'M�c',
        'Delete' => 'X�a',
        'Edit' => 'S�a',
        'View' => 'Xem',
        'Number' => 'S�',
        'System' => 'H� th�ng',
        'Contact' => 'Li�n h�',
        'Contacts' => 'Li�n h�',
        'Export' => 'Xu�t',
        'Up' => 'Tr�n',
        'Down' => 'D߾i',
        'Add' => 'Th�m',
        'Added!' => '',
        'Category' => 'Ph�n lo�i',
        'Viewer' => 'Tr�nh xem',
        'Expand' => '',
        'New message' => 'Tin nh�n m�i',
        'New message!' => 'Tin nh�n m�i!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'H�y tr� l�i th� n�y � tr� l�i ph�n xem c�c h�ng ��i th�ng th߶ng!',
        'You got new message!' => 'B�n c� tin nh�n m�i!',
        'You have %s new message(s)!' => 'B�n c� %s tin nh�n m�i!',
        'You have %s reminder ticket(s)!' => 'B�n c� %s th� nh�c c�ng vi�c!',
        'The recommended charset for your language is %s!' => 'B� k� t� g�i � cho ng�n ng� c�a b�n l� %s!',
        'Passwords doesn\'t match! Please try it again!' => 'C�c m�t kh�u kh�ng kh�p nhau! H�y th� l�i!',
        'Password is already in use! Please use an other password!' => 'M�t kh�u �� t�ng ���c s� d�ng! H�y s� d�ng m�t m�t kh�u kh�c!',
        'Password is already used! Please use an other password!' => 'M�t kh�u �� t�ng ���c s� d�ng! H�y s� d�ng m�t m�t kh�u kh�c!',
        'You need to activate %s first to use it!' => '%s c�n ���c k�ch ho�t l�n �u ti�n � s� d�ng!',
        'No suggestions' => 'Kh�ng c� g�i � n�o',
        'Word' => 'T�',
        'Ignore' => 'B� qua',
        'replace with' => 'thay th� b�ng',
        'There is no account with that login name.' => 'Kh�ng c� t�i kho�n n�o v�i t�n truy c�p nh� th�.',
        'Login failed! Your username or password was entered incorrectly.' => '��ng nh�p th�t b�i! T�n truy c�p ho�c m�t kh�u nh�p kh�ng ch�nh x�c.',
        'Please contact your admin' => 'H�y li�n h� v�i qu�n tr� h� th�ng c�a b�n',
        'Logout successful. Thank you for using OTRS!' => '��ng xu�t th�nh c�ng! C�m �n b�n �� s� d�ng OTRS!',
        'Invalid SessionID!' => 'M� phi�n kh�ng h�p l�!',
        'Feature not active!' => 'T�nh n�ng kh�ng ho�t �ng!',
        'Login is needed!' => 'C�n ��ng nh�p!',
        'Password is needed!' => 'C�n m�t kh�u!',
        'License' => 'Gi�y ph�p',
        'Take this Customer' => 'Ch�p nh�n kh�ch h�ng n�y',
        'Take this User' => 'Ch�p nh�n ng߶i d�ng n�y',
        'possible' => 'c� th�',
        'reject' => 't� ch�i',
        'reverse' => '��o ng��c',
        'Facility' => 'Ti�n �ch',
        'Timeover' => 'H�t th�i gian',
        'Pending till' => 'Treo t�i khi',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'Kh�ng l�m vi�c v�i m� ng߶i d�ng 1 (t�i kho�n h� th�ng)! H�y t�o ng߶i d�ng m�i!',
        'Dispatching by email To: field.' => 'G�i b�ng email t�i: tr߶ng.',
        'Dispatching by selected Queue.' => 'G�i b�i h�ng ��i �� ch�n.',
        'No entry found!' => 'Kh�ng t�m th�y m�c n�o!',
        'Session has timed out. Please log in again.' => 'Phi�n �� b� gi�n �o�n. Xin h�y ��ng nh�p l�i.',
        'No Permission!' => 'Kh�ng c� quy�n!',
        'To: (%s) replaced with database email!' => 'T�i: (%s) ���c thay th� b�i email c� s� d� li�u!',
        'Cc: (%s) added database email!' => 'Cc: (%s) email c� s� d� li�u th�m!',
        '(Click here to add)' => '(Nh�n chu�t v�o ��y � th�m)',
        'Preview' => 'Xem tr߾c',
        'Package not correctly deployed! You should reinstall the Package again!' => 'G�i ch�a ���c tri�n khai ch�nh x�c! B�n n�n c�i �t l�i g�i l�n n�a!',
        'Added User "%s"' => 'Ng߶i d�ng "%s" �� ���c th�m.',
        'Contract' => 'H�p �ng',
        'Online Customer: %s' => 'Kh�ch h�ng tr�c tuy�n: %s',
        'Online Agent: %s' => 'Nh�n vi�n �ang online: %s',
        'Calendar' => 'L�ch',
        'File' => 'File',
        'Filename' => 'T�n file',
        'Type' => 'Lo�i',
        'Size' => 'C�',
        'Upload' => 'T�i l�n',
        'Directory' => '�߶ng d�n',
        'Signed' => '�� k�',
        'Sign' => 'K�',
        'Crypted' => '�� g�n m�',
        'Crypt' => 'G�n m�',
        'Office' => 'V�n ph�ng',
        'Phone' => '�i�n tho�i',
        'Fax' => 'Fax',
        'Mobile' => 'Di �ng',
        'Zip' => 'M� v�ng',
        'City' => 'Th�nh ph�',
        'Street' => '',
        'Country' => 'N߾c',
        'Location' => '',
        'installed' => '�� c�i �t',
        'uninstalled' => '�� g� c�i �t',
        'Security Note: You should activate %s because application is already running!' => 'L�u � b�o m�t: B�n n�n k�ch ho�t %s b�i �ng d�ng �� ho�t �ng!',
        'Unable to parse Online Repository index document!' => 'Kh�ng th� ph�n t�ch t�i li�u ch� m�c Kho ch�a tr�c tuy�n!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'Kh�ng c� g�i n�o cho c�u tr�c y�u c�u trong Kho ch�a tr�c tuy�n n�y, nh�ng c� c�c g�i cho nh�ng c�u tr�c kh�c.',
        'No Packages or no new Packages in selected Online Repository!' => 'Kh�ng c� g�i n�o ho�c kh�ng c� g�i m�i n�o trong Kho ch�a tr�c tuy�n �� ch�n!',
        'printed at' => '���c in t�i',
        'Dear Mr. %s,' => '',
        'Dear Mrs. %s,' => '',
        'Dear %s,' => '',
        'Hello %s,' => '',
        'This account exists.' => 'T�i kho�n n�y �� t�n t�i.',
        'New account created. Sent Login-Account to %s.' => '',
        'Please press Back and try again.' => 'Xin h�y nh�n Tr� l�i v� th� l�i l�n n�a.',
        'Sent password token to: %s' => '',
        'Sent new password to: %s' => '',
        'Upcoming Events' => '',
        'Event' => 'S� ki�n',
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
        'Header' => 'Хu trang',
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
        'Jan' => 'Th�ng 1',
        'Feb' => 'Th�ng 2',
        'Mar' => 'Th�ng 3',
        'Apr' => 'Th�ng 4',
        'May' => 'Th�ng 5',
        'Jun' => 'Th�ng 6',
        'Jul' => 'Th�ng 7',
        'Aug' => 'Th�ng 8',
        'Sep' => 'Th�ng 9',
        'Oct' => 'Th�ng 10',
        'Nov' => 'Th�ng 11',
        'Dec' => 'Th�ng 12',
        'January' => 'Th�ng M�t',
        'February' => 'Th�ng Hai',
        'March' => 'Th�ng Ba',
        'April' => 'Th�ng T�',
        'June' => 'Th�ng S�u',
        'July' => 'Th�ng B�y',
        'August' => 'Th�ng T�m',
        'September' => 'Th�ng Ch�n',
        'October' => 'Th�ng M߶i',
        'November' => 'Th�ng M߶i m�t',
        'December' => 'Th�ng M߶i hai',

        # Template: AAANavBar
        'Admin-Area' => 'Khu v�c d�nh cho qu�n tr�',
        'Agent-Area' => 'Khu v�c d�nh cho nh�n vi�n',
        'Ticket-Area' => 'Khu v�c th�',
        'Logout' => '��ng xu�t',
        'Agent Preferences' => 'Giao di�n cho nh�n vi�n ph� tr�ch',
        'Preferences' => 'Giao di�n',
        'Agent Mailbox' => 'H�p th� d�nh cho nh�n vi�n',
        'Stats' => 'Th�ng k�',
        'Stats-Area' => 'Khu v�c d�nh cho th�ng k�',
        'Admin' => 'Qu�n tr�',
        'Customer Users' => 'Ng߶i d�ng kh�ch h�ng',
        'Customer Users <-> Groups' => 'Ng߶i d�ng kh�ch h�ng <-> Nh�m',
        'Users <-> Groups' => 'Ng߶i d�ng <-> Nh�m',
        'Roles' => 'Vai tr�',
        'Roles <-> Users' => 'Vai tr� <-> Ng߶i d�ng',
        'Roles <-> Groups' => 'Vai tr� <-> Nh�m',
        'Salutations' => 'L�i ch�o',
        'Signatures' => 'Ch� k�',
        'Email Addresses' => 'иa ch� email',
        'Notifications' => 'Th�ng b�o',
        'Category Tree' => 'C�y th� m�c',
        'Admin Notification' => 'Th�ng b�o qu�n tr�',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Giao di�n �� ���c c�p nh�t th�nh c�ng!',
        'Mail Management' => 'Qu�n tr� mail',
        'Frontend' => 'M�t ngo�i',
        'Other Options' => 'C�c t�y ch�n kh�c',
        'Change Password' => 'бi m�t kh�u',
        'New password' => 'M�t kh�u m�i',
        'New password again' => 'G� l�i m�t kh�u m�i',
        'Select your QueueView refresh time.' => 'H�y ch�n th�i gian l�m m�i h�ng ��i c�a b�n.',
        'Select your frontend language.' => 'H�y ch�n ng�n ng� m�t ngo�i c�a b�n.',
        'Select your frontend Charset.' => 'H�y ch�n b� m� k� t� m�t ngo�i c�a b�n.',
        'Select your frontend Theme.' => 'H�y ch�n giao di�n m�t ngo�i c�a b�n.',
        'Select your frontend QueueView.' => 'H�y ch�n c�ch xem h�ng ��i m�t ngo�i c�a b�n.',
        'Spelling Dictionary' => 'T� �i�n ch�nh t�',
        'Select your default spelling dictionary.' => 'H�y ch�n t� �i�n ch�nh t� m�c �nh c�a b�n.',
        'Max. shown Tickets a page in Overview.' => 'S� th� hi�n th� t�i �a tr�n m�t trang trong ph�n T�ng quan.',
        'Can\'t update password, your new passwords do not match! Please try again!' => 'Kh�ng th� c�p nh�t m�t kh�u, c�c m�t kh�u kh�ng kh�p nhau! H�y th� l�i l�n n�a!',
        'Can\'t update password, invalid characters!' => 'Kh�ng th� c�p nh�t m�t kh�u, c�c k� t� kh�ng h�p l�.',
        'Can\'t update password, must be at least %s characters!' => 'Kh�ng th� c�p nh�t m�t kh�u, m�t kh�u ph�i �t nh�t %s k� t�.',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => 'Kh�ng th� c�p nh�t m�t kh�u, c�n c� 2 k� t� d߾i v� 2 k� t� tr�n.',
        'Can\'t update password, needs at least 1 digit!' => 'Kh�ng th� c�p nh�t m�t kh�u, m�t kh�u c�n c� �t nh�t 1 con s�!',
        'Can\'t update password, needs at least 2 characters!' => 'Kh�ng th� c�p nh�t m�t kh�u, m�t kh�u c�n c� �t nh�t 2 k� t�!',

        # Template: AAAStats
        'Stat' => 'Th�ng k�',
        'Please fill out the required fields!' => 'H�y nh�p v�o c�c tr߶ng b�t bu�c!',
        'Please select a file!' => 'H�y ch�n 1 file!',
        'Please select an object!' => 'H�y ch�n 1 �i t��ng!',
        'Please select a graph size!' => 'H�y ch�n 1 c� bi�u �!',
        'Please select one element for the X-axis!' => 'H�y ch�n 1 th�nh t� cho tr�c X!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'H�y ch�n duy nh�t 1 th�nh t� ho�c t�t n�t \'�� s�a\'n�i tr߶ng �� ch�n ���c ��nh d�u!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'N�u b�n s� d�ng m�t h�p ch�n b�n ph�i ch�n m�t s� thu�c t�nh c�a tr߶ng �� ch�n!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'H�y ch�n m�t gi� tr� trong tr߶ng nh�p �� ch�n ho�c t�t h�p ch�n \'�� s�a\'!',
        'The selected end time is before the start time!' => 'Th�i gian k�t th�c �� ch�n tr߾c th�i gian b�t �u!',
        'You have to select one or more attributes from the select field!' => 'B�n ph�i ch�n 1 ho�c nhi�u thu�c t�nh t� tr߶ng �� ch�n!',
        'The selected Date isn\'t valid!' => 'Ng�y �� ch�n kh�ng h�p l�!',
        'Please select only one or two elements via the checkbox!' => 'H�y ch�n ch� 1 ho�c 2 th�nh t� th�ng qua h�p ch�n!',
        'If you use a time scale element you can only select one element!' => 'N�u b�n s� d�ng th�nh t� khung th�i gian b�n c� th� ch� ch�n 1 th�nh t�!',
        'You have an error in your time selection!' => 'C� 1 l�i trong qu� tr�nh ch�n th�i gian c�a b�n!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'Kho�ng th�i gian b�o c�o qu� nh�, h�y s� d�ng khung th�i gian l�n h�n!',
        'The selected start time is before the allowed start time!' => 'Th�i gian b�t �u �� ch�n tr߾c th�i gian b�t �u cho ph�p!',
        'The selected end time is after the allowed end time!' => 'Th�i gian k�t th�c �� ch�n sau th�i gian k�t th�c cho ph�p!',
        'The selected time period is larger than the allowed time period!' => 'Kho�ng th�i gian �� ch�n l�n h�n kho�ng th�i gian cho ph�p!',
        'Common Specification' => 'Уc t� chung',
        'Xaxis' => 'Tr�c X',
        'Value Series' => 'Chu�i gi� tr�',
        'Restrictions' => 'C�c h�n ch�',
        'graph-lines' => 'Bi�u � �߶ng k�',
        'graph-bars' => 'Bi�u � thanh',
        'graph-hbars' => 'Bi�u � thanh ngang',
        'graph-points' => 'Bi�u � ch�m',
        'graph-lines-points' => 'Bi�u � �߶ng k� ch�m',
        'graph-area' => 'Bi�u � v�ng',
        'graph-pie' => 'Bi�u � tr�n',
        'extended' => 'm� r�ng',
        'Agent/Owner' => 'Nh�n vi�n/Ph� tr�ch',
        'Created by Agent/Owner' => '���c t�o b�i nh�n vi�n/ng߶i ph� tr�ch',
        'Created Priority' => '�u ti�n kh�i t�o',
        'Created State' => 'Tr�ng th�i kh�i t�o',
        'Create Time' => 'Th�i gian kh�i t�o',
        'CustomerUserLogin' => 'Ng߶i d�ng kh�ch h�ng ��ng nh�p',
        'Close Time' => 'Th�igian ��ng',
        'TicketAccumulation' => '',
        'Attributes to be printed' => '',
        'Sort sequence' => '',
        'Order by' => '',
        'Limit' => 'Gi�i h�n',
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
        'Lock' => 'Kh�a',
        'Unlock' => 'M� kh�a',
        'History' => 'L�ch s�',
        'Zoom' => 'Ph�ng ��i',
        'Age' => 'Tu�i',
        'Bounce' => 'B�',
        'Forward' => 'Chuy�n ti�p',
        'From' => 'T�',
        'To' => 'T�i',
        'Cc' => 'Cc',
        'Bcc' => 'Bcc',
        'Subject' => 'Ti�u �',
        'Move' => 'Chuy�n',
        'Queue' => 'H�ng ��i',
        'Priority' => '�u ti�n',
        'Priority Update' => '',
        'State' => 'Tr�ng th�i',
        'Compose' => 'T�o',
        'Pending' => '�ang treo',
        'Owner' => 'Ph� tr�ch',
        'Owner Update' => 'C�p nh�t ph� tr�ch',
        'Responsible' => 'Ch�u tr�ch nhi�m',
        'Responsible Update' => 'C�p nh�t tr�ch nhi�m',
        'Sender' => 'Ng߶i g�i',
        'Article' => 'B�i vi�t',
        'Ticket' => 'Th�',
        'Createtime' => 'Th�i gian kh�i t�o',
        'plain' => 'g�c',
        'Email' => 'E-Mail',
        'email' => 'E-Mail',
        'Close' => '��ng',
        'Action' => 'H�nh �ng',
        'Attachment' => '��nh k�m',
        'Attachments' => '��nh k�m',
        'This message was written in a character set other than your own.' => 'Tin nh�n n�y �� ���c vi�t b�ng b� k� t� kh�c v�i c�a b�n.',
        'If it is not displayed correctly,' => 'N�u n� kh�ng hi�n th� ch�nh x�c,',
        'This is a' => '��y l� m�t',
        'to open it in a new window.' => 'm� trong c�a s� m�i',
        'This is a HTML email. Click here to show it.' => '��y l� m�t email HTML. Nh�n chu�t v�o ��y � xem.',
        'Free Fields' => 'C�c tr߶ng t� do',
        'Merge' => 'Tr�n',
        'merged' => '�� tr�n',
        'closed successful' => '��ng th�nh c�ng',
        'closed unsuccessful' => '��ng kh�ng th�nh c�ng',
        'new' => 'm�i',
        'open' => 'm�',
        'Open' => '',
        'closed' => '��ng',
        'Closed' => '',
        'removed' => 'g� b�',
        'pending reminder' => '�ang treo nh�c nh�',
        'pending auto' => '�ang treo t� �ng',
        'pending auto close+' => '�ang treo t� �ng ��ng+',
        'pending auto close-' => '�ang treo t� �ng ��ng-',
        'email-external' => 'E-mail b�n ngo�i',
        'email-internal' => 'E-mail n�i b�',
        'note-external' => 'l�u � b�n ngo�i',
        'note-internal' => 'l�u � n�i b�',
        'note-report' => 'l�u � b�o c�o',
        'phone' => '�i�n tho�i',
        'sms' => 'tin nh�n sms',
        'webrequest' => 'y�u c�u web',
        'lock' => 'kh�a',
        'unlock' => 'kh�ng kh�a',
        'very low' => 'r�t ch�m',
        'low' => 'ch�m',
        'normal' => 'b�nh th߶ng',
        'high' => 'cao',
        'very high' => 'r�t cao',
        '1 very low' => '1 r�t ch�m',
        '2 low' => '2 ch�m',
        '3 normal' => '3 b�nh th߶ng',
        '4 high' => '4 cao',
        '5 very high' => '5 r�t cao',
        'Ticket "%s" created!' => 'Th� "%s" �� ���c t�o!',
        'Ticket Number' => 'S� th�',
        'Ticket Object' => 'Яi t��ng th�',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Kh�ng c� th� n�o c� s� "%s" nh� v�y! Kh�ng th� li�n k�t t�i ��!',
        'Don\'t show closed Tickets' => 'Kh�ng hi�n th� c�c th� �� ��ng',
        'Show closed Tickets' => 'Hi�n th� c�c th� �� ��ng',
        'New Article' => 'B�i vi�t m�i',
        'Email-Ticket' => 'Th� e-mail',
        'Create new Email Ticket' => 'T�o th� e-mail m�i',
        'Phone-Ticket' => 'Th� Cu�c g�i',
        'Search Tickets' => 'T�m ki�m th�',
        'Edit Customer Users' => 'S�a ng߶i d�ng kh�ch h�ng',
        'Edit Customer Company' => '',
        'Bulk Action' => 'L�nh l�',
        'Bulk Actions on Tickets' => 'L�nh l� tr�n c�c th�',
        'Send Email and create a new Ticket' => 'G�i e-mail v� t�o 1 th� m�i',
        'Create new Email Ticket and send this out (Outbound)' => 'T�o 1 th� e-mail m�i v� g�i ra ngo�i',
        'Create new Phone Ticket (Inbound)' => 'T�o th� cu�c g�i m�i (v�o trong)',
        'Overview of all open Tickets' => 'T�ng quan t�t c� c�c th� m�',
        'Locked Tickets' => 'C�c th� �� kh�a',
        'Watched Tickets' => 'C�c th� �� xem',
        'Watched' => '�� xem',
        'Subscribe' => 'X�c nh�n',
        'Unsubscribe' => 'Kh�ng x�c nh�n',
        'Lock it to work on it!' => 'Kh�a � l�m vi�c tr�n ��!',
        'Unlock to give it back to the queue!' => 'M� kh�a � ��a tr� v� h�ng ��i!',
        'Shows the ticket history!' => 'Xem l�ch s� th�!',
        'Print this ticket!' => 'In th� n�y!',
        'Change the ticket priority!' => 'Thay �i �u ti�n th�',
        'Change the ticket free fields!' => 'Thay �i c�c tr߶ng t� do c�a th�',
        'Link this ticket to an other objects!' => 'Li�n k�t th� n�y v�i c�c �i t��ng kh�c!',
        'Change the ticket owner!' => 'Thay �i ph� tr�ch th�!',
        'Change the ticket customer!' => 'Thay �i kh�ch h�ng th�!',
        'Add a note to this ticket!' => 'Th�m l�u � �i v�i th� n�y!',
        'Merge this ticket!' => 'Tr�n th� n�y!',
        'Set this ticket to pending!' => 'Thi�t �t treo th� n�y!',
        'Close this ticket!' => '��ng th� n�y!',
        'Look into a ticket!' => 'Xem x�t m�t th�!',
        'Delete this ticket!' => 'X�a th� n�y!',
        'Mark as Spam!' => '��nh d�u l� th� r�c!',
        'My Queues' => 'H�ng ��i c�a t�i',
        'Shown Tickets' => 'C�c th� ���c hi�n th�',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'E-mail c�a b�n v�i s� th� "<OTRS_TICKET>" ���c tr�n th�nh "<OTRS_MERGE_TO_TICKET>"!',
        'Ticket %s: first response time is over (%s)!' => 'Th� %s: l�n ph�n h�i �u ti�n qu� (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Th� %s: l�n ph�n h�i �u ti�n s� qu� %s!',
        'Ticket %s: update time is over (%s)!' => 'Th� %s: l�n c�p nh�t qu� (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Th� %s: l�n c�p nh�t s� qu� %s!',
        'Ticket %s: solution time is over (%s)!' => 'Ticket %s: L?sungszeit ist abgelaufen (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Th� %s: l�n gi�i ph�p s� qu� %s!',
        'There are more escalated tickets!' => 'C� nhi�u th� h�n!',
        'New ticket notification' => 'Th�ng b�o th� m�i',
        'Send me a notification if there is a new ticket in "My Queues".' => 'G�i th�ng b�o cho t�i n�u c� th� m�i trong "H�ng ��i c�a t�i".',
        'Follow up notification' => 'Th�ng b�o theo d�i',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'G�i th�ng b�o cho t�i n�u c� kh�ch h�ng g�i theo d�i v� t�i l� ph� tr�ch c�a th� n�y.',
        'Ticket lock timeout notification' => 'Th�ng b�o th�i gian ch� kh�a th�',
        'Send me a notification if a ticket is unlocked by the system.' => 'G�i th�ng b�o cho t�i n�u m�t th� ch�a ���c kh�a b�i h� th�ng.',
        'Move notification' => 'Th�ng b�o chuy�n',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'G�i th�ng b�o cho t�i n�u m�t th� ���c chuy�n v�o trong "H�ng ��i c�a t�i".',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'L�a ch�n h�ng ��i trong s� c�c h�ng ��i �a th�ch c�a b�n. B�n c�ng s� nh�n ���c th�ng b�o v� ch�ng th�ng qua email n�u ch�c n�ng ���c k�ch ho�t',
        'Custom Queue' => '',
        'QueueView refresh time' => 'Th�i gian l�m m�i H�ng ��i',
        'Screen after new ticket' => 'M�n h�nh sau khi t�o th� m�i',
        'Select your screen after creating a new ticket.' => 'H�y l�a ch�n m�n h�nh sau khi t�o m�t th� m�i.',
        'Closed Tickets' => 'C�c th� �� ��ng',
        'Show closed tickets.' => 'Hi�n th� c�c th� �� ��ng.',
        'Max. shown Tickets a page in QueueView.' => 'C�c th� hi�n th� t�i �a tr�n m�i trang trong H�ng ��i.',
        'Watch notification' => '',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '',
        'Out Of Office' => '',
        'Select your out of office time.' => '',
        'CompanyTickets' => 'Th� c�ng ty',
        'MyTickets' => 'Th� c�a t�i',
        'New Ticket' => 'Th� m�i',
        'Create new Ticket' => 'T�o th� m�i',
        'Customer called' => 'Kh�ch h�ng ���c g�i',
        'phone call' => 'cu�c g�i',
        'Reminder Reached' => '',
        'Reminder Tickets' => '',
        'Escalated Tickets' => '',
        'New Tickets' => '',
        'Open Tickets / Need to be answered' => '',
        'Tickets which need to be answered!' => '',
        'All new tickets!' => '',
        'All tickets which are escalated!' => '',
        'All tickets where the reminder date has reached!' => '',
        'Responses' => 'C�c tr� l�i',
        'Responses <-> Queue' => 'C�c tr� l�i <-> H�ng ��i',
        'Auto Responses' => 'C�c tr� l�i t� �ng',
        'Auto Responses <-> Queue' => 'C�c tr� l�i t� �ng <-> H�ng ��i',
        'Attachments <-> Responses' => 'C�c ��nh k�m <-> C�c tr� l�i',
        'History::Move' => 'L�ch s�::Chuy�n.',
        'History::TypeUpdate' => 'L�ch s�::C�p nh�t lo�i.',
        'History::ServiceUpdate' => 'L�ch s�::C�p nh�t d�ch v�.',
        'History::SLAUpdate' => 'L�ch s�::C�p nh�t SLA "%s" (ID=%s).',
        'History::NewTicket' => 'L�ch s�::Th� m�i [%s] (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'L�ch s�::Theo d�i',
        'History::SendAutoReject' => 'L�ch s�::G�i t� ch�i t� �ng.',
        'History::SendAutoReply' => 'L�ch s�::G�i ph�n h�i t� �ng.',
        'History::SendAutoFollowUp' => 'L�ch s�::G�i theo d�i t� �ng.',
        'History::Forward' => 'L�ch s�::Chuy�n ti�p.',
        'History::Bounce' => 'L�ch s�::T� b�',
        'History::SendAnswer' => 'L�ch s�::G�i tr� l�i',
        'History::SendAgentNotification' => 'L�ch s�::G�i th�ng b�o cho nh�n vi�n ph� tr�ch',
        'History::SendCustomerNotification' => 'L�ch s�::G�i th�ng b�o kh�ch h�ng',
        'History::EmailAgent' => 'L�ch s�::Email nh�n vi�n',
        'History::EmailCustomer' => 'L�ch s�::Email kh�ch h�ng',
        'History::PhoneCallAgent' => 'L�ch s�::Cu�c g�i nh�n vi�n',
        'History::PhoneCallCustomer' => 'L�ch s�::Cu�c g�i kh�ch h�ng',
        'History::AddNote' => 'L�ch s�::Th�m l�u �',
        'History::Lock' => 'L�ch s�::Kh�a',
        'History::Unlock' => 'L�ch s�::M� kh�a',
        'History::TimeAccounting' => 'L�ch s�::Gi�i th�ch th�i gian',
        'History::Remove' => 'L�ch s�::G� b�',
        'History::CustomerUpdate' => 'L�ch s�::C�p nh�t kh�ch h�ng',
        'History::PriorityUpdate' => 'L�ch s�::C�p nh�t �u ti�n',
        'History::OwnerUpdate' => 'L�ch s�::C�p nh�t ph� tr�ch',
        'History::LoopProtection' => 'L�ch s�::B�o v� v�ng l�p',
        'History::Misc' => 'L�ch s�::Kh�c',
        'History::SetPendingTime' => 'L�ch s�::Уt th�i gian treo',
        'History::StateUpdate' => 'L�ch s�::C�p nh�t tr�ng th�i',
        'History::TicketFreeTextUpdate' => 'L�ch s�::C�p nh�t th�',
        'History::WebRequestCustomer' => 'L�ch s�::Kh�ch h�ng y�u c�u web',
        'History::TicketLinkAdd' => 'L�ch s�::Th�m li�n k�t th�',
        'History::TicketLinkDelete' => 'L�ch s�::X�a li�n k�t th�',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

        # Template: AAAWeekDay
        'Sun' => 'Ch� nh�t',
        'Mon' => 'Th� hai',
        'Tue' => 'Th� ba',
        'Wed' => 'Th� t�',
        'Thu' => 'Th� n�m',
        'Fri' => 'Th� s�u',
        'Sat' => 'Th� b�y',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Qu�n tr� ��nh k�m',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Qu�n tr� ph�n h�i t� �ng',
        'Response' => 'Ph�n h�i',
        'Auto Response From' => 'Ph�n h�i t� �ng t�',
        'Note' => 'L�u �',
        'Useable options' => 'C�c t�y ch�n c� th� s� d�ng',
        'To get the first 20 character of the subject.' => 'L�y 20 k� t� �u ti�n c�a ti�u �',
        'To get the first 5 lines of the email.' => 'L�y 5 d�ng �u ti�n c�a email',
        'To get the realname of the sender (if given).' => 'L�y t�n th�c c�a ng߶i g�i (n�u �� cho)',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'L�y thu�c t�nh b�i vi�t (v� d�: (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'C�c t�y ch�n c�a d� li�u ng߶i d�ng kh�ch h�ng hi�n t�i (v� d�: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'C�c t�y ch�n c�a ph� tr�ch th� (v� d�: <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'C�c t�y ch�n tr�ch nhi�m th� (v� d�:<OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'C�c t�y ch�n c�a ng߶i d�ng kh�ch h�ng y�u c�u h�nh �ng n�y (v� d�: <OTRS_CURRENT_UserFirstname).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'C�c t�y ch�n c�a d� li�u th� (v� d�: <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'T�y ch�n c�u h�nh (v� d�: <OTRS_CONFIG_HttpType).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Qu�n tr� c�ng ty kh�ch h�ng',
        'Search for' => 'T�m ki�m cho',
        'Add Customer Company' => 'Th�m c�ng ty kh�ch h�ng',
        'Add a new Customer Company.' => 'Th�m 1 c�ng ty kh�ch h�ng m�i',
        'List' => 'Danh s�ch',
        'This values are required.' => 'Gi� tr� n�y ���c y�u c�u',
        'This values are read only.' => 'Gi� tr� n�y ch� ��c',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => 'Tin nh�n �ang so�n b� ��ng. �ang tho�t.',
        'This window must be called from compose window' => 'C�a s� n�y c�n ph�i ���c g�i t� c�a s� so�n th�o',
        'Customer User Management' => 'Qu�n tr� ng߶i d�ng kh�ch h�ng',
        'Add Customer User' => 'Th�m ng߶i d�ng kh�ch h�ng',
        'Source' => 'Ngu�n',
        'Create' => 'T�o',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'Ng߶i d�ng kh�ch h�ng s� c�n c� m�t l�ch s� kh�ch h�ng v� ��ng nh�p th�ng qua b�ng �i�u khi�n kh�ch h�ng',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'Ng߶i d�ng kh�ch h�ng <-> Qu�n tr� nh�m',
        'Change %s settings' => 'Thay �i %s thi�t �t',
        'Select the user:group permissions.' => 'L�a ch�n ng߶i d�ng: c�c quy�n c�a nh�m.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'N�u kh�ng ch�n c�i g� th� s� kh�ng c� quy�n n�o trong nh�m n�y (c�c th� s� kh�ng s�n s�ng s� d�ng �i v�i ng߶i d�ng).',
        'Permission' => 'Quy�n',
        'ro' => 'Ch� ��c',
        'Read only access to the ticket in this group/queue.' => 'Quy�n ch� ��c truy c�p v�o th� trong nh�m/h�ng ��i n�y.',
        'rw' => '��c v� ghi',
        'Full read and write access to the tickets in this group/queue.' => 'Quy�n ��c v� ghi truy c�p v�o th� trong nh�m/h�ng ��i n�y.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Ng߶i d�ng kh�ch h�ng <-> Qu�n tr� d�ch v�',
        'CustomerUser' => 'Ng߶i d�ng kh�ch h�ng',
        'Service' => 'D�ch v�',
        'Edit default services.' => 'S�a d�ch v� m�c �nh.',
        'Search Result' => 'K�t qu� t�m ki�m',
        'Allocate services to CustomerUser' => 'Ph�n ph�i d�ch v� t�i ng߶i d�ng kh�ch h�ng',
        'Active' => 'Ho�t �ng',
        'Allocate CustomerUser to service' => 'Ph�n ph�i ng߶i d�ng kh�ch h�ng t�i d�ch v�',

        # Template: AdminEmail
        'Message sent to' => 'Tin nh�n ���c g�i t�i',
        'Recipents' => 'Ng߶i nh�n',
        'Body' => 'N�i dung',
        'Send' => 'G�i',

        # Template: AdminGenericAgent
        'GenericAgent' => 'Nh�n vi�n ph� tr�ch chung',
        'Job-List' => 'Danh s�ch c�ng vi�c',
        'Last run' => 'L�n v�n h�nh tr߾c',
        'Run Now!' => 'V�n h�nh ngay!',
        'x' => 'x',
        'Save Job as?' => 'L�u c�ng vi�c?',
        'Is Job Valid?' => 'C�ng vi�c c� h�p l�?',
        'Is Job Valid' => 'C�ng vi�c c� h�p l�',
        'Schedule' => 'K� ho�ch',
        'Currently this generic agent job will not run automatically.' => '',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'T�m ki�m trong b�i vi�t (v� d�: "Mar*in" ho�c "Baue*")',
        '(e. g. 10*5155 or 105658*)' => 'v� d�: 10*5144 ho�c 105658*',
        '(e. g. 234321)' => 'v� d�: 234321',
        'Customer User Login' => '��ng nh�p ng߶i d�ng kh�ch h�ng',
        '(e. g. U5150)' => 'v� d�: U5150',
        'SLA' => 'SLA',
        'Agent' => 'Nh�n vi�n',
        'Ticket Lock' => 'Kh�a th�',
        'TicketFreeFields' => 'C�c tr߶ng kh�ng th�',
        'Create Times' => 'C�c l�n kh�i t�o',
        'No create time settings.' => 'Kh�ng c� thi�t �t l�n kh�i t�o',
        'Ticket created' => 'Th� �� t�o',
        'Ticket created between' => 'Th� �� t�o gi�a',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending Times' => 'C�c l�n treo',
        'No pending time settings.' => 'Kh�ng c� thi�t �t l�n treo',
        'Ticket pending time reached' => 'L�n treo th� �� ��t t�i',
        'Ticket pending time reached between' => 'L�n treo th� �� ��t t�i gi�a',
        'Escalation Times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - First Response Time' => 'Ti�p t�c - Th�i gian ph�n h�i �u ti�n',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - Update Time' => 'Ti�p t�c - Th�i gian c�p nh�t',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - Solution Time' => 'Ti�p t�c - Th�i gian gi�i ph�p',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'New Service' => '',
        'New SLA' => '',
        'New Priority' => '�u ti�n m�i',
        'New Queue' => 'H�ng ��i m�i',
        'New State' => 'Tr�ng th�i m�i',
        'New Agent' => 'Nh�n vi�n m�i',
        'New Owner' => 'Ph� tr�ch m�i',
        'New Customer' => 'Kh�ch h�ng m�i',
        'New Ticket Lock' => 'Kh�a th� m�i',
        'New Type' => '',
        'New Title' => '',
        'New TicketFreeFields' => 'C�c tr߶ng kh�ng th� m�i',
        'Add Note' => 'Th�m l�u �',
        'Time units' => 'C�c �n v� th�i gian',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'L�nh n�y s� ���c ch�y. ARG[0] s� l� s� th�. ARG[1] l� m� th�.',
        'Delete tickets' => 'X�a th�',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'L�u �! C�c th� n�y s� b� g� b� kh�i c� s� d� li�u! C�c th� n�y s� b� m�t!',
        'Send Notification' => 'G�i th�ng b�o',
        'Param 1' => 'Tham s� 1',
        'Param 2' => 'Tham s� 2',
        'Param 3' => 'Tham s� 3',
        'Param 4' => 'Tham s� 4',
        'Param 5' => 'Tham s� 5',
        'Param 6' => 'Tham s� 6',
        'Send agent/customer notifications on changes' => '',
        'Save' => 'L�u',
        '%s Tickets affected! Do you really want to use this job?' => '%s th� b� �nh h߷ng! B�n c� th�c s� mu�n d�ng c�ng vi�c n�y?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '',
        'Group Management' => 'Qu�n tr� nh�m',
        'Add Group' => 'Th�m nh�m',
        'Add a new Group.' => 'Th�m 1 nh�m m�i.',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Nh�m qu�n tr� l�y trong khu v�c qu�n tr� v� nh�m th�ng k� l�y trong khu v�c th�ng k�.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'T�o c�c nh�m m�i � �i�u khi�n quy�n truy c�p cho c�c nh�m nh�n vi�n kh�c nhau (v� d�: b� ph�n mua h�ng, b� ph�n h� tr�, b� ph�n kinh doanh,...).',
        'It\'s useful for ASP solutions.' => 'N� h�u �ch cho gi�i ph�p ASP.',

        # Template: AdminLog
        'System Log' => 'B�n ghi h� th�ng',
        'Time' => 'Th�i giab',

        # Template: AdminMailAccount
        'Mail Account Management' => '',
        'Host' => 'M�y ch� host',
        'Trusted' => 'Tin c�y',
        'Dispatching' => '�ang g�i',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'T�t c� c�c email �n v�i 1 t�i kho�n s� ���c g�i v�o trong h�ng ��i �� ch�n!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'N�u t�i kho�n c�a b�n l� ��ng tin c�y, �u trang X-OTRS �� c� t�i th�i gian �n (cho m�c � �u ti�n, ...) s� ���c s� d�ng! B� l�c PostMaster c�ng s� ���c d�ng.',

        # Template: AdminNavigationBar
        'Users' => 'Ng߶i d�ng',
        'Groups' => 'Nh�m',
        'Misc' => 'Kh�c',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Qu�n tr� th�ng b�o',
        'Add Notification' => '',
        'Add a new Notification.' => '',
        'Name is required!' => 'T�n ���c y�u c�u!',
        'Event is required!' => '',
        'A message should have a subject!' => 'Th� n�n c� ti�u �!',
        'A message should have a body!' => 'Tin nh�n n�n c� n�i dung!',
        'Recipient' => '',
        'Group based' => '',
        'Agent based' => '',
        'Email based' => '',
        'Article Type' => '',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '',
        'Body match' => '',
        'Notifications are sent to an agent or a customer.' => 'C�c th�ng b�o �� ���c g�i t�i 1 nh�n vi�n ho�c kh�ch h�ng.',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => 'Th�ng b�o',

        # Template: AdminPackageManager
        'Package Manager' => 'Qu�n tr� g�i',
        'Uninstall' => 'G� c�i �t',
        'Version' => 'Phi�n b�n',
        'Do you really want to uninstall this package?' => 'B�n c� th�c s� mu�n g� c�i �t g�i n�y?',
        'Reinstall' => 'C�i l�i',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'B�n c� th�c s� mu�n c�i l�i �t g�i n�y (t�t c� nh�ng thay �i b� m�t)?',
        'Continue' => 'Ti�p t�c',
        'Install' => 'C�i �t',
        'Package' => 'G�i',
        'Online Repository' => 'Kho tr�c tuy�n',
        'Vendor' => 'Ng߶i b�n',
        'Module documentation' => '',
        'Upgrade' => 'N�ng c�p',
        'Local Repository' => 'Kho c�c b�',
        'Status' => 'Tr�ng th�i',
        'Overview' => 'T�ng quan',
        'Download' => 'T�i xu�ng',
        'Rebuild' => 'D�ng l�i',
        'ChangeLog' => 'B�n ghi thay �i',
        'Date' => 'D� li�u',
        'Filelist' => 'Danh s�ch file',
        'Download file from package!' => 'T�i file t� g�i xu�ng!',
        'Required' => '���c y�u c�u',
        'PrimaryKey' => 'Kh�a ch�nh',
        'AutoIncrement' => 'Gia t�ng t� �ng',
        'SQL' => 'SQL',
        'Diff' => 'Kh�c nhau',

        # Template: AdminPerformanceLog
        'Performance Log' => 'B�n ghi th�c thi',
        'This feature is enabled!' => 'T�nh n�ng n�y �� ���c k�ch ho�t!',
        'Just use this feature if you want to log each request.' => 'Ch� s� d�ng t�nh n�ng n�y n�u b�n mu�n ghi m�i y�u c�u.',
        'Activating this feature might affect your system performance!' => '',
        'Disable it here!' => 'V� hi�u h�a t�i ��y!',
        'This feature is disabled!' => 'T�nh n�ng n�y �� b� v� hi�u h�a!',
        'Enable it here!' => 'K�ch ho�t t�i ��y!',
        'Logfile too large!' => 'File b�n ghi qu� l�n!',
        'Logfile too large, you need to reset it!' => 'File b�n ghi qu� l�n, b�n c�n thi�t �t l�i!',
        'Range' => 'D�i',
        'Interface' => 'Giao di�n',
        'Requests' => 'Y�u c�u',
        'Min Response' => 'Ph�n h�i t�i thi�u',
        'Max Response' => 'Ph�n h�i t�i �a',
        'Average Response' => 'Ph�n h�i trung b�nh',
        'Period' => '',
        'Min' => '',
        'Max' => '',
        'Average' => '',

        # Template: AdminPGPForm
        'PGP Management' => 'Qu�n tr� PGP',
        'Result' => 'K�t qu�',
        'Identifier' => 'T� �nh danh',
        'Bit' => 'Bit',
        'Key' => 'Kh�a',
        'Fingerprint' => 'D�u tay',
        'Expires' => 'H�t h�n',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'Theo c�ch n�y b�n c� th� s�a tr�c ti�p c�u h�nh kh�a trong C�u h�nh h� th�ng.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Qu�n tr� b� l�c PostMaster',
        'Filtername' => 'L�c t�n',
        'Stop after match' => '',
        'Match' => 'K�t h�p',
        'Value' => 'Gi� tr�',
        'Set' => 'Thi�t �t',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'G�i ho�c l�c c�c email �n d�a tr�n X-Headers email! RegExp c�ng c� th�.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'N�u b�n mu�n k�t h�p c�c �a ch� email, h�y d�ng EMAILADDRESS:info@example.com trong tr߶ng T�, Ъn ho�c Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'N�u b�n d�ng RegExp, b�n c�ng c� th� s� d�ng gi� tr� k�t h�p trong () th�nh [***] trong \'Thi�t �t\'.',

        # Template: AdminPriority
        'Priority Management' => '',
        'Add Priority' => '',
        'Add a new Priority.' => '',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'H�ng ��i <-> Qu�n tr� ph�n h�i t� �ng',
        'settings' => '',

        # Template: AdminQueueForm
        'Queue Management' => 'Qu�n tr� h�ng ��i',
        'Sub-Queue of' => 'H�ng ��i con c�a',
        'Unlock timeout' => 'Th�i gian ch� m� kh�a',
        '0 = no unlock' => '0 = kh�ng m� kh�a',
        'Only business hours are counted.' => '',
        '0 = no escalation' => '0 = kh�ng ti�p t�c',
        'Notify by' => '',
        'Follow up Option' => 'Theo d�i t�y ch�n',
        'Ticket lock after a follow up' => 'Kh�a th� sau khi theo d�i',
        'Systemaddress' => 'иa ch� h� th�ng',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'N�u 1 nh�n vi�n kh�a th� v� h� kh�ng g�i tr� l�i trong th�i gian n�y, th� s� ���c t� �ng m� kh�a. Do v�y t�t c� c�c nh�n vi�n kh�c �u c� th� nh�n th�y th� ��.',
        'Escalation time' => 'Th�i gian ti�p t�c',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'N�u m�t th� kh�ng ���c tr� l�i trong th�i gian n�y, ch� duy nh�t th� n�y s� ���c hi�n th�.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'N�u m�t th� ���c ��ng v� kh�ch h�ng g�i theo d�i, th� s� b� kh�a cho ng߶i ph� tr�ch c�.',
        'Will be the sender address of this queue for email answers.' => 'S� l� �a ch� ng߶i g�i c�a h�ng ��i n�y cho c�c email tr� l�i.',
        'The salutation for email answers.' => 'L�i ch�o cho c�c email tr� l�i.',
        'The signature for email answers.' => 'Ch� k� cho c�c email tr� l�i.',
        'Customer Move Notify' => 'Th�ng b�o chuy�n kh�ch h�ng',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS g�i m�t email th�ng b�o t�i kh�ch h�ng n�u th� ���c chuy�n.',
        'Customer State Notify' => 'Th�ng b�o tr�ng th�i kh�ch h�ng',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS g�i m�t email th�ng b�o t�i kh�ch h�ng n�u tr�ng th�i th� thay �i.',
        'Customer Owner Notify' => 'Th�ng b�o ph� tr�ch kh�ch h�ng',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS g�i m�t email th�ng b�o t�i kh�ch h�ng n�u ph� tr�ch th� thay �i.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'Ph�n h�i <-> Qu�n tr� h�ng ��i',

        # Template: AdminQueueResponsesForm
        'Answer' => 'Tr� l�i',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'Ph�n h�i <-> Qu�n tr� ��nh k�m',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Qu�n tr� ph�n h�i',
        'A response is default text to write faster answer (with default text) to customers.' => 'M�t ph�n h�i l� m�t v�n b�n m�c �nh ���c vi�t c�u tr� l�i nhanh g�i cho kh�ch h�ng.',
        'Don\'t forget to add a new response a queue!' => '��ng qu�n th�m ph�n h�i m�i v�o h�ng ��i!',
        'The current ticket state is' => 'Tr�ng th�i th� hi�n t�i l�',
        'Your email address is new' => 'иa ch� email c�a b�n l� m�i',

        # Template: AdminRoleForm
        'Role Management' => 'Qu�n tr� vai tr�',
        'Add Role' => 'Th�m vai tr�',
        'Add a new Role.' => 'Th�m vai tr� m�i.',
        'Create a role and put groups in it. Then add the role to the users.' => 'T�o 1 vai tr� v� �t c�c nh�m v�o ��. R�i th�m vai tr� cho ng߶i d�ng.',
        'It\'s useful for a lot of users and groups.' => 'N� h�u �ch �i v�i nhi�u ng߶i d�ng v� nh�m.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'Vai tr� <-> Qu�n tr� nh�m',
        'move_into' => 'chuy�n t�i',
        'Permissions to move tickets into this group/queue.' => 'C�c quy�n � chuy�n th� v�o trong nh�m/h�ng ��i n�y.',
        'create' => 't�o',
        'Permissions to create tickets in this group/queue.' => 'C�c quy�n � t�o th� trong nh�m/h�ng ��i n�y.',
        'owner' => 'ph� tr�ch',
        'Permissions to change the ticket owner in this group/queue.' => 'C�c quy�n � thay �i ph� tr�ch th� trong nh�m/h�ng ��i n�y.',
        'priority' => '�u ti�n',
        'Permissions to change the ticket priority in this group/queue.' => 'C�c quy�n � thay �i �u ti�n th� trong nh�m/h�ng ��i n�y.',

        # Template: AdminRoleGroupForm
        'Role' => 'Vai tr�',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'Vai tr� <-> Qu�n tr� ng߶i d�ng',
        'Select the role:user relations.' => 'Ch�n m�i quan h� vai tr�:ng߶i d�ng.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Qu�n tr� l�i ch�o',
        'Add Salutation' => 'Th�m l�i ch�o',
        'Add a new Salutation.' => 'Th�m l�i ch�o m�i.',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' => '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => '',
        'Go' => 'T�i',
        'Select Box Result' => 'Ch�n � k�t qu�',

        # Template: AdminService
        'Service Management' => 'Qu�n tr� d�ch v�',
        'Add Service' => 'Th�m d�ch v�',
        'Add a new Service.' => 'Th�m d�ch v� m�i.',
        'Sub-Service of' => 'D�ch v� con c�a',

        # Template: AdminSession
        'Session Management' => 'Qu�n tr� phi�n',
        'Sessions' => 'C�c phi�n',
        'Uniq' => 'Duy nh�t',
        'Kill all sessions' => 'X�a t�t c� c�c phi�n',
        'Session' => 'Phi�n',
        'Content' => 'N�i dung',
        'kill session' => 'x�a phi�n',

        # Template: AdminSignatureForm
        'Signature Management' => 'Qu�n tr� ch� k�',
        'Add Signature' => 'Th�m ch� k�',
        'Add a new Signature.' => 'Th�m ch� k� m�i.',

        # Template: AdminSLA
        'SLA Management' => 'Qu�n tr� SLA',
        'Add SLA' => 'Th�m SLA',
        'Add a new SLA.' => 'Th�m SLA m�i.',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'Qu�n tr� S/MIME',
        'Add Certificate' => 'Th�m ch�ng ch�',
        'Add Private Key' => 'Th�m kh�a c� nh�n',
        'Secret' => 'B� m�t',
        'Hash' => 'B�m',
        'In this way you can directly edit the certification and private keys in file system.' => 'Theo c�ch n�y b�n c� th� s�a ch�ng ch� v� kh�a c� nh�n tr�c ti�p trong h� th�ng file.',

        # Template: AdminStateForm
        'State Management' => 'Qu�n tr� tr�ng th�i',
        'Add State' => 'Th�m tr�ng th�i',
        'Add a new State.' => 'Th�m tr�ng th�i m�i.',
        'State Type' => 'Lo�i tr�ng th�i',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'H�y l�u � r�ng b�n �� c�p nh�t c�c tr�ng th�i m�c �nh trong Kernel/Config.pm!',
        'See also' => 'Xem',

        # Template: AdminSysConfig
        'SysConfig' => 'C�u h�nh h� th�ng',
        'Group selection' => 'L�a ch�n nh�m',
        'Show' => 'Hi�n th�',
        'Download Settings' => 'C�c thi�t �t t�i xu�ng',
        'Download all system config changes.' => 'T�i xu�ng c�c thay �i c�u h�nh h� th�ng.',
        'Load Settings' => 'C�c thi�t �t t�i',
        'Subgroup' => 'Nh�m con',
        'Elements' => 'C�c th�nh t�',

        # Template: AdminSysConfigEdit
        'Config Options' => 'C�c t�y ch�n c�u h�nh',
        'Default' => 'M�c �nh',
        'New' => 'M�i',
        'New Group' => 'Nh�m m�i',
        'Group Ro' => 'Nh�m ch� ��c',
        'New Group Ro' => 'Nh�m ch� ��c m�i',
        'NavBarName' => 'T�n thanh �i�u h߾ng',
        'NavBar' => 'Thanh �i�u h߾ng',
        'Image' => '�nh',
        'Prio' => '�u ti�n',
        'Block' => 'Kh�i',
        'AccessKey' => 'Ph�m truy c�p',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Qu�n tr� �a ch� email h� th�ng',
        'Add System Address' => 'Th�m �a ch� h� th�ng',
        'Add a new System Address.' => 'Th�m �a ch� h� th�ng m�i.',
        'Realname' => 'T�n th�c',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'T�t c� c�c email �n v�i c� t� "Email" (T�i:) s� ���c g�i v�o trong h�ng ��i �� ch�n.',

        # Template: AdminTypeForm
        'Type Management' => 'Qu�n tr� lo�i',
        'Add Type' => 'Th�m lo�i',
        'Add a new Type.' => 'Th�m lo�i m�i.',

        # Template: AdminUserForm
        'User Management' => 'Qu�n tr� ng߶i d�ng',
        'Add User' => 'Th�m ng߶i d�ng',
        'Add a new Agent.' => 'Th�m m�t nh�n vi�n m�i.',
        'Login as' => '��ng nh�p v�i',
        'Firstname' => 'H�',
        'Lastname' => 'T�n',
        'Start' => 'b�t �u',
        'End' => '',
        'User will be needed to handle tickets.' => 'Ng߶i d�ng s� c�n �i�u khi�n th�.',
        'Don\'t forget to add a new user to groups and/or roles!' => '��ng qu�n th�m m�t ng߶i d�ng m�i v�o nh�m v�/ho�c vai tr�!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'Ng߶i d�ng <-> Qu�n tr� nh�m',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'S� �a ch�',
        'Return to the compose screen' => 'Tr� l�i m�n h�nh so�n',
        'Discard all changes and return to the compose screen' => 'T� b� m�i thay �i v� tr� l�i m�n h�nh so�n',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerSearch

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => '',
        'more' => '',
        'Collapse' => '',

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
        'Info' => 'Th�ng tin',

        # Template: AgentLinkObject
        'Link Object: %s' => '',
        'Object' => 'Яi t��ng',
        'Link Object' => 'Яi t��ng li�n k�t',
        'with' => 'v�i',
        'Select' => 'Ch�n',
        'Unlink Object: %s' => '',

        # Template: AgentLookup
        'Lookup' => 'Tra',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Ki�m tra ch�nh t�',
        'spelling error(s)' => 'L�i ch�nh t�',
        'or' => 'ho�c',
        'Apply these changes' => '�p d�ng nh�ng thay �i n�y',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'B�n c� th�c s� mu�n x�a �i t��ng n�y kh�ng?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'L�a ch�n c�c gi�i h�n �c tr�ng cho th�ng k�',
        'Fixed' => '�� s�a',
        'Please select only one element or turn off the button \'Fixed\'.' => 'H�y ch�n ch� 1 th�nh t� ho�c t�t n�t \'�� s�a\'!',
        'Absolut Period' => 'Chu k� tuy�t �i',
        'Between' => 'Gi�a',
        'Relative Period' => 'Chu k� li�n quan',
        'The last' => 'Cu�i c�ng',
        'Finish' => 'K�t th�c',
        'Here you can make restrictions to your stat.' => 'B�n c� th� t�o c�c gi�i h�n cho th�ng k� t�i ��y.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'N�u b�n b� ��nh d�u trong � "�� s�a", nh�n vi�n ph� tr�ch sinh th�ng k� c� th� thay �i c�c thu�c t�nh c�a th�nh t� li�n quan.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Ch�n c�u h�nh chung',
        'Permissions' => 'C�c quy�n',
        'Format' => 'иnh d�ng',
        'Graphsize' => 'C� bi�u �',
        'Sum rows' => 'T�ng s� h�ng',
        'Sum columns' => 'T�ng s� c�t',
        'Cache' => 'L�u tr�',
        'Required Field' => 'Tr߶ng b�t bu�c',
        'Selection needed' => 'L�a ch�n c�n',
        'Explanation' => 'Gi�i th�ch',
        'In this form you can select the basic specifications.' => 'Trong m�u n�y b�n c� th� ch�n c�c �c t� c� b�n.',
        'Attribute' => 'Thu�c t�nh',
        'Title of the stat.' => 'Ti�u � th�ng k�.',
        'Here you can insert a description of the stat.' => 'B�n c� th� ch�n m� t� th�ng k� t�i ��y.',
        'Dynamic-Object' => 'Яi t��ng �ng',
        'Here you can select the dynamic object you want to use.' => 'B�n c� th� ch�n �i t��ng �ng mu�n s� d�ng t�i ��y.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(L�u �: N� ph� thu�c v�o c�i �t c�a b�n c� bao nhi�u �i t��ng �ng b�n mu�n d�ng)',
        'Static-File' => 'File t�nh',
        'For very complex stats it is possible to include a hardcoded file.' => 'Яi v�i c�c th�ng k� ph�c t�p c� th� bao g�m c� file �� m� h�a.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'N�u m�t file �� m� h�a s�n s�ng s� d�ng, thu�c t�nh n�y s� ���c hi�n th� v� b�n c� th� ch�n n�.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'C�c thi�t �t quy�n. B�n c� th� l�a ch�n 1 ho�c nhi�u nh�m � t�o th�ng k� �� ���c c�u h�nh m� c�c nh�n vi�n kh�c nhau �u c� th� nh�n th�y.',
        'Multiple selection of the output format.' => 'Nhi�u l�a ch�n c�a �nh d�ng �u ra.',
        'If you use a graph as output format you have to select at least one graph size.' => 'N�u b�n d�ng m�t bi�u � l�m �nh d�ng �u ra, b�n ph�i ch�n �t nh�t 1 c� bi�u �.',
        'If you need the sum of every row select yes' => 'N�u b�n c�n t�ng s� h�ng, H�y ch�n \'C�\'.',
        'If you need the sum of every column select yes.' => 'N�u b�n c�n t�ng s� c�t, H�y ch�n \'C�\'.',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'H�u h�t c�c th�ng k� �u c� th� ���c l�u. �i�u n�y s� �y nhanh t�c � tr�nh di�n c�a th�ng k�.',
        '(Note: Useful for big databases and low performance server)' => '(L�u �: H�u d�ng �i v�i c�c c� s� d� li�u l�n v� m�y ch� c�u h�nh th�p)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Яi v�i th�ng k� kh�ng h�p l�, kh�ng kh� thi � sinh th�ng k�.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '�i�u n�y s� c� �ch n�u b�n mu�n kh�ng ai c� th� l�y k�t qu� c�a th�ng k� ho�c th�ng k� kh�ng s�n s�ng ���c c�u h�nh.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'Ch�n c�c th�nh t� cho chu�i gi� tr�',
        'Scale' => 'Ph�m vi',
        'minimal' => 't�i thi�u',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'H�y nh� r�ng, ph�m vi cho chu�i gi� tr� ph�i l�n h�n ph�m vi cho tr�c X (v� d�: tr�c X => Th�ng; Chu�i gi� tr� => N�m).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'B�n c� th� �nh ngh�a chu�i gi� tr� t�i ��y. B�n c� kh� n�ng chon 1 ho�c 2 th�nh t�. Sau �� c� th� ch�n c�c thu�c t�nh c�a th�nh t�. M�i thu�c t�nh s� ���c hi�n th� l� m�t chu�i gi� tr� �n l�. N�u kh�ng ch�n thu�c t�nh n�o, t�t c� thu�c t�nh c�a th�nh t� s� ���c s� d�ng n�u b�n sinh th�ng k�. C�ng v�i �� m�t thu�c t�nh m�i c�ng ���c th�m k� t� l�n c�u h�nh cu�i c�ng.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'Ch�n th�nh t� s� d�ng tr�n tr�c X.',
        'maximal period' => 'chu k� t�i �a',
        'minimal scale' => 'ph�m vi t�i thi�u',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsImport
        'Import' => 'Nh�p',
        'File is not a Stats config' => 'File kh�ng ph�i l� m�t c�u h�nh th�ng k�',
        'No File selected' => 'Kh�ng c� file n�o ���c ch�n',

        # Template: AgentStatsOverview
        'Results' => 'K�t qu�',
        'Total hits' => 'T�ng s� l��t b�m',
        'Page' => 'Trang',

        # Template: AgentStatsPrint
        'Print' => 'In',
        'No Element selected.' => 'Kh�ng th�nh t� n�o ���c ch�n.',

        # Template: AgentStatsView
        'Export Config' => 'C�u h�nh xu�t',
        'Information about the Stat' => 'Th�ng tin v� th�ng k�',
        'Exchange Axis' => 'Tr�c trao �i',
        'Configurable params of static stat' => 'Tham s� c�u h�nh c�a th�ng k� t�nh',
        'No element selected.' => 'Kh�ng th�nh t� n�o ���c ch�n.',
        'maximal period from' => 'chu k� t�i �a t�',
        'to' => '�n',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'V�i c�c tr߶ng �u v�o v� �� ch�n b�n c� th� c�u h�nh th�ng k� theo y�u c�u. V�i c�c th�nh t� c�a m�t th�ng k� b�n c� th� s�a t�y theo ng߶i qu�n tr� th�ng k� �� �� c�u h�nh',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => 'M�t tin nh�n n�n c� tr߶ng ng߶i nh�n!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'B�n c�n �a ch� email trong tr߶ng T�i (v� d�: kunde@example.com)!',
        'Bounce ticket' => 'Th� �� b�',
        'Ticket locked!' => 'Th� kh�a!',
        'Ticket unlock!' => 'Th� m�!',
        'Bounce to' => 'T� b� t�',
        'Next ticket state' => 'Tr�ng th�i th� ti�p theo',
        'Inform sender' => 'Th�ng b�o ng߶i g�i',
        'Send mail!' => 'G�i mail!',

        # Template: AgentTicketBulk
        'You need to account time!' => 'B�n c�n t�i th�i gian t�i kho�n!',
        'Ticket Bulk Action' => 'L�nh l� tr�n th�',
        'Spell Check' => 'Ki�m tra ch�nh t�',
        'Note type' => 'Lo�i l�u �',
        'Next state' => 'Tr�ng th�i ti�p',
        'Pending date' => 'Ng�y treo',
        'Merge to' => 'Tr�n v�i',
        'Merge to oldest' => '',
        'Link together' => '',
        'Link to Parent' => '',
        'Unlock Tickets' => 'C�c th� m�',

        # Template: AgentTicketClose
        'Ticket Type is required!' => '',
        'A required field is:' => '',
        'Close ticket' => '��ng th�',
        'Previous Owner' => 'Ph� tr�ch tr߾c',
        'Inform Agent' => 'Nh�n vi�n th�ng b�o',
        'Optional' => 'T�y ch�n',
        'Inform involved Agents' => 'Th�ng b�o c�c nh�n vi�n li�n quan',
        'Attach' => '��nh k�m',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => 'Tin nh�n ph�i ���c ki�m tra ch�nh t�!',
        'Compose answer for ticket' => 'So�n tr� l�i cho th�',
        'Pending Date' => 'Ng�y treo',
        'for pending* states' => '�i v�i c�c tr�ng th�i treo*',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Thay �i kh�ch h�ng c�a th�',
        'Set customer user and customer id of a ticket' => 'Thi�t �t m� kh�ch h�ng v� ng߶i d�ng kh�ch h�ng c�a th�',
        'Customer User' => 'Ng߶i d�ng kh�ch h�ng',
        'Search Customer' => 'T�m ki�m kh�ch h�ng',
        'Customer Data' => 'D� li�u kh�ch h�ng',
        'Customer history' => 'L�ch s� kh�ch h�ng',
        'All customer tickets.' => 'T�t c� c�c th� kh�ch h�ng.',

        # Template: AgentTicketEmail
        'Compose Email' => 'So�n email',
        'new ticket' => 'th� m�i',
        'Refresh' => 'L�m m�i',
        'Clear To' => 'X�a t�i',
        'All Agents' => 'T�t c� nh�n vi�n',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Lo�i b�i vi�t',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Thay �i n�i dung th�',

        # Template: AgentTicketHistory
        'History of' => 'L�ch s� c�a',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => 'B�n c�n d�ng s� th�!',
        'Ticket Merge' => 'Tr�n th�',

        # Template: AgentTicketMove
        'Move Ticket' => 'Chuy�n th�',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Th�m l�u � cho th�',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => 'L�n ph�n h�i �u ti�n',
        'Service Time' => 'Th�i gian d�ch v�',
        'Update Time' => 'Th�i gian c�p nh�t',
        'Solution Time' => 'Th�i gian gi�i ph�p',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => 'B�n c�n t�i thi�u 1 th� ���c ch�n!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => 'L�c',
        'Change search options' => 'Thay �i t�y ch�n t�m ki�m',
        'Tickets' => 'C�c th�',
        'of' => 'c�a',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'So�n tr� l�i',
        'Contact customer' => 'Li�n h� kh�ch h�ng',
        'Change queue' => 'Thay �i h�ng ��i',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 's�p x�p theo h߾ng t�ng',
        'up' => 'l�n',
        'sort downward' => 's�p x�p theo h߾ng gi�m',
        'down' => 'xu�ng',
        'Escalation in' => 'Ti�p t�c trong',
        'Locked' => '�� kh�a',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Thay �i ph� tr�ch th�',

        # Template: AgentTicketPending
        'Set Pending' => 'Thi�t �t treo',

        # Template: AgentTicketPhone
        'Phone call' => 'Cu�c g�i',
        'Clear From' => 'X�a t�',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'G�c',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Th�ng tin th�',
        'Accounted time' => 'Th�i gian k� khai',
        'Linked-Object' => 'Яi t��ng li�n k�t',
        'by' => 'b�i',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Thay �i m�c � �u ti�n c�a th�',

        # Template: AgentTicketQueue
        'Tickets shown' => 'C�c th� hi�n th�',
        'Tickets available' => 'C�c th� s�n s�ng s� d�ng',
        'All tickets' => 'T�t c� c�c th�',
        'Queues' => 'H�ng ��i',
        'Ticket escalation!' => 'C�c th� ti�p t�c!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Thay �i ng߶i ch�u tr�ch nhi�m c�a th�',

        # Template: AgentTicketSearch
        'Ticket Search' => 'T�m ki�m th�',
        'Profile' => 'H� s�',
        'Search-Template' => 'T�m ki�m m�u',
        'TicketFreeText' => 'N�i dung th�',
        'Created in Queue' => '�� t�o trong h�ng ��i',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '',
        'No change time settings.' => '',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => 'K�t qu� t�',
        'Save Search-Profile as Template?' => 'L�u h� s� t�m ki�m th�nh m�u?',
        'Yes, save it with name' => 'C�, l�u v�i c�ng m�t t�n',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'To�n b� v�n b�n',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => '',
        'Collapse View' => '',
        'Split' => 'Chia',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => '',
        'Save filter settings as default' => '',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'Truy nguy�n',

        # Template: CustomerFooter
        'Powered by' => 'Ch�y tr�n n�n',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => '��ng nh�p',
        'Lost your password?' => 'M�t m�t kh�u?',
        'Request new password' => 'Y�u c�u m�t kh�u m�i',
        'Create Account' => 'T�o t�i kho�n',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Ch�o m�ng %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'L�n',
        'No time settings.' => 'Kh�ng c� thi�t �t th�i gian.',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Nh�n chu�t v�o ��y � g�i b�o c�o l�i!',

        # Template: Footer
        'Top of Page' => 'Хu trang',

        # Template: FooterSmall

        # Template: Header
        'Home' => 'Trang ch�',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Ng߶i c�i �t web',
        'Welcome to %s' => 'Ch�o m�ng t�i %s',
        'Accept license' => 'Ch�p nh�n gi�y ph�p',
        'Don\'t accept license' => 'Kh�ng ch�p nh�n gi�y ph�p',
        'Admin-User' => 'T�n truy c�p qu�n tr�',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '',
        'Admin-Password' => 'M�t kh�u qu�n tr�',
        'Database-User' => 'Ng߶i d�ng c� s� d� li�u',
        'default \'hot\'' => 'm�c �nh \'hot\'',
        'DB connect host' => 'M�y ch� host k�t n�i c� s� d� li�u',
        'Database' => 'C� s� d� li�u',
        'Default Charset' => 'M� k� t� m�c �nh',
        'utf8' => '',
        'false' => 'L�i',
        'SystemID' => 'M� h� th�ng',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Nh�n d�ng c�a h� th�ng. M�i s� th� v� m�i m� phi�n http �u b�t �u b�ng s� n�y)',
        'System FQDN' => 'H� th�ng FQDN',
        '(Full qualified domain name of your system)' => '(T�n mi�n �y �� �i�u ki�n c�a h� th�ng)',
        'AdminEmail' => 'Email qu�n tr�',
        '(Email of the system admin)' => '(Email c�a qu�n tr� h� th�ng)',
        'Organization' => 'T� ch�c',
        'Log' => 'B�n ghi',
        'LogModule' => 'M� �un b�n ghi',
        '(Used log backend)' => '(�� s� d�ng c�c b�n ghi m�t sau)',
        'Logfile' => 'File b�n ghi',
        '(Logfile just needed for File-LogModule!)' => '(File b�n ghi ch� c�n cho m� �un File-Log!)',
        'Webfrontend' => 'M�t ngo�i web',
        'Use utf-8 it your database supports it!' => 'H�y d�ng utf-8 n�u c� s� d� li�u c�a b�n c� h� tr�!',
        'Default Language' => 'Ng�n ng� m�c �nh',
        '(Used default language)' => '(D�ng ng�n ng� m�c �nh)',
        'CheckMXRecord' => 'Ki�m tra b�n ghi MX',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Ki�m tra c�c b�n ghi MX c�a c�c �a ch� email �� s� d�ng b�ng c�ch t�o m�t tr� l�i. Kh�ng d�ng Ki�m tra b�n ghi MX n�u h� th�ng OTRS c�a b�n n�m sau 1 �߶ng dial-up!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Ь c� th� s� d�ng OTRS b�n ph�i nh�p d�ng sau v�o d�ng l�nh c�a b�n (Terminal/Shell) l�m g�c.',
        'Restart your webserver' => 'Kh�i �ng l�i m�y ch� web.',
        'After doing so your OTRS is up and running.' => 'Sau khi th�c hi�n OTRS c�a b�n �� ho�t �ng.',
        'Start page' => 'Trang b�t �u',
        'Your OTRS Team' => 'еi OTRS c�a b�n',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'Kh�ng c� quy�n',

        # Template: Notify
        'Important' => 'Quan tr�ng',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => '���c in b�i',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'Trang test OTRS',
        'Counter' => 'B� �m',

        # Template: Warning

        # Template: YUI

        # Misc
        'Create Database' => 'T�o c� s� d� li�u',
        'verified' => 'x�c nh�n',
        'File-Name' => 'T�n file',
        'Ticket Number Generator' => 'H� sinh s� th�',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Nh�n d�ng th�. M�t s� ng߶i mu�n thi�t �t �i�u n�y th�nh v� d� nh� \'Ticket#\', \'Call#\' ho�c \'MyTicket#\')',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Theo c�ch n�y b�n c� th� s�a tr�c ti�p c�u h�nh kh�a trong Kernel/Config.pm',
        'Create new Phone Ticket' => 'T�o th� cu�c g�i m�i',
        'U' => 'U',
        'Site' => 'Site',
        'Customer history search (e. g. "ID342425").' => 'T�m ki�m l�ch s� kh�ch h�ng (v� d�: "ID342425").',
        'your MySQL DB should have a root password! Default is empty!' => 'C� s� d� li�u MySQL c�a b�n n�n c� m�t kh�u g�c! M�c �nh l� � tr�ng!',
        'Can not delete link with %s!' => '',
        'Close!' => '��ng!',
        'for agent firstname' => 'cho h� (t�n) c�a nh�n vi�n',
        'Reporter' => 'Ng߶i b�o c�o',
        'Process-Path' => '�߶ng d�n quy tr�nh',
        'No means, send agent and customer notifications on changes.' => 'Kh�ng, ngh�a l�, g�i th�ng b�o cho nh�n vi�n v� kh�ch h�ng v� c�c thay �i.',
        'to get the realname of the sender (if given)' => '� l�y t�n th�c c�a ng߶i g�i (n�u c�)',
        'FAQ Search Result' => 'K�t qu� t�m ki�m FAQ',
        'Notification (Customer)' => 'Th�ng b�o (Kh�ch h�ng)',
        'CSV' => 'CSV',
        'Select Source (for add)' => 'Ch�n ngu�n (� th�m)',
        'Node-Name' => 'T�n n�t',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'C�c t�y ch�n c�a d� li�u th� (v� d�: &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => 'Яi t��ng con',
        'Workflow Groups' => 'C�c nh�m D�ng c�ng vi�c',
        'Current Impact Rating' => 'M�c �nh h߷ng hi�n t�i',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'C�c t�y ch�n c�u h�nh (v� d�: <OTRS_CONFIG_HttpType>)',
        'FAQ System History' => 'L�ch s� h� th�ng FAQ',
        'customer realname' => 't�n th�c kh�ch h�ng',
        'Pending messages' => 'C�c tin nh�n treo',
        'Modules' => 'M� �un',
        'for agent login' => 'cho nh�n vi�n ��ng nh�p',
        'Keyword' => 'T� kh�a',
        'Reference' => 'Tham chi�u',
        'Close type' => '��ng lo�i',
        'DB Admin User' => 'Ng߶i d�ng qu�n tr� C� s� d� li�u',
        'for agent user id' => '�i v�i m� ng߶i d�ng nh�n vi�n',
        'Classification' => 'Ph�n lo�i',
        'Change user <-> group settings' => 'Thay �i ng߶i d�ng <-> c�c thi�t �t nh�m',
        'Escalation' => '',
        '"}' => '',
        'Order' => 'Tr�t t�',
        'next step' => 'b߾c ti�p theo',
        'Follow up' => 'Theo d�i',
        'Customer history search' => 'T�m ki�m l�ch s� kh�ch h�ng',
        'not verified' => 'ch�a ���c x�c nh�n',
        'Stat#' => 'Th�ng k� s�',
        'Create new database' => 'T�o c� s� d� li�u m�i',
        'Year' => 'N�m',
        'X-axis' => 'tr�c X',
        'Keywords' => 'T� kh�a',
        'Ticket Escalation View' => '',
        'Today' => '',
        'No * possible!' => 'Kh�ng * c� th�!',
        'Load' => 'T�i',
        'Change Time' => 'Thay �i th�i gian',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'C�c t�y ch�n c�a ng߶i d�ng hi�n t�i y�u c�u h�nh �ng n�y (v� d�: &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => 'Tin nh�n cho ph� tr�ch m�i',
        'to get the first 5 lines of the email' => '� l�y 5 d�ng �u ti�n c�a email',
        'Sent new password to: ' => '�� g�i m�t kh�u m�i t�i: ',
        'Sort by' => 'S�p x�p theo',
        'OTRS DB Password' => 'M�t kh�u c� s� d� li�u OTRS',
        'Last update' => 'L�n c�p nh�t tr߾c',
        'Tomorrow' => '',
        'not rated' => 'ch�a x�p h�ng',
        'to get the first 20 character of the subject' => '� l�y 20 k� t� �u ti�n c�a ti�u �',
        'Select the customeruser:service relations.' => 'Ch�n m�i quan h� ng߶i d�ng kh�ch h�ng:d�ch v�.',
        'DB Admin Password' => 'M�t kh�u qu�n tr� C� s� d� li�u',
        'Drop Database' => 'B� qua C� s� d� li�u',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'B�n c� th� �nh ngh�a tr�c X t�i ��y. B�n c� th� ch�n 1 th�nh t� th�ng qua n�t b�m radio. Sau �� ph�i ch�n 1 ho�c nhi�u thu�c t�nh c�a th�nh t�. N�u kh�ng ch�n t�t c� thu�c t�nh c�a th�nh t� s� ���c s� d�ng n�u b�n sinh th�ng k�. C�ng v�i �� m�t thu�c t�nh m�i c�ng ���c th�m k� t� l�n c�u h�nh cu�i c�ng.',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'C�c t�y ch�n c�a d� li�u ng߶i d�ng kh�ch h�ng hi�n t�i (v� d�: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'Lo�i treo',
        'Comment (internal)' => 'Nh�n x�t (n�i b�)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'C�c t�y ch�n ph� tr�ch th� (v� d�: &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'User-Number' => 'S� ng߶i d�ng',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'C�c t�y ch�n c�a d� li�u th� (v� d�: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(иnh d�ng s� th� s� d�ng)',
        'Reminder' => 'Nh�c nh�',
        'Month' => 'Th�ng',
        'Node-Address' => 'иa ch� n�t',
        'All Agent variables.' => 'T�t c� c�c bi�n s� nh�n vi�n',
        ' (work units)' => ' (c�c �n v� l�m vi�c)',
        'Next Week' => '',
        'You use the DELETE option! Take care, all deleted Tickets are lost!!!' => 'B�n s� d�ng t�y ch�n X�a! H�y c�n th�n, t�t c� c�c th� x�a s� b� m�t!',
        'All Customer variables like defined in config option CustomerUser.' => 'T�t c� c�c bi�n s� kh�ch h�ng �� �nh ngh�a trong c�u h�nh t�y ch�n ng߶i d�ng kh�ch h�ng.',
        'for agent lastname' => 't�n nh�n vi�n',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'C�c t�y ch�n c�a ng߶i d�ng hi�n t�i ng߶i y�u c�u h�nh �ng n�y (v� d�: <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Tin nh�n nh�c nh�',
        'Parent-Object' => 'Яi t��ng cha',
        'Of couse this feature will take some system performance it self!' => 'T�t nhi�n t�nh n�ng n�y s� t� th�c thi h� th�ng.',
        'Your own Ticket' => 'Th� c�a b�n',
        'Detail' => 'Chi ti�t',
        'TicketZoom' => 'Ph�ng ��i th�',
        'Open Tickets' => 'M� th�',
        'Don\'t forget to add a new user to groups!' => '��ng qu�n b� sung m�t ng߶i d�ng m�i v�o nh�m!',
        'CreateTicket' => 'T�o th�',
        'You have to select two or more attributes from the select field!' => 'B�n ph�i ch�n 2 hay nhi�u thu�c t�nh t� tr߶ng �� ch�n!',
        'unknown' => 'ch�a x�c �nh',
        'System Settings' => 'Thi�t �t h� th�ng',
        'Finished' => 'K�t th�c',
        'Imported' => 'Nh�p',
        'unread' => 'ch�a ��c',
        'D' => 'D',
        'System Status' => 'Tr�ng th�i h� th�ng',
        'All messages' => 'T�t c� tin nh�n',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'C�c t�y ch�n c�a d� li�u th� (v� d�: <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Object already linked as %s.' => '',
        'A article should have a title!' => 'B�i vi�t n�n c� ti�u �!',
        'Customer Users <-> Services' => 'Ng߶i d�ng kh�ch h�ng <-> D�ch v�',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'C�c t�y ch�n c�u h�nh (v� d�: &lt;OTRS_CONFIG_HttpType&gt;)',
        'All email addresses get excluded on replaying on composing and email.' => '',
        'Compose Follow up' => 'So�n theo d�i',
        'Imported by' => 'Nh�p b�i',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'C�c t�y ch�n ch� th� (v� d� <OTRS_OWNER_UserFirstname>)',
        'read' => '��c',
        'Product' => 'S�n ph�m',
        'kill all sessions' => 'x�a t�t c� c�c phi�n',
        'to get the from line of the email' => '� l�y t� d�ng email',
        'Solution' => 'Gi�i ph�p',
        'QueueView' => 'Xem h�ng ��i',
        'My Queue' => 'H�ng ��i c�a t�i',
        'Select Box' => 'Ch�n �',
        'Instance' => 'Tr߶ng h�p',
        'Day' => 'Ng�y',
        'New messages' => 'Tin nh�n m�i',
        'Service-Name' => 'T�n d�ch v�',
        'Can not create link with %s!' => '',
        'Linked as' => '',
        'Welcome to OTRS' => 'Ch�o m�ng b�n �n v�i OTRS',
        'tmp_lock' => 'kh�a_tmp',
        'modified' => '�� ch�nh s�a',
        'Delete old database' => 'X�a c� s� d� li�u c�',
        'Watcher' => 'Ng߶i xem',
        'Have a lot of fun!' => 'H�y t�n h߷ng s� vui th�ch!',
        'send' => 'g�i',
        'Send no notifications' => 'Kh�ng g�i th�ng b�o n�o',
        'Note Text' => 'L�u �',
        'POP3 Account Management' => 'Qu�n tr� t�i kho�n POP3',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'C�c t�y ch�n c�a d� li�u ng߶i d�ng kh�ch h�ng hi�n t�i ((v� d�: &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;).',
        'System State Management' => 'Qu�n tr� tr�ng th�i h� th�ng',
        'Mailbox' => 'H�p mail',
        'PhoneView' => 'Xem s� �i�n tho�i',
        'User-Name' => 'T�n ��ng nh�p',
        'File-Path' => '�߶ng d�n file',
        'Escaladed Tickets' => '',
        'Yes means, send no agent and customer notifications on changes.' => 'C�, ngh�a l�, kh�ng g�i th�ng b�o cho nh�n vi�n v� kh�ch h�ng n�o v� c�c thay �i.',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'Email c�a b�n v�i s� th� "<OTRS_TICKET>" ���c chuy�n t�i "<OTRS_BOUNCE_TO>". H�y li�n h� v�i �a ch� n�y � c� th�m th�ng tin.',
        'Ticket Status View' => 'Xem tr�ng th�i th�',
        'Modified' => '�� ch�nh s�a',
        'Ticket selected for bulk action!' => 'Th� �� ���c ch�n cho l�nh l�',
    };
    # $$STOP$$
    return;
}

1;
