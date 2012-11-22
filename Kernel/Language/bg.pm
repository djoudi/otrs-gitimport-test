# --
# Kernel/Language/bg.pm - provides Bulgarian language translation
# Copyright (C) 2004 Vladimir Gerdjikov <gerdjikov at gerdjikovs.net>
# Copyright (C) 2007 Alex Kantchev <ak at otrs.org>
# --
# $Id: bg.pm,v 1.143 2012-11-22 10:15:34 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::bg;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.143 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: 2012-11-22 11:08:51

    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%A %D %B %T %Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y - %T';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    # csv separator
    $Self->{Separator} = ';';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'Да',
        'No' => 'Не',
        'yes' => 'да',
        'no' => 'не',
        'Off' => 'Изключено',
        'off' => 'изключено',
        'On' => 'Включено',
        'on' => 'включено',
        'top' => 'към началото',
        'end' => 'Край',
        'Done' => 'Готово.',
        'Cancel' => 'Отказ',
        'Reset' => 'Рестартирай',
        'last' => 'последните',
        'before' => 'преди',
        'Today' => '',
        'Tomorrow' => '',
        'Next week' => '',
        'day' => 'ден',
        'days' => 'дни',
        'day(s)' => 'ден/дни',
        'd' => '',
        'hour' => 'час',
        'hours' => 'часове',
        'hour(s)' => 'час(ове)',
        'Hours' => '',
        'h' => '',
        'minute' => 'минута',
        'minutes' => 'минути',
        'minute(s)' => 'минута(и)',
        'Minutes' => '',
        'm' => '',
        'month' => 'месец',
        'months' => 'месеци',
        'month(s)' => 'месец(и)',
        'week' => 'седмица',
        'week(s)' => 'седмица(и)',
        'year' => 'година',
        'years' => 'години',
        'year(s)' => 'година(и)',
        'second(s)' => 'секунда(и)',
        'seconds' => 'секунди',
        'second' => 'секунда',
        's' => '',
        'wrote' => 'записано',
        'Message' => 'Съобщение',
        'Error' => 'Грешка',
        'Bug Report' => 'Отчет за грешка',
        'Attention' => 'Внимание',
        'Warning' => 'Предупреждение',
        'Module' => 'Модул',
        'Modulefile' => 'Файл-модул',
        'Subfunction' => 'Подфункция',
        'Line' => 'Линия',
        'Setting' => '',
        'Settings' => '',
        'Example' => 'Пример',
        'Examples' => 'Примери',
        'valid' => 'валиден',
        'Valid' => 'Валиден',
        'invalid' => 'невалиден',
        'Invalid' => '',
        '* invalid' => '',
        'invalid-temporarily' => 'временно невалиден',
        ' 2 minutes' => ' 2 Минути',
        ' 5 minutes' => ' 5 Минути',
        ' 7 minutes' => ' 7 Минути',
        '10 minutes' => '10 Минути',
        '15 minutes' => '15 Минути',
        'Mr.' => 'Г-н.',
        'Mrs.' => 'Г-жа',
        'Next' => 'Напред',
        'Back' => 'Назад',
        'Next...' => 'Напред...',
        '...Back' => '...Назад',
        '-none-' => '-няма-',
        'none' => 'няма',
        'none!' => 'няма!',
        'none - answered' => 'няма - отговорен',
        'please do not edit!' => 'моля, не редактирайте!',
        'Need Action' => '',
        'AddLink' => 'Добавяне на връзка',
        'Link' => 'Връзка',
        'Unlink' => '',
        'Linked' => 'Свързан',
        'Link (Normal)' => 'Връзка (нормална)',
        'Link (Parent)' => 'Връзка (родител)',
        'Link (Child)' => 'Връзка (дете)',
        'Normal' => 'Нормална',
        'Parent' => 'Родител',
        'Child' => 'Дете',
        'Hit' => 'Попадение',
        'Hits' => 'Попадения',
        'Text' => 'Текст',
        'Standard' => '',
        'Lite' => 'Лека',
        'User' => 'Потребител',
        'Username' => 'Потребителско име',
        'Language' => 'Език',
        'Languages' => 'Езици',
        'Password' => 'Парола',
        'Preferences' => 'Предпочитания',
        'Salutation' => 'Обръщение',
        'Salutations' => 'Обръщения',
        'Signature' => 'Подпис',
        'Signatures' => 'Подписи',
        'Customer' => 'Потребител',
        'CustomerID' => 'Потребителски индикатив',
        'CustomerIDs' => 'Портребителски индикативи',
        'customer' => 'потребител',
        'agent' => 'агент',
        'system' => 'система',
        'Customer Info' => 'Потребителски данни',
        'Customer Information' => '',
        'Customer Company' => 'Компания',
        'Customer Companies' => '',
        'Company' => 'Компания',
        'go!' => 'ОК!',
        'go' => 'ОК',
        'All' => 'Всички',
        'all' => 'всички',
        'Sorry' => 'Съжаляваме',
        'update!' => 'обновяване!',
        'update' => 'обновяване',
        'Update' => 'Обновяване',
        'Updated!' => '',
        'submit!' => 'изпратете!',
        'submit' => 'изпратете',
        'Submit' => 'Изпратете',
        'change!' => 'променете!',
        'Change' => 'Промяна',
        'change' => 'променете',
        'click here' => 'натиснете тук',
        'Comment' => 'Коментар',
        'Invalid Option!' => 'Невалидна опция!',
        'Invalid time!' => 'Невалидно време!',
        'Invalid date!' => 'Невалидна дата!',
        'Name' => 'Име',
        'Group' => 'Група',
        'Description' => 'Описание',
        'description' => 'описание',
        'Theme' => 'Тема',
        'Created' => 'Създаден',
        'Created by' => 'Създаден от',
        'Changed' => 'Променен',
        'Changed by' => 'Променен от',
        'Search' => 'Търсене',
        'and' => 'и',
        'between' => 'между',
        'Fulltext Search' => 'Пълнотекстово търсене',
        'Data' => 'Данни',
        'Options' => 'Настройки',
        'Title' => 'Заглавие',
        'Item' => 'Елемент',
        'Delete' => 'Изтриване',
        'Edit' => 'Редакция',
        'View' => 'Изглед',
        'Number' => 'Номер',
        'System' => 'Система',
        'Contact' => 'Контакт',
        'Contacts' => 'Контакти',
        'Export' => 'Експортиране',
        'Up' => 'Нагоре',
        'Down' => 'Надолу',
        'Add' => 'Добавяне',
        'Added!' => '',
        'Category' => 'Категория',
        'Viewer' => 'Viewer',
        'Expand' => '',
        'Small' => '',
        'Medium' => '',
        'Large' => '',
        'Date picker' => '',
        'New message' => 'Ново съобщение',
        'New message!' => 'Ново съобщение!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'Моля, отговорете на този билет(и) за да се върнете в нормалния изглед на опашката!',
        'You have %s new message(s)!' => 'Вие имате %s ново/нови съобщение/съобщения!',
        'You have %s reminder ticket(s)!' => 'Вие имате %s оставащ/оставащи билет/билети!',
        'The recommended charset for your language is %s!' => 'Препоръчителният символен набор за Вашият език е %s!',
        'Change your password.' => '',
        'Please activate %s first!' => '',
        'No suggestions' => 'Няма предположения',
        'Word' => 'Дума',
        'Ignore' => 'Пренебрегване',
        'replace with' => 'замести с',
        'There is no account with that login name.' => 'Няма потребител с това име.',
        'Login failed! Your user name or password was entered incorrectly.' =>
            '',
        'There is no acount with that user name.' => '',
        'Please contact your administrator' => '',
        'Logout' => 'Изход',
        'Logout successful. Thank you for using OTRS!' => 'Изходът е успешен. Благодарим Ви, че използвахте системата.',
        'Feature not active!' => 'Функцията не е активна',
        'Agent updated!' => '',
        'Create Database' => 'Създаване на база данни',
        'System Settings' => 'Системни настройки',
        'Mail Configuration' => '',
        'Finished' => 'Приключено',
        'Install OTRS' => '',
        'Intro' => '',
        'License' => 'Лиценз',
        'Database' => 'База данни',
        'Configure Mail' => '',
        'Database deleted.' => '',
        'Database setup succesful!' => '',
        'Login is needed!' => 'Логин-а е задължителен',
        'Password is needed!' => 'Паролата е задължителна',
        'Take this Customer' => 'Използвай този клиент',
        'Take this User' => 'Изберете този потребител',
        'possible' => 'възможен',
        'reject' => 'отхвърлен',
        'reverse' => 'обърнато',
        'Facility' => 'Приспособление',
        'Time Zone' => '',
        'Pending till' => 'В очакване до',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            '',
        'Dispatching by email To: field.' => 'Разпределяне по поле To: от писмото.',
        'Dispatching by selected Queue.' => 'Разпределение по избрана опашка.',
        'No entry found!' => 'Няма въдедена стойност!',
        'Session invalid. Please log in again.' => '',
        'Session has timed out. Please log in again.' => 'Моля, оторизирайте се отново. Тази сесия вече е затворена.',
        'Session limit reached! Please try again later.' => '',
        'No Permission!' => 'Нямате позволение!',
        '(Click here to add)' => '(Кликнете тук за добавяне)',
        'Preview' => 'Преглед',
        'Package not correctly deployed! Please reinstall the package.' =>
            '',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
        'Check to activate this date' => '',
        'You have Out of Office enabled, would you like to disable it?' =>
            '',
        'Customer %s added' => '',
        'Role added!' => '',
        'Role updated!' => '',
        'Attachment added!' => '',
        'Attachment updated!' => '',
        'Response added!' => '',
        'Response updated!' => '',
        'Group updated!' => '',
        'Queue added!' => '',
        'Queue updated!' => '',
        'State added!' => '',
        'State updated!' => '',
        'Type added!' => '',
        'Type updated!' => '',
        'Customer updated!' => '',
        'Customer company added!' => '',
        'Customer company updated!' => '',
        'Mail account added!' => '',
        'Mail account updated!' => '',
        'System e-mail address added!' => '',
        'System e-mail address updated!' => '',
        'Contract' => 'Договор',
        'Online Customer: %s' => 'Клиент(и) онлайн: %s',
        'Online Agent: %s' => 'Агент(и) онлайн: %s',
        'Calendar' => 'Календар',
        'File' => 'Файл',
        'Filename' => 'Име на файл',
        'Type' => 'Тип',
        'Size' => 'Размер',
        'Upload' => 'Качване',
        'Directory' => 'Директория',
        'Signed' => 'Подписано',
        'Sign' => 'Подпиши',
        'Crypted' => 'Кодирано',
        'Crypt' => 'Кодирай',
        'PGP' => '',
        'PGP Key' => '',
        'PGP Keys' => '',
        'S/MIME' => '',
        'S/MIME Certificate' => '',
        'S/MIME Certificates' => '',
        'Office' => 'Офис',
        'Phone' => 'Телефон',
        'Fax' => 'Факс',
        'Mobile' => 'Мобилен телефон',
        'Zip' => 'Пощенски код',
        'City' => 'Град',
        'Street' => '',
        'Country' => 'Държава',
        'Location' => '',
        'installed' => 'инсталирано',
        'uninstalled' => 'деинсталирано',
        'Security Note: You should activate %s because application is already running!' =>
            'Съобщение: Трябва да активирате %s защото приложението вече работи!',
        'Unable to parse repository index document.' => '',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            '',
        'No packages, or no new packages, found in selected repository.' =>
            '',
        'Edit the system configuration settings.' => '',
        'printed at' => 'отпечатано в',
        'Loading...' => '',
        'Dear Mr. %s,' => '',
        'Dear Mrs. %s,' => '',
        'Dear %s,' => '',
        'Hello %s,' => '',
        'This email address already exists. Please log in or reset your password.' =>
            '',
        'New account created. Sent login information to %s. Please check your email.' =>
            '',
        'Please press Back and try again.' => '',
        'Sent password reset instructions. Please check your email.' => '',
        'Sent new password to %s. Please check your email.' => '',
        'Upcoming Events' => '',
        'Event' => 'Събитие',
        'Events' => '',
        'Invalid Token!' => '',
        'more' => '',
        'For more info see:' => '',
        'Package verification failed!' => '',
        'Collapse' => '',
        'Shown' => '',
        'Shown customer users' => '',
        'News' => '',
        'Product News' => '',
        'OTRS News' => '',
        '7 Day Stats' => '',
        'Process Management information from database is not in sync with the system configuration, please synchronize all processes.' =>
            '',
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
        'Header' => 'Хедър',
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
        'Scheduler process is registered but might not be running.' => '',
        'Scheduler is not running.' => '',

        # Template: AAACalendar
        'New Year\'s Day' => '',
        'International Workers\' Day' => '',
        'Christmas Eve' => '',
        'First Christmas Day' => '',
        'Second Christmas Day' => '',
        'New Year\'s Eve' => '',

        # Template: AAAGenericInterface
        'OTRS as requester' => '',
        'OTRS as provider' => '',
        'Webservice "%s" created!' => '',
        'Webservice "%s" updated!' => '',

        # Template: AAAMonth
        'Jan' => 'Яну',
        'Feb' => 'Фев',
        'Mar' => 'Мар',
        'Apr' => 'Апр',
        'May' => 'Май',
        'Jun' => 'Юни',
        'Jul' => 'Юли',
        'Aug' => 'Авг',
        'Sep' => 'Сеп',
        'Oct' => 'Окт',
        'Nov' => 'Ное',
        'Dec' => 'Дек',
        'January' => 'Януари',
        'February' => 'Февруари',
        'March' => 'Март',
        'April' => 'Април',
        'May_long' => 'Май',
        'June' => 'Юни',
        'July' => 'Юли',
        'August' => 'Август',
        'September' => 'Септември',
        'October' => 'Октомври',
        'November' => 'Ноември',
        'December' => 'Декември',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Предпочитанията са обновени успешно',
        'User Profile' => '',
        'Email Settings' => '',
        'Other Settings' => '',
        'Change Password' => 'Смяна на паролата',
        'Current password' => '',
        'New password' => 'Нова парола',
        'Verify password' => '',
        'Spelling Dictionary' => 'Речик за проверка на правописа',
        'Default spelling dictionary' => '',
        'Max. shown Tickets a page in Overview.' => 'Максимален брой Билети на страница (при преглед)',
        'The current password is not correct. Please try again!' => '',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            '',
        'Can\'t update password, it contains invalid characters!' => '',
        'Can\'t update password, it must be at least %s characters long!' =>
            '',
        'Can\'t update password, it must contain at least 2 lowercase  and 2 uppercase characters!' =>
            '',
        'Can\'t update password, it must contain at least 1 digit!' => '',
        'Can\'t update password, it must contain at least 2 characters!' =>
            '',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            '',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            '',
        'CSV Separator' => '',

        # Template: AAAStats
        'Stat' => 'Статистика',
        'Sum' => '',
        'Please fill out the required fields!' => 'Моля попълнете задължителните полета!',
        'Please select a file!' => 'Моля изберете файл!',
        'Please select an object!' => 'Моля изберете обект!',
        'Please select a graph size!' => 'Моля изберете размер на графиката!',
        'Please select one element for the X-axis!' => 'Моля изберете един елемент за оста Х',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' =>
            'Моля изберете само един елемент или включете \'Fixed\', където полето е маркирано!',
        'If you use a checkbox you have to select some attributes of the select field!' =>
            'Ако използвате отметка, трябва да изберете атрибути от полето!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' =>
            'Моля въведете стойност във избраното поле или изключете отметката \'Fixed\'!',
        'The selected end time is before the start time!' => 'Избрания краен момент от време е преди началния момент!',
        'You have to select one or more attributes from the select field!' =>
            'Трябва да изберете един или повече атрибути от полето!',
        'The selected Date isn\'t valid!' => 'Избраната дата не е валидна!',
        'Please select only one or two elements via the checkbox!' => 'Моля изберете един или два елемента посредством отметката!',
        'If you use a time scale element you can only select one element!' =>
            'Ако използвате времева скала може да изберете само един елемент!',
        'You have an error in your time selection!' => 'Имате грешка при избиране на времевия период!',
        'Your reporting time interval is too small, please use a larger time scale!' =>
            'Времевия интервал за справката е прекалено малък, моля използвайте по-голям интервал!',
        'The selected start time is before the allowed start time!' => 'Възможния начален момент от време е преди възможния краен момент от време!',
        'The selected end time is after the allowed end time!' => 'Възможния начален момент от време е след възможния краен момент от време!',
        'The selected time period is larger than the allowed time period!' =>
            'Избрания времеви интервал е по-голям от максимално възможния!',
        'Common Specification' => 'Общи спецификации',
        'X-axis' => 'Ос Х',
        'Value Series' => 'Поредици за стойност',
        'Restrictions' => 'Ограничения',
        'graph-lines' => 'Графика-линии',
        'graph-bars' => 'Графика-ленти',
        'graph-hbars' => 'Графика-хоризонтални ленти',
        'graph-points' => 'Графика-точки',
        'graph-lines-points' => 'Графика-линии и точки',
        'graph-area' => 'Място за графика',
        'graph-pie' => 'Графика-кръгла',
        'extended' => 'разширен',
        'Agent/Owner' => 'Агент/Собственик',
        'Created by Agent/Owner' => 'Създадени от агент/собственик',
        'Created Priority' => 'Създадени с приоритет',
        'Created State' => 'Създадени в статус',
        'Create Time' => 'Време на създаване',
        'CustomerUserLogin' => 'Логин на клиент-потребител',
        'Close Time' => 'Време на затваряне',
        'TicketAccumulation' => '',
        'Attributes to be printed' => '',
        'Sort sequence' => '',
        'Order by' => '',
        'Limit' => 'Лимит',
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
        'Status View' => '',
        'Bulk' => '',
        'Lock' => 'Заключи',
        'Unlock' => 'Отключи',
        'History' => 'Хроника',
        'Zoom' => 'Подробно',
        'Age' => 'Възраст',
        'Bounce' => 'Отхвърли',
        'Forward' => 'Препратете',
        'From' => 'От',
        'To' => 'До',
        'Cc' => 'Копие до',
        'Bcc' => 'Скрито копие',
        'Subject' => 'Относно',
        'Move' => 'Преместване',
        'Queue' => 'Опашка',
        'Queues' => 'Опашки',
        'Priority' => 'Приоритет',
        'Priorities' => '',
        'Priority Update' => '',
        'Priority added!' => '',
        'Priority updated!' => '',
        'Signature added!' => '',
        'Signature updated!' => '',
        'SLA' => 'SLA',
        'Service Level Agreement' => '',
        'Service Level Agreements' => '',
        'Service' => 'Service',
        'Services' => '',
        'State' => 'Статус',
        'States' => '',
        'Status' => 'Статус',
        'Statuses' => '',
        'Ticket Type' => '',
        'Ticket Types' => '',
        'Compose' => 'Създаване',
        'Pending' => 'В очакване',
        'Owner' => 'Собственик',
        'Owner Update' => 'Обновяване на собственик',
        'Responsible' => 'Отговорник',
        'Responsible Update' => 'Обноваеане на отговорника',
        'Sender' => 'Изпращач',
        'Article' => 'Клауза',
        'Ticket' => 'Билет',
        'Createtime' => 'време на създаване',
        'plain' => 'обикновен',
        'Email' => 'е-поща',
        'email' => 'е-поща',
        'Close' => 'Затваряне',
        'Action' => 'Действие',
        'Attachment' => 'Прикачен файл',
        'Attachments' => 'Прикачени файлове',
        'This message was written in a character set other than your own.' =>
            'Това писмо е написано в символна подредба различна от тази, която използвате.',
        'If it is not displayed correctly,' => 'Ако не се вижда коректно,',
        'This is a' => 'Това е',
        'to open it in a new window.' => 'да го отворите в нов прозорец',
        'This is a HTML email. Click here to show it.' => 'Това е поща в HTML формат. Натиснете тук, за да покажете коректно',
        'Free Fields' => 'Полета',
        'Merge' => 'Изравняване',
        'merged' => 'изравнен',
        'closed successful' => 'успешно затворен',
        'closed unsuccessful' => 'неуспешно затворен',
        'Locked Tickets Total' => '',
        'Locked Tickets Reminder Reached' => '',
        'Locked Tickets New' => '',
        'Responsible Tickets Total' => '',
        'Responsible Tickets New' => '',
        'Responsible Tickets Reminder Reached' => '',
        'Watched Tickets Total' => '',
        'Watched Tickets New' => '',
        'Watched Tickets Reminder Reached' => '',
        'All tickets' => 'Всички билети',
        'Available tickets' => '',
        'Escalation' => '',
        'last-search' => '',
        'QueueView' => 'Преглед на опашката',
        'Ticket Escalation View' => '',
        'Message from' => '',
        'End message' => '',
        'Forwarded message from' => '',
        'End forwarded message' => '',
        'new' => 'нов',
        'open' => 'отворен',
        'Open' => '',
        'Open tickets' => '',
        'closed' => 'затворен',
        'Closed' => '',
        'Closed tickets' => '',
        'removed' => 'премахнат',
        'pending reminder' => 'очаква напомняне',
        'pending auto' => 'очаква авроматично',
        'pending auto close+' => 'очаква автоматично затваряне+',
        'pending auto close-' => 'очаква автоматично затваряне-',
        'email-external' => 'външна е-поща',
        'email-internal' => 'вътрешна е-поща',
        'note-external' => 'външна бележка',
        'note-internal' => 'вътрешна бележка',
        'note-report' => 'бележка отчет',
        'phone' => 'телефон',
        'sms' => 'SMS',
        'webrequest' => 'заявка по web',
        'lock' => 'заключи',
        'unlock' => 'отключи',
        'very low' => 'много нисък',
        'low' => 'нисък',
        'normal' => 'нормален',
        'high' => 'висок',
        'very high' => 'много висок',
        '1 very low' => '1 много нисък',
        '2 low' => '2 нисък',
        '3 normal' => '3 нормален',
        '4 high' => '4 висок',
        '5 very high' => '5 много висок',
        'auto follow up' => '',
        'auto reject' => '',
        'auto remove' => '',
        'auto reply' => '',
        'auto reply/new ticket' => '',
        'Ticket "%s" created!' => 'Билет "%s" създаден!',
        'Ticket Number' => 'Номер на Билета',
        'Ticket Object' => 'Обект от тип Билет',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Несъществуващ номер на Билета "%s"! Връзката е невъзможна!',
        'You don\'t have write access to this ticket.' => '',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            '',
        'Ticket selected.' => '',
        'Ticket is locked by another agent.' => '',
        'Ticket locked.' => '',
        'Don\'t show closed Tickets' => 'Затворените билети да не се показват',
        'Show closed Tickets' => 'Затворените билети да се показват',
        'New Article' => 'Нов текст',
        'Unread article(s) available' => '',
        'Remove from list of watched tickets' => '',
        'Add to list of watched tickets' => '',
        'Email-Ticket' => 'Билет по е-поща',
        'Create new Email Ticket' => 'Билет е-поща',
        'Phone-Ticket' => 'Билет телефонно обаждане',
        'Search Tickets' => 'Търсене на билети',
        'Edit Customer Users' => 'Редакция на клиент-потребители',
        'Edit Customer Company' => '',
        'Bulk Action' => 'Събирателно действие',
        'Bulk Actions on Tickets' => 'Събирателно действие върху билети',
        'Send Email and create a new Ticket' => 'Изпращане на е-поща и създаване на нов билет',
        'Create new Email Ticket and send this out (Outbound)' => 'Създаване на нов билет: е-поша и изпращане на този (Изходящ)',
        'Create new Phone Ticket (Inbound)' => 'Създаване на билет: телефонно обаждане (Входящ)',
        'Address %s replaced with registered customer address.' => '',
        'Customer automatically added in Cc.' => '',
        'Overview of all open Tickets' => 'Преглед на всички отворени билети',
        'Locked Tickets' => 'Заключени билети',
        'My Locked Tickets' => '',
        'My Watched Tickets' => '',
        'My Responsible Tickets' => '',
        'Watched Tickets' => 'Наблюдавани билети',
        'Watched' => 'Наблюдавани',
        'Watch' => '',
        'Unwatch' => '',
        'Lock it to work on it' => '',
        'Unlock to give it back to the queue' => '',
        'Show the ticket history' => '',
        'Print this ticket' => '',
        'Print this article' => '',
        'Split this article' => '',
        'Forward article via mail' => '',
        'Change the ticket priority' => '',
        'Change the ticket free fields!' => 'Смяна на полетата на билета!',
        'Link this ticket to other objects' => '',
        'Change the owner for this ticket' => '',
        'Change the  customer for this ticket' => '',
        'Add a note to this ticket' => '',
        'Merge into a different ticket' => '',
        'Set this ticket to pending' => '',
        'Close this ticket' => '',
        'Look into a ticket!' => 'Подробен преглед на билета!',
        'Delete this ticket' => '',
        'Mark as Spam!' => 'Отбележи като спам',
        'My Queues' => 'Собствени опашки',
        'Shown Tickets' => 'Показани билети',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'Вашето писмо с номер на билета "<OTRS_TICKET>" е изравнено с "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => '',
        'Ticket %s: first response time will be over in %s!' => '',
        'Ticket %s: update time is over (%s)!' => '',
        'Ticket %s: update time will be over in %s!' => '',
        'Ticket %s: solution time is over (%s)!' => '',
        'Ticket %s: solution time will be over in %s!' => '',
        'There are more escalated tickets!' => '',
        'Plain Format' => '',
        'Reply All' => '',
        'Direction' => '',
        'Agent (All with write permissions)' => '',
        'Agent (Owner)' => '',
        'Agent (Responsible)' => '',
        'New ticket notification' => 'Напомняне за нов билет',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'Изпратете уведомление ако има нов билет в "Собствени опашки".',
        'Send new ticket notifications' => '',
        'Ticket follow up notification' => '',
        'Ticket lock timeout notification' => 'Известие за продължителността на заключване на билетът',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'Изпратете ми известие, ако билетът е отключен от системата.',
        'Send ticket lock timeout notifications' => '',
        'Ticket move notification' => '',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'Изпратете уведомление билет е преместен в "Собствени опашки".',
        'Send ticket move notifications' => '',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            '',
        'Custom Queue' => 'Потребителска опашка',
        'QueueView refresh time' => 'Време за обновяване изгледът на опашката',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            '',
        'Refresh QueueView after' => '',
        'Screen after new ticket' => 'Екран след нов тикет',
        'Show this screen after I created a new ticket' => '',
        'Closed Tickets' => 'Затворени билети',
        'Show closed tickets.' => 'Покажете затворените билети',
        'Max. shown Tickets a page in QueueView.' => 'Максимален брой показани билети на страница в прегледа на опашката.',
        'Ticket Overview "Small" Limit' => '',
        'Ticket limit per page for Ticket Overview "Small"' => '',
        'Ticket Overview "Medium" Limit' => '',
        'Ticket limit per page for Ticket Overview "Medium"' => '',
        'Ticket Overview "Preview" Limit' => '',
        'Ticket limit per page for Ticket Overview "Preview"' => '',
        'Ticket watch notification' => '',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            '',
        'Send ticket watch notifications' => '',
        'Out Of Office Time' => '',
        'New Ticket' => 'Нов билет',
        'Create new Ticket' => 'Създаване на нов билет',
        'Customer called' => 'Обаждане на клиент',
        'phone call' => 'обаждане по телефон',
        'Phone Call Outbound' => '',
        'Phone Call Inbound' => '',
        'Reminder Reached' => '',
        'Reminder Tickets' => '',
        'Escalated Tickets' => '',
        'New Tickets' => '',
        'Open Tickets / Need to be answered' => '',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            '',
        'All new tickets, these tickets have not been worked on yet' => '',
        'All escalated tickets' => '',
        'All tickets with a reminder set where the reminder date has been reached' =>
            '',
        'Archived tickets' => '',
        'Unarchived tickets' => '',
        'History::Move' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
        'History::TypeUpdate' => 'Промяна на типа "%s".',
        'History::ServiceUpdate' => 'Промяна на service "%s".',
        'History::SLAUpdate' => 'Промяна на SLA "%s".',
        'History::NewTicket' => 'Създаден нов билет [%s] (О=%s;П=%s;С=%s).',
        'History::FollowUp' => 'Събщтение към [%s]. %s',
        'History::SendAutoReject' => 'Авто отказ изпратен на "%s".',
        'History::SendAutoReply' => 'Авто отговор изпратен на "%s".',
        'History::SendAutoFollowUp' => 'Авто отговор към тикет изпратен на "%s".',
        'History::Forward' => 'Прехвърлен на "%s".',
        'History::Bounce' => 'Отхвърлен към "%s".',
        'History::SendAnswer' => 'Е-поща изпратена на "%s".',
        'History::SendAgentNotification' => '"%s"-уведомление изпратено на "%s".',
        'History::SendCustomerNotification' => 'Уведомление изпратено на "%s".',
        'History::EmailAgent' => 'Е-поща изпратена на клиент.',
        'History::EmailCustomer' => 'Добавена е-поща. %s',
        'History::PhoneCallAgent' => 'Обаждане на клиент от страна на агент.',
        'History::PhoneCallCustomer' => 'Клиент ни се обади.',
        'History::AddNote' => 'Добавена бележка (%s)',
        'History::Lock' => 'Билета е заключен.',
        'History::Unlock' => 'Билета е отключен.',
        'History::TimeAccounting' => '%s времеви единица(и) са отброени. Общо %s времеви единица(и).',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Актуализирано: %s',
        'History::PriorityUpdate' => 'Смяна на приоритета на билета от "%s" (%s) към "%s" (%s).',
        'History::OwnerUpdate' => 'Нов собствник е "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop-Protection! Не е изпратен авто отговор на "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Актуализирано: %s',
        'History::StateUpdate' => 'Стар: "%s" Нов: "%s"',
        'History::TicketDynamicFieldUpdate' => 'Актуализирано: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Клиентска заявка по web.',
        'History::TicketLinkAdd' => 'Добавена връзка към билет "%s".',
        'History::TicketLinkDelete' => 'Изтрита връзка към билет "%s".',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',
        'History::SystemRequest' => '',
        'History::ResponsibleUpdate' => '',
        'History::ArchiveFlagUpdate' => '',

        # Template: AAAWeekDay
        'Sun' => 'Нед',
        'Mon' => 'Пон',
        'Tue' => 'Вто',
        'Wed' => 'Сря',
        'Thu' => 'Чет',
        'Fri' => 'Пет',
        'Sat' => 'Съб',

        # Template: AdminAttachment
        'Attachment Management' => 'Управление на прикачен файл',
        'Actions' => '',
        'Go to overview' => '',
        'Add attachment' => '',
        'List' => 'Списък',
        'Validity' => '',
        'No data found.' => '',
        'Download file' => '',
        'Delete this attachment' => '',
        'Add Attachment' => '',
        'Edit Attachment' => '',
        'This field is required.' => '',
        'or' => 'или',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'Управление на автоматичният отговор',
        'Add auto response' => '',
        'Add Auto Response' => '',
        'Edit Auto Response' => '',
        'Response' => 'Отговор',
        'Auto response from' => '',
        'Reference' => '',
        'You can use the following tags' => '',
        'To get the first 20 character of the subject.' => 'За да се вземат първите 20 символа от "Относно" полето',
        'To get the first 5 lines of the email.' => 'За да се вземат първите 5 реда от съобщението.',
        'To get the realname of the sender (if given).' => 'Да се вземе истинското име на изпращача (ако има)',
        'To get the article attribute' => '',
        ' e. g.' => '',
        'Options of the current customer user data' => '',
        'Ticket owner options' => '',
        'Ticket responsible options' => '',
        'Options of the current user who requested this action' => '',
        'Options of the ticket data' => '',
        'Options of ticket dynamic fields internal key values' => '',
        'Options of ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            '',
        'Config options' => '',
        'Example response' => '',

        # Template: AdminCustomerCompany
        'Customer Company Management' => 'Управление на клиент-фирма',
        'Wildcards like \'*\' are allowed.' => '',
        'Add customer company' => '',
        'Please enter a search term to look for customer companies.' => '',
        'Add Customer Company' => 'Добавяне на клиент-фирма',

        # Template: AdminCustomerUser
        'Customer Management' => '',
        'Add customer' => '',
        'Select' => 'Избор',
        'Hint' => '',
        'Customer will be needed to have a customer history and to login via customer panel.' =>
            '',
        'Please enter a search term to look for customers.' => '',
        'Last Login' => '',
        'Login as' => 'Логин като',
        'Switch to customer' => '',
        'Add Customer' => '',
        'Edit Customer' => '',
        'This field is required and needs to be a valid email address.' =>
            '',
        'This email address is not allowed due to the system configuration.' =>
            '',
        'This email address failed MX check.' => '',
        'DNS problem, please check your configuration and the error log.' =>
            '',
        'The syntax of this email address is incorrect.' => '',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => '',
        'Notice' => '',
        'This feature is disabled!' => 'Тази функционалност е забранена',
        'Just use this feature if you want to define group permissions for customers.' =>
            '',
        'Enable it here!' => 'Разрешаване на фунционалността тук',
        'Search for customers.' => '',
        'Edit Customer Default Groups' => '',
        'These groups are automatically assigned to all customers.' => '',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            '',
        'Filter for Groups' => '',
        'Select the customer:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            '',
        'Search Result:' => '',
        'Customers' => '',
        'Groups' => 'Групи',
        'No matches found.' => '',
        'Change Group Relations for Customer' => '',
        'Change Customer Relations for Group' => '',
        'Toggle %s Permission for all' => '',
        'Toggle %s permission for %s' => '',
        'Customer Default Groups:' => '',
        'No changes can be made to these groups.' => '',
        'ro' => 'само за четене',
        'Read only access to the ticket in this group/queue.' => 'Достъп само за четене за билетите в тази група/опашка',
        'rw' => 'четене/запис',
        'Full read and write access to the tickets in this group/queue.' =>
            'Пълен достъп за билетите в тази група/опашка',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => '',
        'Edit default services' => '',
        'Filter for Services' => '',
        'Allocate Services to Customer' => '',
        'Allocate Customers to Service' => '',
        'Toggle active state for all' => '',
        'Active' => 'Активна',
        'Toggle active state for %s' => '',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => '',
        'Add new field for object' => '',
        'To add a new field, select the field type form one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            '',
        'Dynamic Fields List' => '',
        'Dynamic fields per page' => '',
        'Label' => '',
        'Order' => 'Ред',
        'Object' => 'Обект',
        'Delete this field' => '',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            '',
        'Delete field' => '',

        # Template: AdminDynamicFieldCheckbox
        'Dynamic Fields' => '',
        'Field' => '',
        'Go back to overview' => '',
        'General' => '',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            '',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            '',
        'Changing this value will require manual changes in the system.' =>
            '',
        'This is the name to be shown on the screens where the field is active.' =>
            '',
        'Field order' => '',
        'This field is required and must be numeric.' => '',
        'This is the order in which this field will be shown on the screens where is active.' =>
            '',
        'Field type' => '',
        'Object type' => '',
        'Internal field' => '',
        'This field is protected and can\'t be deleted.' => '',
        'Field Settings' => '',
        'Default value' => '',
        'This is the default value for this field.' => '',
        'Save' => 'Съхраняване',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => '',
        'This field must be numeric.' => '',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            '',
        'Define years period' => '',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            '',
        'Years in the past' => '',
        'Years in the past to display (default: 5 years).' => '',
        'Years in the future' => '',
        'Years in the future to display (default: 5 years).' => '',
        'Show link' => '',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            '',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => '',
        'Key' => 'Ключ',
        'Value' => 'Стойност',
        'Remove value' => '',
        'Add value' => '',
        'Add Value' => '',
        'Add empty value' => '',
        'Activate this option to create an empty selectable value.' => '',
        'Translatable values' => '',
        'If you activate this option the values will be translated to the user defined language.' =>
            '',
        'Note' => 'Бележка',
        'You need to add the translations manually into the language translation files.' =>
            '',

        # Template: AdminDynamicFieldMultiselect

        # Template: AdminDynamicFieldText
        'Number of rows' => '',
        'Specify the height (in lines) for this field in the edit mode.' =>
            '',
        'Number of cols' => '',
        'Specify the width (in characters) for this field in the edit mode.' =>
            '',

        # Template: AdminEmail
        'Admin Notification' => 'Административно уведомление',
        'With this module, administrators can send messages to agents, group or role members.' =>
            '',
        'Create Administrative Message' => '',
        'Your message was sent to' => '',
        'Send message to users' => '',
        'Send message to group members' => '',
        'Group members need to have permission' => '',
        'Send message to role members' => '',
        'Also send to customers in groups' => '',
        'Body' => 'Тяло на писмото',
        'Send' => 'Изпращане',

        # Template: AdminGenericAgent
        'Generic Agent' => '',
        'Add job' => '',
        'Last run' => 'Последно стартирана',
        'Run Now!' => 'Стартирай сега!',
        'Delete this task' => '',
        'Run this task' => '',
        'Job Settings' => '',
        'Job name' => '',
        'Currently this generic agent job will not run automatically.' =>
            '',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            '',
        'Schedule minutes' => '',
        'Schedule hours' => '',
        'Schedule days' => '',
        'Toggle this widget' => '',
        'Ticket Filter' => '',
        '(e. g. 10*5155 or 105658*)' => '(Пример: 10*5155 или 105658)',
        '(e. g. 234321)' => '(Пример: 234321)',
        'Customer login' => '',
        '(e. g. U5150)' => '(Пример: U5150)',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => '',
        'Agent' => 'Агент',
        'Ticket lock' => '',
        'Create times' => '',
        'No create time settings.' => 'Няма настройки за време на създаване.',
        'Ticket created' => 'Билета е създаден',
        'Ticket created between' => 'Билета е създаден между',
        'Change times' => '',
        'No change time settings.' => '',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Close times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending times' => '',
        'No pending time settings.' => 'Няма настройки за време на очакване',
        'Ticket pending time reached' => 'Времето на очакване за билета достигнато',
        'Ticket pending time reached between' => 'Времето на очакване за билета достигнато между',
        'Escalation times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - first response time' => '',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - update time' => '',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - solution time' => '',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'Archive search option' => '',
        'Ticket Action' => '',
        'Set new service' => '',
        'Set new Service Level Agreement' => '',
        'Set new priority' => '',
        'Set new queue' => '',
        'Set new state' => '',
        'Set new agent' => '',
        'new owner' => '',
        'new responsible' => '',
        'Set new ticket lock' => '',
        'New customer' => '',
        'New customer ID' => '',
        'New title' => '',
        'New type' => '',
        'New Dynamic Field Values' => '',
        'Archive selected tickets' => '',
        'Add Note' => 'Добавяне на бележка',
        'Time units' => 'Мерни единици за времето',
        ' (work units)' => ' (работни единици)',
        'Ticket Commands' => '',
        'Send agent/customer notifications on changes' => '',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'Тази команда ще бъде изпълнена. ARG[0] (първи аргумент) ще бъде номера на билета. ARG[1] (втори аргумент) ще бъде TiketID.',
        'Delete tickets' => 'Изтриване на билета',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            '',
        'Execute Custom Module' => '',
        'Param %s key' => '',
        'Param %s value' => '',
        'Save Changes' => '',
        'Results' => 'Резултат',
        '%s Tickets affected! What do you want to do?' => '',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            '',
        'Edit job' => '',
        'Run job' => '',
        'Affected Tickets' => '',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => '',
        'Web Services' => '',
        'Debugger' => '',
        'Go back to web service' => '',
        'Clear' => '',
        'Do you really want to clear the debug log of this web service?' =>
            '',
        'Request List' => '',
        'Time' => 'Време',
        'Remote IP' => '',
        'Loading' => '',
        'Select a single request to see its details.' => '',
        'Filter by type' => '',
        'Filter from' => '',
        'Filter to' => '',
        'Filter by remote IP' => '',
        'Refresh' => 'Опресняване',
        'Request Details' => '',
        'An error occurred during communication.' => '',
        'Show or hide the content' => '',
        'Clear debug log' => '',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => '',
        'Change Invoker %s of Web Service %s' => '',
        'Add new invoker' => '',
        'Change invoker %s' => '',
        'Do you really want to delete this invoker?' => '',
        'All configuration data will be lost.' => '',
        'Invoker Details' => '',
        'The name is typically used to call up an operation of a remote web service.' =>
            '',
        'Please provide a unique name for this web service invoker.' => '',
        'The name you entered already exists.' => '',
        'Invoker backend' => '',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            '',
        'Mapping for outgoing request data' => '',
        'Configure' => '',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Mapping for incoming response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            '',
        'Event Triggers' => '',
        'Asynchronous' => '',
        'Delete this event' => '',
        'This invoker will be triggered by the configured events.' => '',
        'Do you really want to delete this event trigger?' => '',
        'Add Event Trigger' => '',
        'To add a new event select the event object and event name and click on the "+" button' =>
            '',
        'Asynchronous event triggers are handled by the OTRS Scheduler in background (recommended).' =>
            '',
        'Synchronous event triggers would be processed directly during the web request.' =>
            '',
        'Save and continue' => '',
        'Save and finish' => '',
        'Delete this Invoker' => '',
        'Delete this Event Trigger' => '',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => '',
        'Go back to' => '',
        'Mapping Simple' => '',
        'Default rule for unmapped keys' => '',
        'This rule will apply for all keys with no mapping rule.' => '',
        'Default rule for unmapped values' => '',
        'This rule will apply for all values with no mapping rule.' => '',
        'New key map' => '',
        'Add key mapping' => '',
        'Mapping for Key ' => '',
        'Remove key mapping' => '',
        'Key mapping' => '',
        'Map key' => '',
        'matching the' => '',
        'to new key' => '',
        'Value mapping' => '',
        'Map value' => '',
        'to new value' => '',
        'Remove value mapping' => '',
        'New value map' => '',
        'Add value mapping' => '',
        'Do you really want to delete this key mapping?' => '',
        'Delete this Key Mapping' => '',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => '',
        'Change Operation %s of Web Service %s' => '',
        'Add new operation' => '',
        'Change operation %s' => '',
        'Do you really want to delete this operation?' => '',
        'Operation Details' => '',
        'The name is typically used to call up this web service operation from a remote system.' =>
            '',
        'Please provide a unique name for this web service.' => '',
        'Mapping for incoming request data' => '',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            '',
        'Operation backend' => '',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            '',
        'Mapping for outgoing response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Delete this Operation' => '',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => '',
        'Network transport' => '',
        'Properties' => '',
        'Endpoint' => '',
        'URI to indicate a specific location for accessing a service.' =>
            '',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => '',
        'Namespace' => '',
        'URI to give SOAP methods a context, reducing ambiguities.' => '',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            '',
        'Maximum message length' => '',
        'This field should be an integer number.' => '',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            '',
        'Encoding' => '',
        'The character encoding for the SOAP message contents.' => '',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => '',
        'SOAPAction' => '',
        'Set to "Yes" to send a filled SOAPAction header.' => '',
        'Set to "No" to send an empty SOAPAction header.' => '',
        'SOAPAction separator' => '',
        'Character to use as separator between name space and SOAP method.' =>
            '',
        'Usually .Net web services uses a "/" as separator.' => '',
        'Authentication' => '',
        'The authentication mechanism to access the remote system.' => '',
        'A "-" value means no authentication.' => '',
        'The user name to be used to access the remote system.' => '',
        'The password for the privileged user.' => '',
        'Use SSL Options' => '',
        'Show or hide SSL options to connect to the remote system.' => '',
        'Certificate File' => '',
        'The full path and name of the SSL certificate file (must be in .p12 format).' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/certificate.p12' => '',
        'Certificate Password File' => '',
        'The password to open the SSL certificate.' => '',
        'Certification Authority (CA) File' => '',
        'The full path and name of the certification authority certificate file that validates SSL certificate.' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/CA/ca.pem' => '',
        'Certification Authority (CA) Directory' => '',
        'The full path of the certification authority directory where the CA certificates are stored in the file system.' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/CA' => '',
        'Proxy Server' => '',
        'URI of a proxy server to be used (if needed).' => '',
        'e.g. http://proxy_hostname:8080' => '',
        'Proxy User' => '',
        'The user name to be used to access the proxy server.' => '',
        'Proxy Password' => '',
        'The password for the proxy user.' => '',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => '',
        'Add web service' => '',
        'Clone web service' => '',
        'The name must be unique.' => '',
        'Clone' => '',
        'Export web service' => '',
        'Import web service' => '',
        'Configuration File' => '',
        'The file must be a valid web service configuration YAML file.' =>
            '',
        'Import' => 'Импортиране',
        'Configuration history' => '',
        'Delete web service' => '',
        'Do you really want to delete this web service?' => '',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            '',
        'If you want to return to overview please click the "Go to overview" button.' =>
            '',
        'Web Service List' => '',
        'Remote system' => '',
        'Provider transport' => '',
        'Requester transport' => '',
        'Details' => '',
        'Debug threshold' => '',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            '',
        'In requester mode, OTRS uses web services of remote systems.' =>
            '',
        'Operations are individual system functions which remote systems can request.' =>
            '',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            '',
        'Controller' => '',
        'Inbound mapping' => '',
        'Outbound mapping' => '',
        'Delete this action' => '',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            '',
        'Delete webservice' => '',
        'Delete operation' => '',
        'Delete invoker' => '',
        'Clone webservice' => '',
        'Import webservice' => '',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => '',
        'Go back to Web Service' => '',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            '',
        'Configuration History List' => '',
        'Version' => 'Версия',
        'Create time' => '',
        'Select a single configuration version to see its details.' => '',
        'Export web service configuration' => '',
        'Restore web service configuration' => '',
        'Do you really want to restore this version of the web service configuration?' =>
            '',
        'Your current web service configuration will be overwritten.' => '',
        'Show or hide the content.' => '',
        'Restore' => '',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            '',
        'Group Management' => 'Управление на групи',
        'Add group' => '',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            'Групата admin достъпва администраторската зона, а stat групата достъпва зоната за статистики.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            '',
        'It\'s useful for ASP solutions. ' => '',
        'Add Group' => 'Добавяне на група',
        'Edit Group' => '',

        # Template: AdminLog
        'System Log' => 'Системен журнал',
        'Here you will find log information about your system.' => '',
        'Hide this message' => '',
        'Recent Log Entries' => '',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Управление на e-mail акаунти',
        'Add mail account' => '',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'Всички входящи писма с един акаунт ще се разпределят в избраната опашка!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            'Ако Вашия акаунт е доверен съществуващите X-OTRS хедъри на e-mail-а ще бъдат използвани (Пример: X-OTRS-Priority - за приоритет). Филтъра на PostMaster обаче същто ще се приложи на тези съобщения.',
        'Host' => 'Хост',
        'Delete account' => '',
        'Fetch mail' => '',
        'Add Mail Account' => '',
        'Example: mail.example.com' => '',
        'IMAP Folder' => '',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            '',
        'Trusted' => 'Доверен',
        'Dispatching' => 'Разпределение',
        'Edit Mail Account' => '',

        # Template: AdminNavigationBar
        'Admin' => 'Администрация',
        'Agent Management' => '',
        'Queue Settings' => '',
        'Ticket Settings' => '',
        'System Administration' => '',

        # Template: AdminNotification
        'Notification Management' => 'Управление на уведомленията',
        'Select a different language' => '',
        'Filter for Notification' => '',
        'Notifications are sent to an agent or a customer.' => 'Уведомления се изпращат на агент или клиент-потребител',
        'Notification' => 'Уведомление',
        'Edit Notification' => '',
        'e. g.' => '',
        'Options of the current customer data' => '',

        # Template: AdminNotificationEvent
        'Add notification' => '',
        'Delete this notification' => '',
        'Add Notification' => '',
        'Recipient groups' => '',
        'Recipient agents' => '',
        'Recipient roles' => '',
        'Recipient email addresses' => '',
        'Article type' => 'Тип на съобщението',
        'Only for ArticleCreate event' => '',
        'Article sender type' => '',
        'Subject match' => '',
        'Body match' => '',
        'Include attachments to notification' => '',
        'Notification article type' => '',
        'Only for notifications to specified email addresses' => '',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            '',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            '',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            '',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            '',

        # Template: AdminPGP
        'PGP Management' => 'Управление на PGP',
        'Use this feature if you want to work with PGP keys.' => '',
        'Add PGP key' => '',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'По този начин може директно да се редактира keyring-а който е конфигуриран в модула SysConfig.',
        'Introduction to PGP' => '',
        'Result' => 'Резултат',
        'Identifier' => 'Идентификатор',
        'Bit' => 'Бит',
        'Fingerprint' => 'Fingerprint',
        'Expires' => 'Expires',
        'Delete this key' => '',
        'Add PGP Key' => '',
        'PGP key' => '',

        # Template: AdminPackageManager
        'Package Manager' => 'Управление на софтуерни пакети',
        'Uninstall package' => '',
        'Do you really want to uninstall this package?' => 'Сигурни ли сте че искате да деинсталирате този софтуерен пакет?',
        'Reinstall package' => '',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            '',
        'Continue' => 'Продължаване',
        'Install' => 'Инсталиране',
        'Install Package' => '',
        'Update repository information' => '',
        'Did not find a required feature? OTRS Group provides their subscription customers with exclusive Add-Ons:' =>
            '',
        'Online Repository' => 'Online Repository',
        'Vendor' => 'Доставчик',
        'Module documentation' => '',
        'Upgrade' => 'Ъпгрейд',
        'Local Repository' => 'Локално Repository',
        'Uninstall' => 'Деинсталиране',
        'Reinstall' => 'Реинсталиране',
        'Feature Add-Ons' => '',
        'Download package' => '',
        'Rebuild package' => '',
        'Metadata' => '',
        'Change Log' => '',
        'Date' => 'Дата',
        'List of Files' => '',
        'Permission' => 'Позволения',
        'Download' => 'Сваляне',
        'Download file from package!' => 'Сваляне на файла от пакета!',
        'Required' => 'Задължителен',
        'PrimaryKey' => 'Primary Key',
        'AutoIncrement' => 'Auto Increment',
        'SQL' => 'SQL',
        'File differences for file %s' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Журнал на производителността',
        'This feature is enabled!' => 'Тази функционалност е пусната!',
        'Just use this feature if you want to log each request.' => 'Използвайте тази функционалност ако искате да се журналира всяка заявка.',
        'Activating this feature might affect your system performance!' =>
            '',
        'Disable it here!' => 'Забраняване на фукционалността тук',
        'Logfile too large!' => 'Журналния файл е прекалено голям!',
        'The logfile is too large, you need to reset it' => '',
        'Overview' => 'Преглед',
        'Range' => 'Диапазон',
        'Interface' => 'Интерфейс',
        'Requests' => 'Заявки',
        'Min Response' => 'Минимално време за отговор',
        'Max Response' => 'Максимално време за отговор',
        'Average Response' => 'Средно време за отговор',
        'Period' => '',
        'Min' => '',
        'Max' => '',
        'Average' => '',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Управление филтъра за е-поща',
        'Add filter' => '',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            '',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'Ако искате съвпадение само на e-mail адреса използвайте EMAILADDRESS:info@example.com в From, To или Cc.',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            '',
        'Delete this filter' => '',
        'Add PostMaster Filter' => '',
        'Edit PostMaster Filter' => '',
        'Filter name' => '',
        'The name is required.' => '',
        'Stop after match' => '',
        'Filter Condition' => '',
        'The field needs to be a valid regular expression or a literal word.' =>
            '',
        'Set Email Headers' => '',
        'The field needs to be a literal word.' => '',

        # Template: AdminPriority
        'Priority Management' => 'Управление на приоритетите',
        'Add priority' => '',
        'Add Priority' => 'Добави приоритет',
        'Edit Priority' => '',

        # Template: AdminProcessManagement
        'Process Management' => '',
        'Filter for Processes' => '',
        'Filter' => 'Филтър',
        'Process Name' => '',
        'Create New Process' => '',
        'Synchronize All Processes' => '',
        'Configuration import' => '',
        'Here you can upload a configuration file to import a process to your system. The file needs to be in .yml format as exported by process management module.' =>
            '',
        'Upload process configuration' => '',
        'Import process configuration' => '',
        'To create a new Process you can either import a Process that was exported from another system or create a complete new one.' =>
            '',
        'Changes to the Processes here only affect the behaviour of the system, if you synchronize the Process data. By synchronizing the Processes, the newly made changes will be written to the Configuration.' =>
            '',
        'Processes' => '',
        'Process name' => '',
        'Export Process Configuration' => '',

        # Template: AdminProcessManagementActivity
        'Cancel & close window' => '',
        'Go Back' => '',
        'Please note, that changing this activity will affect the following processes' =>
            '',
        'Activity' => '',
        'Activity Name' => '',
        'Activity Dialogs' => '',
        'You can assign Activity Dialogs to this Activity by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Ordering the elements within the list is also possible by drag \'n\' drop.' =>
            '',
        'Filter available Activity Dialogs' => '',
        'Available Activity Dialogs' => '',
        'Create New Activity Dialog' => '',
        'Assigned Activity Dialogs' => '',
        'As soon as you use this button or link, you will leave this screen and its current state will be saved automatically. Do you want to continue?' =>
            '',

        # Template: AdminProcessManagementActivityDialog
        'Please note that changing this activity dialog will affect the following activities' =>
            '',
        'Activity Dialog' => '',
        'Activity dialog Name' => '',
        'Available in' => '',
        'Description (Short)' => '',
        'Description (Long)' => '',
        'The selected permission does not exist.' => '',
        'Required Lock' => '',
        'The selected required lock does not exist.' => '',
        'Submit Advice Text' => '',
        'Submit Button Text' => '',
        'Fields' => '',
        'You can assign Fields to this Activity Dialog by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Filter available fields' => '',
        'Available Fields' => '',
        'Assigned Fields' => '',
        'Edit Details for Field' => '',
        'Description (short)' => '',
        'Description (long)' => '',
        'ArticleType' => '',
        'Display' => '',
        'Edit Field Details' => '',

        # Template: AdminProcessManagementPath
        'Path' => '',
        'Transition Actions' => '',
        'You can assign Transition Actions to this Transition by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Filter available Transition Actions' => '',
        'Available Transition Actions' => '',
        'Create New Transition Action' => '',
        'Assigned Transition Actions' => '',

        # Template: AdminProcessManagementPopupResponse

        # Template: AdminProcessManagementProcessAccordion
        'Activities' => '',
        'Filter Activities...' => '',
        'Create New Activity' => '',
        'Filter Activity Dialogs...' => '',
        'Transitions' => '',
        'Filter Transitions...' => '',
        'Create New Transition' => '',
        'Filter Transition Actions...' => '',

        # Template: AdminProcessManagementProcessEdit
        'Edit Process' => '',
        'Delete Process' => '',
        'Delete Inactive Process' => '',
        'Available Process Elements' => '',
        'The Elements listed above in this sidebar can be moved to the canvas area on the right by using drag\'n\'drop.' =>
            '',
        'You can place Activities on the canvas area to assign this Activity to the Process.' =>
            '',
        'To assign an Activity Dialog to an Activity drop the Activity Dialog element from this sidebar over the Activity placed in the canvas area.' =>
            '',
        'You can start a connection between to Activities by dropping the Transition element over the Start Activity of the connection. After that you can move the loose end of the arrow to the End Activity.' =>
            '',
        'Actions can be assigned to a Transition by dropping the Action Element onto the label of a Transition.' =>
            '',
        'Edit Process Information' => '',
        'The selected state does not exist.' => '',
        'Add and Edit Activities, Activity Dialogs and Transitions' => '',
        'Extend the width of the Canvas' => '',
        'Extend the height of the Canvas' => '',
        'Remove the Activity from this Process' => '',
        'Do you really want to delete this Process?' => '',
        'Do you really want to delete this Activity?' => '',
        'Do you really want to delete this Activity Dialog?' => '',
        'Do you really want to delete this Transition?' => '',
        'Do you really want to delete this Transition Action?' => '',
        'Delete Entity' => '',
        'This Activity is already used in the Process. You cannot add it twice!' =>
            '',
        'This Activity cannot be deleted because it is the Start Activity.' =>
            '',
        'This Transition is already used for this Activity. You cannot use it twice!' =>
            '',
        'This TransitionAction is already used in this Path. You cannot use it twice!' =>
            '',
        'The Start Event cannot loose the Start Transition!' => '',
        'Do you really want to remove this activity from the canvas? This can only be undone by leaving this screen without saving.' =>
            '',
        'Do you really want to remove this transition from the canvas? This can only be undone by leaving this screen without saving.' =>
            '',
        'No dialogs assigned yet. Just pick an activity dialog from the list on the left and drag it here.' =>
            '',

        # Template: AdminProcessManagementProcessNew
        'In this screen, you can create a new process. In order to make the new process available to users, please make sure to set its state to \'Active\' and synchronize after completing your work.' =>
            '',

        # Template: AdminProcessManagementTransition
        'Please note that changing this transition will affect the following processes' =>
            '',
        'Transition' => '',
        'Transition Name' => '',
        'Conditions' => '',
        'Type of Linking between Conditions' => '',
        'Condition' => '',
        'Remove this Condition' => '',
        'Type of Linking' => '',
        'Remove this Field' => '',
        'Add a new Field' => '',
        'Add New Condition' => '',

        # Template: AdminProcessManagementTransitionAction
        'Please note that changing this transition action will affect the following processes' =>
            '',
        'Transition Action' => '',
        'Transition Action Name' => '',
        'Config Parameters' => '',
        'Remove this Parameter' => '',
        'Add a new Parameter' => '',

        # Template: AdminQueue
        'Manage Queues' => '',
        'Add queue' => '',
        'Add Queue' => '',
        'Edit Queue' => '',
        'Sub-queue of' => '',
        'Unlock timeout' => 'Време за отключване',
        '0 = no unlock' => '0 = без отключване',
        'Only business hours are counted.' => '',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            '',
        'Notify by' => '',
        '0 = no escalation' => '0 = без ескалация',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            '',
        'Follow up Option' => 'Параметри за автоматично проследяване',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            '',
        'Ticket lock after a follow up' => 'Заключване на билетът след автоматично известяване',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            '',
        'System address' => '',
        'Will be the sender address of this queue for email answers.' => 'Ще бъде адресът на изпраща за тази опашка при еМейл отговорите',
        'Default sign key' => '',
        'The salutation for email answers.' => 'Обръщението за отговорите по еМейл',
        'The signature for email answers.' => 'Подписът за отговорите по еМейл',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => '',
        'Filter for Queues' => '',
        'Filter for Auto Responses' => '',
        'Auto Responses' => 'Авто отговори',
        'Change Auto Response Relations for Queue' => '',
        'settings' => '',

        # Template: AdminQueueResponses
        'Manage Response-Queue Relations' => '',
        'Filter for Responses' => '',
        'Responses' => 'Отговори',
        'Change Queue Relations for Response' => '',
        'Change Response Relations for Queue' => '',

        # Template: AdminResponse
        'Manage Responses' => '',
        'Add response' => '',
        'A response is a default text which helps your agents to write faster answers to customers.' =>
            '',
        'Don\'t forget to add new responses to queues.' => '',
        'Delete this entry' => '',
        'Add Response' => '',
        'Edit Response' => '',
        'The current ticket state is' => 'Текущия статус на билета е',
        'Your email address is' => '',

        # Template: AdminResponseAttachment
        'Manage Responses <-> Attachments Relations' => '',
        'Filter for Attachments' => '',
        'Change Response Relations for Attachment' => '',
        'Change Attachment Relations for Response' => '',
        'Toggle active for all' => '',
        'Link %s to selected %s' => '',

        # Template: AdminRole
        'Role Management' => 'Управление на роли',
        'Add role' => '',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'Създайте роля и добавете групи в нея. След това добавете ролята на потребителите.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            '',
        'Add Role' => 'Добавяне на роля',
        'Edit Role' => '',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => '',
        'Filter for Roles' => '',
        'Roles' => 'Роли',
        'Select the role:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            '',
        'Change Role Relations for Group' => '',
        'Change Group Relations for Role' => '',
        'Toggle %s permission for all' => '',
        'move_into' => 'Преместване',
        'Permissions to move tickets into this group/queue.' => 'Позволение за преместване на билет в тази група/опашка.',
        'create' => 'Създаване',
        'Permissions to create tickets in this group/queue.' => 'Позволение за създаване на билет в тази група/опашка.',
        'priority' => 'Приоритет',
        'Permissions to change the ticket priority in this group/queue.' =>
            'Позволение за промяна на приоритета на билет в тази група/опашка.',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => '',
        'Filter for Agents' => '',
        'Agents' => '',
        'Manage Role-Agent Relations' => '',
        'Change Role Relations for Agent' => '',
        'Change Agent Relations for Role' => '',

        # Template: AdminSLA
        'SLA Management' => 'Управление на SLA',
        'Add SLA' => '',
        'Edit SLA' => '',
        'Please write only numbers!' => '',

        # Template: AdminSMIME
        'S/MIME Management' => 'Управление на S/MIME (Secure MIME)',
        'Add certificate' => '',
        'Add private key' => '',
        'Filter for certificates' => '',
        'Filter for SMIME certs' => '',
        'Here you can add relations to your private certificate, these will be embedded to the SMIME signature every time you use this certificate to sign an email.' =>
            '',
        'See also' => 'Вижте също',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'По този начин може да редактирате сертификати и частни ключове във файловата система.',
        'Hash' => 'Хеш',
        'Create' => 'Създаване',
        'Handle related certificates' => '',
        'Read certificate' => '',
        'Delete this certificate' => '',
        'Add Certificate' => 'Добавяне на сертификат',
        'Add Private Key' => 'Добавяне на частен ключ',
        'Secret' => 'Парола',
        'Related Certificates for' => '',
        'Delete this relation' => '',
        'Available Certificates' => '',
        'Relate this certificate' => '',

        # Template: AdminSMIMECertRead
        'SMIME Certificate' => '',
        'Close window' => '',

        # Template: AdminSalutation
        'Salutation Management' => 'Управление на обръщението',
        'Add salutation' => '',
        'Add Salutation' => 'Добавяне на обръщение',
        'Edit Salutation' => '',
        'Example salutation' => '',

        # Template: AdminScheduler
        'This option will force Scheduler to start even if the process is still registered in the database' =>
            '',
        'Start scheduler' => '',
        'Scheduler could not be started. Check if scheduler is not running and try it again with Force Start option' =>
            '',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' =>
            '',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            '',

        # Template: AdminSelectBox
        'SQL Box' => '',
        'Here you can enter SQL to send it directly to the application database.' =>
            '',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            '',
        'There is at least one parameter missing for the binding. Please check it.' =>
            '',
        'Result format' => '',
        'Run Query' => '',

        # Template: AdminService
        'Service Management' => 'Управление на service',
        'Add service' => '',
        'Add Service' => '',
        'Edit Service' => '',
        'Sub-service of' => '',

        # Template: AdminSession
        'Session Management' => 'Управление на сесиите',
        'All sessions' => '',
        'Agent sessions' => '',
        'Customer sessions' => '',
        'Unique agents' => '',
        'Unique customers' => '',
        'Kill all sessions' => 'Спиране на всички сесии',
        'Kill this session' => '',
        'Session' => 'Сесия',
        'Kill' => '',
        'Detail View for SessionID' => '',

        # Template: AdminSignature
        'Signature Management' => 'Управление на подпис',
        'Add signature' => '',
        'Add Signature' => 'Добавяне на подпис',
        'Edit Signature' => '',
        'Example signature' => '',

        # Template: AdminState
        'State Management' => 'Управление на статус',
        'Add state' => '',
        'Please also update the states in SysConfig where needed.' => '',
        'Add State' => 'Добавяне на статус',
        'Edit State' => '',
        'State type' => '',

        # Template: AdminSysConfig
        'SysConfig' => 'Системна конфигурация',
        'Navigate by searching in %s settings' => '',
        'Navigate by selecting config groups' => '',
        'Download all system config changes' => '',
        'Export settings' => '',
        'Load SysConfig settings from file' => '',
        'Import settings' => '',
        'Import Settings' => '',
        'Please enter a search term to look for settings.' => '',
        'Subgroup' => 'Подгрупа',
        'Elements' => 'Елементи',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => '',
        'This config item is only available in a higher config level!' =>
            '',
        'Reset this setting' => '',
        'Error: this file could not be found.' => '',
        'Error: this directory could not be found.' => '',
        'Error: an invalid value was entered.' => '',
        'Content' => 'Съдържание',
        'Remove this entry' => '',
        'Add entry' => '',
        'Remove entry' => '',
        'Add new entry' => '',
        'Create new entry' => '',
        'New group' => '',
        'Group ro' => '',
        'Readonly group' => '',
        'New group ro' => '',
        'Loader' => '',
        'File to load for this frontend module' => '',
        'New Loader File' => '',
        'NavBarName' => 'Име на навигационната лента',
        'NavBar' => 'Навигационна лента',
        'LinkOption' => '',
        'Block' => 'Блок',
        'AccessKey' => 'Клавиш за кратък достъп',
        'Add NavBar entry' => '',
        'Year' => '',
        'Month' => '',
        'Day' => '',
        'Invalid year' => '',
        'Invalid month' => '',
        'Invalid day' => '',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'Управление на системния еМейл адрес',
        'Add system address' => '',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            '',
        'Email address' => '',
        'Display name' => '',
        'Add System Email Address' => '',
        'Edit System Email Address' => '',
        'The display name and email address will be shown on mail you send.' =>
            '',

        # Template: AdminType
        'Type Management' => 'Управление на тип',
        'Add ticket type' => '',
        'Add Type' => 'Добавяне на тип',
        'Edit Type' => '',

        # Template: AdminUser
        'Add agent' => '',
        'Agents will be needed to handle tickets.' => '',
        'Don\'t forget to add a new agent to groups and/or roles!' => '',
        'Please enter a search term to look for agents.' => '',
        'Last login' => '',
        'Switch to agent' => '',
        'Add Agent' => '',
        'Edit Agent' => '',
        'Firstname' => 'Име',
        'Lastname' => 'Фамилия',
        'Password is required.' => '',
        'Start' => 'Старт',
        'End' => '',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => '',
        'Change Group Relations for Agent' => '',
        'Change Agent Relations for Group' => '',
        'note' => '',
        'Permissions to add notes to tickets in this group/queue.' => '',
        'owner' => 'Собственик',
        'Permissions to change the owner of tickets in this group/queue.' =>
            '',

        # Template: AgentBook
        'Address Book' => 'Адресна книга',
        'Search for a customer' => '',
        'Add email address %s to the To field' => '',
        'Add email address %s to the Cc field' => '',
        'Add email address %s to the Bcc field' => '',
        'Apply' => '',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => '',

        # Template: AgentCustomerInformationCenterSearch
        'Customer ID' => '',
        'Customer User' => 'Клиент-потребител',

        # Template: AgentCustomerSearch
        'Search Customer' => 'Търсене на потребител',
        'Duplicated entry' => '',
        'This address already exists on the address list.' => '',
        'It is going to be deleted from the field, please try again.' => '',

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => '',

        # Template: AgentDashboardCalendarOverview
        'in' => '',

        # Template: AgentDashboardCustomerCompanyInformation

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => '',

        # Template: AgentDashboardCustomerUserList
        'Customer information' => '',
        'Phone ticket' => '',
        'Email ticket' => '',
        '%s open ticket(s) of %s' => '',
        '%s closed ticket(s) of %s' => '',
        'New phone ticket for %s' => '',
        'New email ticket for %s' => '',

        # Template: AgentDashboardIFrame

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '',
        'Please update now.' => '',
        'Release Note' => '',
        'Level' => '',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => '',
        'My watched tickets' => '',
        'My responsibilities' => '',
        'Tickets in My Queues' => '',

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline
        'out of office' => '',

        # Template: AgentDashboardUserOutOfOffice
        'until' => '',

        # Template: AgentHTMLReferenceForms

        # Template: AgentHTMLReferenceOverview

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => '',
        'Undo & close window' => '',

        # Template: AgentInfo
        'Info' => 'Информация',
        'To accept some news, a license or some changes.' => '',

        # Template: AgentLinkObject
        'Link Object: %s' => '',
        'go to link delete screen' => '',
        'Select Target Object' => '',
        'Link Object' => 'Обект за свързване',
        'with' => '',
        'Unlink Object: %s' => '',
        'go to link add screen' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferences
        'Edit your preferences' => '',

        # Template: AgentSpelling
        'Spell Checker' => 'Проверка на правописът',
        'spelling error(s)' => 'Правописна грешка(грешки)',
        'Apply these changes' => 'Прилага се към тези промени',

        # Template: AgentStatsDelete
        'Delete stat' => '',
        'Stat#' => 'Статистика#',
        'Do you really want to delete this stat?' => '',

        # Template: AgentStatsEditRestrictions
        'Step %s' => '',
        'General Specifications' => '',
        'Select the element that will be used at the X-axis' => '',
        'Select the elements for the value series' => 'Изберете елементи за групите от стойности',
        'Select the restrictions to characterize the stat' => '',
        'Here you can make restrictions to your stat.' => 'Тук може да добавите ограничения на Вашата статистика.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' =>
            'Ако махнете опцията \'Fixed\' агент потребителя който генерира статистиката ще може да променя съответния елемент.',
        'Fixed' => 'Fixed',
        'Please select only one element or turn off the button \'Fixed\'.' =>
            '',
        'Absolute Period' => '',
        'Between' => 'Между',
        'Relative Period' => 'Относителен интервал',
        'The last' => 'Последните',
        'Finish' => 'Край',

        # Template: AgentStatsEditSpecification
        'Permissions' => 'Разрешения',
        'You can select one or more groups to define access for different agents.' =>
            '',
        'Some result formats are disabled because at least one needed package is not installed.' =>
            '',
        'Please contact your administrator.' => '',
        'Graph size' => '',
        'If you use a graph as output format you have to select at least one graph size.' =>
            'Ако използвате графика за изходен формат ще е необходимо да се въведе размер на графиката.',
        'Sum rows' => 'Сума на редовете',
        'Sum columns' => 'Сума на колоните',
        'Use cache' => '',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' =>
            'По голямата част от статисиките могат да се кешират. Това ще ускори генерирането на Вашата статистика.',
        'If set to invalid end users can not generate the stat.' => '',

        # Template: AgentStatsEditValueSeries
        'Here you can define the value series.' => '',
        'You have the possibility to select one or two elements.' => '',
        'Then you can select the attributes of elements.' => '',
        'Each attribute will be shown as single value series.' => '',
        'If you don\'t select any attribute all attributes of the element will be used if you generate a stat, as well as new attributes which were added since the last configuration.' =>
            '',
        'Scale' => 'Мащаб',
        'minimal' => 'минимален',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' =>
            'Имайте предвид че мащаба на стойностите трябва да е по-голям от този на оста Х (Пример: X-Axis => Month, ValueSeries => Year).',

        # Template: AgentStatsEditXaxis
        'Here you can define the x-axis. You can select one element via the radio button.' =>
            '',
        'maximal period' => 'максимален период',
        'minimal scale' => 'минимален мащаб',

        # Template: AgentStatsImport
        'Import Stat' => '',
        'File is not a Stats config' => 'Файла не е дефиниция на статистика',
        'No File selected' => 'Не е избран файл',

        # Template: AgentStatsOverview
        'Stats' => 'Статистики',

        # Template: AgentStatsPrint
        'Print' => 'Отпечатване',
        'No Element selected.' => 'Няма избран елемент',

        # Template: AgentStatsView
        'Export config' => '',
        'With the input and select fields you can influence the format and contents of the statistic.' =>
            '',
        'Exactly what fields and formats you can influence is defined by the statistic administrator.' =>
            '',
        'Stat Details' => '',
        'Format' => 'Формат',
        'Graphsize' => 'Размер на графиката',
        'Cache' => 'Кеш',
        'Exchange Axis' => 'Размяна на осите',
        'Configurable params of static stat' => 'Конфигурируеми параметри на статичната статистика',
        'No element selected.' => 'Няма избран елемент',
        'maximal period from' => 'максимален период от',
        'to' => 'до',

        # Template: AgentTicketActionCommon
        'Change Free Text of Ticket' => '',
        'Change Owner of Ticket' => '',
        'Close Ticket' => '',
        'Add Note to Ticket' => '',
        'Set Pending' => 'В очакване - задаване',
        'Change Priority of Ticket' => '',
        'Change Responsible of Ticket' => '',
        'Service invalid.' => '',
        'New Owner' => 'Нов собственик',
        'Please set a new owner!' => '',
        'Previous Owner' => 'Предишен собственик',
        'Inform Agent' => 'Информирай агента',
        'Optional' => 'Опционално',
        'Inform involved Agents' => 'Информирай включените агенти',
        'Spell check' => '',
        'Note type' => 'Бележката е от тип',
        'Next state' => 'Следващо състояние',
        'Pending date' => 'В очакване - дата',
        'Date invalid!' => '',

        # Template: AgentTicketActionPopupClose

        # Template: AgentTicketBounce
        'Bounce Ticket' => '',
        'Bounce to' => 'Отказ на',
        'You need a email address.' => '',
        'Need a valid email address or don\'t use a local email address.' =>
            '',
        'Next ticket state' => 'Следващо състояние за билетът',
        'Inform sender' => 'Да се информира изпращачът',
        'Send mail!' => 'Изпратете еМейл!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Събирателно действие',
        'Send Email' => '',
        'Merge to' => 'Изравняване с',
        'Invalid ticket identifier!' => '',
        'Merge to oldest' => '',
        'Link together' => '',
        'Link to parent' => '',
        'Unlock tickets' => '',

        # Template: AgentTicketClose

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Създаване на отговор за този билет',
        'Remove Ticket Customer' => '',
        'Please remove this entry and enter a new one with the correct value.' =>
            '',
        'Please include at least one recipient' => '',
        'Remove Cc' => '',
        'Remove Bcc' => '',
        'Address book' => '',
        'Pending Date' => 'В очакване-дата',
        'for pending* states' => 'за състояния в очакване* ',
        'Date Invalid!' => '',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Промяна на потребителят на билета',
        'Customer Data' => 'Данни за потребителя',
        'Customer user' => '',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => '',
        'From queue' => '',
        'To customer' => '',
        'Please include at least one customer for the ticket.' => '',
        'Get all' => '',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Forward ticket: %s - %s' => '',

        # Template: AgentTicketFreeText

        # Template: AgentTicketHistory
        'History of' => 'Хроника на',
        'History Content' => '',
        'Zoom view' => '',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Изравняване на билет',
        'You need to use a ticket number!' => 'Необходимо е да използвате номер на билета',
        'A valid ticket number is required.' => '',
        'Need a valid email address.' => '',

        # Template: AgentTicketMove
        'Move Ticket' => 'Преместване на билета',
        'New Queue' => 'Следваща опашка',

        # Template: AgentTicketNote

        # Template: AgentTicketOverviewMedium
        'Select all' => '',
        'No ticket data found.' => '',
        'First Response Time' => 'Време на първи отговор',
        'Service Time' => 'Service Time',
        'Update Time' => 'Време на ъпдейт на статуса',
        'Solution Time' => 'Време за решаване',
        'Move ticket to a different queue' => '',
        'Change queue' => 'Промяна на опашката',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'Редакция на търсенето',
        'Tickets per page' => '',

        # Template: AgentTicketOverviewPreview

        # Template: AgentTicketOverviewSmall
        'Escalation in' => 'Улеличение на приоритета в',
        'Locked' => 'Заключен',

        # Template: AgentTicketOwner

        # Template: AgentTicketPending

        # Template: AgentTicketPhone
        'Create New Phone Ticket' => '',
        'From customer' => '',
        'To queue' => '',

        # Template: AgentTicketPhoneCommon
        'Phone call' => 'Телефонно обаждане',

        # Template: AgentTicketPlain
        'Email Text Plain View' => '',
        'Plain' => 'Обикновен',
        'Download this email' => '',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Информация за билета',
        'Accounted time' => 'Отброено време',
        'Linked-Object' => 'Свързан обект',
        'by' => 'от',

        # Template: AgentTicketPriority

        # Template: AgentTicketProcess
        'Create New Process Ticket' => '',
        'Process' => '',

        # Template: AgentTicketProcessNavigationBar

        # Template: AgentTicketQueue

        # Template: AgentTicketResponsible

        # Template: AgentTicketSearch
        'Search template' => 'Шаблон',
        'Create Template' => '',
        'Create New' => '',
        'Profile link' => '',
        'Save changes in template' => '',
        'Add another attribute' => '',
        'Output' => 'Формат на резултата',
        'Fulltext' => 'Пълнотекстово',
        'Remove' => '',
        'Customer User Login' => 'Логин на клиент-потребител',
        'Created in Queue' => 'Създаден в опашка',
        'Lock state' => '',
        'Watcher' => '',
        'Article Create Time (before/after)' => '',
        'Article Create Time (between)' => '',
        'Ticket Create Time (before/after)' => '',
        'Ticket Create Time (between)' => '',
        'Ticket Change Time (before/after)' => '',
        'Ticket Change Time (between)' => '',
        'Ticket Close Time (before/after)' => '',
        'Ticket Close Time (between)' => '',
        'Ticket Escalation Time (before/after)' => '',
        'Ticket Escalation Time (between)' => '',
        'Archive Search' => '',
        'Run search' => '',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Article filter' => '',
        'Article Type' => '',
        'Sender Type' => '',
        'Save filter settings as default' => '',
        'Archive' => '',
        'This ticket is archived.' => '',
        'Linked Objects' => '',
        'Article(s)' => '',
        'Change Queue' => '',
        'There are currently no steps available for this process.' => '',
        'This item has no articles yet.' => '',
        'Article Filter' => '',
        'Add Filter' => '',
        'Set' => 'Поставяне',
        'Reset Filter' => '',
        'Show one article' => '',
        'Show all articles' => '',
        'Unread articles' => '',
        'No.' => '',
        'Unread Article!' => '',
        'Incoming message' => '',
        'Outgoing message' => '',
        'Internal message' => '',
        'Resize' => '',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => '',
        'Load blocked content.' => '',

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerError
        'Traceback' => 'Проследяване',

        # Template: CustomerFooter
        'Powered by' => 'С помощта на',
        'One or more errors occurred!' => '',
        'Close this dialog' => '',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            '',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'JavaScript Not Available' => '',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            '',
        'Browser Warning' => '',
        'The browser you are using is too old.' => '',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            '',
        'Please see the documentation or ask your admin for further information.' =>
            '',
        'Login' => 'Вход',
        'User name' => '',
        'Your user name' => '',
        'Your password' => '',
        'Forgot password?' => '',
        'Log In' => '',
        'Not yet registered?' => '',
        'Sign up now' => '',
        'Request new password' => 'Завка за нова парола',
        'Your User Name' => '',
        'A new password will be sent to your email address.' => '',
        'Create Account' => 'Създаване на акаунт',
        'Please fill out this form to receive login credentials.' => '',
        'How we should address you' => '',
        'Your First Name' => '',
        'Please supply a first name' => '',
        'Your Last Name' => '',
        'Please supply a last name' => '',
        'Your email address (this will become your username)' => '',
        'Please supply a' => '',

        # Template: CustomerNavigationBar
        'Edit personal preferences' => '',
        'Logout %s' => '',

        # Template: CustomerPreferences

        # Template: CustomerRichTextEditor

        # Template: CustomerTicketMessage
        'Service level agreement' => '',

        # Template: CustomerTicketOverview
        'Welcome!' => '',
        'Please click the button below to create your first ticket.' => '',
        'Create your first ticket' => '',

        # Template: CustomerTicketPrint
        'Ticket Print' => '',

        # Template: CustomerTicketSearch
        'Profile' => 'Профил',
        'e. g. 10*5155 or 105658*' => '',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => '',
        'Recipient' => '',
        'Carbon Copy' => '',
        'Time restrictions' => '',
        'No time settings' => '',
        'Only tickets created' => '',
        'Only tickets created between' => '',
        'Ticket archive system' => '',
        'Save search as template?' => '',
        'Save as Template?' => '',
        'Save as Template' => '',
        'Template Name' => '',
        'Pick a profile name' => '',
        'Output to' => '',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort
        'of' => 'на',
        'Page' => 'Страница',
        'Search Results for' => '',

        # Template: CustomerTicketZoom
        'Show  article' => '',
        'Expand article' => '',
        'Information' => '',
        'Next Steps' => '',
        'There are no further steps in this process' => '',
        'Reply' => '',

        # Template: CustomerWarning

        # Template: Datepicker
        'Invalid date (need a future date)!' => '',
        'Previous' => '',
        'Sunday' => '',
        'Monday' => '',
        'Tuesday' => '',
        'Wednesday' => '',
        'Thursday' => '',
        'Friday' => '',
        'Saturday' => '',
        'Su' => '',
        'Mo' => '',
        'Tu' => '',
        'We' => '',
        'Th' => '',
        'Fr' => '',
        'Sa' => '',
        'Open date selection' => '',

        # Template: Error
        'Oops! An Error occurred.' => '',
        'Error Message' => '',
        'You can' => '',
        'Send a bugreport' => '',
        'go back to the previous page' => '',
        'Error Details' => '',

        # Template: Footer
        'Top of page' => '',

        # Template: FooterJS
        'If you now leave this page, all open popup windows will be closed, too!' =>
            '',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            '',
        'Please enter at least one search value or * to find anything.' =>
            '',

        # Template: FooterSmall

        # Template: HTMLHead

        # Template: HTMLHeadBlockEvents

        # Template: Header
        'Fulltext search' => '',
        'CustomerID Search' => '',
        'CustomerUser Search' => '',
        'You are logged in as' => '',

        # Template: HeaderSmall

        # Template: Installer
        'JavaScript not available' => '',
        'Database Settings' => '',
        'General Specifications and Mail Settings' => '',
        'Registration' => '',
        'Welcome to %s' => 'Добре дошли в %s',
        'Web site' => '',
        'Database check successful.' => '',
        'Mail check successful.' => '',
        'Error in the mail settings. Please correct and try again.' => '',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => '',
        'Outbound mail type' => '',
        'Select outbound mail type.' => '',
        'Outbound mail port' => '',
        'Select outbound mail port.' => '',
        'SMTP host' => '',
        'SMTP host.' => '',
        'SMTP authentication' => '',
        'Does your SMTP host need authentication?' => '',
        'SMTP auth user' => '',
        'Username for SMTP auth.' => '',
        'SMTP auth password' => '',
        'Password for SMTP auth.' => '',
        'Configure Inbound Mail' => '',
        'Inbound mail type' => '',
        'Select inbound mail type.' => '',
        'Inbound mail host' => '',
        'Inbound mail host.' => '',
        'Inbound mail user' => '',
        'User for inbound mail.' => '',
        'Inbound mail password' => '',
        'Password for inbound mail.' => '',
        'Result of mail configuration check' => '',
        'Check mail configuration' => '',
        'Skip this step' => '',
        'Skipping this step will automatically skip the registration of your OTRS. Are you sure you want to continue?' =>
            '',

        # Template: InstallerDBResult
        'False' => '',

        # Template: InstallerDBStart
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' =>
            '',
        'Currently only MySQL is supported in the web installer.' => '',
        'If you want to install OTRS on another database type, please refer to the file README.database.' =>
            '',
        'Database-User' => 'Потребител на СУБД',
        'New' => 'Нови',
        'A new database user with limited rights will be created for this OTRS system.' =>
            '',
        'default \'hot\'' => 'по подразбиране',
        'DB--- host' => '',
        'Check database settings' => '',
        'Result of database check' => '',

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            'За да може да използвате OTRS, Вие трябва да въведете, като superuser root в командния ред (Terminal/Shell) следната команда',
        'Restart your webserver' => 'Рестарт на web сървъра',
        'After doing so your OTRS is up and running.' => 'След извършването на това, Вашият OTRS е напълно работоспособен.',
        'Start page' => 'Начална страница',
        'Your OTRS Team' => 'Вашият OTRS екип',

        # Template: InstallerLicense
        'Accept license' => 'Приемане на лиценза',
        'Don\'t accept license' => 'Отказване на лиценза',

        # Template: InstallerLicenseText

        # Template: InstallerRegistration
        'Organization' => 'Организация',
        'Position' => '',
        'Complete registration and continue' => '',
        'Please fill in all fields marked as mandatory.' => '',

        # Template: InstallerSystem
        'SystemID' => 'Системно ID',
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            '',
        'System FQDN' => 'Системно FQDN',
        'Fully qualified domain name of your system.' => '',
        'AdminEmail' => 'Admin е-поща',
        'Email address of the system administrator.' => '',
        'Log' => 'Журнал',
        'LogModule' => 'Журнален модул',
        'Log backend to use.' => '',
        'LogFile' => '',
        'Log file location is only needed for File-LogModule!' => '',
        'Webfrontend' => 'Web-зона',
        'Default language' => '',
        'Default language.' => '',
        'CheckMXRecord' => 'CheckMXRecord (Проверка MX запис)',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            '',

        # Template: LinkObject
        'Object#' => '',
        'Add links' => '',
        'Delete links' => '',

        # Template: Login
        'Lost your password?' => 'Забравена парола',
        'Request New Password' => '',
        'Back to login' => '',

        # Template: Motd
        'Message of the Day' => '',

        # Template: NoPermission
        'Insufficient Rights' => '',
        'Back to the previous page' => '',

        # Template: Notify

        # Template: Pagination
        'Show first page' => '',
        'Show previous pages' => '',
        'Show page %s' => '',
        'Show next pages' => '',
        'Show last page' => '',

        # Template: PictureUpload
        'Need FormID!' => '',
        'No file found!' => '',
        'The file is not an image that can be shown inline!' => '',

        # Template: PrintFooter
        'URL' => 'Адрес',

        # Template: PrintHeader
        'printed by' => 'отпечатано от',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: SpellingInline

        # Template: Test
        'OTRS Test Page' => 'Тестова страница на OTRS',
        'Welcome %s' => 'Привет %s',
        'Counter' => 'Брояч',

        # Template: Warning
        'Go back to the previous page' => '',

        # SysConfig
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            '',
        'Activates lost password feature for agents, in the agent interface.' =>
            '',
        'Activates lost password feature for customers.' => '',
        'Activates support for customer groups.' => '',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            '',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            '',
        'Activates the ticket archive system search in the customer interface.' =>
            '',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            '',
        'Activates time accounting.' => '',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            '',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface.' =>
            '',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Agent Notifications' => '',
        'Agent interface article notification module to check PGP.' => '',
        'Agent interface article notification module to check S/MIME.' =>
            '',
        'Agent interface module to access CIC search via nav bar.' => '',
        'Agent interface module to access fulltext search via nav bar.' =>
            '',
        'Agent interface module to access search profiles via nav bar.' =>
            '',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            '',
        'Agent interface notification module to check the used charset.' =>
            '',
        'Agent interface notification module to see the number of tickets an agent is responsible for.' =>
            '',
        'Agent interface notification module to see the number of watched tickets.' =>
            '',
        'Agents <-> Groups' => '',
        'Agents <-> Roles' => '',
        'All customer users of a CustomerID' => '',
        'Allows adding notes in the close ticket screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket free text screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket note screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket responsible screen of the agent interface.' =>
            '',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            '',
        'Allows agents to generate individual-related stats.' => '',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            '',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            '',
        'Allows customers to change the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            '',
        'Allows customers to set the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            '',
        'Allows customers to set the ticket service in the customer interface.' =>
            '',
        'Allows customers to set the ticket type in the customer interface. If this is set to \'No\', TicketTypeDefault should be configured.' =>
            '',
        'Allows default services to be selected also for non existing customers.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            '',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            '',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows the administrators to login as other customers, via the customer user administration panel.' =>
            '',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            '',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            '',
        'Attachments <-> Responses' => 'Прикачени файлове <-> Опашки',
        'Auto Responses <-> Queues' => 'Авто отговори <-> Опашки',
        'Automated line break in text messages after x number of chars.' =>
            '',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            '',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled).' =>
            '',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            '',
        'Balanced white skin by Felix Niklas.' => '',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            '',
        'Builds an article index right after the article\'s creation.' =>
            '',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            '',
        'Cache time in seconds for agent authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for customer authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for the DB process backend.' => '',
        'Cache time in seconds for the ticket process navigation bar output module.' =>
            '',
        'Cache time in seconds for the web service config backend.' => '',
        'Change password' => '',
        'Change queue!' => '',
        'Change the customer for this ticket' => '',
        'Change the free fields for this ticket' => '',
        'Change the priority for this ticket' => '',
        'Change the responsible person for this ticket' => '',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '',
        'Checkbox' => '',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            '',
        'Closed tickets of customer' => '',
        'Comment for new history entries in the customer interface.' => '',
        'Company Status' => '',
        'Company Tickets' => '',
        'Company name for the customer web interface. Will also be included in emails as an X-Header.' =>
            '',
        'Configure Processes.' => '',
        'Configure your own log text for PGP.' => '',
        'Configures a default TicketDynmicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://doc.otrs.org/), chapter "Ticket Event Module".' =>
            '',
        'Configures the full-text index. Execute "bin/otrs.RebuildFulltextIndex.pl" in order to generate a new index.' =>
            '',
        'Controls if customers have the ability to sort their tickets.' =>
            '',
        'Controls if more than one from entry can be set in the new phone ticket in the agent interface.' =>
            '',
        'Controls if the ticket and article seen flags are removed when a ticket is archived.' =>
            '',
        'Converts HTML mails into text messages.' => '',
        'Create New process ticket' => '',
        'Create and manage Service Level Agreements (SLAs).' => '',
        'Create and manage agents.' => '',
        'Create and manage attachments.' => '',
        'Create and manage companies.' => '',
        'Create and manage customers.' => '',
        'Create and manage dynamic fields.' => '',
        'Create and manage event based notifications.' => '',
        'Create and manage groups.' => '',
        'Create and manage queues.' => '',
        'Create and manage response templates.' => '',
        'Create and manage responses that are automatically sent.' => '',
        'Create and manage roles.' => '',
        'Create and manage salutations.' => '',
        'Create and manage services.' => '',
        'Create and manage signatures.' => '',
        'Create and manage ticket priorities.' => '',
        'Create and manage ticket states.' => '',
        'Create and manage ticket types.' => '',
        'Create and manage web services.' => '',
        'Create new email ticket and send this out (outbound)' => '',
        'Create new phone ticket (inbound)' => '',
        'Custom text for the page shown to customers that have no tickets yet.' =>
            '',
        'Customer Company Administration' => '',
        'Customer Company Information' => '',
        'Customer User Administration' => '',
        'Customer Users' => 'Клиент-потребители',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customers <-> Groups' => '',
        'Customers <-> Services' => '',
        'Data used to export the search result in CSV format.' => '',
        'Date / Time' => '',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            '',
        'Default ACL values for ticket actions.' => '',
        'Default ProcessManagement entity prefixes for entity IDs that are automatically generated.' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            '',
        'Default loop protection module.' => '',
        'Default queue ID used by the system in the agent interface.' => '',
        'Default skin for OTRS 3.0 interface.' => '',
        'Default skin for interface.' => '',
        'Default ticket ID used by the system in the agent interface.' =>
            '',
        'Default ticket ID used by the system in the customer interface.' =>
            '',
        'Default value for NameX' => '',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Define the start day of the week for the date picker.' => '',
        'Defines a customer item, which generates a LinkedIn icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a XING icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google maps icon at the end of a customer info block.' =>
            '',
        'Defines a default list of words, that are ignored by the spell checker.' =>
            '',
        'Defines a filter for html output to add links behind CVE numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind MSBulletin numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind bugtraq numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter to process the text in the articles, in order to highlight predefined keywords.' =>
            '',
        'Defines a regular expression that excludes some addresses from the syntax check (if "CheckEmailAddresses" is set to "Yes"). Please enter a regex in this field for email addresses, that aren\'t syntactically valid, but are necessary for the system (i.e. "root@localhost").' =>
            '',
        'Defines a regular expression that filters all email addresses that should not be used in the application.' =>
            '',
        'Defines a useful module to load specific user options or to display news.' =>
            '',
        'Defines all the X-headers that should be scanned.' => '',
        'Defines all the languages that are available to the application. The Key/Content pair links the front-end display name to the appropriate language PM file. The "Key" value should be the base-name of the PM file (i.e. de.pm is the file, then de is the "Key" value). The "Content" value should be the display name for the front-end. Specify any own-defined language here (see the developer documentation http://doc.otrs.org/ for more infomation). Please remember to use the HTML equivalents for non-ASCII characters (i.e. for the German oe = o umlaut, it is necessary to use the &ouml; symbol).' =>
            '',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for this item in the customer preferences.' =>
            '',
        'Defines all the possible stats output formats.' => '',
        'Defines an alternate URL, where the login link refers to.' => '',
        'Defines an alternate URL, where the logout link refers to.' => '',
        'Defines an alternate login URL for the customer panel..' => '',
        'Defines an alternate logout URL for the customer panel.' => '',
        'Defines an external link to the database of the customer (e.g. \'http://yourhost/customer.php?CID=$Data{"CustomerID"}\' or \'\').' =>
            '',
        'Defines how the From field from the emails (sent from answers and email tickets) should look like.' =>
            '',
        'Defines if a pre-sorting by priority should be done in the queue view.' =>
            '',
        'Defines if a ticket lock is required in the close ticket screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket bounce screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket compose screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket forward screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket free text screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket merge screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket note screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket owner screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket pending screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone inbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket priority screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket responsible screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required to change the customer of a ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if composed messages have to be spell checked in the agent interface.' =>
            '',
        'Defines if time accounting is mandatory in the agent interface.' =>
            '',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            '',
        'Defines scheduler PID update time in seconds (floating point number).' =>
            '',
        'Defines scheduler sleep time in seconds after processing all available tasks (floating point number).' =>
            '',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            '',
        'Defines the URL CSS path.' => '',
        'Defines the URL base path of icons, CSS and Java Script.' => '',
        'Defines the URL image path of icons for navigation.' => '',
        'Defines the URL java script path.' => '',
        'Defines the URL rich text editor path.' => '',
        'Defines the address of a dedicated DNS server, if necessary, for the "CheckMXRecord" look-ups.' =>
            '',
        'Defines the body text for notification mails sent to agents, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to agents, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, about new account.' =>
            '',
        'Defines the body text for notification mails sent to customers, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for rejected emails.' => '',
        'Defines the boldness of the line drawed by the graph.' => '',
        'Defines the colors for the graphs.' => '',
        'Defines the column to store the keys for the preferences table.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            '',
        'Defines the connections for http/ftp, via a proxy.' => '',
        'Defines the date input format used in forms (option or input fields).' =>
            '',
        'Defines the default CSS used in rich text editors.' => '',
        'Defines the default auto response type of the article for this operation.' =>
            '',
        'Defines the default body of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default front-end (HTML) theme to be used by the agents and customers. The default themes are Standard and Lite. If you like, you can add your own theme. Please refer the administrator manual located at http://doc.otrs.org/.' =>
            '',
        'Defines the default front-end language. All the possible values are determined by the available language files on the system (see the next setting).' =>
            '',
        'Defines the default history type in the customer interface.' => '',
        'Defines the default maximum number of X-axis attributes for the time scale.' =>
            '',
        'Defines the default maximum number of search results shown on the overview page.' =>
            '',
        'Defines the default next state for a ticket after customer follow up in the customer interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being forwarded, in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket if it is composed / answered in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default priority of follow up customer tickets in the ticket zoom screen in the customer interface.' =>
            '',
        'Defines the default priority of new customer tickets in the customer interface.' =>
            '',
        'Defines the default priority of new tickets.' => '',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            '',
        'Defines the default selection at the drop down menu for dynamic objects (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for permissions (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for stats format (Form: Common Specification). Please insert the format key (see Stats::Format).' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for tickets in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen. Example: a text, 1, DynamicField_Field1StartYear=2002; DynamicField_Field1StartMonth=12; DynamicField_Field1StartDay=12; DynamicField_Field1StartHour=00; DynamicField_Field1StartMinute=00; DynamicField_Field1StartSecond=00; DynamicField_Field1StopYear=2009; DynamicField_Field1StopMonth=02; DynamicField_Field1StopDay=10; DynamicField_Field1StopHour=23; DynamicField_Field1StopMinute=59; DynamicField_Field1StopSecond=59;.' =>
            '',
        'Defines the default sort criteria for all queues displayed in the queue view.' =>
            '',
        'Defines the default sort order for all queues in the queue view, after priority sort.' =>
            '',
        'Defines the default spell checker dictionary.' => '',
        'Defines the default state of new customer tickets in the customer interface.' =>
            '',
        'Defines the default state of new tickets.' => '',
        'Defines the default subject for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default subject for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default subject of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in a ticket search of the customer interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the escalation view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the locked ticket view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the responsible view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the status view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the watch view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of the agent interface.' =>
            '',
        'Defines the default ticket bounced notification for customer/sender in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default ticket order (after priority sort) in the escalation view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order (after priority sort) in the status view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the responsible view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket locked view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the watch view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order of a search result in the customer interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket priority in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default ticket type for new customer tickets in the customer interface.' =>
            '',
        'Defines the default type for article in the customer interface.' =>
            '',
        'Defines the default type of forwarded message in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default type of the article for this operation.' => '',
        'Defines the default type of the note in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the agent interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the customer interface.' =>
            '',
        'Defines the default value for the action parameter for the public frontend. The action parameter is used in the scripts of the system.' =>
            '',
        'Defines the default viewable sender types of a ticket (default: customer).' =>
            '',
        'Defines the filter that processes the text in the articles, in order to highlight URLs.' =>
            '',
        'Defines the format of responses in the ticket compose screen of the agent interface ($QData{"OrigFrom"} is From 1:1, $QData{"OrigFromName"} is only realname of From).' =>
            '',
        'Defines the fully qualified domain name of the system. This setting is used as a variable, OTRS_CONFIG_FQDN which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the groups every customer user will be in (if CustomerGroupSupport is enabled and you don\'t want to manage every user for these groups).' =>
            '',
        'Defines the height for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the height for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the height of the legend.' => '',
        'Defines the history comment for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history comment for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history comment for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history type for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history type for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the hours and week days of the indicated calendar, to count the working time.' =>
            '',
        'Defines the hours and week days to count the working time.' => '',
        'Defines the key to be checked with Kernel::Modules::AgentInfo module. If this user preferences key is true, the message is accepted by the system.' =>
            '',
        'Defines the key to check with CustomerAccept. If this user preferences key is true, then the message is accepted by the system.' =>
            '',
        'Defines the link type \'Normal\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type \'ParentChild\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type groups. The link types of the same group cancel one another. Example: If ticket A is linked per a \'Normal\' link with ticket B, then these tickets could not be additionally linked with link of a \'ParentChild\' relationship.' =>
            '',
        'Defines the list of online repositories. Another installations can be used as repository, for example: Key="http://example.com/otrs/public.pl?Action=PublicRepository;File=" and Content="Some Name".' =>
            '',
        'Defines the location to get online repository list for additional packages. The first available result will be used.' =>
            '',
        'Defines the log module for the system. "File" writes all messages in a given logfile, "SysLog" uses the syslog daemon of the system, e.g. syslogd.' =>
            '',
        'Defines the maximal size (in bytes) for file uploads via the browser.' =>
            '',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            '',
        'Defines the maximum number of pages per PDF file.' => '',
        'Defines the maximum size (in MB) of the log file.' => '',
        'Defines the module that shows a generic notification in the agent interface. Either "Text" - if configured - or the contents of "File" will be displayed.' =>
            '',
        'Defines the module that shows all the currently loged in customers in the agent interface.' =>
            '',
        'Defines the module that shows all the currently logged in agents in the agent interface.' =>
            '',
        'Defines the module that shows the currently loged in agents in the customer interface.' =>
            '',
        'Defines the module that shows the currently loged in customers in the customer interface.' =>
            '',
        'Defines the module to authenticate customers.' => '',
        'Defines the module to display a notification in the agent interface, (only for agents on the admin group) if the scheduler is not running.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having out-of-office active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the system is used by the admin user (normally you shouldn\'t work as admin).' =>
            '',
        'Defines the module to generate html refresh headers of html sites, in the customer interface.' =>
            '',
        'Defines the module to generate html refresh headers of html sites.' =>
            '',
        'Defines the module to send emails. "Sendmail" directly uses the sendmail binary of your operating system. Any of the "SMTP" mechanisms use a specified (external) mailserver. "DoNotSendEmail" doesn\'t send emails and it is useful for test systems.' =>
            '',
        'Defines the module used to store the session data. With "DB" the frontend server can be splitted from the db server. "FS" is faster.' =>
            '',
        'Defines the name of the application, shown in the web interface, tabs and title bar of the web browser.' =>
            '',
        'Defines the name of the column to store the data in the preferences table.' =>
            '',
        'Defines the name of the column to store the user identifier in the preferences table.' =>
            '',
        'Defines the name of the indicated calendar.' => '',
        'Defines the name of the key for customer sessions.' => '',
        'Defines the name of the session key. E.g. Session, SessionID or OTRS.' =>
            '',
        'Defines the name of the table, where the customer preferences are stored.' =>
            '',
        'Defines the next possible states after composing / answering a ticket in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the next possible states after forwarding a ticket in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the next possible states for customer tickets in the customer interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being moved to another queue, in the move ticket screen of the agent interface.' =>
            '',
        'Defines the parameters for the customer preferences table.' => '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the password to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the path and TTF-File to handle bold italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle proportional font in PDF documents.' =>
            '',
        'Defines the path for scheduler to store its console output (SchedulerOUT.log and SchedulerERR.log).' =>
            '',
        'Defines the path of the shown info file, that is located under Kernel/Output/HTML/Standard/CustomerAccept.dtl.' =>
            '',
        'Defines the path to PGP binary.' => '',
        'Defines the path to open ssl binary. It may need a HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).' =>
            '',
        'Defines the placement of the legend. This should be a two letter key of the form: \'B[LCR]|R[TCB]\'. The first letter indicates the placement (Bottom or Right), and the second letter the alignment (Left, Right, Center, Top, or Bottom).' =>
            '',
        'Defines the postmaster default queue.' => '',
        'Defines the receipent target of the phone ticket and the sender of the email ticket ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the agent interface.' =>
            '',
        'Defines the receipent target of the tickets ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the customer interface.' =>
            '',
        'Defines the required permission to show a ticket in the escalation view of the agent interface.' =>
            '',
        'Defines the search limit for the stats.' => '',
        'Defines the sender for rejected emails.' => '',
        'Defines the separator between the agents real name and the given queue email address.' =>
            '',
        'Defines the spacing of the legends.' => '',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            '',
        'Defines the standard size of PDF pages.' => '',
        'Defines the state of a ticket if it gets a follow-up and the ticket was already closed.' =>
            '',
        'Defines the state of a ticket if it gets a follow-up.' => '',
        'Defines the state type of the reminder for pending tickets.' => '',
        'Defines the subject for notification mails sent to agents, about new password.' =>
            '',
        'Defines the subject for notification mails sent to agents, with token about new requested password.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new account.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new password.' =>
            '',
        'Defines the subject for notification mails sent to customers, with token about new requested password.' =>
            '',
        'Defines the subject for rejected emails.' => '',
        'Defines the system administrator\'s email address. It will be displayed in the error screens of the application.' =>
            '',
        'Defines the system identifier. Every ticket number and http session string contain this ID. This ensures that only tickets which belong to your system will be processed as follow-ups (useful when communicating between two instances of OTRS).' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'AsPopup PopupType_TicketAction\'.' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'target="cdb"\'.' =>
            '',
        'Defines the time in days to keep log backup files.' => '',
        'Defines the time in seconds after which the Scheduler performs an automatic self-restart.' =>
            '',
        'Defines the time zone of the indicated calendar, which can be assigned later to a specific queue.' =>
            '',
        'Defines the type of protocol, used by ther web server, to serve the application. If https protocol will be used instead of plain http, it must be specified it here. Since this has no affect on the web server\'s settings or behavior, it will not change the method of access to the application and, if it is wrong, it will not prevent you from logging into the application. This setting is used as a variable, OTRS_CONFIG_HttpType which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the used character for email quotes in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the user identifier for the customer panel.' => '',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the valid state types for a ticket.' => '',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.UnlockTickets.pl" can be used.' =>
            '',
        'Defines the viewable locks of a ticket. Default: unlock, tmp_lock.' =>
            '',
        'Defines the width for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width of the legend.' => '',
        'Defines which article sender types should be shown in the preview of a ticket.' =>
            '',
        'Defines which states should be set automatically (Content), after the pending time of state (Key) has been reached.' =>
            '',
        'Defines wich article type should be expanded when entering the overview. If nothing defined, latest article will be expanded.' =>
            '',
        'Delay time between autocomplete queries in milliseconds.' => '',
        'Deletes a session if the session id is used with an invalid remote IP address.' =>
            '',
        'Deletes requested sessions if they have timed out.' => '',
        'Determines if the list of possible queues to move to ticket into should be displayed in a dropdown list or in a new window in the agent interface. If "New Window" is set you can add a move note to the ticket.' =>
            '',
        'Determines if the search results container for the autocomplete feature should adjust its width dynamically.' =>
            '',
        'Determines if the statistics module may generate ticket lists.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new email ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new phone ticket in the agent interface.' =>
            '',
        'Determines the next screen after new customer ticket in the customer interface.' =>
            '',
        'Determines the next screen after the follow up screen of a zoomed ticket in the customer interface.' =>
            '',
        'Determines the next screen after the ticket is moved. LastScreenOverview will return to search results, queueview, dashboard or the like, LastScreenView will return to TicketZoom.' =>
            '',
        'Determines the possible states for pending tickets that changed state after reaching time limit.' =>
            '',
        'Determines the strings that will be shown as receipent (To:) of the phone ticket and as sender (From:) of the email ticket in the agent interface. For Queue as NewQueueSelectionType "<Queue>" shows the names of the queues and for SystemAddress "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            '',
        'Determines the strings that will be shown as receipent (To:) of the ticket in the customer interface. For Queue as CustomerPanelSelectionType, "<Queue>" shows the names of the queues, and for SystemAddress, "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            '',
        'Determines the way the linked objects are displayed in each zoom mask.' =>
            '',
        'Determines which options will be valid of the recepient (phone ticket) and the sender (email ticket) in the agent interface.' =>
            '',
        'Determines which queues will be valid for ticket\'s recepients in the customer interface.' =>
            '',
        'Disables sending reminder notifications to the responsible agent of a ticket (Ticket::Responsible needs to be activated).' =>
            '',
        'Disables the web installer (http://yourhost.example.com/otrs/installer.pl), to prevent the system from being hijacked. If set to "No", the system can be reinstalled and the current basic configuration will be used to pre-populate the questions within the installer script. If not active, it also disables the GenericAgent, PackageManager and SQL Box (to avoid the use of destructive queries, such as DROP DATABASE, and also to steal user passwords).' =>
            '',
        'Display settings to override defaults for Process Tickets.' => '',
        'Displays the accounted time for an article in the ticket zoom view.' =>
            '',
        'Dropdown' => '',
        'Dynamic Fields Checkbox Backend GUI' => '',
        'Dynamic Fields Date Time Backend GUI' => '',
        'Dynamic Fields Drop-down Backend GUI' => '',
        'Dynamic Fields GUI' => '',
        'Dynamic Fields Multiselect Backend GUI' => '',
        'Dynamic Fields Overview Limit' => '',
        'Dynamic Fields Text Backend GUI' => '',
        'Dynamic Fields used to export the search result in CSV format.' =>
            '',
        'Dynamic fields groups for process widget. The key is the name of the group, the value contains the fields to be shown. Example: \'Key => My Group\', \'Content: Name_X, NameY\'.' =>
            '',
        'Dynamic fields limit per page for Dynamic Fields Overview' => '',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###AttributesView.' =>
            '',
        'Dynamic fields options shown in the ticket reply section in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the process widget in ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the sidebar of the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket close screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket email screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket forward screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket medium format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket move screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket overview screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket owner screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket pending screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone inbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket preview format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket priority screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket search overview results screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and shown by default.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket small format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'DynamicField backend registration.' => '',
        'DynamicField object registration.' => '',
        'Edit customer company' => '',
        'Email Addresses' => 'E-mail адреси',
        'Enables PDF output. The CPAN module PDF::API2 is required, if not installed, PDF output will be disabled.' =>
            '',
        'Enables PGP support. When PGP support is enabled for signing and securing mail, it is HIGHLY recommended that the web server be run as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            '',
        'Enables S/MIME support.' => '',
        'Enables customers to create their own accounts.' => '',
        'Enables file upload in the package manager frontend.' => '',
        'Enables or disable the debug mode over frontend interface.' => '',
        'Enables or disables the autocomplete feature for the customer search in the agent interface.' =>
            '',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            '',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            '',
        'Enables spell checker support.' => '',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            '',
        'Enables ticket bulk action feature only for the listed groups.' =>
            '',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            '',
        'Enables ticket watcher feature only for the listed groups.' => '',
        'Escalation view' => '',
        'Event list to be displayed on GUI to trigger generic interface invokers.' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate).' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            '',
        'Execute SQL statements.' => '',
        'Executes follow up checks on In-Reply-To or References headers for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up mail attachments checks in  mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up mail body checks in mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up plain/raw mail checks in mails that don\'t have a ticket number in the subject.' =>
            '',
        'Experimental "Slim" skin which tries to save screen space for power users.' =>
            '',
        'Exports the whole article tree in search result (it can affect the system performance).' =>
            '',
        'Fetches packages via proxy. Overwrites "WebUserAgent::Proxy".' =>
            '',
        'File that is displayed in the Kernel::Modules::AgentInfo module, if located under Kernel/Output/HTML/Standard/AgentInfo.dtl.' =>
            '',
        'Filter incoming emails.' => '',
        'Forces encoding of outgoing emails (7bit|8bit|quoted-printable|base64).' =>
            '',
        'Forces to choose a different ticket state (from current) after lock action. Define the current state as key, and the next state after lock action as content.' =>
            '',
        'Forces to unlock tickets after being moved to another queue.' =>
            '',
        'Frontend language' => '',
        'Frontend module registration (disable company link if no company feature is used).' =>
            '',
        'Frontend module registration (disable ticket processes screen if no process available).' =>
            '',
        'Frontend module registration for the agent interface.' => '',
        'Frontend module registration for the customer interface.' => '',
        'Frontend theme' => '',
        'GenericAgent' => 'GenericAgent',
        'GenericInterface Debugger GUI' => '',
        'GenericInterface Invoker GUI' => '',
        'GenericInterface Operation GUI' => '',
        'GenericInterface TransportHTTPSOAP GUI' => '',
        'GenericInterface Web Service GUI' => '',
        'GenericInterface Webservice History GUI' => '',
        'GenericInterface Webservice Mapping GUI' => '',
        'GenericInterface module registration for the invoker layer.' => '',
        'GenericInterface module registration for the mapping layer.' => '',
        'GenericInterface module registration for the operation layer.' =>
            '',
        'GenericInterface module registration for the transport layer.' =>
            '',
        'Gives end users the possibility to override the separator character for CSV files, defined in the translation files.' =>
            '',
        'Grants access, if the customer ID of the ticket matches the customer user\'s ID and the customer user has group permissions on the queue the ticket is in.' =>
            '',
        'Helps to extend your articles full-text search (From, To, Cc, Subject and Body search). Runtime will do full-text searches on live data (it works fine for up to 50.000 tickets). StaticDB will strip all articles and will build an index after article creation, increasing fulltext searches about 50%. To create an initial index use "bin/otrs.RebuildFulltextIndex.pl".' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a database driver (normally autodetection is used) can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a password to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a username to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the DSN for the connection to the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the column name for the CustomerPassword in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the crypt type of passwords must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the column for the CustomerKey in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the table where your customer data should be stored must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a table in database where session data will be stored must be specified.' =>
            '',
        'If "FS" was selected for SessionModule, a directory where the session data will be stored must be specified.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify (by using a RegExp) to strip parts of REMOTE_USER (e. g. for to remove trailing domains). RegExp-Note, $1 will be the new Login.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify to strip leading parts of user names (e. g. for domains like example_domain\user to user).' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and if you want to add a suffix to every customer login name, specifiy it here, e. g. you just want to write the username user but in your LDAP directory exists user@domain.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and special paramaters are needed for the Net::LDAP perl module, you can specify them here. See "perldoc Net::LDAP" for more information about the parameters.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the password for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the username for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the BaseDN must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the LDAP host can be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the user identifier must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, user attributes can be specified. For LDAP posixGroups use UID, for non LDAP posixGroups use full user DN.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify access attributes here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "LDAP" was selected for Customer::Authmodule, you can check if the user is allowed to authenticate because he is in a posixGroup, e.g. user needs to be in a group xyz to use OTRS. Specify the group, who may access the system.' =>
            '',
        'If "LDAP" was selected, you can add a filter to each LDAP query, e.g. (mail=*), (objectclass=user) or (!objectclass=computer).' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the password to authenticate to the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "Sendmail" was selected as SendmailModule, the location of the sendmail binary and the needed options must be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log facility can be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log sock can be specified (on solaris you may need to use \'stream\').' =>
            '',
        'If "SysLog" was selected for LogModule, the charset that should be used for logging can be specified.' =>
            '',
        'If "file" was selected for LogModule, a logfile must be specified. If the file doesn\'t exist, it will be created by the system.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the close ticket screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket free text screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket note screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, a password must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, an username must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the mailhost that sends out the mails must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the port where your mailserver is listening for incoming connections must be specified.' =>
            '',
        'If enabled, OTRS will deliver all CSS files in minified form. WARNING: If you turn this off, there will likely be problems in IE 7, because it cannot load more than 32 CSS files.' =>
            '',
        'If enabled, OTRS will deliver all JavaScript files in minified form.' =>
            '',
        'If enabled, TicketPhone and TicketEmail will be open in new windows.' =>
            '',
        'If enabled, the OTRS version tag will be removed from the HTTP headers.' =>
            '',
        'If enabled, the different overviews (Dashboard, LockedView, QueueView) will automatically refresh after the specified time.' =>
            '',
        'If enabled, the first level of the main menu opens on mouse hover (instead of click only).' =>
            '',
        'If set, this address is used as envelope sender header in outgoing notifications. If no address is specified, the envelope sender header is empty.' =>
            '',
        'If this regex matches, no message will be send by the autoresponder.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, specify the DSN to this database.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, the password to authenticate to this database can be specified.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, the user to authenticate to this database can be specified.' =>
            '',
        'Ignore article with system sender type for new article feature (e. g. auto responses or email notifications).' =>
            '',
        'Includes article create times in the ticket search of the agent interface.' =>
            '',
        'IndexAccelerator: to choose your backend TicketViewAccelerator module. "RuntimeDB" generates each queue view on the fly from ticket table (no performance problems up to approx. 60.000 tickets in total and 6.000 open tickets in the system). "StaticDB" is the most powerful module, it uses an extra ticket-index table that works like a view (recommended if more than 80.000 and 6.000 open tickets are stored in the system). Use the script "bin/otrs.RebuildTicketIndex.pl" for initial index update.' =>
            '',
        'Install ispell or aspell on the system, if you want to use a spell checker. Please specify the path to the aspell or ispell binary on your operating system.' =>
            '',
        'Interface language' => '',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Link agents to groups.' => '',
        'Link agents to roles.' => '',
        'Link attachments to responses templates.' => '',
        'Link customers to groups.' => '',
        'Link customers to services.' => '',
        'Link queues to auto responses.' => '',
        'Link responses to queues.' => '',
        'Link roles to groups.' => '',
        'Links 2 tickets with a "Normal" type link.' => '',
        'Links 2 tickets with a "ParentChild" type link.' => '',
        'List of CSS files to always be loaded for the agent interface.' =>
            '',
        'List of CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE7-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE8-specific CSS files to always be loaded for the agent interface.' =>
            '',
        'List of IE8-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of JS files to always be loaded for the agent interface.' =>
            '',
        'List of JS files to always be loaded for the customer interface.' =>
            '',
        'List of default StandardResponses which are assigned automatically to new Queues upon creation.' =>
            '',
        'Log file for the ticket counter.' => '',
        'Mail Accounts' => '',
        'Main menu registration.' => '',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            '',
        'Makes the application check the syntax of email addresses.' => '',
        'Makes the picture transparent.' => '',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            '',
        'Manage PGP keys for email encryption.' => '',
        'Manage POP3 or IMAP accounts to fetch email from.' => '',
        'Manage S/MIME certificates for email encryption.' => '',
        'Manage existing sessions.' => '',
        'Manage notifications that are sent to agents.' => '',
        'Manage periodic tasks.' => '',
        'Max size (in characters) of the customer information table (phone and email) in the compose screen.' =>
            '',
        'Max size (in rows) of the informed agents box in the agent interface.' =>
            '',
        'Max size (in rows) of the involved agents box in the agent interface.' =>
            '',
        'Max size of the subjects in an email reply.' => '',
        'Maximal auto email responses to own email-address a day (Loop-Protection).' =>
            '',
        'Maximal size in KBytes for mails that can be fetched via POP3/POP3S/IMAP/IMAPS (KBytes).' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the agent interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the customer interface.' =>
            '',
        'Maximum size (in characters) of the customer info table in the queue view.' =>
            '',
        'Maximum size (in characters) of the customer information table in the ticket zoom view.' =>
            '',
        'Module for To-selection in new ticket screen in the customer interface.' =>
            '',
        'Module to check customer permissions.' => '',
        'Module to check if a user is in a special group. Access is granted, if the user is in the specified group and has ro and rw permissions.' =>
            '',
        'Module to check if arrived emails should be marked as email-internal (because of original forwared internal email it college). ArticleType and SenderType define the values for the arrived email/article.' =>
            '',
        'Module to check the agent responsible of a ticket.' => '',
        'Module to check the group permissions for the access to customer tickets.' =>
            '',
        'Module to check the owner of a ticket.' => '',
        'Module to check the watcher agents of a ticket.' => '',
        'Module to compose signed messages (PGP or S/MIME).' => '',
        'Module to crypt composed messages (PGP or S/MIME).' => '',
        'Module to filter and manipulate incoming messages. Block/ignore all spam email with From: noreply@ address.' =>
            '',
        'Module to filter and manipulate incoming messages. Get a 4 digit number to ticket free text, use regex in Match e. g. From => \'(.+?)@.+?\', and use () as [***] in Set =>.' =>
            '',
        'Module to generate accounted time ticket statistics.' => '',
        'Module to generate html OpenSearch profile for short ticket search in the agent interface.' =>
            '',
        'Module to generate html OpenSearch profile for short ticket search in the customer interface.' =>
            '',
        'Module to generate ticket solution and response time statistics.' =>
            '',
        'Module to generate ticket statistics.' => '',
        'Module to show notifications and escalations (ShownMax: max. shown escalations, EscalationInMinutes: Show ticket which will escalation in, CacheTime: Cache of calculated escalations in seconds).' =>
            '',
        'Module to use database filter storage.' => '',
        'Multiselect' => '',
        'My Tickets' => '',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'NameX' => '',
        'New email ticket' => '',
        'New phone ticket' => '',
        'New process ticket' => '',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Notifications (Event)' => 'Уведомление (Event)',
        'Number of displayed tickets' => '',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'Open tickets of customer' => '',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets' => '',
        'Overview Refresh Time' => '',
        'Overview of all open Tickets.' => '',
        'PGP Key Management' => '',
        'PGP Key Upload' => '',
        'Parameters for the CreateNextMask object in the preference view of the agent interface.' =>
            '',
        'Parameters for the CustomQueue object in the preference view of the agent interface.' =>
            '',
        'Parameters for the FollowUpNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the LockTimeoutNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the MoveNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the NewTicketNotify object in the preferences view of the agent interface.' =>
            '',
        'Parameters for the RefreshTime object in the preference view of the agent interface.' =>
            '',
        'Parameters for the WatcherNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the dashboard backend of the customer company information of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer id status widget of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer user list overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the new tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket calendar of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket escalation overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket stats of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the pages (in which the dynamic fields are shown) of the dynamic fields overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the medium ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the small ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the ticket preview overview.' =>
            '',
        'Parameters of the example SLA attribute Comment2.' => '',
        'Parameters of the example queue attribute Comment2.' => '',
        'Parameters of the example service attribute Comment2.' => '',
        'Path for the log file (it only applies if "FS" was selected for LoopProtectionModule and it is mandatory).' =>
            '',
        'Path of the file that stores all the settings for the QueueObject object for the agent interface.' =>
            '',
        'Path of the file that stores all the settings for the QueueObject object for the customer interface.' =>
            '',
        'Path of the file that stores all the settings for the TicketObject for the agent interface.' =>
            '',
        'Path of the file that stores all the settings for the TicketObject for the customer interface.' =>
            '',
        'Performs the configured action for each event (as an Invoker) for each configured Webservice.' =>
            '',
        'Permitted width for compose email windows.' => '',
        'Permitted width for compose note windows.' => '',
        'Picture-Upload' => '',
        'PostMaster Filters' => '',
        'PostMaster Mail Accounts' => '',
        'Process Information' => '',
        'Process Management Activity Dialog GUI' => '',
        'Process Management Activity GUI' => '',
        'Process Management Path GUI' => '',
        'Process Management Transition Action GUI' => '',
        'Process Management Transition GUI' => '',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            '',
        'Queue view' => '',
        'Refresh Overviews after' => '',
        'Refresh interval' => '',
        'Removes the ticket watcher information when a ticket is archived.' =>
            '',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            '',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            '',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            '',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            '',
        'Responses <-> Queues' => 'Отговори <-> Опашки',
        'Restores a ticket from the archive (only if the event is a state change, from closed to any open available state).' =>
            '',
        'Roles <-> Groups' => 'Роли <-> Групи',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'S/MIME Certificate Upload' => '',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data.' =>
            '',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Select your frontend Theme.' => 'Изберете Вашата потребителска тема',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            '',
        'Send notifications to users.' => '',
        'Send ticket follow up notifications' => '',
        'Sender type for new tickets from the customer inteface.' => '',
        'Sends agent follow-up notification only to the owner, if a ticket is unlocked (the default is to send the notification to all agents).' =>
            '',
        'Sends all outgoing email via bcc to the specified address. Please use this only for backup reasons.' =>
            '',
        'Sends customer notifications just to the mapped customer. Normally, if no customer is mapped, the latest customer sender gets the notification.' =>
            '',
        'Sends reminder notifications of unlocked ticket after reaching the reminder date (only sent to ticket owner).' =>
            '',
        'Sends the notifications which are configured in the admin interface under "Notfication (Event)".' =>
            '',
        'Set sender email addresses for this system.' => '',
        'Set the default height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set the maximum height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set this to yes if you trust in all your public and private pgp keys, even if they are not certified with a trusted signature.' =>
            '',
        'Sets if ticket owner must be selected by the agent.' => '',
        'Sets the PendingTime of a ticket to 0 if the state is changed to a non-pending state.' =>
            '',
        'Sets the age in minutes (first level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the age in minutes (second level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the configuration level of the administrator. Depending on the config level, some sysconfig options will be not shown. The config levels are in in ascending order: Expert, Advanced, Beginner. The higher the config level is (e.g. Beginner is the highest), the less likely is it that the user can accidentally configure the system in a way that it is not usable any more.' =>
            '',
        'Sets the default article type for new email tickets in the agent interface.' =>
            '',
        'Sets the default article type for new phone tickets in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default link type of splitted tickets in the agent interface.' =>
            '',
        'Sets the default next state for new phone tickets in the agent interface.' =>
            '',
        'Sets the default next ticket state, after the creation of an email ticket in the agent interface.' =>
            '',
        'Sets the default note text for new telephone tickets. E.g \'New ticket via call\' in the agent interface.' =>
            '',
        'Sets the default priority for new email tickets in the agent interface.' =>
            '',
        'Sets the default priority for new phone tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new email tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new phone ticket in the agent interface.' =>
            '',
        'Sets the default subject for new email tickets (e.g. \'email Outbound\') in the agent interface.' =>
            '',
        'Sets the default subject for new phone tickets (e.g. \'Phone call\') in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default text for new email tickets in the agent interface.' =>
            '',
        'Sets the display order of the different items in the preferences view.' =>
            '',
        'Sets the inactivity time (in seconds) to pass before a session is killed and a user is loged out.' =>
            '',
        'Sets the maximum number of active agents within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the maximum number of active customers within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the minimal ticket counter size (if "AutoIncrement" was selected as TicketNumberGenerator). Default is 5, this means the counter starts from 10000.' =>
            '',
        'Sets the minimum number of characters before autocomplete query is sent.' =>
            '',
        'Sets the number of lines that are displayed in text messages (e.g. ticket lines in the QueueZoom).' =>
            '',
        'Sets the number of search results to be displayed for the autocomplete feature.' =>
            '',
        'Sets the options for PGP binary.' => '',
        'Sets the order of the different items in the customer preferences view.' =>
            '',
        'Sets the password for private PGP key.' => '',
        'Sets the prefered time units (e.g. work units, hours, minutes).' =>
            '',
        'Sets the prefix to the scripts folder on the server, as configured on the web server. This setting is used as a variable, OTRS_CONFIG_ScriptAlias which is found in all forms of messaging used by the application, to build links to the tickets within the system.' =>
            '',
        'Sets the queue in the ticket close screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket free text screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket note screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket responsible screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the close ticket screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket note screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the service in the close ticket screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket free text screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket note screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket responsible screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the size of the statistic graph.' => '',
        'Sets the stats hook.' => '',
        'Sets the system time zone (required a system with UTC as system time). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the ticket owner in the close ticket screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket note screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the ticket type in the close ticket screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket type in the ticket free text screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket note screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket responsible screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the time (in seconds) a user is marked as active.' => '',
        'Sets the time type which should be shown.' => '',
        'Sets the timeout (in seconds) for http/ftp downloads.' => '',
        'Sets the timeout (in seconds) for package downloads. Overwrites "WebUserAgent::Timeout".' =>
            '',
        'Sets the user time zone per user (required a system with UTC as system time and UTC under TimeZone). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the user time zone per user based on java script / browser time zone offset feature at login time.' =>
            '',
        'Show a responsible selection in phone and email tickets in the agent interface.' =>
            '',
        'Show article as rich text even if rich text writing is disabled.' =>
            '',
        'Show the current owner in the customer interface.' => '',
        'Show the current queue in the customer interface.' => '',
        'Shows a count of icons in the ticket zoom, if the article has attachments.' =>
            '',
        'Shows a link in the menu for subscribing / unsubscribing from a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu that allows linking a ticket with another object in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu that allows merging tickets in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to access the history of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a note in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a note to a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to delete a ticket in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to delete a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to go back in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to lock / unlock a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link in the menu to lock/unlock tickets in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to move a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to print a ticket or an article in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the customer who requested the ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the history of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to see the owner of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the priority of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the responsible agent of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to set a ticket as pending in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to set a ticket as spam in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to set the priority of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to zoom a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link to access article attachments via a html online viewer in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to download article attachments in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to see a zoomed email ticket in plain text.' => '',
        'Shows a link to set a ticket as spam in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a preview of the ticket overview (CustomerInfo => 1 - shows also Customer-Info, CustomerInfoMaxSize max. size in characters of Customer-Info).' =>
            '',
        'Shows all both ro and rw queues in the queue view.' => '',
        'Shows all open tickets (even if they are locked) in the escalation view of the agent interface.' =>
            '',
        'Shows all open tickets (even if they are locked) in the status view of the agent interface.' =>
            '',
        'Shows all the articles of the ticket (expanded) in the zoom view.' =>
            '',
        'Shows all the customer identifiers in a multi-select field (not useful if you have a lot of customer identifiers).' =>
            '',
        'Shows an owner selection in phone and email tickets in the agent interface.' =>
            '',
        'Shows colors for different article types in the article table.' =>
            '',
        'Shows customer history tickets in AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.' =>
            '',
        'Shows either the last customer article\'s subject or the ticket title in the small format overview.' =>
            '',
        'Shows existing parent/child queue lists in the system in the form of a tree or a list.' =>
            '',
        'Shows the activated ticket attributes in the customer interface (0 = Disabled and 1 = Enabled).' =>
            '',
        'Shows the articles sorted normally or in reverse, under ticket zoom in the agent interface.' =>
            '',
        'Shows the customer user information (phone and email) in the compose screen.' =>
            '',
        'Shows the customer user\'s info in the ticket zoom view.' => '',
        'Shows the message of the day (MOTD) in the agent dashboard. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually.' =>
            '',
        'Shows the message of the day on login screen of the agent interface.' =>
            '',
        'Shows the ticket history (reverse ordered) in the agent interface.' =>
            '',
        'Shows the ticket priority options in the close ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the move ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket bulk screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket note screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows the title fields in the close ticket screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket note screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows time in long format (days, hours, minutes), if set to "Yes"; or in short format (days, hours), if set to "No".' =>
            '',
        'Shows time use complete description (days, hours, minutes), if set to "Yes"; or just first letter (d, h, m), if set to "No".' =>
            '',
        'Skin' => '',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the queue view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the QueueID for the key and 0 or 1 for value.' =>
            '',
        'Spam Assassin example setup. Ignores emails that are marked with SpamAssassin.' =>
            '',
        'Spam Assassin example setup. Moves marked mails to spam queue.' =>
            '',
        'Specifies if an agent should receive email notification of his own actions.' =>
            '',
        'Specifies the available note types for this ticket mask. If the option is deselected, ArticleTypeDefault is used and the option is removed from the mask.' =>
            '',
        'Specifies the background color of the chart.' => '',
        'Specifies the background color of the picture.' => '',
        'Specifies the border color of the chart.' => '',
        'Specifies the border color of the legend.' => '',
        'Specifies the bottom margin of the chart.' => '',
        'Specifies the different article types that will be used in the system.' =>
            '',
        'Specifies the different note types that will be used in the system.' =>
            '',
        'Specifies the directory to store the data in, if "FS" was selected for TicketStorageModule.' =>
            '',
        'Specifies the directory where SSL certificates are stored.' => '',
        'Specifies the directory where private SSL certificates are stored.' =>
            '',
        'Specifies the email address that should be used by the application when sending notifications. The email address is used to build the complete display name for the notification master (i.e. "OTRS Notification Master" otrs@your.example.com). You can use the OTRS_CONFIG_FQDN variable as set in your configuation, or choose another email address. Notifications are messages such as en::Customer::QueueUpdate or en::Agent::Move.' =>
            '',
        'Specifies the group where the user needs rw permissions so that he can access the "SwitchToCustomer" feature.' =>
            '',
        'Specifies the left margin of the chart.' => '',
        'Specifies the name that should be used by the application when sending notifications. The sender name is used to build the complete display name for the notification master (i.e. "OTRS Notification Master" otrs@your.example.com). Notifications are messages such as en::Customer::QueueUpdate or en::Agent::Move.' =>
            '',
        'Specifies the path of the file for the logo in the page header (gif|jpg|png, 700 x 100 pixel).' =>
            '',
        'Specifies the path of the file for the performance log.' => '',
        'Specifies the path to the converter that allows the view of Microsoft Excel files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of Microsoft Word files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of PDF documents, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of XML files, in the web interface.' =>
            '',
        'Specifies the right margin of the chart.' => '',
        'Specifies the text color of the chart (e. g. caption).' => '',
        'Specifies the text color of the legend.' => '',
        'Specifies the text that should appear in the log file to denote a CGI script entry.' =>
            '',
        'Specifies the top margin of the chart.' => '',
        'Specifies user id of the postmaster data base.' => '',
        'Specify how many sub directory levels to use when creating cache files. This should prevent too many cache files being in one directory.' =>
            '',
        'Standard available permissions for agents within the application. If more permissions are needed, they can be entered here. Permissions must be defined to be effective. Some other good permissions have also been provided built-in: note, close, pending, customer, freetext, move, compose, responsible, forward, and bounce. Make sure that "rw" is always the last registered permission.' =>
            '',
        'Start number for statistics counting. Every new stat increments this number.' =>
            '',
        'Starts a wildcard search of the active object after the link object mask is started.' =>
            '',
        'Statistics' => '',
        'Status view' => '',
        'Stores cookies after the browser has been closed.' => '',
        'Strips empty lines on the ticket preview in the queue view.' => '',
        'Textarea' => '',
        'The "bin/PostMasterMailAccount.pl" will reconnect to POP3/POP3S/IMAP/IMAPS host after the specified count of messages.' =>
            '',
        'The agent skin\'s InternalName which should be used in the agent interface. Please check the available skins in Frontend::Agent::Skins.' =>
            '',
        'The customer skin\'s InternalName which should be used in the customer interface. Please check the available skins in Frontend::Customer::Skins.' =>
            '',
        'The divider between TicketHook and ticket number. E.g \': \'.' =>
            '',
        'The duration in minutes after emitting an event, in which the new escalation notify and start events are suppressed.' =>
            '',
        'The format of the subject. \'Left\' means \'[TicketHook#:12345] Some Subject\', \'Right\' means \'Some Subject [TicketHook#:12345]\', \'None\' means \'Some Subject\' and no ticket number. In the last case you should enable PostmasterFollowupSearchInRaw or PostmasterFollowUpSearchInReferences to recognize followups based on email headers and/or body.' =>
            '',
        'The headline shown in the customer interface.' => '',
        'The identifier for a ticket, e.g. Ticket#, Call#, MyTicket#. The default is Ticket#.' =>
            '',
        'The logo shown in the header of the agent interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown in the header of the customer interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown on top of the login box of the agent interface. The URL to the image must be relative URL to the skin image directory.' =>
            '',
        'The text at the beginning of the subject in an email reply, e.g. RE, AW, or AS.' =>
            '',
        'The text at the beginning of the subject when an email is forwarded, e.g. FW, Fwd, or WG.' =>
            '',
        'This module and its PreRun() function will be executed, if defined, for every request. This module is useful to check some user options or to display news about new applications.' =>
            '',
        'This option defines the dynamic field in which a Process Management activity entity id is stored.' =>
            '',
        'This option defines the dynamic field in which a Process Management process entity id is stored.' =>
            '',
        'This option defines the process tickets default lock.' => '',
        'This option defines the process tickets default priority.' => '',
        'This option defines the process tickets default queue.' => '',
        'This option defines the process tickets default state.' => '',
        'This setting allows you to override the built-in country list with your own list of countries. This is particularly handy if you just want to use a small select group of countries.' =>
            '',
        'Ticket event module that triggers the escalation stop events.' =>
            '',
        'Ticket overview' => '',
        'Tickets' => 'Билети',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            '',
        'Toggles display of OTRS FeatureAddons list in PackageManager.' =>
            '',
        'Toolbar Item for a shortcut.' => '',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            '',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            '',
        'Types' => '',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            '',
        'Update and extend your system with software packages.' => '',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            '',
        'Updates the ticket index accelerator.' => '',
        'Uses Cc recipients in reply Cc list on compose an email answer in the ticket compose screen of the agent interface.' =>
            '',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard responses, auto responses and notifications.' =>
            '',
        'View performance benchmark results.' => '',
        'View system log messages.' => '',
        'Wear this frontend skin' => '',
        'Webservice path separator.' => '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. In this text area you can define this text (This text cannot be changed by the agent).' =>
            '',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            '',
        'Your queue selection of your favorite queues. You also get notified about those queues via email if enabled.' =>
            'Вашия избор за предпочитани опашки. Вие ще получите уведомления за тези опашки ако сте го разрешили.',

        #
        # OBSOLETE ENTRIES FOR REFERENCE, DO NOT TRANSLATE!
        #
        '"}' => '"}',
        '%s Tickets affected! Do you really want to use this job?' => '%s билета бяха засегнати! Сигурни ли сте че искате да използвате тази задача?',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' =>
            '(Проверете MX записите на адреса на писмата-отговори. Не използвайте CheckMXRecord, ако вашата OTRS машина е на комутируема линия! ',
        '(Email of the system admin)' => '(еМейл на системният администратор)',
        '(Full qualified domain name of your system)' => '(Пълно квалифицирано име (FQDN) на системата)',
        '(Logfile just needed for File-LogModule!)' => '(Журналният файл е необходим само за File-LogModule)',
        '(Note: It depends on your installation how many dynamic objects you can use)' =>
            '(Забележка: Броя на динамичните обекти зависи от типа на инсталация)',
        '(Note: Useful for big databases and low performance server)' => '(Забележка: Полезно е при големи бази данни или слабопроизводителен сървър)',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' =>
            '(Идентифициране на системата. Всики номер на билет и всяка http сесия започва с този номер)',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' =>
            '(Идентификатор на билета. Примерно: \'Ticket#\', \'Call#\' or \'MyTicket#\')',
        '(Used default language)' => '(Изполван език по подразбиране)',
        '(Used log backend)' => '(Използван журнален изход)',
        '(Used ticket number format)' => '(Използван формат за номера на билетът)',
        'A article should have a title!' => 'Съобщението трябва да има заглавие',
        'A message must be spell checked!' => 'Съобщението трябва да бъде проверено за грешки!',
        'A message should have a To: recipient!' => 'Съобщението трябва да има ДО: т.е. адресант!',
        'A message should have a body!' => 'Съобщението трябва да има текст',
        'A message should have a subject!' => 'Съобщението трябва да има текст в поле "относно"!',
        'A response is default text to write faster answer (with default text) to customers.' =>
            'Отговорът е текст по подразбиране, създанен предварително, с цел по-бърз отговор към клиента',
        'A web calendar' => 'Календар',
        'A web file manager' => 'Web-базиран файлов менаджер',
        'A web mail client' => 'Web-базиран e-mail клиент',
        'Absolut Period' => 'Абсолютен интервал',
        'Account Type' => 'Тип на акаунта',
        'Add System Address' => 'Добавяне на системен адрес',
        'Add User' => 'Добавяне',
        'Add a new Agent.' => 'Управление на нов агент',
        'Add a new Customer Company.' => 'Добавяне на нова клиент-фирма',
        'Add a new Group.' => 'Добавяне на нова група',
        'Add a new Priority.' => 'Добави нов приоритет.',
        'Add a new Role.' => 'Добавяне на нова роля',
        'Add a new Salutation.' => 'Добавяне на ново обръщение',
        'Add a new Signature.' => 'Добавяне на нов подпис',
        'Add a new State.' => 'Добавяне на нов статус',
        'Add a new System Address.' => 'Добавяне на нов системен адрес.',
        'Add a new Type.' => 'Добавяне на нов тип',
        'Add a note to this ticket!' => 'Добавяне на бележка към билета!',
        'Add note to ticket' => 'Добавяне на бележка към билета',
        'Added User "%s"' => 'Добавен портребител "%s" ',
        'Admin-Area' => 'Административна част',
        'Admin-Email' => 'еМейл от Admin',
        'Admin-Password' => 'Парола на администратор',
        'Admin-User' => 'Администратор',
        'Advisory' => 'Консултация',
        'Agent Mailbox' => 'Пощенска кутия',
        'Agent Preferences' => 'Предпочитания на агент портребител',
        'Agent-Area' => 'Агенти',
        'All Agent variables.' => 'Всички променливи свързани с агента',
        'All Agents' => 'Всички агенти',
        'All Customer variables like defined in config option CustomerUser.' =>
            'Всички променливи подобни на тези в конфигурационния параметър CustomerUser',
        'All customer tickets.' => 'Всички билети на този потребител',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' =>
            'Всички входящи адреси от този еМейл (До:) ще се разпределят в избраната опашка.',
        'All messages' => 'Всички съобщения',
        'Answer' => 'Отговор',
        'Artefact' => 'Артефакт',
        'ArticleID' => 'Идентификатор на клауза',
        'Attach' => 'Прикачен файл',
        'Attribute' => 'Атрибут',
        'Auto Response From' => 'Автоматичен отговор от',
        'Bounce ticket' => 'Отказан билет',
        'Can\'t update password, invalid characters!' => 'Невъзможно актуализиране на паролата! Невалидни символи!',
        'Can\'t update password, must be at least %s characters!' => 'Невъзможно актуализиране на паролата! Необходимо минимум %s символа!',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' =>
            'Невъзможно актуализиране на паролата! Необходими са 2 малки и 2 големи букви!',
        'Can\'t update password, needs at least 1 digit!' => 'Невъзможно актуализиране на паролата! Необходимо е минимум 1 цифра!',
        'Can\'t update password, needs at least 2 characters!' => 'Невъзможно актуализиране на паролата! Необходими са минимум 2 символа!',
        'Can\'t update password, your new passwords do not match! Please try again!' =>
            'Невъзможно актуализиране на паролата! Паролите не съвпадат! Моля опитайте отново!',
        'Category Tree' => 'Дърво на категориите',
        'Cc: (%s) added database email!' => 'Cc: (%s) e-mail адреса добавен от базата данни',
        'Change %s settings' => 'Промяна на %s настройки',
        'Change free text of ticket' => 'Променете текста на билета',
        'Change owner of ticket' => 'Промяна собственикън на билета',
        'Change priority of ticket' => 'Промяна на приоритета на билета',
        'Change responsible of ticket' => 'Промяна на отговорника на билет',
        'Change the ticket customer!' => 'Смяна на клиент-потребителя на билета!',
        'Change the ticket owner!' => 'Смяна на собственика на билета!',
        'Change the ticket priority!' => 'Смяна на приоритета на билета!',
        'Change user <-> group settings' => 'Промяна на потребител <-> Настройки за група',
        'ChangeLog' => 'ChangeLog',
        'Child-Object' => 'Обект-дете',
        'Clear From' => 'Изчистете формата',
        'Clear To' => 'Изчистване на полето: to',
        'Click here to report a bug!' => 'Натиснете тук, за да изпратите отчет за грешката!',
        'Close this ticket!' => 'Затваряне на билета!',
        'Close ticket' => 'Затваряне на билета',
        'Close type' => 'Тип затваряне',
        'Close!' => 'Затворете!',
        'Comment (internal)' => 'Коментар (вътрешен)',
        'CompanyTickets' => 'Билети на компанията',
        'Compose Answer' => 'Създаване на отговор',
        'Compose Email' => 'Създаване на e-mail',
        'Compose Follow up' => 'Създаване проследяване на билетът',
        'Config Options' => 'Конфигурационни опции',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Конфигурационни параметри (Пример: <OTRS_CONFIG_HttpType>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Конфигурационни параметри (Пример: <OTRS_CONFIG_HttpType>)',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Свойства на системната конфигурация (Пример: <OTRS_CONFIG_HttpType>).',
        'Contact customer' => 'Контакт с клиента',
        'Create Times' => 'Време на създаване',
        'Create new Phone Ticket' => 'Създаване на нов билет на базата на телефонно обаждане',
        'Create new database' => 'Създаване на нова база данни',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' =>
            'Направете нови групи за да управлявате позволенията за различните групи от агенти (примерно агент за отдел "продажби", отдел "поддръжка" и т.н.)',
        'Customer Move Notify' => 'Известяване при преместване на потребителя',
        'Customer Owner Notify' => 'Известяване на потребителя',
        'Customer State Notify' => 'Известяване за състоянието на потребителя',
        'Customer User Management' => 'Управление на клиент-потребители',
        'Customer Users <-> Groups' => 'Клиент-потребители <-> Групи',
        'Customer Users <-> Groups Management' => 'Управление на клиент-потребители <-> групи',
        'Customer history' => 'Хроника на потребителят',
        'Customer history search' => 'Търсене в хрониката на клиента',
        'Customer history search (e. g. "ID342425").' => 'Търсене в хрониката на клиента (примерно "ID342425").',
        'Customer user will be needed to have a customer history and to login via customer panel.' =>
            'Клиент-потребителя ще трябва да има история и ще може да влиза през клиентския потребителски интерфейс.',
        'CustomerUser' => 'Клиент-потребител',
        'D' => 'Н',
        'DB Admin Password' => 'Парола на администратора на базата',
        'DB Admin User' => 'Потребител на базата данни',
        'DB Host' => 'Хост на базата данни',
        'DB Type' => 'Тип на базата данни',
        'DB connect host' => 'Хост за връзка със СУБД',
        'Default' => 'По подразбиране',
        'Default Charset' => 'Символен набор по подразбиране',
        'Default Language' => 'Език по подразбиране',
        'Delete old database' => 'Изтриване на стара база данни',
        'Delete this ticket!' => 'Изтриване на този билет!',
        'Detail' => 'Подробности',
        'Diff' => 'Разлики',
        'Discard all changes and return to the compose screen' => 'Отказвате се от всички промени и се връщате към екрана за създаване',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' =>
            'Анализ на съобщенията на база на техните X-Хедъри! Регулярен израз е също възможен.',
        'Do you really want to delete this Object?' => 'Сигурни ли сте че искате да изтриете този обект?',
        'Do you really want to reinstall this package (all manual changes get lost)?' =>
            'Сигурни ли сте че искате да реинсталирате този софтуерен пакет (всички допълнителни промени се губят)?',
        'Don\'t forget to add a new response a queue!' => 'Не забравяйте да добавите новият отговор към дадена опашка!',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Не забравяйте да добавите новия агент потребител към групи и/или роли!',
        'Don\'t forget to add a new user to groups!' => 'Не забравяйте да добавите новият потребител в някаква група!',
        'Don\'t work with UserID 1 (System account)! Create new users!' =>
            'Не работете с UserID 1 (Системен акаунт)! Създайте нови потребители.',
        'Download Settings' => 'Сваляне на настройките',
        'Download all system config changes.' => 'Сваляне на всички промени на конфигурацията.',
        'Drop Database' => 'Нулиране базата данни',
        'Dynamic-Object' => 'Динамичен обект',
        'Edit Article' => 'Редакция на текст',
        'Escalation - First Response Time' => 'Ескалация - Време за първи отговор',
        'Escalation - Solution Time' => 'Ескалация - Време за решаване',
        'Escalation - Update Time' => 'Ескалация - Време за статус ъпдейт',
        'Escalation time' => 'Време за ескалация (увеличаване на приоритетът)',
        'Explanation' => 'Обяснение',
        'Export Config' => 'Експортиране на конфигурация',
        'FileManager' => 'Файлов менажер',
        'Filelist' => 'Списък от файлове',
        'Filtername' => 'Име на филтър',
        'Follow up' => 'Заявка за отговор',
        'Follow up notification' => 'Известие за наличност на следене на отговорът',
        'For very complex stats it is possible to include a hardcoded file.' =>
            'За сложни статистике е възможно да се сложи hardcoded файл.',
        'Frontend' => 'Зона-потребител',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Пълнотекстово търсене в билета (Пример: Mart*n или Baue*)',
        'Go' => 'Продъпжавай',
        'Group Ro' => 'Група (само четене)',
        'Group selection' => 'Избиране на група от конфигурационни параметри',
        'Have a lot of fun!' => 'Приятна работа!',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
            'Тук може да добавите групи стойности. Тук може да изберете един или два елемента. След това може да изберете атрибути на елементите. Всеки атрибут ще бъде показан като група от единични стойности. Ако не изберете атрибут, всички атрибути на елемента ще бъдат показане по време на генерирането на статистиката, както и всеки нов атрибут добавен при конфигурация на статистиката.',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
            'Тук може да дефинирате оста Х, може да изберете един елемент (посредством радио бутон). Тук може да изберете един или два елемента. След това може да изберете атрибути на елементите. Всеки атрибут ще бъде показан като група от единични стойности. Ако не изберете атрибут, всички атрибути на елемента ще бъдат показане по време на генерирането на статистиката, както и всеки нов атрибут добавен при конфигурация на статистиката.',
        'Here you can insert a description of the stat.' => 'Тук може да въведете описание на статистиката.',
        'Here you can select the dynamic object you want to use.' => 'Тук може да изберете какъв динамичен обект искате да се използва.',
        'Home' => 'Начало',
        'IMAP' => 'IMAP',
        'IMAPS' => 'IMAPS',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' =>
            'Ако е наличен нов hardcoded файл този атрибут ще бъде показан и ще може да бъде избран.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' =>
            'Ако билетът е затворен и потребителя изпрати заявка за проследяване, билетът ще бъде заключен за стария потребител',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' =>
            'Ако билетът не получи отговор в определеното време, ще се покаже само този билет',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' =>
            'Ако агентът заключи билетът и той(или тя) не изпрати отговор в определеното време, билетър ще се отключи автоматично. Така билетър ще стане видим за всички други агенти',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' =>
            'Ако нищо не е избрано потребителя няма да има разрешения за тази група (няма да са видими билетите които са в тази група (тикетите които са в опашките на тази група))',
        'If you need the sum of every column select yes.' => 'Ако искате да има ред със сумата на всяка колона изберете Да',
        'If you need the sum of every row select yes' => 'Ако искате да има колона със сумата на всеки ред изберете Да',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' =>
            'Ако използвате регулярен израз, може да използвате стойността на съвпадението от регулярния израз като [***] в \'Set\'.',
        'Image' => 'Картинка',
        'Important' => 'Важно',
        'In this form you can select the basic specifications.' => 'В този формуляр може да въведете основни спецификации.',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' =>
            'По този начин може да редактирате keyring-а конфигуриран в Kernel/Config.pm.',
        'Incident' => 'Инцидент',
        'Information about the Stat' => 'Информация относно статистиката',
        'Insert of the common specifications' => 'Въвеждане на общи спецификации',
        'Invalid SessionID!' => 'Невалиден SessionID!',
        'Is Job Valid' => 'Задачата валидна',
        'Is Job Valid?' => 'Задачата валидна?',
        'It\'s useful for ASP solutions.' => 'Това е подходящо за ASP решения.',
        'It\'s useful for a lot of users and groups.' => 'Полезно когато имате много потребители и групи.',
        'Job-List' => 'Списък от задачи',
        'Keyword' => 'Ключова дума',
        'Keywords' => 'Ключови думи',
        'Last update' => 'Последно обновление',
        'Link this ticket to an other objects!' => 'Свързване на билета с други обекти!',
        'Load Settings' => 'Зареждане на настройки',
        'Lock it to work on it!' => 'Заключете билета за да работите в/у него!',
        'Logfile' => 'Журнален файл',
        'Logfile too large, you need to reset it!' => 'Журналния файл е прекалено голям, необходимо е презаписване на файла!',
        'Login failed! Your username or password was entered incorrectly.' =>
            'Неуспешно оторизиране! Вашето име и/или парола са некоректини!',
        'Lookup' => 'Преглед',
        'Mail Management' => 'Управление на пощата',
        'Mailbox' => 'Пощенска кутия',
        'Management Summary' => 'Обзор за мениджмънта',
        'Match' => 'Съвпадение',
        'Merge this ticket!' => 'Изравняване на билета!',
        'Message for new Owner' => 'Съобщение за нов собственик',
        'Message sent to' => 'Съобщението е изпратено до',
        'Misc' => 'Добавки',
        'Modified' => 'Редактиран',
        'Modules' => 'Модули',
        'Move notification' => 'Известие за преместване',
        'Multiple selection of the output format.' => 'Множествен избор на изходния формат.',
        'MyTickets' => 'Мои билети',
        'Name is required!' => 'Името е задължително',
        'New Agent' => 'Нов агент',
        'New Customer' => 'Нов клиент-потребител',
        'New Group' => 'Нова група от конфигурационни параметри',
        'New Group Ro' => 'Нова група (само четене)',
        'New Priority' => 'Нов приоритет',
        'New State' => 'Нов статус',
        'New Ticket Lock' => 'Нов тип заключване на билета',
        'New TicketFreeFields' => 'Нови стойности на полетата на билета',
        'New messages' => 'Нови съобщения',
        'New password again' => 'Нова парола (отново)',
        'No * possible!' => 'Не е възможно използване на символ *!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' =>
            'Няма пакети за този Framework в това Online Repository, но има пакети за други Frameworks',
        'No Packages or no new Packages in selected Online Repository!' =>
            'Няма (нови) пакети в избраното Online Repository',
        'No Permission' => 'Нямате позволение',
        'No means, send agent and customer notifications on changes.' => 'Не означава че ще бъдат изпращани уведомления (тип: агент и тип: клиент) когато има промени.',
        'No time settings.' => 'Няма времеви интервал',
        'Note Text' => 'Текст на билежката',
        'Notification (Customer)' => 'Уведомления (клиент/клиент-потребител)',
        'Notifications' => 'Уведомления',
        'OTRS DB Name' => 'Име свързано към OTRS база данни',
        'OTRS DB Password' => 'Парола на OTRS база данни',
        'OTRS DB User' => 'Потребител на OTRS база данни',
        'OTRS DB connect host' => 'Хост свързан към OTRS база данни',
        'OTRS sends an notification email to the customer if the ticket is moved.' =>
            'OTRS изпраща известие по е-поща до клиента, ако билетът е преместен.',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' =>
            'OTRS изпраща известие по е-поща до клиента, ако собственика на билета е променен.',
        'OTRS sends an notification email to the customer if the ticket state has changed.' =>
            'OTRS изпраща известие по е-поща до клиента, ако статусът на билетът е променен.',
        'Of couse this feature will take some system performance it self!' =>
            'Тази фунционалност ще окаже влияние на производителността на системата!',
        'Open Tickets' => 'Отворени билети',
        'Options ' => 'Опции',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' =>
            'Свойства на текущия клиент-потребител (Пример: <OTRS_CUSTOMER_DATA_USERFIRSTNAME>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' =>
            'Свойства на текущия клиент-потребител (Пример: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' =>
            'Свойства на текущия клиент-потребител (Пример: <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' =>
            'Свойства на текущия потребител който е изискал това действие (Пример: <OTRS_CURRENT_USERFIRSTNAME>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' =>
            'Свойства на потребителя който е изискал това действие (Пример: <OTRS_CURRENT_UserFirstname>)',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' =>
            'Свойства на текущия потребител, който е изискал това действие (Пример: <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' =>
            'Свойства на билета (Пример: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>;, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' =>
            'Свойства на билета (Пример: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' =>
            'Свойства на билета (Пример: <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' =>
            'Свойства на билета (Пример: <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Other Options' => 'Други настройки',
        'POP3' => 'POP3',
        'POP3 Account Management' => 'Управление на POP3 акаунта',
        'POP3S' => 'POP3S',
        'Package' => 'Софтуерен пакет',
        'Package not correctly deployed! You should reinstall the Package again!' =>
            'Софтуерния пакет не е коректно инсталиран. Пакета трябва да се инсталира отново',
        'Param 1' => 'Параметър 1',
        'Param 2' => 'Параметър 2',
        'Param 3' => 'Параметър 3',
        'Param 4' => 'Параметър 4',
        'Param 5' => 'Параметър 5',
        'Param 6' => 'Параметър 6',
        'Parent-Object' => 'Обект-родител',
        'Password is already in use! Please use an other password!' => 'Паролата се използва! Моля опитайте отново!',
        'Password is already used! Please use an other password!' => 'Паролата вече е използвана. Моля опитайте отново!',
        'Passwords doesn\'t match! Please try it again!' => 'Паролите не съвпадат! Опитайте отново!',
        'Pending Times' => 'Време на очакване',
        'Pending messages' => 'Съобщения в очакване',
        'Pending type' => 'В очакване - тип',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' =>
            'Опции на разрешенията. Изберете една или повече групи за чиито агенти тази статистика ще е видима.',
        'Permissions to change the ticket owner in this group/queue.' => 'Позволение за смяна собственика на билет в тази група/опашка.',
        'PhoneView' => 'Преглед на телефоните',
        'Please contact your admin' => 'Моля, свържете се с Вашият администратор',
        'Please select only one element or turn of the button \'Fixed\'.' =>
            'Моля изберете само един елемент или изключете опцията \'Fixed\'.',
        'Port' => 'Порт',
        'Print this ticket!' => 'Печат на билета!',
        'Prio' => 'Приоритет',
        'Problem' => 'Проблем',
        'Queue <-> Auto Responses Management' => 'Управление на опашка <-> Авто отговори',
        'Queue ID' => 'ID на опашка',
        'Queue Management' => 'Управление на опашка',
        'Realname' => 'Истинско име',
        'Rebuild' => 'Компилиране',
        'Recipients' => 'Получатели',
        'Reminder' => 'Напомняне',
        'Reminder messages' => 'Напомнящи съобщения',
        'Required Field' => 'Задължително поле',
        'Response Management' => 'Управление на отговорът',
        'Responses <-> Attachments Management' => 'Управление на отговори <-> прикачени файлове',
        'Responses <-> Queue Management' => 'Управление на отговори <-> опашки',
        'Return to the compose screen' => 'Връщате се към екрана за създаване',
        'Role' => 'Роля',
        'Roles <-> Groups Management' => 'Управление на роли <-> групи',
        'Roles <-> Users' => 'Роли <-> Потребители',
        'Roles <-> Users Management' => 'Управлнение на роли <-> потребители',
        'Save Job as?' => 'Съхраняване на задачата?',
        'Save Search-Profile as Template?' => 'Съхранение на профила като шаблон',
        'Schedule' => 'Регулярно изпълнение',
        'Search Result' => 'Резултат от търенето',
        'Search for' => 'Търсене',
        'Select Box' => 'Кутия за SQL заявки',
        'Select Box Result' => 'Резултат от заявката изпълнена в SelectBox',
        'Select Source (for add)' => 'Изберете източник (за добавяне)',
        'Select the element, which will be used at the X-axis' => 'Изберете елемент който ще се използва за стойности на оста Х',
        'Select the restrictions to characterise the stat' => 'Изберете ограничения които да характеризирад статистиката',
        'Select the role:user relations.' => 'Изберете релация роля:потребител',
        'Select the user:group permissions.' => 'Изберете позволения за потребител:група',
        'Select your QueueView refresh time.' => 'Изберете Вашето време за обновяване за изгледа на опашката.',
        'Select your default spelling dictionary.' => 'Изберете Вашият речник за проверка на правописът',
        'Select your frontend Charset.' => 'Изберете Вашият символен набор.',
        'Select your frontend QueueView.' => 'Изберете език за визуализация съдържанието на опашката.',
        'Select your frontend language.' => 'Изберете Вашият език.',
        'Select your screen after creating a new ticket.' => 'Изберете екран след създаване на нов билет',
        'Selection needed' => 'Необходим е избор',
        'Send Notification' => 'Изпращане на уведомление',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' =>
            'Изпратете ми известие, ако клиентът изпрати заявка за следене на отговора и аз съм собственик на билета',
        'Send no notifications' => 'Да не се изпращат уведомления',
        'Sessions' => 'Сессии',
        'Set customer user and customer id of a ticket' => 'Задайте потребител и потребителски идентификатор за билета',
        'Set this ticket to pending!' => 'Смяна на статуса на билета в очакван',
        'Show' => 'Покажи',
        'Shows the ticket history!' => 'Показва историята на билета!',
        'Site' => 'Място',
        'Solution' => 'Решение',
        'Sort by' => 'Сортиране по',
        'Source' => 'Източник',
        'Spell Check' => 'Проверка на правописа',
        'Split' => 'Разцепване',
        'State Type' => 'Тип състояние',
        'Static-File' => 'Статичен файл',
        'Stats-Area' => 'Статистики',
        'Sub-Queue of' => 'Под-опашка на',
        'Sub-Service of' => 'Sub-Service на',
        'Subscribe' => 'Абонамент',
        'Symptom' => 'Симптом',
        'System History' => 'Системна хроника',
        'System State Management' => 'Управление на системно състояние',
        'System Status' => 'Системен статус',
        'Systemaddress' => 'Системен адрес',
        'Take care that you also updated the default states in you Kernel/Config.pm!' =>
            'Не забравяйте да редактирате статусите по подразбиране в конфигурацията на системата!',
        'Termin1' => 'Termin1',
        'The message being composed has been closed.  Exiting.' => 'Съобщението, което създавахте е затворено. Изход.',
        'These values are read-only.' => 'Тези стойности са само за преглед. (read only)',
        'These values are required.' => 'Тези стойности са задължителни.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' =>
            'Това е полезно ако искате никой да не види резултата от статистиката или статистиката не е конфигурирана напълно.',
        'This window must be called from compose window' => 'Този прозорец трябва да бъде извикан от прозореца за създаване',
        'Ticket Hook' => 'Прикачване на билетът',
        'Ticket Lock' => 'Заключване на билет',
        'Ticket Number Generator' => 'Генератор на номера на билети',
        'Ticket Search' => 'Търсене на билет',
        'Ticket Status View' => 'Преглед на статуса',
        'Ticket escalation!' => 'Ескалация (увеличаване на приоритета) на билета!',
        'Ticket locked!' => 'Билетът е заключен!',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' =>
            'Свойства на собственика на билета (Пример: <OTRS_OWNER_USERFIRSTNAME>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Свойства на собственика на билета (Пример: <OTRS_OWNER_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Свойства на собственика на билета (Пример: <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' =>
            'Свойства на отговорника за билета (Пример: <OTRS_RESPONSIBLE_UserFirstname>).',
        'Ticket selected for bulk action!' => 'Билета е маркиран за събирателно действие',
        'Ticket unlock!' => 'Билетът е отключен!',
        'Ticket-Area' => 'Билети',
        'TicketFreeFields' => 'Полета на билета',
        'TicketFreeText' => 'Полета на билета',
        'TicketID' => 'Идентификатор на билет',
        'Tickets available' => 'Налични билети',
        'Tickets shown' => 'Показани билети',
        'Times' => 'Време',
        'Title of the stat.' => 'Заглавие на статистиката.',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' =>
            'Да се вземат атрибути на билета/съобщението (Пример: (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).',
        'To: (%s) replaced with database email!' => 'To: (%s) заменено с e-mail адреса от базата данни',
        'Top of Page' => 'Начало на страницата',
        'Total hits' => 'Общ брой попадения',
        'U' => 'В',
        'Unable to parse Online Repository index document!' => 'Неуспешен анализ на индексния документ на това Online repository!',
        'Uniq' => 'Уникална',
        'Unlock Tickets' => 'Отключване на билети',
        'Unlock to give it back to the queue!' => 'Отключете билета за да се върне в опашката!',
        'Unsubscribe' => 'Прекр. абонамент',
        'Use utf-8 it your database supports it!' => 'Използваите UTF-8 ако вашето СУБД/база данни го поддържа',
        'Useable options' => 'Използваеми опции',
        'User Management' => 'Управление на потребители',
        'User will be needed to handle tickets.' => 'Ще е необходим агент потребител, за да може билетът да се обработи',
        'Users' => 'Потребители',
        'Users <-> Groups' => 'Агент потребители <-> Групи',
        'Users <-> Groups Management' => 'Управление на Агент потребители <-> Групи',
        'Warning! This tickets will be removed from the database! This tickets are lost!' =>
            'Внимание! Тези билети ще бъдат изтрити от базата данни! Те ще бъдат загубени!',
        'Web-Installer' => 'Web инсталатор',
        'WebMail' => 'WebMail',
        'WebWatcher' => 'WebWatcher',
        'Welcome to OTRS' => 'Добре дошли в OTRS',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Ако статистиката е невалидна нейното генериране ще е неосъществимо.',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' =>
            'Със полета за въвеждане или избор може да конфигурирате статистиката според Вашите нужди. Броя на елементите подлежащи на редакция зависи от администратора който е конфигурирал тази статистика.',
        'Yes means, send no agent and customer notifications on changes.' =>
            'Да означава че няма да бъдат изпращани уведомления (тип: агент и тип: клиент) когато има промени.',
        'Yes, save it with name' => 'Да, съхрани с името',
        'You got new message!' => 'Получихте ново съобщение!',
        'You have to select two or more attributes from the select field!' =>
            'Трябва да изберете два или повече атрибути от полето!',
        'You need a email address (e. g. customer@example.com) in To:!' =>
            'Трябва да има валиден адрес в полето ДО: (примерно support@hebros.bg)!',
        'You need min. one selected Ticket!' => 'Трябва да изберете най-малко един билет!',
        'You need to account time!' => 'Вие се нуждаете от отчет за времето',
        'You need to activate %s first to use it!' => 'Първо трябва да активирате %s преди да се използва!',
        'Your email address is new' => 'Вашия e-mail адрес е нов',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' =>
            'Писмото Ви с номер "<OTRS_TICKET>" е отхвърлен към "<OTRS_BOUNCE_TO>". Свържете се с този адрес за повече информация',
        'Your own Ticket' => 'Вашият собствен билет',
        'accept license' => 'Приемате лиценза',
        'customer realname' => 'име на потребителя',
        'don\'t accept license' => 'Не приемате лиценза',
        'down' => 'надолу',
        'false' => 'false',
        'for agent firstname' => 'за агент име',
        'for agent lastname' => 'за агент фамилия',
        'for agent login' => 'за агент логически вход',
        'for agent user id' => 'за агент потребителски ID',
        'kill all sessions' => 'Затваряне на всички текущи сесии',
        'kill session' => 'Затваряне на единична сесия',
        'maximal period form' => 'форма за максимален интервал',
        'modified' => 'редактиран',
        'new ticket' => 'нов билет',
        'next step' => 'следваща стъпка',
        'send' => 'изпрати',
        'sort downward' => 'низходящо сортиране',
        'sort upward' => 'възходящо сортиране',
        'tmp_lock' => 'временно заключване',
        'to get the first 20 character of the subject' => 'за да получите първите 20 символа от поле "относно"',
        'to get the first 5 lines of the email' => 'за да получите първите 5 реда от писмото',
        'to get the from line of the email' => 'за да получите ред от писмото',
        'to get the realname of the sender (if given)' => 'за да получите истинското име на изпращача (ако е попълнено)',
        'up' => 'нагоре',
        'x' => 'х',

    };
    # $$STOP$$
    return;
}

1;
