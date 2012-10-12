# --
# Kernel/Language/sr_Cyrl.pm - provides Serbian language Cyrillic translation
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# Copyright (C) 2010 Milorad Jovanovic <j.milorad at gmail.com>
# --
# $Id: sr_Cyrl.pm,v 1.34 2012-10-12 09:33:25 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
package Kernel::Language::sr_Cyrl;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.34 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: 2012-10-12 11:29:56

    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%T - %D.%M.%Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    # csv separator
    $Self->{Separator} = ';';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'Да',
        'No' => 'Не',
        'yes' => 'да',
        'no' => 'не',
        'Off' => 'Искључено',
        'off' => 'искључено',
        'On' => 'Укључено',
        'on' => 'укључено',
        'top' => 'врх',
        'end' => 'крај',
        'Done' => 'Готово',
        'Cancel' => 'Одустани',
        'Reset' => 'Поништи',
        'last' => 'последње',
        'before' => 'пре',
        'Today' => 'данас',
        'Tomorrow' => 'Сутра',
        'Next week' => '',
        'day' => 'дан',
        'days' => 'дани',
        'day(s)' => 'дан(и)',
        'd' => 'д',
        'hour' => 'сат',
        'hours' => 'сати',
        'hour(s)' => 'сат(и)',
        'Hours' => 'Сати',
        'h' => 'с',
        'minute' => 'минут',
        'minutes' => 'минути',
        'minute(s)' => 'минут(и)',
        'Minutes' => 'Минути',
        'm' => 'м',
        'month' => 'месец',
        'months' => 'месеци',
        'month(s)' => 'месец(и)',
        'week' => 'седмица',
        'week(s)' => 'седмиц(е)',
        'year' => 'година',
        'years' => 'године',
        'year(s)' => 'годин(е)',
        'second(s)' => 'секунд(е)',
        'seconds' => 'секунде',
        'second' => 'секунда',
        's' => 'с',
        'wrote' => 'написао',
        'Message' => 'Порука',
        'Error' => 'Грешка',
        'Bug Report' => 'Пријава грешке',
        'Attention' => 'Пажња',
        'Warning' => 'Упозорење',
        'Module' => 'Модул',
        'Modulefile' => 'Датотека модула',
        'Subfunction' => 'Подфункција',
        'Line' => 'Линија',
        'Setting' => 'Подешавање',
        'Settings' => 'Подешавања',
        'Example' => 'Пример',
        'Examples' => 'Примери',
        'valid' => 'важећи',
        'Valid' => 'Важећи',
        'invalid' => 'неважећи',
        'Invalid' => 'Неважећи',
        '* invalid' => '* неважећи',
        'invalid-temporarily' => 'неважећи-привремено',
        ' 2 minutes' => ' 2 минута',
        ' 5 minutes' => ' 5 минута',
        ' 7 minutes' => ' 7 минута',
        '10 minutes' => '10 минута',
        '15 minutes' => '15 минута',
        'Mr.' => 'Господин',
        'Mrs.' => 'Госпођа',
        'Next' => 'Следеће',
        'Back' => 'Назад',
        'Next...' => 'Следеће...',
        '...Back' => '...Назад',
        '-none-' => '-ниједан-',
        'none' => 'нема',
        'none!' => 'нема уноса!',
        'none - answered' => 'нема - одговорено',
        'please do not edit!' => 'Молимо, не мењајте!',
        'Need Action' => 'Потребна акција',
        'AddLink' => 'Додај везу',
        'Link' => 'Повежи',
        'Unlink' => 'Прекини везу',
        'Linked' => 'Повезано',
        'Link (Normal)' => 'Веза (Нормално)',
        'Link (Parent)' => 'Веза (Родитељ)',
        'Link (Child)' => 'Веза (Дете)',
        'Normal' => 'Нормално',
        'Parent' => 'Родитељ',
        'Child' => 'Дете',
        'Hit' => 'Погодак',
        'Hits' => 'Поготци',
        'Text' => 'Текст',
        'Standard' => 'Нормалан',
        'Lite' => 'Једноставан',
        'User' => 'Корисник',
        'Username' => 'Корисничко име',
        'Language' => 'Језик',
        'Languages' => 'Језици',
        'Password' => 'Лозинка',
        'Preferences' => 'Подешавања',
        'Salutation' => 'Поздрав',
        'Salutations' => 'Поздрави',
        'Signature' => 'Потпис',
        'Signatures' => 'Потписи',
        'Customer' => 'Корисник',
        'CustomerID' => 'ИД корисника',
        'CustomerIDs' => 'ИД корисника',
        'customer' => 'корисник',
        'agent' => 'Оператер',
        'system' => 'Систем',
        'Customer Info' => 'Кориснички инфо',
        'Customer Information' => 'Информације о кориснику',
        'Customer Company' => 'Корисникова фирма',
        'Customer Companies' => 'Корисникове фирме',
        'Company' => 'Фирма',
        'go!' => 'Старт!',
        'go' => 'Старт',
        'All' => 'Све',
        'all' => 'све',
        'Sorry' => 'Извините',
        'update!' => 'ажурирање!',
        'update' => 'ажурирање',
        'Update' => 'Ажурирање',
        'Updated!' => 'Ажурирано!',
        'submit!' => 'пошаљи!',
        'submit' => 'пошаљи',
        'Submit' => 'Пошаљи',
        'change!' => 'промена!',
        'Change' => 'Промена',
        'change' => 'промена',
        'click here' => 'кликните овде',
        'Comment' => 'Коментар',
        'Invalid Option!' => 'Неважећа опција!',
        'Invalid time!' => 'Неважеће време!',
        'Invalid date!' => 'Неважећи датум!',
        'Name' => 'Име',
        'Group' => 'Група',
        'Description' => 'Опис',
        'description' => 'опис',
        'Theme' => 'Шема',
        'Created' => 'Креирано',
        'Created by' => 'креирао',
        'Changed' => 'Измењено',
        'Changed by' => 'Мењао',
        'Search' => 'Тражи',
        'and' => 'и',
        'between' => 'између',
        'Fulltext Search' => 'Текст за претрагу',
        'Data' => 'Подаци',
        'Options' => 'Опције',
        'Title' => 'Наслов',
        'Item' => 'Ставка',
        'Delete' => 'Избрисати',
        'Edit' => 'Мењати',
        'View' => 'Преглед',
        'Number' => 'Број',
        'System' => 'Систем',
        'Contact' => 'Контакт',
        'Contacts' => 'Контакти',
        'Export' => 'Извоз',
        'Up' => 'Горе',
        'Down' => 'Доле',
        'Add' => 'Додати',
        'Added!' => 'Додано!',
        'Category' => 'Категорија',
        'Viewer' => 'Приказивач',
        'Expand' => 'Прошири',
        'Small' => 'Ситно',
        'Medium' => 'Средње',
        'Large' => 'Крупно',
        'Date picker' => 'Избор датума',
        'New message' => 'Нова порука',
        'New message!' => 'Нова порука!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'Молимо вас да одговорите на овај тикет да би сте се вратили на нормалан преглед реда!',
        'You have %s new message(s)!' => 'Имате %s нових порука!',
        'You have %s reminder ticket(s)!' => 'Имате %s Тикета подсетника!',
        'The recommended charset for your language is %s!' => 'Препоручени карактерсет за ваш језик је %s!',
        'Change your password.' => 'Промените лозинку.',
        'Please activate %s first!' => 'Молимо, прво активирајте %s.',
        'No suggestions' => 'Нема сугестија',
        'Word' => 'реч',
        'Ignore' => 'Занемари',
        'replace with' => 'замени са',
        'There is no account with that login name.' => 'Не постоји налог са тим корисничким именом.',
        'Login failed! Your user name or password was entered incorrectly.' =>
            'Неуспешна пријава! Нетачно је унето ваше корисничко име или лозинка.',
        'There is no acount with that user name.' => 'Нема налога са тим корисничким именом',
        'Please contact your administrator' => 'Молимо контактирајте вашег администратора',
        'Logout' => 'Одјава',
        'Logout successful. Thank you for using OTRS!' => 'Успешно сте се одјавили! Хвала што сте користили "OTRS"!',
        'Invalid SessionID!' => 'Неисправан ИД сесије!',
        'Feature not active!' => 'Функција није активна!',
        'Agent updated!' => 'Ажуриран оператер',
        'Create Database' => 'Креирај базу података',
        'System Settings' => 'Системска подешавања',
        'Mail Configuration' => 'Подешавање мејла',
        'Finished' => 'Заршено',
        'Install OTRS' => 'Инсталирај "OTRS"',
        'Intro' => 'Увод',
        'License' => 'Лиценца',
        'Database' => 'База података',
        'Configure Mail' => 'Подешавање мејла',
        'Database deleted.' => 'Обрисана база',
        'Database setup succesful!' => 'Успешно инсталирање базе',
        'Login is needed!' => 'Потребна је пријава!',
        'Password is needed!' => 'Потребна је лозинка!',
        'Take this Customer' => 'Узми овог корисника',
        'Take this User' => 'Узми овог корисника система',
        'possible' => 'могуће',
        'reject' => 'одбаци',
        'reverse' => 'обрнуто',
        'Facility' => 'Инсталација',
        'Time Zone' => 'Временска зона',
        'Pending till' => 'Чека до',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            'Не користите "Superuser" налог за рад са "OTRS"! Направите нове налоге за азпослене и користите њих.',
        'Dispatching by email To: field.' => 'Отпрема имејлом за: Поље.',
        'Dispatching by selected Queue.' => 'Отпрема кроз изабрани ред.',
        'No entry found!' => 'Унос није пронађен!',
        'Session has timed out. Please log in again.' => 'Време сесије је истекло. Молимо пријавите се поново.',
        'No Permission!' => 'Немате дозволу!',
        '(Click here to add)' => '(Кликни овде за додавање)',
        'Preview' => 'Преглед',
        'Package not correctly deployed! Please reinstall the package.' =>
            'Пакет није коректно инсталиран! Инсталирајте га поново.',
        '%s is not writable!' => 'Не може се уписивати на %s!',
        'Cannot create %s!' => 'Не може се креирати %s!',
        'Check to activate this date' => 'Означи за активираље овог датума',
        'You have Out of Office enabled, would you like to disable it?' =>
            'Активирана је опција "Ван канцеларије", желите ли да је искључите?',
        'Customer %s added' => 'Додан корисник %s.',
        'Role added!' => 'Додана улога!',
        'Role updated!' => 'Ажурирана улога',
        'Attachment added!' => 'Додан прилог',
        'Attachment updated!' => 'Ажуриран прилог',
        'Response added!' => 'Додан одговор',
        'Response updated!' => 'Ажуриран одговор',
        'Group updated!' => 'Ажурирана група',
        'Queue added!' => 'Додан ред',
        'Queue updated!' => 'Ажуриран ред',
        'State added!' => 'Додан статус',
        'State updated!' => 'Ажуриран статус',
        'Type added!' => 'Додан тип',
        'Type updated!' => 'Ажуриран тип',
        'Customer updated!' => 'Ажуриран корисник',
        'Customer company added!' => 'Додана фирма корисника!',
        'Customer company updated!' => 'Ажурирана фирма корисника!',
        'Mail account added!' => 'Додан мејл налог!',
        'Mail account updated!' => 'Ажуриран мејл налог!',
        'System e-mail address added!' => 'Додана системска мејл адреса!',
        'System e-mail address updated!' => 'Ажурирана системска мејл адреса!',
        'Contract' => 'Уговор',
        'Online Customer: %s' => 'Корисник на вези: %s',
        'Online Agent: %s' => 'Оператер на вези: %s',
        'Calendar' => 'Календар',
        'File' => 'Датотека',
        'Filename' => 'Назив датотеке',
        'Type' => 'Тип',
        'Size' => 'Величина',
        'Upload' => 'Отпремање',
        'Directory' => 'Именик',
        'Signed' => 'Потписано',
        'Sign' => 'Потпис',
        'Crypted' => 'Шифровано',
        'Crypt' => 'Шифра',
        'PGP' => '"PGP"',
        'PGP Key' => '"PGP" Кључ',
        'PGP Keys' => '"PGP" кључеви',
        'S/MIME' => '"S/MIME" кључ',
        'S/MIME Certificate' => '"S/MIME" Сертификат',
        'S/MIME Certificates' => '"S/MIME" Сертификати',
        'Office' => 'Канцеларија',
        'Phone' => 'Телефон',
        'Fax' => 'Факс',
        'Mobile' => 'Мобилни',
        'Zip' => 'ПБ',
        'City' => 'Место',
        'Street' => 'Улица',
        'Country' => 'Држава',
        'Location' => 'Локација',
        'installed' => 'инсталирано',
        'uninstalled' => 'деинсталирано',
        'Security Note: You should activate %s because application is already running!' =>
            'Безбедносна напомена: Требало би да омогућите %s, јер је апликација већ покренута!',
        'Unable to parse repository index document.' => 'Није могуће рашчланити индекс спремишта!',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            'Нема пакета за верзију вашег система, у спремишту су само пакети за друге верзије.',
        'No packages, or no new packages, found in selected repository.' =>
            'У изабраном спремишту нема пакета или нема нових пакета',
        'Edit the system configuration settings.' => 'Уреди подешавања системске конфигурације.',
        'printed at' => 'штампано у',
        'Loading...' => 'Учитавање...',
        'Dear Mr. %s,' => 'Поштовани господине %s,',
        'Dear Mrs. %s,' => 'Поштована госпођо %s,',
        'Dear %s,' => 'Драги %s,',
        'Hello %s,' => 'Здраво %s,',
        'This email address already exists. Please log in or reset your password.' =>
            'Ова имејл адреса већ постоји. Молимо, пријавите се или ресетујте вашу лозинку.',
        'New account created. Sent login information to %s. Please check your email.' =>
            'Креиран нови налог. Подаци за пријаву послати %s. Молимо проверите ваш имејл',
        'Please press Back and try again.' => 'Молимо притисните Назад и покушајте поново.',
        'Sent password reset instructions. Please check your email.' => 'Упутство за ресет лозинке je послато. Молимо проверите ваш имејл.',
        'Sent new password to %s. Please check your email.' => 'Послата нова лозинка за %s. Проверите вашу пошту',
        'Upcoming Events' => 'Предстојећи догађаји',
        'Event' => 'Догађај',
        'Events' => 'Догађаји',
        'Invalid Token!' => 'Неисправна ознака!',
        'more' => 'још',
        'For more info see:' => 'За додатне информације погледај:',
        'Package verification failed!' => 'Неуспела верификација пакета!',
        'Collapse' => 'Смањи',
        'Shown' => 'Приказан',
        'News' => 'Новости',
        'Product News' => 'Новости о производу',
        'OTRS News' => '"OTRS" Новости',
        '7 Day Stats' => 'Седмодневна статистика',
        'Bold' => 'Подебљано',
        'Italic' => 'Курзив',
        'Underline' => 'Подвучено',
        'Font Color' => 'Боја слова',
        'Background Color' => 'Боја позадине',
        'Remove Formatting' => 'Уклони форматирање',
        'Show/Hide Hidden Elements' => 'Покажи/Сакри скривене елементе',
        'Align Left' => 'Поравнај налево',
        'Align Center' => 'Центрирај',
        'Align Right' => 'Поравнај надесно',
        'Justify' => 'Поравнај у блок',
        'Header' => 'Наслов',
        'Indent' => 'Увлачење',
        'Outdent' => 'Извлачење',
        'Create an Unordered List' => 'Направи несређену листу',
        'Create an Ordered List' => 'Направи сређену листу',
        'HTML Link' => '"HTML" Веза',
        'Insert Image' => 'Убаци слику',
        'CTRL' => '"CTRL"',
        'SHIFT' => '"SHIFT"',
        'Undo' => 'Одустани',
        'Redo' => 'Понови',
        'Scheduler process is registered but might not be running.' => 'Планер процес је регистрован, али можда није покренут.',
        'Scheduler is not running.' => 'Планер не ради.',

        # Template: AAACalendar
        'New Year\'s Day' => 'Нова година',
        'International Workers\' Day' => 'Међународни празник рада',
        'Christmas Eve' => 'Бадње вече',
        'First Christmas Day' => 'Први дан Божића',
        'Second Christmas Day' => 'Други дан Божића',
        'New Year\'s Eve' => '',

        # Template: AAAGenericInterface
        'OTRS as requester' => '',
        'OTRS as provider' => '',
        'Webservice "%s" created!' => '',
        'Webservice "%s" updated!' => '',

        # Template: AAAMonth
        'Jan' => 'јан',
        'Feb' => 'феб',
        'Mar' => 'мар',
        'Apr' => 'апр',
        'May' => 'мај',
        'Jun' => 'јун',
        'Jul' => 'јул',
        'Aug' => 'авг',
        'Sep' => 'сеп',
        'Oct' => 'окт',
        'Nov' => 'нов',
        'Dec' => 'дец',
        'January' => 'јануар',
        'February' => 'фебруар',
        'March' => 'март',
        'April' => 'април',
        'May_long' => 'мај',
        'June' => 'јуни',
        'July' => 'јули',
        'August' => 'август',
        'September' => 'септембар',
        'October' => 'октобар',
        'November' => 'новембар',
        'December' => 'децембар',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Подешавања су успешно ажурирана!',
        'User Profile' => 'Кориснички профил',
        'Email Settings' => 'Имејл подешавања',
        'Other Settings' => 'Друга подешавања',
        'Change Password' => 'Промена лозинке',
        'Current password' => 'Садашња лозинка',
        'New password' => 'Нова лозинка',
        'Verify password' => 'Потврди лозинку',
        'Spelling Dictionary' => 'Правописни речник',
        'Default spelling dictionary' => 'Подразумевани правописни речник',
        'Max. shown Tickets a page in Overview.' => 'Максимални број тикета по срани у прегледу.',
        'The current password is not correct. Please try again!' => 'Унета лозинка је нетачна. Молимо покушајте поново!',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            'Лозинка не може бити ажурирана, нови уноси су различити. Молимо покушајте поново!',
        'Can\'t update password, it contains invalid characters!' => 'Лозинка не може бити ажурирана, садржи недозвољене знакове.',
        'Can\'t update password, it must be at least %s characters long!' =>
            'Лозинка не може бити ажурирана. Минимална дужина лозинке је %s знакова.',
        'Can\'t update password, it must contain at least 2 lowercase  and 2 uppercase characters!' =>
            'Лозинка не може бити ажурирана. Мора да садржи бар 2 велика и 2 мала слова.',
        'Can\'t update password, it must contain at least 1 digit!' => 'Лозинка не може бити ажурирана. Мора да садржи бар једну бројку.',
        'Can\'t update password, it must contain at least 2 characters!' =>
            'Лозинка не може бити ажурирана. Мора да садржи најмање 2 знака.',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            'Лозинка не може бити ажурирана. Унета лозинка је већ у употреби. Молимо изаберите неку другу.',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            'Изаберите раставни знак који ће се користи у "CSV" датотекама (статистика и претраге). Ако не изаберете раставни знак овде, користиће се подразумевани раставни знак за ваш језик',
        'CSV Separator' => '"CSV" раставни знак',

        # Template: AAAStats
        'Stat' => 'Статистика',
        'Sum' => 'Сума',
        'Please fill out the required fields!' => 'Молимо Вас, попуните обавезна поља!',
        'Please select a file!' => 'Молимо Вас да одаберете датотеку!',
        'Please select an object!' => 'Молимо Вас да одаберете објекат!',
        'Please select a graph size!' => 'Молимо Вас да одаберете величину графикона!',
        'Please select one element for the X-axis!' => 'Молимо да изаберете један елемент за X-осу!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' =>
            'Изаберите само један елемент или опозовите избор на ознаци поља "фиксирано"!',
        'If you use a checkbox you have to select some attributes of the select field!' =>
            'Ако користите ознаке селекције, морате да изаберете неке атрибуте селектованог поља!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' =>
            'Молимо да унесете вредност у изабрано поље или искључите ознаку "фиксирано"!',
        'The selected end time is before the start time!' => 'Изабрано време краја је пре времена почетка!',
        'You have to select one or more attributes from the select field!' =>
            'Морате да изаберете један или више атрибута из селектованог поља!',
        'The selected Date isn\'t valid!' => 'Датум који сте изабрали није важећи!',
        'Please select only one or two elements via the checkbox!' => 'Молимо да изаберете само један или два елемента!',
        'If you use a time scale element you can only select one element!' =>
            'Уколико користите елемент временске скале, можете изабрати само један елемент!',
        'You have an error in your time selection!' => 'Имате грешку у вашем избору времена!',
        'Your reporting time interval is too small, please use a larger time scale!' =>
            'Ваш интервал извештаја је прекратак, молимо употребите већи временски размак!',
        'The selected start time is before the allowed start time!' => 'Изабрано време почетка је пре дозвољеног почетног времена!',
        'The selected end time is after the allowed end time!' => 'Изабрано време краја је после дозвољеног времена краја!',
        'The selected time period is larger than the allowed time period!' =>
            'Изабрани временски период је дужи од дозвољеног!',
        'Common Specification' => 'Опште информације',
        'X-axis' => 'X-Оса',
        'Value Series' => 'Опсези',
        'Restrictions' => 'Ограничења',
        'graph-lines' => 'Линијски графикон',
        'graph-bars' => 'Стубичати графикон',
        'graph-hbars' => 'Стубичати графикон (хоризонтално)',
        'graph-points' => 'Тачкасти графикон',
        'graph-lines-points' => 'Линијско-тачкасти графикон',
        'graph-area' => 'Област графикона',
        'graph-pie' => 'Графикон пита',
        'extended' => 'проширен',
        'Agent/Owner' => 'Оператер/Власник',
        'Created by Agent/Owner' => 'Отворио Оператер/Власник',
        'Created Priority' => 'Отворено са приоритетом',
        'Created State' => 'Отворено са статусом',
        'Create Time' => 'Време отварања',
        'CustomerUserLogin' => 'Пријава корисника',
        'Close Time' => 'Време затварања',
        'TicketAccumulation' => 'Акумулација тикета',
        'Attributes to be printed' => 'Атрибути за штампу',
        'Sort sequence' => 'Редослед сортирања',
        'Order by' => 'Сортирај по',
        'Limit' => 'Ограничење',
        'Ticketlist' => 'Листа тикета',
        'ascending' => 'растући',
        'descending' => 'опадајући',
        'First Lock' => 'Прво закључавање',
        'Evaluation by' => 'Проценио',
        'Total Time' => 'Укупно време',
        'Ticket Average' => 'Просечно време по тикету',
        'Ticket Min Time' => 'Минимално време тикета',
        'Ticket Max Time' => 'Максимално време тикета',
        'Number of Tickets' => 'Број тикета',
        'Article Average' => 'Просечно време по чланку',
        'Article Min Time' => 'Минимално време чланка',
        'Article Max Time' => 'Максимално време чланка',
        'Number of Articles' => 'Број чланака',
        'Accounted time by Agent' => 'Обрачунато време по оператеру',
        'Ticket/Article Accounted Time' => 'Обрачунато време',
        'TicketAccountedTime' => 'Обрачунато време обраде тикета',
        'Ticket Create Time' => 'Време отварања тикета',
        'Ticket Close Time' => 'Време затварања тикета',

        # Template: AAATicket
        'Status View' => 'Преглед статуса',
        'Bulk' => 'Масовно',
        'Lock' => 'Закључај',
        'Unlock' => 'Откључај',
        'History' => 'Историјат',
        'Zoom' => 'Саджај',
        'Age' => 'Старост',
        'Bounce' => 'Преусмери',
        'Forward' => 'Проследи',
        'From' => 'Од',
        'To' => 'За',
        'Cc' => 'Кк',
        'Bcc' => 'Скк',
        'Subject' => 'Предмет',
        'Move' => 'Премести',
        'Queue' => 'Ред',
        'Queues' => 'Редови',
        'Priority' => 'Приоритет',
        'Priorities' => 'Приоритети',
        'Priority Update' => 'Ажурирање приоритета',
        'Priority added!' => 'Додан приоритет!',
        'Priority updated!' => 'Ажуриран приоритет!',
        'Signature added!' => 'Додан потпис!',
        'Signature updated!' => 'Ажуриран потпис!',
        'SLA' => '"SLA"',
        'Service Level Agreement' => 'Договор о нивоу услуге',
        'Service Level Agreements' => 'Договори о нивоу услуге',
        'Service' => 'Услуга',
        'Services' => 'Услуге',
        'State' => 'Стање',
        'States' => 'Стања',
        'Status' => 'Статус',
        'Statuses' => 'Статуси',
        'Ticket Type' => 'Тип Тикета',
        'Ticket Types' => 'Типови Тикета',
        'Compose' => 'Напиши',
        'Pending' => 'На чекању',
        'Owner' => 'Власник',
        'Owner Update' => 'Ажурирање власника',
        'Responsible' => 'Одговоран',
        'Responsible Update' => 'Ажурирање одговорног',
        'Sender' => 'Пошиљаоц',
        'Article' => 'Чланак',
        'Ticket' => 'Тикет',
        'Createtime' => 'Време креирања',
        'plain' => 'неформатирано',
        'Email' => 'Имејл',
        'email' => 'имејл',
        'Close' => 'Затвори',
        'Action' => 'Акција',
        'Attachment' => 'Прилог',
        'Attachments' => 'Прилози',
        'This message was written in a character set other than your own.' =>
            'Ова порука је написана скупом знакова различитим од оног који Ви користите.',
        'If it is not displayed correctly,' => 'Ако није исправно приказано,',
        'This is a' => 'Ово је',
        'to open it in a new window.' => 'за отварање у новом прозору.',
        'This is a HTML email. Click here to show it.' => 'Ово је "HTML" имејл. Кликни овде за приказ.',
        'Free Fields' => 'Слободна поља',
        'Merge' => 'Споји',
        'merged' => 'спојено',
        'closed successful' => 'успешно затварање',
        'closed unsuccessful' => 'неуспешно затварање',
        'Locked Tickets Total' => 'Укупно закључних тикета',
        'Locked Tickets Reminder Reached' => 'Достигнут подсетник закључаних тикета',
        'Locked Tickets New' => 'Нови закључани тикети',
        'Responsible Tickets Total' => 'Укупно тикета "..."',
        'Responsible Tickets New' => 'Нови тикети "..."',
        'Responsible Tickets Reminder Reached' => 'Достигнут подсетник тикета ".."',
        'Watched Tickets Total' => 'Укупно праћених тикета',
        'Watched Tickets New' => 'Нови праћени тикети',
        'Watched Tickets Reminder Reached' => 'Достигнут подсетник тикета на чекању',
        'All tickets' => 'Сви тикети',
        'Available tickets' => '',
        'Escalation' => 'Ескалација',
        'last-search' => 'последња претрага',
        'QueueView' => 'Преглед реда',
        'Ticket Escalation View' => 'Ескалациони преглед тикета',
        'Message from' => 'Порука од',
        'End message' => 'крај поруке',
        'Forwarded message from' => 'Прослеђена порука од',
        'End forwarded message' => 'Крај прослеђене поруке',
        'new' => 'ново',
        'open' => 'отворени',
        'Open' => 'Отворени',
        'Open tickets' => 'Отворени тикети',
        'closed' => 'затворени',
        'Closed' => 'Затворени',
        'Closed tickets' => 'Затворени тикети',
        'removed' => 'уклоњени',
        'pending reminder' => 'подсетник чекања',
        'pending auto' => 'аутоматско чекање',
        'pending auto close+' => 'чекање на аутоматско затварање+',
        'pending auto close-' => 'чекање на аутоматско затварање-',
        'email-external' => 'Имејл екстерни',
        'email-internal' => 'имејл интерни',
        'note-external' => 'Напомена - екстерна',
        'note-internal' => 'Напомена - интерна',
        'note-report' => 'Напомена за извештај',
        'phone' => 'Телефон',
        'sms' => '"SMS"',
        'webrequest' => '"Web" захтев',
        'lock' => 'затворен',
        'unlock' => 'отворен',
        'very low' => 'врло низак',
        'low' => 'низак',
        'normal' => 'нормалан',
        'high' => 'висок',
        'very high' => 'врло висок',
        '1 very low' => '1 врло низак',
        '2 low' => '2 низак',
        '3 normal' => '3 нормалан',
        '4 high' => '4 висок',
        '5 very high' => '5 врло висок',
        'auto follow up' => 'аутоматско праћење',
        'auto reject' => 'аутобатско одбацивање',
        'auto remove' => 'аутоматско уклањање',
        'auto reply' => 'аутоматски одговор',
        'auto reply/new ticket' => 'аутоматски одговор/нови тикет',
        'Ticket "%s" created!' => 'Тикет "%s" креиран!',
        'Ticket Number' => 'Број тикета',
        'Ticket Object' => 'Објекат тикета',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Не постоји тикет број "%s"! Не може се повезати!',
        'You don\'t have write access to this ticket.' => 'Немате право уписа у овај тикет.',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            'Нажалост, морате бити власник тикета за ову акцију.',
        'Ticket selected.' => 'Изабран тикет.',
        'Ticket is locked by another agent.' => 'Тикет је закључан од стране другог оператера.',
        'Ticket locked.' => 'Закључан тикет.',
        'Don\'t show closed Tickets' => 'Не приказуј затворене тикете',
        'Show closed Tickets' => 'Прикажи затворене тикете',
        'New Article' => 'Нови чланак',
        'Unread article(s) available' => 'располиживи непрочитани чланци',
        'Remove from list of watched tickets' => 'Уклони са листе праћених тикета',
        'Add to list of watched tickets' => 'Додај на листу праћених тикета',
        'Email-Ticket' => 'Имејл тикет',
        'Create new Email Ticket' => 'Креира нови Имејл тикет',
        'Phone-Ticket' => 'Телефонски тикет',
        'Search Tickets' => 'Тражење тикета',
        'Edit Customer Users' => 'Уреди кориснике',
        'Edit Customer Company' => 'Уреди корисничку фирму',
        'Bulk Action' => 'Масовна акција',
        'Bulk Actions on Tickets' => 'Масовне акције на тикетима',
        'Send Email and create a new Ticket' => 'Пошањи имејл и креирај нови тикет',
        'Create new Email Ticket and send this out (Outbound)' => 'Отвори нови имејл тикет и пошаљи ово (одлазни)',
        'Create new Phone Ticket (Inbound)' => 'Креирај нови телефонски тикет (долазни позив)',
        'Address %s replaced with registered customer address.' => '',
        'Customer automatically added in Cc.' => '',
        'Overview of all open Tickets' => 'Преглед свих отворених тикета',
        'Locked Tickets' => 'Закључани тикети',
        'My Locked Tickets' => 'Моји закључани тикети',
        'My Watched Tickets' => 'Моји посматрани тикети',
        'My Responsible Tickets' => 'Тикети за које сам одговоран',
        'Watched Tickets' => 'Посматрани тикети',
        'Watched' => 'Посматрано',
        'Watch' => 'Посматрај',
        'Unwatch' => 'Прекини посматрање',
        'Lock it to work on it' => 'Закључајте за рад на тикету',
        'Unlock to give it back to the queue' => 'Откључајте за враћање у ред',
        'Show the ticket history' => '',
        'Print this ticket' => '',
        'Print this article' => '',
        'Split this article' => '',
        'Forward article via mail' => '',
        'Change the ticket priority' => 'Промени приоритет тикета',
        'Change the ticket free fields!' => 'Промени слободна поља тикета',
        'Link this ticket to other objects' => '',
        'Change the owner for this ticket' => 'Промени власника овог тикета',
        'Change the  customer for this ticket' => '',
        'Add a note to this ticket' => 'Додај напомену овом тикету',
        'Merge into a different ticket' => '',
        'Set this ticket to pending' => '',
        'Close this ticket' => 'Затвори овај тикет',
        'Look into a ticket!' => 'Погледај садржај тикета!',
        'Delete this ticket' => 'Обришите овај тикет',
        'Mark as Spam!' => 'Означи као "Spam"!',
        'My Queues' => 'Моји редови',
        'Shown Tickets' => 'приказани тикети',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'Ваш имејл са бројем тикета "<OTRS_TICKET>" је спојен са тикетом "<OTRS_MERGE_TO_TICKET>"!',
        'Ticket %s: first response time is over (%s)!' => 'Тикет %s: време реакције је преко (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Тикет %s: време реакције истиче за %s!',
        'Ticket %s: update time is over (%s)!' => 'Тикет %s: време ажурирања је преко (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Тикет %s: време ажурирања истиче за %s!',
        'Ticket %s: solution time is over (%s)!' => 'Тикет %s: време решавања је преко (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Тикет %s: време решавања истиче за %s!',
        'There are more escalated tickets!' => 'Има још ескалиралих тикета!',
        'Plain Format' => 'Прост формат',
        'Reply All' => 'Одговори на све',
        'Direction' => 'Смер',
        'Agent (All with write permissions)' => 'Оператер (сви са дозволом за измене)',
        'Agent (Owner)' => 'Оператер (Власник)',
        'Agent (Responsible)' => 'Оператер (Одговоран)',
        'New ticket notification' => 'Обавештење о новом тикету',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'Пошаљи ми обавештење за нови тикет у "Мојим Редовима".',
        'Send new ticket notifications' => 'Пошаљи обавештења о новим тикетима',
        'Ticket follow up notification' => 'Обавештење о наставку тикета',
        'Ticket lock timeout notification' => 'Обавештење о истицању закључавања тикета',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'Пошаљи ми обавештење ако систем откључа тикет.)',
        'Send ticket lock timeout notifications' => 'Пошаљи обавештење о истеку закључавања тикета',
        'Ticket move notification' => 'Обавештење о померању тикета',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'Пошаљи ми обавештење кад се тикет премести у "Моје Редове".',
        'Send ticket move notifications' => 'Пошаљи обавештење о померању тикета',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            'Изабрани омиљени редови. Ако је активирано, добиђете и обавештење о овим редовима.',
        'Custom Queue' => 'Прилагођен ред',
        'QueueView refresh time' => 'Време освежавања реда',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            'Ако је укључено, преглед реда ће бити освежен после задатог времена.',
        'Refresh QueueView after' => 'Освежи преглед реда после',
        'Screen after new ticket' => 'Екран после отварања новог тикета',
        'Show this screen after I created a new ticket' => 'Прикажи овај екран после отварања новог тикета',
        'Closed Tickets' => 'Затворени тикети',
        'Show closed tickets.' => 'Прикажи затворене тикете.',
        'Max. shown Tickets a page in QueueView.' => 'Максимални број приказаних тикета у прегледу реда.',
        'Ticket Overview "Small" Limit' => 'Преглед тикета - лимит мало',
        'Ticket limit per page for Ticket Overview "Small"' => 'Лимит тикета по страни за преглед - мало',
        'Ticket Overview "Medium" Limit' => 'Преглед тикета - лимит средње',
        'Ticket limit per page for Ticket Overview "Medium"' => 'Лимит тикета по страни за преглед - средње',
        'Ticket Overview "Preview" Limit' => 'Преглед тикета - лимит прегледа',
        'Ticket limit per page for Ticket Overview "Preview"' => 'Лимит тикета по страни за преглед',
        'Ticket watch notification' => 'Обавештење о посматрању тикета',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            'Пошаљи ми исто обавештење за праћене тикете које ће добити власник.',
        'Send ticket watch notifications' => 'Пошаљи обавештење о праћењу тикета',
        'Out Of Office Time' => 'Ван радног времена',
        'New Ticket' => 'Нови тикет',
        'Create new Ticket' => 'Направи нови тикет',
        'Customer called' => 'Позвани корисник',
        'phone call' => 'телефонски позив',
        'Phone Call Outbound' => 'Одлазни телефонски позив',
        'Phone Call Inbound' => 'Долазни телефонски позив',
        'Reminder Reached' => 'Достигнут подсетник',
        'Reminder Tickets' => 'Тикети на подсетнику',
        'Escalated Tickets' => 'Ескалирани тикети',
        'New Tickets' => 'Нови тикети',
        'Open Tickets / Need to be answered' => 'Отворени тикети / Потребно одговорити',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            'Сви отворени тикети, на овима је већ рађено, али на њих треба одговорити',
        'All new tickets, these tickets have not been worked on yet' => 'Сви нови тикети, на њима још није ништа рађено',
        'All escalated tickets' => 'Сви ескалирани тикети',
        'All tickets with a reminder set where the reminder date has been reached' =>
            'Сви тикети са подешеним подсетником, а датум подсетника је достигнут',
        'Archived tickets' => 'Архивирани тикети',
        'Unarchived tickets' => 'Неархивирани тикети',
        'History::Move' => 'Тикет премештен у ред "%s" (%s) из реда "%s" (%s).',
        'History::TypeUpdate' => 'Ажуриран тип "%s" (ИД=%s).',
        'History::ServiceUpdate' => 'Ажуриран сервис "%s" (ИД=%s).',
        'History::SLAUpdate' => 'Ажуриран "SLA" "%s" (ИД=%s).',
        'History::NewTicket' => 'Нови тикет [%s] отворен (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'Наставак за [%s]. %s',
        'History::SendAutoReject' => 'Аутоматски одбијено "%s".',
        'History::SendAutoReply' => 'Послат аутоматски одговор за "%s".',
        'History::SendAutoFollowUp' => 'Аутоматски наставак за "%s".',
        'History::Forward' => 'Прослеђено "%s".',
        'History::Bounce' => 'Одбијено "%s".',
        'History::SendAnswer' => 'Имејл послат "%s".',
        'History::SendAgentNotification' => '"%s"-Обавештења послата за "%s".',
        'History::SendCustomerNotification' => 'Обавештења послата за "%s".',
        'History::EmailAgent' => '"E-Mail an Kunden versandt."',
        'History::EmailCustomer' => '"E-Mail hinzugefugt. %s"',
        'History::PhoneCallAgent' => '"Kunden angerufen."',
        'History::PhoneCallCustomer' => 'Кориснички телефонски позив.',
        'History::AddNote' => 'Додата напомена (%s)',
        'History::Lock' => 'Тикет закључан.',
        'History::Unlock' => 'Тикет откључан.',
        'History::TimeAccounting' => '%s временских јединица пребројано. Укупно %s временских јединица.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Ажурирано: %s',
        'History::PriorityUpdate' => 'Ажуриран приоритет са "%s" (%s) на "%s" (%s).',
        'History::OwnerUpdate' => 'Нови власник је "%s" (ИД=%s).',
        'History::LoopProtection' => 'Заштита од петље! Аутоматски одговор није послат на "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Ажурирано: %s',
        'History::StateUpdate' => 'Старо: "%s" Ново: "%s"',
        'History::TicketDynamicFieldUpdate' => 'Ажурирано: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Кориснички "Web" захтев.',
        'History::TicketLinkAdd' => 'Веза на "%s" постављена.',
        'History::TicketLinkDelete' => 'Веза на "%s" обрисана.',
        'History::Subscribe' => 'Претплата за корисника "%s" укључена.',
        'History::Unsubscribe' => 'Претплата за корисника "%s" искључена.',
        'History::SystemRequest' => 'Системски захтев',
        'History::ResponsibleUpdate' => 'Нови одговорни је "%s" (ИД=%s).',
        'History::ArchiveFlagUpdate' => '',

        # Template: AAAWeekDay
        'Sun' => 'нед',
        'Mon' => 'пон',
        'Tue' => 'уто',
        'Wed' => 'сре',
        'Thu' => 'чет',
        'Fri' => 'пет',
        'Sat' => 'суб',

        # Template: AdminAttachment
        'Attachment Management' => 'Управљање прилозима',
        'Actions' => 'Акције',
        'Go to overview' => 'Иди на преглед',
        'Add attachment' => 'Додај прилог',
        'List' => 'Листа',
        'Validity' => 'Важност',
        'No data found.' => 'Ништа није пронађено.',
        'Download file' => 'Преузми датотеку',
        'Delete this attachment' => 'Обриши овај прилог',
        'Add Attachment' => 'Додај прилог',
        'Edit Attachment' => 'Уреди прилог',
        'This field is required.' => 'Ово поље је обавезно.',
        'or' => 'или',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'Управљање аутоматским одговорима',
        'Add auto response' => 'Додај аутоматски одговор',
        'Add Auto Response' => 'Додај аутоматски одговор',
        'Edit Auto Response' => 'Уреди аутоматски одговор',
        'Response' => 'Одговор',
        'Auto response from' => 'Аутоматски одговор од',
        'Reference' => 'Референце',
        'You can use the following tags' => 'Можете користити следеће ознаке',
        'To get the first 20 character of the subject.' => 'Да видите првих 20 слова предмета',
        'To get the first 5 lines of the email.' => 'Да видите првих 5 линија поруке',
        'To get the realname of the sender (if given).' => 'Да видите име пошиљаоца (ако је доступно)',
        'To get the article attribute' => 'Да видите атрибуте чланка',
        ' e. g.' => 'нпр.',
        'Options of the current customer user data' => 'Опције података о актуелном кориснику',
        'Ticket owner options' => 'Опције власника тикета',
        'Ticket responsible options' => 'Опције одговорног за тикет',
        'Options of the current user who requested this action' => 'Опције актуелног корисника који је тражио ову акцију',
        'Options of the ticket data' => 'Опције података о тикету',
        'Config options' => 'Конфигурационе опције',
        'Example response' => 'Пример одговора',

        # Template: AdminCustomerCompany
        'Customer Company Management' => 'Уређивање корисничких фирми',
        'Wildcards like \'*\' are allowed.' => 'Џокерски знаци као \'*\' су дозвољени',
        'Add customer company' => 'Додај корисничку фирму',
        'Please enter a search term to look for customer companies.' => 'Молимо унесите фразу за проналажење корисничких фирми.',
        'Add Customer Company' => 'Додај корисничку фирму',

        # Template: AdminCustomerUser
        'Customer Management' => 'Управљање корисницима',
        'Add customer' => 'Додај корисника',
        'Select' => 'Изабери',
        'Hint' => 'Савет',
        'Customer will be needed to have a customer history and to login via customer panel.' =>
            'Корисници су потребни да би могли да имате историјат за корисника и да би могли да се пријаве на клијентски портал.',
        'Please enter a search term to look for customers.' => 'Молимо унесите фразу за проналажење корисника.',
        'Last Login' => 'Последња пријава',
        'Login as' => 'Пријави се као',
        'Switch to customer' => '',
        'Add Customer' => 'Додај корисника',
        'Edit Customer' => 'Уреди корисника',
        'This field is required and needs to be a valid email address.' =>
            'Ово је обавезно поње и мора да буде исправна мејл адреса.',
        'This email address is not allowed due to the system configuration.' =>
            'Ова имејл адреса није дозвољена због системске конфигурације.',
        'This email address failed MX check.' => 'Ова имејл адреса не задовољава "MX" проверу.',
        'DNS problem, please check your configuration and the error log.' =>
            '"DNS" проблем, молимо проверите конфигурацију и дневник грешака.',
        'The syntax of this email address is incorrect.' => 'Синтакса ове имејл адресе је неисправна.',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => 'Управљање релацијама Корисник-Група',
        'Notice' => 'Напомена',
        'This feature is disabled!' => 'Ова функција је искључена!',
        'Just use this feature if you want to define group permissions for customers.' =>
            'Употребите ову функцију ако желите да дефинишете групне дозволе за кориснике.',
        'Enable it here!' => 'Активирајте је овде!',
        'Search for customers.' => 'Тражи кориснике.',
        'Edit Customer Default Groups' => 'Уреди подразумеване групе за корисника',
        'These groups are automatically assigned to all customers.' => 'Ове групе су аутоматски додељене свим корисницима',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            'Можете управљати овим групама преко конфигурационих подешаванља "..."',
        'Filter for Groups' => 'Филетер за групе',
        'Select the customer:group permissions.' => 'Изабери дозволе за корисник:група',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            'Ако ништа није изабрано, онда нема дозвола у овој групи (тикети неће бити доступни кориснику).',
        'Search Result:' => 'Резултат претраге:',
        'Customers' => 'Корисници',
        'Groups' => 'Групе',
        'No matches found.' => 'Ништа није пронађено.',
        'Change Group Relations for Customer' => 'Промени везе са групама за корисника',
        'Change Customer Relations for Group' => 'промени везе са корисницима за групу',
        'Toggle %s Permission for all' => 'Промени %s дозволе за све',
        'Toggle %s permission for %s' => 'Промени %s дозволе за %s',
        'Customer Default Groups:' => 'Подразумеване групе за корисника:',
        'No changes can be made to these groups.' => 'На овим групама промене нису могуће.',
        'ro' => '"ro"',
        'Read only access to the ticket in this group/queue.' => 'Приступ ограничен само на читање за тикете у овим Групама/Редовима.',
        'rw' => '"rw"',
        'Full read and write access to the tickets in this group/queue.' =>
            'Приступ без ограничења за тикете у овим Групама/Редовима.',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => 'Управљање везама Корисник-Сервиси',
        'Edit default services' => 'Уреди подразумеване сервисе',
        'Filter for Services' => 'Филтер за сервисе',
        'Allocate Services to Customer' => 'Придружи сервисе кориснику',
        'Allocate Customers to Service' => 'Придружи кориснике сервису',
        'Toggle active state for all' => 'Промени активно стање за све',
        'Active' => 'Активно',
        'Toggle active state for %s' => 'Промени активно стање за %s',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => 'Управљање динамичким пољима',
        'Add new field for object' => '',
        'To add a new field, select the field type form one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            'За додавање новог поља изаберите тип поља из листе објекта, објект дефинише могући опсег вредности и не може се променити после креирања поља.',
        'Dynamic Fields List' => 'Листа динамичких поља',
        'Dynamic fields per page' => 'Број динамичких поља по страни',
        'Label' => 'Ознака',
        'Order' => 'Сортирање',
        'Object' => 'Објекат',
        'Delete this field' => '',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            '',
        'Delete field' => '',

        # Template: AdminDynamicFieldCheckbox
        'Dynamic Fields' => 'Динамичка поља',
        'Field' => 'Поље',
        'Go back to overview' => 'Иди назад на преглед',
        'General' => 'Опште',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            'Ово поље је обавезно и може садржати само од слова и бројеве.',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            'Мора бити јединствено и прихвата само слова и бројеве.',
        'Changing this value will require manual changes in the system.' =>
            'Измена овог поља ће захтевати ручне промене у систему.',
        'This is the name to be shown on the screens where the field is active.' =>
            'Ово је име које ће се приказивати на екранима где је поње активно.',
        'Field order' => 'Редослед поља',
        'This field is required and must be numeric.' => 'Ово поље је обавезно и мора бити нумеричко.',
        'This is the order in which this field will be shown on the screens where is active.' =>
            'Ово је редослед по ком ће поља бити приказана на екранима где су активна.',
        'Field type' => 'Тип поља',
        'Object type' => 'Тип објекта',
        'Internal field' => '',
        'This field is protected and can\'t be deleted.' => '',
        'Field Settings' => 'Подешавање поља',
        'Default value' => 'Подразумевана вредност',
        'This is the default value for this field.' => 'Ово је подразумевана вредност за ово поље.',
        'Save' => 'Сачувај',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => 'Подразумевана разлика датума',
        'This field must be numeric.' => 'Ово поље мора бити нумеричко.',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            'Разлика (у секундама) од сад за израчунавање подразумеване вредности поља (нпр 3600 или -60).',
        'Define years period' => 'Дефинисање периода у годинама',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            'Активирајте ову опцију ради дефинисања фиксног опсега година (у будућност и прошлост) за приказ при избору година на пољу.',
        'Years in the past' => 'Година у прошлост',
        'Years in the past to display (default: 5 years).' => 'Године у прошлост за приказ (подразумевано је 5).',
        'Years in the future' => 'Година у будућност',
        'Years in the future to display (default: 5 years).' => 'Године у будућност за приказ (подразумевано је 5).',
        'Show link' => 'Покажи везу',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            'Овде можете да унесете опциону "HTTP" везу за вредност поља у прозору општег и увећаног прегледа.',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => 'Могуће вредности',
        'Key' => 'Кључ',
        'Value' => 'Вредност',
        'Remove value' => 'Уклони вредност',
        'Add value' => 'Додај вредност',
        'Add Value' => 'Додај Вредност',
        'Add empty value' => 'Додај без вредности',
        'Activate this option to create an empty selectable value.' => 'Активирај ову опцију за креирање избора без вредности.',
        'Translatable values' => 'Преводљиве вредности',
        'If you activate this option the values will be translated to the user defined language.' =>
            'Ако активирате ову опцију вредности ће бити преведене на изабрани језик.',
        'Note' => 'Напомена:',
        'You need to add the translations manually into the language translation files.' =>
            'Ове преводе морате ручно додати у датотеке превода.',

        # Template: AdminDynamicFieldMultiselect

        # Template: AdminDynamicFieldText
        'Number of rows' => 'Број редова',
        'Specify the height (in lines) for this field in the edit mode.' =>
            'Унеси висину (у линијама) за ово поље у моду обраде.',
        'Number of cols' => 'Број колона',
        'Specify the width (in characters) for this field in the edit mode.' =>
            'Унеси ширину (у знаковима) за ово поље у моду уређивања.',

        # Template: AdminEmail
        'Admin Notification' => 'Административна обавештења',
        'With this module, administrators can send messages to agents, group or role members.' =>
            'Са овим модулом, администратори могу слати поруке оператерима, групама или припадницима улоге.',
        'Create Administrative Message' => 'Креирај административну поруку',
        'Your message was sent to' => 'Ваша порука је послата',
        'Send message to users' => 'Пошаљи поруку корисницима',
        'Send message to group members' => 'Пошаљи поруку члановима групе',
        'Group members need to have permission' => 'Чланови групе треба да имају дозволу',
        'Send message to role members' => 'Пошаљи поруку припадницима улоге',
        'Also send to customers in groups' => 'Такође пошаљи корисницима у групама',
        'Body' => 'Текст',
        'Send' => 'Шаљи',

        # Template: AdminGenericAgent
        'Generic Agent' => '"Генерички" оператер',
        'Add job' => 'Додај посао',
        'Last run' => 'Последње покретање',
        'Run Now!' => 'Покрени сад!',
        'Delete this task' => 'Обриши овај задатак',
        'Run this task' => 'Покрени овај задатак',
        'Job Settings' => 'Подешавање посла',
        'Job name' => 'Назив посла',
        'Currently this generic agent job will not run automatically.' =>
            'Тренутно овај генерички агентски задатак неће радити аутоматски.',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            'Да бисте омогућили аутоматско извршавање изаберите бар једну вредност од минута сати и дана!',
        'Schedule minutes' => 'Планирано минута',
        'Schedule hours' => 'Планирано сати',
        'Schedule days' => 'Планирано дана',
        'Toggle this widget' => 'Преклопи овај "widget"',
        'Ticket Filter' => 'Филтер тикета',
        '(e. g. 10*5155 or 105658*)' => 'нпр. 10*5144 или 105658*',
        '(e. g. 234321)' => 'нпр. 234321',
        'Customer login' => 'Пријава корисника',
        '(e. g. U5150)' => 'нпр. U5150',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => 'Потпуна текстуална претрага у чланку (нпр )',
        'Agent' => 'Оператер',
        'Ticket lock' => 'Тикет закључан',
        'Create times' => 'Времена отварања',
        'No create time settings.' => 'Нема подешавања времена отварања.',
        'Ticket created' => 'Тикет отворен',
        'Ticket created between' => 'Тикет отворен између',
        'Change times' => 'Промена времена',
        'No change time settings.' => 'Нема промене времена',
        'Ticket changed' => 'Промењен тикет',
        'Ticket changed between' => 'Тикет промењен између',
        'Close times' => 'Времена затварања',
        'No close time settings.' => 'Није подешено време затварања.',
        'Ticket closed' => 'Тикет затворен',
        'Ticket closed between' => 'Тикет затворен између',
        'Pending times' => 'Времена чекања',
        'No pending time settings.' => 'Нема подешавања времена чекања',
        'Ticket pending time reached' => 'Достигнуто време чекања тикета',
        'Ticket pending time reached between' => 'Време чекања тикета достигнуто између',
        'Escalation times' => 'Времена ескалације',
        'No escalation time settings.' => 'Нема подешавања времена ескалације',
        'Ticket escalation time reached' => 'Достигнуто време ескалације тикета',
        'Ticket escalation time reached between' => 'Време ескалације тикета достигнуто између',
        'Escalation - first response time' => 'Ескалација - време прве реакције',
        'Ticket first response time reached' => 'Достигнуто време прве реакције на тикет',
        'Ticket first response time reached between' => 'Време прве реакције на тикет достигнуто између',
        'Escalation - update time' => 'Ескалација - време ажурирања',
        'Ticket update time reached' => 'Достигнуто време ажурирања тикета',
        'Ticket update time reached between' => 'Време ажурирања тикета достигнуто између',
        'Escalation - solution time' => 'Ескалација - време решавања',
        'Ticket solution time reached' => 'Достигнуто време решавања тикета',
        'Ticket solution time reached between' => 'Време решавања тикета достигнуто између',
        'Archive search option' => 'Опције претраге архива',
        'Ticket Action' => 'Акција на тикету',
        'Set new service' => 'Подеси нови сервис',
        'Set new Service Level Agreement' => 'Подеси нови "SLA"',
        'Set new priority' => 'Подеси нови приоритет',
        'Set new queue' => 'Подеси нови ред',
        'Set new state' => 'Подеси нови статус',
        'Set new agent' => 'Подеси новог оператера',
        'new owner' => 'нови власник',
        'new responsible' => 'нови одговорни',
        'Set new ticket lock' => 'Подеси ново закључавање тикета',
        'New customer' => 'Нови корисник',
        'New customer ID' => 'Нови ИД корисника',
        'New title' => 'Нови наслов',
        'New type' => 'Нови тип',
        'New Dynamic Field Values' => 'Нове вредности динамичких поља',
        'Archive selected tickets' => 'Архивирај изабране тикете',
        'Add Note' => 'Додај напомену',
        'Time units' => 'Временске јединице',
        ' (work units)' => ' (елементи посла)',
        'Ticket Commands' => 'Команде за тикет',
        'Send agent/customer notifications on changes' => 'Пошаљи обавештења оператеру/кориснику при променама',
        'CMD' => '"CMD"',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'Ова наредба ће бити извршена. ARG[0] је број тикета, а ARG[1] ИД тикета.',
        'Delete tickets' => 'Обриши тикете',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            'УПОЗОРЕЊЕ: Сви обухваћени тикети ће бити неповратно уклоњени из базе!',
        'Execute Custom Module' => 'Покрени извршавање посебног модула',
        'Param %s key' => 'Кључ параметра %s',
        'Param %s value' => 'Вредност параметра %s',
        'Save Changes' => 'Сачувај промене',
        'Results' => 'Резултати',
        '%s Tickets affected! What do you want to do?' => '%s тикета је обухваћено. Шта желите да урадите?',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            'УПОЗОРЕЊЕ: Употребили сте опцију за брисање. Сви обрисани тикети же бити изгубљени!',
        'Edit job' => 'Уреди посао',
        'Run job' => 'Покрени посао',
        'Affected Tickets' => 'Обухваћени тикети',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => 'Отклањање грешака у општем интерфејсу веб сервиса %s',
        'Web Services' => 'Веб сервиси',
        'Debugger' => 'Програм за отклањање грешака',
        'Go back to web service' => 'Иди назад на веб сервис',
        'Clear' => 'Очисти',
        'Do you really want to clear the debug log of this web service?' =>
            'Да ли стварно желите да очистите дневник корекција овог мрежног сервиса?',
        'Request List' => 'Листа захтева',
        'Time' => 'Време',
        'Remote IP' => 'Удаљена "IP" адреса',
        'Loading' => 'Учитавам...',
        'Select a single request to see its details.' => 'Изаберите један захтев да би видели његове детаље.',
        'Filter by type' => 'Филтер по типу',
        'Filter from' => 'Филтер од',
        'Filter to' => 'Филтер до',
        'Filter by remote IP' => 'Филтер по удаљеној IP адреси',
        'Refresh' => 'Освежавање',
        'Request Details' => 'Детаљи захтева',
        'An error occurred during communication.' => 'Грешка током комуникације.',
        'Show or hide the content' => 'Покажи или сакри садржај',
        'Clear debug log' => 'Очисти дневник корекција',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => '',
        'Change Invoker %s of Web Service %s' => '',
        'Add new invoker' => '',
        'Change invoker %s' => '',
        'Do you really want to delete this invoker?' => '',
        'All configuration data will be lost.' => 'Сви конфигурациони подаци ће бити изгубљени.',
        'Invoker Details' => '',
        'The name is typically used to call up an operation of a remote web service.' =>
            'Име се обично користи за покретање операције удаљеног веб сервиса.',
        'Please provide a unique name for this web service invoker.' => '',
        'The name you entered already exists.' => 'Име које сте унели већ постоји.',
        'Invoker backend' => '',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            '',
        'Mapping for outgoing request data' => 'Мапирање за излазне податке захтева',
        'Configure' => 'Подеси',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Mapping for incoming response data' => 'Мапирање за улазне податке одговора',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            '',
        'Event Triggers' => 'Окидачи догађаја',
        'Asynchronous' => 'Асинхроно',
        'Delete this event' => 'Обриши овај догађај',
        'This invoker will be triggered by the configured events.' => '',
        'Do you really want to delete this event trigger?' => 'Да ли стварно желите да обришете овај окидач догађаја?',
        'Add Event Trigger' => 'Додај окидач догађаја',
        'To add a new event select the event object and event name and click on the "+" button' =>
            'За додавање новог догађаја изаберите објект догађаја и име догађаја па кликните на "+" дугме',
        'Asynchronous event triggers are handled by the OTRS Scheduler in background (recommended).' =>
            'Асинхроним окидачима догађаја управља "OTRS" диспечер у позадини (препоручено).',
        'Synchronous event triggers would be processed directly during the web request.' =>
            'Синхрони окидачи догађаја биће обрађени директно током веб захтева.',
        'Save and continue' => 'Сачувај и настави',
        'Save and finish' => 'Сачувај и заврши',
        'Delete this Invoker' => '',
        'Delete this Event Trigger' => 'Обриши овај окидач догађаја',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => 'Општи интерфејс једноставног мапирања за веб сервис %s',
        'Go back to' => 'Иди назад на',
        'Mapping Simple' => 'Једноставно мапирање',
        'Default rule for unmapped keys' => 'Подразумевано правило за немапиране тастере',
        'This rule will apply for all keys with no mapping rule.' => 'Ово правило ће се примењивати за све тастере без правила мапирања.',
        'Default rule for unmapped values' => 'Подразумевано правило за немапиране вредности',
        'This rule will apply for all values with no mapping rule.' => 'Ово правило ће се примењивати за све вредности без правила мапирања.',
        'New key map' => '',
        'Add key mapping' => '',
        'Mapping for Key ' => '',
        'Remove key mapping' => 'Уклони мапирање тастера',
        'Key mapping' => '',
        'Map key' => 'Мапирај тастер',
        'matching the' => '',
        'to new key' => 'на нови тастер',
        'Value mapping' => '',
        'Map value' => 'Мапирај вредност',
        'to new value' => 'на нову вредност',
        'Remove value mapping' => 'Уклони мапирање вредности',
        'New value map' => '',
        'Add value mapping' => '',
        'Do you really want to delete this key mapping?' => '',
        'Delete this Key Mapping' => 'Обриши мапирање за овај тастер',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => 'Додај нову операцију веб сервису %s',
        'Change Operation %s of Web Service %s' => 'Промени операцију %s из веб сервиса %s',
        'Add new operation' => 'Додај нову операцију',
        'Change operation %s' => 'Промени операцију %s',
        'Do you really want to delete this operation?' => 'Да ли стварно желите да обришете ову операцију?',
        'Operation Details' => 'Детаљи операције',
        'The name is typically used to call up this web service operation from a remote system.' =>
            'Име се обично користи за позивање операције веб сервиса из удаљеног система.',
        'Please provide a unique name for this web service.' => 'Молимо да обезбедите јединствено име за овај веб сервис.',
        'Mapping for incoming request data' => 'Мапирање за долазне податке захтева',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            'Подаци захтева ће бити обрађени кроз мапирање, ради трансформације у облик који "OTRS" очекује.',
        'Operation backend' => '',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            '',
        'Mapping for outgoing response data' => 'Мапирање за излазне податке одговора',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            'Подаци одговора ће бити обрађени кроз ово мапирање, ради трансформације у облик који удаљени систем очекује.',
        'Delete this Operation' => 'Обриши ову операцију',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => 'Општи интерфејс транспорта "HTTP::SOAP" за веб сервис %s',
        'Network transport' => 'Мрежни транспорт',
        'Properties' => 'Својства',
        'Endpoint' => 'Крајња тачка',
        'URI to indicate a specific location for accessing a service.' =>
            '"URI" показивач специфичне локације за приступ сервису.',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => 'на пример "http://local.otrs.com:8000/Webservice/Example"',
        'Namespace' => 'Простор имена',
        'URI to give SOAP methods a context, reducing ambiguities.' => '"URI" који даје "SOAP" методама контекст, смањује двосмислености.',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            'на пример "urn:otrs-com:soap:functions" или "http://www.otrs.com/GenericInterface/actions"',
        'Maximum message length' => 'Највећа дужина поруке',
        'This field should be an integer number.' => 'Ово поље треба да буде цео број.',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            'Овде можете унети максималну величину (у бајтима) "SOAP" порука које ће "OTRS" да обради.',
        'Encoding' => 'Кодни распоред',
        'The character encoding for the SOAP message contents.' => 'Кодни распоред знакова за садржај "SOAP" поруке.',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => 'на пример utf-8, latin1, iso-8859-1, cp1250, ...',
        'SOAPAction' => '"SOAP" акција',
        'Set to "Yes" to send a filled SOAPAction header.' => 'Изабери "Да" за слање попуњеног заглавља "SOAP" акције.',
        'Set to "No" to send an empty SOAPAction header.' => 'Изабери "Не" за слање празног заглавља "SOAP" акције.',
        'SOAPAction separator' => 'Сепаратор "SOAP" акције',
        'Character to use as separator between name space and SOAP method.' =>
            'Знак који ће се користити као сепаратор између простора имена и "SOAP" методе.',
        'Usually .Net web services uses a "/" as separator.' => 'Обично ".Net" веб сервиси користе "/" као сепаратор.',
        'Authentication' => 'Аутентификација',
        'The authentication mechanism to access the remote system.' => 'Механизам аутентификације за пристум удаљеном систему.',
        'A "-" value means no authentication.' => 'Вредност "-" значи нема аутентификације.',
        'The user name to be used to access the remote system.' => 'Корисничко име које ће бити коришћено за приступ удаљеном систему.',
        'The password for the privileged user.' => 'Лозинка за привилегованог корисника',
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
        'GenericInterface Web Service Management' => 'Управљање оштим интерфејсом веб сервиса',
        'Add web service' => 'Додај веб сервис',
        'Clone web service' => 'Клонирај веб сервис',
        'The name must be unique.' => 'Име мора бити јединствено.',
        'Clone' => 'Клонирај',
        'Export web service' => 'Извези веб сервис',
        'Import web service' => 'Увези веб сервис',
        'Configuration File' => 'Конфигурациона датотека',
        'The file must be a valid web service configuration YAML file.' =>
            'Датотека мора да буде важећа "YAML" конфигурациона датотека веб сервиса.',
        'Import' => 'Увоз',
        'Configuration history' => 'Историјат конфигурисања',
        'Delete web service' => 'Обриши веб сервис',
        'Do you really want to delete this web service?' => 'Да ли стварно желите да обришете овај веб сервис?',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            'Након снимања конфигурације бићете поново преусмерени на екран за уређивање.',
        'If you want to return to overview please click the "Go to overview" button.' =>
            'Ако желите да се вратите на преглед, молимо да кликнете на дугме "Иди на преглед".',
        'Web Service List' => 'Листа веб сервиса',
        'Remote system' => 'Удаљени систем',
        'Provider transport' => 'Транспорт снабдевача',
        'Requester transport' => 'Транспорт потражиоца',
        'Details' => 'Детаљи',
        'Debug threshold' => '',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            '',
        'In requester mode, OTRS uses web services of remote systems.' =>
            '',
        'Operations are individual system functions which remote systems can request.' =>
            'Операције су индивидуалне системске функције које удаљени систем може да захтева.',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            '',
        'Controller' => 'Контролер',
        'Inbound mapping' => 'Улазно мапирање',
        'Outbound mapping' => 'Излазно мапирање',
        'Delete this action' => 'Обриши ову акцију',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            '',
        'Delete webservice' => 'Обриши веб сервис',
        'Delete operation' => 'Обриши операцију',
        'Delete invoker' => '',
        'Clone webservice' => 'Клонирај веб сервис',
        'Import webservice' => 'Увези веб сервис',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => 'Историјат конфигурације општег интерфејса за веб сервис %s',
        'Go back to Web Service' => 'Вратите се на веб сервис',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            'Овде можете видети старије верзије актуелне конфигурације веб сервиса, направити извоз или је обновити.',
        'Configuration History List' => 'Листа - историјат конфигурације',
        'Version' => 'Верзија',
        'Create time' => 'Време креирања',
        'Select a single configuration version to see its details.' => 'Изабери само једну конфигурациону верзију за преглед њених детаља.',
        'Export web service configuration' => 'Извези конфигурацију веб сервиса',
        'Restore web service configuration' => 'Обнови конфигурацију веб сервиса',
        'Do you really want to restore this version of the web service configuration?' =>
            'Да ли стварно желите да вратите ову верзију конфигурације веб сервиса?',
        'Your current web service configuration will be overwritten.' => 'Актуелна конфигурација веб сервиса биће преписана.',
        'Show or hide the content.' => 'Покажи или сакри садржај.',
        'Restore' => 'Обнови',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            'УПОЗОРЕЊЕ: Ако промените име групе \'admin\' пре адекватног подешавања у системској конфигурацији, изгубићете приступ административном панелу! Уколико се то деси, вратите име групи у "admin" помоћу "SQL" команде.',
        'Group Management' => 'Управљање групама',
        'Add group' => 'Додај групу',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            '"admin" група служи за приступ администрационом простору а "stats" група простору статистике.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            'Направи нове групе за руковање правима приступа разним групама оператера (нпр одељење набавке, техничка подршка, продаја, ...).',
        'It\'s useful for ASP solutions. ' => 'Корисно за АСП решења.',
        'Add Group' => 'Додај групу',
        'Edit Group' => 'Уреди групу',

        # Template: AdminLog
        'System Log' => 'Системски дневник',
        'Here you will find log information about your system.' => 'Овде ћете наћи забележене информације о догађајима у систему.',
        'Hide this message' => 'Сакри ову поруку',
        'Recent Log Entries' => 'Свежи уноси у дневник',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Управљање Имејл налозима',
        'Add mail account' => 'Додај имејл налог',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'Све долазне поруке са једног налога ће бити усмерене у изабрани ред!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            'Ако је ваш налог од поверења, користиће се постојећа "X-OTRS" заглавља! "PostMaster" филтери се користе увек.',
        'Host' => 'Домаћин',
        'Delete account' => 'Обриши налог',
        'Fetch mail' => 'Преузми пошту',
        'Add Mail Account' => 'Додај Имејл налог',
        'Example: mail.example.com' => 'Пример: mail.example.com',
        'IMAP Folder' => '',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            '',
        'Trusted' => 'Од поверења',
        'Dispatching' => 'Отпрема',
        'Edit Mail Account' => 'Уреди Имејл налог',

        # Template: AdminNavigationBar
        'Admin' => 'Админ',
        'Agent Management' => 'Управљање запосленима',
        'Queue Settings' => 'Подешавање редова',
        'Ticket Settings' => 'Подешавање тикета',
        'System Administration' => 'Администрација система',

        # Template: AdminNotification
        'Notification Management' => 'Управљање обавештењима',
        'Select a different language' => 'Изабери други језик',
        'Filter for Notification' => 'Филтер за обавештење',
        'Notifications are sent to an agent or a customer.' => 'Обавештење послато запосленом или кориснику.',
        'Notification' => 'Обавештење',
        'Edit Notification' => 'Уреди обавештење',
        'e. g.' => 'нпр.',
        'Options of the current customer data' => 'Опције података о актуелном кориснику',

        # Template: AdminNotificationEvent
        'Add notification' => 'Додај обавештење',
        'Delete this notification' => 'Обриши ово обавештење',
        'Add Notification' => 'Додај Обавештење',
        'Recipient groups' => 'Групе примаоци',
        'Recipient agents' => 'Запослени примаоци',
        'Recipient roles' => 'Улоге прималаца',
        'Recipient email addresses' => 'Имејл адресе прималаца',
        'Article type' => 'Тип чланка',
        'Only for ArticleCreate event' => 'Само за догађај креирања чланка',
        'Article sender type' => '',
        'Subject match' => 'Поклапање предмета',
        'Body match' => 'Поклапање садржаја',
        'Include attachments to notification' => 'Прикључи прилоге уз обавштење',
        'Notification article type' => 'Тип чланка обавештења',
        'Only for notifications to specified email addresses' => 'Само за обавештења за прецизиране имејл адресе',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            'Да видите првих 20 слова предмета (последњег чланка оператера).',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            'Да видите првих 5 линија поруке (последњег чланка оператера).',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            'Да видите првих 20 слова предмета (последњег чланка оператера)',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            'Да видите првих 5 линија поруке (последњег чланка оператера).',

        # Template: AdminPGP
        'PGP Management' => 'Управљање "PGP" кључевима',
        'Use this feature if you want to work with PGP keys.' => 'Употреби ову могућност за рад са "PGP"-кључевима.',
        'Add PGP key' => 'Додај "PGP"-кључ',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'На овај начин можете директно уређивати комплет књучева подешен у системским опцијама.',
        'Introduction to PGP' => 'Упознавање са "PGP"',
        'Result' => 'Резултат',
        'Identifier' => 'Идентификатор',
        'Bit' => 'Бит',
        'Fingerprint' => 'Отисак',
        'Expires' => 'Истиче',
        'Delete this key' => 'Обриши овај кључ',
        'Add PGP Key' => 'Додај "PGP"-кључ',
        'PGP key' => '"PGP"-кључ',

        # Template: AdminPackageManager
        'Package Manager' => 'Управљање пакетима',
        'Uninstall package' => 'Деинсталирај пакет',
        'Do you really want to uninstall this package?' => 'Да ли стварно желите да деинсталирате овај пакет?',
        'Reinstall package' => 'Инсталирај пакет поново',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            'Да ли стварно желите да поново инсталирате овај пакет? Све ручне промене ће бити изгубљене.',
        'Continue' => 'Настави',
        'Install' => 'Инсталирај',
        'Install Package' => 'Инсталирај пакет',
        'Update repository information' => 'Ажурирај информације о спремишту',
        'Did not find a required feature? OTRS Group provides their subscription customers with exclusive Add-Ons:' =>
            'Нисте пронашли потребну функцију? "OTRS Group" за своје претплаћене кориснике има ексклузивне додатке:',
        'Online Repository' => 'Мрежно спремиште',
        'Vendor' => 'Продавац',
        'Module documentation' => 'Документација кодула',
        'Upgrade' => 'Ажурирање',
        'Local Repository' => 'Локално спремиште',
        'Uninstall' => 'Деинсталирај',
        'Reinstall' => 'Инсталирај поново',
        'Feature Add-Ons' => '',
        'Download package' => 'Преузми пакет',
        'Rebuild package' => 'Обнови пакет(rebuild)',
        'Metadata' => 'Мета-подаци',
        'Change Log' => 'Промени дневник',
        'Date' => 'Датум',
        'List of Files' => 'Списак датотека',
        'Permission' => 'Дозвола',
        'Download' => 'Преузимање',
        'Download file from package!' => 'Преузми датотеку из пакета!',
        'Required' => 'Обавезно',
        'PrimaryKey' => 'Примарни кључ',
        'AutoIncrement' => 'АутоУвећање',
        'SQL' => '"SQL"',
        'File differences for file %s' => 'Разлике за датотеку %s',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Дневник преформанси',
        'This feature is enabled!' => 'Ова функција је активна!',
        'Just use this feature if you want to log each request.' => 'Активирати ову могућност само ако желите да забележите сваки захтев..',
        'Activating this feature might affect your system performance!' =>
            'Активирање ове функције може утицати на перформансе система.',
        'Disable it here!' => 'Искључите је овде!',
        'Logfile too large!' => 'Дневник је превелик!',
        'The logfile is too large, you need to reset it' => 'Датотека дневника је превелика, треба да је ресетујете',
        'Overview' => 'Преглед',
        'Range' => 'Опсег',
        'Interface' => 'Интерфејс',
        'Requests' => 'Захтеви',
        'Min Response' => 'Мин време реакције',
        'Max Response' => 'Макс време реакције',
        'Average Response' => 'Просечно време реакције',
        'Period' => 'Период',
        'Min' => 'Мин',
        'Max' => 'Макс',
        'Average' => 'Просек',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Управљање "PostMaster" Филтерима',
        'Add filter' => 'Додај филтер',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            'Ради отпреме или филтрирања долазних мејлова на основу заглавља. Поклапање помоћу Регуларних Израза је такође могуће.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'Уколико желите поклапање само са имејл адресом, користите EMAILADDRESS:info@example.com у "Од", "За" или "Кк".',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            'Уколико користите регуларне изразе, такође можете користити и упатеру вредност у () као (***) у \'Set\' action.',
        'Delete this filter' => 'Обриши овај филтер',
        'Add PostMaster Filter' => 'Додај "PostMaster" филтер',
        'Edit PostMaster Filter' => 'Уреди "PostMaster" филтер',
        'Filter name' => 'Назив филтера',
        'The name is required.' => 'Име је обавезно.',
        'Stop after match' => 'Заустави после поклапања',
        'Filter Condition' => 'Услов филтрирања',
        'The field needs to be a valid regular expression or a literal word.' =>
            'Ово поље треба да буде важећи регуларни израз или дословно реч.',
        'Set Email Headers' => 'Подеси заглавља имејла',
        'The field needs to be a literal word.' => 'Ово поље треба да буде дословно реч.',

        # Template: AdminPriority
        'Priority Management' => 'Управљање приоритетима',
        'Add priority' => 'Додај приоритет',
        'Add Priority' => 'Додај приоритет',
        'Edit Priority' => 'Уреди приоритет',

        # Template: AdminProcessManagement
        'Process Management' => '',
        'Filter for Processes' => '',
        'Filter' => 'Филтер',
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
        'Cancel & close window' => 'Поништи & затвори прозор',
        'Go Back' => '',
        'Please note, that changing this activity will affect the following processes' =>
            '',
        'Activity' => '',
        'Activity Name' => '',
        'Activity Dialogs' => '',
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
        'The selected permission does not exists.' => '',
        'Required Lock' => '',
        'The selected required lock does not exists.' => '',
        'Submit Advice Text' => '',
        'Submit Button Text' => '',
        'Fields' => '',
        'Filter available Fields' => '',
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
        'Filter available Transition Actions' => '',
        'Available Transition Actions' => '',
        'Create New Transition Action' => '',
        'Assigned Transition Actions' => '',

        # Template: AdminProcessManagementPopupResponse

        # Template: AdminProcessManagementProcessAccordion
        'Filter Activities...' => '',
        'Create New Activity' => '',
        'Filter Activity Dialogs...' => '',
        'Filter Transitions...' => '',
        'Create New Transition' => '',
        'Filter Transition Actions...' => '',

        # Template: AdminProcessManagementProcessEdit
        'Edit Process' => '',
        'Back To Overview' => '',
        'Delete Process' => '',
        'Delete Inactive Process' => '',
        'Available Process Elements' => '',
        'The Elements listed above in this sidebar can be moved to the canvas area on the right by using drag\'n\'drop.' =>
            '',
        'Activities' => '',
        'You can place Activities on the canvas area to assign this Activity to the Process.' =>
            '',
        'To assign an Activity Dialog to an Activity drop the Activity Dialog element from this sidebar over the Activity placed in the canvas area.' =>
            '',
        'Transitions' => '',
        'You can start a connection between to Activities by dropping the Transition element over the Start Activity of the connection. After that you can move the loose end of the arrow to the End Activity.' =>
            '',
        'Actions can be assigned to a Transition by dropping the Action Element onto the arrow of a Transition.' =>
            '',
        'Edit Process Information' => '',
        'Process Name' => '',
        'The selected state does not exists.' => '',
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
        'Here is the description of what this screen is all about.' => '',

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
        'Manage Queues' => 'Управљање редовима',
        'Add queue' => 'Додај ред',
        'Add Queue' => 'Додај Ред',
        'Edit Queue' => 'Уреди Ред',
        'Sub-queue of' => 'Под-ред од',
        'Unlock timeout' => 'Време до откључавања',
        '0 = no unlock' => '0 = нема откључавања',
        'Only business hours are counted.' => 'Мери се само радно време.',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            'Ако оператер закључа тикет и не откључа га пре истека времена откључавања, тикет ће се откључати и постати доступан другим запосленим.',
        'Notify by' => 'Обавештен од',
        '0 = no escalation' => '0 = нема ескалације',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            'Ако контакт са корисником, било спољашњи имејл или телефон, није додат на нови тикет пре истицања дефинисаног времена, тикет ће ескалирати.',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            'Ако постоји додат чланак, као нпр наставак путем имејла или корисничког портала, време ажурирања ескалације се ресетује. Ако не остоје контакт подаци о кориснику, било имејл или телефон додати на тикет пре истицања овде дефинисаног времена, тикет ескалира.',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            'Ако се тикет не затвори пре овде дефинисаног времена, тикет ескалира.',
        'Follow up Option' => 'Опције наставка',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            'Дефинишите да ли наставак на затворени тикет поново отвара тикет или отвара нови.',
        'Ticket lock after a follow up' => 'Закључавање тикета после наставка',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            'Ако је тикет затворен, а корисник пошаље наставак, тикет ће бити закључан на старог власника.',
        'System address' => 'Системска адреса',
        'Will be the sender address of this queue for email answers.' => 'Биће адреса пошиљаоца за имејл одговоре из овог реда.',
        'Default sign key' => 'Подразумевани кључ потписа',
        'The salutation for email answers.' => 'Поздрав за имејл одговоре.',
        'The signature for email answers.' => 'Потпис за имејл одговоре.',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => 'Управљање везама Ред-Аутоматски одговор',
        'Filter for Queues' => 'Филтер за редове',
        'Filter for Auto Responses' => 'Филтер за Аутоматске одговоре',
        'Auto Responses' => 'Аутоматски одговори',
        'Change Auto Response Relations for Queue' => 'Промени везе са Аутоматским одговорима за Ред',
        'settings' => 'подешавања',

        # Template: AdminQueueResponses
        'Manage Response-Queue Relations' => 'Управљање везама Одговор-ред',
        'Filter for Responses' => 'Филтер за одговоре',
        'Responses' => 'Одговори',
        'Change Queue Relations for Response' => 'Промени везе са редовима за одговор',
        'Change Response Relations for Queue' => 'Промени везе са одговорима за ред',

        # Template: AdminResponse
        'Manage Responses' => 'Управљање одговорима',
        'Add response' => 'Додај одговор',
        'A response is a default text which helps your agents to write faster answers to customers.' =>
            '',
        'Don\'t forget to add new responses to queues.' => '',
        'Delete this entry' => 'Обриши овај унос',
        'Add Response' => 'Додај одговор',
        'Edit Response' => 'Уреди одговор',
        'The current ticket state is' => 'Тренутни стаус тикета је',
        'Your email address is' => 'Ваша имејл адреса је',

        # Template: AdminResponseAttachment
        'Manage Responses <-> Attachments Relations' => 'Управљање везама Одговори <-> Прилози',
        'Filter for Attachments' => 'Филтер за прилоге',
        'Change Response Relations for Attachment' => 'Промени везе са одговорима за прилог',
        'Change Attachment Relations for Response' => 'Промени везе са прилозима за одговор',
        'Toggle active for all' => 'Промени стање активности за све',
        'Link %s to selected %s' => 'повежи %s са изабраним %s',

        # Template: AdminRole
        'Role Management' => 'Управљање улогама',
        'Add role' => 'Додај улогу',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'Направи улогу и додај групе у њу. Онда додај улогу запосленима.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            'Нема дефинисаних улога. употребите дугме за додавање за креирање нове улоге.',
        'Add Role' => 'Додај улогу',
        'Edit Role' => 'Уреди улогу',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => 'Управљање везама Улога-Група',
        'Filter for Roles' => 'Филтер за улоге',
        'Roles' => 'Улоге',
        'Select the role:group permissions.' => 'Изабери дозволе за улогу:групу',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            'Уколико ништа није изабрано, онда нема дозвола у овој групи (тикети неће бити доступни за ову улогу).',
        'Change Role Relations for Group' => 'Промени везе са улогама за групу',
        'Change Group Relations for Role' => 'Промени везе са групама за улогу',
        'Toggle %s permission for all' => 'Промени %s дозволе за све',
        'move_into' => 'премести у',
        'Permissions to move tickets into this group/queue.' => 'Право да се тикет премести у ову групу/ред.',
        'create' => 'креирање',
        'Permissions to create tickets in this group/queue.' => 'Право да се тикет креира у овој групи/реду.',
        'priority' => 'приоритет',
        'Permissions to change the ticket priority in this group/queue.' =>
            'Право да се мења приоритет тикета у овој групи/реду.',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => 'Управљање везама Запослени-Улога',
        'Filter for Agents' => 'Филтер за оператере',
        'Agents' => 'Запослени',
        'Manage Role-Agent Relations' => 'Управљање везама Запослени-Улога',
        'Change Role Relations for Agent' => 'Промени везе са улогама за оператера',
        'Change Agent Relations for Role' => 'Промени везе са запосленима за улогу',

        # Template: AdminSLA
        'SLA Management' => 'Управљање "SLA"',
        'Add SLA' => 'Додај "SLA"',
        'Edit SLA' => 'Уреди "SLA"',
        'Please write only numbers!' => 'Молимо пишите само бројеве!',

        # Template: AdminSMIME
        'S/MIME Management' => '"S/MIME" управљање',
        'Add certificate' => 'Додај сертификат',
        'Add private key' => 'Додај приватни кључ',
        'Filter for certificates' => 'Филтер за сертификате',
        'Filter for SMIME certs' => 'Филтер за "SMIME" сертификате',
        'Here you can add relations to your private certificate, these will be embedded to the SMIME signature every time you use this certificate to sign an email.' =>
            'Овде можете додати везе до вашек приватног сертификата, који ће бити укључени у "SMIME" потпис кад год га употребите за потписвање имејла.',
        'See also' => 'Погледај још',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'На овај начин можете директно да уређујете цертификате и приватне кључеве у систему датотека.',
        'Hash' => 'Hash',
        'Create' => 'Отвори',
        'Handle related certificates' => 'Руковање повезаним сертификатима',
        'Read certificate' => '',
        'Delete this certificate' => 'Обриши овај сертификат',
        'Add Certificate' => 'Додај сертификат',
        'Add Private Key' => 'Додај приватни кључ',
        'Secret' => 'Тајна',
        'Related Certificates for' => 'Повезани сертификати за',
        'Delete this relation' => 'Обриши ову везу',
        'Available Certificates' => 'Расположиви сертификати',
        'Relate this certificate' => 'Повежи овај сертификат',

        # Template: AdminSMIMECertRead
        'SMIME Certificate' => '',
        'Close window' => 'Затвори прозор',

        # Template: AdminSalutation
        'Salutation Management' => 'Управљање поздравима',
        'Add salutation' => 'Додај поздрав',
        'Add Salutation' => 'Додај поздрав',
        'Edit Salutation' => 'Уреди поздрав',
        'Example salutation' => 'Пример поздрава',

        # Template: AdminScheduler
        'This option will force Scheduler to start even if the process is still registered in the database' =>
            'Ова опција ће принудити диспечер да се покрене чак и ако је процес још увек регистрован у бази',
        'Start scheduler' => 'Покрени диспечер процес',
        'Scheduler could not be started. Check if scheduler is not running and try it again with Force Start option' =>
            'Диспечер не може бити покренут. Проверите да ли диспечер већ ради и покушајте поново помоћу опције за принудно покретање',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => 'Потребно је да сигуран мод буде укључен!',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            'Сигуран мод ће (уобучајено) бити подешен након иницијалне инсталације.',
        'Secure mode must be disabled in order to reinstall using the web-installer.' =>
            'Сигуран мод мора бити искључен ради реинсталације преко "web" процедуре.',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            'Уколико сигуран мод није активиран, покрените га кроз системску конфигурацију јер је ваша апликација већ покренута.',

        # Template: AdminSelectBox
        'SQL Box' => '"SQL" Box',
        'Here you can enter SQL to send it directly to the application database.' =>
            'Овде можете унети "SQL" команде и послати их директно апликационој бази података.',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            'Постоји грешка у синтакси вашег "SQL" упита. Молимо проверите.',
        'There is at least one parameter missing for the binding. Please check it.' =>
            'Најмање један параметар недостаје за повезивање. Молимо проверите.',
        'Result format' => 'Формат резултата',
        'Run Query' => 'Покрени упит',

        # Template: AdminService
        'Service Management' => 'Управљање сервисима',
        'Add service' => 'Додај сервис',
        'Add Service' => 'Додај сервис',
        'Edit Service' => 'Уреди сервис',
        'Sub-service of' => 'Суб-сервис од',

        # Template: AdminSession
        'Session Management' => 'Управљање сесијама',
        'All sessions' => 'Све сесије',
        'Agent sessions' => 'Сесије оператера',
        'Customer sessions' => 'Сесије корисника',
        'Unique agents' => 'Јединсвени заполени',
        'Unique customers' => 'Јединствени корисници',
        'Kill all sessions' => 'Угаси све сесије',
        'Kill this session' => 'Угаси ову сесију',
        'Session' => 'Сесија',
        'Kill' => 'Угаси',
        'Detail View for SessionID' => 'Детаљни преглед за ИД сесије',

        # Template: AdminSignature
        'Signature Management' => 'Управљање потписима',
        'Add signature' => 'Додај потпис',
        'Add Signature' => 'Додај потпис',
        'Edit Signature' => 'Уреди потпис',
        'Example signature' => 'Пример потписа',

        # Template: AdminState
        'State Management' => 'Управљање статусима',
        'Add state' => 'Додај статус',
        'Please also update the states in SysConfig where needed.' => 'Молимо да ажурирате стаусе и у "SysConfig" где је то потребно.',
        'Add State' => 'Додај статус',
        'Edit State' => 'Уреди статус',
        'State type' => 'Тип статуса',

        # Template: AdminSysConfig
        'SysConfig' => 'Системска конфигурација',
        'Navigate by searching in %s settings' => 'Навигација кроз претраживање у %s подешавањима',
        'Navigate by selecting config groups' => 'Навигација избором конфигурационих група',
        'Download all system config changes' => 'Преузми све промене системских подешавања',
        'Export settings' => 'Извези подешавања',
        'Load SysConfig settings from file' => 'Учитај системска подешавања из датотеке',
        'Import settings' => 'Увези подешавања',
        'Import Settings' => 'Увези Подешавања',
        'Please enter a search term to look for settings.' => 'Молимо унесите ',
        'Subgroup' => 'Подгрупа',
        'Elements' => 'Елементи',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => 'Уреди конфигурациона подешавања',
        'This config item is only available in a higher config level!' =>
            'Ова конфигурациона опција је доступна само на вишем конфигурационом нивоу',
        'Reset this setting' => 'Поништи ово подешавање',
        'Error: this file could not be found.' => 'Грешка: не може се пронаћи ова датотека.',
        'Error: this directory could not be found.' => 'Грешка: не може се пронаћи овај директоријум.',
        'Error: an invalid value was entered.' => 'Грешка: унета је погрешна вредност.',
        'Content' => 'Садржај',
        'Remove this entry' => 'Уклони овај унос',
        'Add entry' => 'Додај унос',
        'Remove entry' => 'Уклони унос',
        'Add new entry' => 'Додај нов унос',
        'Create new entry' => 'Направи нов унос',
        'New group' => 'Нова група',
        'Group ro' => 'Група "ro"',
        'Readonly group' => 'Група само за читање',
        'New group ro' => 'Нова "ro" група',
        'Loader' => '"Loader"',
        'File to load for this frontend module' => 'Датотека коју треба учитати за овај модул',
        'New Loader File' => 'Нова "Loader" датотека',
        'NavBarName' => 'Назив навигационе траке',
        'NavBar' => 'Навигациона трака',
        'LinkOption' => 'Опције везе',
        'Block' => 'Блок',
        'AccessKey' => 'Кључ за приступ',
        'Add NavBar entry' => 'Додај ставку у навигациону траку',
        'Year' => 'година',
        'Month' => 'месец',
        'Day' => 'дан',
        'Invalid year' => 'Погрешна година',
        'Invalid month' => 'Погрешан месец',
        'Invalid day' => 'Погрешан дан',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'Управљање системским имејлом',
        'Add system address' => 'Додај системску адресу',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            'Све долазне поруке са овом адресом у пољу "За" или "Кк" биће отпремљени у изабрани ред.',
        'Email address' => 'имејл адреса',
        'Display name' => 'Прикажи име',
        'Add System Email Address' => 'Додај системску имејл адресу',
        'Edit System Email Address' => 'Уреди системску имејл адресу',
        'The display name and email address will be shown on mail you send.' =>
            'Приказано име и имејл адреса ће бити приказани на поруци коју сте послали.',

        # Template: AdminType
        'Type Management' => 'Управљање типовима',
        'Add ticket type' => 'Додај тип тикета',
        'Add Type' => 'Додај тип',
        'Edit Type' => 'Уреди тип',

        # Template: AdminUser
        'Add agent' => 'Додај оператера',
        'Agents will be needed to handle tickets.' => 'Потребни су оператери за обраду тикета.',
        'Don\'t forget to add a new agent to groups and/or roles!' => 'Не заборавите да додате новог оператера у групе и/или улоге!',
        'Please enter a search term to look for agents.' => 'Молимо унесите фразу за претрагу ради налажења оператера.',
        'Last login' => 'Претходна пријава',
        'Switch to agent' => 'Пређи на оператера',
        'Add Agent' => 'Додај Оператера',
        'Edit Agent' => 'уреди Оператера',
        'Firstname' => 'Име',
        'Lastname' => 'Презиме',
        'Password is required.' => 'Лозинка је обавезна.',
        'Start' => 'Старт',
        'End' => 'Крај',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => 'Управљање везама Запослени-Група',
        'Change Group Relations for Agent' => 'Промени везе са групама за оператера',
        'Change Agent Relations for Group' => 'Промени везе са запослнима за групу',
        'note' => 'напомена',
        'Permissions to add notes to tickets in this group/queue.' => 'Дозвола за додавање напомена на тикете у овој групи/реду.',
        'owner' => 'Власник',
        'Permissions to change the owner of tickets in this group/queue.' =>
            'Дозволе за промену власника тикета у овој групи/реду.',

        # Template: AgentBook
        'Address Book' => 'Адресар',
        'Search for a customer' => 'Тражи корисника',
        'Add email address %s to the To field' => 'Додај имејл адресу %s у поље "За:"',
        'Add email address %s to the Cc field' => 'Додај имејл адресу %s у поље "Кк:"',
        'Add email address %s to the Bcc field' => 'Додај имејл адресу %s у поље "СКк:"',
        'Apply' => 'Примени',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => '',

        # Template: AgentCustomerInformationCenterSearch
        'Customer ID' => 'ИД корисника',
        'Customer User' => 'Корисник',

        # Template: AgentCustomerSearch
        'Search Customer' => 'Тражи корисника',
        'Duplicated entry' => 'Двоструки унос',
        'This address already exists on the address list.' => 'Ова адреса већ постоји у листи',
        'It is going to be deleted from the field, please try again.' => '',

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => 'Командна табла',

        # Template: AgentDashboardCalendarOverview
        'in' => 'у',

        # Template: AgentDashboardCustomerCompanyInformation
        'URL' => '"URL"',

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => '',

        # Template: AgentDashboardCustomerUserList
        'Customer information' => '',
        '%s open ticket(s) of %s' => '',
        '%s closed ticket(s) of %s' => '',
        'New phone ticket for %s' => '',
        'New phone ticket' => 'Нови телефонски тикет',
        'New email ticket for %s' => '',
        'New email ticket' => 'Нови имејл тикет',

        # Template: AgentDashboardIFrame

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s је доступно!',
        'Please update now.' => 'Молимо ажурирајте сада.',
        'Release Note' => 'Обавештење о верзији',
        'Level' => 'Ниво',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Послано пре %s.',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => 'Моји закључани тикети',
        'My watched tickets' => 'Моји праћени тикети',
        'My responsibilities' => 'Одговоран сам за',
        'Tickets in My Queues' => 'Тикети у мојим редовима',

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline
        'out of office' => '',

        # Template: AgentDashboardUserOutOfOffice
        'until' => '',

        # Template: AgentHTMLReferenceForms

        # Template: AgentHTMLReferenceOverview

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => 'Тикет је закључан.',
        'Undo & close window' => 'Одустани & затвори прозор',

        # Template: AgentInfo
        'Info' => 'Инфо',
        'To accept some news, a license or some changes.' => 'Да би прихватили неке вести, "..."',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Повежи објект: %s',
        'go to link delete screen' => 'иди на екран за брисање везе',
        'Select Target Object' => 'Изабери циљни објекат',
        'Link Object' => 'Повежи објекат',
        'with' => 'са',
        'Unlink Object: %s' => 'Прекини везу са објектом: %s',
        'go to link add screen' => 'иди на прозор за додавање везе',

        # Template: AgentNavigationBar

        # Template: AgentPreferences
        'Edit your preferences' => 'Уреди личне поставке',

        # Template: AgentSpelling
        'Spell Checker' => 'Провера правописа',
        'spelling error(s)' => 'Правописне грешке',
        'Apply these changes' => 'Примени ове измене',

        # Template: AgentStatsDelete
        'Delete stat' => 'Обриши статистику',
        'Stat#' => 'Статистика Бр.',
        'Do you really want to delete this stat?' => 'Да ли стварно желите да обришете ову статистику?',

        # Template: AgentStatsEditRestrictions
        'Step %s' => 'Корак %s',
        'General Specifications' => 'Опште спецификације',
        'Select the element that will be used at the X-axis' => 'Изаберите елемент који ће бити употребљен на X-оси',
        'Select the elements for the value series' => 'Изаберите елементе за опсеге вредности',
        'Select the restrictions to characterize the stat' => 'Изаберите ограничења која карактеришу статистику',
        'Here you can make restrictions to your stat.' => 'Овде можете поставити ограничења на вашој статистици.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' =>
            'Ако уклоните ознаку са елемента "Фиксирано", оператер који прави статистику ће моћи да мења атрибуте конкретног елемента.',
        'Fixed' => 'Фиксирано',
        'Please select only one element or turn off the button \'Fixed\'.' =>
            'Молимо да изаберете само један елемент или искључите дугме "фиксирано"!',
        'Absolute Period' => 'Апсолутни период',
        'Between' => 'Између',
        'Relative Period' => 'Релативни период',
        'The last' => 'Последњи',
        'Finish' => 'Заврши',

        # Template: AgentStatsEditSpecification
        'Permissions' => 'Дозволе',
        'You can select one or more groups to define access for different agents.' =>
            'Ради дефинисања приступа за оператере можете изабрати једну или више група.',
        'Some result formats are disabled because at least one needed package is not installed.' =>
            'Неки формати резултата су искључени јер најмање један неопходни пакет није инсталиран.',
        'Please contact your administrator.' => 'Молимо, контактирајте вашег администратора.',
        'Graph size' => 'Величина графикона',
        'If you use a graph as output format you have to select at least one graph size.' =>
            'Ако користите графикон као излазни формат морате изабрати најмање једну величину графикона.',
        'Sum rows' => 'Збир редова',
        'Sum columns' => 'Збир колона',
        'Use cache' => 'Употреби кеш',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' =>
            'Већина стат. података се може кеширати. Ово ће убрзати приказ статистике.',
        'If set to invalid end users can not generate the stat.' => 'Ако је погрешно, крајњи корисници не могу генерисати статистику.',

        # Template: AgentStatsEditValueSeries
        'Here you can define the value series.' => 'Овде можете дефинисати опсеге вредности.',
        'You have the possibility to select one or two elements.' => 'Имате могућност да изаберете један или два елемента.',
        'Then you can select the attributes of elements.' => 'Онда можете изабрати атрибуте за елементе.',
        'Each attribute will be shown as single value series.' => 'Сваки атрибут ће бити приказан као појединачни опсег вредности.',
        'If you don\'t select any attribute all attributes of the element will be used if you generate a stat, as well as new attributes which were added since the last configuration.' =>
            'Ако не изаберете ни један атрибут, приликом генерисања статистике биће употребљени сви атрибути елемента као и атрибути додани након последње конфигурације.',
        'Scale' => 'Скалирање',
        'minimal' => 'минимално',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' =>
            'Молимо запамтите, да скала за опсеге вредности мода да буде већа од скале за X-Осу (нпр X-Оса => месец; Вредност опсега => година).',

        # Template: AgentStatsEditXaxis
        'Here you can define the x-axis. You can select one element via the radio button.' =>
            'Овде можете дефинисати x-осу. Можете изабрати један елемент од понуђених.',
        'maximal period' => 'максимални период',
        'minimal scale' => 'минимална скала',

        # Template: AgentStatsImport
        'Import Stat' => 'Увези статистику',
        'File is not a Stats config' => 'Ова датотека није конфигурација статистике',
        'No File selected' => 'Није изабрана ниједна датотека',

        # Template: AgentStatsOverview
        'Stats' => 'Статистика',

        # Template: AgentStatsPrint
        'Print' => 'Штампај',
        'No Element selected.' => 'Нема изабраних елемената.',

        # Template: AgentStatsView
        'Export config' => 'Извези конфигурацију',
        'With the input and select fields you can influence the format and contents of the statistic.' =>
            'Преко поља за унос и избор можете утицати на облик и сарджај статистике.',
        'Exactly what fields and formats you can influence is defined by the statistic administrator.' =>
            'На која поља и формате тачно можете да утичете је дефинисано од стране администратора статистике.',
        'Stat Details' => 'Детаљи стаистке',
        'Format' => 'Формат',
        'Graphsize' => 'Величина графикона',
        'Cache' => 'Кеш',
        'Exchange Axis' => 'Замени осе',
        'Configurable params of static stat' => 'Подесиви параметри статичке статистике',
        'No element selected.' => 'Није изабран ни један елемент.',
        'maximal period from' => 'максимални период од',
        'to' => 'до',

        # Template: AgentTicketActionCommon
        'Change Free Text of Ticket' => 'Промени "слободан" текст тикета',
        'Change Owner of Ticket' => 'Промени власника тикета',
        'Close Ticket' => 'Затвори тикет',
        'Add Note to Ticket' => 'Додај напомену уз тикет',
        'Set Pending' => 'Стави на чекање',
        'Change Priority of Ticket' => 'Промени приоритет тикета',
        'Change Responsible of Ticket' => 'Промени одговорног за тикет',
        'Service invalid.' => 'Неисправан сервис',
        'New Owner' => 'Нови власник',
        'Please set a new owner!' => 'Молимо одредите новог власника',
        'Previous Owner' => 'Претходни власник',
        'Inform Agent' => 'Обавеси оператера',
        'Optional' => 'Опциони',
        'Inform involved Agents' => 'Обавести релевантне оператере',
        'Spell check' => 'Провера правописа',
        'Note type' => 'Тип напомене',
        'Next state' => 'Следећи статус',
        'Pending date' => 'Чекање до',
        'Date invalid!' => 'Неисправан датум',

        # Template: AgentTicketActionPopupClose

        # Template: AgentTicketBounce
        'Bounce Ticket' => 'Одбаци тикет',
        'Bounce to' => 'Преусмери на',
        'You need a email address.' => 'Потребна вам је имејл адреса.',
        'Need a valid email address or don\'t use a local email address.' =>
            'Исправна имејл адреса је неопходна, али не користите локалну адресу!',
        'Next ticket state' => 'Наредни статус тикета',
        'Inform sender' => 'Обавести пошиљаоца',
        'Send mail!' => 'Пошаљи имејл!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Масовне акције на тикетима',
        'Send Email' => 'Пошаљи имејл',
        'Merge to' => 'Обједини са',
        'Invalid ticket identifier!' => 'Неисправан идентификатор тикета!',
        'Merge to oldest' => 'Обједини са најстаријом',
        'Link together' => 'Повежи заједно',
        'Link to parent' => 'Повежи са родитељем',
        'Unlock tickets' => 'Откључај тикете',

        # Template: AgentTicketClose

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Напиши одговор на тикет',
        'Remove Ticket Customer' => 'Уклони корисника са тикета',
        'Please remove this entry and enter a new one with the correct value.' =>
            'Молимо да уклоните овај унос и унесете нов са исправном вредношћу.',
        'Please include at least one recipient' => 'Молимо да укључите бар једног примаоца',
        'Remove Cc' => 'Уклони копију',
        'Remove Bcc' => '',
        'Address book' => 'Адресар',
        'Pending Date' => 'Датум чекања',
        'for pending* states' => 'за стања чекања',
        'Date Invalid!' => 'Неисправан датум!',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Промена корисника за тикет',
        'Customer Data' => 'Подаци о кориснику',
        'Customer user' => 'Корисник',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => 'Отвори нови имејл тикет',
        'From queue' => 'из Реда',
        'To customer' => 'За корисника',
        'Please include at least one customer for the ticket.' => 'Молимо да укључите бар једног корисника за тикет.',
        'Get all' => 'Узми све',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Forward ticket: %s - %s' => 'Проследи тикет: %s - %s',

        # Template: AgentTicketFreeText

        # Template: AgentTicketHistory
        'History of' => 'Историјат од',
        'History Content' => 'Садржај историјата',
        'Zoom view' => 'Детаљни преглед',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Спајање тикета',
        'You need to use a ticket number!' => 'Молимо вас да користите број тикета!',
        'A valid ticket number is required.' => 'Неопходан је исправан број тикета.',
        'Need a valid email address.' => 'Потребна је исправна имејл адреса.',

        # Template: AgentTicketMove
        'Move Ticket' => 'Премести тикет',
        'New Queue' => 'Нови Ред',

        # Template: AgentTicketNote

        # Template: AgentTicketOverviewMedium
        'Select all' => 'Изабери све',
        'No ticket data found.' => 'Нису нађени подаци о тикету',
        'First Response Time' => 'Време првог одговора',
        'Service Time' => 'Сервисно време',
        'Update Time' => 'Време ажурирања',
        'Solution Time' => 'Време решења',
        'Move ticket to a different queue' => 'Премести тикет у други ред',
        'Change queue' => 'Промени ред',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'Промени опције претраге',
        'Tickets per page' => 'Тикета по страни',

        # Template: AgentTicketOverviewPreview
        '","26' => '","26',

        # Template: AgentTicketOverviewSmall
        'Escalation in' => 'Ескалација у',
        'Locked' => 'Закључано',
        '","30' => '","30',

        # Template: AgentTicketOwner

        # Template: AgentTicketPending

        # Template: AgentTicketPhone
        'Create New Phone Ticket' => 'Отвори нови телефонски тикет',
        'From customer' => 'Од Корисника',
        'To queue' => 'У ред',

        # Template: AgentTicketPhoneCommon
        'Phone call' => 'Телефонски позив',

        # Template: AgentTicketPlain
        'Email Text Plain View' => 'Преглед неформатиране поруке',
        'Plain' => 'Неформатирано',
        'Download this email' => 'Преузми ову поруку',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Инфо о тикету',
        'Accounted time' => 'Обрачунато време',
        'Linked-Object' => 'Повезани објект',
        'by' => 'од',

        # Template: AgentTicketPriority

        # Template: AgentTicketProcess
        'Create New Process Ticket' => '',
        'Process' => '',

        # Template: AgentTicketProcessNavigationBar

        # Template: AgentTicketQueue

        # Template: AgentTicketResponsible

        # Template: AgentTicketSearch
        'Search template' => 'Шаблон претраге',
        'Create Template' => 'Направи шаблон',
        'Create New' => 'Направи нов',
        'Profile link' => 'Веза профила',
        'Save changes in template' => 'Сачувај промене у шаблону',
        'Add another attribute' => 'Додај још један атрибут',
        'Output' => 'Преглед резултата',
        'Fulltext' => 'Текст',
        'Remove' => 'Уклони',
        'Customer User Login' => 'Пријава корисника',
        'Created in Queue' => 'Отворено у реду',
        'Lock state' => 'Стаус закључавања',
        'Watcher' => 'Праћење',
        'Article Create Time (before/after)' => 'Време креирања чланка (пре/после)',
        'Article Create Time (between)' => 'Време креирања чланка (између)',
        'Ticket Create Time (before/after)' => 'Време отварања тикета (пре/после)',
        'Ticket Create Time (between)' => 'Време отварања тикета (између)',
        'Ticket Change Time (before/after)' => 'Време промене тикета (пре/после)',
        'Ticket Change Time (between)' => 'Време промене тикета (између)',
        'Ticket Close Time (before/after)' => 'Време затварања тикета (пре/после)',
        'Ticket Close Time (between)' => 'Време затварања тикета (између)',
        'Ticket Escalation Time (before/after)' => '',
        'Ticket Escalation Time (between)' => '',
        'Archive Search' => 'Претрага архива',
        'Run search' => 'Покрени претрагу',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Article filter' => 'Филтер за Чланке',
        'Article Type' => 'Тип чланка',
        'Sender Type' => 'Тип пошиљаоца',
        'Save filter settings as default' => 'Сачувај поешавања филтера као подразумевана',
        'Archive' => '',
        'This ticket is archived.' => '',
        'Linked Objects' => 'Повезани објекти',
        'Article(s)' => 'Чланак/Чланци',
        'Change Queue' => 'Промени Ред',
        'This item has no articles yet.' => '',
        'Article Filter' => 'Филтер чланка',
        'Add Filter' => 'Додај Филтер',
        'Set' => 'Подеси',
        'Reset Filter' => 'Ресетуј Филтер',
        'Show one article' => 'Прикажи један чланак',
        'Show all articles' => 'Прикажи све чланке',
        'Unread articles' => 'Непрочитани чланци',
        'No.' => 'Бр.',
        'Unread Article!' => 'Непрочитани Чланци!',
        'Incoming message' => 'Долазна порука',
        'Outgoing message' => 'Одлазна порука',
        'Internal message' => 'Интерна порука',
        'Resize' => 'Промена величине',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => '',
        'Load blocked content.' => 'Учитај блокирани садржај.',

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerError
        'Traceback' => 'Испрати уназад',

        # Template: CustomerFooter
        'Powered by' => 'Покреће',
        'One or more errors occurred!' => 'Догодила се једна или више грешака!',
        'Close this dialog' => 'Затвори овај дијалог',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            'Није могуће отворити искачући прозор. Молимо да искључите блокаду искачућих прозора за ову апликацију.',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'JavaScript Not Available' => 'Јава Скрипт није доступан.',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            'Како би сте користили "OTRS" неопходно је да активирате Јава скрипт у вашем Web читачу.',
        'Browser Warning' => 'Упозорење Web читача',
        'The browser you are using is too old.' => 'Web читач који користите је превише стар.',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            '"OTRS" фунционише на великом броју Web читача, молимо да инсталирате и користите један од ових.',
        'Please see the documentation or ask your admin for further information.' =>
            'Молимо да прегледате документацију или питате вашег администратора за додатне информације.',
        'Login' => 'Пријављивање',
        'User name' => 'Корисничко име',
        'Your user name' => 'Ваше корисничко име',
        'Your password' => 'Ваша лозинка',
        'Forgot password?' => 'Заборавили сте лозинку?',
        'Log In' => 'Пријављивање',
        'Not yet registered?' => 'Нисте регистровани?',
        'Sign up now' => 'Регисрујте се сада',
        'Request new password' => 'Захтев за нову лозинку',
        'Your User Name' => 'Ваше корисничко име',
        'A new password will be sent to your email address.' => 'Нова лозинка ће бити послата на вашу имејл адресу.',
        'Create Account' => 'Креирајте налог',
        'Please fill out this form to receive login credentials.' => 'Молимо да попуните овај образац да би сте добили податке за пријаву.',
        'How we should address you' => 'Како да вас ословљавамо',
        'Your First Name' => 'Ваше име',
        'Please supply a first name' => 'Молимо, унесите Име',
        'Your Last Name' => 'Ваше презиме',
        'Please supply a last name' => 'Молимо, унесите Презиме',
        'Your email address (this will become your username)' => 'Ваша имејл адреса (то ће бити ваше корисничко име)',
        'Please supply a' => 'Молимо, унесите',

        # Template: CustomerNavigationBar
        'Edit personal preferences' => 'Уредите личне поставке',
        'Logout %s' => '',

        # Template: CustomerPreferences

        # Template: CustomerRichTextEditor

        # Template: CustomerTicketMessage
        'Service level agreement' => 'Споразум о нивоу услуге',

        # Template: CustomerTicketOverview
        'Welcome!' => 'Добродошли!',
        'Please click the button below to create your first ticket.' => 'Молимо да притиснете дугме испод за креирање вашег првог тикета.',
        'Create your first ticket' => 'Креирајте ваш први тикет',

        # Template: CustomerTicketPrint
        'Ticket Print' => 'Штампа тикета',

        # Template: CustomerTicketSearch
        'Profile' => 'Профил',
        'e. g. 10*5155 or 105658*' => 'нпр 10*5155 или 105658*',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => 'Текстуално претраживање у тикетима (нпр "Ба*а" or "Мил*")',
        'Recipient' => 'Прималац',
        'Carbon Copy' => 'Копија',
        'Time restrictions' => 'Временска ограничења',
        'No time settings' => 'Нема подешавања времена',
        'Only tickets created' => 'Само тикети отворени',
        'Only tickets created between' => 'Само тикети отворени између',
        'Ticket archive system' => 'Систем за архивирање тикета',
        'Save search as template?' => 'Сачувај претрагу као шаблон?',
        'Save as Template?' => 'Сачувати као шаблон?',
        'Save as Template' => 'Сачувај као шаблон',
        'Template Name' => 'Назив шаблона',
        'Pick a profile name' => 'Изабери назив профила',
        'Output to' => 'Излаз на',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort
        'of' => 'од',
        'Page' => 'Страна',
        'Search Results for' => 'Резултати претраживања за',
        '","18' => '","18',

        # Template: CustomerTicketZoom
        'Show  article' => '',
        'Expand article' => 'Рашири чланак',
        'Information' => '',
        'Next Steps' => '',
        'There are no further steps in this process' => '',
        'Reply' => 'Одговори',

        # Template: CustomerWarning

        # Template: Datepicker
        'Invalid date (need a future date)!' => 'Неисправан датум (потебан будући датум)!',
        'Previous' => 'Назад',
        'Sunday' => 'недеља',
        'Monday' => 'понедељак',
        'Tuesday' => 'уторак',
        'Wednesday' => 'среда',
        'Thursday' => 'четвртак',
        'Friday' => 'петак',
        'Saturday' => 'субота',
        'Su' => 'не',
        'Mo' => 'по',
        'Tu' => 'ут',
        'We' => 'ср',
        'Th' => 'че',
        'Fr' => 'пе',
        'Sa' => 'су',
        'Open date selection' => 'Отвори избор датума',

        # Template: Error
        'Oops! An Error occurred.' => 'Упс. Догодила се грешка.',
        'Error Message' => 'Порука о грешци',
        'You can' => 'Ви можете',
        'Send a bugreport' => 'Пошаљи извештај о грешци',
        'go back to the previous page' => 'иди на претходну страну',
        'Error Details' => 'Детаљи грешке',

        # Template: Footer
        'Top of page' => 'На врх стране',

        # Template: FooterJS
        'If you now leave this page, all open popup windows will be closed, too!' =>
            'Ако напустите ову страницу, сви отворени прозори ће бити затворени!',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            'Приказ овог екрана је већ отворен. Желите ли да га затворите и учитате овај уместо њега?',
        'Please enter at least one search value or * to find anything.' =>
            '',

        # Template: FooterSmall

        # Template: HTMLHead

        # Template: HTMLHeadBlockEvents

        # Template: Header
        'Fulltext search' => '',
        'CustomerID Search' => '',
        'CustomerUser Search' => '',
        'You are logged in as' => 'Пријављени сте као',

        # Template: HeaderSmall

        # Template: Installer
        'JavaScript not available' => 'Јава скрипт није доступан.',
        'Database Settings' => 'Подешавање базе података',
        'General Specifications and Mail Settings' => 'Опште спецификације и подешавање поште',
        'Registration' => 'Регистрација',
        'Welcome to %s' => 'Добродошли на %s',
        'Web site' => '"Web" страница',
        'Database check successful.' => 'Успешна провера базе података.',
        'Mail check successful.' => 'Успешна провера имејл подешавања.',
        'Error in the mail settings. Please correct and try again.' => 'Грешка у подешавању имејла. Молимо исправите и покушајте поново.',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => 'Подешавање одлазне поште',
        'Outbound mail type' => 'Тип одлазне поште',
        'Select outbound mail type.' => 'Изаберите тип одлазне поште',
        'Outbound mail port' => 'Порт за одлазну пошту',
        'Select outbound mail port.' => 'Изаберите порт за одлазну пошту',
        'SMTP host' => '"SMTP"-домаћин',
        'SMTP host.' => '"SMTP"-домаћин.',
        'SMTP authentication' => '"SMTP" аутентикација',
        'Does your SMTP host need authentication?' => 'Да ли ваш "SMTP"-домаћин захтева аутентикацију?',
        'SMTP auth user' => '"SMTP" корисник',
        'Username for SMTP auth.' => 'корисничко име за "SMTP" аутентикацију',
        'SMTP auth password' => '"SMTP" лозинка',
        'Password for SMTP auth.' => 'Лозинка за "SMTP" аутентикацију',
        'Configure Inbound Mail' => 'Подешавање долазне поште',
        'Inbound mail type' => 'Тип долазног мејла',
        'Select inbound mail type.' => 'Изабери тип долазног мејла',
        'Inbound mail host' => 'Сервер долазне поште',
        'Inbound mail host.' => 'Сервер долазне поште.',
        'Inbound mail user' => 'корисник долазне поште',
        'User for inbound mail.' => 'Корисник долазног мејла',
        'Inbound mail password' => 'Лозинка долазног мејла',
        'Password for inbound mail.' => 'Лозинка за долазни мејл',
        'Result of mail configuration check' => 'Резултат провере подешавања поште',
        'Check mail configuration' => 'Провери конфигурацију мејла',
        'Skip this step' => 'Прескочи овај корак',
        'Skipping this step will automatically skip the registration of your OTRS. Are you sure you want to continue?' =>
            'Прескакање овог корака аутоматски прескачете и регистрацију ваше "OTRS" инсталације. јесте ли сигурни да желите да наставите?',

        # Template: InstallerDBResult
        'False' => '"False"',

        # Template: InstallerDBStart
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' =>
            'Ако сте подесили "root" лозинку за вашу базу података, она мора бити унета овде. Ако нема лозинке оставите поље празно. Из безбедносних разлога препоручујемо да је подесите. За више информација консултујте документацију о бази података.',
        'Currently only MySQL is supported in the web installer.' => 'Тренутно је само "MySQL" подржан у Web Инсталацији.',
        'If you want to install OTRS on another database type, please refer to the file README.database.' =>
            'Ако желите да инсталирате "OTRS" на неки други систем базе података, информације су у датотеци README.database.',
        'Database-User' => 'Корисник базе података',
        'New' => 'Нов',
        'A new database user with limited rights will be created for this OTRS system.' =>
            'Нови корисника базе са ограниченим правима ће бити креиран за овај "OTRS" систем',
        'default \'hot\'' => 'подразумевано \'hot\'',
        'DB--- host' => 'Назив или адреса ДБ-Сервера',
        'Check database settings' => 'Проверите подешавања базе',
        'Result of database check' => 'Резултат провере базе података',

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            'Да би сте користили "OTRS" морате унети следеће у командну линију (Terminal/Shell) као "root".',
        'Restart your webserver' => 'Поново покрените ваш WEB Сервер.',
        'After doing so your OTRS is up and running.' => 'После овога ваш "ОТРС" је укључен и ради.',
        'Start page' => 'Почетна страна',
        'Your OTRS Team' => 'Ваш "OTRS" Тим',

        # Template: InstallerLicense
        'Accept license' => 'Прихвати лиценцу',
        'Don\'t accept license' => 'Не прихватај лиценцу',

        # Template: InstallerLicenseText

        # Template: InstallerRegistration
        'Organization' => 'Организација',
        'Position' => 'Позиција',
        'Complete registration and continue' => 'Комплетирај регистрацију и настави',
        'Please fill in all fields marked as mandatory.' => 'Молимо да попуните сва поља означена као обавезна.',

        # Template: InstallerSystem
        'SystemID' => 'Системски ИД',
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            'Системски идентификатор. Сваки број тикета и сваки ИД "HTTP" сесије садржи овај број.',
        'System FQDN' => 'Системски "FQDN"',
        'Fully qualified domain name of your system.' => '"FQDN" - име сервера укључујући пуно име домена нпр "otrs-server.example.org"',
        'AdminEmail' => 'имејл администратор',
        'Email address of the system administrator.' => 'имејл адреса системског администратора.',
        'Log' => 'Дневник',
        'LogModule' => 'Модул дневника',
        'Log backend to use.' => 'Систем који се користи за дневник.',
        'LogFile' => 'Датотека дневника',
        'Log file location is only needed for File-LogModule!' => 'Локација датотеке дневника је једно неопходно Модулу дневника!',
        'Webfrontend' => 'Мрежни интерфејс',
        'Default language' => 'Подразумевани језик',
        'Default language.' => 'Подразумевани језик',
        'CheckMXRecord' => 'Провери "MX"-податке',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            'Ручно унета имејл адреса се проверава помоћу "MX" податка пронађеног у "DNS".Немојте користити ову опцију ако је ваш "DNS" спор или не може да разреши јавне адресе',

        # Template: LinkObject
        'Object#' => 'Објект#',
        'Add links' => 'Додај везе',
        'Delete links' => 'Обриши везе',

        # Template: Login
        'Lost your password?' => 'Изгубили сте лозинку?',
        'Request New Password' => 'Захтев за нову лозинку',
        'Back to login' => 'Назад на пријављивање',

        # Template: Motd
        'Message of the Day' => 'Данашња порука',

        # Template: NoPermission
        'Insufficient Rights' => 'Недовољна овлаштења',
        'Back to the previous page' => 'Вратите се на претходну страну',

        # Template: Notify

        # Template: Pagination
        'Show first page' => 'Покажи прву страну',
        'Show previous pages' => 'Покажи претходне стране',
        'Show page %s' => 'покажи страну %s',
        'Show next pages' => 'Покажи следеће стране',
        'Show last page' => 'Покажи последњу страну',

        # Template: PictureUpload
        'Need FormID!' => 'Потребан ИД формулара!',
        'No file found!' => 'Датотека није пронађена!',
        'The file is not an image that can be shown inline!' => 'Датотека није слика која се може непосредно приказати!',

        # Template: PrintFooter

        # Template: PrintHeader
        'printed by' => 'штампао',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: SpellingInline

        # Template: Test
        'OTRS Test Page' => '"OTRS" тест страна',
        'Welcome %s' => 'Добродошли %s',
        'Counter' => 'Бројач',

        # Template: Warning
        'Go back to the previous page' => 'Вратите се на претходну страну',

        # SysConfig
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '"ACL" модул који дозвољава да тикети родитељи буду затворени само ако су већ затворени сви тикети деца ("Статус" показује који статуси нису доступни за тикет родитељ док се не затворе сви тикети деца).',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            'Активира механизам трептања реда који саржи најстарији тикет.',
        'Activates lost password feature for agents, in the agent interface.' =>
            'Активира опцију изгубљене лозинке за оператере, на интерфејсу за њих.',
        'Activates lost password feature for customers.' => 'Активира опцију изгубљене лозинке за кориснике.',
        'Activates support for customer groups.' => 'Активира подршку за корисничке групе.',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            'Активира филтер за чланке у проширеном прегледу ради дефинисања који чланци треба да буду приказани.',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            'Активира расположиве теме - шаблоне у систему. Вредност 1 значи активно, 0 значи неактивно.',
        'Activates the ticket archive system search in the customer interface.' =>
            'Активира могућност претраживања архиве тикета у корисничком интерфејсу.',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            'Активира архивски систем ради убрзања рада, тако што ћете неке тикетеуклонити ван дневног праћења. Да бисте пронашли ове тикете, маркер архиве мора бити омогућен за претрагу тикета.',
        'Activates time accounting.' => 'Активира мерење времена.',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            'Додаје текућу годину и месец као суфикс у "OTRS" дневнику. Биће креирана датотека дневника за сваки месец.',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface.' =>
            'Додаје корисничке имејл адресе примаоцима у прозору за отварање тикета на интерфејсу оператера.',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за изабрани календар. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за изабрани календар. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Agent Notifications' => 'Обавештења запосленима',
        'Agent interface article notification module to check PGP.' => 'Модул интерфејса оператера за обавештавања о чланку, провера "PGP".',
        'Agent interface article notification module to check S/MIME.' =>
            'Модул интерфејса оператера за обавештавања о чланку, провера "S/MIME"',
        'Agent interface module to access CIC search via nav bar.' => '',
        'Agent interface module to access fulltext search via nav bar.' =>
            'Модул интерфејса оператера за приступ текстуалном претраживању преко навигационе траке.',
        'Agent interface module to access search profiles via nav bar.' =>
            'Модул интерфејса оператера за приступ профилима претраживања преко навигационе траке.',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            'Модул интерфејса оператера за проверу долазних порука у увећаном прегледу тикета ако "S/MIME"-кључ постоји и доступан је.',
        'Agent interface notification module to check the used charset.' =>
            'Модул интерфејса оператера за проверу употребљеног карактерсета.',
        'Agent interface notification module to see the number of tickets an agent is responsible for.' =>
            'Модул интерфејса оператера за обавештавање, преглед броја тикета за које је агент одговоран.',
        'Agent interface notification module to see the number of watched tickets.' =>
            'Модул интерфејса оператера за обавештавање, преглед броја праћених тикета.',
        'Agents <-> Groups' => 'Оператери <-> Групе',
        'Agents <-> Roles' => 'Оператери <-> Улоге',
        'Allows adding notes in the close ticket screen of the agent interface.' =>
            'Дозвољава додавање напомена у прозор затвореног тикета интерфејса оператера.',
        'Allows adding notes in the ticket free text screen of the agent interface.' =>
            'Дозвољава додавање напомена у прозор слободног текста интерфејса оператера.',
        'Allows adding notes in the ticket note screen of the agent interface.' =>
            'Дозвољава додавање напомена у прозор напомене интерфејса оператера.',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Дозвољава додавање напомена у прозор власника тикета на увећаном приказу у интерфејсу оператера.',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Дозвољава додавање напомена у прозор на чекању увећаног приказа у интерфејсу оператера.',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Дозвољава додавање напомена у прозор приоритета на увећаном приказу у интерфејсу оператера.',
        'Allows adding notes in the ticket responsible screen of the agent interface.' =>
            'Дозвољава додавање напомена у прозор одговорног за тикет интерфејса оператера.',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            'Дозвољава оператерима да замене осе на статистици ако је генеришу.',
        'Allows agents to generate individual-related stats.' => 'Дозвољава оператерима да генеришу индивидуалну статистику.',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            'Дозвољава избор између приказа прилога у прегледачу или само омогућавања његовог преузимања.',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            'Дозвољава избор следећег стања за кориснички тикет у корисничком интерфејсу.',
        'Allows customers to change the ticket priority in the customer interface.' =>
            'Дозвољава корисницима да промене приоритет тикета у корисничком интерфејсу.',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            'Дозвољава корисницима да подесе "SLA" за тикет у корисничком интерфејсу.',
        'Allows customers to set the ticket priority in the customer interface.' =>
            'Дозвољава корисницима да подесе приоритет тикета у корисничком интерфејсу.',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            'Дозвољава корисницима да подесе ред тикета у корисничком интерфејсу. Ако је подешено на "Не", онда треба подесити "QueueDefault".',
        'Allows customers to set the ticket service in the customer interface.' =>
            'Дозвољава корисницима да подесе сервис за тикет у корисничком интерфејсу.',
        'Allows customers to set the ticket type in the customer interface. If this is set to \'No\', TicketTypeDefault should be configured.' =>
            '',
        'Allows default services to be selected also for non existing customers.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            'Дозвољава дефинисање новог типа тикета (ако је опције типа тикета активирана).',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            'Дозвољава дефинисање сервиса и "SLA" за тикете (нпр имејл, радна површина, мрежа, ...), и ескалационе атрибуте за "SLA" (ако је активиран сервис/"SLA" за тикет).',
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
        'Attachments <-> Responses' => 'Прилози <-> Одговори',
        'Auto Responses <-> Queues' => 'Аутоматски одговори <-> Редови',
        'Automated line break in text messages after x number of chars.' =>
            'Аутоматски крај реда у текстуалним порукама после "x" карактера.',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            'Аутоматско закључавање и подешавање власника на актуелног оператера после избора масовне акције.',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled).' =>
            '',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            '',
        'Balanced white skin by Felix Niklas.' => 'Балансирани бели изглед, Felix Niklas.',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            '',
        'Builds an article index right after the article\'s creation.' =>
            'Генерише индекс чланака одмах по креирању чланка.',
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
        'Change password' => 'Промена лозинке',
        'Change queue!' => 'Промена реда!',
        'Change the customer for this ticket' => 'Промени корисника за овај тикет',
        'Change the free fields for this ticket' => 'Промени слободна поља овог тикета',
        'Change the priority for this ticket' => '',
        'Change the responsible person for this ticket' => 'Промени одговорну особу за овај тикет',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '',
        'Checkbox' => 'Поље за потврду',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            '',
        'Closed tickets of customer' => '',
        'Comment for new history entries in the customer interface.' => 'Коментар за нове ставке историјата у корисничком интерфејсу.',
        'Company Tickets' => 'Тикети фирми',
        'Company name for the customer web interface. Will also be included in emails as an X-Header.' =>
            '',
        'Configure Processes.' => '',
        'Configure your own log text for PGP.' => '',
        'Configures a default TicketDynmicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://doc.otrs.org/), chapter "Ticket Event Module".' =>
            '',
        'Configures the full-text index. Execute "bin/otrs.RebuildFulltextIndex.pl" in order to generate a new index.' =>
            '',
        'Controls if customers have the ability to sort their tickets.' =>
            'Контролише да ли корисници имају могућност да сортирају своје тикете.',
        'Controls if more than one from entry can be set in the new phone ticket in the agent interface.' =>
            '',
        'Controls if the ticket and article seen flags are removed when a ticket is archived.' =>
            '',
        'Converts HTML mails into text messages.' => 'Конвертује "HTML" поруке у текстуалне поруке.',
        'Create New process ticket' => '',
        'Create and manage Service Level Agreements (SLAs).' => 'Креира и управља са "SLA".',
        'Create and manage agents.' => 'Креирање и управљање оператерима.',
        'Create and manage attachments.' => 'Креирање и управљање прилозима.',
        'Create and manage companies.' => 'Креирање и управљање фирмама.',
        'Create and manage customers.' => 'Креирање и управљање корисницима.',
        'Create and manage dynamic fields.' => '',
        'Create and manage event based notifications.' => 'Креирање и управљање обавештењима на бази догађаја.',
        'Create and manage groups.' => 'Креирање и управљање групама.',
        'Create and manage queues.' => 'Креирање и управљање редовима.',
        'Create and manage response templates.' => 'Креирање и управљање шаблонима одговора.',
        'Create and manage responses that are automatically sent.' => 'Креирање и управљање аутоматским одговорима.',
        'Create and manage roles.' => 'Креирање и управљање улогама.',
        'Create and manage salutations.' => 'Креирање и управљање поздравима.',
        'Create and manage services.' => 'Креирање и управљање сервисима.',
        'Create and manage signatures.' => 'Креирање и управљање потписима.',
        'Create and manage ticket priorities.' => 'Креирање и управљање приоритетима тикета.',
        'Create and manage ticket states.' => 'Креирање и управљање статусима тикета.',
        'Create and manage ticket types.' => 'Креирање и управљање типовима тикета.',
        'Create and manage web services.' => 'Креирање и управљање веб сервисима.',
        'Create new email ticket and send this out (outbound)' => 'Отвори нови имејл тикет и пошаљи ово (одлазни)',
        'Create new phone ticket (inbound)' => 'Креирај нови телефонски тикет (долазни позив)',
        'Custom text for the page shown to customers that have no tickets yet.' =>
            '',
        'Customer Company Administration' => '',
        'Customer Company Information' => '',
        'Customer User Administration' => '',
        'Customer Users' => 'Корисници',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            'Корисничка ставка (икона) која показује отворене тикете овог корисника као инфо блок.',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'CustomerID Status' => '',
        'Customers <-> Groups' => 'Корисици <-> Групе',
        'Customers <-> Services' => 'Корисници <-> Сервиси',
        'DEPRECATED! This setting is not used any more and will be removed in a future version of OTRS.' =>
            '',
        'Data used to export the search result in CSV format.' => 'Подаци употребљени за ивоз резултата претраживања у "CSV" формату.',
        'Date / Time' => 'Датум / Време',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            '',
        'Default ACL values for ticket actions.' => 'Подразумеване "ACL" вредности за акције тикета.',
        'Default Process Management Entity prefixes for entity IDs.' => '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            '',
        'Default loop protection module.' => 'Подразумевани модул заштите од петље',
        'Default queue ID used by the system in the agent interface.' => 'Подразумевани ИД реда који користи систем у интерфејсу оператера.',
        'Default skin for OTRS 3.0 interface.' => '',
        'Default skin for interface.' => 'Подразумевани изглед интерфејса.',
        'Default ticket ID used by the system in the agent interface.' =>
            'Подразумевани ИД тикета који користи систем у интерфејсу оператера.',
        'Default ticket ID used by the system in the customer interface.' =>
            'Подразумевани ИД тикета који користи систем у корисничком интерфејсу.',
        'Default value for NameX' => '',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Define the start day of the week for the date picker.' => 'Дефинишите први дан у недељи за избор датума.',
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
        'Defines all the X-headers that should be scanned.' => 'Одређује сва X-заглавља која треба скенирати.',
        'Defines all the languages that are available to the application. The Key/Content pair links the front-end display name to the appropriate language PM file. The "Key" value should be the base-name of the PM file (i.e. de.pm is the file, then de is the "Key" value). The "Content" value should be the display name for the front-end. Specify any own-defined language here (see the developer documentation http://doc.otrs.org/ for more infomation). Please remember to use the HTML equivalents for non-ASCII characters (i.e. for the German oe = o umlaut, it is necessary to use the &ouml; symbol).' =>
            '',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for this item in the customer preferences.' =>
            'Одређује све параметре за ову ставку у корисничким подешавањима.',
        'Defines all the possible stats output formats.' => 'Одређује све могуће излазне формате статистике.',
        'Defines an alternate URL, where the login link refers to.' => 'Одређује алтернативни "URL", на који веза за пријављивање показује.',
        'Defines an alternate URL, where the logout link refers to.' => 'Одређује алтернативни "URL", на који веза за одјављивање показује.',
        'Defines an alternate login URL for the customer panel..' => 'Одређује алтернативни "URL" пријављивања за кориснички панел.',
        'Defines an alternate logout URL for the customer panel.' => 'Одређује алтернативни "URL" одјављивања за кориснички панел.',
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
            'Одређује да ли порукама написаним у интерфејсу оператера треба урадити проверу правописа.',
        'Defines if time accounting is mandatory in the agent interface.' =>
            'Одређује да ли је обрачун времена обавезан у интерфејсу оператера.',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            '',
        'Defines scheduler PID update time in seconds (floating point number).' =>
            '',
        'Defines scheduler sleep time in seconds after processing all available tasks (floating point number).' =>
            '',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            '',
        'Defines the URL CSS path.' => 'Одређује "URL CSS" путању.',
        'Defines the URL base path of icons, CSS and Java Script.' => 'Одређује "URL" основну путању за иконе, "CSS" и Јава скриптове.',
        'Defines the URL image path of icons for navigation.' => 'Одређује "URL" путању до слика за навигационе иконе.',
        'Defines the URL java script path.' => 'Одређује "URL" путању јава скриптова.',
        'Defines the URL rich text editor path.' => 'Одређује "URL" путању до апликације за уређивање "RTF" датотека',
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
        'Defines the body text for rejected emails.' => 'Одређује садржај текста за одбачене поруке.',
        'Defines the boldness of the line drawed by the graph.' => 'Одређује дебљину линија за грфиконе.',
        'Defines the colors for the graphs.' => 'Одређује боје за графиконе.',
        'Defines the column to store the keys for the preferences table.' =>
            'Одређује колону за чување кључева табеле подешавања.',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            '',
        'Defines the connections for http/ftp, via a proxy.' => 'Одређује конекције за "http/ftp" преко посредника.',
        'Defines the date input format used in forms (option or input fields).' =>
            'Одређује формат уноса датума у формуларе (опција за поља за унос).',
        'Defines the default CSS used in rich text editors.' => 'Одређује подразумевани "CSS" употребљен у "RTF" уређивању.',
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
            'Одређује подразумевани приоритет за нове корисничке тикете у корисничком интерфејсу.',
        'Defines the default priority of new tickets.' => 'Одређује подразумевани приоритет за нове тикете.',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            'Одређује подразумевани ред за нове корисничке тикете у корисничком интерфејсу.',
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
        'Defines the default spell checker dictionary.' => 'Одређује подразумевани речник за проверу правописа.',
        'Defines the default state of new customer tickets in the customer interface.' =>
            '',
        'Defines the default state of new tickets.' => 'Одређује подразумевани статус нових тикета.',
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
        'Defines the height for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the height of the legend.' => 'Одређује висину легенде.',
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
        'Defines the hours and week days to count the working time.' => 'Одређује сате и дане у седмици ради калкулација радног времена.',
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
            'Одређује максималну величину датотека (у бајтима) за слање.',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            'Одређује максимално време важења (у секундама) за ИД сесије.',
        'Defines the maximum number of pages per PDF file.' => 'Одређује максимални број страна по "PDF" датотеци.',
        'Defines the maximum size (in MB) of the log file.' => 'Одређује максималну величину датотеке дневника (у мегабајтима).',
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
        'Defines the module to authenticate customers.' => 'Одређује модул за аутентикацију корисника.',
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
        'Defines the name of the key for customer sessions.' => 'Одређује назив кључа за корисничке сеције.',
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
        'Defines the spacing of the legends.' => 'Одређује размаке у легенди.',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            '',
        'Defines the standard size of PDF pages.' => 'Одређује стандардну величину "PDF" страница.',
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
        'Defines the subject for rejected emails.' => 'Одређује тему за одбачене поруке.',
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
        'Defines the user identifier for the customer panel.' => 'Одређује идентификатор корисника за кориснички панел.',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the valid state types for a ticket.' => 'Одређује важеће типове статуса за тикет.',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.UnlockTickets.pl" can be used.' =>
            '',
        'Defines the viewable locks of a ticket. Default: unlock, tmp_lock.' =>
            '',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width of the legend.' => 'Одређује ширину легенде.',
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
        'Dropdown' => 'Падајући',
        'Dynamic Fields Checkbox Backend GUI' => '',
        'Dynamic Fields Date Time Backend GUI' => '',
        'Dynamic Fields Drop-down Backend GUI' => '',
        'Dynamic Fields GUI' => '',
        'Dynamic Fields Multiselect Backend GUI' => '',
        'Dynamic Fields Overview Limit' => '',
        'Dynamic Fields Text Backend GUI' => '',
        'Dynamic Fields used to export the search result in CSV format.' =>
            '',
        'Dynamic fields groups for process widget. Example: \'Key => My Group\', \'Content: Name_X, NameY\'.' =>
            '',
        'Dynamic fields limit per page for Dynamic Fields Overview' => '',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###AttributesView.' =>
            '',
        'Dynamic fields shown in the process widget in ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the sidebar in ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
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
        'Dynamic fields shown in the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'DynamicField backend registration.' => '',
        'DynamicField object registration.' => '',
        'Edit customer company' => '',
        'Email Addresses' => 'Имејл адресе',
        'Enables PDF output. The CPAN module PDF::API2 is required, if not installed, PDF output will be disabled.' =>
            '',
        'Enables PGP support. When PGP support is enabled for signing and securing mail, it is HIGHLY recommended that the web server be run as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            '',
        'Enables S/MIME support.' => 'Омогућава "S/MIME" подршку.',
        'Enables customers to create their own accounts.' => 'Омогућава корисницима да креирају сопствене налоге.',
        'Enables file upload in the package manager frontend.' => '',
        'Enables or disable the debug mode over frontend interface.' => '',
        'Enables or disables the autocomplete feature for the customer search in the agent interface.' =>
            '',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            '',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            '',
        'Enables spell checker support.' => 'Омогућава подрђку за проверу правописа.',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            '',
        'Enables ticket bulk action feature only for the listed groups.' =>
            '',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            '',
        'Enables ticket watcher feature only for the listed groups.' => '',
        'Escalation view' => 'Преглед ескалација',
        'Event list to be displayed on GUI to trigger generic interface invokers.' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate).' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            '',
        'Example for free text' => 'Пример слободног текста',
        'Execute SQL statements.' => 'Изврши "SQL" наредбе.',
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
        'Filter incoming emails.' => 'Филтрирање долазних порука.',
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
        'GenericAgent' => '',
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
        'If "DB" was selected for SessionModule, a column for the identifiers in session table must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a column for the values in session table must be specified.' =>
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
        'Interface language' => 'Језик интерфејса',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Link agents to groups.' => 'Повежи оператере са гупама.',
        'Link agents to roles.' => 'Повежи оператере са улогама.',
        'Link attachments to responses templates.' => 'Повежи прилоге са шаблонима одговора.',
        'Link customers to groups.' => 'Повежи кориснике са групама.',
        'Link customers to services.' => 'Повежи кориснике са сервисима.',
        'Link queues to auto responses.' => 'Повежи редове са аутоманским одковорима.',
        'Link responses to queues.' => 'Повежи одговоре са редовима.',
        'Link roles to groups.' => 'Повежи улоге са групама.',
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
        'Log file for the ticket counter.' => 'Датотека дневника за бројач тикета.',
        'Mail Accounts' => '',
        'Main menu registration.' => '',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            '',
        'Makes the application check the syntax of email addresses.' => '',
        'Makes the picture transparent.' => 'Одређује прозирност слике.',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            '',
        'Manage PGP keys for email encryption.' => '',
        'Manage POP3 or IMAP accounts to fetch email from.' => '',
        'Manage S/MIME certificates for email encryption.' => '',
        'Manage existing sessions.' => 'Управљање постојећим сесијама.',
        'Manage notifications that are sent to agents.' => '',
        'Manage periodic tasks.' => 'Управљање повременим задацима.',
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
        'Module to check customer permissions.' => 'Модул за проверу корисничких дозвола.',
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
        'My Tickets' => 'Моји тикети',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'NameX' => '',
        'New process ticket' => '',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Notifications (Event)' => 'Обавештења (Догађај)',
        'Number of displayed tickets' => 'Број приказаних тикета',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'Open tickets of customer' => '',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets' => 'Преглед ескалиралих тикета',
        'Overview Refresh Time' => '',
        'Overview of all open Tickets.' => 'преглед свих отворених тикета.',
        'PGP Key Management' => '',
        'PGP Key Upload' => 'Слање "PGP" кључа',
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
        'Permitted width for compose email windows.' => 'Дозвољена ширина прозора за писање поруке.',
        'Permitted width for compose note windows.' => 'Дозвољена ширина прозора за писање напомене.',
        'Picture-Upload' => '',
        'PostMaster Filters' => '"PostMaster" филтери',
        'PostMaster Mail Accounts' => '"PostMaster" мејл налози',
        'Process Information' => '',
        'Process Management Activity Dialog GUI' => '',
        'Process Management Activity GUI' => '',
        'Process Management Path GUI' => '',
        'Process Management Transition Action GUI' => '',
        'Process Management Transition GUI' => '',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            '',
        'Queue view' => 'Преглед реда',
        'Refresh Overviews after' => '',
        'Refresh interval' => 'Интервал освежавања',
        'Removes the ticket watcher information when a ticket is archived.' =>
            '',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            'Замењује огиналног пошиљаоца са имејл адресом актуелног корисника при креирању одговора у прозору за писање одговора интерфејса оператера.',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            'Потребне дозволе за промену корисника тикета у интерфејсу оператера.',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            'Потребне дозволе за употребу прозора за затварање тикета у интерфејсу оператера.',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            'Потребне дозволе за употребу прозора за одбијање тикета у интерфејсу оператера.',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            'Потребне дозволе за употребу прозора за отварање тикета у интерфејсу оператера.',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            'Потребне дозволе за употребу прозора за прослеђивање тикета у интерфејсу оператера.',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            'Потребне дозволе за употребу прозора слободног текста тикета у интерфејсу оператера.',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            'Потребне дозволе за употребу прозора за спајање при увећаном приказу тикета у интерфејсу оператера.',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            'Потребне дозволе за употребу прозора за напомене тикета у интерфејсу оператера.',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            'Потребне дозволе за употребу прозора власника тукета при увећаном приказу тикета у интерфејсу оператера.',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            'Потребне дозволе за употребу прозора чекања при увећаном приказу тикета у интерфејсу оператера.',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            'Потребне дозволе за употребу прозора телефонског одлазног тикета у интерфејсу оператера.',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            'Потребне дозволе за употребу прозора приоритета при увећаном приказу тикета у интерфејсу оператера.',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            'Потребне дозволе за употребу прозора одговорног за тикет у интерфејсу оператера.',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            'Ресетује и откључава власника тикета ако је премештен у други ред.',
        'Responses <-> Queues' => 'Одговори <-> Редови',
        'Restores a ticket from the archive (only if the event is a state change, from closed to any open available state).' =>
            'Рестаурира тикет из архиве (само ако је догађај промена статуса од затвореног на било који доступан отворени статус).',
        'Roles <-> Groups' => 'Улоге <-> Групе',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'S/MIME Certificate Upload' => 'Слање "S/MIME" сертификата',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data.' =>
            '',
        'Saves the login and password on the session table in the database, if "DB" was selected for SessionModule.' =>
            '',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Select your frontend Theme.' => '',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            '',
        'Send notifications to users.' => 'Пошаљи обавештења корисницима.',
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
        'Set sender email addresses for this system.' => 'Системска адреса пошиљаоца.',
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
        'Sets the size of the statistic graph.' => 'Подешава величину графикона статистике.',
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
        'Statistics' => 'Статистике',
        'Status view' => 'Преглед статуса',
        'Stores cookies after the browser has been closed.' => 'Чува колачиће након затварања претраживача.',
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
        'Ticket overview' => 'Преглед тикета',
        'Tickets' => 'Тикети',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            '',
        'Toggles display of OTRS FeatureAddons list in PackageManager.' =>
            '',
        'Toolbar Item for a shortcut.' => '',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            '',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            '',
        'Types' => 'Типови',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            'Ажурирај оѕнаку виђених тикета ако су сви прегледани или је креиран нови чланак.',
        'Update and extend your system with software packages.' => 'Ажурирај и надогради систем софтверским пакетима.',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            'Ажурирај индекс ескалације тикета после ажурирања атрибута тикета.',
        'Updates the ticket index accelerator.' => 'Ажурирај акцелератор индекса тикета.',
        'Uses Cc recipients in reply Cc list on compose an email answer in the ticket compose screen of the agent interface.' =>
            '',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard responses, auto responses and notifications.' =>
            '',
        'View performance benchmark results.' => 'Преглед резултата провере перформанси.',
        'View system log messages.' => 'Преглед порука системског дневника.',
        'Wear this frontend skin' => 'Примени овај исглед интерфејса',
        'Webservice path separator.' => '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. In this text area you can define this text (This text cannot be changed by the agent).' =>
            'Када су тикети спојени, тикету који није активан ће аутоматски бити додана белешка. У простору за текст можете да дефинишете овај текст (Оператери не могу мењати овај текст).',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            'Када су тикети спојени, корисник може бити информисан имејлом постављањем поље за потврду "Обавести пошиљаоца". У простору за текст, можете дефинисати унапред форматирани текст који касније бити модификован од стране оператера.',
        'Your queue selection of your favorite queues. You also get notified about those queues via email if enabled.' =>
            'Изабрани омиљени редови. Ако је активирано, добиђете и обавештење о овим редовима.',

        #
        # OBSOLETE ENTRIES FOR REFERENCE, DO NOT TRANSLATE!
        #
        '%s Tickets affected! Do you really want to use this job?' => '%s тикета захваћено! Да ли стварно желите да покренете овај посао?',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' =>
            '(Проверите "MX" записе употребљених имејл адреса  креирањем одговора. Немојте користити ову функцију ако је ваш "OTRS" сервер на "dial-up" линији!)',
        '(Email of the system admin)' => '(имејл систем администратора)',
        '(Full qualified domain name of your system)' => '(Пуно квалификовано име домена вашег система)',
        '(Note: It depends on your installation how many dynamic objects you can use)' =>
            '(Напомена: Од ваше инсталације зависи број динамичких објеката које можете користити)',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' =>
            '(Идентификација тикета. нпр. \'Ticket#\', \'Call#\' или \'MyTicket#\')',
        '(Used default language)' => '(Подразумевани језик корисника)',
        '(Used ticket number format)' => '(Употребљени формат за број тикета)',
        'A article should have a title!' => 'Чланак треба да има наслов!',
        'A message must be spell checked!' => 'Потребна провера правописа за поруку!',
        'A message should have a To: recipient!' => 'Порука треба да има попуњено За: примаоц!',
        'A message should have a body!' => 'Порука треба да садржи неки текст!',
        'A message should have a customer!' => 'Порука мора да има корисника!',
        'A message should have a subject!' => 'Порука мора да има предмет!',
        'A required field is:' => 'Обавезно поље је:',
        'A response is default text to write faster answer (with default text) to customers.' =>
            'Одговор је подразумевани текст за брже писање (помоћу подразумеваног текста) одговора корисницима.',
        'A ticket should be associated with a queue!' => 'Тикет би требало да буде у неком реду.',
        'A ticket should have a type!' => 'Тикет мора да буде додељен тип!',
        'About OTRS' => 'О "OTRS"',
        'Absolut Period' => 'Апсолутни период',
        'Activates TypeAhead for the autocomplete feature, that enables users to type in whatever speed they desire, without losing any information. Often this means that keystrokes entered will not be displayed on the screen immediately.' =>
            'Активира "Куцање унапред" за функцију аутокомплетирања, која омогућава корисницима да укуцавају текс било којом брином, без губљења информација. Најчешће то значи да на екрану неће сваки притисак на тастер бити одмах приказан.',
        'Add Customer User' => 'Доадај корисника',
        'Add System Address' => 'Додај системску адресу',
        'Add User' => 'Додај корисника',
        'Add a new Agent.' => 'Додај новог оператера.',
        'Add a new Customer Company.' => 'Додај нову корисничку фирму.',
        'Add a new Group.' => 'Додај нову групу.',
        'Add a new Notification.' => 'Додај ново обавештење.',
        'Add a new Priority.' => 'Додај нови приоритет.',
        'Add a new Role.' => 'Додај нову улогу.',
        'Add a new SLA.' => 'Додај нови "SLA".',
        'Add a new Salutation.' => 'Додај нов поздрав.',
        'Add a new Service.' => 'Додај нови сервис.',
        'Add a new Signature.' => 'Додај нови потпис.',
        'Add a new State.' => 'Додај нови статус.',
        'Add a new System Address.' => 'Додај нову системску адресу.',
        'Add a new Type.' => 'Додај нови тип.',
        'Add a new salutation' => 'Додај нови поздрав',
        'Add a note to this ticket!' => 'Додај напомену овом тикету!',
        'Add new attachment' => 'Додај нови прилог',
        'Add new field for object:' => 'Додај ново поље за објект:',
        'Add note to ticket' => 'Додај тикету напомену',
        'Add to list of subscribed tickets' => 'Додај на листу претплате',
        'Added User "%s"' => 'Додан корисник "%s".',
        'Adds a suffix with the actual year and month to the otrs log file. A logfile for every month will be created.' =>
            'Додаје суфикс са актуелном годином и месецом у "ОТРС" датотеку дневника. Биће креиран дневник за сваки месец.',
        'Adds the one time vacation days for the calendar number 1. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 1. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days for the calendar number 2. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 2. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days for the calendar number 3. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 3. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days for the calendar number 4. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 4. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days for the calendar number 5. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 5. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days for the calendar number 6. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 6. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days for the calendar number 7. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 7. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days for the calendar number 8. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 8. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the one time vacation days for the calendar number 9. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Једнократно додаје нерадне дане за календар број 9. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 1. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 1. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 2. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 2. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 3. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 3. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 4. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 4. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 5. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 5. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 6. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 6. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 7. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 7. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 8. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 8. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Adds the permanent vacation days for the calendar number 9. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            'Трајно додаје нерадне дане за календар број 9. Молимо Вас да користите једну цифру за бројеве од 1 до 9 (уместо 01 - 09).',
        'Admin-Area' => 'Админ простор',
        'Admin-Password' => 'Администраторска лозинка',
        'Admin-User' => 'Администратор',
        'Admin-password' => 'Администраторска лозинка',
        'Agent Mailbox' => 'Поштанско сандуче запослених',
        'Agent Preferences' => 'Подешавања оператера',
        'Agent based' => 'На основу оператера',
        'Agent-Area' => 'Простор запослених',
        'All Agent variables.' => 'Све варијабле запослених',
        'All Agents' => 'Сви оператери',
        'All Customer variables like defined in config option CustomerUser.' =>
            'Све корисничке варијабле као што су дефинисане у конфигурационим опцијама за корисника.',
        'All customer tickets.' => 'Сви тикети за корисника.',
        'All email addresses get excluded on replaying on composing an email.' =>
            'Све имејл адресе ће бити искључене при креирању одговора.',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' =>
            'Све имејл поруке са овим примаоцем (За:) биће отпремљене у изабрани ред!',
        'All messages' => 'Све поруке',
        'All new tickets!' => 'Сви нови тикети!',
        'All tickets where the reminder date has reached!' => 'Сви тикети код којих је достигнут датум подсетника!',
        'All tickets which are escalated!' => 'Сви ескалирани тикети!',
        'Allocate CustomerUser to service' => 'Распореди корисника на сервис',
        'Allocate services to CustomerUser' => 'Додели сервисе кориснику ',
        'Answer' => 'Одговор',
        'Article Create Times' => 'Времена креирања чланка',
        'Article created' => 'Креиран чланак',
        'Article created between' => 'Чланак креиран између',
        'Article filter settings' => 'Подешавање филтера за чланке',
        'Article free text options shown in the close ticket screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану затвореног тикета на интерфејсу оператера. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the email ticket screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на имејл екрану тикета на интерфејсу запосленог. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the phone ticket screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану телефонског тикета на интерфејсу запосленог. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану за писање тикета на интерфејсу запосленог. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану слободног текста тикета на интерфејсу запосленог. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану напомене тикета на интерфејсу запосленог. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the ticket owner screen of a zoomed ticket in the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану власника тикета на интерфејсу запосленог при увећаном приказу. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the ticket pending screen of a zoomed ticket in the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану чекања тикета на интерфејсу запосленог при увећаном приказу. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану одлазног телефонског тикета на интерфејсу запосленог. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the ticket priority screen of a zoomed ticket in the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану приоритета тикета на интерфејсу запосленог. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Article free text options shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            'Опције слободног текста чланка приказане на екрану одговорног за тикет на интерфејсу запосленог. Могуће поставке: 0 = искључено, 1 = укључено, 2 = укључено и обавезно.',
        'Attach' => 'Прикачи',
        'Attribute' => 'Атрибут',
        'Auto Response From' => 'Аутоматски одговор од',
        'Bounce Ticket: ' => 'Преусмери тикет',
        'Bounce ticket' => 'Преусмери тикет',
        'CSV' => '"CSV"',
        'Can not create link with %s!' => 'Не може се направити веза са %s!',
        'Can not delete link with %s!' => 'Веза са %s се не може обрисати!',
        'Can\'t update password, must be at least %s characters!' => 'Лозинка се не може ажурирати, мора бити дуга најмање %s знакова.',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' =>
            'Лозинка се не може ажурирати. Мора да садржи најмање два мала и два велика слова.',
        'Can\'t update password, needs at least 1 digit!' => 'Лозинка се не може ажурирати, неопходно је да садржи бар једну цифру!',
        'Can\'t update password, needs at least 2 characters!' => 'Лозинка се не може ажурирати. Недостају најмање два знака!',
        'Can\'t update password, your new passwords do not match! Please try again!' =>
            'Лозинка се не може ажурирати, нова лозинка се не подудара! Молимо покушајте поново!',
        'Category Tree' => 'Стабло категорија',
        'Cc: (%s) added database email!' => 'Кк: (%s) додана имејл адреса из базе!',
        'Change %s settings' => 'Промени %s подешавања',
        'Change Time' => 'Промени време',
        'Change Times' => 'Промени времена',
        'Change free text of ticket' => 'Промени слободан текст за тикет',
        'Change owner of ticket' => 'Промени власника тикета',
        'Change priority of ticket' => 'Промени приоритет тикета',
        'Change responsible of ticket' => 'Промени одговорног за тикет',
        'Change the ticket customer!' => 'Промени корисника за тикет!',
        'Change the ticket owner!' => 'Промени власника тикета!',
        'Change the ticket priority!' => 'Промени приоритет тикета',
        'Change the ticket responsible!' => 'Промена одговорног за тикет!',
        'Change user <-> group settings' => 'Промена корисника <-> Подешавање групе',
        'ChangeLog' => 'Дневник промена',
        'Check Mail Configuration' => 'Провери конфигурацију имејла',
        'Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behind a dial-up line!' =>
            'Проверите "MX" записе употребљених имејл адреса  креирањем одговора. Немојте користити ову функцију ако је ваш "OTRS" сервер на "dial-up" линији.',
        'Child-Object' => 'Деца објекти',
        'City{CustomerUser}' => 'Место (корисник)',
        'Classification' => 'Класификација',
        'Clear From' => 'Од: обриши',
        'Clear To' => 'Обриши За:',
        'Click here to report a bug!' => 'Кликните овде за пријаву грешке!',
        'Close Times' => 'Времена затварања',
        'Close this ticket!' => 'Затвори овај тикет!',
        'Close ticket' => 'Затвори тикет',
        'Close type' => 'Тип затварања',
        'Close!' => 'Затвори!',
        'Comment (internal)' => 'Коментар (интерно)',
        'Comment{CustomerUser}' => 'Коментар',
        'Companies' => 'Фирме',
        'CompanyTickets' => 'Тикети фирме',
        'Compose Answer' => 'Напиши одговор',
        'Compose Email' => 'Напиши имејл',
        'Compose Follow up' => 'Направи наставак',
        'Config Options' => 'Конфигурационе опције',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Конфигурационе опције (нпр. <OTRS_CONFIG_HttpType>)',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Конфигурационе опције (нпр. <OTRS_CONFIG_HttpType).',
        'Contact customer' => 'Котактирајте корисника',
        'Country{CustomerUser}' => 'Држава (корисник)',
        'Create New Template' => 'Направи нови шаблон',
        'Create Times' => 'Времена отварања',
        'Create and manage notifications that are sent to agents.' => 'Креирање и управљање обавештењима за оператере.',
        'Create new Phone Ticket' => 'Отвори нови телефонски тикет',
        'Create new database' => 'Креирајте нову базу података',
        'Create your first Ticket' => 'Отворита ваш први тикет',
        'Create/Expires' => 'Креиран/Истиче',
        'CreateTicket' => 'Отварање тикета',
        'Current Impact Rating' => 'Оцена тренутног утицаја',
        'Customer Move Notify' => 'Обавештење о премештању корисника',
        'Customer User Management' => 'Управљање корисницима',
        'Customer Users <-> Groups' => 'Корисници <-> Групе',
        'Customer Users <-> Groups Management' => 'Корисници <-> Управљање групама',
        'Customer Users <-> Services' => 'Корисници <-> Сервиси',
        'Customer Users <-> Services Management' => 'Корисници <-> Управљање сервисима',
        'Customer history' => 'Историјат корисника',
        'Customer history search' => 'Претраживање историјата за корисника',
        'Customer history search (e. g. "ID342425").' => 'Претрага историјата корисника (нпр. "ID342425").',
        'Customer item (icon) which shows the open tickets of this customer as info block.' =>
            'Корисничка ставка (икона) која показује отворене тикете овог корисника као инфо блок.',
        'CustomerID{CustomerUser}' => 'ИД корисника.',
        'CustomerUser' => 'Корисник',
        'D' => 'D',
        'DB Admin Password' => 'Лозинка администратора БП',
        'DB Admin User' => 'ДБ Админстратор',
        'DB connect host' => 'Име или адреса ДБ сервера',
        'Default' => 'Подразумевано',
        'Default Charset' => 'Подразумевани карактерсет',
        'Default Language' => 'Подразумевани језик',
        'Default skin for otrs 3.0 interface.' => 'Подразумевани изглед "OTRS" 3.0 интерфејса.',
        'Defines the default selection of the free key field number 1 for articles (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 1 за чланке (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 1 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 1 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 10 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 10 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 11 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 11 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 12 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 12 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 13 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 13 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 14 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 14 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 15 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 15 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 16 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 16 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 2 for articles (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 2 за чланке (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 2 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 2 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 3 for articles (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 3 за чланке (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 3 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 3 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 4 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 4 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 5 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 5 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 6 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 6 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 7 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 7 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 8 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 8 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free key field number 9 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног кључа поља број 9 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 1 for articles (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 1 за чланке (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 1 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 1 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 10 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 10 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 11 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 11 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 12 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 12 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 13 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 13 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 14 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 14 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 15 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 15 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 16 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 16 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 2 for articles (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 2 за чланке (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 2 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 2 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 3 for articles (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 3 за чланке (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 3 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 3 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 4 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 4 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 5 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 5 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 6 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 6 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 7 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 7 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 8 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 8 за тикете (ако има више од једне могућности).',
        'Defines the default selection of the free text field number 9 for tickets (if more than one option is provided).' =>
            'Одређује подразумевани избор слободног текст поља број 9 за тикете (ако има више од једне могућности).',
        'Defines the free key field number 1 for tickets to add a new ticket attribute.' =>
            'Одређује слободно поље кључа број 1 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 1 for articles to add a new article attribute.' =>
            'Одређује слободно текст поље број 1 за чланке ради додавања новог атрибута чланка.',
        'Defines the free text field number 1 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 1 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 10 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 10 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 11 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 11 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 12 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 12 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 13 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 13 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 14 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 14 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 15 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 15 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 16 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 16 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 2 for articles to add a new article attribute.' =>
            'Одређује слободно текст поље број 2 за чланке ради додавања новог атрибута чланка.',
        'Defines the free text field number 2 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 2 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 3 for articles to add a new article attribute.' =>
            'Одређује слободно текст поље број 3 за чланке ради додавања новог атрибута чланка.',
        'Defines the free text field number 3 for ticket to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 3 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 4 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 4 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 5 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 5 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 6 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 6 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 7 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 7 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 8 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 8 за тикете ради додавања новог атрибута тикета.',
        'Defines the free text field number 9 for tickets to add a new ticket attribute.' =>
            'Одређује слободно текст поље број 9 за тикете ради додавања новог атрибута тикета.',
        'Defines the free time key field number 1 for tickets.' => 'Одређује слободно поље кључа времена број 1 за тикете.',
        'Defines the free time key field number 2 for tickets.' => 'Одређује слободно поље кључа времена број 2 за тикете.',
        'Defines the free time key field number 3 for tickets.' => 'Одређује слободно поље кључа времена број 3 за тикете.',
        'Defines the free time key field number 4 for tickets.' => 'Одређује слободно поље кључа времена број 4 за тикете.',
        'Defines the free time key field number 5 for tickets.' => 'Одређује слободно поље кључа времена број 5 за тикете.',
        'Defines the free time key field number 6 for tickets.' => 'Одређује слободно поље кључа времена број 6 за тикете.',
        'Defines the hours and week days of the calendar number 1, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 1, ради калкулација радног времена.',
        'Defines the hours and week days of the calendar number 2, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 2, ради калкулација радног времена.',
        'Defines the hours and week days of the calendar number 3, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 3, ради калкулација радног времена.',
        'Defines the hours and week days of the calendar number 4, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 4, ради калкулација радног времена.',
        'Defines the hours and week days of the calendar number 5, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 5, ради калкулација радног времена.',
        'Defines the hours and week days of the calendar number 6, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 6, ради калкулација радног времена.',
        'Defines the hours and week days of the calendar number 7, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 7, ради калкулација радног времена.',
        'Defines the hours and week days of the calendar number 8, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 8, ради калкулација радног времена.',
        'Defines the hours and week days of the calendar number 9, to count the working time.' =>
            'Одређује сате и дане у седмици за календар број 9, ради калкулација радног времена.',
        'Defines the http link for the free text field number 1 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 1 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 10 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 10 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 11 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 11 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 12 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 12 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 13 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 13 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 14 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 14 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 15 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 15 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 16 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 16 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 2 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 2 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 3 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 3 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 4 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 4 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 5 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 5 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 6 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 6 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 7 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 7 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 8 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 8 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the http link for the free text field number 9 for tickets (it will be used in every ticket view).' =>
            'Одређује "http" везу за поље слободног текста број 9 за тикете (бише кориштено у сваком прегледу тикета).',
        'Defines the name of the calendar number 1.' => 'Одређује назив календара број 1.',
        'Defines the name of the calendar number 2.' => 'Одређује назив календара број 2.',
        'Defines the name of the calendar number 3.' => 'Одређује назив календара број 3.',
        'Defines the name of the calendar number 4.' => 'Одређује назив календара број 4.',
        'Defines the name of the calendar number 5.' => 'Одређује назив календара број 5.',
        'Defines the name of the calendar number 6.' => 'Одређује назив календара број 6.',
        'Defines the name of the calendar number 7.' => 'Одређује назив календара број 7.',
        'Defines the name of the calendar number 8.' => 'Одређује назив календара број 8.',
        'Defines the name of the calendar number 9.' => 'Одређује назив календара број 9.',
        'Defines whether the free time field number 1 is optional or not.' =>
            'Одређује да ли је слободно поље времена број 1 опционо или не.',
        'Defines whether the free time field number 2 is optional or not.' =>
            'Одређује да ли је слободно поље времена број 2 опционо или не.',
        'Defines whether the free time field number 3 is optional or not.' =>
            'Одређује да ли је слободно поље времена број 3 опционо или не.',
        'Defines whether the free time field number 4 is optional or not.' =>
            'Одређује да ли је слободно поље времена број 4 опционо или не.',
        'Defines whether the free time field number 5 is optional or not.' =>
            'Одређује да ли је слободно поље времена број 5 опционо или не.',
        'Defines whether the free time field number 6 is optional or not.' =>
            'Одређује да ли је слободно поље времена број 6 опционо или не.',
        'Delay time between autocomplete queries.' => 'Време задржавања између самокомплетирајућих упита.',
        'Delete old database' => 'Обриши стару базу података',
        'Delete this ticket!' => 'Обриши овај тикет!',
        'Detail' => 'Детаљи',
        'Diff' => 'Разлике',
        'Discard all changes and return to the compose screen' => 'Одустаните од свих промена и вратите се на прозор за писање.',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' =>
            'Отпеми ил филтрирај долазне порукена основу "X-Headers"! "RegExp" је такође могућ.',
        'Do you really want to delete this Object?' => 'Да ли стварно желите да обришете овај објект?',
        'Do you really want to reinstall this package (all manual changes get lost)?' =>
            'Да ли стварно желите да реинсталирате овај пакет (све ручне промене ће бити изгубљене)?',
        'Don\'t forget to add a new response a queue!' => 'Не заборавите да нови одговор додате у ред!',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Не заборавите да додате новог корисника у групе и улоге!',
        'Don\'t forget to add a new user to groups!' => 'Не заборавите да додате новог корисника некој групи!',
        'Don\'t work with UserID 1 (System account)! Create new users!' =>
            'Молимо да не користите "UserID 1" (Системски налог) за рад! Направите нове налоге!',
        'Download Settings' => 'Преузмите подешавања',
        'Drop Database' => 'Обриши базу података',
        'Dynamic-Object' => 'Динамички објекат',
        'Edit Customers' => 'Уреди кориснике',
        'Edit default services.' => 'Уреди подразумеване сервисе.',
        'Email based' => 'На основу имејла',
        'Email of the system admin.' => 'имејл адреса администратора система.',
        'Email{CustomerUser}' => 'имејл (корисник)',
        'Escalation - First Response Time' => 'Ескалација - Време реакције',
        'Escalation - Solution Time' => 'Ескалација - Време решавања',
        'Escalation - Update Time' => 'Ескалација - Време ажурирања',
        'Escalation Times' => 'Времена ескалације',
        'Escalation time' => 'Време ескалације',
        'Event is required!' => 'Догађај је обавезан!',
        'Explanation' => 'Објашњење',
        'Export Config' => 'Извоз конфигурације',
        'FAQ Search Result' => 'Резултат претраге "FAQ"',
        'FAQ System History' => 'Историјат "FAQ" система',
        'Fax{CustomerUser}' => 'Факс (корисник)',
        'File-Name' => 'Назив датотеке',
        'File-Path' => 'Путања до датотеке',
        'Filelist' => 'Листа датотека',
        'Filter for Language' => 'Филтер за језик',
        'Filtername' => 'Назив филтера',
        'Firstname{CustomerUser}' => 'Име (корисник)',
        'Follow up' => 'Наставак',
        'For very complex stats it is possible to include a hardcoded file.' =>
            'За веома сложене статистике могуће је придружити наменски програмирану датотеку.',
        'Forward ticket: ' => 'Проследи тикет',
        'Foward ticket: ' => 'Проследи тикет',
        'Frontend' => 'Интерфејс',
        'Full qualified domain name of your system.' => 'Пуно квалификовано име домена вашег система нпр "otrs-server.example.org"',
        'Go' => 'Иди',
        'Go to group %s' => 'Иди на групу %s',
        'Group %s' => 'Група %s',
        'Group Ro' => 'Група "ro"',
        'Group based' => 'На основу групе',
        'Group selection' => 'Избор групе',
        'Hash/Fingerprint' => '"Hash"/Отисак',
        'Have a lot of fun!' => 'Уживајте!',
        'Have you lost your password?' => 'Да ли сте изгубили вашу лозинку?',
        'Help' => 'Помоћ',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
            'Овде можете подесити X осу. Можете изабрати један елемент од понуђених опција. Уколико ништа не изаберете, сви елементи ће бити употртебљени ако правите статистику. Такође, нови атрибут је додан након последње конфигурације.',
        'Here you can insert a description of the stat.' => 'Овде можете унети опис статистике.',
        'Here you can select the dynamic object you want to use.' => 'Овде можете изабрати динамичке објекте које желите да користите.',
        'Home' => 'Почетна',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' =>
            'Ако је нова програмирана датотека доступна, овај атрибут ће бити приказан и моћи ћете да изаберете један.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' =>
            'Ако је тикет затворен, а корисник пошаље наставак, тикет ће бити закључан за старог власника.',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' =>
            'Ако неће бити одговорено на тикет у овом времену, онда ће само овај тикет бити приказан.',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' =>
            'Ако оператер закључа тикет и не одговори за ово време, тикет ће аутоматски бити откључан. Овај тикет је онда видљив свим другим оператерима.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' =>
            'Ако ништа није изабрано, онда нема ни дозвола у овој групи (тикети неће бити доступни за корисника).',
        'If you need the sum of every column select yes.' => 'Уколико вам је потребна сума сваке колоне, изаберите "Да".',
        'If you need the sum of every row select yes' => 'Ако вам је потребна сума сваког реда, изаберите "Да".',
        'Image' => 'Слика',
        'Important' => 'Важно',
        'Imported' => 'Увезено',
        'Imported by' => 'Увезао',
        'In order to experience OTRS, you\'ll need to enable Javascript in your browser.' =>
            'Како би сте максимално искористили све могућности "OTRS" система, потребно је да активрате Јава скрипт у вашем Web читачу.',
        'In this form you can select the basic specifications.' => 'Ово је место за избор општих података.',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' =>
            'На овај начин можете непосредно уредити кључеве подешене у датотеци "Kernel/Config.pm".',
        'Inbound Mail Password' => 'Лозинка долазне поште',
        'Inbound Mail Type' => 'Тип долазне поште',
        'Inbound Mail User' => 'Прималац поште',
        'Inbound Mail host' => 'рачунар домаћин долазне поште',
        'Information about the Stat' => 'Информације о статистици',
        'Insert of the common specifications' => 'Унос општих података',
        'Instance' => 'Инстанца',
        'Is Job Valid' => 'Да ли је посао важећи',
        'Is Job Valid?' => 'Да ли је посао важећи?',
        'It\'s useful for ASP solutions.' => 'Корисно за "ASP" решења.',
        'Job-List' => 'Листа послова',
        'Keyword' => 'Кључна реч',
        'Keywords' => 'Кључне речи',
        'Kill session' => 'Прекини сесију',
        'Last update' => 'Последње ажурирање',
        'Lastname{CustomerUser}' => 'Презиме (корисник)',
        'Link Table' => 'Табела веза',
        'Link this ticket to an other objects!' => 'Повежи овај тикет са другим објектима!',
        'Link this ticket to other objects!' => 'Повежи овај тикет са другим објектима!',
        'Link to Parent' => 'Повежи са родитељем',
        'LinkType' => 'Тип везе',
        'Linked as' => 'Повезано као',
        'Load' => 'Учитај',
        'Load Settings' => 'Учитај подешавања',
        'Lock it to work on it!' => 'Закључај ради ексклузивне обраде!',
        'Logfile' => 'Дневник',
        'Logfile just needed for File-LogModule!' => 'Датотека дневника је неопходна за Модул дневника.',
        'Logfile too large, you need to reset it!' => 'Датотека дневника је превелика, треба да је ресетујете!',
        'Login failed! Your username or password was entered incorrectly.' =>
            'Неуспешна пријава! Ваше корисничко име или лозинка су нетачно унети.',
        'Lookup' => 'Проналажење',
        'Mail Management' => 'Управљање поштом',
        'Mailbox' => 'Поштанско сандуче',
        'Match' => 'Поклапање',
        'Max. displayed tickets' => 'Максимални број приказаних тикета',
        'Max. shown Tickets a page' => 'Максимални број тикета по страни',
        'Merge this ticket!' => 'Споји овај тикет!',
        'Message for new Owner' => 'Порука за новог власника',
        'Message sent to' => 'Порука послата за',
        'Misc' => 'Остало',
        'Mobile{CustomerUser}' => 'Мобилни (корисник)',
        'Modified' => 'Промењено',
        'Modules' => 'Модули',
        'Move notification' => 'Премештање обавештења',
        'Multiple selection of the output format.' => 'Вишеструки избор излазног формата.',
        'My Queue' => 'Мој ред',
        'MyTickets' => 'Моји тикети',
        'Name is required!' => 'Име је обавезно!',
        'Need a valid email address or don\'t use a local address!' => 'Неопходна је исправна имејл адреса или немојте користити локалну адресу!',
        'Need a valid email address or don\'t use a local email address' =>
            'Исправна имејл адреса је неопходна или не користите локалну адресу!',
        'New Agent' => 'Нови оператер',
        'New Customer' => 'Нови корисник',
        'New Group' => 'Нова група',
        'New Group Ro' => 'Нова група "Ro"',
        'New Password' => 'Нова лозинка',
        'New Priority' => 'Нов приоритет',
        'New SLA' => 'Нови "SLA"',
        'New Service' => 'Нови сервис',
        'New State' => 'Нови статус',
        'New Ticket Lock' => 'Закључавање нових тикета',
        'New TicketFreeFields' => 'Слободна поља новог тикета',
        'New Title' => 'Нови наслов',
        'New Type' => 'Нови тип',
        'New account created. Sent Login-Account to %s.' => 'Направљен нови налог. Подаци за пријаву послати %s.',
        'New messages' => 'Нове поруке',
        'New password again' => 'Нова лозинка (поново)',
        'Next Week' => 'Следећа седмица',
        'No * possible!' => 'Није "*" могуће!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' =>
            'У мрежном спремишту нема пакета за тражени систем, ту су само пакети за друге верзије.',
        'No Permission' => 'Нема дозволе',
        'No matches found' => 'Ништа није пронађено',
        'No time settings.' => 'Нема подешавања времена.',
        'Node-Name' => 'Назив чвора',
        'Note Text' => 'Текст напомене',
        'Notification (Customer)' => 'Обавештење (корисник)',
        'Notifications' => 'Обавештења',
        'OTRS DB Password' => '"OTRS" БП Лозинка',
        'OTRS sends an notification email to the customer if the ticket is moved.' =>
            '"OTRS" шаље обавештење кориснику ако је тикет премештен.',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' =>
            '"OTRS" шаље обавештење кориснику ако је промењен власник тикета.',
        'OTRS sends an notification email to the customer if the ticket state has changed.' =>
            '"OTRS" шаље имејл са обавештењем кориснику уколико се промени статус тикета.',
        'Object already linked as %s.' => 'Објекат је већ повезан као %s.',
        'Of couse this feature will take some system performance it self!' =>
            'Када је ова функција активна, заузеће део системских перформанси.',
        'One or more errors occured!' => 'Догодила се јадна или више грешака!',
        'Only for ArticleCreate Event.' => 'Само за догађај креирања чланка.',
        'Open Tickets' => 'Отворени тикети',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' =>
            'Опције за податке актуелног корисника (нпр. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' =>
            'Опције података за актуелног корисника (нпр. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' =>
            'Подешавања за корисника који је захтевао ову акцију (нпр. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' =>
            'Информације о актуелном кориснику који је тражио ову акцију (нпр. <OTRS_CURRENT_UserFirstname>)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' =>
            'Опције пдатака о тикету (нпр. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' =>
            'Опције података о тикету (нпр. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' =>
            'Опције података о тикету (нпр. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Other Options' => 'Друге опције',
        'Out Of Office' => 'Ван канцеларије',
        'Outbound Mail Type' => 'Тип одлазне поште',
        'POP3 Account Management' => 'Управљање "POP3" налозима',
        'Package' => 'Пакет',
        'Package not correctly deployed! You should reinstall the Package again!' =>
            'Пакет није коректно инсталиран! Требало би га да поново инсталирате!',
        'Package not correctly deployed! You should reinstall the package again!' =>
            'Пакет није исправно смештен. Требало би да га инсталирате поново!',
        'Param 1' => 'Парам 1',
        'Param 2' => 'Парам 2',
        'Param 3' => 'Парам 3',
        'Param 4' => 'Парам 4',
        'Param 5' => 'Парам 5',
        'Param 6' => 'Парам 6',
        'Parent-Object' => 'Објекат родитељ',
        'Password for Inbound Mail' => 'Лозинка за долазну пошту',
        'Password for SMTP Auth' => 'Лозинка за "SMTP" аутентикацију',
        'Password is already used! Please use an other password!' => 'Ова лозинка је већ у употреби, молимо одаберите неку другу!!',
        'Passwords doesn\'t match! Please try it again!' => 'Лозинке се не поклапају! Молимо покушајте поново!',
        'Pending Times' => 'Времена чекања',
        'Pending messages' => 'Поруке на чекању',
        'Pending type' => 'Тип чекања',
        'Permissions to change the ticket owner in this group/queue.' => 'Право на промену власника тикета у овој Групи/Реду.',
        'PhoneView' => 'Преглед телефона',
        'Phone{CustomerUser}' => 'Телефон (корисник)',
        'Please contact your admin' => 'Молимо контактирајте вашег администратора',
        'Please enter subject.' => 'Молимо унесите предмет поруке.',
        'Please fill out this form to recieve login credentials.' => 'Молимо, попуните овај формулар како би сте добили податке за пријаву.',
        'Print this ticket!' => 'Штампај овај тикет!',
        'Prio' => 'Приоритет',
        'Process-Path' => 'Prozess-Path',
        'Product' => 'Производ',
        'Queue <-> Auto Responses Management' => 'Ред <-> Управљање аутоматским одговорима',
        'Queue Management' => 'Управљање редовима',
        'Queue is required.' => 'Ред је обавезан.',
        'QueueView Refresh Time' => 'време освежабања прегледа реда',
        'Queues <-> Auto Responses' => 'Queues <-> Auto Antworten',
        'Realname' => 'Право име',
        'Rebuild' => 'Направи поново',
        'Recipients' => 'Примаоци',
        'Reminder' => 'Подсетник',
        'Reminder messages' => 'Поруке подсетника',
        'Remove from list of subscribed tickets' => 'Уклони са листе претплате',
        'Reporter' => 'Melder',
        'Required Field' => 'Обавезно поље',
        'Required!' => 'Обавезно!',
        'Response Management' => 'Управљање одговорима',
        'Responses <-> Attachments Management' => 'Одговори <-> Управљање прилозима',
        'Responses <-> Queue Management' => 'Одговори <-> Управљање редовима',
        'Role' => 'Улога',
        'Roles <-> Agents' => 'Rollen <-> Agenten',
        'Roles <-> Groups Management' => 'Улоге <-> Управљање групама',
        'Roles <-> Users' => 'Улоге <-> Корисници',
        'Roles <-> Users Management' => 'Улоге <-> Управљање корисницима',
        'Run Search' => 'Покрени претрагу',
        'SMTP Auth Password' => '"SMTP" Лозинка',
        'Save Job as?' => 'Сачувај посао као?',
        'Save Search-Profile as Template?' => 'Сачувај профил претраге као шаблон?',
        'Schedule' => 'Распоред',
        'Search Result' => 'Резултат претраге',
        'Search Ticket' => 'Претраживање тикета',
        'Search for' => 'Потрага за',
        'Search for customers (wildcards are allowed).' => 'Нађи корисника (џокер знаци су дозвољени).',
        'Search-Profile as Template?' => 'Профил претраживања као шаблон?',
        'Secure Mode need to be enabled!' => 'Потребно је активирати сигуран мод!',
        'Select Box' => 'Оквир за избор',
        'Select Box Result' => 'Select Box Ergebnis',
        'Select Source (for add)' => 'Изабери извор (за додавање)',
        'Select inbound mail type' => 'Изабери тип долазне поште',
        'Select outbound mail type' => 'Изабери тип одлазне поште',
        'Select the customeruser:service relations.' => 'Изаберите Корисник:сервис везе.',
        'Select the element, which will be used at the X-axis' => 'Изабери елемент који ће бити употребљен на X-оси.',
        'Select the restrictions to characterise the stat' => 'Изаберите ограничења која карактеришу статистику',
        'Select the role:user relations.' => 'Изаберите улогу:корисничке везе.',
        'Select the user:group permissions.' => 'Изаберите корисника:групне дозволе.',
        'Select your QueueView refresh time.' => 'Одаберите време освежавања прегледа реда.',
        'Select your default spelling dictionary.' => 'Одаберите подразумевани речник за проверу правописа.',
        'Select your frontend Charset.' => 'Изаберите карактерсет вашег интерфејса.',
        'Select your frontend QueueView.' => 'Изаберите преглед реда.',
        'Select your frontend language.' => 'Изаберите језик интерфејса.',
        'Select your out of office time.' => 'Одаберите ваше ванрадно време.',
        'Select your screen after creating a new ticket.' => 'Изаберите прозор који се приказује након отварања новог тикета.',
        'Selection needed' => 'Неопходан избор',
        'Send Administrative Message to Agents' => 'Пошаљи административну поруку запосленима.',
        'Send Notification' => 'Пошаљи обавештење',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' =>
            'Обавести ме уколико корисник пошаље наставак, а ја сам власник овог тикета.',
        'Sent new password to: ' => 'Пошаљи нову лозинку за: ',
        'Sent new password to: %s' => 'Послата нова лозинка за %s.',
        'Sent password reset instructions to %s. Please check your email.' =>
            'Упутство за ресет лозинке послато за %s. Молимо проверите ваш е-мејл.',
        'Sent password token to: %s' => 'Послана лозинка за: %s.',
        'Service-Name' => 'Назив сервиса',
        'Sessions' => 'Сесије',
        'Set customer user and customer id of a ticket' => 'Подеси корисника и кориснички ИД за тикет',
        'Set this ticket to pending!' => 'Стави овај тикет на чекање!',
        'Show' => 'Прикажи',
        'Shows the ticket history!' => 'Прикажи историјат тикета!',
        'Site' => 'Страна',
        'Solution' => 'Решење',
        'Sort by' => 'Сортирано по',
        'Source' => 'Извор',
        'Spell Check' => 'Провера правописа',
        'Split' => 'Подели',
        'State Type' => 'Тип стања',
        'Static-File' => 'Статична датотека',
        'Stats-Area' => 'Простор статистике',
        'Step %s of %s' => 'Корак %s од %s',
        'Street{CustomerUser}' => 'Улица (корисник)',
        'Sub-Queue of' => 'Суб-ред од',
        'Sub-Service of' => 'Субсервис од',
        'Subscribe' => 'Претплати се',
        'System State Management' => 'Управљање статусом система',
        'System Status' => 'Статус система',
        'Systemaddress' => 'Системска адреса',
        'Take care that you also updated the default states in you Kernel/Config.pm!' =>
            'Побрините се да ажурирате и подразумеване статусе у "Kernel/Config.pm" датотеци!',
        'Text is required!' => 'Текст је обавезан',
        'The Ticket was locked' => 'Тикет је закључан',
        'The User Name you wish to have' => 'Корисничко име које би сте желели',
        'The customer id is required!' => 'ИД корисника је обавезан!',
        'The customer is required!' => 'Корисник је обавезан!',
        'The customer is required.' => 'Корисник је обавезан.',
        'The field is required.' => 'Поље је обавезно.',
        'The identify of the system. Each ticket number and each http session id starts with this number.' =>
            'Идентитет система. Сваки број тикета и сваки ИД "HTTP" сесије почиње са овим бројем.',
        'The message being composed has been closed.  Exiting.' => 'Порука која се пише је затворена.',
        'The subject is required!' => 'Предмет је обавезан!',
        'The subject is required.' => 'Предмет је обавезан.',
        'The text is required!' => 'Текст је обавезан!',
        'The text is required.' => 'Текст је обавезан.',
        'These values are read-only.' => 'Ове вредности су само за читање.',
        'These values are required.' => 'Ове вредности су обавезне.',
        'This account exists.' => 'Овај налог постоји.',
        'This email address already exists. Please log in or reset your password..' =>
            'Ова имејл адреса већ постоји. Молимо, пријавите се или ресетујте вашу лозинку',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' =>
            'Ово је корисно уколико не желите да ико види резултате статистике или конфигурација статистике није завршена.',
        'Ticket Information' => 'Информације о тикету',
        'Ticket Lock' => 'Закључан тикет',
        'Ticket Number Generator' => 'Генератор броја тикета',
        'Ticket Search' => 'Претрага тикета',
        'Ticket Status View' => 'Преглед статуса тикета',
        'Ticket Type is required!' => 'Тип тикета је обавезан!',
        'Ticket escalation!' => 'Ескалација тикета!',
        'Ticket locked!' => 'Закључан тикет!',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' =>
            'Опције власника тикета (нпр. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Детаљи о опцијама власника (z. B. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' =>
            'Опције о одговорности за тикет (z. B.<OTRS_RESPONSIBLE_UserFirstname>).',
        'Ticket selected for bulk action!' => 'Тикет изабран за масовну акцију',
        'Ticket type is required.' => 'Тип тикета је обавезан.',
        'Ticket unlock!' => 'Откључавање тикета!',
        'Ticket#' => 'Тикет Бр.',
        'Ticket-Area' => 'Простор тикета',
        'TicketFreeFields' => 'Слободна поља у тикету',
        'TicketFreeText' => 'TicketFreeText',
        'TicketZoom' => 'Садржај тикета',
        'Tickets available' => 'Доступне картице',
        'Tickets shown' => 'Приказани тикети',
        'Tickets which need to be answered!' => 'Тикети на које треба одговорити!',
        'Time units is a required field!' => 'Временске јединице су обавезно поље.',
        'Time units is a required field.' => 'Временске јединице су обавезно поље.',
        'Time units is required field.' => 'Временске јединице су обавезно поље.',
        'Time1' => 'Време1',
        'Time2' => 'Време2',
        'Time3' => 'Време3',
        'Time4' => 'Време4',
        'Time5' => 'Време5',
        'Time6' => 'Време6',
        'Times' => 'Времена',
        'Title is required.' => 'Наслов је обавезан.',
        'Title of the stat.' => 'Наслов статистике.',
        'Title{CustomerUser}' => 'Титула (корисник)',
        'Title{user}' => 'Титула',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' =>
            'Да би видели атрибуте чланка (нпр. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> und <OTRS_AGENT_Body>).',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' =>
            'Die Artikel Attribute (z. B. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).',
        'To get the first 5 lines of the body (последњег чланка запосленог).' =>
            'Да видите првих 5 линија поруке (последњег чланка запосленог).',
        'To protect your privacy, active or/and remote content has blocked.' =>
            'Ради заштите ваше приватности, активни или/и удаљени садржај је блокиран.',
        'To: (%s) replaced with database email!' => 'За: (%s) замењено имејл адресом из базе!',
        'Top of Page' => 'Врх стране',
        'Total hits' => 'Укупно погодака',
        'U' => 'U',
        'Unable to parse Online Repository index document!' => 'Није могуће рашчланити индекс мрежног складишта!',
        'Unlock Tickets' => 'Откључај тикете',
        'Unlock to give it back to the queue!' => 'Откључај да би је вратио у ред!',
        'Unsubscribe' => 'Откажи претплату',
        'Use utf-8 it your database supports it!' => 'Користите "utf-8" само ако га ваша база података подржава!',
        'Useable options' => 'Употребљиве опције',
        'Used default language.' => 'Употребљени подразумевани језик.',
        'Used log backend.' => 'Употребљена метода бележења дневника.',
        'User Management' => 'Управљање корисницима',
        'User for Inbound Mail' => 'Корисник за пријем поште',
        'User will be needed to handle tickets.' => 'Неопходан је оператер за обраду тикета.',
        'User-Name' => 'Корисничко име',
        'User-Number' => 'Корисник број',
        'Username for SMTP Auth' => 'Корисничко име за "SMTP" аутентикацију',
        'Username{CustomerUser}' => 'Корисничко име (корисник)',
        'Users' => 'Корисници',
        'Users <-> Groups' => 'Корисници <-> Групе',
        'Users <-> Groups Management' => 'Корисници <-> Управљање групама',
        'Verify New Password' => 'Потврди нову лозинку',
        'Warning! This tickets will be removed from the database! This tickets are lost!' =>
            'Пажња! Ови тикети ће бити уклоњени из базе и трајно изгубљени!',
        'Watch notification' => 'Праћење обавештења',
        'Web-Installer' => 'Web-Инсталација',
        'Welcome to OTRS' => 'Добродошли у "OTRS"',
        'Wildcards are allowed.' => 'Џокер знакови су дозвољени.',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' =>
            'Уносом и избором поља можете конфигурисати статистику према вашим потреама. Које елементе статистике можете мењати зависи од администратора који је конфигурисао статистику.',
        'Workflow Groups' => '"Workflow" Групе',
        'Yes, save it with name' => 'Да, сачувај са именом',
        'You as the customer have the ability to let us support staff people jump around as you wish because it\'s all about you. We stop eating if you wish us to do. Your way to communicate with us is this thing called \'ticket\'. Please command us.' =>
            'Би као корисник имате привилегију да будете у центру пажње особља техничке подршке. Учинићемо све како би Ви били задовољни. Начин да ефикасно комуницирате са нама је ова ствар кој се зове "тикет". Молимо вас, пренесите нам ваш проблем.',
        'You got new message!' => 'Примили сте нову поруку!',
        'You have not created a ticket yet.' => 'Још увек нисте отворили тикет.',
        'You need a to: recipient!.' => 'Прималац, поље "За:" је обавезно!',
        'You need to account time!' => 'Потребно је да се обрачуна време!',
        'You need to activate %s first to use it!' => 'Морате активирати %s пре употребе!',
        'Your Password' => 'Ваша лозинка',
        'Your email address is new' => 'Ваша имејл адреса је нова',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' =>
            'Ваш имејл са тикетом број "<OTRS_TICKET>" је преусмерен за "<OTRS_BOUNCE_TO>". Контактирајте на ту адресу за додатне информације.',
        'Your language' => 'Ваш језик',
        'Your own Ticket' => 'Ваш тикет',
        'Zip{CustomerUser}' => 'ПБ (корисник)',
        'customer realname' => 'право име корисника',
        'delete' => 'обриши',
        'delete links' => 'Обриши везе',
        'down' => 'доле',
        'false' => 'false',
        'for agent firstname' => 'за име запосленог',
        'for agent lastname' => 'за презиме запосленог',
        'for agent login' => 'за пријаву запослених',
        'for agent user id' => 'за кориснички ИД запосленог',
        'go back' => 'назад',
        'kill all sessions' => 'Затвори све сесије',
        'modified' => 'промењено',
        'new ticket' => 'Нови тикет',
        'next step' => 'наредни корак',
        'not rated' => 'није оцењено',
        'not verified' => 'није проверено',
        'read' => 'читај',
        'send' => 'Пошаљи',
        'sort downward' => 'сортирај опадајуће',
        'sort upward' => 'сортирај растуће',
        'tmp_lock' => 'закључавање (привремено)',
        'to get the first 20 character of the subject' => 'Да видите првих 20 слова предмета',
        'to get the first 5 lines of the email' => 'да видите првих 5 линија поруке',
        'to get the realname of the sender (if given)' => 'да видите право име пошиљаоца (ако је могуће)',
        'unknown' => 'непознато',
        'unread' => 'непрочитано',
        'up' => 'укључено',
        'utf8' => '"utf8"',
        'verified' => 'проверено',
        'x' => 'x',

    };
    # $$STOP$$
    return;
}

1;
