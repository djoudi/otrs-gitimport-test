# --
# Kernel/Language/sk_SK.pm - provides sk_SK language translation
# Copyright (C) 2001-2006 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: sk_SK.pm,v 1.3 2006-04-01 23:38:29 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::sk_SK;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.3 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Jul 28 22:12:45 2005

    # possible charsets
    $Self->{Charset} = ['iso-8859-2',];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => '�no',
      'No' => 'Nie',
      'yes' => '�no',
      'no' => '�iadny',
      'Off' => 'vypn��',
      'off' => 'vypn��',
      'On' => 'zapn��',
      'on' => 'zapn��',
      'top' => 'hore',
      'end' => 'koniec',
      'Done' => 'hotovo',
      'Cancel' => 'zru�i�',
      'Reset' => 'Reset',
      'last' => 'posledn�',
      'before' => 'pred',
      'day' => 'de�',
      'days' => 'dni',
      'day(s)' => 'de�/dni',
      'hour' => 'hodina',
      'hours' => 'hodiny',
      'hour(s)' => 'hodina/hodiny',
      'minute' => 'minuta',
      'minutes' => 'minuty',
      'minute(s)' => 'minuta/minuty',
      'month' => 'mesiac',
      'months' => 'mesiace',
      'month(s)' => 'mesiac/mesiace',
      'week' => 't��de�',
      'week(s)' => 't��dne',
      'year' => 'rok',
      'years' => 'roky',
      'year(s)' => 'rok/roky',
      'wrote' => 'p�sa�',
      'Message' => 'spr�va',
      'Error' => 'Chyba',
      'Bug Report' => 'chybov� hl�senie',
      'Attention' => 'Pozor',
      'Warning' => 'Varovanie',
      'Module' => 'Modul',
      'Modulefile' => 'modulov� prie�inok',
      'Subfunction' => 'Podfunkcia',
      'Line' => 'riadok',
      'Example' => 'Pr�klad',
      'Examples' => 'Pr�klady',
      'valid' => 'platn�',
      'invalid' => 'neplatn�',
      'invalid-temporarily' => 'do�asne neplatn�',
      ' 2 minutes' => ' 2 minuty',
      ' 5 minutes' => ' 5 min�t',
      ' 7 minutes' => ' 7 min�t',
      '10 minutes' => ' 10 min�t',
      '15 minutes' => ' 15 min�t',
      'Mr.' => 'P�n',
      'Mrs.' => 'Pani',
      'Next' => '�alej',
      'Back' => 'sp�',
      'Next...' => '�alej...',
      '...Back' => '...sp�',
      '-none-' => '-�iadny-',
      'none' => '�iadny',
      'none!' => '�iaden',
      'none - answered' => '�iadna odpove�',
      'please do not edit!' => 'Pros�m neupravova�!',
      'AddLink' => 'Prida� odkaz.',
      'Link' => 'Prepojenie',
      'Linked' => 'spojen�',
      'Link (Normal)' => 'Prepojenie (oby�ajn�)',
      'Link (Parent)' => 'Prepojenie (zdroj)',
      'Link (Child)' => 'Prepojenie (n�sledn�k)',
      'Normal' => 'oby�ajn�',
      'Parent' => 'zdroj',
      'Child' => 'die�a',
      'Hit' => '�der',
      'Hits' => '�dery',
      'Text' => 'Text',
      'Lite' => 'Od�ah�en�',
      'User' => 'U��vate�',
      'Username' => 'U��vate�sk� meno',
      'Language' => 'Jazyk',
      'Languages' => 'Jazyky',
      'Password' => 'Heslo',
      'Salutation' => 'Oslovenie',
      'Signature' => 'Podpis',
      'Customer' => 'Z�kazn�k',
      'CustomerID' => 'Z�kazn�cke �',
      'CustomerIDs' => 'Z�kazn�cke ��sla',
      'customer' => 'Z�kazn�k',
      'agent' => 'Agent',
      'system' => 'Syst�m',
      'Customer Info' => 'Z�kazn�ke info',
      'go!' => '�tart!',
      'go' => '�tart',
      'All' => 'V�etko',
      'all' => 'v�etko',
      'Sorry' => 'Pardon',
      'update!' => 'Aktualizuj!',
      'update' => 'Aktualizova�',
      'Update' => 'Aktualiz�cia',
      'submit!' => 'predlo�!',
      'submit' => 'predlo�i�',
      'Submit' => 'Predlo�enie',
      'change!' => 'Zme�!',
      'Change' => 'Zmena',
      'change' => 'Zmeni�',
      'click here' => 'klikni tu',
      'Comment' => 'pozn�mka',
      'Valid' => 'Platn�',
      'Invalid Option!' => 'Neplatn� mo�nos�!',
      'Invalid time!' => 'Neplatn� �as!',
      'Invalid date!' => 'Neplatn� d�tum!',
      'Name' => 'Meno',
      'Group' => 'Skupina',
      'Description' => 'Popis ',
      'description' => 'Popis ',
      'Theme' => 'Schema',
      'Created' => 'Vytvoren�',
      'Created by' => 'Vytvoren� (k�m)',
      'Changed' => 'Zmenen�',
      'Changed by' => 'Zmenen� (k�m)',
      'Search' => 'H�ada�',
      'and' => 'a',
      'between' => 'medzi',
      'Fulltext Search' => 'Fulltextov� vyh�ad�vanie ',
      'Data' => '�daje',
      'Options' => 'Mo�nosti',
      'Title' => 'N�zov',
      'Item' => 'Polo�ka',
      'Delete' => 'Zmaza�',
      'Edit' => 'Upravi�',
      'View' => 'Zobrazi�',
      'Number' => '��slo',
      'System' => 'Syst�m',
      'Contact' => 'Kontakt',
      'Contacts' => 'Kontakty',
      'Export' => 'Export',
      'Up' => 'Hore',
      'Down' => 'Dolu',
      'Add' => 'Prida� ',
      'Category' => 'Kateg�ria',
      'Viewer' => 'Zobraz',
      'New message' => 'Nov� spr�va',
      'New message!' => 'Nov� spr�va!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Prosim odpovedajte na tento tiket',
      'You got new message!' => 'M�te nov� spr�vu!',
      'You have %s new message(s)!' => 'M�te % nov�ch spr�v!',
      'You have %s reminder ticket(s)!' => 'M�te % pripomienok!',
      'The recommended charset for your language is %s!' => 'Odpor��an� znakov� sada pre v� jazyk je %',
      'Passwords doesn\'t match! Please try it again!' => 'Hesl� sa nezhoduju! Pros�m sk�ste znova!',
      'Password is already in use! Please use an other password!' => 'Heslo je u� pou��van�. Pros�m pou�ite in� heslo!',
      'Password is already used! Please use an other password!' => 'Heslo je u� pou��van�. Pros�m pou�ite in� heslo!',
      'You need to activate %s first to use it!' => 'Na pou��vanie mus�te najprv aktivova� %',
      'No suggestions' => '�iadne n�vrhy.',
      'Word' => 'Slovo',
      'Ignore' => 'Ignorova�',
      'replace with' => 'nahradi� s',
      'Welcome to %s' => 'Vitajte v %',
      'There is no account with that login name.' => 'Neexistuje �iadny ��et s t�mto ���vate�sk�m menom',
      'Login failed! Your username or password was entered incorrectly.' => 'Prihl�senie zlyhalo! Va�e pou��vate�sk� meno alebo heslo bolo vlo�en� nespr�vne.',
      'Please contact your admin' => 'Pros�m kontaktujte v�ho administr�tora.',
      'Logout successful. Thank you for using OTRS!' => 'Odhl�senie �spe�n�. �akujeme za pou��vanie ORTS!',
      'Invalid SessionID!' => 'Neplatn� SessionID',
      'Feature not active!' => 'Funkcia neakt�vna!',
      'Take this Customer' => 'Pou�i tohto klienta.',
      'Take this User' => 'Pu�i tohto u��vate�a.',
      'possible' => 'mo�n�',
      'reject' => 'odmietnu�',
      'Facility' => 'Pr�slu�enstvo',
      'Timeover' => 'Timeover',
      'Pending till' => 'Odlo�en� do.',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Nepracujte s pou��vate�sk�m ��slom 1 (syst�mov� ��et)! Vytvorte nov�ho pou��vate�a.',
      'Dispatching by email To: field.' => 'Posielam emailom =>  prijemca: pole',
      'Dispatching by selected Queue.' => 'Posielam vybran�m radom.',
      'No entry found!' => 'Nen�jden� �iaden vstup.',
      'Session has timed out. Please log in again.' => 'Rel�cia timeout. Pros�m =>  prihl�ste sa znova.',
      'No Permission!' => 'Nepovolen�!',
      'To: (%s) replaced with database email!' => 'Pr�jemca: % je nahraden� datab�zov�m emailom!',
      'Cc: (%s) added database email!' => 'K�pia: % pridan� datab�zov� email.',
      '(Click here to add)' => '(Ak chcete prida� polo�ku =>  kliknete sem.)',
      'Preview' => 'N�h�ad',
      'Added User %s""' => 'Pridan� pou��vate� %',
      'Contract' => 'Zmluva',
      'Online Customer: %s' => 'Online u��vate�: %',
      'Online Agent: %s' => 'Online Agent %',
      'Calendar' => 'Kalend�r',
      'File' => 'File',
      'Filename' => 'Filename',
      'Type' => 'Typ',
      'Size' => 'Ve�kos�',
      'Upload' => 'Upload',
      'Directory' => 'Directory',
      'Signed' => 'Podp�san�',
      'Sign' => 'Podp�sa�',
      'Crypted' => 'Za�ifrovan�',
      'Crypt' => '�ifrova�',

      # Template: AAAMonth
	'Jan' => 'jan',
	'Feb' => 'feb',
	'Mar' => 'mar',
	'Apr' => 'apr�l',
	'May' => 'm�j',
	'Jun' => 'j�n',
	'Jul' => 'j�l',
	'Aug' => 'aug',
	'Sep' => 'sept',
	'Oct' => 'okt',
	'Nov' => 'nov',
	'Dec' => 'dec',

      # Template: AAANavBar
      'Admin-Area' => 'Admin-oblas�',
      'Agent-Area' => 'Agent-Area',
      'Ticket-Area' => 'Ticket-Area',
      'Logout' => 'Odhl�senie ',
      'Agent Preferences' => 'Nastavenia ���vate�a',
      'Preferences' => 'Nastavenia',
      'Agent Mailbox' => 'Agent Mailbox',
      'Stats' => '�tatistika',
      'Stats-Area' => '�tatistick� oblas�',
      'FAQ-Area' => 'FAQ oblas�',
      'FAQ' => 'FAQ',
      'FAQ-Search' => 'FAQ-hladanie',
      'FAQ-Article' => 'FAQ-�l�nok',
      'New Article' => 'Nov� �l�nok',
      'FAQ-State' => 'FAQ-stav',
      'Admin' => 'Admin',
      'A web calendar' => 'webov� kalend�r',
      'WebMail' => 'WebMail',
      'A web mail client' => 'Web mail client',
      'FileManager' => 'Spr�vca s�borov',
      'A web file manager' => 'Spr�vca webor�ch s�borov',
      'Artefact' => 'Artefakt',
      'Incident' => 'Udalos�',
      'Advisory' => 'Advisory',
      'WebWatcher' => 'WebWatcher',
      'Customer Users' => 'Klientsk� u��vatelia.',
      'Customer Users <-> Groups' => 'Klientsk� u��vatelia <-> skupiny ',
      'Users <-> Groups' => 'U��vatelia <-> Skupiny',
      'Roles' => 'Funkcie',
      'Roles <-> Users' => 'Funkcie <-> U��vatelia',
      'Roles <-> Groups' => 'Funkcie <-> Skupiny',
      'Salutations' => 'Oslovenia',
      'Signatures' => 'Podpisy',
      'Email Addresses' => 'Emailov� adresy',
      'Notifications' => 'Oznamovanie',
      'Category Tree' => 'Strom kateg�ri�',
      'Admin Notification' => 'Administr�torsk� oznamovanie',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Predvo�by �spe�ne aktualizovan�!',
      'Mail Management' => 'Spr�va po�ty.',
      'Frontend' => 'Frontend',
      'Other Options' => 'Ostatn� Mo�nosti',
      'Change Password' => 'Zmena hesla',
      'New password' => 'Nov� heslo',
      'New password again' => 'Znova nov� heslo',
      'Select your QueueView refresh time.' => 'Vyberte si refresh time fronty',
      'Select your frontend language.' => 'Vyberte si jazyk.',
      'Select your frontend Charset.' => 'Vyberte si znakov� sadu.',
      'Select your frontend Theme.' => 'Vyberte si vzh�ad.',
      'Select your frontend QueueView.' => 'Vyberte si QueueView',
      'Spelling Dictionary' => 'Slovn�k pravopisu.',
      'Select your default spelling dictionary.' => 'Vyberte si slovn�k na kontrolu pravopisu.',
      'Max. shown Tickets a page in Overview.' => 'Maxim�lny po�et po�iadaviek zobrazovan�ch v preh�ade.',
      'Can\'t update password =>  passwords doesn\'t match! Please try it again!' => 'Nemo�no aktualizova� heslo =>  hesl� nezhoduj�.',
      'Can\'t update password =>  invalid characters!' => 'Nemo�no aktualizova� heslo =>  neplatn� znaky.',
      'Can\'t update password =>  need min. 8 characters!' => 'Nemo�no aktualizova� heslo =>  potrebujete minim�lne 8 p�smen.',
      'Can\'t update password =>  need 2 lower and 2 upper characters!' => 'Nemo�no aktualizova� heslo =>  potrebujete 2 mal� a 2 ve�k� p�smen�',
      'Can\'t update password =>  need min. 1 digit!' => 'Nemo�no aktualizova� heslo =>  potrebujete minim�lne 1 ��slicu.',
      'Can\'t update password =>  need min. 2 characters!' => 'Nemo�no aktualizova� heslo =>  potrebujete minim�lne 2 p�smen�!',
      'Password is needed!' => 'Je potrebn� heslo.',

      # Template: AAATicket
      'Lock' => 'Zamkn��',
      'Unlock' => 'Odomkn��',
      'History' => 'Hist�ria',
      'Zoom' => 'Zv��i�',
      'Age' => 'Vek',
      'Bounce' => 'Sko�i� na',
      'Forward' => 'Nasleduj�ci',
      'From' => 'Od ',
      'To' => 'Pr�jemca',
      'Cc' => 'Cc',
      'Bcc' => 'Bcc',
      'Subject' => 'Predmet',
      'Move' => 'Presun��',
      'Queue' => 'Fronta',
      'Priority' => 'Priorita',
      'State' => 'Stav',
      'Compose' => 'Vytvori�',
      'Pending' => '�akanie',
      'Owner' => 'Vlastn�k',
      'Owner Update' => 'aktualiz�cia vlastn�ka',
      'Sender' => 'Odosielate�',
      'Article' => '�l�nok',
      'Ticket' => 'Po�iadavka',
      'Createtime' => 'Doba spracovania',
      'plain' => 'jednoduch�',
      'Email' => 'e-mail',
      'email' => 'e-mail',
      'Close' => 'Zatvorit',
      'Action' => 'Akcia',
      'Attachment' => 'Pr�loha',
      'Attachments' => 'Pr�lohy',
      'This message was written in a character set other than your own.' => 'T�to spr�va bola nap�san� v inej znakovej sade =>  ako je va�a.',
      'If it is not displayed correctly => ' => 'Ak nie je zobrazen� spr�vne =>  ',
      'This is a' => 'To je',
      'to open it in a new window.' => 'Otvori� v novom okne',
      'This is a HTML email. Click here to show it.' => 'Toto je HMTL  e-mail. Na otvorenie =>  kliknite tu',
      'Free Fields' => 'Vo�n� polia',
      'Merge' => 'Zl��i�',
      'closed successful' => 'zatvoren� �spe�ne',
      'closed unsuccessful' => 'zatvoren� ne�spe�ne',
      'new' => 'nov�',
      'open' => 'otvori�',
      'closed' => 'zatvoren�',
      'removed' => 'odstr�nen�',
      'pending reminder' => 'nevybaven� pripomienka',
      'pending auto close+' => 'po�as automatick�ho zatv�rania +',
      'pending auto close-' => 'po�as automatick�ho zatv�rania -',
      'email-external' => 'extern� e-mail',
      'email-internal' => 'intern� e-mail',
      'note-external' => 'extern� pozn�mka',
      'note-internal' => 'intern� pozn�mka',
      'note-report' => 'hl�snie pozn�mky',
      'phone' => 'telef�n',
      'sms' => 'sms',
      'webrequest' => 'webov� po�iadavka',
      'lock' => 'zamkn��',
      'unlock' => 'odomkn��',
      'very low' => 've�mi n�zka',
      'low' => 'n�zka',
      'normal' => 'norm�lna',
      'high' => 'vysok�',
      'very high' => 've�mi vysok�',
      '1 very low' => '1 ve�mi n�zka',
      '2 low' => '2 n�zka',
      '3 normal' => '3 norm�lna',
      '4 high' => '4 vysok�',
      '5 very high' => '5 ve�mi vysok�',
      'Ticket %s" created!"' => 'po�iadavka % vytvoren�',
      'Ticket Number' => '��slo po�iadavky',
      'Ticket Object' => 'predmet po�iadavky',
      'No such Ticket Number %s"! Can\'t link it!"' => '�iadna po�iadavka ��slo %. ',
      'Don\'t show closed Tickets' => 'Nezobrazuj uzavret� po�iadavky.',
      'Show closed Tickets' => 'Zobraz uzavret� po�iadavky.',
      'Email-Ticket' => 'e-mailov� po�iadavka',
      'Create new Email Ticket' => 'Vytvor nov� e-mailov� po�iadavku',
      'Phone-Ticket' => 'Telefonick� po�iadavka',
      'Create new Phone Ticket' => 'Vytvor nov� telefonick� po�iadavku',
      'Search Tickets' => 'H�adaj po�iadavky',
      'Edit Customer Users' => 'Uprav z�kazn�ckeho u��vate�a.',
      'Bulk-Action' => 'Hromadn� akcia',
      'Bulk Actions on Tickets' => 'hromadn� akcie na po�iadavk�ch.',
      'Send Email and create a new Ticket' => 'Po�li e-mail a vytvor nov� po�iadavku',
      'Overview of all open Tickets' => 'Preh�ad v�etk�ch otvoren�ch po�iadaviek.',
      'Locked Tickets' => 'Lockovan� po�iadavky',
      'Lock it to work on it!' => 'Kv�li pr�ci na nich =>  lock.',
      'Unlock to give it back to the queue!' => 'Unlock a daj sp� do radu.',
      'Shows the ticket history!' => 'Zobraz hist�riu po�iadaviek.',
      'Print this ticket!' => 'Vytla� t�to po�iadavku.',
      'Change the ticket priority!' => 'Zme� prioritu po�iadavky.',
      'Change the ticket free fields!' => 'Zme� vo�n� polia po�iadavky.',
      'Link this ticket to an other objects!' => 'Prepoj po�iadavku s in�mi objektami!',
      'Change the ticket owner!' => 'Zme� majite�a po�iadavky.',
      'Change the ticket customer!' => 'Zme� klienta po�iadavky.',
      'Add a note to this ticket!' => 'Pridaj pozn�mku k tejto po�iadavke.',
      'Merge this ticket!' => 'Pripoj t�to po�iadavku.',
      'Set this ticket to pending!' => 'Nastav po�iadavku na vyrie�enie.',
      'Close this ticket!' => 'Zatvor t�to po�iadavku.',
      'Look into a ticket!' => 'Vyh�adaj po�iadavku.',
      'Delete this ticket!' => 'Vyma� t�to po�iadavku.',
      'Mark as Spam!' => 'Ozna� ako Spam!',
      'My Queues' => 'Moje rady.',
      'Shown Tickets' => 'Zobraz po�iadavky.',
      'New ticket notification' => 'Hl�senie novej po�iadavky.',
      'Send me a notification if there is a new ticket in My Queues"."' => 'Po�li mi notifik�ciu =>  ak je nov� po�iadavka v MyQueue ?',
      'Follow up notification' => 'Nasleduj hl�senie.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Po�li mi ozn�menie =>  ak klient po�le overenie a ja som vlastn�k tejto po�iadavky.',
      'Ticket lock timeout notification' => 'Po�iadavka blokuje �asov� limit ozn�menia.',
      'Send me a notification if a ticket is unlocked by the system.' => 'Po�li mi ozn�menie =>  ak je po�iadavka odblokovan� syst�mom.',
      'Move notification' => 'Premiestni hl�senie',
      'Send me a notification if a ticket is moved into one of My Queues"."' => 'Po�li mi ozn�menie =>  ak je po�iadavka premiestnen� do jedn�ho z mojich radov.',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => 'V� v�ber z ob��ben�ch radov. Tie� m��ete by� obozn�men� s po�iadavkou cez e-mail =>  ak je to mo�n�.',
      'Custom Queue' => 'Klientsk� rady.',
      'QueueView refresh time' => '?',
      'Screen after new ticket' => 'Okno po novej po�iadavke.',
      'Select your screen after creating a new ticket.' => 'Vyberte si okno zobrazuj�ce sa po vytvoren� novej po�iadavky.',
      'Closed Tickets' => 'Zatvoren� po�iadavky.',
      'Show closed tickets.' => 'Uk� zatvoren� po�iadavky.',
      'Max. shown Tickets a page in QueueView.' => 'Maxim�lny po�et po�iadaviek zobrazovan�ch v preh�ade.',
      'Responses' => 'Odpovede',
      'Responses <-> Queue' => 'Odpovede <-> rad',
      'Auto Responses' => 'Automatick� odpovede',
      'Auto Responses <-> Queue' => 'Automatick� odpovede <-> rad',
      'Attachments <-> Responses' => 'Pr�lohy <-> Odpovede',
      'History::Move' => 'Hist�ria: pohyb',
      'History::NewTicket' => 'Hist�ria: Nov� pripomienka',
      'History::FollowUp' => 'Hist�ria: sleduj',
      'History::SendAutoReject' => 'Hist�ria: po�li automatick� odpove�',
      'History::SendAutoReply' => 'Hist�ria: po�li automatick� zamietnutie',
      'History::SendAutoFollowUp' => 'Hist�ria: SendAutoFollowUp',
      'History::Forward' => 'Hist�ria: Forward',
      'History::Bounce' => 'Hist�ria: ',
      'History::SendAnswer' => 'Hist�ria:: Po�li odpove�',
      'History::SendAgentNotification' => 'Hist�ria:: po�li notifik�ciu z�stupcovi',
      'History::SendCustomerNotification' => 'Hist�ria:: Po�li z�kazn�cku notifik�ciu',
      'History::EmailAgent' => 'Hist�ria: email z�stupcu',
      'History::EmailCustomer' => 'Hist�ria: Email klienta',
      'History::PhoneCallAgent' => 'Hist�ria: Hovor agenta',
      'History::PhoneCallCustomer' => 'Hist�ria: Hovor klienta',
      'History::AddNote' => 'Hist�ria: Pridaj pozn�mku',
      'History::Lock' => 'Hist�ria: zamkni',
      'History::Unlock' => 'Hist�ria: odomkni',
      'History::TimeAccounting' => 'Hist�ria: �asov� ��et',
      'History::Remove' => 'Hist�ria: odstr�nen�',
      'History::CustomerUpdate' => 'Hist�ria: klientsk� aktualiz�cia',
      'History::PriorityUpdate' => 'Hist�ria: aktualiz�cia prior�t',
      'History::OwnerUpdate' => 'Hist�ria: aktualiz�cia majite�a',
      'History::LoopProtection' => 'Hist�ria: LoopProtection',
      'History::Misc' => 'Hist�ria: ',
      'History::SetPendingTime' => 'Hist�ria: Nastav �as rie�enia',
      'History::StateUpdate' => 'Hist�ria: Aktualiz�cia stavu',
      'History::TicketFreeTextUpdate' => 'Hist�ria: ',
      'History::WebRequestCustomer' => 'Hist�ria: ',
      'History::TicketLinkAdd' => 'Hist�ria: ',
      'History::TicketLinkDelete' => 'Hist�ria: ',
      'Workflow Groups' => '?',

      # Template: AAAWeekDay
      'Sun' => 'Ned',
      'Mon' => 'Pon',
      'Tue' => 'Ut',
      'Wed' => 'Str',
      'Thu' => 'Stv',
      'Fri' => 'Pia',
      'Sat' => 'Sob',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'riadenie pr�loh',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'riadenie automatick�ch odpoved�',
      'Response' => 'Odpove�',
      'Auto Response From' => 'Automatick� odpove� od',
      'Note' => 'Pozn�mka',
      'Useable options' => 'pou�ite�n� mo�nos�',
      'to get the first 20 character of the subject' => 'zobrazi� prv�ch 20 vlastnost� subjektu',
      'to get the first 5 lines of the email' => 'zobrazi� prv�ch 5 riadkov emailu',
      'to get the from line of the email' => 'zobrazi� ',
      'to get the realname of the sender (if given)' => 'zobrazi� skuto�n� meno odosielate�a (ak je dan�)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt; =>  &lt;OTRS_TICKET_ID&gt; =>  &lt;OTRS_TICKET_Queue&gt; =>  &lt;OTRS_TICKET_State&gt;)' => 'Mo�nosti �dajov po�iadavky (napr. &lt;OTRS_TICKET_Number&gt; =>  &lt;OTRS_TICKET_ID&gt; =>  &lt;OTRS_TICKET_Queue&gt; =>  &lt;OTRS_TICKET_State&gt;)',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'Vytvoren� spr�va bola zatvoren�. ',
      'This window must be called from compose window' => 'Toto okno mus� by� vyvolan� z okna na vytv�ranie.',
      'Customer User Management' => 'Riadenie klientsk�ch u��vate�ov.',
      'Search for' => 'H�ada�',
      'Result' => 'v�sledok',
      'Select Source (for add)' => 'vyber zdroj (pre pridanie)',
      'Source' => 'zdroj',
      'This values are read only.' => 'T�to hodnota je iba na ��tanie',
      'This values are required.' => 'T�to hodnota je po�adovan�.',
      'Customer user will be needed to have a customer history and to login via customer panel.' => 'Customer user will be needed to have a customer history and to login via customer panel.',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => 'Klientsk� u��vatelia <-> Skupiny riadenia',
      'Change %s settings' => 'Zmeni� % nastavenia',
      'Select the user:group permissions.' => 'Vyber pou��vate�a: skupina povolen�',
      'If nothing is selected =>  then there are no permissions in this group (tickets will not be available for the user).' => 'Ak nie je ni� vybran� =>  nie je dovolen� pracova� v tejto skupine (po�iadavky nie s� dostupn� pre u��vate�a)',
      'Permission' => 'Povolenie',
      'ro' => 'ro',
      'Read only access to the ticket in this group/queue.' => '��taj iba pr�stup k po�iadavk�m v tejto skupine/rade.',
      'rw' => 'rw',
      'Full read and write access to the tickets in this group/queue.' => ,

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => 'Spr�va poslan�',
      'Recipents' => 'Adres�ti',
      'Body' => 'Telo spr�vy',
      'send' => 'Posla�',

      # Template: AdminGenericAgent
      'GenericAgent' => 'generovan� z�stupca',
      'Job-List' => 'zoznam �loh',
      'Last run' => 'posledn� spustenie',
      'Run Now!' => 'Spusti!',
      'x' => 'x',
      'Save Job as?' => 'Ulo�i� pr�cu ako?',
      'Is Job Valid?' => 'Je pr�ca platn�?',
      'Is Job Valid' => 'Je pr�ca platn�',
      'Schedule' => 'Rozvrh',
      'Fulltext-Search in Article (e. g. Mar*in" or "Baue*")"' => 'Fulltextov� vyh�ad�vanie v �l�nku (napr. Mar*in" alebo "Baue*")"',
      '(e. g. 10*5155 or 105658*)' => '(napr. 10*5155 alebo 105658*)',
      '(e. g. 234321)' => '(napr. 234321)',
      'Customer User Login' => 'login klientsk�ho u��vate�a',
      '(e. g. U5150)' => '(napr. U5150)',
      'Agent' => 'Z�stupca',
      'TicketFreeText' => 'Text bez po�iadavky',
      'Ticket Lock' => ,
      'Times' => '�as',
      'No time settings.' => '�iadne �asov� nastavenia',
      'Ticket created' => 'Pripomienka vytvoren�',
      'Ticket created between' => 'Pripomienka vytvoren� medzi',
      'New Priority' => 'Nov� priorita',
      'New Queue' => 'Nov� rad',
      'New State' => 'Nov� stav',
      'New Agent' => 'Nov� z�stupca',
      'New Owner' => 'Nov� ',
      'New Customer' => 'Nov� z�kazn�k',
      'New Ticket Lock' => ,
      'CustomerUser' => 'klientsk� u��vate�',
      'Add Note' => 'priada� pozn�mku',
      'CMD' => 'CMD',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.',
      'Delete tickets' => 'Zmazan� po�iadavky',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Pozor! T�to po�iadavka bude vymazan� z datab�zy. Tieto po�iadavky s� straten�!',
      'Modules' => 'Moduly',
      'Param 1' => 'parameter 1',
      'Param 2' => 'parameter 2',
      'Param 3' => 'parameter 3',
      'Param 4' => 'parameter 4',
      'Param 5' => 'parameter 5',
      'Param 6' => 'parameter 6',
      'Save' => 'Ulo�i�',

      # Template: AdminGroupForm
      'Group Management' => 'Spr�va skup�n',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'The admin group is to get in the admin area and the stats group to get stats area.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department =>  support department =>  sales department =>  ...).' => 'vytvorit nove skupiny pre osetrenie pristupovych prav roznych skupin agentov (napr. Oddelenie n�kupu =>  oddelenie predaja => ..)',
      'It\'s useful for ASP solutions.' => 'It\'s useful for ASP solutions.',

      # Template: AdminLog
      'System Log' => 'syst�mov� z�znam',
      'Time' => '�as',

      # Template: AdminNavigationBar
      'Users' => 'U��vatelia',
      'Groups' => 'Skupiny',
      'Misc' => 'Ine',

      # Template: AdminNotificationForm
      'Notification Management' => 'Spr�va hl�sen�',
      'Notification' => 'Hl�senie',
      'Notifications are sent to an agent or a customer.' => 'Hl�senia s� poslan� z�stupcovi alebo z�kazn�kovi.',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'mo�nosti konfigur�cie (napr. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Mo�nosti majite�a po�iadavky (napr. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Mo�nosti aktu�lneho pou��vate�a =>  ktor� po�aduje tieto akcie (napr. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Mo�nosti �dajov aktu�lnohe klientsk�ho u��vate�a (napr. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',

      # Template: AdminPackageManager
      'Package Manager' => 'riadenie bal�ka',
      'Uninstall' => 'odin�talova�',
      'Verion' => 'Verion',
      'Do you really want to uninstall this package?' => 'Skuto�ne chcete odin�talova� tento bal�k?',
      'Install' => 'in�talova�',
      'Package' => 'Bal�k',
      'Online Repository' => 'Online Repository',
      'Version' => 'Verzia',
      'Vendor' => 'Vendor',
      'Upgrade' => 'Upgrade',
      'Local Repository' => 'miestna schr�nka',
      'Status' => 'stav',
      'Overview' => 'N�h�ad',
      'Download' => 'Stiahnu�',
      'Rebuild' => 'Prestava�',
      'Reinstall' => 'Rein�talova�',

      # Template: AdminPGPForm
      'PGP Management' => 'PGP mana�ment',
      'Identifier' => 'identifik�tor',
      'Bit' => 'bit',
      'Key' => 'k���',
      'Fingerprint' => 'Fingerprint',
      'Expires' => 'Platnos�',
      'In this way you can directly edit the keyring configured in SysConfig.' => 'T�mto sp�sobom m��ete priamo upravova� konfigur�cie',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'POP3 Account Management',
      'Host' => 'Host',
      'Trusted' => 'D�veryhodn�',
      'Dispatching' => 'Vykonanie',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'V�etky prich�dzaj�ce e-maily s jedn�m ��tom bud� vybaven� vo vybranom rade.',
      'If your account is trusted =>  the already existing x-otrs header at arrival time (for priority =>  ...) will be used! PostMaster filter will be used anyway.' => 'Ak je v� ��et ',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => 'PostMaster Filter Management',
      'Filtername' => 'Filtername',
      'Match' => 'Spoji�',
      'Header' => 'Hlavi�ka',
      'Value' => 'Hodnota',
      'Set' => 'Nastavi�',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Vybavi� =>  alebo filtrova� prich�dzuj�ce e-maly =>  na b�ze e-mailu X-header! Reg-Exp je tie� mo�n�!',
      'If you use RegExp =>  you also can use the matched value in () as [***] in \'Set\'.' => 'Ak pou��vate RegExp =>  m��ete tie� pou��va� prepojen� hodnoty v () ako [***] v \'Set\'.',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => 'Rady <-> Riadenie automatick�ch odpoved�',

      # Template: AdminQueueAutoResponseTable

      # Template: AdminQueueForm
      'Queue Management' => 'Riadenie radov',
      'Sub-Queue of' => 'Podrad (�oho)',
      'Unlock timeout' => 'Unlock timeout',
      '0 = no unlock' => '0 = �iadne odomk�nanie',
      'Escalation time' => '�as eskal�cie',
      '0 = no escalation' => '0 = �iadne zvy�ovanie',
      'Follow up Option' => 'nasleduj�ce mo�nosti',
      'Ticket lock after a follow up' => 'uzamkn�� po�iadavku po nasledovnom',
      'Systemaddress' => 'syst�mov� adresa',
      'Customer Move Notify' => 'hl�senie klientovho pohybu',
      'Customer State Notify' => 'hl�senie stavu klienta',
      'Customer Owner Notify' => 'hl�senie majite�a klienta',
      'If an agent locks a ticket and he/she will not send an answer within this time =>  the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Ak z�stupca uzamkne po�iadavku a on/ona nepo�le odpove� do ur�it�ho �asu =>  bude po�iadavka automaticky odomknut� a tak zobrazite�n� pre v�etk�ch z�stupcov.',
      'If a ticket will not be answered in this time =>  just only this ticket will be shown.' => 'Ak nebude na po�iadavku odpovedan� do ur�it�ho �asu =>  bude t�to po�iadavka zobrazen�!',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Ak je po�iadavka zatvoren� a klient po�le nasleduj�cu po�iadavku =>  po�iadavka bude zamknut� pre star�ho majite�a.',
      'Will be the sender address of this queue for email answers.' => 'Adresa odosielate�a tohto radu pre e-mailov� odpove�.',
      'The salutation for email answers.' => 'Pozdrav pre e-mailov� odpove�.',
      'The signature for email answers.' => 'Podpis pre e-mailov� odpove�.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS posiela klientom ozn�menie e-mailom =>  ak bola po�iadavka premiestnen�.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS posiela klientom ozn�menie e-mailom =>  ak sa zmenil stav po�iadavky.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS posiela klientom ozn�menie e-mailom =>  ak sa zmenil majite� po�iadavky.',
      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => 'Reakcie <-> Rady mana�mentu',

      # Template: AdminQueueResponsesForm
      'Answer' => 'odpove�',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => 'Reakcie <-> Pr�lohy mana�mentu',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'odpove� riadenia',
      'A response is default text to write faster answer (with default text) to customers.' => 'Reakcia je prednastaven� text pre r�chlej�ie p�sanie odpoved� klientom.',
      'Don\'t forget to add a new response a queue!' => 'Nezabudnite prida� nov� odpove� radu!',
      'Next state' => '�al�� ',
      'All Customer variables like defined in config option CustomerUser.' => 'vsetky zakaznikove premenne ako tie definovane v konfiguracnej moznosti (volbe) CustomerUser',
      'The current ticket state is' => 'Aktu�lny stav po�iadavky je',
      'Your email address is new' => 'Va�a e-mailov� adresa je nov�.',

      # Template: AdminRoleForm
      'Role Management' => 'riadenie funkci�',
      'Create a role and put groups in it. Then add the role to the users.' => 'Vytvori� funkciu a da� ju do skupiny. Potom prida� funkciu u��vate�om.',
      'It\'s useful for a lot of users and groups.' => 'Je to pou�ite�n� pre mno�stvo u��vate�ov a skup�n.',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => '�lohy  <-> riadenie skup�n',
      'move_into' => 'premiestni�_do',
      'Permissions to move tickets into this group/queue.' => 'Povolenie presun�� po�iadavky do tejto skupiny/radu.',
      'create' => 'vytvori�',
      'Permissions to create tickets in this group/queue.' => 'Povolenie vytvori� po�iadavku v tejto skupine/rade.',
      'owner' => 'majite�',
      'Permissions to change the ticket owner in this group/queue.' => 'Povolenie zmeni� majite�a po�iadavky v tejto skupine/rade.',
      'priority' => 'priorita',
      'Permissions to change the ticket priority in this group/queue.' => 'Povolenie zmeni� prioritu po�iadavky v tejto skupine/rade.',

      # Template: AdminRoleGroupForm
      'Role' => '�loha',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => 'funkcia <-> riadenie u��vate�ov',
      'Active' => 'akt�vny',
      'Select the role:user relations.' => 'vyber funkciu: prepojenia u��vate�ov',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Salutation Management',
      'customer realname' => 'skuto�n� meno klienta',
      'for agent firstname' => 'pre meno agenta',
      'for agent lastname' => 'pre priezvisko agenta',
      'for agent user id' => 'pre agentovo pou��vate�sk� id',
      'for agent login' => 'pre login agenta',

      # Template: AdminSelectBoxForm
      'Select Box' => 'vyber prie�inok',
      'SQL' => 'SQL',
      'Limit' => 'limit',
      'Select Box Result' => 'Select Box v�sledok',

      # Template: AdminSession
      'Session Management' => 'riadenie rel�cie',
      'Sessions' => 'rel�cie',
      'Uniq' => 'Uniq',
      'kill all sessions' => 'zru� v�etky rel�cie',
      'Session' => 'rel�cia',
      'kill session' => 'zru�i� rel�cie',

      # Template: AdminSignatureForm
      'Signature Management' => 'podpis vedenia',

      # Template: AdminSMIMEForm
      'SMIME Management' => 'SMIME riadenie',
      'Add Certificate' => 'pridaj osobn� k���',
      'Add Private Key' => 'pridaj osobn� k���',
      'Secret' => 'Sajn�',
      'Hash' => 'Hash',
      'In this way you can directly edit the certification and private keys in file system.' => 'T�mto sp�sobom mo�ene priamo meni� osved�enie a osobn� k��� v syst�me s�borov.',

      # Template: AdminStateForm
      'System State Management' => 'Riadenie stavu syst�mu.',
      'State Type' => 'typ postavenia',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'D�vajte pozor =>  �i je aktualizovan� tie� ',
      'See also' => 'pozri aj',

      # Template: AdminSysConfig
      'SysConfig' => 'SysConfig',
      'Group selection' => 'v�ber skupiny',
      'Show' => 'uk�za�',
      'Download Settings' => 'Stiahnu� nastavenia.',
      'Download all system config changes.' => 'Stiahnu� v�etky zmeny syst�movej konfigur�cie.',
      'Load Settings' => 'na��ta� nastavenia',
      'Subgroup' => 'podskupina',
      'Elements' => '�asti',

      # Template: AdminSysConfigEdit
      'Config Options' => 'mo�nosti configur�cie',
      'Default'        => 'prednastaven�',
      'Content'        => 'obsah',
      'New'            => 'nov�',
      'New Group'      => 'nov� skupina',
      'Group Ro'       => 'nov� skupina RO',
      'New Group Ro'   => 'Neue Gruppe Ro',
      'NavBarName'     => 'obraz',
      'Image'          => 'prednastaven�',
      'Prio'           => 'predch�dzaj�ci',
      'Block'          => 'blokova�',
      'NavBar'         => 'NavBar',
      'AccessKey'      => 'Pr�stupov� k���',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'spr�va syst�movej e-mailovej adresy',
      'Email' => 'Email',
      'Realname' => 'Skuto�n� meno',
      'All incoming emails with this Email" (To:) will be dispatched in the selected queue!"' => 'V�etky prich�dzaj�ce e-maily s pr�jemcom =>  bud� vybaven� v radoch.',

      # Template: AdminUserForm
      'User Management' => 'Spr�va u��vate�ov',
      'Firstname' => 'Meno',
      'Lastname' => 'Priezvisko',
      'User will be needed to handle tickets.' => ,
      'Don\'t forget to add a new user to groups and/or roles!' => 'Nezabudnite prida� nov�ho pou��vate�a do skup�n a/alebo �loh!',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => 'U��vatelia <-> skupiny ',
      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'adres�r',
      'Return to the compose screen' => 'Sp� na obrazovku vytvorenia.',
      'Discard all changes and return to the compose screen' => ,

      # Template: AgentCalendarSmall

      # Template: AgentCalendarSmallIcon

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => 'info',

      # Template: AgentLinkObject
      'Link Object' => 'prepojen� objekt',
      'Select' => 'v�ber',
      'Results' => 'v�sledky',
      'Total hits' => 'po�et �derov',
      'Site' => 'strana',
      'Detail' => 'detail',

      # Template: AgentLookup
      'Lookup' => 'vyh�ada�',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => 'Po�iadavky vybran� pre hromadn� akciu!',
      'You need min. one selected Ticket!' => 'Potrebujete minim�lne 1 vybran� po�iadavku!',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Kontrola pravopisu',
      'spelling error(s)' => 'Chyba pravopisu',
      'or' => 'alebo',
      'Apply these changes' => 'Pou�i� tieto zmeny.',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Spr�va mus� ma� pr�jemcu!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Mus�te nap�sa� emailov� adresu (napr. klient@pr�klad.com) do Pr�jemca:!',
      'Bounce ticket' => 'presko�i� po�iadavku',
      'Bounce to' => 'presko�i� na',
      'Next ticket state' => 'Stav �dal�ej po�iadavky',
      'Inform sender' => 'informova� odosielate�a.',
      'Your email with ticket number <OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations."' => 'V� e-mail s ��slom po�iadavky <OTRS_PO�IADAVKA> je pripojen� k <OTRS_PRIPOJI�_K_PO�IADAVKE>',
      'Send mail!' => 'Po�li mail!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Spr�va by mala ma� predmet!',
      'Ticket Bulk Action' => 'hromadn� akcia po�iadaviek',
      'Spell Check' => 'kontrola pravopisu',
      'Note type' => 'typ pozn�mky',
      'Unlock Tickets' => 'Unlock po�iadavky.',

      # Template: AgentTicketClose
      'A message should have a body!' => 'Spr�va mus� ma� telo.',
      'You need to account time!' => 'Potrebujete �asov� konto!',
      'Close ticket' => 'Zatvori� po�iadavku',
      'Note Text' => 'Text pozn�mky',
      'Close type' => 'Typ zatvorenia',
      'Time units' => '�asov� jednotka',
      ' (work units)' => '(pracovn� jednotka)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'V spr�ve mus� by� skontrolovan� pravopis.',
      'Compose answer for ticket' => 'Vytvori� odpove� na po�iadavku.',
      'Attach' => 'prilo�i�',
      'Pending Date' => '�as vybavenia',
      'for pending* states' => ,

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Zme� klienta po�iadavky.',
      'Set customer user and customer id of a ticket' => 'Nastavi� klientsk�ho u��vate�a a klientsk� id po�iadavky',
      'Customer User' => 'Klient-u��vate�',
      'Search Customer' => 'H�ada� klienta',
      'Customer Data' => 'Klientsk� �daje',
      'Customer history' => 'Hist�ria klienta',
      'All customer tickets.' => 'po�iadavky v�etk�ch klientov',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'nasleduj�ci',

      # Template: AgentTicketEmail
      'Compose Email' => 'vytvori� e-mail',
      'new ticket' => 'nov� po�iadavka',
      'Clear To' => 'vyma�: Komu',
      'All Agents' => 'v�etci agenti',
      'Termin1' => 'Term�n1',

      # Template: AgentTicketForward
      'Article type' => 'typ �l�nku',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'zmeni� vo�n� text po�iadavky',

      # Template: AgentTicketHistory
      'History of' => 'hist�ria',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'zamknut� po�iadavka',
      'Ticket unlock!' => 'neuzamknut� po�iadavka!',

      # Template: AgentTicketMailbox
      'Mailbox' => ,
      'Tickets' => 'po�iadavky',
      'All messages' => 'v�etky spr�vy',
      'New messages' => 'nov� spr�vy',
      'Pending messages' => 'nevybaven� spr�vy',
      'Reminder messages' => 'pripomienkov� spr�va',
      'Reminder' => 'pripomienkova�',
      'Sort by' => 'triedi� pod�a',
      'Order' => 'poradie',
      'up' => 'hore',
      'down' => 'dolu',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => 'Mus�te pou��va� ��slo po�iadavky!',
      'Ticket Merge' => 'pripojen� po�iadavka',
      'Merge to' => 'pripoji� k',
      'Your email with ticket number <OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>"."' => 'V� e-mail s ��slom po�iadavky <OTRS_PO�IADAVKA> je pripojen� k <OTRS_PRIPOJI�_K_PO�IADAVKE>',

      # Template: AgentTicketMove
      'Queue ID' => 'ID radu',
      'Move Ticket' => 'presu� po�iadavku',
      'Previous Owner' => 'predch�dzaj�ci majite�',

      # Template: AgentTicketNote
      'Add note to ticket' => 'prida� pozn�mku k po�iadavke',
      'Inform Agent' => 'neform�lny z�stupca',
      'Optional' => 'mo�nosti',
      'Inform involved Agents' => ,

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Zme� po�iadavku majite�a.',
      'Message for new Owner' => 'spr�va od nov�ho majite�a.',

      # Template: AgentTicketPending
      'Set Pending' => 'nastavi� vybavenie',
      'Pending type' => 'typ vybavenia',
      'Pending date' => 'term�n vybavenia',

      # Template: AgentTicketPhone
      'Phone call' => 'hovor',

      # Template: AgentTicketPhoneNew
      'Clear From' => 'zmaza� Od',

      # Template: AgentTicketPlain
      'Plain' => '�ist�',
      'TicketID' => 'ID po�iadavky',
      'ArticleID' => 'ID �l�nku',

      # Template: AgentTicketPrint
      'Ticket-Info' => 'info o po�iadavk�ch',
      'Accounted time' => ,
      'Escalation in' => 'zvy�ova� v',
      'Linked-Object' => 'prepojen� objekt',
      'Parent-Object' => 'matersk� objekt',
      'Child-Object' => 'dc�rsky objekt',
      'by' => 'k�m',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Zme� prioritu po�iadavky.',

      # Template: AgentTicketQueue
      'Tickets shown' => 'zobrazen� po�iadavky',
      'Page' => 'strana',
      'Tickets available' => 'dostupn� po�iadavky',
      'All tickets' => 'V�etky po�iadavky',
      'Queues' => 'Rady',
      'Ticket escalation!' => 'stup�ovanie po�iadaviek',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'Va�a vlastn� po�iadavka',
      'Compose Follow up' => 'vytvori� nasleduj�cu',
      'Compose Answer' => 'vytvori� odpove�',
      'Contact customer' => 'kontaktova� klienta',
      'Change queue' => 'zmeni� rady',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => 'vyh�ad�vanie po�iadavky',
      'Profile' => 'profil',
      'Search-Template' => 'Vyh�ad�vacia �abl�na',
      'Created in Queue' => 'Vytvori� v rade.',
      'Result Form' => 'V�sledok z',
      'Save Search-Profile as Template?' => 'Ulo�i� vyh�ad�vac� profil ako �abl�nu?',
      'Yes =>  save it with name' => '�no =>  ulo� s menom.',
      'Customer history search' => 'hist�ria klientsk�ho h�adania',
      'Customer history search (e. g. ID342425")."' => 'hist�ria klientsk�ho h�adania (napr. ID342425")',
      'No * possible!' => '�iadna * nie je mo�n�',

      # Template: AgentTicketSearchResult
      'Search Result' => 'v�sledok h�adania ',
      'Change search options' => 'zme� mo�nosti h�adania',

      # Template: AgentTicketSearchResultPrint
      '"}' => '',

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'triedi� hore',
      'U' => 'U',
      'sort downward' => 'triedi� dolu',
      'D' => 'D',

      # Template: AgentTicketStatusView
      'Ticket Status View' => 'zobrazenie stavu po�iadavky',
      'Open Tickets' => 'Otvoren� po�iadavky',

      # Template: AgentTicketZoom
      'Split' => 'Rozdeli�',

      # Template: AgentTicketZoomStatus
      'Locked' => 'Zamkn��',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => 'Traceback',

      # Template: CustomerFAQ
      'Print' => 'Tla�i�',
      'Keywords' => 'K���ov� slov�',
      'Symptom' => 'Sympt�m',
      'Problem' => 'Problem',
      'Solution' => 'Rie�enie',
      'Modified' => 'Zmenen�',
      'Last update' => 'Posledn� aktualiz�cia',
      'FAQ System History' => 'FAQ hist�ria syst�mu',
      'modified' => 'zmenen�',
      'FAQ Search' => 'FAQ h�adanie',
      'Fulltext' => 'Fulltext',
      'Keyword' => 'K���ov� slovo',
      'FAQ Search Result' => 'v�sledok h�adania FAQ',
      'FAQ Overview' => 'FAQ preh�ad',

      # Template: CustomerFooter
      'Powered by' => 'Powered by',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin

      'Login' => 'Login',
      'Lost your password?' => 'Zabudli ste heslo?',
      'Request new password' => 'Po�adova� nov� heslo',
      'Create Account' => 'Vytvori� ��et',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Vitajte v %',

      # Template: CustomerPreferencesForm

      # Template: CustomerStatusView
      'of' => 'z',

      # Template: CustomerTicketMessage

      # Template: CustomerTicketMessageNew

      # Template: CustomerTicketSearch

      # Template: CustomerTicketSearchResultCSV

      # Template: CustomerTicketSearchResultPrint

      # Template: CustomerTicketSearchResultShort

      # Template: CustomerTicketZoom

      # Template: CustomerWarning

      # Template: Error
      'Click here to report a bug!' => 'Pre hl�senie chyby =>  kliknite tu!',

      # Template: FAQ
      'Comment (internal)' => 'koment�r (vn�torn�)',
      'A article should have a title!' => '�l�nok mus� ma� n�zov!',
      'New FAQ Article' => 'Nov� FAQ �l�nok.',
      'Do you really want to delete this Object?' => 'Naozaj chcete zmaza� tento objekt?',
      'System History' => 'Hist�ria syst�mu',

      # Template: FAQCategoryForm
      'Name is required!' => 'Po�adovan� meno!',
      'FAQ Category' => 'Kateg�ria FAQ',

      # Template: FAQLanguageForm
      'FAQ Language' => 'jazyk FAQ',

      # Template: Footer
      'QueueView' => 'Preh�ad radu.',
      'PhoneView' => 'Preh�ad hovorov',
      'Top of Page' => 'Za�iatok strany',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'Home',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Web-Installer',
      'accept license' => 'akceptova� licenciu',
      'don\'t accept license' => 'neakceptova� licenciu',
      'Admin-User' => 'Admin-pou��vate�',
      'Admin-Password' => 'Admin-heslo',
      'your MySQL DB should have a root password! Default is empty!' => 'Va�e MySQL DB',
      'Database-User' => 'pou��vate� datab�zy',
      'default \'hot\'' => 'predvolen� (?)',
      'DB connect host' => 'DB pripojenie host',
      'Database' => 'Datab�za',
      'Create' => 'Vytvori�',
      0 => ,
      'SystemID' => 'SystemID',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => 'Identifik�cia syst�mu. Ka�d� ��slo po�iadavky a ka�d� http za��na t�mto ��slo.',
      'System FQDN' => 'System FQDN',
      '(Full qualified domain name of your system)' => 'Cel� n�zov dom�ny v�ho syst�mu',
      'AdminEmail' => 'AdminEmail',
      '(Email of the system admin)' => 'E-mail syst�mov�ho administr�tora',
      'Organization' => 'Organiz�cia',
      'Log' => 'Log',
      'LogModule' => 'LogModule',
      '(Used log backend)' => '(Used log backend)',
      'Logfile' => 'Logfile',
      '(Logfile just needed for File-LogModule!)' => 'S�bor z�znamov je potrebn� pre S�bor Log Module!',
      'Webfrontend' => 'webov� rozhranie',
      'Default Charset' => 'Predvolen� znakov� sada',
      'Use utf-8 it your database supports it!' => 'Pou�i� utf-8 na podporu Va�ej datab�zy.',
      'Default Language' => 'Predvolen� jazyk',
      '(Used default language)' => 'Pou��van� predvolen� jazyk',
      'CheckMXRecord' => 'CheckMXRecord',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => 'Pri skladani (kompozicii) odpovede skontroluje MX zaznamy pouzitych emailovych adries. ',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Aby ste mohli pouzivat OTRS =>  musite zadat nasledovne: do Vasho prikazoveho riadku (terminal/shell) =>  pricom musite byt prihlaseny ako root:',
      'Restart your webserver' => 'dat "nasledovne") do Vasho prikazoveho riadku (terminal/shell) =>  pricom musite byt prihlaseny ako root:',
      'After doing so your OTRS is up and running.' => 'Ak to urob�te =>  V� OTRS je spusten�.',
      'Start page' => 'Prv� strana',
      'Have a lot of fun!' => 'Ve�a z�bavy',
      'Your OTRS Team' => 'V� OTRS t�m',

      # Template: Login

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Nepovolen�',

      # Template: Notify
      'Important' => 'D�le�it�',

      # Template: PrintFooter
      'URL' => 'URL',

      # Template: PrintHeader
      'printed by' => 'vytla�en�',

      # Template: Redirect

      # Template: SystemStats
      'Format' => 'Form�t',

      # Template: Test
      'OTRS Test Page' => 'OTRS test strany',
      'Counter' => 'Po��tadlo',

      # Template: Warning
      # Misc
      'OTRS DB connect host' => 'OTRS DB pripojenie',
      'Create Database' => 'Vytvor datab�zu',
      'DB Host' => 'DB ',
      'Ticket Number Generator' => 'Generova� ��sel po�iadaviek',
      '(Ticket identifier. Some people want to set this to e. g. \'Ticket#\',\'Call#\' or \'MyTicket#\')' => '(Identifik�tor po�iadavky. Niektor� �udia to chc� nastavi� napr�klad: \'Ticket#\', \'Call#\' alebo \'MyTicket#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'T�mto sp�sobom m��ete priamo upravova� k���ov� nastavenie v Kenel/Config.',
      'Close!' => 'Zatvori�!',
      'TicketZoom' => 'Zv��i� po�iadavku',
      'Don\'t forget to add a new user to groups!' => 'Nezabudnite prida� nov�ho pou��vate�a do skup�n!',
      'License' => 'Licencia',
      'CreateTicket' => 'Vytvor po�iadavku',
      'OTRS DB Name' => 'OTRS DB meno',
      'System Settings' => 'Syst�mov� nastavenia',
      'Finished' => 'Ukon�en�',
      'Days' => 'Dni',
      'with' => 's',
      'DB Admin User' => 'DB admin pou��vate�',
      'Change user <-> group settings' => 'Zme� pou��vate�a <-> nastavenie skupiny',
      'DB Type' => 'DB typ',
      'next step' => 'da��� krok',
      'My Queue' => 'M�j rad',
      'Create new database' => 'Vytvor nov� datab�zu',
      'Delete old database' => 'Vyma� star� datab�zu',
      'Load' => 'Na��ta�',
      'OTRS DB User' => 'OTRS DB pou��vate�',
      'OTRS DB Password' => 'OTRS DB heslo',
      'DB Admin Password' => 'DB heslo administr�tora',
      'Drop Database' => 'vymaza� datab�zu',
      '(Used ticket number format)' => '(Pou�ite ��seln� form�t po�iadavky)',
      'FAQ History' => 'Hist�ria FAQ',
      'Customer called' => 'Z�kazn�cky hovor',
      'Phone' => 'Telef�n',
      'Office' => 'Kancel�ria',
      'CompanyTickets' => 'Firemn� po�iadavky',
      'MyTickets' => 'Moje po�iadavky',
      'New Ticket' => 'Nov� po�iadavka',
      'Create new Ticket' => 'Vytvor nov� po�iadavku',
      'Package not correctly deployed =>  you need to deploy it again!' => 'Bal�k nie je spr�vne rozmiestnen� =>  mus�te ho rozmiestni� e�te raz.',
      'installed' => 'nain�talovan�',
      'uninstalled' => 'odin�talovan�',
    };
    # $$STOP$$
}
#--
1;
