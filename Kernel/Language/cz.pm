# --
# Kernel/Language/cz.pm - provides cz language translation
# Copyright (C) 2003 Lukas Vicanek alias networ <lulka at centrum dot cz>
# Copyright (C) 2004 BENETA.cz, s.r.o. <info at beneta dot cz>
#	Translators: Marta Macalkova
#		     Vadim Buzek
#		     Petr Ocasek
# --
# $Id: cz.pm,v 1.25 2005-12-29 01:25:52 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Language::cz;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.25 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Jul 28 22:14:03 2005

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D/%M/%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %Y %T';
    $Self->{DateFormatShort} = '%D/%M/%Y';
    $Self->{DateInputFormat} = '%D/%M/%Y';
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
      'Example' => 'P��klad',
      'Examples' => 'P��klady',
      'valid' => 'platn�',
      'invalid' => 'neplatn�',
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
      'go!' => 'jdi!',
      'go' => 'jdi',
      'All' => 'V�e',
      'all' => 'v�e',
      'Sorry' => 'Omluva',
      'update!' => 'aktualizovat!',
      'update' => 'aktualizovat',
      'Update' => 'Aktualizovat',
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
      'Category' => 'Kategorie',
      'Viewer' => '',
      'New message' => 'Nov� zpr�va',
      'New message!' => 'Nov� zpr�va!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Pros�m, odpov�zte na tento (tyto) tiket(y) pro n�vrat do norm�ln�ho n�hledu fronty!',
      'You got new message!' => 'M�te novou zpr�vu!',
      'You have %s new message(s)!' => 'M�te %s novou zpr�vu (nov�ch zpr�v)!',
      'You have %s reminder ticket(s)!' => 'M�te %s upom�nkov�(ch) ticket(�)',
      'The recommended charset for your language is %s!' => 'Doporu�en� znakov� sada pro V� jazyk je %s!',
      'Passwords dosn\'t match! Please try it again!' => '',
      'Password is already in use! Please use an other password!' => '',
      'Password is already used! Please use an other password!' => '',
      'You need to activate %s first to use it!' => '',
      'No suggestions' => '��dn� n�vrhy',
      'Word' => 'Slovo',
      'Ignore' => 'Ignorovat',
      'replace with' => 'nahradit',
      'Welcome to %s' => 'V�tejte v %s',
      'There is no account with that login name.' => '��dn� ��et s t�mto p�ihla�ovac�m jm�nem neexistuje.',
      'Login failed! Your username or password was entered incorrectly.' => 'P�ihl�en� ne�sp�n�! Va�e u�ivatelsk� jm�no �i heslo bylo zad�no nespr�vn�.',
      'Please contact your admin' => 'Kontaktujte, pros�m, Va�eho administr�tora',
      'Logout successful. Thank you for using OTRS!' => 'Odhl�en� bylo �sp�sn�. D�kujeme V�m za pou��v�n� OTRS!',
      'Invalid SessionID!' => 'Neplatn� ID relace!',
      'Feature not active!' => 'Funkce je neaktivn�!',
      'Take this Customer' => '',
      'Take this User' => 'Pou��j tohoto u�ivatele',
      'possible' => 'mo�n�',
      'reject' => 'zam�tnout',
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
      'FAQ-Area' => 'FAQ z�na',
      'FAQ' => '',
      'FAQ-Search' => '',
      'FAQ-Article' => '',
      'New Article' => 'Nov� polo�ka',
      'FAQ-State' => '',
      'Admin' => '',
      'A web calendar' => '',
      'WebMail' => '',
      'A web mail client' => '',
      'FileManager' => '',
      'A web file manager' => '',
      'Artefact' => '',
      'Incident' => '',
      'Advisory' => '',
      'WebWatcher' => '',
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
      'Can\'t update password, passwords dosn\'t match! Please try it again!' => '',
      'Can\'t update password, invalid characters!' => '',
      'Can\'t update password, need min. 8 characters!' => '',
      'Can\'t update password, need 2 lower and 2 upper characters!' => '',
      'Can\'t update password, need min. 1 digit!' => '',
      'Can\'t update password, need min. 2 characters!' => '',
      'Password is needed!' => '',

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
      'State' => 'Stav',
      'Compose' => 'Sestavit',
      'Pending' => '�ek� na vy��zen�',
      'Owner' => 'Vlastn�k',
      'Owner Update' => '',
      'Sender' => 'Odes�latel',
      'Article' => 'Polo�ka',
      'Ticket' => 'Tiket',
      'Createtime' => 'Doba vytvo�en�',
      'plain' => 'jednoduch�',
      'eMail' => '',
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
      'closed successful' => 'uzav�eno - vy�e�eno',
      'closed unsuccessful' => 'uzav�eno - nevy�e�eno',
      'new' => 'nov�',
      'open' => 'otev��t',
      'closed' => 'uzav�eno',
      'removed' => 'odstran�n',
      'pending reminder' => 'upom�nka p�i �ek�n� na vy��zen�',
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
      'Email-Ticket' => '',
      'Create new Email Ticket' => '',
      'Phone-Ticket' => '',
      'Create new Phone Ticket' => '',
      'Search Tickets' => '',
      'Edit Customer Users' => '',
      'Bulk-Action' => '',
      'Bulk Actions on Tickets' => '',
      'Send Email and create a new Ticket' => '',
      'Overview of all open Tickets' => '',
      'Locked Tickets' => '',
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
      'New ticket notification' => 'Nov� ozn�men� tiketu',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Follow up notification' => 'N�sleduj�c� ozn�men�',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Po�li mi ozn�men�, pokud klient po�le n�sleduj�c� a jsem vlastn�k tohoto tiketu.',
      'Ticket lock timeout notification' => 'Ozn�men� o vypr�en� �asu uzam�en� tiketu',
      'Send me a notification if a ticket is unlocked by the system.' => 'Po�li mi ozn�men�, pokud je tiket odemknut syst�mem.',
      'Move notification' => 'P�esunout ozn�men�',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => '',
      'Custom Queue' => 'Vlastn� fronta',
      'QueueView refresh time' => 'Doba obnoven� n�hledu fronty',
      'Screen after new ticket' => '',
      'Select your screen after creating a new ticket.' => '',
      'Closed Tickets' => 'Uzav�en� Tikety',
      'Show closed tickets.' => 'Uk�zat uzav�en� tikety.',
      'Max. shown Tickets a page in QueueView.' => 'Max. zobrazen�ch tiket� v n�hledu fronty na str�nku',
      'Responses' => 'Odpov�di',
      'Responses <-> Queue' => '',
      'Auto Responses' => '',
      'Auto Responses <-> Queue' => '',
      'Attachments <-> Responses' => '',
      'History::Move' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
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
      'to get the first 20 character of the subject' => 'pro z�sk�ni prvn�ch 20 znak� z p�edm�tu',
      'to get the first 5 lines of the email' => 'pro z�sk�n� prvn�ch 5 ��dk� z emailu',
      'to get the from line of the email' => 'pro z�skan� ��dku Od z emailu',
      'to get the realname of the sender (if given)' => 'pro z�skan� skute�n�ho jm�na odes�latele (pokud je zad�no)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'Vytv��en� zpr�va byla uzav�ena. Opou�t�m.',
      'This window must be called from compose window' => 'Toto okno mus� b�t vyvol�no z okna vytv��en�',
      'Customer User Management' => 'Spr�va Klient�',
      'Search for' => '',
      'Result' => '',
      'Select Source (for add)' => '',
      'Source' => '',
      'This values are read only.' => '',
      'This values are required.' => '',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => '',

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

      # Template: AdminEmail
      'Message sent to' => 'Zpr�va odesl�na',
      'Recipents' => 'Adres�ti',
      'Body' => 'T�lo',
      'send' => 'poslat',

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
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Fulltextov� vyhled�v�n� v polo�ce (nap�. "Mar*in" or "Baue*")',
      '(e. g. 10*5155 or 105658*)' => '(nap�. 10*5155 or 105658*)',
      '(e. g. 234321)' => '(nap�. 234321)',
      'Customer User Login' => 'P�ihl�en� klienta',
      '(e. g. U5150)' => '(nap�. U5150)',
      'Agent' => '',
      'TicketFreeText' => 'Voln� text tiketu',
      'Ticket Lock' => '',
      'Times' => 'Doba',
      'No time settings.' => '��dn� nastaven� doby',
      'Ticket created' => 'Tiket vytvo�en',
      'Ticket created between' => 'Tiket vytvo�en mezi',
      'New Priority' => '',
      'New Queue' => 'Nov� fronta',
      'New State' => '',
      'New Agent' => '',
      'New Owner' => 'Nov� vlastn�k',
      'New Customer' => '',
      'New Ticket Lock' => '',
      'CustomerUser' => 'Klient',
      'Add Note' => 'P�idat pozn�mku',
      'CMD' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '',
      'Delete tickets' => '',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => '',
      'Modules' => '',
      'Param 1' => '',
      'Param 2' => '',
      'Param 3' => '',
      'Param 4' => '',
      'Param 5' => '',
      'Param 6' => '',
      'Save' => '',

      # Template: AdminGroupForm
      'Group Management' => 'Spr�va skupiny',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Skupina administr�tora m� p��stup do administra�n� a statistick� z�ny.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Vytvo�it nov� skupiny pro p�i�azen� pr�v p��stup� ruzn�m skupin�m agent� (nap�. odd�len� n�kupu, odd�len� podpory, odd�len� prodeje...).',
      'It\'s useful for ASP solutions.' => 'To je vhodn� pro �e�en� ASP',

      # Template: AdminLog
      'System Log' => 'Log syst�mu',
      'Time' => '',

      # Template: AdminNavigationBar
      'Users' => '',
      'Groups' => 'Skupiny',
      'Misc' => 'R�zn�',

      # Template: AdminNotificationForm
      'Notification Management' => 'Spr�va ozn�men�',
      'Notification' => '',
      'Notifications are sent to an agent or a customer.' => 'Ozn�men� jsou odesl�na agentovi �i klientovi',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',

      # Template: AdminPackageManager
      'Package Manager' => '',
      'Uninstall' => '',
      'Verion' => '',
      'Do you really want to uninstall this package?' => '',
      'Install' => '',
      'Package' => '',
      'Online Repository' => '',
      'Version' => '',
      'Vendor' => '',
      'Upgrade' => '',
      'Local Repository' => '',
      'Status' => 'Stav',
      'Overview' => 'P�ehled',
      'Download' => '',
      'Rebuild' => '',
      'Reinstall' => '',

      # Template: AdminPGPForm
      'PGP Management' => '',
      'Identifier' => '',
      'Bit' => '',
      'Key' => 'Kl��',
      'Fingerprint' => '',
      'Expires' => '',
      'In this way you can directly edit the keyring configured in SysConfig.' => '',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'Spr�va POP3 ��t�',
      'Host' => 'Hostitel',
      'Trusted' => 'Ov��eno',
      'Dispatching' => 'Za�azen�',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'V�echny p��choz� emaily z dan�ho ��tu budou za�azeny do vybran� fronty!',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => '',
      'Filtername' => '',
      'Match' => 'Obsahuje',
      'Header' => '',
      'Value' => 'Hodnota',
      'Set' => 'Nastavit',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => '',

      # Template: AdminQueueAutoResponseTable

      # Template: AdminQueueForm
      'Queue Management' => 'Spr�va front',
      'Sub-Queue of' => 'Podfronta ',
      'Unlock timeout' => '�as do odemknut�',
      '0 = no unlock' => '0 = ��dn� odemknut�',
      'Escalation time' => 'Doba stup�ov�n�',
      '0 = no escalation' => '0 = ��dn� stup�ov�n�',
      'Follow up Option' => 'N�sleduj�c� volba',
      'Ticket lock after a follow up' => 'Zamknout tiket po n�sleduj�c�m',
      'Systemaddress' => 'Syst�mov� adresa',
      'Customer Move Notify' => 'Ozn�men� Klientovi o zm�n� fronty',
      'Customer State Notify' => 'Ozn�men� Klientovi o zm�n� stavu',
      'Customer Owner Notify' => 'Ozn�men� Klientovi o zm�n� vlastn�ka',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Pokud agent uzamkne tiket a neode�le v t�to dob� odpov��, tiket bude automaticky odemknut. Tak se stane tiket viditeln� pro v�echny ostatn� agenty.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Nebude-li tiket odpov�zen v dan�m �ase, bude zobrazen pouze tento Tiket.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Pokud je tiket uzav�en a klient ode�le n�sleduj�c�, tiket bude pro star�ho vlastn�ka uzamknut.',
      'Will be the sender address of this queue for email answers.' => 'Bude adresou odes�latele z t�to fronty pro emailov� odpov�di.',
      'The salutation for email answers.' => 'Osloven� pro emailov� odpov�di.',
      'The signature for email answers.' => 'Podpis pro emailov� odpov�di.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS po�le klientovi emailem ozn�men�, pokud bude tiket p�esunut.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS po�le klientovi emailem ozn�men�, pokud se zm�n� stav tiketu.',
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
      'Next state' => 'Nasleduj�c� stav',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'The current ticket state is' => 'Aktu�ln� stav tiketu je',
      'Your email address is new' => '',

      # Template: AdminRoleForm
      'Role Management' => '',
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
      'Active' => '',
      'Select the role:user relations.' => '',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Spr�va osloven�',
      'customer realname' => 'skute�n� jm�no klienta',
      'for agent firstname' => 'pro k�estn� jm�no agenta',
      'for agent lastname' => 'pro p��jmen� agenta',
      'for agent user id' => 'pro u�ivatelsk� ID agenta',
      'for agent login' => 'pro p�ihl�en� agenta',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Po�adavek na SQL datab�zi',
      'SQL' => '',
      'Limit' => '',
      'Select Box Result' => 'V�sledek SQL dotazu',

      # Template: AdminSession
      'Session Management' => 'Spr�va relace',
      'Sessions' => 'Relace',
      'Uniq' => 'Po�et',
      'kill all sessions' => 'Zru�it v�echny relace',
      'Session' => '',
      'kill session' => 'zru�it relaci',

      # Template: AdminSignatureForm
      'Signature Management' => 'Spr�va podpis�',

      # Template: AdminSMIMEForm
      'SMIME Management' => '',
      'Add Certificate' => '',
      'Add Private Key' => '',
      'Secret' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',

      # Template: AdminStateForm
      'System State Management' => 'Spr�va stavu syst�mu',
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
      'Content' => '',
      'New' => 'Nov�',
      'New Group' => '',
      'Group Ro' => '',
      'New Group Ro' => '',
      'NavBarName' => '',
      'Image' => '',
      'Prio' => '',
      'Block' => '',
      'NavBar' => '',
      'AccessKey' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Spr�va emailov�ch adres syst�mu',
      'Email' => '',
      'Realname' => 'Skute�n� jm�no',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'V�echny p��choz� emaily obsahuj�c� tohoto adres�ta (v poli KOMU) budou za�azeny to vybran� fronty!',

      # Template: AdminUserForm
      'User Management' => 'Spr�va u�ivatel�',
      'Firstname' => 'K�estn� jm�no',
      'Lastname' => 'P��jmen�',
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

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => '',

      # Template: AgentLinkObject
      'Link Object' => '',
      'Select' => 'Vybrat',
      'Results' => 'V�sledky',
      'Total hits' => 'Celkov� po�et z�znam�',
      'Site' => 'Um�st�n�',
      'Detail' => '',

      # Template: AgentLookup
      'Lookup' => '',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Funkce na kontrolu pravopisu',
      'spelling error(s)' => 'chyba(y) v pravopisu',
      'or' => 'nebo',
      'Apply these changes' => 'Aplikovat tyto zm�ny',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Zpr�va by m�la obsahovat Komu: p��jemce!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Mus�te m�t  uvedenu emailovou adresu (nap�. klient@priklad.cz) v poli Komu:!',
      'Bounce ticket' => 'Odeslat tiket zp�t',
      'Bounce to' => 'Odeslat zp�t',
      'Next ticket state' => 'N�sleduj�c� stav tiketu',
      'Inform sender' => 'Informovat odes�latele',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'V� email s ��slem ticketu "<OTRS_TICKET>" je odesl�n zp�t na "<OTRS_BOUNCE_TO>". Kontaktujte tuto adresu pro dal�� infromace.',
      'Send mail!' => 'Poslat mail!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Zpr�va by m�la m�t p�edm�t!',
      'Ticket Bulk Action' => '',
      'Spell Check' => 'Kontrola pravopisu',
      'Note type' => 'Typ pozn�mky',
      'Unlock Tickets' => '',

      # Template: AgentTicketClose
      'A message should have a body!' => 'Zpr�va by m�la m�t t�lo!',
      'You need to account time!' => 'Pot�ebujete ��tovat dobu!',
      'Close ticket' => 'Zav��t tiket',
      'Note Text' => 'Text pozn�mky',
      'Close type' => 'Zav��t typ',
      'Time units' => 'Jednotky �asu',
      ' (work units)' => '(jednotky pr�ce)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Zpr�va mus� b�t pravopisn� zkontrolovan�!',
      'Compose answer for ticket' => 'Sestavit odpov�� pro tiket',
      'Attach' => 'P�ipojit',
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

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'N�sleduj�c�',

      # Template: AgentTicketEmail
      'Compose Email' => '',
      'new ticket' => 'nov� tiket',
      'Clear To' => '',
      'All Agents' => 'V�ichni agenti',
      'Termin1' => '',

      # Template: AgentTicketForward
      'Article type' => 'Typ polo�ky',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Zm�nit �pln� text tiketu',

      # Template: AgentTicketHistory
      'History of' => 'Historie',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'Tiket zamknut!',
      'Ticket unlock!' => 'Tiket odemknut!',

      # Template: AgentTicketMailbox
      'Mailbox' => 'Po�tovn� schr�nka',
      'Tickets' => 'Tikety',
      'All messages' => 'V�echny zpr�vy',
      'New messages' => 'Nov� zpr�vy',
      'Pending messages' => 'Zpr�vy �ekaj�c� na vy��zen�',
      'Reminder messages' => 'Upom�nkov� zpr�vy',
      'Reminder' => 'Upom�nka',
      'Sort by' => 'Set��dit dle',
      'Order' => 'Se�adit',
      'up' => 'nahoru',
      'down' => 'dol�',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => '',
      'Ticket Merge' => '',
      'Merge to' => '',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '',

      # Template: AgentTicketMove
      'Queue ID' => 'ID fronty',
      'Move Ticket' => 'P�esunout tiket',
      'Previous Owner' => 'P�edchoz� vlastn�k',

      # Template: AgentTicketNote
      'Add note to ticket' => 'P�idat pozn�mku k tiketu',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Zm�nit vlastn�ka tiketu',
      'Message for new Owner' => 'Zpr�va pro nov�ho vlastn�ka',

      # Template: AgentTicketPending
      'Set Pending' => 'Nastavit - �ek� na vy��zen�',
      'Pending type' => 'Typ �ek�n� na vy��zen�',
      'Pending date' => 'Datum �ek�n� na vy��zen�',

      # Template: AgentTicketPhone
      'Phone call' => 'Telefon� hovor',

      # Template: AgentTicketPhoneNew
      'Clear From' => 'Vymazat pole Od',

      # Template: AgentTicketPlain
      'Plain' => 'Jednoduch�',
      'TicketID' => 'ID tiketu',
      'ArticleID' => 'ID polo�ky',

      # Template: AgentTicketPrint
      'Ticket-Info' => '',
      'Accounted time' => '��tovan� doba',
      'Escalation in' => 'Stup�ov�n� v',
      'Linked-Object' => '',
      'Parent-Object' => '',
      'Child-Object' => '',
      'by' => 'p�es',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Zm�nit d�le�itost tiketu',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Zobrazen� tikety',
      'Page' => 'Strana',
      'Tickets available' => 'Tiket� k dispozici',
      'All tickets' => 'V�echny tikety',
      'Queues' => '�ady',
      'Ticket escalation!' => 'Eskalace tiket�',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'V� vlastn� tiket',
      'Compose Follow up' => 'Sestavit n�sleduj�c�',
      'Compose Answer' => 'Odpov�d�t',
      'Contact customer' => 'Kontaktovat klienta',
      'Change queue' => 'Zm�nit frontu',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => 'Hled�n� tiketu',
      'Profile' => 'Profil',
      'Search-Template' => 'Forma vyhled�v�n�',
      'Created in Queue' => '',
      'Result Form' => 'Forma v�sledku',
      'Save Search-Profile as Template?' => 'Ulo�it profil vyhled�v�n� jako �ablonu?',
      'Yes, save it with name' => 'Ano, ulo�it pod n�zvem',
      'Customer history search' => 'Vyhled�v�n� historie klienta',
      'Customer history search (e. g. "ID342425").' => 'Vyhled�v�n� historie klienta (nap�. "ID342425")',
      'No * possible!' => '��dn� * mo�n�!',

      # Template: AgentTicketSearchResult
      'Search Result' => 'V�sledky vyhled�v�n�',
      'Change search options' => 'Zm�nit mo�nosti vyhled�v�n�',

      # Template: AgentTicketSearchResultPrint
      '"}' => '',

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'set��dit nahoru',
      'U' => 'Z-A',
      'sort downward' => 'set��dit dol�',
      'D' => 'A-Z',

      # Template: AgentTicketStatusView
      'Ticket Status View' => '',
      'Open Tickets' => '',

      # Template: AgentTicketZoom
      'Split' => 'Rozd�lit',

      # Template: AgentTicketZoomStatus
      'Locked' => '',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => 'J�t zp�t',

      # Template: CustomerFAQ
      'Print' => 'Tisknout',
      'Keywords' => 'Kl��ov� slova',
      'Symptom' => 'P��znak',
      'Problem' => 'Probl�m',
      'Solution' => '�e�en�',
      'Modified' => 'Zm�n�no',
      'Last update' => 'Posledn� aktualizace',
      'FAQ System History' => 'Historie FAQ syst�mu',
      'modified' => '',
      'FAQ Search' => 'Vyhledat FAQ',
      'Fulltext' => '',
      'Keyword' => 'Kl��ov� slovo',
      'FAQ Search Result' => 'V�sledky vyhled�v�n� FAQ',
      'FAQ Overview' => 'P�ehled FAQ',

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
      'Click here to report a bug!' => 'Klikn�te zde pro nahl�en� chyby!',

      # Template: FAQ
      'Comment (internal)' => 'Koment�� (intern�)',
      'A article should have a title!' => '',
      'New FAQ Article' => '',
      'Do you really want to delete this Object?' => '',
      'System History' => '',

      # Template: FAQCategoryForm
      'Name is required!' => '',
      'FAQ Category' => 'Kategorie FAQ',

      # Template: FAQLanguageForm
      'FAQ Language' => 'Jazyk FAQ',

      # Template: Footer
      'QueueView' => 'N�hled fronty',
      'PhoneView' => 'Nov� tiket / hovor',
      'Top of Page' => 'Hlava str�nky',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'Dom�',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Web-instal�tor',
      'accept license' => 'souhlas�m s licenc�',
      'don\'t accept license' => 'nesouhlas�m s licenc�',
      'Admin-User' => 'Administr�tor',
      'Admin-Password' => '',
      'your MySQL DB should have a root password! Default is empty!' => 'Va�e MySQL datab�ze by m�la m�t root heslo! V�choz� je pr�zdn�!',
      'Database-User' => '',
      'default \'hot\'' => 'v�choz� \'hot\'',
      'DB connect host' => '',
      'Database' => '',
      'Create' => '',
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
      'Default Charset' => 'V�choz� znakov� sada',
      'Use utf-8 it your database supports it!' => 'Pou�ijte utf-8 pokud to Va�e datab�ze podporuje',
      'Default Language' => 'V�choz� jazyk',
      '(Used default language)' => '(Pou�it� v�choz� jazyk)',
      'CheckMXRecord' => 'Kontrolovat MX z�znam',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kontroluj MX z�znamy pou�it�ch emailov�ch adres p�i sestavov�n� odpov�di. Nepou��vejte pokud OTRS server p�ipojen pomoc� vyt��en� linky!)',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Abyste mohli pou��vat OTRS, mus�te zadat n�sleduj�c� ��dek do Va�eho p��kazov�ho ��dku (Terminal/Shell) jako root.',
      'Restart your webserver' => 'Restartujte V� webserver',
      'After doing so your OTRS is up and running.' => 'Po dokon�en� n�sleduj�c�ch operac� je V� OTRS spu�t�n a pob��',
      'Start page' => '�vodn� str�nka',
      'Have a lot of fun!' => 'P�ejeme hodn� �sp�ch� s OTRS!',
      'Your OTRS Team' => 'V� OTRS t�m',

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

      # Template: Redirect

      # Template: SystemStats
      'Format' => '',

      # Template: Test
      'OTRS Test Page' => 'Testovac� OTRS str�nka',
      'Counter' => '',

      # Template: Warning
      # Misc
      'OTRS DB connect host' => 'Hostitel OTRS datab�ze (server)',
      'Create Database' => 'Vytvo�it Databazi',
      'DB Host' => 'Hostitel (server) datab�ze',
      'Change roles <-> groups settings' => '',
      'Ticket Number Generator' => 'Gener�tor ��sel tiket�',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identifik�tor tiket�. Nekte�� lid� cht�j� nastavit nap�. \'Tiket#\',  \'Hovor#\' nebo \'MujTiket#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Create new Ticket' => 'Vytvo�it nov� tiket',
      'Ticket Hook' => 'Ozna�en� tiketu',
      'Close!' => 'Zav��t!',
      'TicketZoom' => 'Zobrazen� tiketu',
      'Don\'t forget to add a new user to groups!' => 'Nezapome�te p�idat nov�ho u�ivatele do skupin!',
      'License' => 'Licence',
      'CreateTicket' => 'Vytvo�eno Tiketu',
      'OTRS DB Name' => 'N�zev OTRS datab�ze',
      'System Settings' => 'Nastaven� syst�mu',
      'Finished' => 'Dokon�eno',
      'New Ticket' => 'Nov� tiket',
      'DB Admin User' => 'Administr�tor datab�ze',
      'Change user <-> group settings' => 'Zm�nit u�ivatele <-> nastaven� skupiny',
      'DB Type' => 'Typ datab�ze',
      'next step' => 'dal�� krok',
      'Admin-Email' => 'Email administr�tora',
      'Delete old database' => 'Smazat starou datab�zi',
      'OTRS DB User' => 'U�ivatel OTRS datab�ze',
      'Options ' => '',
      'OTRS DB Password' => 'Heslo OTRS datab�ze',
      'DB Admin Password' => 'Heslo administr�tora datab�ze',
      'Drop Database' => 'Odstranit databazi',
      '(Used ticket number format)' => '(Pou�it� form�t ��sel tiket�)',
      'FAQ History' => 'Historie FAQ',
      'Package not correctly deployed, you need to deploy it again!' => '',
      'Customer called' => '',
      'Phone' => '',
      'Office' => '',
      'CompanyTickets' => '',
      'MyTickets' => '',
      'New Ticket' => '',
      'Create new Ticket' => '',
      'installed' => '',
      'uninstalled' => '',
    };
    # $$STOP$$
}
# --
1;

