# --
# Kernel/Language/sv.pm - Swedish language translation
# Copyright (C) 2004 Mats Eric Olausson <mats at synergy.se>
# Copyright (C) 2009 Mikael Mattsson" <Mikael.Mattsson at konsumvarmland.se>
# --
# $Id: sv.pm,v 1.79 2010-01-19 22:57:48 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::sv;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.79 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sat Jun 27 13:55:43 2009

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%D/%M %Y %T';
    $Self->{DateFormatLong}      = '%A %D. %B %Y %T';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';
    $Self->{Separator}           = ';';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => 'Ja',
        'No' => 'Nej',
        'yes' => 'ja',
        'no' => 'inga',
        'Off' => 'Av',
        'off' => 'av',
        'On' => 'P�',
        'on' => 'p�',
        'top' => 'topp',
        'end' => 'slut',
        'Done' => 'Klar',
        'Cancel' => 'Avbryt',
        'Reset' => 'Nollst�ll',
        'last' => 'sista',
        'before' => 'f�re',
        'day' => 'dag',
        'days' => 'dagar',
        'day(s)' => 'dag(ar)',
        'hour' => 'timme',
        'hours' => 'timmar',
        'hour(s)' => '',
        'minute' => 'minut',
        'minutes' => 'minuter',
        'minute(s)' => 'minut(er)',
        'month' => 'm�nad',
        'months' => 'm�nader',
        'month(s)' => 'm�nad(er)',
        'week' => 'vecka',
        'week(s)' => 'vecka(or)',
        'year' => '�r',
        'years' => '�r',
        'year(s)' => '�r',
        'second(s)' => 'sekund(er)',
        'seconds' => 'sekunder',
        'second' => 'sekund',
        'wrote' => 'skrev',
        'Message' => 'Meddelande',
        'Error' => 'Fel',
        'Bug Report' => 'Rapportera fel',
        'Attention' => 'OBS',
        'Warning' => 'Varning',
        'Module' => 'Modul',
        'Modulefile' => 'Modulfil',
        'Subfunction' => 'Underfunktion',
        'Line' => 'Rad',
        'Setting' => 'Inst�llning',
        'Settings' => 'Inst�llningar',
        'Example' => 'Exempel',
        'Examples' => 'Exempel',
        'valid' => 'giltig',
        'invalid' => 'ogiltig',
        '* invalid' => '* ogiltlig',
        'invalid-temporarily' => '* ogiltlig-tillf�lligt',
        ' 2 minutes' => ' 2 minuter',
        ' 5 minutes' => ' 5 minuter',
        ' 7 minutes' => ' 7 minuter',
        '10 minutes' => '10 minuter',
        '15 minutes' => '15 minuter',
        'Mr.' => 'Mr.',
        'Mrs.' => 'Mrs.',
        'Next' => 'N�sta',
        'Back' => 'Tillbaka',
        'Next...' => 'N�sta...',
        '...Back' => '...Tillbaka',
        '-none-' => '-inga-',
        'none' => 'inga',
        'none!' => 'inga!',
        'none - answered' => 'inga - besvarat',
        'please do not edit!' => 'Var v�nlig och �ndra inte detta!',
        'AddLink' => 'L�gg till l�nk',
        'Link' => 'L�nk',
        'Unlink' => 'Avl�nka',
        'Linked' => 'L�nkat',
        'Link (Normal)' => 'L�nk (Normal)',
        'Link (Parent)' => 'L�nk (F�r�lder)',
        'Link (Child)' => 'L�nk (Barn)',
        'Normal' => 'Normal',
        'Parent' => 'F�r�lder',
        'Child' => 'Barn',
        'Hit' => 'Tr�ff',
        'Hits' => 'Tr�ffar',
        'Text' => 'Text',
        'Lite' => 'Enkel',
        'User' => 'Anv�ndare',
        'Username' => 'Anv�ndarnamn',
        'Language' => 'Spr�k',
        'Languages' => 'Spr�k',
        'Password' => 'L�senord',
        'Salutation' => 'H�lsning',
        'Signature' => 'Signatur',
        'Customer' => 'Kund',
        'CustomerID' => 'KundID',
        'CustomerIDs' => 'KundIDn',
        'customer' => 'kund',
        'agent' => 'agent',
        'system' => 'System',
        'Customer Info' => 'Kundinfo',
        'Customer Company' => 'Kundf�retag',
        'Company' => 'F�retag',
        'go!' => 'Starta!',
        'go' => 'Starta',
        'All' => 'Alla',
        'all' => 'alla',
        'Sorry' => 'Beklagar',
        'update!' => 'Uppdatera!',
        'update' => 'uppdatera',
        'Update' => 'Uppdatera',
        'Updated!' => 'Uppdaterad!',
        'submit!' => 'Skicka!',
        'submit' => 'Skicka',
        'Submit' => 'Skicka',
        'change!' => '�ndra!',
        'Change' => '�ndra',
        'change' => '�ndra',
        'click here' => 'klicka h�r',
        'Comment' => 'Kommentar',
        'Valid' => 'Giltigt',
        'Invalid Option!' => 'Ogiltligt val!',
        'Invalid time!' => 'Ogiltlig tid!',
        'Invalid date!' => 'Ogiltligt datum!',
        'Name' => 'Namn',
        'Group' => 'Grupp',
        'Description' => 'Beskrivning',
        'description' => 'beskrivning',
        'Theme' => 'Tema',
        'Created' => 'Skapat',
        'Created by' => 'Skapat av',
        'Changed' => '�ndrat',
        'Changed by' => '�ndrat av',
        'Search' => 'S�k',
        'and' => 'och',
        'between' => 'mellan',
        'Fulltext Search' => 'Fulltexts�kning',
        'Data' => 'Data',
        'Options' => 'Tillval',
        'Title' => 'Titel',
        'Item' => 'Enhet',
        'Delete' => 'Radera',
        'Edit' => 'Redigera',
        'View' => 'Bild',
        'Number' => 'Nummer',
        'System' => 'System',
        'Contact' => 'Kontakt',
        'Contacts' => 'Kontakter',
        'Export' => 'Exportera',
        'Up' => 'Upp',
        'Down' => 'Ner',
        'Add' => 'L�gg till',
        'Added!' => 'Tillagd',
        'Category' => 'Kategori',
        'Viewer' => 'Bevakare',
        'Expand' => 'Expandera',
        'New message' => 'Nytt meddelande',
        'New message!' => 'Nytt meddelande!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'V�nligen besvara denna/dessa �renden f�r att komma tillbaka till den normala k�-visningsbilden!',
        'You got new message!' => 'Du har f�tt ett nytt meddelande!',
        'You have %s new message(s)!' => 'Du har %s nya meddelanden!',
        'You have %s reminder ticket(s)!' => 'Du har %s p�minnelse-�rende(n)!',
        'The recommended charset for your language is %s!' => 'Den rekommenderade teckenupps�ttningen f�r ditt spr�k �r %s!',
        'Passwords doesn\'t match! Please try it again!' => 'L�senorden �r inte lika! G�r ett nytt f�rs�k!',
        'Password is already in use! Please use an other password!' => 'L�senordet anv�nds redan! Anv�nd ett annat l�senord!',
        'Password is already used! Please use an other password!' => 'L�senordet har redan anv�nts! Anv�nd ett annat l�senord!',
        'You need to activate %s first to use it!' => 'Du m�ste aktivera %s f�rst f�r att kunna anv�nda det!',
        'No suggestions' => 'Inga f�rslag',
        'Word' => 'Ord',
        'Ignore' => 'Ignorera',
        'replace with' => 'Ers�tt med',
        'There is no account with that login name.' => 'Det finns inget konto med detta namn.',
        'Login failed! Your username or password was entered incorrectly.' => 'Inloggningen misslyckades! Angivet anv�ndarnamn och/eller l�senord �r inte korrekt.',
        'Please contact your admin' => 'V�nligen kontakta administrat�ren',
        'Logout successful. Thank you for using OTRS!' => 'Utloggningen lyckades.  Tack f�r att du anv�nde OTRS!',
        'Invalid SessionID!' => 'Ogiltigt SessionID!',
        'Feature not active!' => 'Funktion inte aktiverad!',
        'Notifications (Event)' => 'Meddelande (Akitivtet)',
        'Login is needed!' => 'Inloggning kr�vs!',
        'Password is needed!' => 'L�senord kr�vs!',
        'License' => 'Licens',
        'Take this Customer' => 'V�lj denna kund',
        'Take this User' => 'V�lj denna anv�ndare',
        'possible' => 'm�jlig',
        'reject' => 'Avvisas',
        'reverse' => 'bakl�nges',
        'Facility' => 'Innr�ttning',
        'Timeover' => 'Tids�vertr�delse',
        'Pending till' => 'V�ntande tills',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'Det �r inte rekommenderat att arbeta som userid 1 (systemkonto)! Skapa nya anv�ndare!',
        'Dispatching by email To: field.' => 'Skickar iv�g enligt epostmeddelandets Till:-f�lt.',
        'Dispatching by selected Queue.' => 'Skickar iv�g enligt vald k�.',
        'No entry found!' => 'Ingen inmatning funnen!',
        'Session has timed out. Please log in again.' => 'Sessionstiden har l�pt ut.  V�nligen logga p� igen.',
        'No Permission!' => 'Ej Beh�rig!',
        'To: (%s) replaced with database email!' => 'Till: (%s) ersatt med epost fr�n databas!',
        'Cc: (%s) added database email!' => 'Cc: (.s) tillagd med epost fr�n databas.',
        '(Click here to add)' => '(Klicka h�r f�r att l�gga till)',
        'Preview' => 'Forhandsvisning',
        'Package not correctly deployed! You should reinstall the Package again!' => 'Paketet �r inte korrekt installerat! Du b�r installera om det!',
        'Added User "%s"' => 'La till Anv�ndare "%s"',
        'Contract' => 'Kontrakt',
        'Online Customer: %s' => 'Kund online: %s',
        'Online Agent: %s' => 'Agent online: %s',
        'Calendar' => 'Kalender',
        'File' => 'Fil',
        'Filename' => 'Filnamn',
        'Type' => 'Typ',
        'Size' => 'Storlek',
        'Upload' => 'Ladda upp',
        'Directory' => 'Katalog',
        'Signed' => 'Signatur',
        'Sign' => 'Signerat',
        'Crypted' => 'Krypterat',
        'Crypt' => 'Kryptering',
        'Office' => 'Kontor',
        'Phone' => 'Telefon',
        'Fax' => 'Fax',
        'Mobile' => 'Mobil',
        'Zip' => 'Postnr',
        'City' => 'Stad',
        'Street' => 'Gata',
        'Country' => 'Land',
        'Location' => 'Plats',
        'installed' => 'installerad',
        'uninstalled' => 'avinstallerad',
        'Security Note: You should activate %s because application is already running!' => 'S�kerhetsinfo: Du b�r aktivera %s f�r programmet k�rs redan!',
        'Unable to parse Online Repository index document!' => 'Kan inte hantera onlinelagringens indexdokument',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'Inga Paket f�r valt Ramverk i det h�r Online-Repositoryt, men paket f�r andra Ramverk!',
        'No Packages or no new Packages in selected Online Repository!' => 'Inga Paket eller inga nya Paket i valt Online-Repository',
        'printed at' => 'utskriven vid',
        'Dear Mr. %s,' => 'B�ste Herr %s,',
        'Dear Mrs. %s,' => 'B�ste Fru %s,',
        'Dear %s,' => 'B�ste %s,',
        'Hello %s,' => 'Hej %s,',
        'This account exists.' => 'Kontot finns.',
        'New account created. Sent Login-Account to %s.' => 'Nytt konto skapat. Skickade inloggningsuppgifter till %s',
        'Please press Back and try again.' => 'Tryck p� bak�tknappen och f�rs�k igen.',
        'Sent password token to: %s' => 'Skickade l�senordsinfo till: %s',
        'Sent new password to: %s' => 'Skickade nytt l�senord till: %s',
        'Upcoming Events' => 'Kommande Evenemang',
        'Event' => 'Evenemang',
        'Events' => 'Evenemang',
        'Invalid Token!' => 'Ogiltlig inmatning!',
        'more' => 'mer',
        'For more info see:' => 'F�r mer info:',
        'Package verification failed!' => 'Paketverifiering misslyckades!',
        'Collapse' => 'Kollapsa',
        'News' => 'Nyheter',
        'Product News' => 'Produktnyheter',
        'Bold' => 'Fet',
        'Italic' => 'Kursiv',
        'Underline' => 'Understruket',
        'Font Color' => 'Typsnittsf�rg',
        'Background Color' => 'Bakgrundsf�rg',
        'Remove Formatting' => 'Radera Formatering',
        'Show/Hide Hidden Elements' => 'Visa/D�lj dolda element',
        'Align Left' => 'V�nsterst�ll',
        'Align Center' => 'Centrera',
        'Align Right' => 'H�gerst�ll',
        'Justify' => 'Justera',
        'Header' => 'Huvud',
        'Indent' => 'indrag',
        'Outdent' => 'utdrag',
        'Create an Unordered List' => 'Skapa en Osorterad Lista',
        'Create an Ordered List' => 'Skapa en Sorterad Lista',
        'HTML Link' => 'HTML-L�nk',
        'Insert Image' => 'Infoga Bild',
        'CTRL' => 'CTRL',
        'SHIFT' => 'SHIFT',
        'Undo' => '�ngra',
        'Redo' => 'G�r om',

        # Template: AAAMonth
        'Jan' => 'jan',
        'Feb' => 'feb',
        'Mar' => 'mar',
        'Apr' => 'apr',
        'May' => 'maj',
        'Jun' => 'jun',
        'Jul' => 'jul',
        'Aug' => 'aug',
        'Sep' => 'sep',
        'Oct' => 'okt',
        'Nov' => 'nov',
        'Dec' => 'dec',
        'January' => 'Januari',
        'February' => 'Februari',
        'March' => 'Mars',
        'April' => 'April',
        'May_long' => 'Maj',
        'June' => 'Juni',
        'July' => 'Juli',
        'August' => 'Augusti',
        'September' => 'September',
        'October' => 'Oktober',
        'November' => 'November',
        'December' => 'December',

        # Template: AAANavBar
        'Admin-Area' => 'Administrationsrelaterat',
        'Agent-Area' => 'Agentrelaterat',
        'Ticket-Area' => '�renden',
        'Logout' => 'Logga ut',
        'Agent Preferences' => 'Agentinst�llningar',
        'Preferences' => 'Inst�llningar',
        'Agent Mailbox' => 'Agentmailbox',
        'Stats' => 'Statistik',
        'Stats-Area' => 'Statistik',
        'Admin' => 'Administration',
        'Customer Users' => 'Kundanv�ndare',
        'Customer Users <-> Groups' => 'Kundanv�ndare <-> Grupper',
        'Users <-> Groups' => 'Anv�ndare <-> Grupper',
        'Roles' => 'Roller',
        'Roles <-> Users' => 'Roller <-> Anv�ndare',
        'Roles <-> Groups' => 'Roller <-> Grupper',
        'Salutations' => 'H�lsningar',
        'Signatures' => 'Signaturer',
        'Email Addresses' => 'Epostadresser',
        'Notifications' => 'Meddelanden',
        'Category Tree' => 'Kategoritr�d',
        'Admin Notification' => 'Admin-meddelanden',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Inst�llningar lagrade!',
        'Mail Management' => 'Eposthantering',
        'Frontend' => 'Gr�nssnitt',
        'Other Options' => 'Andra tillval',
        'Change Password' => 'Byt l�senord',
        'New password' => 'Nytt l�senord',
        'New password again' => 'Nytt l�senord (igen)',
        'Select your QueueView refresh time.' => 'V�lj automatisk uppdateringsintervall f�r K�-bild.',
        'Select your frontend language.' => 'V�lj spr�k.',
        'Select your frontend Charset.' => 'V�lj teckenupps�ttning.',
        'Select your frontend Theme.' => 'V�lj stil-tema.',
        'Select your frontend QueueView.' => 'V�lj K�-bild.',
        'Spelling Dictionary' => 'Stavningslexikon',
        'Select your default spelling dictionary.' => 'V�lj standard ordbok for stavningskontroll.',
        'Max. shown Tickets a page in Overview.' => 'Max. visade �renden per sida i �versikt.',
        'Can\'t update password, your new passwords do not match! Please try again!' => 'Kan inte l�senordet, l�senorden �r inte lika! F�rs�k igen!',
        'Can\'t update password, invalid characters!' => 'Kan inte �ndra l�senordet, du har anv�nt ogiltliga tecken!',
        'Can\'t update password, must be at least %s characters!' => 'Kan inte �ndra l�senordet, det m�ste vara minst %s tecken l�ngt! ',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => 'Kan inte �ndra l�senordet, det m�ste inneh�lla minst tv� gemener och tv� versaler! ',
        'Can\'t update password, needs at least 1 digit!' => 'Kan inte �ndra l�senordet, det kr�vs minst en siffra!',
        'Can\'t update password, needs at least 2 characters!' => 'Kan inte �ndra l�senordet, det kr�vs minst tv� bokst�ver!',

        # Template: AAAStats
        'Stat' => 'Statistik',
        'Please fill out the required fields!' => 'Fyll i de tvingande f�lten!',
        'Please select a file!' => 'V�lj en fil!',
        'Please select an object!' => 'V�lj ett objekt!',
        'Please select a graph size!' => 'V�lj en grafstorlek!',
        'Please select one element for the X-axis!' => 'V�lj ett av elementen f�r X-axeln!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'V�lj endast ett element, eller st�ng av flaggan \'Fast\' d�r den �r markerad!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Om du anv�nder en bockruta m�ste du v�lja n�got av attributen f�r det valda f�ltet!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Infoga ett v�rde i valt f�lt, eller bocka ur \'Fast\' -rutan',
        'The selected end time is before the start time!' => 'Vald sluttid �r f�re starttiden!',
        'You have to select one or more attributes from the select field!' => 'Du m�ste v�lja ett eller flera attribut i valt f�lt!',
        'The selected Date isn\'t valid!' => 'Valt datum �r inte giltligt!',
        'Please select only one or two elements via the checkbox!' => 'V�lj bara ett eller tv� element via bockrutan!',
        'If you use a time scale element you can only select one element!' => 'Om du anv�nder en tidsskala kan du bara v�lja ett element!',
        'You have an error in your time selection!' => 'Du har ett fel i ditt tidsval!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'Ditt rapporteringsintervall �r f�r litet, anv�nd en st�rre tidsskala',
        'The selected start time is before the allowed start time!' => 'Vald starttid �r innan den till�tna starttiden!',
        'The selected end time is after the allowed end time!' => 'Vald sluttid �r efter den till�tna sluttiden!',
        'The selected time period is larger than the allowed time period!' => 'Vald tidsperiod �r st�rre �n den till�tna tidsperioden!',
        'Common Specification' => 'Vanlig Spec.',
        'Xaxis' => 'X-axel',
        'Value Series' => 'V�rdeserie',
        'Restrictions' => 'Begr�nsningar',
        'graph-lines' => 'graf-linjer',
        'graph-bars' => 'graf-block',
        'graph-hbars' => 'graf-hblock',
        'graph-points' => 'graf-punkter',
        'graph-lines-points' => 'graf-linjer-punkter',
        'graph-area' => 'graf-area',
        'graph-pie' => 'graf-paj',
        'extended' => 'ut�kad',
        'Agent/Owner' => 'Agent/�gare',
        'Created by Agent/Owner' => 'Skapad av Agent/�gare',
        'Created Priority' => 'Skapad Prioritet',
        'Created State' => 'Skapad Status',
        'Create Time' => 'Skapad Tid',
        'CustomerUserLogin' => 'KundAnv�ndarLogin',
        'Close Time' => 'St�ngTid',
        'TicketAccumulation' => '�rendeackumulering',
        'Attributes to be printed' => 'Attribut som skall skrivas ut',
        'Sort sequence' => 'Sorteringssekvens',
        'Order by' => 'Sortera efter',
        'Limit' => 'Gr�ns',
        'Ticketlist' => '�rendelista',
        'ascending' => 'stigande',
        'descending' => 'fallande',
        'First Lock' => 'F�rsta L�s',
        'Evaluation by' => 'Utv�rdering av',
        'Total Time' => 'Total Tid',
        'Ticket Average' => '�rende Medel',
        'Ticket Min Time' => '�rende Min Tid',
        'Ticket Max Time' => '�rende Max Tid',
        'Number of Tickets' => 'Antal �renden',
        'Article Average' => 'Artikel Medel',
        'Article Min Time' => 'Artikel Min Tid',
        'Article Max Time' => 'Artikel Max tid',
        'Number of Articles' => 'Antal Artiklar',
        'Accounted time by Agent' => 'Redovisad tid per Agent',
        'Ticket/Article Accounted Time' => '�rende/Artikel Redovisad Tid',
        'TicketAccountedTime' => '�rendeRedovisadTid',
        'Ticket Create Time' => '�rende Skapad Tid',
        'Ticket Close Time' => '�rende St�ngt Tid',

        # Template: AAATicket
        'Lock' => 'L�s',
        'Unlock' => 'L�s upp',
        'History' => 'Historik',
        'Zoom' => 'Zooma',
        'Age' => '�lder',
        'Bounce' => 'Studsa',
        'Forward' => 'Vidarebefordra',
        'From' => 'Fr�n',
        'To' => 'Till',
        'Cc' => 'Kopia',
        'Bcc' => 'Dold kopia',
        'Subject' => '�mne',
        'Move' => 'Flytta',
        'Queue' => 'K�',
        'Priority' => 'Prioritet',
        'Priority Update' => '�ndra Prioritet',
        'State' => 'Status',
        'Compose' => 'F�rfatta',
        'Pending' => 'V�ntande',
        'Owner' => '�gare',
        'Owner Update' => '�ndra �gare',
        'Responsible' => 'Ansvarig',
        'Responsible Update' => '�ndra Ansvarig',
        'Sender' => 'Avs�ndare',
        'Article' => 'Artikel',
        'Ticket' => '�rende',
        'Createtime' => 'Tidpunkt f�r skapande',
        'plain' => 'r�',
        'Email' => 'Epost',
        'email' => 'epost',
        'Close' => 'St�ng',
        'Action' => '�tg�rd',
        'Attachment' => 'Bifogat dokument',
        'Attachments' => 'Bifogade dokument',
        'This message was written in a character set other than your own.' => 'Detta meddelande �r skrivet med en annan teckenupps�ttning �n den du anv�nder.',
        'If it is not displayed correctly,' => 'Ifall det inte visas korrekt,',
        'This is a' => 'Detta �r en',
        'to open it in a new window.' => 'f�r att �ppna i ett nytt f�nster',
        'This is a HTML email. Click here to show it.' => 'Detta �r ett HTML-email. Klicka h�r f�r att visa.',
        'Free Fields' => 'Fria F�lt',
        'Merge' => 'Sammanfoga',
        'merged' => 'sammanfogat',
        'closed successful' => 'L�st och st�ngt',
        'closed unsuccessful' => 'Ol�st men st�ngt',
        'new' => 'ny',
        'open' => '�ppen',
        'Open' => '�ppen',
        'closed' => 'st�ngt',
        'Closed' => 'St�ngt',
        'removed' => 'borttagen',
        'pending reminder' => 'v�ntar p� p�minnelse',
        'pending auto' => 'v�ntar p� auto',
        'pending auto close+' => 'v�ntar p� att st�ngas (l�st)',
        'pending auto close-' => 'v�ntar p� att st�ngas (ol�st)',
        'email-external' => 'email externt',
        'email-internal' => 'email internt',
        'note-external' => 'notis externt',
        'note-internal' => 'notis internt',
        'note-report' => 'notis till rapport',
        'phone' => 'telefon',
        'sms' => 'sms',
        'webrequest' => 'web-anmodan',
        'lock' => 'l�st',
        'unlock' => 'uppl�st',
        'very low' => 'planeras',
        'low' => 'l�g',
        'normal' => 'normal',
        'high' => 'h�g',
        'very high' => 'kritisk',
        '1 very low' => '1 Planeras',
        '2 low' => '2 l�g',
        '3 normal' => '3 medium',
        '4 high' => '4 h�g',
        '5 very high' => '5 kritisk',
        'Ticket "%s" created!' => '�rende "%s" skapad!',
        'Ticket Number' => '�rendenummer',
        'Ticket Object' => '�rendeobjekt',
        'No such Ticket Number "%s"! Can\'t link it!' => '�rendenummer "%s" finns inte, kan inte l�nka dit!',
        'Don\'t show closed Tickets' => 'Visa inte st�ngda �renden',
        'Show closed Tickets' => 'Visa st�ngda �renden',
        'New Article' => 'Ny artikel',
        'Email-Ticket' => 'Epost�rende',
        'Create new Email Ticket' => 'Skapa nytt Epost�rende',
        'Phone-Ticket' => 'Telefon�rende',
        'Search Tickets' => 'S�k �renden',
        'Edit Customer Users' => 'Redigera Kundanv�ndare',
        'Edit Customer Company' => 'Redigera Kundf�retag',
        'Bulk Action' => 'Massf�r�ndring',
        'Bulk Actions on Tickets' => 'Massf�r�ndring av �renden',
        'Send Email and create a new Ticket' => 'Skicka Epost och skapa nytt �rende',
        'Create new Email Ticket and send this out (Outbound)' => 'Skapa nytt Epost�rende och skicka detta (Utg�ende)',
        'Create new Phone Ticket (Inbound)' => 'Skapa nytt Telefon�rende (Inkommande)',
        'Overview of all open Tickets' => '�versikt �ver alla �ppna �renden',
        'Locked Tickets' => 'L�sta �renden',
        'Watched Tickets' => 'Bevakade �renden',
        'Watched' => 'Bevakade',
        'Subscribe' => 'Bevaka',
        'Unsubscribe' => 'Bevaka inte',
        'Lock it to work on it!' => 'L�s �rende f�r att arbeta med det!',
        'Unlock to give it back to the queue!' => 'L�s upp f�r att l�gga tillbaka �rendet till k�n!',
        'Shows the ticket history!' => 'Visar �rendehistoriken!',
        'Print this ticket!' => 'Skriv ut detta �rende!',
        'Change the ticket priority!' => '�ndra �rendets prioritet!',
        'Change the ticket free fields!' => '�ndra �rendets fria f�lt!',
        'Link this ticket to an other objects!' => 'Koppla �rendet till andra objekt!',
        'Change the ticket owner!' => '�ndra �rendets �gare!',
        'Change the ticket customer!' => '�ndra �rendets kund!',
        'Add a note to this ticket!' => 'L�gg till en notis p� �rendet!',
        'Merge this ticket!' => 'Sl� samman �rendet!',
        'Set this ticket to pending!' => 'S�tt �rendet som v�ntande!',
        'Close this ticket!' => 'St�ng �rendet!',
        'Look into a ticket!' => 'Visa �rendet!',
        'Delete this ticket!' => 'Radera �rendet!',
        'Mark as Spam!' => 'Markera som SPAM!',
        'My Queues' => 'Mina k�er',
        'Shown Tickets' => 'Visade �renden',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Ditt epost�rende med nummer "<OTRS_TICKET>" har slagits samman med "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => '�rende %s: f�rsta �tg�rdstid har passerats (%s)!',
        'Ticket %s: first response time will be over in %s!' => '�rende %s: f�rsta �tg�rdstid har passerats om %s!',
        'Ticket %s: update time is over (%s)!' => '�rende %s: uppdateringstid har passerats (%s)!',
        'Ticket %s: update time will be over in %s!' => '�rende %s: uppdateringstid har passerats om %s!',
        'Ticket %s: solution time is over (%s)!' => '�rende %s: l�sningstid har passerats (%s)!',
        'Ticket %s: solution time will be over in %s!' => '�rende %s: l�sningstid har passerats om %s!',
        'There are more escalated tickets!' => 'Det finns fler eskalerade �renden!',
        'New ticket notification' => 'Meddelande om nyskapat �rende',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Skicka mig ett meddelande om det finns nya �renden i "Mina K�er".',
        'Follow up notification' => 'Meddelande om uppf�ljning',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Skicka mig ett meddelande om kundkorrespondens f�r �renden som jag �r �gare till.',
        'Ticket lock timeout notification' => 'Meddela mig d� tiden g�tt ut f�r ett �rende-l�s',
        'Send me a notification if a ticket is unlocked by the system.' => 'Skicka mig ett meddelande ifall systemet tar bort l�set p� ett �rende.',
        'Move notification' => 'Meddelande om �ndring av k�',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Skicka mig ett meddelande ifall ett �rende flyttas till en av "Mina k�er"',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Ditt urval av favoritk�er. Du blir ocks� meddelad om dessa k�er via epost om det aktiverats.',
        'Custom Queue' => 'Utvald k�',
        'QueueView refresh time' => 'Automatisk uppdateringsintervall f� K�-bild',
        'Screen after new ticket' => 'Sk�rm efter inmatning av nytt �rende',
        'Select your screen after creating a new ticket.' => 'V�lj sk�rmbild som visas efter registrering av ny h�nvisning/�rende.',
        'Closed Tickets' => 'L�sta �renden',
        'Show closed tickets.' => 'Visa l�sta �renden.',
        'Max. shown Tickets a page in QueueView.' => 'Max. visade �renden per sida i K�-bild.',
        'Watch notification' => 'Bevakningsmeddelanden',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '',
        'Out Of Office' => 'Ej p� Kontoret',
        'Select your out of office time.' => 'V�lj din f�nvarotid.',
        'CompanyTickets' => 'F�retags�renden',
        'MyTickets' => 'Mina �renden',
        'New Ticket' => 'Nytt �rende',
        'Create new Ticket' => 'Skapa nytt �rende',
        'Customer called' => 'Kund ringde',
        'phone call' => 'telefonsamtal',
        'Reminder Reached' => 'P�minnelse Finns',
        'Reminder Tickets' => 'P�minnelse �renden',
        'Escalated Tickets' => 'Eskalerade �renden',
        'New Tickets' => 'Nya �renden',
        'Open Tickets / Need to be answered' => '�ppna �renden / M�ste besvaras',
        'Tickets which need to be answered!' => '�renden som m�ste besvaras!',
        'All new tickets!' => 'Alla nya �renden!',
        'All tickets which are escalated!' => 'Alla �renden som har eskalerats!',
        'All tickets where the reminder date has reached!' => 'Alla �renden d�r p�mminnelsetiden n�tts!',
        'Responses' => 'Svar',
        'Responses <-> Queues' => 'Svar <-> K�',
        'Auto Responses' => 'AutoSvar',
        'Auto Responses <-> Queues' => 'AutoSvar <-> K�',
        'Attachments <-> Responses' => '<Bifogade filer <-> Svar',
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
        'Sun' => 's�n',
        'Mon' => 'm�n',
        'Tue' => 'tis',
        'Wed' => 'ons',
        'Thu' => 'tor',
        'Fri' => 'fre',
        'Sat' => 'l�r',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Hantering av bifogade dokument',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Autosvar-hantering',
        'Response' => 'Svar',
        'Auto Response From' => 'autosvar-avs�ndare',
        'Note' => 'Notis',
        'Useable options' => 'Anv�ndbara till�gg',
        'To get the first 20 character of the subject.' => 'F�r att f� dom f�rsta 20 tecknen i �renderaden',
        'To get the first 5 lines of the email.' => 'F�r att f� dom f�rsta fem raderna i mejlet',
        'To get the realname of the sender (if given).' => 'F�r att f� avs�ndarens riktiga namn (om angivet).',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'F�r att f� artikelns attribut (t.ex. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> och <OTRS_CUSTOMER_Body)).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Val av nuvarande kunds data (t.ex. <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => '�rende-�garval (t.ex. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => '�rende-Ansvarigval (t.ex. <OTRS_RESPONSIBLE_USerFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'Val f�r anv�ndaren som beg�rde �tg�rden (t.ex. <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'Val f�r �rendedata (t.ex. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Inst�llningsval (t.ex. <OTRS_CONFIG_HttpType>).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Kundf�retagshantering',
        'Search for' => 'S�k efter',
        'Add Customer Company' => 'L�gg till Kundf�retag',
        'Add a new Customer Company.' => 'L�gg till ett nytt Kundf�retag.',
        'List' => 'Lista',
        'These values are required.' => 'Dessa v�rden �r tvingande.',
        'These values are read-only.' => 'Dessa v�rden �r skrivskyddade.',

        # Template: AdminCustomerUserForm
        'Title{CustomerUser}' => '',
        'Firstname{CustomerUser}' => '',
        'Lastname{CustomerUser}' => '',
        'Username{CustomerUser}' => '',
        'Email{CustomerUser}' => '',
        'CustomerID{CustomerUser}' => '',
        'Phone{CustomerUser}' => '',
        'Fax{CustomerUser}' => '',
        'Mobile{CustomerUser}' => '',
        'Street{CustomerUser}' => '',
        'Zip{CustomerUser}' => '',
        'City{CustomerUser}' => '',
        'Country{CustomerUser}' => '',
        'Comment{CustomerUser}' => '',
        'The message being composed has been closed.  Exiting.' => 'Det tilh�rande redigeringsf�nstret har st�ngts. Avslutar.',
        'This window must be called from compose window' => 'Denna funktion m�ste startas fr�n redigeringsf�nstret',
        'Customer User Management' => 'Kundanv�ndare',
        'Add Customer User' => 'L�gg till Kundanv�ndare',
        'Source' => 'K�lla',
        'Create' => 'Skapa',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'Kundanv�ndare kr�vs f�r att h�lla kundhistorik och f�r att dom ska kunna logga in via kundpanelen.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'Kundanv�ndare <-> Grupphantering',
        'Change %s settings' => '�ndra %s-inst�llningar',
        'Select the user:group permissions.' => 'V�lj anv�ndar:grupp-r�ttigheter.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Om ingenting �r valt finns inga r�ttigheter i denna grupp (�renden i denna grupp kommer inte att finnas tillg�ngliga f�r anv�ndaren).',
        'Permission' => 'R�ttighet',
        'ro' => 'l�s',
        'Read only access to the ticket in this group/queue.' => 'Endast l�sr�ttighet till �renden i denna grupp/k�.',
        'rw' => 'skriv',
        'Full read and write access to the tickets in this group/queue.' => 'Fulla l�s- och skrivr�ttigheter till �renden i denna grupp/k�.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Kundanv�ndare <-> Tj�nsthantering',
        'CustomerUser' => 'Kundanv�ndare',
        'Service' => 'Tj�nst',
        'Edit default services.' => 'Redigera standardtj�nster',
        'Search Result' => 'S�keresultat',
        'Allocate services to CustomerUser' => 'Allokera tj�nster till Kundanv�ndare',
        'Active' => 'Aktivera',
        'Allocate CustomerUser to service' => 'Allokera Kundanv�ndare till tj�nst',

        # Template: AdminEmail
        'Message sent to' => 'Meddelande skickat till',
        'A message should have a subject!' => 'Ett meddelande m�ste ha en �mnesrad!',
        'Recipients' => 'Mottagare',
        'Body' => 'Meddelandetext',
        'Send' => 'Skicka',

        # Template: AdminGenericAgent
        'GenericAgent' => 'GenerellAgent',
        'Job-List' => 'Jobblista',
        'Last run' => 'Senaste k�rning',
        'Run Now!' => 'K�r Nu!',
        'x' => 'x',
        'Save Job as?' => 'Spara Jobb som?',
        'Is Job Valid?' => '�r Jobbet Giltligt?',
        'Is Job Valid' => '�r Jobbet Giltligt',
        'Schedule' => 'Schema',
        'Currently this generic agent job will not run automatically.' => 'F�r n�rvarande kommer detta jobb inte k�ras automatiskt.',
        'To enable automatic execution select at least one value from minutes, hours and days!' => 'F�r att aktivera automatisk k�rning m�ste du minst v�lja ett v�rde fr�n minuter, timmar och dagar!',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Fritexts�k i artiklar (t.ex. "Mo*ot" eller "K�tt*")',
        '(e. g. 10*5155 or 105658*)' => 't.ex. 10*5144 eller 105658*',
        '(e. g. 234321)' => 't.ex. 163736',
        'Customer User Login' => 'kundanv�ndare loginnamn',
        '(e. g. U5150)' => 't.ex. INGJAN',
        'SLA' => 'SLA',
        'Agent' => 'Agent',
        'Ticket Lock' => '�rendel�s',
        'TicketFreeFields' => '�rendeFriaF�lt',
        'Create Times' => 'Skapat-Tider',
        'No create time settings.' => 'Inga Skapat-Tider.',
        'Ticket created' => '�rende skapat',
        'Ticket created between' => '�rendet skapat mellan',
        'Close Times' => 'St�ngt-Tider',
        'No close time settings.' => 'Inga St�ngt-Tider',
        'Ticket closed' => '�rende st�ngt',
        'Ticket closed between' => '�rende st�ngt mellan',
        'Pending Times' => 'Avvaktar-Tider',
        'No pending time settings.' => 'Inga Avvaktar-Tider',
        'Ticket pending time reached' => '�rende v�ntetid n�dd',
        'Ticket pending time reached between' => '�rende v�ntetid n�dd mellan',
        'Escalation Times' => 'Eskalerings-Tider',
        'No escalation time settings.' => 'Inga Eskalerings-Tider',
        'Ticket escalation time reached' => '�rende Eskaleringstid n�dd',
        'Ticket escalation time reached between' => '�rende Eskaleringstid n�dd mellan',
        'Escalation - First Response Time' => 'Eskalering - F�rsta responstid',
        'Ticket first response time reached' => '�rende f�rsta responstid n�dd',
        'Ticket first response time reached between' => '�rende f�rsta responstid n�dd mellan',
        'Escalation - Update Time' => 'Eskalering - Uppdateringstid',
        'Ticket update time reached' => '�rende uppdateringstid n�dd',
        'Ticket update time reached between' => '�rende uppdaterings tid n�dd mellan',
        'Escalation - Solution Time' => 'Eskalering - L�sningstid',
        'Ticket solution time reached' => '�rende l�sningstid n�dd',
        'Ticket solution time reached between' => '�rende l�sningstid n�dd mellan',
        'New Service' => 'Ny tj�nst',
        'New SLA' => 'Ny SLA',
        'New Priority' => 'Ny Prioritet',
        'New Queue' => 'Ny K�',
        'New State' => 'Ny Status',
        'New Agent' => 'Ny Agent',
        'New Owner' => 'Ny �gare',
        'New Customer' => 'Ny Kund',
        'New Ticket Lock' => 'Nytt �rendel�s',
        'New Type' => 'Ny Typ',
        'New Title' => 'Ny Titel',
        'New TicketFreeFields' => 'Ny TicketFriaF�lt',
        'Add Note' => 'L�gg till anteckning',
        'Time units' => 'Tidsenheter',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Detta kommando kommer utf�ras. ARG[0] blir dess �rendenummer. ARG[1] dess �rende-id.',
        'Delete tickets' => 'Radera �renden',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Varning! Dessa �renden kommer raderas fr�n databasen! �rendena f�rloras!',
        'Send Notification' => 'Skicka Meddelande',
        'Param 1' => 'Param 1',
        'Param 2' => 'Param 2',
        'Param 3' => 'Param 3',
        'Param 4' => 'Param 4',
        'Param 5' => 'Param 5',
        'Param 6' => 'Param 6',
        'Send agent/customer notifications on changes' => 'Meddela agent/kund ang�ende �ndringar',
        'Save' => 'Spara',
        '%s Tickets affected! Do you really want to use this job?' => '%s �renden p�verkas! Vill du verkligen anv�nda detta jobb?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>          'VARNING: N�r du �ndrar namnet p� gruppen \'admin\', innan du g�r l�mpliga �ndringar i SysConfig, kommer du l�sas ut ur administrationspanelen! Om detta intr�ffar, d�p om grubben tillbaka till admin via SQL. ',
        'Group Management' => 'grupphantering',
        'Add Group' => 'L�gg till Grupp',
        'Add a new Group.' => 'L�gg till en ny Grupp.',
        'The admin group is to get in the admin area and the stats group to get stats area.' => '\'admin\'-gruppen ger tillg�ng till Admin-arean, \'stats\'-gruppen till Statistik-arean.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Skapa nya grupper f�r att kunna hantera olika r�ttigheter f�r skilda grupper av agenter (t.ex. ink�psavdelning, supportavdelning, f�rs�ljningsavdelning, ...).',
        'It\'s useful for ASP solutions.' => 'Nyttigt f�r ASP-l�sningar.',

        # Template: AdminLog
        'System Log' => 'Systemlogg',
        'Time' => 'Tid',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Epostkontohantering',
        'Host' => 'V�rd',
        'Trusted' => 'Betrodd',
        'Dispatching' => 'F�rdelning',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Inkommande email fr�n POP3-konton sorteras till vald k�!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'om ditt konto �r betrott, kommer befinglig X-OTRS-header anv�ndas vid ankomst (F�r prioritering, ...) PostMasterfilter kommer anv�ndas �nd�.',

        # Template: AdminNavigationBar
        'Users' => 'Anv�ndare',
        'Groups' => 'Grupper',
        'Misc' => 'Div',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Meddelandehantering',
        'Add Notification' => 'L�gg till Meddelande',
        'Add a new Notification.' => 'L�gg till nytt Meddelande',
        'Name is required!' => 'Namn kr�vs!',
        'Event is required!' => 'Aktivitet kr�vs!',
        'A message should have a body!' => 'Ett meddelande m�ste inneh�lla en meddelandetext!',
        'Recipient' => 'Mottagare',
        'Group based' => 'Gruppbaserad',
        'Agent based' => 'Agentbaserad',
        'Email based' => 'Epostbaserad',
        'Article Type' => 'Artikeltyp',
        'Only for ArticleCreate Event.' => 'Endast f�r ArtikelSkapa-Aktivitet',
        'Subject match' => '�renderad matchar',
        'Body match' => 'Kropp matchar',
        'Notifications are sent to an agent or a customer.' => 'Meddelanden skickats till agenter eller kunder.',
        'To get the first 20 character of the subject (of the latest agent article).' => 'F�r att f� de f�rsta 20 tecknen i �renderaden (p� senaste agentartikeln).',
        'To get the first 5 lines of the body (of the latest agent article).' => 'F�r att f� de f�rsta fem raderna i kroppen (p� senaste agentartikeln).',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => 'F�r att f� artikelattributen (t.ex. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> och <OTRS_AGENT_Body>).',
        'To get the first 20 character of the subject (of the latest customer article).' => 'F�r att d� de f�rsta 20 tecknen i �renderaden (p� senaste kundartikeln).',
        'To get the first 5 lines of the body (of the latest customer article).' => 'F�r att f� de fem f�rsta raderna i kroppen (p� senaste kundartikeln).',

        # Template: AdminNotificationForm
        'Notification' => 'Meddelande',

        # Template: AdminPackageManager
        'Package Manager' => 'Pakethanterare',
        'Uninstall' => 'Avinstallera',
        'Version' => 'Version',
        'Do you really want to uninstall this package?' => 'Vill du verkligen avinstallera detta paket?',
        'Reinstall' => 'Ominstallera',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Vill du verligen ominstallera detta paket (Alla manuella �ndringar f�rsvinner)?',
        'Continue' => 'Forts�tt',
        'Install' => 'Installera',
        'Package' => 'Paket',
        'Online Repository' => 'Online Repository',
        'Vendor' => 'Leverant�r',
        'Module documentation' => 'Moduldokumentation',
        'Upgrade' => 'Uppgradera',
        'Local Repository' => 'Local Repository',
        'Status' => 'Status',
        'Overview' => '�versikt',
        'Download' => 'Nerladdning',
        'Rebuild' => 'Rebuild',
        'ChangeLog' => '�ndringslogg',
        'Date' => 'Datum',
        'Filelist' => 'Fillista',
        'Download file from package!' => 'Ladda ner fil fr�n paket!',
        'Required' => 'Kr�vs',
        'PrimaryKey' => 'Prim�rnyckel',
        'AutoIncrement' => 'AutoInkrement',
        'SQL' => 'SQL',
        'Diff' => 'Diff',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Prestandalogg',
        'This feature is enabled!' => 'Denna funktion �r aktiverad!',
        'Just use this feature if you want to log each request.' => 'Anv�nd endast denna funktion om du vill logga varje request.',
        'Activating this feature might affect your system performance!' => 'Att aktivera denna funktion kan p�verka din systemprestanda!',
        'Disable it here!' => 'Avaktivera det h�r!',
        'This feature is disabled!' => 'Denna funktion �r avaktiverad!',
        'Enable it here!' => 'Aktivera den h�r!',
        'Logfile too large!' => 'Loggfilen �r f�r stor!',
        'Logfile too large, you need to reset it!' => 'Loggfilen �r f�r stor, du m�ste �terst�lla den!',
        'Range' => 'Intervall',
        'Interface' => 'Interface',
        'Requests' => 'Requests',
        'Min Response' => 'Min respons',
        'Max Response' => 'Max respons',
        'Average Response' => 'Medel respons',
        'Period' => 'Period',
        'Min' => 'Min',
        'Max' => 'Max',
        'Average' => 'Medel',

        # Template: AdminPGPForm
        'PGP Management' => 'PGP-Hantering',
        'Result' => 'Resultat',
        'Identifier' => 'Identifierare',
        'Bit' => 'Bit',
        'Key' => 'Nyckel',
        'Fingerprint' => 'Fingeravtryck',
        'Expires' => 'Upph�r',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'P� det h�r s�ttet kan du direkt redigera nyckelringen som �r inst�lld i SysConfig.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'PostMaster Filter',
        'Filtername' => 'Filternamn',
        'Stop after match' => 'Avsluta efter tr�ff',
        'Match' => 'Tr�ff',
        'Value' => 'Inneh�ll',
        'Set' => 'Anv�nd',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'S�nd eller filtrera inkommande epost baserad p� X-Headers! RegExp �r ocks� m�jlig.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Om du bara vill hantera epostadressen, anv�nd EMAILADDRESS:info@example.com i Fr�n, Till eller CC.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Om du anv�nder RegExp, kan du ocks� anv�nda tr�ffv�rdet i ()= s�som [***] i \'Set\'.',

        # Template: AdminPriority
        'Priority Management' => 'Prioritet',
        'Add Priority' => 'L�gg till Prioritet',
        'Add a new Priority.' => 'L�gg till ny Prioritet.',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'K� <-> Autosvar',
        'settings' => 'inst�llningar',

        # Template: AdminQueueForm
        'Queue Management' => 'K�hantering',
        'Sub-Queue of' => 'Underk� till',
        'Unlock timeout' => 'Tidsintervall f�r borttagning av l�s',
        '0 = no unlock' => '0 = ingen uppl�sning',
        'Only business hours are counted.' => 'Endast kontorstid r�knas.',
        '0 = no escalation' => '0 = ingen upptrappning',
        'Notify by' => 'Meddela via',
        'Follow up Option' => 'Korrespondens p� l�st �rende',
        'Ticket lock after a follow up' => '�rendet l�ses efter uppf�ljningsmail',
        'Systemaddress' => 'Systemadress',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Ifall ett �rende som �r l�st av en agent men �nd� inte blir besvarat inom denna tid, kommer l�set automatiskt att tas bort.',
        'Escalation time' => 'Upptrappningstid',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Ifall ett �rende inte blir besvarat inom denna tid, visas enbart detta �rende.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Ifall en kund skickar uppf�ljningsmail p� ett l�st �rende, blir �rendet l�st till f�rra �garen.',
        'Will be the sender address of this queue for email answers.' => 'Avs�ndaradress f�r email i denna K�.',
        'The salutation for email answers.' => 'H�lsningsfras f�r email-svar.',
        'The signature for email answers.' => 'Signatur f�r email-svar.',
        'Customer Move Notify' => 'Meddelande om flytt av kund',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS skickar ett meddelande till kunden ifall �rendet flyttas.',
        'Customer State Notify' => 'Meddelande om status�ndring f�r Kund',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS skickar ett meddelande till kunden vid statusuppdatering.',
        'Customer Owner Notify' => 'Meddelande om byte av �gare av Kund',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS skickar ett meddelande till kunden vid �garbyte.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'Svar <-> K�er',

        # Template: AdminQueueResponsesForm
        'Answer' => 'Svar',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'Svar <-> Bifogade filer',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Hantera svar',
        'A response is default text to write faster answer (with default text) to customers.' => 'Ett svar �r en standardtext f�r att underl�tta besvarandet av vanliga kundfr�gor.',
        'Don\'t forget to add a new response a queue!' => 'Kom ih�g att l�gga till ett nytt svar till en k�!',
        'The current ticket state is' => 'Nuvarande �rendestatus',
        'Your email address is new' => 'Din epostadress �r ny',

        # Template: AdminRoleForm
        'Role Management' => 'Roller',
        'Add Role' => 'L�gg till Roll',
        'Add a new Role.' => 'L�gg till ny Roll.',
        'Create a role and put groups in it. Then add the role to the users.' => 'Skapa en roll och l�gg grupper i den. L�gg sedan till rollen till anv�ndare.',
        'It\'s useful for a lot of users and groups.' => 'Det �r anv�ndbart f�r m�nga anv�ndare och grupper.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'Roller <-> Grupper',
        'move_into' => 'Flytta till',
        'Permissions to move tickets into this group/queue.' => 'R�tt att flytta �renden i denna grupp/K�.',
        'create' => 'Skapa',
        'Permissions to create tickets in this group/queue.' => 'R�tt att skapa �renden i denna grupp/K�.',
        'owner' => '�gare',
        'Permissions to change the ticket owner in this group/queue.' => 'R�tt att �ndra �rende-�gare i denna grupp/K�.',
        'priority' => 'prioritet',
        'Permissions to change the ticket priority in this group/queue.' => 'R�tt att �ndra �rendeprioritet i denna grupp/K�.',

        # Template: AdminRoleGroupForm
        'Role' => 'Roll',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'Roller <-> Anv�ndare',
        'Select the role:user relations.' => 'V�lj roll:anv�ndar relationer',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Hantering av H�lsningsfraser',
        'Add Salutation' => 'L�gg till H�lsningsfras',
        'Add a new Salutation.' => 'L�gg till en ny H�lsningsfras.',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => 'S�kert l�ge m�ste sl�s p�!',
        'Secure mode will (normally) be set after the initial installation is completed.' => 'S�kert l�ge anv�nda (normalt) efter iledande installation �r slutf�rd.',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => 'S�kert l�ge m�ste sl�s av f�r att kunna ominstallera via webb-installeraren.',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => 'Om s�kert l�ge inte �r aktiverat, sl� p� det via SysConfig, f�r din applikation k�rs redan.',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'SQL Box',
        'Go' => 'K�r',
        'Select Box Result' => 'Select Box Resultat',

        # Template: AdminService
        'Service Management' => 'Tj�nster',
        'Add Service' => 'L�gg till Tj�nst',
        'Add a new Service.' => 'L�gg till ny Tj�nst.',
        'Sub-Service of' => 'UnderTj�nst till',

        # Template: AdminSession
        'Session Management' => 'Sessionshantering',
        'Sessions' => 'Sessioner',
        'Uniq' => 'Unika',
        'Kill all sessions' => 'Terminera alla sessioner',
        'Session' => 'Session',
        'Content' => 'Inneh�ll',
        'kill session' => 'Terminera session',

        # Template: AdminSignatureForm
        'Signature Management' => 'Signaturer',
        'Add Signature' => 'L�gg till Signatur',
        'Add a new Signature.' => 'L�gg till ny Signatur.',

        # Template: AdminSLA
        'SLA Management' => 'SLA',
        'Add SLA' => 'L�gg till SLA',
        'Add a new SLA.' => 'L�gg till ny SLA.',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME',
        'Add Certificate' => 'L�gg till Certifikat',
        'Add Private Key' => 'L�gg till Privat Nyckel',
        'Secret' => 'Hemlighet',
        'Hash' => 'Hash',
        'In this way you can directly edit the certification and private keys in file system.' => 'P� det h�r s�ttet kan du redigera certifikat och nycklar p� filsystemet.',

        # Template: AdminStateForm
        'State Management' => 'Status',
        'Add State' => 'L�gg till Status',
        'Add a new State.' => 'L�gg till ny Status.',
        'State Type' => 'Statustyp',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Se till att du ocks� uppdaterade standardstatusarna i Kernel/Config.pm!',
        'See also' => 'Se ocks�',

        # Template: AdminSysConfig
        'SysConfig' => 'SysConfig',
        'Group selection' => 'Gruppval',
        'Show' => 'Visa',
        'Download Settings' => 'Ladda ner inst�llningar',
        'Download all system config changes.' => 'Ladda ner alla systemkonfigurations�ndringar.',
        'Load Settings' => 'Ladda Inst�llningar',
        'Subgroup' => 'Undergrupp',
        'Elements' => 'Element',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Konfigureringsinst�llningar',
        'Default' => 'Standard',
        'New' => 'Nytt',
        'New Group' => 'Ny Grupp',
        'Group Ro' => 'Grupp Ro',
        'New Group Ro' => 'Ny Grupp Ro',
        'NavBarName' => 'NavigationsRadNamn',
        'NavBar' => 'NavigationsRad',
        'Image' => 'Bild',
        'Prio' => 'Prioritet',
        'Block' => 'Blockera',
        'AccessKey' => '�tkomstTangent',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'System-emailadresser',
        'Add System Address' => 'L�gg till Systemadress',
        'Add a new System Address.' => 'L�gg till ny Systemadress',
        'Realname' => 'Fullst�ndigt namn',
        'All email addresses get excluded on replaying on composing an email.' => 'Alla epostadresser exkluderas vid skapande av epost',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alla inkommande mail till denna adressat (To:) delas ut till vald k�.',

        # Template: AdminTypeForm
        'Type Management' => '�rendetyp',
        'Add Type' => 'L�gg till Typ',
        'Add a new Type.' => 'L�gg till ny Typ',

        # Template: AdminUserForm
        'User Management' => 'Anv�ndare',
        'Add User' => 'L�gg till Anv�ndare',
        'Add a new Agent.' => 'L�gg till ny Agent.',
        'Login as' => 'Logga in som',
        'Title{user}' => '',
        'Firstname' => 'F�rnamn',
        'Lastname' => 'Efternamn',
        'Start' => 'Start',
        'End' => 'Slut',
        'User will be needed to handle tickets.' => 'Anv�ndare kr�vs f�r att hantera �renden.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Gl�m inte att l�gga nya anv�ndare i grupper och/eller roller!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'Anv�ndare <-> Grupper',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Adressbok',
        'Return to the compose screen' => 'St�ng f�nstret',
        'Discard all changes and return to the compose screen' => 'Bortse fr�n �ndringarna och st�ng f�nstret',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerSearch

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => 'Dashboard',

        # Template: AgentDashboardCalendarOverview
        'in' => 'i',

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s �r tillg�nlig!',
        'Please update now.' => 'V�nligen uppdatera nu.',
        'Release Note' => 'Release Note',
        'Level' => 'Niv�',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Postad f�r %s sedan.',

        # Template: AgentDashboardTicketOverview

        # Template: AgentDashboardTicketStats

        # Template: AgentInfo
        'Info' => 'Info',

        # Template: AgentLinkObject
        'Link Object: %s' => 'L�nkobjekt: %s',
        'Object' => 'Objekt',
        'Link Object' => 'L�nka objekt',
        'with' => 'med',
        'Select' => 'V�lj',
        'Unlink Object: %s' => 'Avl�nka objekt: %s',

        # Template: AgentLookup
        'Lookup' => 'Sl� upp',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Stavningskontroll',
        'spelling error(s)' => 'Stavfel',
        'or' => 'eller',
        'Apply these changes' => 'Verkst�ll �ndringar',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Vll du verkligen radera detta Objekt?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'V�lj begr�nsningar som karakt�riserar statistiken',
        'Fixed' => 'Fast',
        'Please select only one element or turn off the button \'Fixed\'.' => 'V�lj endast ett v�rde, eller sl� av knappen \'Fast\'.',
        'Absolut Period' => 'Absolut period',
        'Between' => 'Mellan',
        'Relative Period' => 'Relativ period',
        'The last' => 'De senaste',
        'Finish' => 'Slut',
        'Here you can make restrictions to your stat.' => 'H�r kan du s�tta restriktioner p� din statistik.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Om du raderar inneh�llet i "Fast" bockrutan, kan agenten som genererar statistiken �ndra attributen p� motsvarande element.',

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
        'Results' => 'Resultat',
        'Total hits' => 'Totalt hittade',
        'Page' => 'Sida',

        # Template: AgentStatsPrint
        'Print' => 'Skriv ut',
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
        'A message should have a To: recipient!' => 'Ett meddelande m�ste ha en mottagare i Till:-f�ltet!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'I Till-f�ltet m�ste anges en giltig emailadress (t.ex. kund@exempeldomain.se)!',
        'Bounce ticket' => 'Skicka �ver �rende',
        'Ticket locked!' => '�rendet l�st',
        'Ticket unlock!' => '�rendet uppl�st',
        'Bounce to' => 'Skicka �ver till',
        'Next ticket state' => 'N�sta �rendestatus',
        'Inform sender' => 'Informera avs�ndare',
        'Send mail!' => 'Skicka mail!',

        # Template: AgentTicketBulk
        'You need to account time!' => 'Du m�ste redovisa tiden!',
        'Ticket Bulk Action' => '�rendemassf�r�ndring',
        'Spell Check' => 'Stavningskontroll',
        'Note type' => 'Anteckningstyp',
        'Next state' => 'N�sta tillst�nd',
        'Pending date' => 'V�ntande datum',
        'Merge to' => 'Sl� samman med',
        'Merge to oldest' => 'Sl� samman till �ldsta',
        'Link together' => 'L�nka',
        'Link to Parent' => 'L�nka med F�r�lder',
        'Unlock Tickets' => 'L�s upp �renden',

        # Template: AgentTicketClose
        'Ticket Type is required!' => '�rendetyp kr�vs!',
        'A required field is:' => 'Ett tvingande f�lt �r:',
        'Close ticket' => 'St�ng �rende',
        'Previous Owner' => 'Tidigare �gare',
        'Inform Agent' => 'Meddela Agent',
        'Optional' => 'Valfri',
        'Inform involved Agents' => 'Meddela inblandade agenter',
        'Attach' => 'Bifoga',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => 'Stavningskontroll m�ste utf�ras p� alla meddelanden!',
        'Compose answer for ticket' => 'F�rfatta svar till �rende',
        'Pending Date' => 'V�ntar till',
        'for pending* states' => 'f�r v�ntetillst�nd',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => '�ndra kund f�r �rende',
        'Set customer user and customer id of a ticket' => 'Ange kundanv�ndare och organisations-id f�r ett �rende',
        'Customer User' => 'Kundanv�ndare',
        'Search Customer' => 'S�k kund',
        'Customer Data' => 'Kunddata',
        'Customer history' => 'Kundhistorik',
        'All customer tickets.' => 'Alla kund�renden.',

        # Template: AgentTicketEmail
        'Compose Email' => 'Skriv email',
        'new ticket' => 'Nytt �rende',
        'Refresh' => 'Uppdatera',
        'Clear To' => 'Rensa Till',
        'All Agents' => 'Alla agenter',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Artikeltyp',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => '�ndra friatextf�lt i �rende',

        # Template: AgentTicketHistory
        'History of' => 'Historik f�r',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => 'Du m�ste ange ett �rendenummer!',
        'Ticket Merge' => 'Sl� samman',

        # Template: AgentTicketMove
        'If you want to account time, please provide Subject and Text!' => '',
        'Move Ticket' => 'Flytta �rende',

        # Template: AgentTicketNote
        'Add note to ticket' => 'L�gg till anteckning till �rende',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => 'F�rsta Responstid',
        'Service Time' => 'Tj�nsttid',
        'Update Time' => 'Uppdateringstid',
        'Solution Time' => 'L�sningstid',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => 'Du m�ste ha minst ett valt �rende!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => 'Filter',
        'Change search options' => '�ndra s�kinst�llningar',
        'Tickets' => '�renden',
        'of' => 'av',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'Skriv svar',
        'Contact customer' => 'Kontakta kund',
        'Change queue' => '�ndra k�',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 'Sortera stigande',
        'up' => 'stigande',
        'sort downward' => 'Sortera sjunkande',
        'down' => 'sjunkande',
        'Escalation in' => 'Upptrappning om',
        'Locked' => 'L�st',

        # Template: AgentTicketOwner
        'Change owner of ticket' => '�ndra ett �rendes �gare',

        # Template: AgentTicketPending
        'Set Pending' => 'Markera som v�ntande',

        # Template: AgentTicketPhone
        'Phone call' => 'Telefonsamtal',
        'Clear From' => 'Nollst�ll Fr�n:',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Enkel',

        # Template: AgentTicketPrint
        'Ticket-Info' => '�rendeinfo',
        'Accounted time' => 'Redovisad tid',
        'Linked-Object' => 'L�nkat objekt',
        'by' => 'av',

        # Template: AgentTicketPriority
        'Change priority of ticket' => '�ndra �rendeprioritet',

        # Template: AgentTicketQueue
        'Tickets shown' => '�renden som visas',
        'Tickets available' => 'Tillg�ngliga �renden',
        'All tickets' => 'Alla �renden',
        'Queues' => 'K�er',
        'Ticket escalation!' => '�rende-upptrappning!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '�ndra ansvarig p� �rendet',

        # Template: AgentTicketSearch
        'Ticket Search' => '�rende-s�k',
        'Profile' => 'Profil',
        'Search-Template' => 'S�kmall',
        'TicketFreeText' => '�rendeFriText',
        'Created in Queue' => 'Skapad i K�',
        'Article Create Times' => 'Artikel Skapad Tider',
        'Article created' => 'Artikel skapad',
        'Article created between' => 'Artikel skapad mellan',
        'Change Times' => '�ndringsTider',
        'No change time settings.' => 'Inga �ndringstider',
        'Ticket changed' => '�rende �ndrat',
        'Ticket changed between' => '�rende �ndrat mellan',
        'Result Form' => 'Resultatbild',
        'Save Search-Profile as Template?' => 'Spara s�kkriterier som mall?',
        'Yes, save it with name' => 'Ja, spara med namn',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'Fritext',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => 'Expandera vy',
        'Collapse View' => 'Minimera vy',
        'Split' => 'Dela',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => 'Artikelfilterinst�llningar',
        'Save filter settings as default' => 'Spara filterinst�llningar som standard',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => '�tersp�rning',

        # Template: CustomerFooter
        'Powered by' => 'Drivs av',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => 'Login',
        'Lost your password?' => 'Gl�mt l�senordet?',
        'Request new password' => 'Be om nytt l�senord',
        'Create Account' => 'Skapa konto',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'V�lkommen %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Tider',
        'No time settings.' => 'Inga tidsinst�llningar.',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Klicka h�r f�r att rapportera ett fel!',

        # Template: Footer
        'Top of Page' => 'B�rjan av sidan',

        # Template: FooterSmall

        # Template: Header
        'Home' => 'Hem',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Web-installation',
        'Welcome to %s' => 'V�lkommen till %s',
        'Accept license' => 'Acceptera licens',
        'Don\'t accept license' => 'Acceptera inte licens',
        'Admin-User' => 'Admin-anv�ndare',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' =>          'Om du har ett root-l�senord f�r databasen m�ste det anges h�r. Annars l�mnar du f�ltet tomt. Av s�kerhetssj�l rekommenderar vi dig att du har ett rootl�senord. F�r mer information h�nvisas du till databasdokumentationen.',
        'Admin-Password' => 'Admin-L�sen',
        'Database-User' => 'Databas-Anv�ndare',
        'default \'hot\'' => 'default \'hot\'',
        'DB connect host' => 'DB anslutninsv�rd (host)',
        'Database' => 'Databas',
        'Default Charset' => 'Standard teckenupps�ttning',
        'utf8' => 'utf8',
        'false' => 'falsk',
        'SystemID' => 'SystemID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Unikt id f�r detta system.  Alla �rendenummer och http-sessionsid b�rjar med denna id)',
        'System FQDN' => 'System FQDN',
        '(Full qualified domain name of your system)' => '(Fullt kvalificerat dns-namn f�r ditt system)',
        'AdminEmail' => 'Admin-email',
        '(Email of the system admin)' => '(Email till systemadmin)',
        'Organization' => 'Organisation',
        'Log' => 'Logg',
        'LogModule' => 'LoggningsModul',
        '(Used log backend)' => '(Valt logg-backend)',
        'Logfile' => 'Loggfil',
        '(Logfile just needed for File-LogModule!)' => '(Loggfil beh�vs enbart f�r File-LogModule!)',
        'Webfrontend' => 'Webb-gr�nssnitt',
        'Use utf-8 it your database supports it!' => 'Anv�nd utf-8 ifall din databas st�djer det!',
        'Default Language' => 'Standardspr�k',
        '(Used default language)' => '(Valt standardspr�k)',
        'CheckMXRecord' => 'KontrolleraMXF�lt',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kontrollerar mx-uppslag f�r uppgivna emailadresser i meddelanden som skrivs.  Anv�nd inte CheckMXRecord om din OTRS-maskin �r bakom en uppringd lina!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'F�r att kunna anv�nda OTRS, m�ste f�ljende rad skrivas p� kommandoraden som root.',
        'Restart your webserver' => 'Starta om din webbserver',
        'After doing so your OTRS is up and running.' => 'Efter detta �r OTRS ig�ng.',
        'Start page' => 'Startsida',
        'Your OTRS Team' => 'Ditt OTRS-Team',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'Ingen �tkomst',

        # Template: Notify
        'Important' => 'Viktigt',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'utskrivet av',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'OTRS Test-sida',
        'Counter' => 'R�knare',

        # Template: Warning

        # Template: YUI

        # Misc
        'Edit Article' => 'Redigera Artikel',
        'Create Database' => 'Skapa databas',
        'DB Host' => 'DB V�rd (host)',
        'Ticket Number Generator' => '�rende-nummergenerator',
        'Symptom' => 'Symptom',
        'U' => 'U',
        'Site' => 'Plats',
        'Customer history search (e. g. "ID342425").' => 'S�k efter kundhistorik (t.ex. "ID342425").',
        'Can not delete link with %s!' => 'Kan inte radera l�nk med %s!',
        'for agent firstname' => 'f�r agents f�rnamn',
        'Close!' => 'St�ng!',
        'Subgroup \'' => 'Undergrupp \'',
        'No means, send agent and customer notifications on changes.' => 'Nej betyder, s�nd agent och kundmeddelanden vid �ndringar.',
        'A web calendar' => 'En webbkalender',
        'to get the realname of the sender (if given)' => 'f�r att f� fram avs�ndarens fulla namn (om m�jligt)',
        'OTRS DB Name' => 'OTRS DB namn',
        'Notification (Customer)' => 'Meddelande (Kund)',
        'Select Source (for add)' => 'V�lj k�lla (f�r till�gg)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Val f�r �rende data (t.ex &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => 'Barn-Objekt',
        'Days' => 'Dagar',
        'Queue ID' => 'K�-id',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Konfigurationsval (t.ex. <OTRS_CONFIG_HttpType>)',
        'System History' => 'Systemhistorik',
        'customer realname' => 'Fullt kundnamn',
        'Pending messages' => 'V�ntande meddelanden',
        'Port' => 'Port',
        'for agent login' => 'f�r agents login',
        'Keyword' => 'Nyckelord',
        'Close type' => 'St�ngningstyp',
        'DB Admin User' => 'DB Adminanv�ndare',
        'for agent user id' => 'f�r agents anv�ndar-id',
        'Change user <-> group settings' => '�ndra anv�ndar- <-> grupp-inst�llningar',
        'Problem' => 'Problem',
        'for ' => 'f�r',
        'Escalation' => 'Eskalering',
        '"}' => '"}',
        'Order' => 'Sortering',
        'next step' => 'n�sta steg',
        'Follow up' => 'Uppf�ljning',
        'Customer history search' => 'Kundhistorik',
        'Admin-Email' => 'Admin-email',
        'Stat#' => 'Stat#',
        'Create new database' => 'Skapa ny databas',
        'Keywords' => 'Nyckelord',
        'Ticket Escalation View' => '�rendeeskaleringsvy',
        'Today' => 'Idag',
        'No * possible!' => 'Wildcards * inte till�tna!',
        'Options ' => 'Tillval',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Tillval f�r nuvarande anv�ndare som beg�rde denna �tg�rd (t.ex. <OTRS_CURRENT_USERFIRSTNAME>)',
        'Message for new Owner' => 'Meddelande till ny �gare',
        'to get the first 5 lines of the email' => 'f�r att f� fram de f�rsta 5 raderna av emailen',
        'Sort by' => 'Sortera efter',
        'OTRS DB Password' => 'OTRS DB l�senord',
        'Last update' => 'Senast �ndrat',
        'Tomorrow' => 'Imorgon',
        'to get the first 20 character of the subject' => 'f�r att f� fram de f�rste 20 tecknen i �mnesbeskrivningen',
        'Select the customeruser:service relations.' => 'V�lj Kund:Servicerelationer',
        'DB Admin Password' => 'DB Adminl�senord',
        'Drop Database' => 'Radera databas',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',
        'FileManager' => 'Filhanterare',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'ger tillg�ng till data f�r g�llande kund (t.ex. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'V�ntande typ',
        'Comment (internal)' => 'Kommentar (intern)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '�rende�garval (T.ex. <OTRS_OWNER_USERFIRSTNAME>)',
        'Minutes' => 'Minuter',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '<�rendedataval (t.ex. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(Valt format f�r �rendenummer)',
        'Reminder' => 'P�minnelse',
        ' (work units)' => ' (arbetsenheter)',
        'Next Week' => 'N�sta Vecka',
        'Operation' => '�tg�rd',
        'accept license' => 'godk�nn licens',
        'for agent lastname' => 'f�r agents efternamn',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'ger tillg�ng till data f�r agenten som utf�r handlingen (t.ex. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'P�minnelsemeddelanden',
        'Parent-Object' => 'F�r�lderobjekt',
        'Of couse this feature will take some system performance it self!' => 'Denna funktion kommer i sig sj�lv anv�nda viss systemprestanda!',
        'IMAPS' => 'IMAPS',
        'Detail' => 'Detalj',
        'Your own Ticket' => 'Ditt eget �rende',
        'TicketZoom' => '�rende Zoom',
        'Don\'t forget to add a new user to groups!' => 'Gl�m inte att l�gga in en ny anv�ndare i en grupp!',
        'Open Tickets' => '�ppna �renden',
        'CreateTicket' => 'Skapa �rende',
        'You have to select two or more attributes from the select field!' => 'Du m�ste v�lja minst tv� eller fler attribut!',
        'System Settings' => 'Systeminst�llningar',
        'WebWatcher' => '',
        'Hours' => 'Timmar',
        'Finished' => 'Klar',
        'Account Type' => 'Kontotyp',
        'D' => 'N',
        'System Status' => 'Systemmeddelanden',
        'All messages' => 'Alla meddelanden',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        'Object already linked as %s.' => '',
        'A article should have a title!' => '',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
        'All email addresses get excluded on replaying on composing and email.' => '',
        'don\'t accept license' => 'godk�nn inte licens',
        'A web mail client' => '',
        'IMAP' => '',
        'Compose Follow up' => 'Skriv uppf�ljningssvar',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        'Article time' => '',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'ger tillgang till data f�r agenten som st�r som �gare till �rendet (t.ex. <OTRS_OWNER_UserFirstname>)',
        'DB Type' => 'DB typ',
        'kill all sessions' => 'Terminera alla sessioner',
        'to get the from line of the email' => 'f�r att f� fram avs�ndarraden i emailen',
        'Solution' => 'L�sning',
        'QueueView' => 'K�er',
        'Select Box' => 'SQL-access',
        'New messages' => 'Nya meddelanden',
        'Can not create link with %s!' => '',
        'Linked as' => '',
        'modified' => '',
        'Calculator' => '',
        'Delete old database' => 'Radera gammal databas',
        'A web file manager' => '',
        'Have a lot of fun!' => 'Ha det s� roligt!',
        'send' => 'Skicka',
        'Send no notifications' => '',
        'Note Text' => 'Anteckingstext',
        'POP3 Account Management' => 'Administration av POP3-Konto',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
        'System State Management' => 'Hantering av systemstatus',
        'OTRS DB User' => 'OTRS DB anv�ndare',
        'Mailbox' => '',
        'PhoneView' => 'Tel.samtal',
        'maximal period form' => '',
        'Management Summary' => '',
        'Escaladed Tickets' => '',
        'Yes means, send no agent and customer notifications on changes.' => '',
        'POP3' => '',
        'POP3S' => '',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'Emailen med �rendenummer "<OTRS_TICKET>" har skickats �ver till "<OTRS_BOUNCE_TO>". V�nligen kontakta denna adress f�r vidare h�nvisningar.',
        'Ticket Status View' => '',
        'Modified' => '�ndrat',
        'Ticket selected for bulk action!' => '�rende valt f�r massf�r�ndring!',
        'Agent Dashboard' => 'Kontrollpanel',
        'TimeAccounting' => 'Tidsredovisning',
        'A Survey module' => 'Unders�kningsmodul',
        'Survey' => 'Unders�kning',
        'FAQ-Area' => 'Fr�gor och svar',
        'FAQ' => 'FAQ',
        'StatusView' => 'Statusvy',
        'My Locked Tickets' => 'Mina L�sta �renden',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
    };
    # $$STOP$$
    return;
}

1;
