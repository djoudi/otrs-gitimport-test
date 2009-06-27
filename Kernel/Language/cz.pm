# --
# Kernel/Language/cz.pm - provides cz language translation
# Copyright (C) 2003 Lukas Vicanek alias networ <lulka at centrum dot cz>
# Copyright (C) 2004 BENETA.cz, s.r.o. (Marta Macalkova, Vadim Buzek, Petr Ocasek) <info at beneta dot cz>
# --
# $Id: cz.pm,v 1.76 2009-06-27 12:12:13 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::cz;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.76 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sat Jun 27 13:54:56 2009

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D/%M/%Y %T';
    $Self->{DateFormatLong}      = '%A %D %B %Y %T';
    $Self->{DateFormatShort}     = '%D/%M/%Y';
    $Self->{DateInputFormat}     = '%D/%M/%Y';
    $Self->{DateInputFormatLong} = '%D/%M/%Y - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => 'Ano',
        'No' => 'Ne',
        'yes' => 'ano',
        'no' => 'ne',
        'Off' => 'Vypnuto',
        'off' => 'vypnuto',
        'On' => 'Zapnuto',
        'on' => 'zapnuto',
        'top' => 'nahoru',
        'end' => 'konec',
        'Done' => 'Hotovo',
        'Cancel' => 'Stornovat',
        'Reset' => '',
        'last' => 'posledn�',
        'before' => 'p�ed',
        'day' => 'den',
        'days' => 'dn�(dny)',
        'day(s)' => 'den(dn�)',
        'hour' => 'hodina',
        'hours' => 'hodin',
        'hour(s)' => '',
        'minute' => 'minuta',
        'minutes' => 'minut',
        'minute(s)' => '',
        'month' => '',
        'months' => '',
        'month(s)' => 'm�s�c(e)',
        'week' => '',
        'week(s)' => 't�den(t�dny)',
        'year' => '',
        'years' => '',
        'year(s)' => 'rok(y)',
        'second(s)' => '',
        'seconds' => '',
        'second' => '',
        'wrote' => 'napsal',
        'Message' => 'Zpr�va',
        'Error' => 'Chyba',
        'Bug Report' => 'Upozorn�n� na chybu',
        'Attention' => 'Upozorn�n�',
        'Warning' => 'Varov�n�',
        'Module' => 'Modul',
        'Modulefile' => 'Modulov� soubor',
        'Subfunction' => 'Podfunkce',
        'Line' => 'Linka',
        'Setting' => '',
        'Settings' => '',
        'Example' => 'P��klad',
        'Examples' => 'P��klady',
        'valid' => 'platn�',
        'invalid' => 'neplatn�',
        '* invalid' => '',
        'invalid-temporarily' => '',
        ' 2 minutes' => ' 2 minuty',
        ' 5 minutes' => ' 5 minut',
        ' 7 minutes' => ' 7 minut',
        '10 minutes' => '10 minut',
        '15 minutes' => '15 minut',
        'Mr.' => '',
        'Mrs.' => '',
        'Next' => '',
        'Back' => 'Zp�t',
        'Next...' => '',
        '...Back' => '',
        '-none-' => '',
        'none' => '��dn�',
        'none!' => '��dn�!',
        'none - answered' => '��dn� - odpov�zeno',
        'please do not edit!' => 'pros�me neupravujte!',
        'AddLink' => 'P�idat Odkaz',
        'Link' => 'Odkaz',
        'Unlink' => '',
        'Linked' => '',
        'Link (Normal)' => '',
        'Link (Parent)' => '',
        'Link (Child)' => '',
        'Normal' => 'Norm�ln�',
        'Parent' => '',
        'Child' => '',
        'Hit' => 'P��stup',
        'Hits' => 'Pr�stup�',
        'Text' => '',
        'Lite' => 'Omezen�',
        'User' => 'U�ivatel',
        'Username' => 'Jm�no u�ivatele',
        'Language' => 'Jazyk',
        'Languages' => 'Jazyky',
        'Password' => 'Heslo',
        'Salutation' => 'Osloven�',
        'Signature' => 'Podpis',
        'Customer' => 'Klient',
        'CustomerID' => 'ID klienta',
        'CustomerIDs' => '',
        'customer' => 'klient',
        'agent' => '',
        'system' => 'syst�m',
        'Customer Info' => 'Informace o klientovi',
        'Customer Company' => '',
        'Company' => '',
        'go!' => 'jdi!',
        'go' => 'jdi',
        'All' => 'V�e',
        'all' => 'v�e',
        'Sorry' => 'Omluva',
        'update!' => 'aktualizovat!',
        'update' => 'aktualizovat',
        'Update' => 'Aktualizovat',
        'Updated!' => '',
        'submit!' => 'Odeslat!',
        'submit' => 'odeslat',
        'Submit' => '',
        'change!' => 'zm�nit!',
        'Change' => 'Zm�nit',
        'change' => 'zm�nit',
        'click here' => 'klikn�te zde',
        'Comment' => 'Koment��',
        'Valid' => 'Platnost',
        'Invalid Option!' => '',
        'Invalid time!' => '',
        'Invalid date!' => '',
        'Name' => 'Jm�no',
        'Group' => 'Skupina',
        'Description' => 'Popis',
        'description' => 'popis',
        'Theme' => 'Design',
        'Created' => 'Vytvo�eno',
        'Created by' => '',
        'Changed' => '',
        'Changed by' => '',
        'Search' => 'Vyhledat',
        'and' => 'a',
        'between' => '',
        'Fulltext Search' => '',
        'Data' => '',
        'Options' => 'Mo�nosti',
        'Title' => '',
        'Item' => '',
        'Delete' => 'Smazat',
        'Edit' => 'Editovat',
        'View' => 'N�hled',
        'Number' => '',
        'System' => 'Syst�m',
        'Contact' => 'Konktakt',
        'Contacts' => '',
        'Export' => '',
        'Up' => '',
        'Down' => '',
        'Add' => 'P�idat',
        'Added!' => '',
        'Category' => 'Kategorie',
        'Viewer' => '',
        'Expand' => '',
        'New message' => 'Nov� zpr�va',
        'New message!' => 'Nov� zpr�va!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'Pros�m, odpov�zte na tento (tyto) tiket(y) pro n�vrat do norm�ln�ho n�hledu fronty!',
        'You got new message!' => 'M�te novou zpr�vu!',
        'You have %s new message(s)!' => 'M�te %s novou zpr�vu (nov�ch zpr�v)!',
        'You have %s reminder ticket(s)!' => 'M�te %s upom�nkov�(ch) ticket(�)',
        'The recommended charset for your language is %s!' => 'Doporu�en� znakov� sada pro V� jazyk je %s!',
        'Passwords doesn\'t match! Please try it again!' => '',
        'Password is already in use! Please use an other password!' => '',
        'Password is already used! Please use an other password!' => '',
        'You need to activate %s first to use it!' => '',
        'No suggestions' => '��dn� n�vrhy',
        'Word' => 'Slovo',
        'Ignore' => 'Ignorovat',
        'replace with' => 'nahradit',
        'There is no account with that login name.' => '��dn� ��et s t�mto p�ihla�ovac�m jm�nem neexistuje.',
        'Login failed! Your username or password was entered incorrectly.' => 'P�ihl�en� ne�sp�n�! Va�e u�ivatelsk� jm�no �i heslo bylo zad�no nespr�vn�.',
        'Please contact your admin' => 'Kontaktujte, pros�m, Va�eho administr�tora',
        'Logout successful. Thank you for using OTRS!' => 'Odhl�en� bylo �sp�sn�. D�kujeme V�m za pou��v�n� OTRS!',
        'Invalid SessionID!' => 'Neplatn� ID relace!',
        'Feature not active!' => 'Funkce je neaktivn�!',
        'Notification (Event)' => '',
        'Login is needed!' => '',
        'Password is needed!' => '',
        'License' => 'Licence',
        'Take this Customer' => '',
        'Take this User' => 'Pou��j tohoto u�ivatele',
        'possible' => 'mo�n�',
        'reject' => 'zam�tnout',
        'reverse' => '',
        'Facility' => 'Funkce',
        'Timeover' => '�as vypr�el',
        'Pending till' => '�ek�n� na vy��zen� do',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'Z bezpe�nostn�ch d�vod� nepracujte se superu�ivatelsk�m ��tem - vytvo�te si nov�ho u�ivatele!',
        'Dispatching by email To: field.' => 'P�i�adit podle e-mailu - pole KOMU:.',
        'Dispatching by selected Queue.' => 'P�i�adit do vybran� fronty.',
        'No entry found!' => 'Nebyl nalezen ��dn� z�znam!',
        'Session has timed out. Please log in again.' => 'Relace vypr�ela. Pros�m, p�ihla�te se znovu.',
        'No Permission!' => '',
        'To: (%s) replaced with database email!' => 'To: (%s) nahrazeno emailem z datab�ze!',
        'Cc: (%s) added database email!' => '',
        '(Click here to add)' => '(Pro p�id�n� klikn�te zde)',
        'Preview' => 'Zobrazit',
        'Package not correctly deployed! You should reinstall the Package again!' => '',
        'Added User "%s"' => '',
        'Contract' => '',
        'Online Customer: %s' => '',
        'Online Agent: %s' => '',
        'Calendar' => '',
        'File' => '',
        'Filename' => 'N�zev souboru',
        'Type' => 'Typ',
        'Size' => '',
        'Upload' => '',
        'Directory' => '',
        'Signed' => '',
        'Sign' => '',
        'Crypted' => '',
        'Crypt' => '',
        'Office' => '',
        'Phone' => '',
        'Fax' => '',
        'Mobile' => '',
        'Zip' => '',
        'City' => '',
        'Street' => '',
        'Country' => '',
        'Location' => '',
        'installed' => '',
        'uninstalled' => '',
        'Security Note: You should activate %s because application is already running!' => '',
        'Unable to parse Online Repository index document!' => '',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '',
        'No Packages or no new Packages in selected Online Repository!' => '',
        'printed at' => '',
        'Dear Mr. %s,' => '',
        'Dear Mrs. %s,' => '',
        'Dear %s,' => '',
        'Hello %s,' => '',
        'This account exists.' => '',
        'New account created. Sent Login-Account to %s.' => '',
        'Please press Back and try again.' => '',
        'Sent password token to: %s' => '',
        'Sent new password to: %s' => '',
        'Upcoming Events' => '',
        'Event' => '',
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
        'Header' => '',
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
        'Jan' => 'Led',
        'Feb' => '�no',
        'Mar' => 'B�e',
        'Apr' => 'Dub',
        'May' => 'Kv�',
        'Jun' => '�vc',
        'Jul' => '�er',
        'Aug' => 'Srp',
        'Sep' => 'Z��',
        'Oct' => '��j',
        'Nov' => 'Lis',
        'Dec' => 'Pro',
        'January' => '',
        'February' => '',
        'March' => '',
        'April' => '',
        'June' => '',
        'July' => '',
        'August' => '',
        'September' => '',
        'October' => '',
        'November' => '',
        'December' => '',

        # Template: AAANavBar
        'Admin-Area' => 'Administra�n� z�na',
        'Agent-Area' => 'Z�na agent�',
        'Ticket-Area' => '',
        'Logout' => 'Odhl�sit',
        'Agent Preferences' => '',
        'Preferences' => 'Nastaven�',
        'Agent Mailbox' => '',
        'Stats' => 'Statistiky',
        'Stats-Area' => '',
        'Admin' => '',
        'Customer Users' => '',
        'Customer Users <-> Groups' => '',
        'Users <-> Groups' => '',
        'Roles' => '',
        'Roles <-> Users' => '',
        'Roles <-> Groups' => '',
        'Salutations' => '',
        'Signatures' => '',
        'Email Addresses' => '',
        'Notifications' => '',
        'Category Tree' => '',
        'Admin Notification' => '',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Nastaven� �sp�n� aktualizov�no!',
        'Mail Management' => 'Spr�va e-mail�',
        'Frontend' => 'Rozhran�',
        'Other Options' => 'Jin� mo�nosti',
        'Change Password' => '',
        'New password' => '',
        'New password again' => '',
        'Select your QueueView refresh time.' => 'Vyberte si dobu obnoven� n�hledu fronty.',
        'Select your frontend language.' => 'Vyberte si jazyk Va�eho rozhran�.',
        'Select your frontend Charset.' => 'Vyberte si znakovou sadu Va�eho rozhran�.',
        'Select your frontend Theme.' => 'Vyberte si design Va�eho rozhran�.',
        'Select your frontend QueueView.' => 'Vyberte si n�hled fronty Va�eho rozhran�.',
        'Spelling Dictionary' => 'Slovn�k kontroly pravopisu',
        'Select your default spelling dictionary.' => 'Vyberte si V� v�choz� pravopisn� slovn�k',
        'Max. shown Tickets a page in Overview.' => 'Max. zobrazen�ch tiket� v p�ehledu na str�nku',
        'Can\'t update password, your new passwords do not match! Please try again!' => '',
        'Can\'t update password, invalid characters!' => '',
        'Can\'t update password, must be at least %s characters!' => '',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => '',
        'Can\'t update password, needs at least 1 digit!' => '',
        'Can\'t update password, needs at least 2 characters!' => '',

        # Template: AAAStats
        'Stat' => '',
        'Please fill out the required fields!' => '',
        'Please select a file!' => '',
        'Please select an object!' => '',
        'Please select a graph size!' => '',
        'Please select one element for the X-axis!' => '',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => '',
        'If you use a checkbox you have to select some attributes of the select field!' => '',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '',
        'The selected end time is before the start time!' => '',
        'You have to select one or more attributes from the select field!' => '',
        'The selected Date isn\'t valid!' => '',
        'Please select only one or two elements via the checkbox!' => '',
        'If you use a time scale element you can only select one element!' => '',
        'You have an error in your time selection!' => '',
        'Your reporting time interval is too small, please use a larger time scale!' => '',
        'The selected start time is before the allowed start time!' => '',
        'The selected end time is after the allowed end time!' => '',
        'The selected time period is larger than the allowed time period!' => '',
        'Common Specification' => '',
        'Xaxis' => '',
        'Value Series' => '',
        'Restrictions' => '',
        'graph-lines' => '',
        'graph-bars' => '',
        'graph-hbars' => '',
        'graph-points' => '',
        'graph-lines-points' => '',
        'graph-area' => '',
        'graph-pie' => '',
        'extended' => '',
        'Agent/Owner' => '',
        'Created by Agent/Owner' => '',
        'Created Priority' => '',
        'Created State' => '',
        'Create Time' => '',
        'CustomerUserLogin' => '',
        'Close Time' => '',
        'TicketAccumulation' => '',
        'Attributes to be printed' => '',
        'Sort sequence' => '',
        'Order by' => '',
        'Limit' => '',
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
        'Lock' => 'Z�mek',
        'Unlock' => 'Z�mek',
        'History' => 'Historie',
        'Zoom' => 'Zobrazit',
        'Age' => 'St���',
        'Bounce' => 'Odeslat zp�t',
        'Forward' => 'P�edat',
        'From' => 'Od',
        'To' => 'Komu',
        'Cc' => 'Kopie',
        'Bcc' => 'Slep� kopie',
        'Subject' => 'P�edm�t',
        'Move' => 'P�esunout',
        'Queue' => 'Fronta',
        'Priority' => 'Priorita',
        'Priority Update' => '',
        'State' => 'Stav',
        'Compose' => 'Sestavit',
        'Pending' => '�ek� na vy��zen�',
        'Owner' => 'Vlastn�k',
        'Owner Update' => '',
        'Responsible' => '',
        'Responsible Update' => '',
        'Sender' => 'Odes�latel',
        'Article' => 'Polo�ka',
        'Ticket' => 'Tiket',
        'Createtime' => 'Doba vytvo�en�',
        'plain' => 'jednoduch�',
        'Email' => '',
        'email' => '',
        'Close' => 'Zav��t',
        'Action' => 'Akce',
        'Attachment' => 'P��loha',
        'Attachments' => 'P��lohy',
        'This message was written in a character set other than your own.' => 'Tato zpr�va byla naps�na v jin� znakov� sad� ne� Va�e.',
        'If it is not displayed correctly,' => 'Pokud nen� zobrazeno spr�vn�,',
        'This is a' => 'Toto je',
        'to open it in a new window.' => 'pro otev�en� v nov�m okn�.',
        'This is a HTML email. Click here to show it.' => 'Toto je HTML email. Pro zobrazen� klikn�te zde.',
        'Free Fields' => '',
        'Merge' => '',
        'merged' => '',
        'closed successful' => 'uzav�eno - vy�e�eno',
        'closed unsuccessful' => 'uzav�eno - nevy�e�eno',
        'new' => 'nov�',
        'open' => 'otev��t',
        'Open' => '',
        'closed' => 'uzav�eno',
        'Closed' => '',
        'removed' => 'odstran�n',
        'pending reminder' => 'upom�nka p�i �ek�n� na vy��zen�',
        'pending auto' => '',
        'pending auto close+' => '�ek� na vy��zen� - automaticky zav��t+',
        'pending auto close-' => '�ek� na vy��zen� - automaticky zav��t-',
        'email-external' => 'extern� email',
        'email-internal' => 'intern� email',
        'note-external' => 'pozn�mka-extern�',
        'note-internal' => 'pozn�mka-intern�',
        'note-report' => 'pozn�mka-report',
        'phone' => 'telefon',
        'sms' => '',
        'webrequest' => 'po�adavek p�es web',
        'lock' => 'zam�eno',
        'unlock' => 'nezam�en�',
        'very low' => 'velmi n�zk�',
        'low' => 'n�zk�',
        'normal' => 'normaln�',
        'high' => 'vysok�',
        'very high' => 'velmi vysok�',
        '1 very low' => '1 velmi n�zk�',
        '2 low' => '2 n�zk�',
        '3 normal' => '3 norm�ln�',
        '4 high' => '4 vysok�',
        '5 very high' => '5 velmi vysok�',
        'Ticket "%s" created!' => 'Tiket "%s" vytvo�en!',
        'Ticket Number' => '',
        'Ticket Object' => '',
        'No such Ticket Number "%s"! Can\'t link it!' => '',
        'Don\'t show closed Tickets' => 'Nezobrazovat uzav�en� tikety',
        'Show closed Tickets' => 'Zobrazit zav�en� tikety',
        'New Article' => 'Nov� polo�ka',
        'Email-Ticket' => '',
        'Create new Email Ticket' => '',
        'Phone-Ticket' => '',
        'Search Tickets' => '',
        'Edit Customer Users' => '',
        'Edit Customer Company' => '',
        'Bulk Action' => '',
        'Bulk Actions on Tickets' => '',
        'Send Email and create a new Ticket' => '',
        'Create new Email Ticket and send this out (Outbound)' => '',
        'Create new Phone Ticket (Inbound)' => '',
        'Overview of all open Tickets' => '',
        'Locked Tickets' => '',
        'Watched Tickets' => '',
        'Watched' => '',
        'Subscribe' => '',
        'Unsubscribe' => '',
        'Lock it to work on it!' => '',
        'Unlock to give it back to the queue!' => '',
        'Shows the ticket history!' => '',
        'Print this ticket!' => '',
        'Change the ticket priority!' => '',
        'Change the ticket free fields!' => '',
        'Link this ticket to an other objects!' => '',
        'Change the ticket owner!' => '',
        'Change the ticket customer!' => '',
        'Add a note to this ticket!' => '',
        'Merge this ticket!' => '',
        'Set this ticket to pending!' => '',
        'Close this ticket!' => '',
        'Look into a ticket!' => '',
        'Delete this ticket!' => '',
        'Mark as Spam!' => '',
        'My Queues' => '',
        'Shown Tickets' => '',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '',
        'Ticket %s: first response time is over (%s)!' => '',
        'Ticket %s: first response time will be over in %s!' => '',
        'Ticket %s: update time is over (%s)!' => '',
        'Ticket %s: update time will be over in %s!' => '',
        'Ticket %s: solution time is over (%s)!' => '',
        'Ticket %s: solution time will be over in %s!' => '',
        'There are more escalated tickets!' => '',
        'New ticket notification' => 'Nov� ozn�men� tiketu',
        'Send me a notification if there is a new ticket in "My Queues".' => '',
        'Follow up notification' => 'N�sleduj�c� ozn�men�',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Po�li mi ozn�men�, pokud klient po�le n�sleduj�c� a jsem vlastn�k tohoto tiketu.',
        'Ticket lock timeout notification' => 'Ozn�men� o vypr�en� �asu uzam�en� tiketu',
        'Send me a notification if a ticket is unlocked by the system.' => 'Po�li mi ozn�men�, pokud je tiket odemknut syst�mem.',
        'Move notification' => 'P�esunout ozn�men�',
        'Send me a notification if a ticket is moved into one of "My Queues".' => '',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '',
        'Custom Queue' => 'Vlastn� fronta',
        'QueueView refresh time' => 'Doba obnoven� n�hledu fronty',
        'Screen after new ticket' => '',
        'Select your screen after creating a new ticket.' => '',
        'Closed Tickets' => 'Uzav�en� Tikety',
        'Show closed tickets.' => 'Uk�zat uzav�en� tikety.',
        'Max. shown Tickets a page in QueueView.' => 'Max. zobrazen�ch tiket� v n�hledu fronty na str�nku',
        'Watch notification' => '',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '',
        'Out Of Office' => '',
        'Select your out of office time.' => '',
        'CompanyTickets' => '',
        'MyTickets' => '',
        'New Ticket' => '',
        'Create new Ticket' => '',
        'Customer called' => '',
        'phone call' => '',
        'Reminder Reached' => '',
        'Reminder Tickets' => '',
        'Escalated Tickets' => '',
        'New Tickets' => '',
        'Open Tickets / Need to be answered' => '',
        'Tickets which need to be answered!' => '',
        'All new tickets!' => '',
        'All tickets which are escalated!' => '',
        'All tickets where the reminder date has reached!' => '',
        'Responses' => 'Odpov�di',
        'Responses <-> Queue' => '',
        'Auto Responses' => '',
        'Auto Responses <-> Queue' => '',
        'Attachments <-> Responses' => '',
        'History::Move' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => 'Updated SLA to %s (ID=%s).',
        'History::NewTicket' => 'New Ticket [%s] created (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'FollowUp for [%s]. %s',
        'History::SendAutoReject' => 'AutoReject sent to "%s".',
        'History::SendAutoReply' => 'AutoReply sent to "%s".',
        'History::SendAutoFollowUp' => 'AutoFollowUp sent to "%s".',
        'History::Forward' => 'Forwarded to "%s".',
        'History::Bounce' => 'Bounced to "%s".',
        'History::SendAnswer' => 'Email sent to "%s".',
        'History::SendAgentNotification' => '"%s"-notification sent to "%s".',
        'History::SendCustomerNotification' => 'Notification sent to "%s".',
        'History::EmailAgent' => 'Email sent to customer.',
        'History::EmailCustomer' => 'Added email. %s',
        'History::PhoneCallAgent' => 'Agent called customer.',
        'History::PhoneCallCustomer' => 'Customer called us.',
        'History::AddNote' => 'Added note (%s)',
        'History::Lock' => 'Locked ticket.',
        'History::Unlock' => 'Unlocked ticket.',
        'History::TimeAccounting' => '%s time unit(s) accounted. Now total %s time unit(s).',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Updated: %s',
        'History::PriorityUpdate' => 'Changed priority from "%s" (%s) to "%s" (%s).',
        'History::OwnerUpdate' => 'New owner is "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop-Protection! No auto-response sent to "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Updated: %s',
        'History::StateUpdate' => 'Old: "%s" New: "%s"',
        'History::TicketFreeTextUpdate' => 'Updated: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Customer request via web.',
        'History::TicketLinkAdd' => 'Added link to ticket "%s".',
        'History::TicketLinkDelete' => 'Deleted link to ticket "%s".',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

        # Template: AAAWeekDay
        'Sun' => 'Ne',
        'Mon' => 'Po',
        'Tue' => '�t',
        'Wed' => 'St',
        'Thu' => '�t',
        'Fri' => 'P�',
        'Sat' => 'So',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Spr�va p��loh',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Spr�va automatick�ch odpov�d�',
        'Response' => 'Odpov��',
        'Auto Response From' => 'Automatick� odpov�� Od',
        'Note' => 'Pozn�mka',
        'Useable options' => 'Dostupn� mo�nosti',
        'To get the first 20 character of the subject.' => '',
        'To get the first 5 lines of the email.' => '',
        'To get the realname of the sender (if given).' => '',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => '',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => '',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => '',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => '',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => '',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '',
        'Search for' => '',
        'Add Customer Company' => '',
        'Add a new Customer Company.' => '',
        'List' => '',
        'This values are required.' => '',
        'This values are read only.' => '',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => 'Vytv��en� zpr�va byla uzav�ena. Opou�t�m.',
        'This window must be called from compose window' => 'Toto okno mus� b�t vyvol�no z okna vytv��en�',
        'Customer User Management' => 'Spr�va Klient�',
        'Add Customer User' => '',
        'Source' => '',
        'Create' => '',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '',
        'Change %s settings' => 'Zm�nit nastaven� %s',
        'Select the user:group permissions.' => 'Vybrat u�ivatele:pr�va skupiny',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Pokud nebylo nic vybr�no, nejsou v t�to skupin� ��dn� pr�va (tikety nebudou pro u�ivatele dostupn�).',
        'Permission' => 'Pr�va',
        'ro' => 'jen �ten�',
        'Read only access to the ticket in this group/queue.' => 'P��stup pouze pro �ten� tiketu v t�to skupin�/�ad�.',
        'rw' => '�ten�/psan�',
        'Full read and write access to the tickets in this group/queue.' => 'Pln� p��stup pro �ten� a psan� do tiket� v t�to skupin�/front�.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => '',
        'CustomerUser' => 'Klient',
        'Service' => '',
        'Edit default services.' => '',
        'Search Result' => 'V�sledky vyhled�v�n�',
        'Allocate services to CustomerUser' => '',
        'Active' => '',
        'Allocate CustomerUser to service' => '',

        # Template: AdminEmail
        'Message sent to' => 'Zpr�va odesl�na',
        'A message should have a subject!' => 'Zpr�va by m�la m�t p�edm�t!',
        'Recipents' => 'Adres�ti',
        'Body' => 'T�lo',
        'Send' => '',

        # Template: AdminGenericAgent
        'GenericAgent' => '',
        'Job-List' => '',
        'Last run' => '',
        'Run Now!' => '',
        'x' => '',
        'Save Job as?' => '',
        'Is Job Valid?' => '',
        'Is Job Valid' => '',
        'Schedule' => '',
        'Currently this generic agent job will not run automatically.' => '',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Fulltextov� vyhled�v�n� v polo�ce (nap�. "Mar*in" or "Baue*")',
        '(e. g. 10*5155 or 105658*)' => '(nap�. 10*5155 or 105658*)',
        '(e. g. 234321)' => '(nap�. 234321)',
        'Customer User Login' => 'P�ihl�en� klienta',
        '(e. g. U5150)' => '(nap�. U5150)',
        'SLA' => '',
        'Agent' => '',
        'Ticket Lock' => '',
        'TicketFreeFields' => '',
        'Create Times' => '',
        'No create time settings.' => '',
        'Ticket created' => 'Tiket vytvo�en',
        'Ticket created between' => 'Tiket vytvo�en mezi',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending Times' => '',
        'No pending time settings.' => '',
        'Ticket pending time reached' => '',
        'Ticket pending time reached between' => '',
        'Escalation Times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - First Response Time' => '',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - Update Time' => '',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - Solution Time' => '',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'New Service' => '',
        'New SLA' => '',
        'New Priority' => '',
        'New Queue' => 'Nov� fronta',
        'New State' => '',
        'New Agent' => '',
        'New Owner' => 'Nov� vlastn�k',
        'New Customer' => '',
        'New Ticket Lock' => '',
        'New Type' => '',
        'New Title' => '',
        'New TicketFreeFields' => '',
        'Add Note' => 'P�idat pozn�mku',
        'Time units' => 'Jednotky �asu',
        'CMD' => '',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '',
        'Delete tickets' => '',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => '',
        'Send Notification' => '',
        'Param 1' => '',
        'Param 2' => '',
        'Param 3' => '',
        'Param 4' => '',
        'Param 5' => '',
        'Param 6' => '',
        'Send agent/customer notifications on changes' => '',
        'Save' => '',
        '%s Tickets affected! Do you really want to use this job?' => '',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '',
        'Group Management' => 'Spr�va skupiny',
        'Add Group' => '',
        'Add a new Group.' => '',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Skupina administr�tora m� p��stup do administra�n� a statistick� z�ny.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Vytvo�it nov� skupiny pro p�i�azen� pr�v p��stup� ruzn�m skupin�m agent� (nap�. odd�len� n�kupu, odd�len� podpory, odd�len� prodeje...).',
        'It\'s useful for ASP solutions.' => 'To je vhodn� pro �e�en� ASP',

        # Template: AdminLog
        'System Log' => 'Log syst�mu',
        'Time' => '',

        # Template: AdminMailAccount
        'Mail Account Management' => '',
        'Host' => 'Hostitel',
        'Trusted' => 'Ov��eno',
        'Dispatching' => 'Za�azen�',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'V�echny p��choz� emaily z dan�ho ��tu budou za�azeny do vybran� fronty!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

        # Template: AdminNavigationBar
        'Users' => '',
        'Groups' => 'Skupiny',
        'Misc' => 'R�zn�',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Spr�va ozn�men�',
        'Add Notification' => '',
        'Add a new Notification.' => '',
        'Name is required!' => '',
        'Event is required!' => '',
        'A message should have a body!' => 'Zpr�va by m�la m�t t�lo!',
        'Recipient' => '',
        'Group based' => '',
        'Agent based' => '',
        'Email based' => '',
        'Article Type' => '',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '',
        'Body match' => '',
        'Notifications are sent to an agent or a customer.' => 'Ozn�men� jsou odesl�na agentovi �i klientovi',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => '',

        # Template: AdminPackageManager
        'Package Manager' => '',
        'Uninstall' => '',
        'Version' => '',
        'Do you really want to uninstall this package?' => '',
        'Reinstall' => '',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '',
        'Continue' => '',
        'Install' => '',
        'Package' => '',
        'Online Repository' => '',
        'Vendor' => '',
        'Module documentation' => '',
        'Upgrade' => '',
        'Local Repository' => '',
        'Status' => 'Stav',
        'Overview' => 'P�ehled',
        'Download' => '',
        'Rebuild' => '',
        'ChangeLog' => '',
        'Date' => '',
        'Filelist' => '',
        'Download file from package!' => '',
        'Required' => '',
        'PrimaryKey' => '',
        'AutoIncrement' => '',
        'SQL' => '',
        'Diff' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => '',
        'This feature is enabled!' => '',
        'Just use this feature if you want to log each request.' => '',
        'Activating this feature might affect your system performance!' => '',
        'Disable it here!' => '',
        'This feature is disabled!' => '',
        'Enable it here!' => '',
        'Logfile too large!' => '',
        'Logfile too large, you need to reset it!' => '',
        'Range' => '',
        'Interface' => '',
        'Requests' => '',
        'Min Response' => '',
        'Max Response' => '',
        'Average Response' => '',
        'Period' => '',
        'Min' => '',
        'Max' => '',
        'Average' => '',

        # Template: AdminPGPForm
        'PGP Management' => '',
        'Result' => '',
        'Identifier' => '',
        'Bit' => '',
        'Key' => 'Kl��',
        'Fingerprint' => '',
        'Expires' => '',
        'In this way you can directly edit the keyring configured in SysConfig.' => '',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => '',
        'Filtername' => '',
        'Stop after match' => '',
        'Match' => 'Obsahuje',
        'Value' => 'Hodnota',
        'Set' => 'Nastavit',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

        # Template: AdminPriority
        'Priority Management' => 'Řízení priorit',
        'Add Priority' => 'Dodat prioritou',
        'Add a new Priority.' => 'Dodat novou prioritou',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => '',
        'settings' => '',

        # Template: AdminQueueForm
        'Queue Management' => 'Spr�va front',
        'Sub-Queue of' => 'Podfronta ',
        'Unlock timeout' => '�as do odemknut�',
        '0 = no unlock' => '0 = ��dn� odemknut�',
        'Only business hours are counted.' => '',
        '0 = no escalation' => '0 = ��dn� stup�ov�n�',
        'Notify by' => '',
        'Follow up Option' => 'N�sleduj�c� volba',
        'Ticket lock after a follow up' => 'Zamknout tiket po n�sleduj�c�m',
        'Systemaddress' => 'Syst�mov� adresa',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Pokud agent uzamkne tiket a neode�le v t�to dob� odpov��, tiket bude automaticky odemknut. Tak se stane tiket viditeln� pro v�echny ostatn� agenty.',
        'Escalation time' => 'Doba stup�ov�n�',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => '',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Pokud je tiket uzav�en a klient ode�le n�sleduj�c�, tiket bude pro star�ho vlastn�ka uzamknut.',
        'Will be the sender address of this queue for email answers.' => 'Bude adresou odes�latele z t�to fronty pro emailov� odpov�di.',
        'The salutation for email answers.' => 'Osloven� pro emailov� odpov�di.',
        'The signature for email answers.' => 'Podpis pro emailov� odpov�di.',
        'Customer Move Notify' => 'Ozn�men� Klientovi o zm�n� fronty',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS po�le klientovi emailem ozn�men�, pokud bude tiket p�esunut.',
        'Customer State Notify' => 'Ozn�men� Klientovi o zm�n� stavu',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS po�le klientovi emailem ozn�men�, pokud se zm�n� stav tiketu.',
        'Customer Owner Notify' => 'Ozn�men� Klientovi o zm�n� vlastn�ka',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS po�le klientovi emailem ozn�men�, pokud se zm�n� vlastn�k tiketu.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => '',

        # Template: AdminQueueResponsesForm
        'Answer' => 'Odpov��',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => '',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Spr�va odpov�d�',
        'A response is default text to write faster answer (with default text) to customers.' => 'Odpov�� je obsahuje v�choz� text slou��c� k rychlej�� reakci (spolu s v�choz�m textem) klient�m.',
        'Don\'t forget to add a new response a queue!' => 'Nezapome�te p�idat novou reakci odpove� do fronty!',
        'The current ticket state is' => 'Aktu�ln� stav tiketu je',
        'Your email address is new' => '',

        # Template: AdminRoleForm
        'Role Management' => '',
        'Add Role' => '',
        'Add a new Role.' => '',
        'Create a role and put groups in it. Then add the role to the users.' => '',
        'It\'s useful for a lot of users and groups.' => '',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => '',
        'move_into' => 'p�esunout do',
        'Permissions to move tickets into this group/queue.' => 'Pr�va p�esunout tikety do t�to skupiny/fronty',
        'create' => 'vytvo�it',
        'Permissions to create tickets in this group/queue.' => 'Pr�va vytvo�it tikety v t�to skupin�/front�',
        'owner' => 'vlastn�k',
        'Permissions to change the ticket owner in this group/queue.' => 'Pr�va zm�nit vlastn�k tiketu v t�to skupin�/front�',
        'priority' => 'priorita',
        'Permissions to change the ticket priority in this group/queue.' => 'Pr�va zm�nit prioritu tiketu v t�to skupin�/front�',

        # Template: AdminRoleGroupForm
        'Role' => '',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => '',
        'Select the role:user relations.' => '',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Spr�va osloven�',
        'Add Salutation' => '',
        'Add a new Salutation.' => '',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' => '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => '',
        'Go' => '',
        'Select Box Result' => 'V�sledek SQL dotazu',

        # Template: AdminService
        'Service Management' => '',
        'Add Service' => '',
        'Add a new Service.' => '',
        'Sub-Service of' => '',

        # Template: AdminSession
        'Session Management' => 'Spr�va relace',
        'Sessions' => 'Relace',
        'Uniq' => 'Po�et',
        'Kill all sessions' => '',
        'Session' => '',
        'Content' => '',
        'kill session' => 'zru�it relaci',

        # Template: AdminSignatureForm
        'Signature Management' => 'Spr�va podpis�',
        'Add Signature' => '',
        'Add a new Signature.' => '',

        # Template: AdminSLA
        'SLA Management' => '',
        'Add SLA' => '',
        'Add a new SLA.' => '',

        # Template: AdminSMIMEForm
        'S/MIME Management' => '',
        'Add Certificate' => '',
        'Add Private Key' => '',
        'Secret' => '',
        'Hash' => '',
        'In this way you can directly edit the certification and private keys in file system.' => '',

        # Template: AdminStateForm
        'State Management' => '',
        'Add State' => '',
        'Add a new State.' => '',
        'State Type' => 'Typ stavu',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Ujist�te se, �e jste aktualizovali tak� v�choz� hodnoty ve Va�em Kernel/Config.pm!',
        'See also' => 'Viz. tak�',

        # Template: AdminSysConfig
        'SysConfig' => '',
        'Group selection' => '',
        'Show' => '',
        'Download Settings' => '',
        'Download all system config changes.' => '',
        'Load Settings' => '',
        'Subgroup' => '',
        'Elements' => '',

        # Template: AdminSysConfigEdit
        'Config Options' => '',
        'Default' => '',
        'New' => 'Nov�',
        'New Group' => '',
        'Group Ro' => '',
        'New Group Ro' => '',
        'NavBarName' => '',
        'NavBar' => '',
        'Image' => '',
        'Prio' => '',
        'Block' => '',
        'AccessKey' => '',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Spr�va emailov�ch adres syst�mu',
        'Add System Address' => '',
        'Add a new System Address.' => '',
        'Realname' => 'Skute�n� jm�no',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'V�echny p��choz� emaily obsahuj�c� tohoto adres�ta (v poli KOMU) budou za�azeny to vybran� fronty!',

        # Template: AdminTypeForm
        'Type Management' => '',
        'Add Type' => '',
        'Add a new Type.' => '',

        # Template: AdminUserForm
        'User Management' => 'Spr�va u�ivatel�',
        'Add User' => '',
        'Add a new Agent.' => '',
        'Login as' => '',
        'Firstname' => 'K�estn� jm�no',
        'Lastname' => 'P��jmen�',
        'Start' => '',
        'End' => '',
        'User will be needed to handle tickets.' => 'U�ivatel bude pot�ebovat pr�va pro ovl�d�n� tiket�.',
        'Don\'t forget to add a new user to groups and/or roles!' => '',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => '',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Adres��',
        'Return to the compose screen' => 'Vr�tit se zp�t do okna vytv��en�',
        'Discard all changes and return to the compose screen' => 'Zru�it v�echny zm�ny a vr�tit se zp�t do okna vytv��en�',

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
        'Info' => '',

        # Template: AgentLinkObject
        'Link Object: %s' => '',
        'Object' => '',
        'Link Object' => '',
        'with' => '',
        'Select' => 'Vybrat',
        'Unlink Object: %s' => '',

        # Template: AgentLookup
        'Lookup' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Funkce na kontrolu pravopisu',
        'spelling error(s)' => 'chyba(y) v pravopisu',
        'or' => 'nebo',
        'Apply these changes' => 'Aplikovat tyto zm�ny',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => '',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => '',
        'Fixed' => '',
        'Please select only one element or turn off the button \'Fixed\'.' => '',
        'Absolut Period' => '',
        'Between' => '',
        'Relative Period' => '',
        'The last' => '',
        'Finish' => '',
        'Here you can make restrictions to your stat.' => '',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => '',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => '',
        'Permissions' => '',
        'Format' => '',
        'Graphsize' => '',
        'Sum rows' => '',
        'Sum columns' => '',
        'Cache' => '',
        'Required Field' => '',
        'Selection needed' => '',
        'Explanation' => '',
        'In this form you can select the basic specifications.' => '',
        'Attribute' => '',
        'Title of the stat.' => '',
        'Here you can insert a description of the stat.' => '',
        'Dynamic-Object' => '',
        'Here you can select the dynamic object you want to use.' => '',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '',
        'Static-File' => '',
        'For very complex stats it is possible to include a hardcoded file.' => '',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => '',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '',
        'Multiple selection of the output format.' => '',
        'If you use a graph as output format you have to select at least one graph size.' => '',
        'If you need the sum of every row select yes' => '',
        'If you need the sum of every column select yes.' => '',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '',
        '(Note: Useful for big databases and low performance server)' => '',
        'With an invalid stat it isn\'t feasible to generate a stat.' => '',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => '',
        'Scale' => '',
        'minimal' => '',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => '',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => '',
        'maximal period' => '',
        'minimal scale' => '',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsImport
        'Import' => '',
        'File is not a Stats config' => '',
        'No File selected' => '',

        # Template: AgentStatsOverview
        'Results' => 'V�sledky',
        'Total hits' => 'Celkov� po�et z�znam�',
        'Page' => 'Strana',

        # Template: AgentStatsPrint
        'Print' => 'Tisknout',
        'No Element selected.' => '',

        # Template: AgentStatsView
        'Export Config' => '',
        'Information about the Stat' => '',
        'Exchange Axis' => '',
        'Configurable params of static stat' => '',
        'No element selected.' => '',
        'maximal period from' => '',
        'to' => '',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => 'Zpr�va by m�la obsahovat Komu: p��jemce!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Mus�te m�t  uvedenu emailovou adresu (nap�. klient@priklad.cz) v poli Komu:!',
        'Bounce ticket' => 'Odeslat tiket zp�t',
        'Ticket locked!' => 'Tiket zamknut!',
        'Ticket unlock!' => 'Tiket odemknut!',
        'Bounce to' => 'Odeslat zp�t',
        'Next ticket state' => 'N�sleduj�c� stav tiketu',
        'Inform sender' => 'Informovat odes�latele',
        'Send mail!' => 'Poslat mail!',

        # Template: AgentTicketBulk
        'You need to account time!' => 'Pot�ebujete ��tovat dobu!',
        'Ticket Bulk Action' => '',
        'Spell Check' => 'Kontrola pravopisu',
        'Note type' => 'Typ pozn�mky',
        'Next state' => 'Nasleduj�c� stav',
        'Pending date' => 'Datum �ek�n� na vy��zen�',
        'Merge to' => '',
        'Merge to oldest' => '',
        'Link together' => '',
        'Link to Parent' => '',
        'Unlock Tickets' => '',

        # Template: AgentTicketClose
        'Ticket Type is required!' => '',
        'A required field is:' => '',
        'Close ticket' => 'Zav��t tiket',
        'Previous Owner' => 'P�edchoz� vlastn�k',
        'Inform Agent' => '',
        'Optional' => '',
        'Inform involved Agents' => '',
        'Attach' => 'P�ipojit',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => 'Zpr�va mus� b�t pravopisn� zkontrolovan�!',
        'Compose answer for ticket' => 'Sestavit odpov�� pro tiket',
        'Pending Date' => 'Doba �ek�n� na vy��zen�',
        'for pending* states' => 'pro stavy �ek�n� na vy��zen�*',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Zm�nit klienta tiketu',
        'Set customer user and customer id of a ticket' => 'Nastavit klienta a nastavit ID klienta tiketu',
        'Customer User' => 'Klient - U�ivatel�',
        'Search Customer' => 'Vyhledat klienta',
        'Customer Data' => 'Data klienta',
        'Customer history' => 'Historie klienta',
        'All customer tickets.' => 'V�echny tikety klienta',

        # Template: AgentTicketEmail
        'Compose Email' => '',
        'new ticket' => 'nov� tiket',
        'Refresh' => '',
        'Clear To' => '',
        'All Agents' => 'V�ichni agenti',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Typ polo�ky',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Zm�nit �pln� text tiketu',

        # Template: AgentTicketHistory
        'History of' => 'Historie',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => '',
        'Ticket Merge' => '',

        # Template: AgentTicketMove
        'Move Ticket' => 'P�esunout tiket',

        # Template: AgentTicketNote
        'Add note to ticket' => 'P�idat pozn�mku k tiketu',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => '',
        'Service Time' => '',
        'Update Time' => '',
        'Solution Time' => '',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => '',

        # Template: AgentTicketOverviewNavBar
        'Filter' => '',
        'Change search options' => 'Zm�nit mo�nosti vyhled�v�n�',
        'Tickets' => 'Tikety',
        'of' => 'z',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'Odpov�d�t',
        'Contact customer' => 'Kontaktovat klienta',
        'Change queue' => 'Zm�nit frontu',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 'set��dit nahoru',
        'up' => 'nahoru',
        'sort downward' => 'set��dit dol�',
        'down' => 'dol�',
        'Escalation in' => 'Stup�ov�n� v',
        'Locked' => '',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Zm�nit vlastn�ka tiketu',

        # Template: AgentTicketPending
        'Set Pending' => 'Nastavit - �ek� na vy��zen�',

        # Template: AgentTicketPhone
        'Phone call' => 'Telefon� hovor',
        'Clear From' => 'Vymazat pole Od',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Jednoduch�',

        # Template: AgentTicketPrint
        'Ticket-Info' => '',
        'Accounted time' => '��tovan� doba',
        'Linked-Object' => '',
        'by' => 'p�es',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Zm�nit d�le�itost tiketu',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Zobrazen� tikety',
        'Tickets available' => 'Tiket� k dispozici',
        'All tickets' => 'V�echny tikety',
        'Queues' => '�ady',
        'Ticket escalation!' => 'Eskalace tiket�',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Hled�n� tiketu',
        'Profile' => 'Profil',
        'Search-Template' => 'Forma vyhled�v�n�',
        'TicketFreeText' => 'Voln� text tiketu',
        'Created in Queue' => '',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '',
        'No change time settings.' => '',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => 'Forma v�sledku',
        'Save Search-Profile as Template?' => 'Ulo�it profil vyhled�v�n� jako �ablonu?',
        'Yes, save it with name' => 'Ano, ulo�it pod n�zvem',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => '',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => '',
        'Collapse View' => '',
        'Split' => 'Rozd�lit',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => '',
        'Save filter settings as default' => '',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'J�t zp�t',

        # Template: CustomerFooter
        'Powered by' => 'Vytvo�eno',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => '',
        'Lost your password?' => 'Ztratil/a jste heslo?',
        'Request new password' => 'Po��dat o nov� heslo',
        'Create Account' => 'Vytvo�it ��et',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'V�tejte %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Doba',
        'No time settings.' => '��dn� nastaven� doby',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Klikn�te zde pro nahl�en� chyby!',

        # Template: Footer
        'Top of Page' => 'Hlava str�nky',

        # Template: FooterSmall

        # Template: Header
        'Home' => 'Dom�',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Web-instal�tor',
        'Welcome to %s' => 'V�tejte v %s',
        'Accept license' => '',
        'Don\'t accept license' => '',
        'Admin-User' => 'Administr�tor',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '',
        'Admin-Password' => '',
        'Database-User' => '',
        'default \'hot\'' => 'v�choz� \'hot\'',
        'DB connect host' => '',
        'Database' => '',
        'Default Charset' => 'V�choz� znakov� sada',
        'utf8' => '',
        'false' => '',
        'SystemID' => 'Syst�mov� ID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Identita syst�mu. Ka�d� ��slo tiketu a ID ka�d� HTTP relace za��n� t�mto ��slem)',
        'System FQDN' => 'Syst�m FQDN',
        '(Full qualified domain name of your system)' => '(Platn� n�zev dom�ny pro v� syst�m (FQDN))',
        'AdminEmail' => 'Email Administr�tora',
        '(Email of the system admin)' => '(Email administr�tora syst�mu)',
        'Organization' => 'Organizace',
        'Log' => '',
        'LogModule' => 'Log Modul',
        '(Used log backend)' => '(Pou�it v�stup do logu)',
        'Logfile' => 'Log soubor',
        '(Logfile just needed for File-LogModule!)' => '(Pro logov�n� do souboru je nutn� zadat n�zev souboru logu!)',
        'Webfrontend' => 'Webove rozhran�',
        'Use utf-8 it your database supports it!' => 'Pou�ijte utf-8 pokud to Va�e datab�ze podporuje',
        'Default Language' => 'V�choz� jazyk',
        '(Used default language)' => '(Pou�it� v�choz� jazyk)',
        'CheckMXRecord' => 'Kontrolovat MX z�znam',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kontroluj MX z�znamy pou�it�ch emailov�ch adres p�i sestavov�n� odpov�di. Nepou��vejte pokud OTRS server p�ipojen pomoc� vyt��en� linky!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Abyste mohli pou��vat OTRS, mus�te zadat n�sleduj�c� ��dek do Va�eho p��kazov�ho ��dku (Terminal/Shell) jako root.',
        'Restart your webserver' => 'Restartujte V� webserver',
        'After doing so your OTRS is up and running.' => 'Po dokon�en� n�sleduj�c�ch operac� je V� OTRS spu�t�n a pob��',
        'Start page' => '�vodn� str�nka',
        'Your OTRS Team' => 'V� OTRS t�m',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => '��dn� pr�va',

        # Template: Notify
        'Important' => '',

        # Template: PrintFooter
        'URL' => '',

        # Template: PrintHeader
        'printed by' => 'tisknuto',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'Testovac� OTRS str�nka',
        'Counter' => '',

        # Template: Warning

        # Template: YUI

        # Misc
        'Create Database' => 'Vytvo�it Databazi',
        'DB Host' => 'Hostitel (server) datab�ze',
        'Change roles <-> groups settings' => '',
        'Ticket Number Generator' => 'Gener�tor ��sel tiket�',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identifik�tor tiket�. Nekte�� lid� cht�j� nastavit nap�. \'Tiket#\',  \'Hovor#\' nebo \'MujTiket#\')',
        'Create new Phone Ticket' => '',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
        'Symptom' => 'P��znak',
        'U' => 'Z-A',
        'Site' => 'Um�st�n�',
        'Customer history search (e. g. "ID342425").' => 'Vyhled�v�n� historie klienta (nap�. "ID342425")',
        'Can not delete link with %s!' => '',
        'for agent firstname' => 'pro k�estn� jm�no agenta',
        'Close!' => 'Zav��t!',
        'No means, send agent and customer notifications on changes.' => '',
        'A web calendar' => '',
        'to get the realname of the sender (if given)' => 'pro z�skan� skute�n�ho jm�na odes�latele (pokud je zad�no)',
        'OTRS DB Name' => 'N�zev OTRS datab�ze',
        'Notification (Customer)' => '',
        'Select Source (for add)' => '',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',
        'Child-Object' => '',
        'Queue ID' => 'ID fronty',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => '',
        'System History' => '',
        'customer realname' => 'skute�n� jm�no klienta',
        'Pending messages' => 'Zpr�vy �ekaj�c� na vy��zen�',
        'Port' => '',
        'Modules' => '',
        'for agent login' => 'pro p�ihl�en� agenta',
        'Keyword' => 'Kl��ov� slovo',
        'Close type' => 'Zav��t typ',
        'DB Admin User' => 'Administr�tor datab�ze',
        'for agent user id' => 'pro u�ivatelsk� ID agenta',
        'Change user <-> group settings' => 'Zm�nit u�ivatele <-> nastaven� skupiny',
        'Problem' => 'Probl�m',
        'Escalation' => '',
        '"}' => '',
        'Order' => 'Se�adit',
        'next step' => 'dal�� krok',
        'Follow up' => 'N�sleduj�c�',
        'Customer history search' => 'Vyhled�v�n� historie klienta',
        'Admin-Email' => 'Email administr�tora',
        'Stat#' => '',
        'ArticleID' => 'ID polo�ky',
        'Keywords' => 'Kl��ov� slova',
        'Ticket Escalation View' => '',
        'Today' => '',
        'No * possible!' => '��dn� * mo�n�!',
        'Options ' => '',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
        'Message for new Owner' => 'Zpr�va pro nov�ho vlastn�ka',
        'to get the first 5 lines of the email' => 'pro z�sk�n� prvn�ch 5 ��dk� z emailu',
        'Sort by' => 'Set��dit dle',
        'OTRS DB Password' => 'Heslo OTRS datab�ze',
        'Last update' => 'Posledn� aktualizace',
        'Tomorrow' => '',
        'to get the first 20 character of the subject' => 'pro z�sk�ni prvn�ch 20 znak� z p�edm�tu',
        'Select the customeruser:service relations.' => '',
        'DB Admin Password' => 'Heslo administr�tora datab�ze',
        'Advisory' => '',
        'Drop Database' => 'Odstranit databazi',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',
        'FileManager' => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => '',
        'Pending type' => 'Typ �ek�n� na vy��zen�',
        'Comment (internal)' => 'Koment�� (intern�)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        '(Used ticket number format)' => '(Pou�it� form�t ��sel tiket�)',
        'Reminder' => 'Upom�nka',
        'OTRS DB connect host' => 'Hostitel OTRS datab�ze (server)',
        'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Nebude-li tiket odpov�zen v dan�m �ase, bude zobrazen pouze tento Tiket.',
        'All Agent variables.' => '',
        ' (work units)' => '(jednotky pr�ce)',
        'Next Week' => '',
        'All Customer variables like defined in config option CustomerUser.' => '',
        'accept license' => 'souhlas�m s licenc�',
        'for agent lastname' => 'pro p��jmen� agenta',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => '',
        'Reminder messages' => 'Upom�nkov� zpr�vy',
        'Parent-Object' => '',
        'Of couse this feature will take some system performance it self!' => '',
        'Ticket Hook' => 'Ozna�en� tiketu',
        'Your own Ticket' => 'V� vlastn� tiket',
        'Detail' => '',
        'TicketZoom' => 'Zobrazen� tiketu',
        'Open Tickets' => '',
        'Don\'t forget to add a new user to groups!' => 'Nezapome�te p�idat nov�ho u�ivatele do skupin!',
        'CreateTicket' => 'Vytvo�eno Tiketu',
        'You have to select two or more attributes from the select field!' => '',
        'System Settings' => 'Nastaven� syst�mu',
        'WebWatcher' => '',
        'Finished' => 'Dokon�eno',
        'Account Type' => '',
        'D' => 'A-Z',
        'System Status' => '',
        'All messages' => 'V�echny zpr�vy',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        'Object already linked as %s.' => '',
        'A article should have a title!' => '',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
        'don\'t accept license' => 'nesouhlas�m s licenc�',
        'All email addresses get excluded on replaying on composing and email.' => '',
        'A web mail client' => '',
        'Compose Follow up' => 'Sestavit n�sleduj�c�',
        'WebMail' => '',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => '',
        'DB Type' => 'Typ datab�ze',
        'kill all sessions' => 'Zru�it v�echny relace',
        'to get the from line of the email' => 'pro z�skan� ��dku Od z emailu',
        'Solution' => '�e�en�',
        'QueueView' => 'N�hled fronty',
        'Select Box' => 'Po�adavek na SQL datab�zi',
        'New messages' => 'Nov� zpr�vy',
        'Can not create link with %s!' => '',
        'Linked as' => '',
        'Welcome to OTRS' => '',
        'modified' => '',
        'Delete old database' => 'Smazat starou datab�zi',
        'A web file manager' => '',
        'Have a lot of fun!' => 'P�ejeme hodn� �sp�ch� s OTRS!',
        'send' => 'poslat',
        'Send no notifications' => '',
        'Note Text' => 'Text pozn�mky',
        'POP3 Account Management' => 'Spr�va POP3 ��t�',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
        'System State Management' => 'Spr�va stavu syst�mu',
        'OTRS DB User' => 'U�ivatel OTRS datab�ze',
        'Mailbox' => 'Po�tovn� schr�nka',
        'PhoneView' => 'Nov� tiket / hovor',
        'maximal period form' => '',
        'TicketID' => 'ID tiketu',
        'Escaladed Tickets' => '',
        'Yes means, send no agent and customer notifications on changes.' => '',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'V� email s ��slem ticketu "<OTRS_TICKET>" je odesl�n zp�t na "<OTRS_BOUNCE_TO>". Kontaktujte tuto adresu pro dal�� infromace.',
        'Ticket Status View' => '',
        'Modified' => 'Zm�n�no',
        'Ticket selected for bulk action!' => '',
    };
    # $$STOP$$
    return;
}

1;
