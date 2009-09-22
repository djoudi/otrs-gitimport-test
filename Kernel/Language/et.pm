# --
# Kernel/Language/et.pm - provides Estonian language translation
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: et.pm,v 1.27.2.1 2009-09-22 13:04:55 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
package Kernel::Language::et;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.27.2.1 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sat Jun 27 13:55:09 2009

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%T - %D.%M.%Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => 'Jah',
        'No' => 'Ei',
        'yes' => 'jah',
        'no' => 'ei',
        'Off' => 'V�lja',
        'off' => 'v�lja',
        'On' => 'Sisse',
        'on' => 'Sisse',
        'top' => '�les',
        'end' => 'alla',
        'Done' => 'Tehtud',
        'Cancel' => 'Katkesta',
        'Reset' => 'Reset',
        'last' => 'Viimane',
        'before' => 'enne',
        'day' => 'p�ev',
        'days' => 'p�eva',
        'day(s)' => 'p�ev(a)',
        'hour' => 'tund',
        'hours' => 'tundi',
        'hour(s)' => 'tund(i)',
        'minute' => 'minut',
        'minutes' => 'minutit',
        'minute(s)' => 'minut(it)',
        'month' => 'kuu',
        'months' => 'kuud',
        'month(s)' => 'kuu(d)',
        'week' => 'n�dal',
        'week(s)' => 'n�dal(at)',
        'year' => 'aasta',
        'years' => 'aastat',
        'year(s)' => 'aasta(t)',
        'second(s)' => 'sekund(it)',
        'seconds' => 'sekundit',
        'second' => 'sekund',
        'wrote' => 'kirjutas',
        'Message' => 'Teade',
        'Error' => 'Viga',
        'Bug Report' => 'Veateade',
        'Attention' => 'T�helepanu',
        'Warning' => 'Hoiatus',
        'Module' => 'Moodul',
        'Modulefile' => 'Moodulifail',
        'Subfunction' => 'Alamfunktsioon',
        'Line' => 'Rida',
        'Setting' => '',
        'Settings' => '',
        'Example' => 'N�ide',
        'Examples' => 'N�ited',
        'valid' => 'kehtiv',
        'invalid' => 'kehtetud',
        '* invalid' => '* kehtetud',
        'invalid-temporarily' => 'ajutiselt kehtetu',
        ' 2 minutes' => ' 2 minutit',
        ' 5 minutes' => ' 5 minutit',
        ' 7 minutes' => ' 7 minutit',
        '10 minutes' => '10 minutit',
        '15 minutes' => '15 minutit',
        'Mr.' => 'Hr.',
        'Mrs.' => 'Pr.',
        'Next' => 'Edasi',
        'Back' => 'Tagasi',
        'Next...' => 'Edasi...',
        '...Back' => '...Tagasi',
        '-none-' => '-puudub-',
        'none' => 'puudub',
        'none!' => 'puudub!',
        'none - answered' => 'puudub - vastatud',
        'please do not edit!' => 'Palun �ra muuda!',
        'AddLink' => 'Lisa viide',
        'Link' => 'Viide',
        'Unlink' => '',
        'Linked' => 'Viidatud',
        'Link (Normal)' => 'Viide (tavaline)',
        'Link (Parent)' => 'Viide (�lem)',
        'Link (Child)' => 'Viide (alam)',
        'Normal' => 'Tavaline',
        'Parent' => '�lem',
        'Child' => 'Alam',
        'Hit' => 'Hit',
        'Hits' => 'Hits',
        'Text' => 'Tekst',
        'Lite' => 'Kerge',
        'User' => 'Kasutaja',
        'Username' => 'Kasutajanimi',
        'Language' => 'Keel',
        'Languages' => 'Keeled',
        'Password' => 'Parool',
        'Salutation' => 'Salutation',
        'Signature' => 'Signatuur',
        'Customer' => 'Klient',
        'CustomerID' => 'Kliendi nr.',
        'CustomerIDs' => 'Kliendi nr-d',
        'customer' => 'klient',
        'agent' => 't��taja',
        'system' => 's�steem',
        'Customer Info' => 'Kliendiinfo',
        'Customer Company' => 'Kliendi ettev�te',
        'Company' => 'Ettev�te',
        'go!' => 'Start!',
        'go' => 'Start',
        'All' => 'K�ik',
        'all' => 'k�ik',
        'Sorry' => 'Vabandust',
        'update!' => 'uuenda!',
        'update' => 'uuenda',
        'Update' => 'Uuenda',
        'Updated!' => '',
        'submit!' => 'salvesta!',
        'submit' => 'salvesta',
        'Submit' => 'Salvesta',
        'change!' => 'muuda!',
        'Change' => 'Muuda',
        'change' => 'muuda',
        'click here' => 'kliki siia',
        'Comment' => 'Kommentaar',
        'Valid' => 'Kehtiv',
        'Invalid Option!' => 'Vale valik!',
        'Invalid time!' => 'Vigane aeg!',
        'Invalid date!' => 'Vigane kuup�ev!',
        'Name' => 'Nimi',
        'Group' => 'Grupp',
        'Description' => 'Kirjeldus',
        'description' => 'kirjeldus',
        'Theme' => 'Teema',
        'Created' => 'Tehtud',
        'Created by' => 'Teinud:',
        'Changed' => 'Muudetud',
        'Changed by' => 'Muutnud:',
        'Search' => 'Otsi',
        'and' => 'ja',
        'between' => 'vahel',
        'Fulltext Search' => 'T�istekstiotsing',
        'Data' => 'Andmed',
        'Options' => 'Valikud',
        'Title' => 'Pealkiri',
        'Item' => 'Punkt',
        'Delete' => 'Kustuta',
        'Edit' => 'Muuda',
        'View' => 'Vaata',
        'Number' => 'Number',
        'System' => 'S�steem',
        'Contact' => 'Kontakt',
        'Contacts' => 'Kontaktid',
        'Export' => 'Eksport',
        'Up' => '�les',
        'Down' => 'Alla',
        'Add' => 'Lisa',
        'Added!' => '',
        'Category' => 'Kategooria',
        'Viewer' => 'Vaataja',
        'Expand' => '',
        'New message' => 'Uus kiri',
        'New message!' => 'Uus kiri!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'Tagasi j�rjekorravaatesse saamiseks vasta nendele k�simustele!',
        'You got new message!' => 'Sulle on uus kiri!',
        'You have %s new message(s)!' => 'Sulle on %s uut kirja!',
        'You have %s reminder ticket(s)!' => 'Sulle on  %s meeldetuletust!',
        'The recommended charset for your language is %s!' => 'Teie keele jaoks soovitame kooditabelit %s!',
        'Passwords doesn\'t match! Please try it again!' => 'Paroolid ei ole samad! Palun proovi uuesti!',
        'Password is already in use! Please use an other password!' => 'Parool on juba kasutuses, palun kasuta teist parooli!',
        'Password is already used! Please use an other password!' => 'Parool oli juba kasutuses, palun kasuta teist parooli!',
        'You need to activate %s first to use it!' => 'Enne kui saad kasutada %s, pead selle aktiveerima !',
        'No suggestions' => 'Soovitust ei ole',
        'Word' => 'S�na',
        'Ignore' => 'Eira',
        'replace with' => 'asenda',
        'There is no account with that login name.' => 'Sellise nimega kontot ei ole.',
        'Login failed! Your username or password was entered incorrectly.' => 'Parool v�i kasutajanimi on vale.',
        'Please contact your admin' => 'Palun kontatkteeru administraatoriga',
        'Logout successful. Thank you for using OTRS!' => 'Lahkusid OTRSist, t�name kasutamise eest!',
        'Invalid SessionID!' => 'Vale SessionID!',
        'Feature not active!' => 'Omadus ei ole aktiveeritud!',
        'Notification (Event)' => 'Teavitus (Event)',
        'Login is needed!' => 'Esmalt logi sisse!',
        'Password is needed!' => 'Sisesta parool!',
        'License' => 'Litsens',
        'Take this Customer' => 'Kasuta seda klienti',
        'Take this User' => 'Kasuta seda kasutajat',
        'possible' => 'v�imalik',
        'reject' => 'l�kka tagasi',
        'reverse' => 'p��ra �mber',
        'Facility' => 'Facility',
        'Timeover' => 'Aeg l�bi',
        'Pending till' => 'Ootel kuni',
        'Don\'t work with UserID 1 (System account)! Create new users!' => '�ra t��ta kasutades UserID 1 (System Account)! Tee uus kasutaja!',
        'Dispatching by email To: field.' => 'Jaotamine To: p�iserea j�rgi.',
        'Dispatching by selected Queue.' => 'Jaotamine valitud j�rjekorra j�rgi.',
        'No entry found!' => 'Ei leidnud kirjet!',
        'Session has timed out. Please log in again.' => 'Sesesioon aegus. Palun logi uuesti sisse.',
        'No Permission!' => '�igust ei ole!',
        'To: (%s) replaced with database email!' => 'Saaja: (%s) asendatud aadressiga andmebaasist!',
        'Cc: (%s) added database email!' => 'Cc: (%s) lisasime aadresssi andmebaasist!',
        '(Click here to add)' => '(Lisamiseks kliki siia)',
        'Preview' => 'Eelvaade',
        'Package not correctly deployed! You should reinstall the Package again!' => 'Moodul ei toimi korrektselt! Peaksite mooduli uuesti paigaldama',
        'Added User "%s"' => 'Kasutaja "%s" lisatud.',
        'Contract' => 'Leping',
        'Online Customer: %s' => 'Online klient: %s',
        'Online Agent: %s' => 'Online t��taja: %s',
        'Calendar' => 'Kalender',
        'File' => 'Fail',
        'Filename' => 'Failinimi',
        'Type' => 'T��p',
        'Size' => 'Suurus',
        'Upload' => '�les laadimine',
        'Directory' => 'Kataloog',
        'Signed' => 'Alla kirjutanud',
        'Sign' => 'Kirjuta alla',
        'Crypted' => 'Kr�pteeritud',
        'Crypt' => 'Kr�pteeri',
        'Office' => 'Kontor',
        'Phone' => 'Telefon',
        'Fax' => 'Fax',
        'Mobile' => 'Mobiile',
        'Zip' => 'Postiindeks',
        'City' => 'Linn',
        'Street' => '',
        'Country' => 'Riik',
        'Location' => '',
        'installed' => 'paigaldatud',
        'uninstalled' => 'eemaldatud',
        'Security Note: You should activate %s because application is already running!' => 'Turvateadaanne: Peaksite aktiveerima %s kuna rakendus juba t��tab!',
        'Unable to parse Online Repository index document!' => 'Ei saa t��delda v�rgurepositooriumi indeksit!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!',
        'No Packages or no new Packages in selected Online Repository!' => 'No Packages or no new Packages in selected Online Repository!',
        'printed at' => 'tr�kitud',
        'Dear Mr. %s,' => '',
        'Dear Mrs. %s,' => '',
        'Dear %s,' => '',
        'Hello %s,' => '',
        'This account exists.' => 'See konto on juba olemas.',
        'New account created. Sent Login-Account to %s.' => 'Uus konto loodud. Saatsin andmed aadressile %s.',
        'Please press Back and try again.' => 'Palun vajuta tagasi-nuppu ja proovi uuesti.',
        'Sent password token to: %s' => 'Saada parool saajale: %s .',
        'Sent new password to: %s' => 'Saada parool kasutajale:.',
        'Upcoming Events' => '',
        'Event' => 'S�ndmus',
        'Events' => '',
        'Invalid Token!' => 'Vigane!',
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
        'Header' => 'P�is',
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
        'Jan' => 'Jaan',
        'Feb' => 'Veeb',
        'Mar' => 'M�r',
        'Apr' => 'Apr',
        'May' => 'Mai',
        'Jun' => 'Jun',
        'Jul' => 'Jul',
        'Aug' => 'Aug',
        'Sep' => 'Sept',
        'Oct' => 'Okt',
        'Nov' => 'Nov',
        'Dec' => 'Dets',
        'January' => 'Jaanuar',
        'February' => 'Veebruar',
        'March' => 'M�rts',
        'April' => 'Aprill',
        'May_long' => 'Mai',
        'June' => 'Juuni',
        'July' => 'Juuli',
        'August' => 'August',
        'September' => 'September',
        'October' => 'Oktoober',
        'November' => 'November',
        'December' => 'Detsember',

        # Template: AAANavBar
        'Admin-Area' => 'Haldusala',
        'Agent-Area' => 'T��taja-ala',
        'Ticket-Area' => 'Intsidendiala',
        'Logout' => 'Lahku',
        'Agent Preferences' => 'T��taja eelistused',
        'Preferences' => 'Eelistused',
        'Agent Mailbox' => 'T��taja kirjakast',
        'Stats' => 'Statistika',
        'Stats-Area' => 'Statistika',
        'Admin' => 'Haldus',
        'Customer Users' => 'Kliendikasutajad',
        'Customer Users <-> Groups' => 'Kliendikasutajad <-> grupid',
        'Users <-> Groups' => 'Kasutajad <-> grupid',
        'Roles' => 'Rollid',
        'Roles <-> Users' => 'Rollid <-> kasutajad',
        'Roles <-> Groups' => 'Rollid <-> grupid',
        'Salutations' => 'Salutations',
        'Signatures' => 'Allkirjad',
        'Email Addresses' => 'E-posti aadresid',
        'Notifications' => 'Teavitused',
        'Category Tree' => 'Kategooriapuu',
        'Admin Notification' => 'Haldaja teavitused',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Eelistuste uuendamine �nnestus!',
        'Mail Management' => 'E-posti haldus',
        'Frontend' => 'V�ljan�gemine',
        'Other Options' => 'Muud v�imalused',
        'Change Password' => 'Muuda parooli',
        'New password' => 'Uus parool',
        'New password again' => 'Uus parool (veelkord)',
        'Select your QueueView refresh time.' => 'Vali oma j�rjekorravaate v�rskendamiste vahe.',
        'Select your frontend language.' => 'Vali keel.',
        'Select your frontend Charset.' => 'Vali koodileht.',
        'Select your frontend Theme.' => 'Vali teema.',
        'Select your frontend QueueView.' => 'Vali j�rjekorravaade.',
        'Spelling Dictionary' => 'S�nastik',
        'Select your default spelling dictionary.' => 'Vali vaikimisi s�nastik.',
        'Max. shown Tickets a page in Overview.' => '�levaates korraga n�htavate intsidentide �lempiir.',
        'Can\'t update password, your new passwords do not match! Please try again!' => 'Ei saa uuendada parooli, paroolid ei ole samad. Palun proovi uuesti!',
        'Can\'t update password, invalid characters!' => 'Ei saa uuendada parooli, paroolis on keelatud m�rke.',
        'Can\'t update password, must be at least %s characters!' => 'Ei saa uuendada parooli, paroolis peab olema v�hemalt %s m�rki.',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => 'Ei saa uuendada parooli, paroolis peab olema v�hemalt 2 v�iket�hte ja 2 suurt�hte.',
        'Can\'t update password, needs at least 1 digit!' => 'Ei saa uuendada parooli, paroolis peab olema v�hemalt 1 number!',
        'Can\'t update password, needs at least 2 characters!' => 'Ei saa uuendada parooli, paroolis peab olema v�hemalt 2 t�hte!',

        # Template: AAAStats
        'Stat' => 'Statistika',
        'Please fill out the required fields!' => 'Palun t�ida n�utud v�ljad!',
        'Please select a file!' => 'Vali fail!',
        'Please select an object!' => 'Vali objekt!',
        'Please select a graph size!' => 'Vali graafiku suurus!',
        'Please select one element for the X-axis!' => 'Palun vali �ks element X-teljele!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Palun vali v�hemalt 1 element v�i l�lita v�lja nupp \'Fixed\'!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Kui kasutad checkboxi pead valima m�ne atribuudi ka valikuv�ljalt!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Palun sisesta v��rtus valitud v�ljale v�i l�lita v�lja nupp \'Fixed\'!',
        'The selected end time is before the start time!' => 'L�ppaeg on enne algusaega!',
        'You have to select one or more attributes from the select field!' => 'Pead valima v�hemalt �he atribuudi!',
        'The selected Date isn\'t valid!' => 'Valitud kuup�ev ei ole korrektne!',
        'Please select only one or two elements via the checkbox!' => 'Palun vali 1 kuni 2 elementi checkboxiga!',
        'If you use a time scale element you can only select one element!' => 'If you use a time scale element you can only select one element!!',
        'You have an error in your time selection!' => 'Valitud aeg on vigane!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'Raporti ajavahemik on liiga v�ike, palun kasuta suuremat!',
        'The selected start time is before the allowed start time!' => 'Valitud algusaeg on enne lubatud algusaega!',
        'The selected end time is after the allowed end time!' => ' Valitud l�ppaeg on peale lubatud l�ppaega!',
        'The selected time period is larger than the allowed time period!' => 'Valitud ajavahemik on pikem kui lubatud!',
        'Common Specification' => 'Common Specification',
        'Xaxis' => 'X-telg',
        'Value Series' => 'V��rtused',
        'Restrictions' => 'Piirangud',
        'graph-lines' => 'Joondiagramm',
        'graph-bars' => 'Tulpdiagramm',
        'graph-hbars' => 'Tulpdiagramm (horisontaalne)',
        'graph-points' => 'Punktdiagramm',
        'graph-lines-points' => 'Joondiagramm punktidega',
        'graph-area' => 'Aladiagramm',
        'graph-pie' => 'Sektordiagramm',
        'extended' => 'laiendatud',
        'Agent/Owner' => 'T��taja/Omanik',
        'Created by Agent/Owner' => 'Tegi T��taja/Omanik',
        'Created Priority' => 'Loomise prioriteet',
        'Created State' => 'Loomise olek',
        'Create Time' => 'Loomisaeg',
        'CustomerUserLogin' => 'Kliendilogin',
        'Close Time' => 'Sulgemisaeg',
        'TicketAccumulation' => '',
        'Attributes to be printed' => '',
        'Sort sequence' => '',
        'Order by' => '',
        'Limit' => 'Piirang',
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
        'Lock' => 'Lukusta',
        'Unlock' => 'Eemalda lukk',
        'History' => 'Ajalugu',
        'Zoom' => 'L�hemalt',
        'Age' => 'Vanus',
        'Bounce' => 'P�rgata',
        'Forward' => 'Edasta',
        'From' => 'Kellelt',
        'To' => 'Kellele',
        'Cc' => 'Koopia',
        'Bcc' => 'Pimekoopia',
        'Subject' => 'Teema',
        'Move' => 'Liiguta',
        'Queue' => 'J�rjekord',
        'Priority' => 'Prioriteet',
        'Priority Update' => '',
        'State' => 'Olek',
        'Compose' => 'Koosta kiri',
        'Pending' => 'Ootel',
        'Owner' => 'Omanik',
        'Owner Update' => 'Muuda omanikku',
        'Responsible' => 'Vastutaja',
        'Responsible Update' => 'Muuda vastutajat',
        'Sender' => 'Saatja',
        'Article' => 'Intsident',
        'Ticket' => 'Intsidendid',
        'Createtime' => 'Loomisaeg',
        'plain' => 'l�htetekst',
        'Email' => 'Epost',
        'email' => 'epost',
        'Close' => 'Sulge',
        'Action' => 'Tegevus',
        'Attachment' => 'Manus',
        'Attachments' => 'Manused',
        'This message was written in a character set other than your own.' => 'Kiri on teises kooditabelis kui see, mis praegu kastusel on.',
        'If it is not displayed correctly,' => 'Kui kirja ei kuvata korrektselt,',
        'This is a' => 'See on',
        'to open it in a new window.' => 'uues aknas avamiseks.',
        'This is a HTML email. Click here to show it.' => 'See kiri on HTML-formaadis. Kliki siia selle kirja n�gemiseks.',
        'Free Fields' => 'M��ramata v�ljad',
        'Merge' => '�henda',
        'merged' => '�hendatud',
        'closed successful' => 'edukalt tehtud',
        'closed unsuccessful' => 'tehtud ebaedukalt',
        'new' => 'uus',
        'open' => 'avatud',
        'Open' => '',
        'closed' => 'suletud',
        'Closed' => '',
        'removed' => 'kustutatud',
        'pending reminder' => 'ootab meeldetuletust',
        'pending auto' => 'sulgub ise',
        'pending auto close+' => 'sulgub ise edukalt',
        'pending auto close-' => 'sulgub ise ebaedukalt',
        'email-external' => 'sisemine ekiri',
        'email-internal' => 'avalik ekiri',
        'note-external' => 'sisemine m�rkus',
        'note-internal' => 'avalik m�rkus',
        'note-report' => 'm�rkus raportisse',
        'phone' => 'telefon',
        'sms' => 'sms',
        'webrequest' => 'veebip�ring',
        'lock' => 'lukus',
        'unlock' => 'lahti',
        'very low' => 'v�ga madal',
        'low' => 'madal',
        'normal' => 'tavaline',
        'high' => 'k�rge',
        'very high' => 'v�ga k�rge',
        '1 very low' => '1 v�ga madal',
        '2 low' => '2 madal',
        '3 normal' => '3 tavaline',
        '4 high' => '4 k�rge',
        '5 very high' => '5 v�ga k�rge',
        'Ticket "%s" created!' => 'Tehtud intsident "%s"!',
        'Ticket Number' => 'Intsidendi number',
        'Ticket Object' => 'Intsidendi objekt',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Sellise numbriga (%s) ei ole! Ei saa sellele viidata!',
        'Don\'t show closed Tickets' => 'Mitte n�idata suletud intsidente',
        'Show closed Tickets' => 'N�idata suletud intsidente',
        'New Article' => 'Uus intsident',
        'Email-Ticket' => 'Epostist',
        'Create new Email Ticket' => 'Uus e-posti intsident',
        'Phone-Ticket' => 'Telefonist',
        'Search Tickets' => 'Otsi intsidente',
        'Edit Customer Users' => 'Klientkasutajate muutmine',
        'Edit Customer Company' => '',
        'Bulk Action' => 'Hulgitegevus',
        'Bulk Actions on Tickets' => 'Hulgitegevus intsidentidel',
        'Send Email and create a new Ticket' => 'Saada e-kiri ja loo uus intsident',
        'Create new Email Ticket and send this out (Outbound)' => 'Tee uus intsident ja saada kiri (v�ljaminev) ',
        'Create new Phone Ticket (Inbound)' => 'Tee uus intsident (telefonist, sissetulev)',
        'Overview of all open Tickets' => '�levaade k�ikidest avatud intsidentidest',
        'Locked Tickets' => 'Lukustatud intsidendid',
        'Watched Tickets' => 'Vaatlejaga intsidendid',
        'Watched' => 'Vaadeldav',
        'Subscribe' => 'Telli',
        'Unsubscribe' => 'Katkesta tellimus',
        'Lock it to work on it!' => 'Lukusta intsident t��ks!',
        'Unlock to give it back to the queue!' => 'Intsidendi naamiseks j�rjekorda eemalda lukk!',
        'Shows the ticket history!' => 'N�itab intsidendi ajalugu!',
        'Print this ticket!' => 'Tr�ki intsident!',
        'Change the ticket priority!' => 'Muuda intsidendi prioriteeti',
        'Change the ticket free fields!' => 'Muuda intsidendi muid v�lju',
        'Link this ticket to an other objects!' => 'Seo see intsident teiste objektidega!',
        'Change the ticket owner!' => 'Muuda intsidendi omanikku!',
        'Change the ticket customer!' => 'Muuda intsidendi klienti!',
        'Add a note to this ticket!' => 'Lisa intsidendile m�rkus!',
        'Merge this ticket!' => '�henda see intsident!',
        'Set this ticket to pending!' => 'M�rgi see intsident ootel olevaks!',
        'Close this ticket!' => 'Sulge see intsident!',
        'Look into a ticket!' => 'Vaata intsidenti!',
        'Delete this ticket!' => 'Kustuta intsident!',
        'Mark as Spam!' => 'M�rgi sp�mmiks!',
        'My Queues' => 'Minu j�rjekorrad',
        'Shown Tickets' => 'N�htavad intsidendid',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Teie kiri intsidendinumbriga "<OTRS_TICKET>" �hendati intsidendiga "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Intsident %s: reaktsiooniaeg on l�bi (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Intsident %s: reaktsiooniaeg saab l�bi %s!',
        'Ticket %s: update time is over (%s)!' => 'Intsident %s: muutmiseks m��ratud aeg on l�bi (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Intsident %s: muutmiseks m��ratud aeg saab l�bi %s!',
        'Ticket %s: solution time is over (%s)!' => 'Intsident %s: Lahendusaeg on l�bi (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Intsident %s: Lahendusaeg saab l�bi %s!',
        'There are more escalated tickets!' => 'On veel eskaleeritud intsidente!',
        'New ticket notification' => 'Teavitus uuest intsidendist',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Saada mulle teavitus, kui "Minu j�rjekordades" on uusi intsidente.',
        'Follow up notification' => 'Teavitus vastusest',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Saada mulle teavitus, kui klient vastab ja mina olen intsidendi omanik.',
        'Ticket lock timeout notification' => 'Intsidendi luku aegumise teavitus',
        'Send me a notification if a ticket is unlocked by the system.' => 'Saada mulle teavitus, kui intsidendilt eemaldatakse automaatselt lukk.',
        'Move notification' => 'J�rjekorravahetuse teavitus',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Saada mulle teavitus, kui intsident on t�stetud m�nda j�rjekorda "Minu j�rjekordades".',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Sinu valik oma vajalikumatest j�rjekordadest. Saad ka teavituse e-posti teel, kui see on lubatud.',
        'Custom Queue' => 'Kohandatud j�rjekord',
        'QueueView refresh time' => 'J�rjekorravaate v�rskendusaeg',
        'Screen after new ticket' => 'J�rgmine lehek�lg peale intsidendi sisestamist',
        'Select your screen after creating a new ticket.' => 'Vali lehek�lg mis on n�ha peale uue intsidendi loomist.',
        'Closed Tickets' => 'Sultetud intsidendid',
        'Show closed tickets.' => 'N�ita suletud intsidente.',
        'Max. shown Tickets a page in QueueView.' => 'Mitut intsidendti n�idatakse j�rjekorras �hel lehel.',
        'Watch notification' => '',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '',
        'Out Of Office' => '',
        'Select your out of office time.' => '',
        'CompanyTickets' => 'Ettev�te intsidendid',
        'MyTickets' => 'Minu intsidendid',
        'New Ticket' => 'Uus intsident',
        'Create new Ticket' => 'Tekita uus intsident',
        'Customer called' => 'Klient helistas',
        'phone call' => 'telefonik�ne',
        'Reminder Reached' => '',
        'Reminder Tickets' => '',
        'Escalated Tickets' => '',
        'New Tickets' => '',
        'Open Tickets / Need to be answered' => '',
        'Tickets which need to be answered!' => '',
        'All new tickets!' => '',
        'All tickets which are escalated!' => '',
        'All tickets where the reminder date has reached!' => '',
        'Responses' => 'Vastused',
        'Responses <-> Queue' => 'Vastused <-> j�rjekorrad',
        'Auto Responses' => 'Automaatvastused',
        'Auto Responses <-> Queue' => 'Automaatvastused <-> j�rjekorrad',
        'Attachments <-> Responses' => 'Manused <-> vastused',
        'History::Move' => 'Intsident viidi j�rjekorrast "%s" (%s) j�rjekorda "%s" (%s).',
        'History::TypeUpdate' => 'T��pi muudeti "%s" (ID=%s).',
        'History::ServiceUpdate' => 'Teenust muudeti "%s" (ID=%s).',
        'History::SLAUpdate' => 'SLA-d muudeti "%s" (ID=%s).',
        'History::NewTicket' => 'Uus intsident [%s] (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'Vastus intsidendile [%s]. %s',
        'History::SendAutoReject' => 'Automaatne tagasil�kkamine "%s".',
        'History::SendAutoReply' => 'Automaatvastus "%s".',
        'History::SendAutoFollowUp' => 'Automaatedastus "%s".',
        'History::Forward' => 'Edastatud "%s".',
        'History::Bounce' => 'P�rgatatud "%s".',
        'History::SendAnswer' => 'Vastatud epostiga "%s".',
        'History::SendAgentNotification' => '"%s"-teavitus saadeti "%s".',
        'History::SendCustomerNotification' => 'Teavitus saadeti "%s".',
        'History::EmailAgent' => 'Kliendile saadeti ekiri.',
        'History::EmailCustomer' => 'Epostist lisatud. %s',
        'History::PhoneCallAgent' => 'Kliendile helistati.',
        'History::PhoneCallCustomer' => 'Klient helistas.',
        'History::AddNote' => 'Lisatud m�rkus (%s)',
        'History::Lock' => 'Intsident lukustati.',
        'History::Unlock' => 'Intsidendi lukk eemaldati.',
        'History::TimeAccounting' => 'Arvestati %s aja�hikut. Kokku %s aja�hikut.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Uuendatud: %s',
        'History::PriorityUpdate' => 'Muudetud prioriteeti: algselt "%s" (%s), p�rast "%s" (%s).',
        'History::OwnerUpdate' => 'Uus omanik on "%s" (ID=%s).',
        'History::LoopProtection' => 'V�ltimaks korduste tekkimist ei saadetu teavitust "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Uuendati: %s',
        'History::StateUpdate' => 'Vana: "%s" Uus: "%s"',
        'History::TicketFreeTextUpdate' => 'Uuendatud: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Klient �hendus veebiliidesest.',
        'History::TicketLinkAdd' => 'Lisatud viide intsidendile "%s".',
        'History::TicketLinkDelete' => 'Eemaldatud viide intsidendile "%s".',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

        # Template: AAAWeekDay
        'Sun' => 'P',
        'Mon' => 'E',
        'Tue' => 'T',
        'Wed' => 'K',
        'Thu' => 'N',
        'Fri' => 'R',
        'Sat' => 'L',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Manuste haldus',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Automaatvastuste haldus',
        'Response' => 'Vastus',
        'Auto Response From' => 'Automaatvastuse saatja',
        'Note' => 'M�rkus',
        'Useable options' => 'Kasutatavad v�ljad',
        'To get the first 20 character of the subject.' => 'Esimesed 20 m�rki teemareast.',
        'To get the first 5 lines of the email.' => 'Kirja esimesed 5 rida. ',
        'To get the realname of the sender (if given).' => 'Saatja nimi (kui on)',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'Kirja atribuudid ((<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> ja  <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Kliendi andmed (n�iteks <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Intsidendi omaniku andmed (n�iteks <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Vastutava isiku andmed (n�iteks <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'Kasutaja andmed, kelle tegevusele vastavalt teavitatakse (n�iteks. <OTRS_CURRENT_UserFirstname).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'Intsidendi andmed (n�iteks <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Andmed seadistuse kohta (n�iteks <OTRS_CONFIG_HttpType).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Kliendiettev�tte haldus',
        'Search for' => 'Otsi',
        'Add Customer Company' => 'Lisa kliendiettev�te',
        'Add a new Customer Company.' => 'Lisa uus kliendiettev�te.',
        'List' => 'Nimekiri',
        'This values are required.' => 'Need v��rtused on n�utud.',
        'This values are read only.' => 'Neid v��rtusi ei saa muuta.',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => 'Pooleliolev kriri sulegi. L�petan.',
        'This window must be called from compose window' => 'Seda akent saab avada kirja kirjutamise aknast',
        'Customer User Management' => 'Kliendikasutajate haldus',
        'Add Customer User' => 'Lisa kliendikasutaja',
        'Source' => 'Allikas',
        'Create' => 'Tekita',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'Kliendikasutajad peavad olema kasutanud s�steemi ja sisse logima kliendiliidese kaudu.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'Kliendikasutajate <-> Gruppide haldus',
        'Change %s settings' => 'Muuda %s seadeid',
        'Select the user:group permissions.' => 'Vali kasutaja/grupi �igused.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Kui midagi ei ole valitud, ei ole selle grupi kasutajalel nendele intsidentile mingeid �igusi.',
        'Permission' => '�igus',
        'ro' => 'ro',
        'Read only access to the ticket in this group/queue.' => 'Selle grupi/j�rjekorra intsidentidele ainult lugemise �igused.',
        'rw' => 'rw',
        'Full read and write access to the tickets in this group/queue.' => 'K�ik lugemise ja kirjutamise �igused selles grupis/j�rjekorras.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Kliendikasutajad <-> teenused haldus',
        'CustomerUser' => 'Kliendikasutaja',
        'Service' => 'Teenus',
        'Edit default services.' => 'Muuda vaiketeenusedi.',
        'Search Result' => 'Otsingu tulemus',
        'Allocate services to CustomerUser' => 'Anna teenused kliendikasutajale',
        'Active' => 'Aktiivne',
        'Allocate CustomerUser to service' => 'Anna kliendikasutaja teenusele',

        # Template: AdminEmail
        'Message sent to' => 'Kiri saadetud',
        'A message should have a subject!' => 'S�numil peaks olema teema!',
        'Recipients' => 'Saajad',
        'Body' => 'Text',
        'Send' => 'Saada',

        # Template: AdminGenericAgent
        'GenericAgent' => 'GenericAgent',
        'Job-List' => 'T��de nimekiri',
        'Last run' => 'Viimati k�ivitud',
        'Run Now!' => 'K�ivita n��d!',
        'x' => 'x',
        'Save Job as?' => 'Salvesta t�� kui?',
        'Is Job Valid?' => 'Kas t�� on kehtiv?',
        'Is Job Valid' => 'Kas t�� on kehtiv',
        'Schedule' => 'Graafik',
        'Currently this generic agent job will not run automatically.' => '',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'T�istekstiotsing kirjadest (n�iteks "Mar*in" v�i "Andr*")',
        '(e. g. 10*5155 or 105658*)' => 'n�iteks 10*5144 v�i 105658*',
        '(e. g. 234321)' => 'n�iteks 234321',
        'Customer User Login' => 'Kliendi kasutajanimi',
        '(e. g. U5150)' => 'n�iteks U5150',
        'SLA' => 'SLA',
        'Agent' => 'T��taja',
        'Ticket Lock' => 'Intsidendi lukk',
        'TicketFreeFields' => 'Intsidendi muud v�ljad',
        'Create Times' => 'Tekitamisaeg',
        'No create time settings.' => 'Tekitasaja seadeid ei ole',
        'Ticket created' => 'Intsident loodud',
        'Ticket created between' => 'Intsident loodud vahemikus',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending Times' => 'Ooteajad',
        'No pending time settings.' => 'Ooteaegade seadeid ei ole',
        'Ticket pending time reached' => 'Intsidendi ooteaeg on k�tte j�udnud',
        'Ticket pending time reached between' => 'Intsidendi ooteaeg j�udis k�tte vahemikus',
        'Escalation Times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - First Response Time' => 'Eskaleerimine - esimese vastuse aeg',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - Update Time' => 'Eskaleerimine - muutmise aeg',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - Solution Time' => 'Eskaleerimine - lahendusaeg',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'New Service' => '',
        'New SLA' => '',
        'New Priority' => 'Uus prioriteet',
        'New Queue' => 'Uus j�rjekord',
        'New State' => 'Uus oleks',
        'New Agent' => 'Uus t��taja',
        'New Owner' => 'Uus omanik',
        'New Customer' => 'Uus klient',
        'New Ticket Lock' => 'Uus intsidendi lukk',
        'New Type' => '',
        'New Title' => '',
        'New TicketFreeFields' => 'Uued intsidendi v�ljad',
        'Add Note' => 'Lisa m�rkus',
        'Time units' => 't���hikuid',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'See k�sk k�ivitatakse. ARG[0] on intsidendi number, ARG[1] on intsidendi ID..',
        'Delete tickets' => 'Kustuta intsidendid',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'T�helepanu! Need intsidendid kustutatkse andmebaasist! K�ik andmed kaovad!',
        'Send Notification' => 'Saatmise teavitus',
        'Param 1' => 'Param 1',
        'Param 2' => 'Param 2',
        'Param 3' => 'Param 3',
        'Param 4' => 'Param 4',
        'Param 5' => 'Param 5',
        'Param 6' => 'Param 6',
        'Send agent/customer notifications on changes' => '',
        'Save' => 'Salvesta',
        '%s Tickets affected! Do you really want to use this job?' => 'Muudab %s intisdenti! Oled kindel et soovid seda t��d kasutada?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '',
        'Group Management' => 'Gruppide haldus',
        'Add Group' => 'Lisa grupp',
        'Add a new Group.' => 'Lisa uus grupp.',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Grupp "admin" on vajalik otrs halduseks ja grupp "stats" statistika tegemiseks.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Tee uued grupid haldamaks �igusi erinevatel t��tajate gruppide (n�iteks haldusosakond, m��giosakond ..)',
        'It\'s useful for ASP solutions.' => 'Kasulik ASP-lahendustes.',

        # Template: AdminLog
        'System Log' => 'S�steem logi',
        'Time' => 'Aeg',

        # Template: AdminMailAccount
        'Mail Account Management' => '',
        'Host' => 'Server',
        'Trusted' => 'Usaldatud',
        'Dispatching' => 'Jaotamine',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'K�ik sissetulevad kirjad �helt kontolt jaotatakse valitud j�rjekorda!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Kui konto on usaldatud, siis usutakse kirjade olemasolevaid X-OTRS p�iseid(prioriteedid, ...). Postmasteri filtreid rakendatakse niikuinii.',

        # Template: AdminNavigationBar
        'Users' => 'Kasutajad',
        'Groups' => 'Grupid',
        'Misc' => 'Muud',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Teavituste haldus',
        'Add Notification' => '',
        'Add a new Notification.' => '',
        'Name is required!' => 'Nimi on vajalik!',
        'Event is required!' => '',
        'A message should have a body!' => 'Kirjal peab olema sisu!',
        'Recipient' => '',
        'Group based' => '',
        'Agent based' => '',
        'Email based' => '',
        'Article Type' => '',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '',
        'Body match' => '',
        'Notifications are sent to an agent or a customer.' => 'Teavitused saadetakse kliendile v�i t��tajale.',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => 'Teavitus',

        # Template: AdminPackageManager
        'Package Manager' => 'Paketihaldus',
        'Uninstall' => 'Eemalda',
        'Version' => 'Versioon',
        'Do you really want to uninstall this package?' => 'Kas t�esti eemaldada see pakett?',
        'Reinstall' => 'Paigalda uuesti',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Oled kindel, et soovid paketti uuesti paigaldada (k�ik k�sitsi tehtud muudatused kaovad)?',
        'Continue' => 'J�tka',
        'Install' => 'Paigalda',
        'Package' => 'Paketr',
        'Online Repository' => 'V�rguallikas',
        'Vendor' => 'Tootja',
        'Module documentation' => '',
        'Upgrade' => 'Uuenda',
        'Local Repository' => 'Kohalik allikas',
        'Status' => 'Olek',
        'Overview' => '�levaade',
        'Download' => 'Lae alla',
        'Rebuild' => 'Ehita uuesti',
        'ChangeLog' => 'Muudatused',
        'Date' => 'Kuup�ev',
        'Filelist' => 'Failid',
        'Download file from package!' => 'Lae alla fail paketist!',
        'Required' => 'Vajalik',
        'PrimaryKey' => 'PrimaryKey',
        'AutoIncrement' => 'AutoIncrement',
        'SQL' => 'SQL',
        'Diff' => 'Diff',

        # Template: AdminPerformanceLog
        'Performance Log' => 'J�udluse logi',
        'This feature is enabled!' => 'J�udluse logimine on sisse l�litatud!',
        'Just use this feature if you want to log each request.' => 'Kasuta j�udluseandmete logimist siis, kui soovid logida iga p�ringut.',
        'Activating this feature might affect your system performance!' => '',
        'Disable it here!' => 'Keela!',
        'This feature is disabled!' => 'J�udluse logimine on v�lja l�litatud!',
        'Enable it here!' => 'Luba!',
        'Logfile too large!' => 'Logifail on liiga suur!',
        'Logfile too large, you need to reset it!' => 'Logifail on liiga suur, see tuleb t�hjendada!',
        'Range' => 'Vahemik',
        'Interface' => 'Liides',
        'Requests' => 'P�ringuid',
        'Min Response' => 'V�him aeg vastuseni',
        'Max Response' => 'Suurim aeg vastuseni',
        'Average Response' => 'Keskmine aeg vastuseni',
        'Period' => '',
        'Min' => '',
        'Max' => '',
        'Average' => '',

        # Template: AdminPGPForm
        'PGP Management' => 'PGP haldus',
        'Result' => 'Vastus',
        'Identifier' => 'Identifikaator',
        'Bit' => 'Bit',
        'Key' => 'V�ti',
        'Fingerprint' => 'S�rmej�lg',
        'Expires' => 'Aegub',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'Nii saad otse muuta SysConfig-is seadistatud v�tmeid.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'PostMasteri filtrite haldus',
        'Filtername' => 'Filtri nimi',
        'Stop after match' => '',
        'Match' => 'Vastavus',
        'Value' => 'V��rtus',
        'Set' => 'Sea',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Filtreeri v�i jaota sissetulevaid kirju vastavalt kirja X-p�istele. Regulaaravaldisi saab ka kasutada.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Kui soovid kontrollida ainult e-postiaadressi, kasuta EMAILADDRESS:info@example.com From, To v�i CC p�istel.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Kui kasutad regulaaravaldist saab kasutada ka leitud () v��rtusi kui [***] "Sea" v�ljal .',

        # Template: AdminPriority
        'Priority Management' => '',
        'Add Priority' => '',
        'Add a new Priority.' => '',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'J�rjekord <-> automaatvastus haldus',
        'settings' => '',

        # Template: AdminQueueForm
        'Queue Management' => 'J�rjekordade haldus',
        'Sub-Queue of' => 'Alam j�rjekorrale',
        'Unlock timeout' => 'Luku aegumine',
        '0 = no unlock' => '0 = Lukk ei aegu',
        'Only business hours are counted.' => '',
        '0 = no escalation' => '0 = ei eskaleerita',
        'Notify by' => '',
        'Follow up Option' => 'Klient saadab t�iendusi',
        'Ticket lock after a follow up' => 'Lukk peale kliendit�iendusi',
        'Systemaddress' => 'Systemaddress',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Kui t��taja lukustab intsidendi ja ei vasta m�rgitud aja jooksul, siis indtsidendi lukk eemaldatakse automaatselt. Nii on intsident taas saadaval teistele t��tajatele.',
        'Escalation time' => 'Eskaleerimisaeg',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Kui intsidendile ei ole selle aja jooksul vastatud, n�idatakse ainult seda intsidenti.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Kui intsident on suletud ja klient saadab t�iendusi, siis intsident on j�tkuvalt lukustatud omanikule.',
        'Will be the sender address of this queue for email answers.' => 'Aadress, millelt selle j�rjekorra kirjad tulevad.',
        'The salutation for email answers.' => 'Tervitus e-posti vastustes.',
        'The signature for email answers.' => 'Signatuur e-posti vastustes.',
        'Customer Move Notify' => 'Kliendi teavitamine liigutamisest',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS saadab kliendile teavituskirja kui intsident on teise j�rjekorda t�stetud.',
        'Customer State Notify' => 'Kliendi teavitamine olekutest',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS saadab kliendile teavituskirja kui intsidendi olek on muutunud.',
        'Customer Owner Notify' => 'Klienti teavitamine t��tajast',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS saadab kliendile kirja kui intsidendi omanik on muutunud.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'Vastused <-> j�rjekorrad haldus',

        # Template: AdminQueueResponsesForm
        'Answer' => 'Vastus',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'Vastused <-> manused haldus',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Vastuste haldus',
        'A response is default text to write faster answer (with default text) to customers.' => 'Vastus on valmiskirjutatud tekst, mis saata kliendile mingi probleemi puhul.',
        'Don\'t forget to add a new response a queue!' => '�ra unusta lisada j�rjekorda!',
        'The current ticket state is' => 'Intsidendi olek on',
        'Your email address is new' => 'Teie e-postiaadress on uus',

        # Template: AdminRoleForm
        'Role Management' => 'Rollide haldus',
        'Add Role' => 'Lisa roll',
        'Add a new Role.' => 'Lisa uus roll.',
        'Create a role and put groups in it. Then add the role to the users.' => 'Tee roll ja lisa sinna grupid. Seej�rel seo rollid kasutajatega.',
        'It\'s useful for a lot of users and groups.' => 'See on kasulik paljude kasutajate ja gruppide korral',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'Rollid <-> grupid haldus',
        'move_into' => 'liiguta_siia',
        'Permissions to move tickets into this group/queue.' => '�igus liigutada intsidente siia gruppi/j�rjekorda.',
        'create' => 'tekita',
        'Permissions to create tickets in this group/queue.' => '�igus tekitada sellesse gruppi/j�rjekorda intsidente.',
        'owner' => 'omanik',
        'Permissions to change the ticket owner in this group/queue.' => '�igus muuta selle grupi/j�rjekorra intsidentide omanikke.',
        'priority' => 'prioriteet',
        'Permissions to change the ticket priority in this group/queue.' => '�igus muuta selle grupi/j�rjekorra intsidentide prioriteete.',

        # Template: AdminRoleGroupForm
        'Role' => 'Roll',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'Rollid <-> kasutajad haldus',
        'Select the role:user relations.' => 'Vali roll:kasutaja seosed.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Tervituste haldus',
        'Add Salutation' => 'Lisa tervitus',
        'Add a new Salutation.' => 'Lisa uus tervitus.',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' => '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => '',
        'Go' => 'Edasi',
        'Select Box Result' => 'Select Box Result',

        # Template: AdminService
        'Service Management' => 'Teenuste haldus',
        'Add Service' => 'Lisa teenus',
        'Add a new Service.' => 'Lisa uus teenus.',
        'Sub-Service of' => 'Teenus on alam teenusele',

        # Template: AdminSession
        'Session Management' => 'Sessioonihaldus',
        'Sessions' => 'Sessioonid',
        'Uniq' => 'Uniq',
        'Kill all sessions' => 'H�vita k�ik sessioonid',
        'Session' => 'Sessioon',
        'Content' => 'Sisu',
        'kill session' => 'h�vita sessioon',

        # Template: AdminSignatureForm
        'Signature Management' => 'Signatuuride haldus',
        'Add Signature' => 'Lisa signatuur',
        'Add a new Signature.' => 'Lisa uus signatuur.',

        # Template: AdminSLA
        'SLA Management' => 'SLA haldus',
        'Add SLA' => 'SLA lisamine',
        'Add a new SLA.' => 'Lisa uus SLA.',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME haldus',
        'Add Certificate' => 'Sertifikaadi lisamine',
        'Add Private Key' => 'Privaatv�tme lisamine',
        'Secret' => 'Saladus',
        'Hash' => 'R�si',
        'In this way you can directly edit the certification and private keys in file system.' => 'Nii saad otse hallata sertifikaate ja v�tmeid failis�steemis.',

        # Template: AdminStateForm
        'State Management' => 'Olekute haldus',
        'Add State' => 'Oleku lisamine',
        'Add a new State.' => 'Lisa uus olek.',
        'State Type' => 'Oleku t��p',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'NB! Vaikimisi m��ratavaid olekuid tuleb muuta failist Kernel/Config.pm!',
        'See also' => 'Vaata lisaks',

        # Template: AdminSysConfig
        'SysConfig' => 'SysConfig',
        'Group selection' => 'Gruppide valik',
        'Show' => 'N�ita',
        'Download Settings' => 'Lae seaded alla',
        'Download all system config changes.' => 'Lae alla k�ik s�steemi seadistuste muutused.',
        'Load Settings' => 'Lae seaded',
        'Subgroup' => 'alamgrupp',
        'Elements' => 'elemendid',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Config Options',
        'Default' => 'Vaikimisi',
        'New' => 'Uus',
        'New Group' => 'Uus grupp',
        'Group Ro' => 'Grupp Ro',
        'New Group Ro' => 'Uus Grupp Ro',
        'NavBarName' => 'NavBarName',
        'NavBar' => 'NavBar',
        'Image' => 'Pilt',
        'Prio' => 'Prio',
        'Block' => 'Block',
        'AccessKey' => 'AccessKey',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'S�steemi epostiaadresside haldus',
        'Add System Address' => 'S�steemi aadressi lisamine',
        'Add a new System Address.' => 'Lisa uus s�steemi aadress.',
        'Realname' => 'P�risnimi',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'K�ik sissetulevad kirjad selle saajaadressiga pannakse valitud j�rjekorda.',

        # Template: AdminTypeForm
        'Type Management' => 'T��pide haldus',
        'Add Type' => 'T��bi lisamine',
        'Add a new Type.' => 'Lisa uus t��p.',

        # Template: AdminUserForm
        'User Management' => 'Kasutajate haldus',
        'Add User' => 'Kasutaja lisamine',
        'Add a new Agent.' => 'Lisa uus t��taja.',
        'Login as' => 'kasutajanimi',
        'Firstname' => 'Eesnimi',
        'Lastname' => 'Perekonnanimi',
        'Start' => 'Start',
        'End' => '',
        'User will be needed to handle tickets.' => 'Kasutajat on vaja intsidentide haldamiseks.',
        'Don\'t forget to add a new user to groups and/or roles!' => '�ra unusta kasutajat gruppidesse/rollidesse lisamast!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => ' Kasutajad <-> grupid haldus',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Aadressiraamat',
        'Return to the compose screen' => 'Tagasi kirja loomise ekraanile',
        'Discard all changes and return to the compose screen' => 'Unusta k�ik muudatused ja mine tagasi kirja kirjutamise ekraanile',

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
        'Info' => 'Info',

        # Template: AgentLinkObject
        'Link Object: %s' => '',
        'Object' => 'Object',
        'Link Object' => 'Seo objekt',
        'with' => 'koos',
        'Select' => 'Vali',
        'Unlink Object: %s' => '',

        # Template: AgentLookup
        'Lookup' => 'Lookup',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => '�igekirjakontroll',
        'spelling error(s)' => 'kirjavigu',
        'or' => 'v�i',
        'Apply these changes' => 'Muuda',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Oled kindel, et soovid selle objekti kustutada?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'Select the restrictions to characterise the stat',
        'Fixed' => 'Fikseeritud',
        'Please select only one element or turn off the button \'Fixed\'.' => 'Please select only one element or turn off the button \'Fixed\'.',
        'Absolut Period' => 'Absolut Period',
        'Between' => 'Between',
        'Relative Period' => 'Relative Period',
        'The last' => 'The last',
        'Finish' => 'Finish',
        'Here you can make restrictions to your stat.' => 'Here you can make restrictions to your stat.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Insert of the common specifications',
        'Permissions' => '�igused',
        'Format' => 'Formaat',
        'Graphsize' => 'Graafiku suurus',
        'Sum rows' => 'Summaread',
        'Sum columns' => 'Summaveerud',
        'Cache' => 'Cache',
        'Required Field' => 'N�utud v�li',
        'Selection needed' => 'Valik on vajalik',
        'Explanation' => 'Selgitus',
        'In this form you can select the basic specifications.' => 'In this form you can select the basic specifications.',
        'Attribute' => 'Attribuut',
        'Title of the stat.' => 'Graafiku nimi.',
        'Here you can insert a description of the stat.' => 'Here you can insert a description of the stat..',
        'Dynamic-Object' => 'Dynamic-Object',
        'Here you can select the dynamic object you want to use.' => 'Here you can select the dynamic object you want to use.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(Note: It depends on your installation how many dynamic objects you can use)',
        'Static-File' => 'Static-File',
        'For very complex stats it is possible to include a hardcoded file.' => 'For very complex stats it is possible to include a hardcoded file.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'If a new hardcoded file is available this attribute will be shown and you can select one.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.',
        'Multiple selection of the output format.' => 'Multiple selection of the output format.',
        'If you use a graph as output format you have to select at least one graph size.' => 'If you use a graph as output format you have to select at least one graph size.',
        'If you need the sum of every row select yes' => 'If you need the sum of every row select yes',
        'If you need the sum of every column select yes.' => 'If you need the sum of every column select yes.',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'Most of the stats can be cached. This will speed up the presentation of this stat.',
        '(Note: Useful for big databases and low performance server)' => '(Note: Useful for big databases and low performance server)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'With an invalid stat it isn\'t feasible to generate a stat.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'Select the elements for the value series',
        'Scale' => 'Scale',
        'minimal' => 'minimal',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'Select the element, which will be used at the X-axis.',
        'maximal period' => 'maximal period',
        'minimal scale' => 'minimal scale',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsImport
        'Import' => 'Import',
        'File is not a Stats config' => 'File is not a Stats config',
        'No File selected' => 'No File selected',

        # Template: AgentStatsOverview
        'Results' => 'Tulemused',
        'Total hits' => 'Kokku vaatamisi',
        'Page' => 'Lehek�lg',

        # Template: AgentStatsPrint
        'Print' => 'Tr�ki',
        'No Element selected.' => 'No Element selected.',

        # Template: AgentStatsView
        'Export Config' => 'Export Config',
        'Information about the Stat' => 'Information about the Stat',
        'Exchange Axis' => 'Exchange Axis',
        'Configurable params of static stat' => 'Configurable params of static stat',
        'No element selected.' => 'No element selected.',
        'maximal period from' => 'maximal period from',
        'to' => 'to',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => 'Kirjal peaks oleam saatja aadress!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Sul peab olema epostiaadress (n�iteks klient@example.com) Saaja v�ljal!',
        'Bounce ticket' => 'P�rgata intsident',
        'Ticket locked!' => 'Intsident lukus!',
        'Ticket unlock!' => 'Eemalda lukk!',
        'Bounce to' => 'P�rgata t��tajale',
        'Next ticket state' => 'Intsidendi j�rgmine olek',
        'Inform sender' => 'Teavita saatjat',
        'Send mail!' => 'Saada kiri!',

        # Template: AgentTicketBulk
        'You need to account time!' => 'Pead kirja panema t��aja!',
        'Ticket Bulk Action' => 'Hulgitegevused intsidentidega',
        'Spell Check' => '�igekirjakontroll',
        'Note type' => 'M�rkuse t��p',
        'Next state' => 'J�rmine olek',
        'Pending date' => 'Ootel kuni',
        'Merge to' => '�henda intsidendiga',
        'Merge to oldest' => '',
        'Link together' => '',
        'Link to Parent' => '',
        'Unlock Tickets' => 'Eemalda intsidentidelt lukud',

        # Template: AgentTicketClose
        'Ticket Type is required!' => '',
        'A required field is:' => '',
        'Close ticket' => 'Sulge intsident',
        'Previous Owner' => 'Eelmine omanik',
        'Inform Agent' => 'Teavita t��tajat',
        'Optional' => 'Valikuline',
        'Inform involved Agents' => 'Teavita seotud t��tajaid',
        'Attach' => 'Manusta',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => 'Kiri peab olema �igekirja osas kontrollitud!',
        'Compose answer for ticket' => 'Koosta vastus',
        'Pending Date' => 'Ootel kuni',
        'for pending* states' => 'ooteolekutele',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Muuda intsidendiga seotud klienti',
        'Set customer user and customer id of a ticket' => 'muuda intsidendi kliendikasutajat ja kliendikasutaja id-d',
        'Customer User' => 'Klient',
        'Search Customer' => 'Otsi klienti',
        'Customer Data' => 'Kliendi andmed',
        'Customer history' => 'Kliendi ajalugu',
        'All customer tickets.' => 'K�ik selle kliendi intsidendid.',

        # Template: AgentTicketEmail
        'Compose Email' => 'Kirjuta ekiri',
        'new ticket' => 'uus intsident',
        'Refresh' => 'v�rskenda',
        'Clear To' => 'puhasta saaja',
        'All Agents' => 'K�ik t��tajad',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Intsidendi t��p',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Muuda intsidendi teksti',

        # Template: AgentTicketHistory
        'History of' => 'Ajalugu',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => 'Pead kasutama intsidendi numbrit!',
        'Ticket Merge' => '�henda intsidendid',

        # Template: AgentTicketMove
        'Move Ticket' => 'Liiguta intsidenti',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Lisa intsidendile m�rkus',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => 'Reaktsiooniaeg',
        'Service Time' => 'Teeinindusaeg',
        'Update Time' => 'Muutmisaeg',
        'Solution Time' => 'Lahendusaeg',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => 'Vajad v�hemalt �hte valitud intsidenti!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => 'Filter',
        'Change search options' => 'Muuda otsingut',
        'Tickets' => 'Intsidendid',
        'of' => '',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'Kirjuta vastus',
        'Contact customer' => 'Kotakteeru kliendiga',
        'Change queue' => 'Muuda j�rjekorda',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 'sordi �lespoole',
        'up' => '�les',
        'sort downward' => 'sordi allapoole',
        'down' => 'alla',
        'Escalation in' => 'Eskaleerub',
        'Locked' => 'Lukustatud',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Muuda intsidendi omanikku',

        # Template: AgentTicketPending
        'Set Pending' => 'Pane ootele',

        # Template: AgentTicketPhone
        'Phone call' => 'Helista',
        'Clear From' => 'Puhasta saatja',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Plain',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Intsidendi info',
        'Accounted time' => 'T��aeg',
        'Linked-Object' => 'Seotud objekt',
        'by' => 'teinud',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Muuda intsidendi prioriteeti',

        # Template: AgentTicketQueue
        'Tickets shown' => 'N�htaval intsidendid',
        'Tickets available' => 'Saadaval intsidente',
        'All tickets' => 'K�ik intsidendid',
        'Queues' => 'J�rjekorrad',
        'Ticket escalation!' => 'Intsidendi eskaleerimine!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Muuda intsidendi eest vastutajat',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Otsi intsidente',
        'Profile' => 'Profiil',
        'Search-Template' => 'Otsingumall',
        'TicketFreeText' => 'TicketFreeText',
        'Created in Queue' => 'Tehtud j�rjekorras',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '',
        'No change time settings.' => '',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => 'Tulemuste formaat',
        'Save Search-Profile as Template?' => 'Kas salvestada otsing mallina?',
        'Yes, save it with name' => 'Jah, salvesta nimega',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'T�istekst',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => '',
        'Collapse View' => '',
        'Split' => 'Poolita',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => '',
        'Save filter settings as default' => '',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'Traceback',

        # Template: CustomerFooter
        'Powered by' => 'Powered by',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => 'Login',
        'Lost your password?' => 'Kaotasid parooli?',
        'Request new password' => 'Telli uus parool',
        'Create Account' => 'Tee konto',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Tere tulemast %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Aeg',
        'No time settings.' => 'Ajaseadeid ei ole.',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Veast teavitamiseks kliki siia!',

        # Template: Footer
        'Top of Page' => 'Lehek�lje algusesse',

        # Template: FooterSmall

        # Template: Header
        'Home' => 'Algusesse',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Web-Installer',
        'Welcome to %s' => 'Tere tulemast %s',
        'Accept license' => 'N�usti litsensiga',
        'Don\'t accept license' => '�ra n�ustu litsensiga',
        'Admin-User' => 'Admin-kasutaja',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => 'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.',
        'Admin-Password' => 'Admin-parool',
        'Database-User' => 'Andmebaasi kasutaja',
        'default \'hot\'' => 'vaikimisi \'hot\'',
        'DB connect host' => 'Andembaasiserver',
        'Database' => 'Andmebaas',
        'Default Charset' => 'Vaikimisi kooditabel',
        'utf8' => '',
        'false' => 'vale',
        'SystemID' => 'SystemID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(S�steemi identifitseerimiseks. Iga intsidendi number ja http sessiooni id algab selle numbriga)',
        'System FQDN' => 'System FQDN',
        '(Full qualified domain name of your system)' => '(Sinu arvuti t�ielik DNS nimi)',
        'AdminEmail' => 'Admin epostiaadress',
        '(Email of the system admin)' => '(S�steemihalduri epostiaadress)',
        'Organization' => 'Organisatsioon',
        'Log' => 'Log',
        'LogModule' => 'LogModule',
        '(Used log backend)' => '(Kasutatav logimise moodul)',
        'Logfile' => 'Logifail',
        '(Logfile just needed for File-LogModule!)' => '(Logifaili vajab ainult File-LogModule!)',
        'Webfrontend' => 'Veebiliides',
        'Use utf-8 it your database supports it!' => 'Kasuta utf-8 kui su andmebaas seda toetab!',
        'Default Language' => 'Vaikimisi keel',
        '(Used default language)' => '(kasuta vaikimisi keeleks)',
        'CheckMXRecord' => 'CheckMXRecord',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kontrollib e-posti aadresside MX kirjeid. �ra kasuta CheckMXRecord seadet, kui kasutate sissehelistamist v�i interneti�hendus serveril puudub)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'OTRS kasutamiseks peate j�rgneva k�su sisestama s�steemi root-kasutajana.',
        'Restart your webserver' => 'Taask�ivita veebiserver.',
        'After doing so your OTRS is up and running.' => 'Peale seda OTRS t��tab.',
        'Start page' => 'Algusleht',
        'Your OTRS Team' => 'OTRS meeskond',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'Ei ole �igust',

        # Template: Notify
        'Important' => 'T�htis',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'tr�kkija',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'OTRS testileht',
        'Counter' => 'Loendur',

        # Template: Warning

        # Template: YUI

        # Misc
        'Create Database' => 'Tekita andmebaas',
        'verified' => 'kontrollitud',
        'File-Name' => 'Failinimi',
        'Ticket Number Generator' => 'Intsidendinumbri generaator',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Intsidendi identifikaator. M�ned inimesed tahavad seda muuta n�iteks. \'Ticket#\', \'Call#\' v�i \'MyTicket#\')',
        'Create new Phone Ticket' => 'Tee uus telefonitsi laekunud intsident',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Nii saad otse muuta v�tmeid mis on seadistatud Kernel/Config.pm failis.',
        'U' => 'U',
        'Site' => 'Sait',
        'Customer history search (e. g. "ID342425").' => 'Kliendiajaloo otsing (n�iteks "ID342425").',
        'Can not delete link with %s!' => '',
        'for agent firstname' => 'Kasutaja eesnimeks',
        'Close!' => 'Sulge!',
        'Reporter' => 'Raporteerija',
        'Process-Path' => 'Protsessi tee',
        'No means, send agent and customer notifications on changes.' => 'Ei t�hendab, et klientidele ja t��tajatele saadetakse infot muudatustest.',
        'to get the realname of the sender (if given)' => 'hankimaks saatja t�isnime (kui on teada)',
        'FAQ Search Result' => 'FAQ otsingu tulemus',
        'Notification (Customer)' => 'Teavitus (klient)',
        'CSV' => 'CSV',
        'Select Source (for add)' => 'Vali allikas (lisamiseks)',
        'Node-Name' => 'Node-Name',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'V�imalikud intsidendi v�ljad (n�iteks &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => 'Alamobjekt',
        'Workflow Groups' => 'T��voo grupid',
        'Current Impact Rating' => 'Praegune m�juhinnang',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Seadistused (<OTRS_CONFIG_HttpType>)',
        'FAQ System History' => 'FAQ s�steemi ajalugu',
        'customer realname' => 'klienti nimi',
        'Pending messages' => 'Ootel teated',
        'Modules' => 'Moodulid',
        'for agent login' => 't��taja sisselogimiseks',
        'Keyword' => 'v�tmes�na',
        'Reference' => 'Viited',
        'Close type' => 'Sulte t��p',
        'DB Admin User' => 'DB Admin kasutaja',
        'for agent user id' => 't��taja kasutajanimeks',
        'Classification' => 'Klassifikatsioon',
        'Change user <-> group settings' => 'Muuda kasutaja <-> grupp seadeid',
        'Escalation' => '',
        '"}' => '',
        'Order' => 'J�rjekord',
        'next step' => 'j�rgmine samm',
        'Follow up' => 'T�iendav info',
        'Customer history search' => 'Kliendiajaloo otsing',
        'not verified' => 'kontrollimata',
        'Stat#' => 'Statistika nr.',
        'Create new database' => 'Tekita uus andmebaas',
        'Year' => 'Aasta',
        'X-axis' => 'X-telg',
        'Keywords' => 'V�tmes�nad',
        'Ticket Escalation View' => '',
        'Today' => '',
        'No * possible!' => '"*" ei ole lubatud!',
        'Load' => 'Lae',
        'Change Time' => 'Muudatuse aeg',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Selle kasutaja andmed, kes soovis antud tegevust (n�iteks &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => 'S�num uuele omanikule',
        'to get the first 5 lines of the email' => 'kirja esimese 5 rea hankimiseks',
        'Sent new password to: ' => 'Saada uus parool aadressile: ',
        'Sort by' => 'Sorteeri',
        'OTRS DB Password' => 'OTRS andmebaasi parool',
        'Last update' => 'Viimane uuendus',
        'Tomorrow' => '',
        'not rated' => 'hindamata',
        'to get the first 20 character of the subject' => 'hankimaks esimesed 20 m�rki teemareast',
        'Select the customeruser:service relations.' => 'Vali kliendikasutaj:teenus suhe.',
        'DB Admin Password' => 'Andmebaasi administraatori parool',
        'Drop Database' => 'Kustuta andmebaas',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'K�esoleva kasutaja andmed (n�iteks <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'Ooteoleku t��p',
        'Comment (internal)' => 'Kommentaar (t��tajatele)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Intsidendi omaniku andmed (n�iteks &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'User-Number' => 'Kasutajanumber',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Intsidendi andmed (n�iteks <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(intsidendinumbri formaat)',
        'Reminder' => 'Meeldetuletus',
        'Month' => 'Kuu',
        'Node-Address' => 'Node-Address',
        'All Agent variables.' => 'K�ik t��taja andmed',
        ' (work units)' => ' (t���hikud)',
        'Next Week' => '',
        'You use the DELETE option! Take care, all deleted Tickets are lost!!!' => 'Kasutad kustutamise valikut! T�helepanu, k�ik kustutatud intsidendid kaovad!',
        'All Customer variables like defined in config option CustomerUser.' => 'K�ik kliendi muutujad nii nagu on defineeritud CustomerUser-is.',
        'for agent lastname' => 't��taja perenimeks',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Selle kasutaja andmed, kes soovis antud tegevust (n�iteks <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Meeldetuletusteated',
        'Parent-Object' => '�lemobjekt',
        'Of couse this feature will take some system performance it self!' => 'See kahandab s�steemi �ldist j�udlust.',
        'Detail' => 'T�psemalt',
        'Your own Ticket' => 'Sinu intsident',
        'TicketZoom' => 'Vaata t�psemalt',
        'Don\'t forget to add a new user to groups!' => '�ra unusta kasutajat gruppidesse lisamast!',
        'Open Tickets' => 'Avatud intsidendid',
        'CreateTicket' => 'Tekita intsident',
        'You have to select two or more attributes from the select field!' => 'Pead valima v�hemalt 2 atribuuti!',
        'unknown' => 'teadmata',
        'System Settings' => 'S�steemi seaded',
        'Finished' => 'Valmis',
        'Imported' => 'Imporditud',
        'unread' => 'lugemata',
        'D' => 'D',
        'All messages' => 'K�ik teated',
        'System Status' => 'S�steemi olek',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Intsidentide andmed  (n�iteks <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Object already linked as %s.' => '',
        'A article should have a title!' => 'Artiklil peaks olema pealkiri!',
        'Customer Users <-> Services' => 'Kliendikasutajad <-> teenused',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Seadistused (n�iteks .&lt;OTRS_CONFIG_HttpType&gt;)',
        'All email addresses get excluded on replaying on composing and email.' => '',
        'Compose Follow up' => 'Kirjuta t�iendus',
        'Imported by' => 'Importija',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Intsidendi omaniku andmed (n�iteks <OTRS_OWNER_UserFirstname>)',
        'read' => 'loetud',
        'Product' => 'Toode',
        'kill all sessions' => 'h�vita k�ik sessioonid',
        'to get the from line of the email' => 'saamaks kirja saatjat',
        'Solution' => 'Lahendus',
        'QueueView' => 'J�rjekorrad',
        'My Queue' => 'Minu j�rjekorrad',
        'Select Box' => 'Select Box',
        'Instance' => '�hik',
        'Day' => 'p�ev',
        'New messages' => 'Uued teated',
        'Service-Name' => 'Teenuse nimi',
        'Can not create link with %s!' => '',
        'Linked as' => '',
        'Welcome to OTRS' => 'Tere tulemast OTRSi',
        'tmp_lock' => 'ajutine lukk',
        'modified' => 'muudetud',
        'Delete old database' => 'Kustuta vana andmebaas',
        'Watcher' => 'Huvilised',
        'Have a lot of fun!' => 'T��ta m�nuga!',
        'send' => 'saada',
        'Send no notifications' => '�ra saada teavitusi',
        'Note Text' => 'M�rkuse tekst',
        'POP3 Account Management' => 'POP3 konto haldus',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'K�iesoleva kliendi andmed (n�iteks &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;).',
        'System State Management' => 'S�steemi oleku haldus',
        'Mailbox' => 'Mailbox',
        'PhoneView' => 'Telefonivaade',
        'User-Name' => 'Kasutajanimi',
        'File-Path' => 'Failitee',
        'Escaladed Tickets' => '',
        'closed with workaround' => 'suletud ajutise lahendusega',
        'Yes means, send no agent and customer notifications on changes.' => 'Jah t�hendab, et t��tajatele ja kasutajatele ei saadeta teavitusi.',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'Sinu kiri intsidendiga nr "<OTRS_TICKET>" p�rgatati "<OTRS_BOUNCE_TO>". T�psema info saamiseks kirjuta sellel aadressil.',
        'Ticket Status View' => 'N�ita intsidendi olekut',
        'Modified' => 'Muudetud',
        'Ticket selected for bulk action!' => 'Intsident m�rgiti hulgitegevuseks',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
    };
    # $$STOP$$
    return;
}

1;
