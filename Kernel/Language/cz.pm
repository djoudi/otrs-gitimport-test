# --
# Kernel/Language/cz.pm - provides cz language translation
# Copyright (C) 2003 Lukas Vicanek alias networ <lulka at centrum dot cz>
# Copyright (C) 2004 BENETA.cz, s.r.o. <info at beneta dot cz>
#	Translators: Marta Macalkova
#		     Vadim Buzek 
#		     Petr Ocasek
# --
# $Id: cz.pm,v 1.14 2005-02-23 10:04:20 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::cz;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.14 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Tue Aug 24 10:08:21 2004 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D/%M/%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %Y %T';
    $Self->{DateInputFormat} = '%D/%M/%Y';
    $Self->{DateInputFormatLong} = '%D/%M/%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 minuty',
      ' 5 minutes' => ' 5 minut',
      ' 7 minutes' => ' 7 minut',
      '(Click here to add)' => '(Pro p�id�n� klikn�te zde)',
      '...Back' => '',
      '10 minutes' => '10 minut',
      '15 minutes' => '15 minut',
      'Added User "%s"' => '',
      'AddLink' => 'P�idat Odkaz',
      'Admin-Area' => 'Administra�n� z�na',
      'agent' => 'agent',
      'Agent-Area' => 'Z�na agent�',
      'all' => 'v�e',
      'All' => 'V�e',
      'Attention' => 'Upozorn�n�',
      'Back' => 'Zp�t',
      'before' => 'p�ed',
      'Bug Report' => 'Upozorn�n� na chybu',
      'Calendar' => '',
      'Cancel' => 'Stornovat',
      'change' => 'zm�nit',
      'Change' => 'Zm�nit',
      'change!' => 'zm�nit!',
      'click here' => 'klikn�te zde',
      'Comment' => 'Koment��',
      'Contract' => '',
      'Crypt' => '',
      'Crypted' => '',
      'Customer' => 'Klient',
      'customer' => 'klient',
      'Customer Info' => 'Informace o klientovi',
      'day' => 'den',
      'day(s)' => 'den(dn�)',
      'days' => 'dn�(dny)',
      'description' => 'popis',
      'Description' => 'Popis',
      'Directory' => '',
      'Dispatching by email To: field.' => 'P�i�adit podle e-mailu - pole KOMU:.',
      'Dispatching by selected Queue.' => 'P�i�adit do vybran� fronty.',
      'Don\'t show closed Tickets' => 'Nezobrazovat uzav�en� tikety',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Z bezpe�nostn�ch d�vod� nepracujte se superu�ivatelsk�m ��tem - vytvo�te si nov�ho u�ivatele!',
      'Done' => 'Hotovo',
      'end' => 'konec',
      'Error' => 'Chyba',
      'Example' => 'P��klad',
      'Examples' => 'P��klady',
      'Facility' => 'Funkce',
      'FAQ-Area' => 'FAQ z�na',
      'Feature not active!' => 'Funkce je neaktivn�!',
      'go' => 'jdi',
      'go!' => 'jdi!',
      'Group' => 'Skupina',
      'History::AddNote' => 'Added note (%s)',
      'History::Bounce' => 'Bounced to "%s".',
      'History::CustomerUpdate' => 'Updated: %s',
      'History::EmailAgent' => 'Email sent to customer.',
      'History::EmailCustomer' => 'Added email. %s',
      'History::FollowUp' => 'FollowUp for [%s]. %s',
      'History::Forward' => 'Forwarded to "%s".',
      'History::Lock' => 'Locked ticket.',
      'History::LoopProtection' => 'Loop-Protection! No auto-response sent to "%s".',
      'History::Misc' => '%s',
      'History::Move' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
      'History::NewTicket' => 'New Ticket [%s] created (Q=%s;P=%s;S=%s).',
      'History::OwnerUpdate' => 'New owner is "%s" (ID=%s).',
      'History::PhoneCallAgent' => 'Agent called customer.',
      'History::PhoneCallCustomer' => 'Customer called us.',
      'History::PriorityUpdate' => 'Changed priority from "%s" (%s) to "%s" (%s).',
      'History::Remove' => '%s',
      'History::SendAgentNotification' => '"%s"-notification sent to "%s".',
      'History::SendAnswer' => 'Email sent to "%s".',
      'History::SendAutoFollowUp' => 'AutoFollowUp sent to "%s".',
      'History::SendAutoReject' => 'AutoReject sent to "%s".',
      'History::SendAutoReply' => 'AutoReply sent to "%s".',
      'History::SendCustomerNotification' => 'Notification sent to "%s".',
      'History::SetPendingTime' => 'Updated: %s',
      'History::StateUpdate' => 'Old: "%s" New: "%s"',
      'History::TicketFreeTextUpdate' => 'Updated: %s=%s;%s=%s;',
      'History::TicketLinkAdd' => 'Added link to ticket "%s".',
      'History::TicketLinkDelete' => 'Deleted link to ticket "%s".',
      'History::TimeAccounting' => '%s time unit(s) accounted. Now total %s time unit(s).',
      'History::Unlock' => 'Unlocked ticket.',
      'History::WebRequestCustomer' => 'Customer request via web.',
      'History::SystemRequest' => 'System Request (%s).',
      'Hit' => 'P��stup',
      'Hits' => 'Pr�stup�',
      'hour' => 'hodina',
      'hours' => 'hodin',
      'Ignore' => 'Ignorovat',
      'invalid' => 'neplatn�',
      'Invalid SessionID!' => 'Neplatn� ID relace!',
      'Language' => 'Jazyk',
      'Languages' => 'Jazyky',
      'last' => 'posledn�',
      'Line' => 'Linka',
      'Lite' => 'Omezen�',
      'Login failed! Your username or password was entered incorrectly.' => 'P�ihl�en� ne�sp�n�! Va�e u�ivatelsk� jm�no �i heslo bylo zad�no nespr�vn�.',
      'Logout successful. Thank you for using OTRS!' => 'Odhl�en� bylo �sp�sn�. D�kujeme V�m za pou��v�n� OTRS!',
      'Message' => 'Zpr�va',
      'minute' => 'minuta',
      'minutes' => 'minut',
      'Module' => 'Modul',
      'Modulefile' => 'Modulov� soubor',
      'month(s)' => 'm�s�c(e)',
      'Name' => 'Jm�no',
      'New Article' => 'Nov� polo�ka',
      'New message' => 'Nov� zpr�va',
      'New message!' => 'Nov� zpr�va!',
      'Next' => '',
      'Next...' => '',
      'No' => 'Ne',
      'no' => 'ne',
      'No entry found!' => 'Nebyl nalezen ��dn� z�znam!',
      'No Permission!' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'No suggestions' => '��dn� n�vrhy',
      'none' => '��dn�',
      'none - answered' => '��dn� - odpov�zeno',
      'none!' => '��dn�!',
      'Normal' => 'Norm�ln�',
      'off' => 'vypnuto',
      'Off' => 'Vypnuto',
      'On' => 'Zapnuto',
      'on' => 'zapnuto',
      'Online Agent: %s' => '',
      'Online Customer: %s' => '',
      'Password' => 'Heslo',
      'Passwords dosn\'t match! Please try it again!' => '',
      'Pending till' => '�ek�n� na vy��zen� do',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Pros�m, odpov�zte na tento (tyto) tiket(y) pro n�vrat do norm�ln�ho n�hledu fronty!',
      'Please contact your admin' => 'Kontaktujte, pros�m, Va�eho administr�tora',
      'please do not edit!' => 'pros�me neupravujte!',
      'possible' => 'mo�n�',
      'Preview' => 'Zobrazit',
      'QueueView' => 'N�hled fronty',
      'reject' => 'zam�tnout',
      'replace with' => 'nahradit',
      'Reset' => 'Reset',
      'Salutation' => 'Osloven�',
      'Session has timed out. Please log in again.' => 'Relace vypr�ela. Pros�m, p�ihla�te se znovu.',
      'Show closed Tickets' => 'Zobrazit zav�en� tikety',
      'Sign' => '',
      'Signature' => 'Podpis',
      'Signed' => '',
      'Size' => '',
      'Sorry' => 'Omluva',
      'Stats' => 'Statistiky',
      'Subfunction' => 'Podfunkce',
      'submit' => 'odeslat',
      'submit!' => 'Odeslat!',
      'system' => 'syst�m',
      'Take this Customer' => '',
      'Take this User' => 'Pou��j tohoto u�ivatele',
      'Text' => 'Text',
      'The recommended charset for your language is %s!' => 'Doporu�en� znakov� sada pro V� jazyk je %s!',
      'Theme' => 'Design',
      'There is no account with that login name.' => '��dn� ��et s t�mto p�ihla�ovac�m jm�nem neexistuje.',
      'Ticket Number' => '',
      'Timeover' => '�as vypr�el',
      'To: (%s) replaced with database email!' => 'To: (%s) nahrazeno emailem z datab�ze!',
      'top' => 'nahoru',
      'Type' => 'Typ',
      'update' => 'aktualizovat',
      'Update' => 'Aktualizovat',
      'update!' => 'aktualizovat!',
      'Upload' => '',
      'User' => 'U�ivatel',
      'Username' => 'Jm�no u�ivatele',
      'Valid' => 'Platnost',
      'Warning' => 'Varov�n�',
      'week(s)' => 't�den(t�dny)',
      'Welcome to OTRS' => 'V�tejte v OTRS',
      'Word' => 'Slovo',
      'wrote' => 'napsal',
      'year(s)' => 'rok(y)',
      'Yes' => 'Ano',
      'yes' => 'ano',
      'You got new message!' => 'M�te novou zpr�vu!',
      'You have %s new message(s)!' => 'M�te %s novou zpr�vu (nov�ch zpr�v)!',
      'You have %s reminder ticket(s)!' => 'M�te %s upom�nkov�(ch) ticket(�)',

    # Template: AAAMonth
      'Apr' => 'Dub',
      'Aug' => 'Srp',
      'Dec' => 'Pro',
      'Feb' => '�no',
      'Jan' => 'Led',
      'Jul' => '�er',
      'Jun' => '�vc',
      'Mar' => 'B�e',
      'May' => 'Kv�',
      'Nov' => 'Lis',
      'Oct' => '��j',
      'Sep' => 'Z��',

    # Template: AAAPreferences
      'Closed Tickets' => 'Uzav�en� Tikety',
      'CreateTicket' => 'Vytvo�eno Tiketu',
      'Custom Queue' => 'Vlastn� fronta',
      'Follow up notification' => 'N�sleduj�c� ozn�men�',
      'Frontend' => 'Rozhran�',
      'Mail Management' => 'Spr�va e-mail�',
      'Max. shown Tickets a page in Overview.' => 'Max. zobrazen�ch tiket� v p�ehledu na str�nku',
      'Max. shown Tickets a page in QueueView.' => 'Max. zobrazen�ch tiket� v n�hledu fronty na str�nku',
      'Move notification' => 'P�esunout ozn�men�',
      'New ticket notification' => 'Nov� ozn�men� tiketu',
      'Other Options' => 'Jin� mo�nosti',
      'PhoneView' => 'Nov� tiket / hovor',
      'Preferences updated successfully!' => 'Nastaven� �sp�n� aktualizov�no!',
      'QueueView refresh time' => 'Doba obnoven� n�hledu fronty',
      'Screen after new ticket' => '',
      'Select your default spelling dictionary.' => 'Vyberte si V� v�choz� pravopisn� slovn�k',
      'Select your frontend Charset.' => 'Vyberte si znakovou sadu Va�eho rozhran�.',
      'Select your frontend language.' => 'Vyberte si jazyk Va�eho rozhran�.',
      'Select your frontend QueueView.' => 'Vyberte si n�hled fronty Va�eho rozhran�.',
      'Select your frontend Theme.' => 'Vyberte si design Va�eho rozhran�.',
      'Select your QueueView refresh time.' => 'Vyberte si dobu obnoven� n�hledu fronty.',
      'Select your screen after creating a new ticket.' => '',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Po�li mi ozn�men�, pokud klient po�le n�sleduj�c� a jsem vlastn�k tohoto tiketu.',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Send me a notification if a ticket is unlocked by the system.' => 'Po�li mi ozn�men�, pokud je tiket odemknut syst�mem.',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Show closed tickets.' => 'Uk�zat uzav�en� tikety.',
      'Spelling Dictionary' => 'Slovn�k kontroly pravopisu',
      'Ticket lock timeout notification' => 'Ozn�men� o vypr�en� �asu uzam�en� tiketu',
      'TicketZoom' => 'Zobrazen� tiketu',

    # Template: AAATicket
      '1 very low' => '1 velmi n�zk�',
      '2 low' => '2 n�zk�',
      '3 normal' => '3 norm�ln�',
      '4 high' => '4 vysok�',
      '5 very high' => '5 velmi vysok�',
      'Action' => 'Akce',
      'Age' => 'St���',
      'Article' => 'Polo�ka',
      'Attachment' => 'P��loha',
      'Attachments' => 'P��lohy',
      'Bcc' => 'Slep� kopie',
      'Bounce' => 'Odeslat zp�t',
      'Cc' => 'Kopie',
      'Close' => 'Zav��t',
      'closed' => 'uzav�eno',
      'closed successful' => 'uzav�eno - vy�e�eno',
      'closed unsuccessful' => 'uzav�eno - nevy�e�eno',
      'Compose' => 'Sestavit',
      'Created' => 'Vytvo�eno',
      'Createtime' => 'Doba vytvo�en�',
      'email' => 'email',
      'eMail' => 'eMail',
      'email-external' => 'extern� email',
      'email-internal' => 'intern� email',
      'Forward' => 'P�edat',
      'From' => 'Od',
      'high' => 'vysok�',
      'History' => 'Historie',
      'If it is not displayed correctly,' => 'Pokud nen� zobrazeno spr�vn�,',
      'lock' => 'zam�eno',
      'Lock' => 'Z�mek',
      'low' => 'n�zk�',
      'Move' => 'P�esunout',
      'new' => 'nov�',
      'normal' => 'normaln�',
      'note-external' => 'pozn�mka-extern�',
      'note-internal' => 'pozn�mka-intern�',
      'note-report' => 'pozn�mka-report',
      'open' => 'otev��t',
      'Owner' => 'Vlastn�k',
      'Pending' => '�ek� na vy��zen�',
      'pending auto close+' => '�ek� na vy��zen� - automaticky zav��t+',
      'pending auto close-' => '�ek� na vy��zen� - automaticky zav��t-',
      'pending reminder' => 'upom�nka p�i �ek�n� na vy��zen�',
      'phone' => 'telefon',
      'plain' => 'jednoduch�',
      'Priority' => 'Priorita',
      'Queue' => 'Fronta',
      'removed' => 'odstran�n',
      'Sender' => 'Odes�latel',
      'sms' => 'sms',
      'State' => 'Stav',
      'Subject' => 'P�edm�t',
      'This is a' => 'Toto je',
      'This is a HTML email. Click here to show it.' => 'Toto je HTML email. Pro zobrazen� klikn�te zde.',
      'This message was written in a character set other than your own.' => 'Tato zpr�va byla naps�na v jin� znakov� sad� ne� Va�e.',
      'Ticket' => 'Tiket',
      'Ticket "%s" created!' => 'Tiket "%s" vytvo�en!',
      'To' => 'Komu',
      'to open it in a new window.' => 'pro otev�en� v nov�m okn�.',
      'Unlock' => 'Z�mek',
      'unlock' => 'nezam�en�',
      'very high' => 'velmi vysok�',
      'very low' => 'velmi n�zk�',
      'View' => 'N�hled',
      'webrequest' => 'po�adavek p�es web',
      'Zoom' => 'Zobrazit',

    # Template: AAAWeekDay
      'Fri' => 'P�',
      'Mon' => 'Po',
      'Sat' => 'So',
      'Sun' => 'Ne',
      'Thu' => '�t',
      'Tue' => '�t',
      'Wed' => 'St',

    # Template: AdminAttachmentForm
      'Add' => 'P�idat',
      'Attachment Management' => 'Spr�va p��loh',

    # Template: AdminAutoResponseForm
      'Auto Response From' => 'Automatick� odpov�� Od',
      'Auto Response Management' => 'Spr�va automatick�ch odpov�d�',
      'Note' => 'Pozn�mka',
      'Response' => 'Odpov��',
      'to get the first 20 character of the subject' => 'pro z�sk�ni prvn�ch 20 znak� z p�edm�tu',
      'to get the first 5 lines of the email' => 'pro z�sk�n� prvn�ch 5 ��dk� z emailu',
      'to get the from line of the email' => 'pro z�skan� ��dku Od z emailu',
      'to get the realname of the sender (if given)' => 'pro z�skan� skute�n�ho jm�na odes�latele (pokud je zad�no)',
      'to get the ticket id of the ticket' => 'pro z�sk�n� ID tiketu z tiketu',
      'to get the ticket number of the ticket' => 'pro z�sk�n� ��sla tiketu z tiketu',
      'Useable options' => 'Dostupn� mo�nosti',

    # Template: AdminCustomerUserForm
      'Customer User Management' => 'Spr�va Klient�',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => '',
      'Result' => '',
      'Search' => 'Vyhledat',
      'Search for' => '',
      'Select Source (for add)' => '',
      'Source' => '',
      'The message being composed has been closed.  Exiting.' => 'Vytv��en� zpr�va byla uzav�ena. Opou�t�m.',
      'This values are read only.' => '',
      'This values are required.' => '',
      'This window must be called from compose window' => 'Toto okno mus� b�t vyvol�no z okna vytv��en�',

    # Template: AdminCustomerUserGroupChangeForm
      'Change %s settings' => 'Zm�nit nastaven� %s',
      'Customer User <-> Group Management' => 'Klient <-> Spr�va skupiny',
      'Full read and write access to the tickets in this group/queue.' => 'Pln� p��stup pro �ten� a psan� do tiket� v t�to skupin�/front�.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Pokud nebylo nic vybr�no, nejsou v t�to skupin� ��dn� pr�va (tikety nebudou pro u�ivatele dostupn�).',
      'Permission' => 'Pr�va',
      'Read only access to the ticket in this group/queue.' => 'P��stup pouze pro �ten� tiketu v t�to skupin�/�ad�.',
      'ro' => 'jen �ten�',
      'rw' => '�ten�/psan�',
      'Select the user:group permissions.' => 'Vybrat u�ivatele:pr�va skupiny',

    # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Zm�nit u�ivatele <-> nastaven� skupiny',

    # Template: AdminEmail
      'Admin-Email' => 'Email administr�tora',
      'Body' => 'T�lo',
      'OTRS-Admin Info!' => 'Informace o OTRS-Administr�torovi!',
      'Recipents' => 'Adres�ti',
      'send' => 'poslat',

    # Template: AdminEmailSent
      'Message sent to' => 'Zpr�va odesl�na',

    # Template: AdminGenericAgent
      '(e. g. 10*5155 or 105658*)' => '(nap�. 10*5155 or 105658*)',
      '(e. g. 234321)' => '(nap�. 234321)',
      '(e. g. U5150)' => '(nap�. U5150)',
      '-' => '',
      'Add Note' => 'P�idat pozn�mku',
      'Agent' => 'Agent',
      'and' => 'a',
      'CMD' => '',
      'Customer User Login' => 'P�ihl�en� klienta',
      'CustomerID' => 'ID klienta',
      'CustomerUser' => 'Klient',
      'Days' => '',
      'Delete' => 'Smazat',
      'Delete tickets' => '',
      'Edit' => 'Editovat',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Fulltextov� vyhled�v�n� v polo�ce (nap�. "Mar*in" or "Baue*")',
      'GenericAgent' => '',
      'Hours' => '',
      'Job-List' => '',
      'Jobs' => '',
      'Last run' => '',
      'Minutes' => '',
      'Modules' => '',
      'New Agent' => '',
      'New Customer' => '',
      'New Owner' => 'Nov� vlastn�k',
      'New Priority' => '',
      'New Queue' => 'Nov� fronta',
      'New State' => '',
      'New Ticket Lock' => '',
      'No time settings.' => '��dn� nastaven� doby',
      'Param 1' => '',
      'Param 2' => '',
      'Param 3' => '',
      'Param 4' => '',
      'Param 5' => '',
      'Param 6' => '',
      'Save' => '',
      'Save Job as?' => '',
      'Schedule' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '',
      'Ticket created' => 'Tiket vytvo�en',
      'Ticket created between' => 'Tiket vytvo�en mezi',
      'Ticket Lock' => '',
      'TicketFreeText' => 'Voln� text tiketu',
      'Times' => 'Doba',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => '',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Vytvo�it nov� skupiny pro p�i�azen� pr�v p��stup� ruzn�m skupin�m agent� (nap�. odd�len� n�kupu, odd�len� podpory, odd�len� prodeje...).',
      'Group Management' => 'Spr�va skupiny',
      'It\'s useful for ASP solutions.' => 'To je vhodn� pro �e�en� ASP',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Skupina administr�tora m� p��stup do administra�n� a statistick� z�ny.',

    # Template: AdminLog
      'System Log' => 'Log syst�mu',
      'Time' => '',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Email Administr�tora',
      'Attachment <-> Response' => 'P��loha <-> Odpov��',
      'Auto Response <-> Queue' => 'Automatick� odpov�� <-> Fronta',
      'Auto Responses' => 'Automatick� odpov�di',
      'Customer User' => 'Klient - U�ivatel�',
      'Customer User <-> Groups' => 'Klient  - U�ivatel� <-> Skupiny',
      'Email Addresses' => 'Emailov� adresy',
      'Groups' => 'Skupiny',
      'Logout' => 'Odhl�sit',
      'Misc' => 'R�zn�',
      'Notifications' => 'Ozn�men�',
      'PGP Keys' => '',
      'PostMaster Filter' => 'PostMaster filtr',
      'PostMaster POP3 Account' => 'PostMaster POP3 ��et',
      'Responses' => 'Odpov�di',
      'Responses <-> Queue' => 'Odpov�di <-> Fronta',
      'Role' => '',
      'Role <-> Group' => '',
      'Role <-> User' => '',
      'Roles' => '',
      'Select Box' => 'Po�adavek na SQL datab�zi',
      'Session Management' => 'Spr�va relace',
      'SMIME Certificates' => '',
      'Status' => 'Stav',
      'System' => 'Syst�m',
      'User <-> Groups' => 'U�ivatel� <-> Skupiny',

    # Template: AdminNotificationForm
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
      'Notification Management' => 'Spr�va ozn�men�',
      'Notifications are sent to an agent or a customer.' => 'Ozn�men� jsou odesl�na agentovi �i klientovi',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',

    # Template: AdminPGPForm
      'Bit' => '',
      'Expires' => '',
      'File' => '',
      'Fingerprint' => '',
      'FIXME: WHAT IS PGP?' => '',
      'Identifier' => '',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Key' => 'Kl��',
      'PGP Key Management' => '',

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'V�echny p��choz� emaily z dan�ho ��tu budou za�azeny do vybran� fronty!',
      'Dispatching' => 'Za�azen�',
      'Host' => 'Hostitel',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',
      'POP3 Account Management' => 'Spr�va POP3 ��t�',
      'Trusted' => 'Ov��eno',

    # Template: AdminPostMasterFilter
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'Filtername' => '',
      'Header' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',
      'Match' => 'Obsahuje',
      'PostMaster Filter Management' => '',
      'Set' => 'Nastavit',
      'Value' => 'Hodnota',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Fronta <-> Spr�va automatick�ch opov�d�',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = ��dn� stup�ov�n�',
      '0 = no unlock' => '0 = ��dn� odemknut�',
      'Customer Move Notify' => 'Ozn�men� Klientovi o zm�n� fronty',
      'Customer Owner Notify' => 'Ozn�men� Klientovi o zm�n� vlastn�ka',
      'Customer State Notify' => 'Ozn�men� Klientovi o zm�n� stavu',
      'Escalation time' => 'Doba stup�ov�n�',
      'Follow up Option' => 'N�sleduj�c� volba',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Pokud je tiket uzav�en a klient ode�le n�sleduj�c�, tiket bude pro star�ho vlastn�ka uzamknut.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Nebude-li tiket odpov�zen v dan�m �ase, bude zobrazen pouze tento Tiket.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Pokud agent uzamkne tiket a neode�le v t�to dob� odpov��, tiket bude automaticky odemknut. Tak se stane tiket viditeln� pro v�echny ostatn� agenty.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS po�le klientovi emailem ozn�men�, pokud bude tiket p�esunut.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS po�le klientovi emailem ozn�men�, pokud se zm�n� vlastn�k tiketu.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS po�le klientovi emailem ozn�men�, pokud se zm�n� stav tiketu.',
      'Queue Management' => 'Spr�va front',
      'Sub-Queue of' => 'Podfronta ',
      'Systemaddress' => 'Syst�mov� adresa',
      'The salutation for email answers.' => 'Osloven� pro emailov� odpov�di.',
      'The signature for email answers.' => 'Podpis pro emailov� odpov�di.',
      'Ticket lock after a follow up' => 'Zamknout tiket po n�sleduj�c�m',
      'Unlock timeout' => '�as do odemknut�',
      'Will be the sender address of this queue for email answers.' => 'Bude adresou odes�latele z t�to fronty pro emailov� odpov�di.',

    # Template: AdminQueueResponsesChangeForm
      'Std. Responses <-> Queue Management' => 'Standartn� odpov�di <-> Spr�va front',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Odpov��',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Standartn� odpov�di <-> Standartn� spr�va p��loh',

    # Template: AdminResponseAttachmentForm

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Odpov�� je obsahuje v�choz� text slou��c� k rychlej�� reakci (spolu s v�choz�m textem) klient�m.',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'Don\'t forget to add a new response a queue!' => 'Nezapome�te p�idat novou reakci odpove� do fronty!',
      'Next state' => 'Nasleduj�c� stav',
      'Response Management' => 'Spr�va odpov�d�',
      'The current ticket state is' => 'Aktu�ln� stav tiketu je',
      'Your email address is new' => '',

    # Template: AdminRoleForm
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',
      'Role Management' => '',

    # Template: AdminRoleGroupChangeForm
      'create' => 'vytvo�it',
      'move_into' => 'p�esunout do',
      'owner' => 'vlastn�k',
      'Permissions to change the ticket owner in this group/queue.' => 'Pr�va zm�nit vlastn�k tiketu v t�to skupin�/front�',
      'Permissions to change the ticket priority in this group/queue.' => 'Pr�va zm�nit prioritu tiketu v t�to skupin�/front�',
      'Permissions to create tickets in this group/queue.' => 'Pr�va vytvo�it tikety v t�to skupin�/front�',
      'Permissions to move tickets into this group/queue.' => 'Pr�va p�esunout tikety do t�to skupiny/fronty',
      'priority' => 'priorita',
      'Role <-> Group Management' => '',

    # Template: AdminRoleGroupForm
      'Change role <-> group settings' => '',

    # Template: AdminRoleUserChangeForm
      'Active' => '',
      'Role <-> User Management' => '',
      'Select the role:user relations.' => '',

    # Template: AdminRoleUserForm
      'Change user <-> role settings' => '',

    # Template: AdminSMIMEForm
      'Add Certificate' => '',
      'Add Private Key' => '',
      'FIXME: WHAT IS SMIME?' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',
      'Secret' => '',
      'SMIME Certificate Management' => '',

    # Template: AdminSalutationForm
      'customer realname' => 'skute�n� jm�no klienta',
      'for agent firstname' => 'pro k�estn� jm�no agenta',
      'for agent lastname' => 'pro p��jmen� agenta',
      'for agent login' => 'pro p�ihl�en� agenta',
      'for agent user id' => 'pro u�ivatelsk� ID agenta',
      'Salutation Management' => 'Spr�va osloven�',

    # Template: AdminSelectBoxForm
      'Limit' => 'Limit',
      'SQL' => 'SQL',

    # Template: AdminSelectBoxResult
      'Select Box Result' => 'V�sledek SQL dotazu',

    # Template: AdminSession
      'kill all sessions' => 'Zru�it v�echny relace',
      'kill session' => 'zru�it relaci',
      'Overview' => 'P�ehled',
      'Session' => '',
      'Sessions' => 'Relace',
      'Uniq' => 'Po�et',

    # Template: AdminSignatureForm
      'Signature Management' => 'Spr�va podpis�',

    # Template: AdminStateForm
      'See also' => 'Viz. tak�',
      'State Type' => 'Typ stavu',
      'System State Management' => 'Spr�va stavu syst�mu',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Ujist�te se, �e jste aktualizovali tak� v�choz� hodnoty ve Va�em Kernel/Config.pm!',

    # Template: AdminSystemAddressForm
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'V�echny p��choz� emaily obsahuj�c� tohoto adres�ta (v poli KOMU) budou za�azeny to vybran� fronty!',
      'Email' => 'Email',
      'Realname' => 'Skute�n� jm�no',
      'System Email Addresses Management' => 'Spr�va emailov�ch adres syst�mu',

    # Template: AdminUserForm
      'Don\'t forget to add a new user to groups!' => 'Nezapome�te p�idat nov�ho u�ivatele do skupin!',
      'Firstname' => 'K�estn� jm�no',
      'Lastname' => 'P��jmen�',
      'User Management' => 'Spr�va u�ivatel�',
      'User will be needed to handle tickets.' => 'U�ivatel bude pot�ebovat pr�va pro ovl�d�n� tiket�.',

    # Template: AdminUserGroupChangeForm
      'User <-> Group Management' => 'Spr�va u�ivatel� <-> skupin',

    # Template: AdminUserGroupForm

    # Template: AgentBook
      'Address Book' => 'Adres��',
      'Discard all changes and return to the compose screen' => 'Zru�it v�echny zm�ny a vr�tit se zp�t do okna vytv��en�',
      'Return to the compose screen' => 'Vr�tit se zp�t do okna vytv��en�',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Zpr�va by m�la obsahovat Komu: p��jemce!',
      'Bounce ticket' => 'Odeslat tiket zp�t',
      'Bounce to' => 'Odeslat zp�t',
      'Inform sender' => 'Informovat odes�latele',
      'Next ticket state' => 'N�sleduj�c� stav tiketu',
      'Send mail!' => 'Poslat mail!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Mus�te m�t  uvedenu emailovou adresu (nap�. klient@priklad.cz) v poli Komu:!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'V� email s ��slem ticketu "<OTRS_TICKET>" je odesl�n zp�t na "<OTRS_BOUNCE_TO>". Kontaktujte tuto adresu pro dal�� infromace.',

    # Template: AgentBulk
      '$Text{"Note!' => '',
      'A message should have a subject!' => 'Zpr�va by m�la m�t p�edm�t!',
      'Note type' => 'Typ pozn�mky',
      'Note!' => 'Pozn�mka!',
      'Options' => 'Mo�nosti',
      'Spell Check' => 'Kontrola pravopisu',
      'Ticket Bulk Action' => '',

    # Template: AgentClose
      ' (work units)' => '(jednotky pr�ce)',
      'A message should have a body!' => 'Zpr�va by m�la m�t t�lo!',
      'Close ticket' => 'Zav��t tiket',
      'Close type' => 'Zav��t typ',
      'Close!' => 'Zav��t!',
      'Note Text' => 'Text pozn�mky',
      'Time units' => 'Jednotky �asu',
      'You need to account time!' => 'Pot�ebujete ��tovat dobu!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'Zpr�va mus� b�t pravopisn� zkontrolovan�!',
      'Attach' => 'P�ipojit',
      'Compose answer for ticket' => 'Sestavit odpov�� pro tiket',
      'for pending* states' => 'pro stavy �ek�n� na vy��zen�*',
      'Is the ticket answered' => 'Je tiket zodpov�zen',
      'Pending Date' => 'Doba �ek�n� na vy��zen�',

    # Template: AgentCrypt

    # Template: AgentCustomer
      'Change customer of ticket' => 'Zm�nit klienta tiketu',
      'Search Customer' => 'Vyhledat klienta',
      'Set customer user and customer id of a ticket' => 'Nastavit klienta a nastavit ID klienta tiketu',

    # Template: AgentCustomerHistory
      'All customer tickets.' => 'V�echny tikety klienta',
      'Customer history' => 'Historie klienta',

    # Template: AgentCustomerMessage
      'Follow up' => 'N�sleduj�c�',

    # Template: AgentCustomerView
      'Customer Data' => 'Data klienta',

    # Template: AgentEmailNew
      'All Agents' => 'V�ichni agenti',
      'Clear To' => '',
      'Compose Email' => '',
      'new ticket' => 'nov� tiket',

    # Template: AgentForward
      'Article type' => 'Typ polo�ky',
      'Date' => 'Datum',
      'End forwarded message' => 'Konec p�edan� zpr�vy',
      'Forward article of ticket' => 'P�edat polo�ku tiketu',
      'Forwarded message from' => 'P�edat zpr�vu od',
      'Reply-To' => 'Odpov�d�t-Komu',

    # Template: AgentFreeText
      'Change free text of ticket' => 'Zm�nit �pln� text tiketu',

    # Template: AgentHistoryForm
      'History of' => 'Historie',

    # Template: AgentHistoryRow

    # Template: AgentInfo
      'Info' => 'Info',

    # Template: AgentLookup
      'Lookup' => '',

    # Template: AgentMailboxNavBar
      'All messages' => 'V�echny zpr�vy',
      'down' => 'dol�',
      'Mailbox' => 'Po�tovn� schr�nka',
      'New' => 'Nov�',
      'New messages' => 'Nov� zpr�vy',
      'Open' => 'Otev��t',
      'Open messages' => 'Otev��t zpr�vy',
      'Order' => 'Se�adit',
      'Pending messages' => 'Zpr�vy �ekaj�c� na vy��zen�',
      'Reminder' => 'Upom�nka',
      'Reminder messages' => 'Upom�nkov� zpr�vy',
      'Sort by' => 'Set��dit dle',
      'Tickets' => 'Tikety',
      'up' => 'nahoru',

    # Template: AgentMailboxTicket
      '"}' => '"}',
      '"}","14' => '"}","14',
      'Add a note to this ticket!' => '',
      'Change the ticket customer!' => '',
      'Change the ticket owner!' => '',
      'Change the ticket priority!' => '',
      'Close this ticket!' => '',
      'Shows the detail view of this ticket!' => '',
      'Unlock this ticket!' => '',

    # Template: AgentMove
      'Move Ticket' => 'P�esunout tiket',
      'Previous Owner' => 'P�edchoz� vlastn�k',
      'Queue ID' => 'ID fronty',

    # Template: AgentNavigationBar
      'Agent Preferences' => '',
      'Bulk Action' => '',
      'Bulk Actions on Tickets' => '',
      'Create new Email Ticket' => '',
      'Create new Phone Ticket' => '',
      'Email-Ticket' => '',
      'Locked tickets' => 'Uzam�en� tikety',
      'new message' => 'Po�tovn� schr�nka',
      'Overview of all open Tickets' => '',
      'Phone-Ticket' => '',
      'Preferences' => 'Nastaven�',
      'Search Tickets' => '',
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

    # Template: AgentNote
      'Add note to ticket' => 'P�idat pozn�mku k tiketu',

    # Template: AgentOwner
      'Change owner of ticket' => 'Zm�nit vlastn�ka tiketu',
      'Message for new Owner' => 'Zpr�va pro nov�ho vlastn�ka',

    # Template: AgentPending
      'Pending date' => 'Datum �ek�n� na vy��zen�',
      'Pending type' => 'Typ �ek�n� na vy��zen�',
      'Set Pending' => 'Nastavit - �ek� na vy��zen�',

    # Template: AgentPhone
      'Phone call' => 'Telefon� hovor',

    # Template: AgentPhoneNew
      'Clear From' => 'Vymazat pole Od',

    # Template: AgentPlain
      'ArticleID' => 'ID polo�ky',
      'Download' => '',
      'Plain' => 'Jednoduch�',
      'TicketID' => 'ID tiketu',

    # Template: AgentPreferencesCustomQueue
      'My Queues' => '',
      'You also get notified about this queues via email if enabled.' => '',
      'Your queue selection of your favorite queues.' => '',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Zm�nit heslo',
      'New password' => 'Nov� heslo',
      'New password again' => 'Nov� heslo (znovu )',

    # Template: AgentPriority
      'Change priority of ticket' => 'Zm�nit d�le�itost tiketu',

    # Template: AgentSpelling
      'Apply these changes' => 'Aplikovat tyto zm�ny',
      'Spell Checker' => 'Funkce na kontrolu pravopisu',
      'spelling error(s)' => 'chyba(y) v pravopisu',

    # Template: AgentStatusView
      'D' => 'A-Z',
      'of' => 'z',
      'Site' => 'Um�st�n�',
      'sort downward' => 'set��dit dol�',
      'sort upward' => 'set��dit nahoru',
      'Ticket Status' => 'Stav tiketu',
      'U' => 'Z-A',

    # Template: AgentTicketLink
      'Delete Link' => '',
      'Link' => 'Odkaz',
      'Link to' => 'Odkaz na',

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Tiket zamknut!',
      'Ticket unlock!' => 'Tiket odemknut!',

    # Template: AgentTicketPrint

    # Template: AgentTicketPrintHeader
      'Accounted time' => '��tovan� doba',
      'Escalation in' => 'Stup�ov�n� v',

    # Template: AgentUtilSearch
      'Profile' => 'Profil',
      'Result Form' => 'Forma v�sledku',
      'Save Search-Profile as Template?' => 'Ulo�it profil vyhled�v�n� jako �ablonu?',
      'Search-Template' => 'Forma vyhled�v�n�',
      'Select' => 'Vybrat',
      'Ticket Search' => 'Hled�n� tiketu',
      'Yes, save it with name' => 'Ano, ulo�it pod n�zvem',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Vyhled�v�n� historie klienta',
      'Customer history search (e. g. "ID342425").' => 'Vyhled�v�n� historie klienta (nap�. "ID342425")',
      'No * possible!' => '��dn� * mo�n�!',

    # Template: AgentUtilSearchResult
      'Change search options' => 'Zm�nit mo�nosti vyhled�v�n�',
      'Results' => 'V�sledky',
      'Search Result' => 'V�sledky vyhled�v�n�',
      'Total hits' => 'Celkov� po�et z�znam�',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'V�echny uzav�en� tikety',
      'All open tickets' => 'V�echny otev�en� tikety',
      'closed tickets' => 'uzav�en� tikety',
      'open tickets' => 'otev�en� tikety',
      'or' => 'nebo',
      'Provides an overview of all' => 'Poskytnou p�ehled v�ech',
      'So you see what is going on in your system.' => 'Tady vid�te, co se odehr�v� ve Va�em syst�mu.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'Sestavit n�sleduj�c�',
      'Your own Ticket' => 'V� vlastn� tiket',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'Odpov�d�t',
      'Contact customer' => 'Kontaktovat klienta',
      'phone call' => 'telefon� hovor',

    # Template: AgentZoomArticle
      'Split' => 'Rozd�lit',

    # Template: AgentZoomBody
      'Change queue' => 'Zm�nit frontu',

    # Template: AgentZoomHead
      'Change the ticket free fields!' => '',
      'Free Fields' => 'Voln� pole',
      'Link this ticket to an other one!' => '',
      'Lock it to work on it!' => '',
      'Print' => 'Tisknout',
      'Print this ticket!' => '',
      'Set this ticket to pending!' => '',
      'Shows the ticket history!' => '',

    # Template: AgentZoomStatus
      '"}","18' => '"}","18',
      'Locked' => '',
      'SLA Age' => '',

    # Template: Copyright
      'printed by' => 'tisknuto',

    # Template: CustomerAccept

    # Template: CustomerCreateAccount
      'Create Account' => 'Vytvo�it ��et',
      'Login' => '',

    # Template: CustomerError
      'Traceback' => 'J�t zp�t',

    # Template: CustomerFAQArticleHistory
      'FAQ History' => 'Historie FAQ',

    # Template: CustomerFAQArticlePrint
      'Category' => 'Kategorie',
      'Keywords' => 'Kl��ov� slova',
      'Last update' => 'Posledn� aktualizace',
      'Problem' => 'Probl�m',
      'Solution' => '�e�en�',
      'Symptom' => 'P��znak',

    # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => 'Historie FAQ syst�mu',

    # Template: CustomerFAQArticleView
      'FAQ Article' => 'FAQ �l�nek',
      'Modified' => 'Zm�n�no',

    # Template: CustomerFAQOverview
      'FAQ Overview' => 'P�ehled FAQ',

    # Template: CustomerFAQSearch
      'FAQ Search' => 'Vyhledat FAQ',
      'Fulltext' => 'Fulltext',
      'Keyword' => 'Kl��ov� slovo',

    # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'V�sledky vyhled�v�n� FAQ',

    # Template: CustomerFooter
      'Powered by' => 'Vytvo�eno',

    # Template: CustomerLostPassword
      'Lost your password?' => 'Ztratil/a jste heslo?',
      'Request new password' => 'Po��dat o nov� heslo',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'CompanyTickets' => '',
      'Create new Ticket' => 'Vytvo�it nov� tiket',
      'FAQ' => 'FAQ',
      'MyTickets' => '',
      'New Ticket' => 'Nov� tiket',
      'Welcome %s' => 'V�tejte %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerTicketSearch

    # Template: CustomerTicketSearchResultPrint

    # Template: CustomerTicketSearchResultShort

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Klikn�te zde pro nahl�en� chyby!',

    # Template: FAQArticleDelete
      'FAQ Delete' => 'Maz�n� FAQ',
      'You really want to delete this article?' => 'Chcete opravdu smazat tento �l�nek?',

    # Template: FAQArticleForm
      'A article should have a title!' => '',
      'Comment (internal)' => 'Koment�� (intern�)',
      'Filename' => 'N�zev souboru',
      'Title' => '',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQArticleViewSmall

    # Template: FAQCategoryForm
      'FAQ Category' => 'Kategorie FAQ',
      'Name is required!' => '',

    # Template: FAQLanguageForm
      'FAQ Language' => 'Jazyk FAQ',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: Footer
      'Top of Page' => 'Hlava str�nky',

    # Template: FooterSmall

    # Template: InstallerBody
      'Create Database' => 'Vytvo�it Databazi',
      'Drop Database' => 'Odstranit databazi',
      'Finished' => 'Dokon�eno',
      'System Settings' => 'Nastaven� syst�mu',
      'Web-Installer' => 'Web-instal�tor',

    # Template: InstallerFinish
      'Admin-User' => 'Administr�tor',
      'After doing so your OTRS is up and running.' => 'Po dokon�en� n�sleduj�c�ch operac� je V� OTRS spu�t�n a pob��',
      'Have a lot of fun!' => 'P�ejeme hodn� �sp�ch� s OTRS!',
      'Restart your webserver' => 'Restartujte V� webserver',
      'Start page' => '�vodn� str�nka',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Abyste mohli pou��vat OTRS, mus�te zadat n�sleduj�c� ��dek do Va�eho p��kazov�ho ��dku (Terminal/Shell) jako root.',
      'Your OTRS Team' => 'V� OTRS t�m',

    # Template: InstallerLicense
      'accept license' => 'souhlas�m s licenc�',
      'don\'t accept license' => 'nesouhlas�m s licenc�',
      'License' => 'Licence',

    # Template: InstallerStart
      'Create new database' => 'Vytvo�it novou datab�zi',
      'DB Admin Password' => 'Heslo administr�tora datab�ze',
      'DB Admin User' => 'Administr�tor datab�ze',
      'DB Host' => 'Hostitel (server) datab�ze',
      'DB Type' => 'Typ datab�ze',
      'default \'hot\'' => 'v�choz� \'hot\'',
      'Delete old database' => 'Smazat starou datab�zi',
      'next step' => 'dal�� krok',
      'OTRS DB connect host' => 'Hostitel OTRS datab�ze (server)',
      'OTRS DB Name' => 'N�zev OTRS datab�ze',
      'OTRS DB Password' => 'Heslo OTRS datab�ze',
      'OTRS DB User' => 'U�ivatel OTRS datab�ze',
      'your MySQL DB should have a root password! Default is empty!' => 'Va�e MySQL datab�ze by m�la m�t root heslo! V�choz� je pr�zdn�!',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kontroluj MX z�znamy pou�it�ch emailov�ch adres p�i sestavov�n� odpov�di. Nepou��vejte pokud OTRS server p�ipojen pomoc� vyt��en� linky!)',
      '(Email of the system admin)' => '(Email administr�tora syst�mu)',
      '(Full qualified domain name of your system)' => '(Platn� n�zev dom�ny pro v� syst�m (FQDN))',
      '(Logfile just needed for File-LogModule!)' => '(Pro logov�n� do souboru je nutn� zadat n�zev souboru logu!)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Identita syst�mu. Ka�d� ��slo tiketu a ID ka�d� HTTP relace za��n� t�mto ��slem)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identifik�tor tiket�. Nekte�� lid� cht�j� nastavit nap�. \'Tiket#\',  \'Hovor#\' nebo \'MujTiket#\')',
      '(Used default language)' => '(Pou�it� v�choz� jazyk)',
      '(Used log backend)' => '(Pou�it v�stup do logu)',
      '(Used ticket number format)' => '(Pou�it� form�t ��sel tiket�)',
      'CheckMXRecord' => 'Kontrolovat MX z�znam',
      'Default Charset' => 'V�choz� znakov� sada',
      'Default Language' => 'V�choz� jazyk',
      'Logfile' => 'Log soubor',
      'LogModule' => 'Log Modul',
      'Organization' => 'Organizace',
      'System FQDN' => 'Syst�m FQDN',
      'SystemID' => 'Syst�mov� ID',
      'Ticket Hook' => 'Ozna�en� tiketu',
      'Ticket Number Generator' => 'Gener�tor ��sel tiket�',
      'Use utf-8 it your database supports it!' => 'Pou�ijte utf-8 pokud to Va�e datab�ze podporuje',
      'Webfrontend' => 'Webove rozhran�',

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => '��dn� pr�va',

    # Template: Notify

    # Template: PrintFooter
      'URL' => 'URL',

    # Template: QueueView
      'All tickets' => 'V�echny tikety',
      'Page' => 'Strana',
      'Queues' => '�ady',
      'Tickets available' => 'Tiket� k dispozici',
      'Tickets shown' => 'Zobrazen� tikety',

    # Template: SystemStats

    # Template: Test
      'OTRS Test Page' => 'Testovac� OTRS str�nka',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Eskalace tiket�',

    # Template: TicketView

    # Template: TicketViewLite

    # Template: Warning

    # Template: css
      'Home' => 'Dom�',

    # Template: customer-css
      'Contact' => 'Konktakt',
      'Online-Support' => 'Online Podpora',
      'Products' => 'Produkty',
      'Support' => 'Podpora',

    # Misc
      '"}","15' => '"}","15',
      '"}","30' => '"}","30',
      'A message should have a From: recipient!' => 'Zpr�va by m�la obsahovat pole Od: p��jemce!',
      'Add auto response' => 'P�idat automatickou odpov��',
      'AgentFrontend' => 'Rozhran� agent�',
      'Article free text' => '�pln� text polo�ky',
      'Change Response <-> Attachment settings' => 'Zm�nit odpov�� <-> Nastaven� p��loh',
      'Change answer <-> queue settings' => 'Zm�nit odpov�� <-> nastaven� fronty',
      'Change auto response settings' => 'Zm�nit nastaven� automatick�ch odpov�d�',
      'Change setting' => 'Zm�n nastaven�',
      'Charset' => 'Znakov� sada',
      'Charsets' => 'Znakov� sady',
      'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Mo�nosti konfigurace (nap�. <OTRS_CONFIG_HttpType>)',
      'Create' => 'Vytvo�it',
      'Customer called' => 'Klient volal',
      'Customer info' => 'Informace o klientovi',
      'Customer user will be needed to to login via customer panels.' => 'Klient se mus� p�ihlasit p�es panely klient�.',
      'FAQ State' => 'Stav FAQ',
      'Fulltext search' => 'Fulltextov� vyhled�v�n�',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Fulltextov� vyhled�v�n� (nap�. "Mar*in" or "Baue*" or "martin+ahoj")',
      'Graphs' => 'Grafy',
      'Handle' => 'Ovl�d�n�',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Pokud je V� ��et ov��en, x-OTRS hlavi�ky (pro d�le�itost, ...) budou pou��v�ny!',
      'In Queue' => 'Ve front�',
      'Lock Ticket' => 'Zamknout tiket',
      'Max Rows' => 'Max. po�et ��dk�',
      'My Tickets' => 'Moje tikety',
      'New state' => 'Nov� stav',
      'New ticket via call.' => 'Nov� tiket p�ijat� telefonem.',
      'New user' => 'Nov� u�ivatel',
      'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_USERFIRSTNAME>)' => 'Volby dat aktu�ln�ho klienta (nap�. <OTRS_CUSTOMER_DATA_USERFIRSTNAME>)',
      'Options of the current user who requested this action (e. g. <OTRS_CURRENT_USERFIRSTNAME>)' => 'Volby aktu�ln�ho klienta, kter� po�adoval tuto akci (nap�. <OTRS_CURRENT_USERFIRSTNAME>)',
      'POP3 Account' => 'POP3 ��ty',
      'Pending!' => '�ek� na vy��zen�!',
      'Phone call at %s' => 'Telefon� hovor v %s',
      'Please go away!' => 'Pros�me odejd�te!',
      'PostMasterFilter Management' => 'Spr�va PostMaster filtru',
      'Screen after new phone ticket' => 'Zobrazit po nov�m telefonn�m tiketu',
      'Search in' => 'Hledat v',
      'Select source:' => '',
      'Select your custom queues' => 'Vyberte si Va�e vlastn� fronty',
      'Select your screen after creating a new ticket via PhoneView.' => 'Vyberte si Va�e zobrazen� po vytvo�en� nov�ho tiketu p�es telefonn� n�hled.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Po�li mi ozn�men�, pokud je tiket p�esunut do Vlastn� fronty.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Po�li mi ozn�men�, pokud je nov� tiket v m�ch vlastn�ch front�ch.',
      'SessionID' => 'ID relace',
      'Set customer id of a ticket' => 'Nastaven� ID klienta na tiketu',
      'Short Description' => 'Kr�tk� popis',
      'Show all' => 'Zobrazit v�e',
      'System Charset Management' => 'Spr�va znakov�ch sad v syst�mu',
      'System Language Management' => 'Spr�va jazyk� v syst�mu',
      'Ticket free text' => 'Voln� text tiketu',
      'Ticket owner options (e. g. <OTRS_OWNER_USERFIRSTNAME>)' => 'Volby vlastn�ka tiketu (nap�. <OTRS_OWNER_USERFIRSTNAME>)',
      'Ticket-Overview' => 'P�ehled tiket�',
      'Utilities' => 'Pom�cky',
      'View Queue' => 'Zobraz frontu',
      'With Priority' => 'S d�le�itost�',
      'With State' => 'Se stavem',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further inforamtions.' => 'V� email s ��slem tiketu "<OTRS_TICKET>" byl odesl�n zp�t "<OTRS_BOUNCE_TO>". Kontaktujte tuto adresu pro dal�� informace.',
      'auto responses set' => 'sada automatick�ch odpov�d�',
      'by' => 'p�es',
      'invalid-temporarily' => 'do�asn� neplatn�',
      'search' => 'hledat',
      'search (e. g. 10*5155 or 105658*)' => 'hledat (nap�: 10*5155 nebo 105658*)',
      'store' => 'ulo�it',
      'tickets' => 'tikety',
      'valid' => 'platn�',
    );

    # $$STOP$$
    $Self->{Translation} = \%Hash;
}
# --
1;

