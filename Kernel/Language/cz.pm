# --
# Kernel/Language/cz.pm - provides cz language translation
# Copyright (C) 2003 Lukas Vicanek alias networ <lulka at centrum dot cz>
# --
# $Id: cz.pm,v 1.3 2004-01-20 00:02:28 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::cz;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.3 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Wed May 14 01:01:35 2003 by 

    # possible charsets
    $Self->{Charset} = ['windows-1250', ];
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
      '10 minutes' => '10 minut',
      '15 minutes' => '15 minut',
      'AddLink' => 'P�idat odkaz',
      'Admin-Area' => 'Administra�n� z�na',
      'agent' => 'operator',
      'all' => 'v�e',
      'All' => 'V�e',
      'Attention' => 'Upozorn�n�',
      'Bug Report' => 'Upozorn�n� na chybu',
      'Cancel' => 'Zru�it',
      'change' => 'zm�nit',
      'Change' => 'Zm�nit',
      'change!' => 'Zm�nit!',
      'click here' => 'klikn�te zde',
      'Comment' => 'Koment��',
      'Customer' => 'Klient',
      'customer' => 'Klient',
      'Customer Info' => 'Informace o klientovi',
      'day' => 'den',
      'days' => 'dn�',
      'description' => 'popis',
      'Description' => 'Popis',
      'Dispatching by email To: field.' => 'Odbaven� podle pole KOMU:.',
      'Dispatching by selected Queue.' => 'Odbaven� podle vybran� fronty.',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Nepracujte s u�tem ��slo 1 (syst�mov� ��et)! Vytvo�te pros�m nov�',
      'Done' => 'Hotovo',
      'end' => 'konec',
      'Error' => 'Chyba',
      'Example' => 'P��klad',
      'Examples' => 'P��klady',
      'Facility' => 'Funkce',
      'Feature not active!' => 'Funkce je neaktivn�!',
      'go' => 'j�t',
      'go!' => 'jdi!',
      'Group' => 'Skupina',
      'Hit' => 'P��stup',
      'Hits' => 'Pr�stup�',
      'hour' => 'hodina',
      'hours' => 'hodin',
      'Ignore' => 'Ignorovat',
      'invalid' => 'chybn�',
      'Invalid SessionID!' => 'Chybn� ID!',
      'Language' => 'Jazyk',
      'Languages' => 'Jazyky',
      'Line' => 'Linka',
      'Lite' => 'Omezen�',
      'Login failed! Your username or password was entered incorrectly.' => 'Chyba v p��hl�en�! �patn� u�ivatelsk� u�et nebo heslo.',
      'Logout successful. Thank you for using OTRS!' => 'Odlogov�n� prob�hlov po��dku. D�kujeme za u��v�n� OTRS!',
      'Message' => 'Zpr�va',
      'minute' => 'minuta',
      'minutes' => 'minut',
      'Module' => 'Modul',
      'Modulefile' => 'Modulov� soubor',
      'Name' => 'Jm�no',
      'New message' => 'Nov� zpr�va',
      'New message!' => 'Nov� zpr�va!',
      'No' => 'Ne',
      'no' => 'ne',
      'No entry found!' => 'Nic nebylo nalezeno!',
      'No suggestions' => '��dn� nab�dka nenalezena',
      'none' => '��dn�',
      'none - answered' => '��dn� - odpov�zeno',
      'none!' => '��dn�!',
      'Off' => 'Vypnuto',
      'off' => 'vypnuto',
      'On' => 'Zapnuto',
      'on' => 'zapnuto',
      'Password' => 'Heslo',
      'Pending till' => 'Nevy��zen� do',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Pros�me odpovezte na tento tiket(y) pro n�vrat do p�ehledu zpr�v!',
      'Please contact your admin' => 'Kontaktujte pros�m Va�eho administr�tora',
      'please do not edit!' => 'pros�me neupravovat!',
      'possible' => 'mo�n�',
      'QueueView' => 'P�ehled zpr�v',
      'reject' => 'zru�en',
      'replace with' => 'nahradit',
      'Reset' => 'Reset',
      'Salutation' => 'Text',
      'Session has timed out. Please log in again.' => 'Session vypr�elo. P�ihlaste se znova.',
      'Signature' => 'Podpis',
      'Sorry' => 'Omluva',
      'Stats' => 'Statistiky',
      'Subfunction' => 'Podfunkce',
      'submit' => 'Odeslat',
      'submit!' => 'odelsat!',
      'system' => 'system',
      'Take this User' => 'Vz�t tohoto u�ivatele',
      'Text' => 'Text',
      'The recommended charset for your language is %s!' => 'Doporu�en� znakov� sada pro V� jazyk je  %s!',
      'Theme' => 'Tema',
      'There is no account with that login name.' => 'Neexistuje ��et s t�mto jm�nem.',
      'Timeover' => '�as vypr�el',
      'top' => 'nahoru',
      'update' => 'obnovit',
      'update!' => 'obnovit!',
      'User' => 'U�ivatel�',
      'Username' => 'Jm�no u�ivatele',
      'Valid' => 'Platnost',
      'Warning' => 'Upozorn�n�',
      'Welcome to OTRS' => 'V�tejte v OTRS',
      'Word' => 'slovo',
      'wrote' => 'napsal',
      'yes' => 'ano ',
      'Yes' => 'Ano ',
      'You got new message!' => 'M�te novou zpr�vu!',
      'You have %s new message(s)!' => 'M�te %s novou zpr�vu (zpr�vy)!',
      'You have %s reminder ticket(s)!' => 'M�te %s zpravu (zpr�vy) k upozorn�n�',

    # Template: AAAMonth
      'Apr' => 'Dub',
      'Aug' => 'Srp',
      'Dec' => 'Pro',
      'Feb' => 'Uno',
      'Jan' => 'Led',
      'Jul' => '�er',
      'Jun' => '�rv',
      'Mar' => 'B�e',
      'May' => 'Kv�',
      'Nov' => 'Lis',
      'Oct' => '��j',
      'Sep' => 'Z��',

    # Template: AAAPreferences
      'Closed Tickets' => 'Uzav�en� Tikety',
      'Custom Queue' => 'Vlastn� p�ehled',
      'Follow up notification' => 'N�sleduj�c� zpr�va',
      'Frontend' => 'Rozhran�',
      'Mail Management' => 'Spr�va email�',
      'Move notification' => 'P�esunout zpr�vu',
      'New ticket notification' => 'Nov� Tiket',
      'Other Options' => 'Dal�� nastaven�',
      'Preferences updated successfully!' => 'Nastaven� prob�hlo usp�n�!',
      'QueueView refresh time' => '�as obnoven� p�ehledu zpr�v',
      'Select your default spelling dictionary.' => 'Vyberte si slovn�k',
      'Select your frontend Charset.' => 'Vyberte si znakovou sadu.',
      'Select your frontend language.' => 'Vyberte si jazyk.',
      'Select your frontend QueueView.' => 'Vyberte si typ p�ehledu zpr�v.',
      'Select your frontend Theme.' => 'Vyberte si vzhled.',
      'Select your QueueView refresh time.' => 'Vyberte si �as obnovy p�ehledu zpr�v.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Poslat zpr�vu, pokud klient po�le n�sleduj�c� zpr�vu a j� jsem spr�vce jeho Ticketu.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Poslat zpr�vu, pokud je Ticket p�esunut do Vlastn�ho p�ehledu.',
      'Send me a notification if a ticket is unlocked by the system.' => 'Poslat zpr�vu, pokud je Ticket odemknut syst�mem.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Poslat zpr�vu, pokud je nov� Tiket v m�m Vlastn�m p�ehledu.',
      'Show closed tickets.' => 'Zobrazit uzav�en� Tikety.',
      'Spelling Dictionary' => 'Slovn�k',
      'Ticket lock timeout notification' => 'Upozorn�n� na vypr�en� �asu u zamknut�ho Tiketu',

    # Template: AAATicket
      '1 very low' => '1 velice n�zk�',
      '2 low' => '2 n�zk�',
      '3 normal' => '3 norm�ln�',
      '4 high' => '4 vysok�',
      '5 very high' => '5 velice vysok�',
      'Action' => 'Akce',
      'Age' => 'Doba',
      'Article' => 'Artikl',
      'Attachment' => 'P��loha',
      'Attachments' => 'P��lohy',
      'Bcc' => 'Bcc',
      'Bounce' => 'P�esun',
      'Cc' => 'Cc',
      'Close' => 'Zav��t',
      'closed successful' => 'zav�eno - vyre�eno',
      'closed unsuccessful' => 'zav�eno - nevy�e�eno',
      'Compose' => 'Napsat',
      'Created' => 'Vytvo�eno',
      'Createtime' => '�as',
      'email' => 'eMail',
      'eMail' => '',
      'email-external' => 'email extern�',
      'email-internal' => 'email intern�',
      'Forward' => 'P�eposlat',
      'From' => 'Od',
      'high' => 'vysok�',
      'History' => 'Historie',
      'If it is not displayed correctly,' => 'Pokud nen� zobrazen� v po��dku,',
      'lock' => 'zamknuto',
      'Lock' => 'Zamknuto',
      'low' => 'n�zk�',
      'Move' => 'P�esunout',
      'new' => 'nov�',
      'normal' => 'normaln�',
      'note-external' => 'Pozn�mka extern�',
      'note-internal' => 'Pozn�mka Intern�',
      'note-report' => 'Pozn�mka',
      'open' => 'otev�eno',
      'Owner' => 'Vlastn�k',
      'Pending' => 'Ve vy�izov�n�',
      'pending auto close+' => 'vy�izovan� - auto close+',
      'pending auto close-' => 'vy�izov�n� - auto close-',
      'pending reminder' => 'upom�nka ve vy�izov�n�',
      'phone' => 'Telefon',
      'plain' => '',
      'Priority' => 'Priorita ',
      'Queue' => '�ada',
      'removed' => 'smaz�n',
      'Sender' => 'Odes�latel',
      'sms' => '',
      'State' => 'Status',
      'Subject' => 'P�edm�t',
      'This is a' => 'To je',
      'This is a HTML email. Click here to show it.' => 'Toto je HTML email. Klikn�te zde pro zobrazen�.',
      'This message was written in a character set other than your own.' => 'Tato zpr�va byla naps�na v jin� znakov� sad�.',
      'Ticket' => '',
      'To' => 'Komu',
      'to open it in a new window.' => 'pro otev�en� v nov�m okn�.',
      'unlock' => 'odemknout',
      'Unlock' => 'Odemknout',
      'very high' => 'velmi vysok�',
      'very low' => 'velmi n�zk�',
      'View' => 'N�hled',
      'webrequest' => 'po�adavek p�es web',
      'Zoom' => 'Detaily',

    # Template: AAAWeekDay
      'Fri' => 'P�',
      'Mon' => 'Po',
      'Sat' => 'So',
      'Sun' => 'Ne',
      'Thu' => '�t',
      'Tue' => '�t',
      'Wed' => 'St',

    # Template: AdminAttachmentForm
      'Add attachment' => 'Vlo�it p��lohu',
      'Attachment Management' => 'Spr�va p��loh',
      'Change attachment settings' => 'Zm�nit nastaven� p��loh',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'P�idat automatickou odpov��',
      'Auto Response From' => 'Automatick� odpov�� OD',
      'Auto Response Management' => 'Spr�va automatick�ch odpov�d�',
      'Change auto response settings' => 'Zm�nit nastaven� automatick�ch odpoved�',
      'Charset' => 'Znakov� sada',
      'Note' => 'Pozn�mka',
      'Response' => 'Odpov��',
      'to get the first 20 character of the subject' => 'pro z�sk�ni prvn�ch 20 znaku v p�edm�tu',
      'to get the first 5 lines of the email' => 'pro z�sk�n� prvn�ch 5 r�dk� z emailu',
      'to get the from line of the email' => 'pro z�skan� OD z emailu',
      'to get the realname of the sender (if given)' => 'pro z�skan� prav�ho jm�na odes�latele (pokud je ur�en)',
      'to get the ticket id of the ticket' => 'pro z�sk�n� ID Tiketu',
      'to get the ticket number of the ticket' => 'pro z�sk�n� ��sla Ticketu',
      'Type' => 'Typ',
      'Useable options' => 'Nastaven�',

    # Template: AdminCharsetForm
      'Add charset' => 'P�idat znakovou sadu',
      'Change system charset setting' => 'Zm�nit syst�movou znakovou sadu',
      'System Charset Management' => 'Spr�va znakov�ch sad',

    # Template: AdminCustomerUserForm
      'Add customer user' => 'P�idat klineta',
      'Change customer user settings' => 'Upravit nastaven� klienta',
      'Customer User Management' => 'Spr�va klient�',
      'Customer user will be needed to to login via customer panels.' => 'Klient se mus� p�ihlas�t pomoc� klientsk�ho nastaven�.',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Email Admin�',
      'Body' => 'Text',
      'OTRS-Admin Info!' => 'OTRS-Admin info',
      'Permission' => 'Pr�va',
      'P��jemci' => 'Destinatari',
      'odesl�no' => 'Invia',

    # Template: AdminEmailSent
      'Message sent to' => 'Zpr�va odesl�na ',

    # Template: AdminGroupForm
      'Add group' => 'P�idat skupinu',
      'Change group settings' => 'Zm�nit nastaven� skupin',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Vytvo�it nov� skupiny k lep��mu p�ehledu a nastaven� pr�v pro rozd�ln� skupiny oper�tor� (jako odd�len� fakturace, prodeje, podpory,...).',
      'Group Management' => 'Spr�va skupin',
      'It\'s useful for ASP solutions.' => 'Pou��van� pro ASP �e�en�',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Skupina administr�tor� m� p��stup do statistik a administra�n� z�ny.',

    # Template: AdminLog
      'System Log' => 'System Log',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Admin Email',
      'AgentFrontend' => 'Z�na oper�tor�',
      'Attachment <-> Response' => 'P��loha <-> Odpov��',
      'Auto Response <-> Queue' => 'Automatick� odpov�� <-> �ada',
      'Auto Responses' => 'Automatick� odpov�di',
      'Charsets' => 'Znakov� sady',
      'Customer User' => 'Klienti',
      'Email Addresses' => 'Emailov� adresy',
      'Groups' => 'Skupiny',
      'Logout' => 'Odhl�sit',
      'Misc' => 'R�zn�',
      'POP3 Account' => 'POP3 ��et',
      'Responses' => 'Odpov�di',
      'Responses <-> Queue' => 'Odpov�di <-> �ada',
      'Select Box' => 'V�b�r funkc�',
      'Session Management' => 'Spr�va session',
      'Status' => 'Status',
      'System' => 'System',
      'User <-> Groups' => 'U�ivatel� <-> Skupiny',

    # Template: AdminPOP3Form
      'Add POP3 Account' => 'P�idat POP3 ��et',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'V�echny p��choz� emaily s jedn�m ��tem budou p�esm�rov�ny do vybran� �ady!',
      'Change POP3 Account setting' => 'Zm�nit nastaven� POP3 ��t�',
      'Dispatching' => 'Rozt��dit',
      'Host' => '',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Pokud je V� u�et ov��en, X-OTRS hlavi�ky (pro prioritu, ...) budou pou��v�ny!',
      'Login' => '',
      'POP3 Account Management' => 'Spr�va POP3 ��t�',
      'Trusted' => 'Ov��it',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => '�ada <-> automatick� opov�di',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = ��dn� eskalace (stup�ov�n�)',
      '0 = no unlock' => '0 = ��dn� odemknut�',
      'Add queue' => 'P�idat �adu',
      'Change queue settings' => 'Zm�nit nastaven� �ady',
      'Customer Move Notify' => 'Zpr�va pro klineta v p��pad� p�esunu',
      'Customer Owner Notify' => 'Zpr�va pro klienta v p��pad� zm�ny oper�tora',
      'Customer State Notify' => 'Zpr�va pro klienta v pr�pad� zm�ny statusu',
      'Escalation time' => '�as eskalace (stup�ov�n�)',
      'Follow up Option' => 'N�sleduj�c� - nastaven�',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Pokud Ticket je uzav�en a klient po�le n�sleduj�c� Ticket, bude p�esunut ke star�mu oper�torovi.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Pokud Tiket nebude odpovezen v �ase, pouze tento Tiket bude uk�z�n.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Pokud oper�tor uzamkne tiket a nebude na n�j odpovezeno b�hem tohoto �asu, Tiket bude odemknut automatocky. Tiket bude viditeln� pro v�echny oper�tory.',
      'Key' => 'Kl��',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS po�le zpr�vu klinetovi, pokud Tiket bude p�esunut.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS po�le zpr�vu klinetovi, pokud bude zm�n�n oper�tor..',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS po�le zpr�vu klientovi, pokud bude zm�n�n status.',
      'Queue Management' => 'Spr�va �ad',
      'Sub-Queue of' => 'Pod�ada ',
      'Systemaddress' => 'Adresa syst�mu',
      'The salutation for email answers.' => 'Osloven� pro emailov� odpov�di.',
      'The signature for email answers.' => 'Podpis pro emailov� odpov�di.',
      'Ticket lock after a follow up' => 'Zamknout Tiket po n�sleduj�c� odpov�di',
      'Unlock timeout' => '�as pro odemknut�',
      'Will be the sender address of this queue for email answers.' => 'Odes�latelova adresa bude pro odpov�di via email.',

    # Template: AdminQueueResponsesChangeForm
      'Change %s settings' => 'Zm�nit nastaven� %s',
      'Std. Responses <-> Queue Management' => 'Std. odpov�di <-> �ada',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Odpov��',
      'Change answer <-> queue settings' => 'Upravit odpov�� <-> nastaven� �ady',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Std. odpov�di <-> Std. nastaven� p�iloh',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'Zm�nit odpov�di <-> Nastaven� p��loh',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Odpov��� je defaultn� text, kter� p�e rychlej�� odpov�� (s p�eddefinovan�m obsahem) klent�m.',
      'Add response' => 'P�idat odpov��',
      'Change response settings' => 'Zm�na nastaven� odpov�d�',
      'Don\'t forget to add a new response a queue!' => 'Nezapome�te p�idat novou odpove� do �ady!',
      'Response Management' => 'Spr�va odpov�d�',

    # Template: AdminSalutationForm
      'Add salutation' => 'P�idat osloven�',
      'Change salutation settings' => 'Zm�nit nastavven� osloven�',
      'customer realname' => 'prav� jm�no klienta',
      'for agent firstname' => 'pro oper�torovo k�estn� jm�no',
      'for agent lastname' => 'pro oper�to�ovo p��jmen�',
      'for agent login' => 'pro oper�tor�v login',
      'for agent user id' => 'pro oper�tor�m ID',
      'Salutation Management' => 'Spr�va osloven�',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Max. po�et ��dk�',

    # Template: AdminSelectBoxResult
      'Limit' => 'Limit',
      'Select Box Result' => 'Vyberte si v�sledek',
      'SQL' => '',

    # Template: AdminSession
      'kill all sessions' => 'Zru�it v�echny session',

    # Template: AdminSessionTable
      'kill session' => 'Zru�it session',
      'SessionID' => 'ID session',

    # Template: AdminSignatureForm
      'Add signature' => 'P�idat podpis',
      'Change signature settings' => 'Zm�nit nastaven� podpis�',
      'Signature Management' => 'Spr�va podpis�',

    # Template: AdminStateForm
      'Add state' => 'P�idat status',
      'Change system state setting' => 'Zm�nit nastaven� statusu',
      'State Type' => 'Typ statusu',
      'System State Management' => 'Spr�va status�',

    # Template: AdminSystemAddressForm
      'Add system address' => 'P�idat adresu',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'V�echny p��choz� emaily s polem KOME budou zarazeby to vybrane �ady!',
      'Change system address setting' => 'Upravit nastaven� adres',
      'Email' => 'eMail',
      'Realname' => 'Prav� jm�no',
      'System Email Addresses Management' => 'Spr�va adres',

    # Template: AdminUserForm
      'Add user' => 'P�idat oper�tora',
      'Change user settings' => 'Upravit nastaven� oper�tora',
      'Don\'t forget to add a new user to groups!' => 'Nezapome�te p�idat oper�tora do skupin!',
      'Firstname' => 'Jm�no',
      'Lastname' => 'P��jmen�',
      'User Management' => 'Spr�va oper�tor�',
      'User will be needed to handle tickets.' => 'Oper�tor se bude zab�vat Tikety.',

    # Template: AdminUserGroupChangeForm
      'Change  settings' => 'Zm�nit nastaven�',
      'User <-> Group Management' => 'U�ivatele <-> spr�va skupin',

    # Template: AdminUserGroupForm
      'Change user <-> group settings' => 'Zmenit u�ivatele <-> nastaven� skupin',

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Zpr�va by m�la obsahovat Komu: p��jemce!',
      'Bounce ticket' => 'P�edan� tiket',
      'Bounce to' => 'P�ed�n',
      'Inform sender' => 'Informace o odes�lateli',
      'Next ticket state' => 'Dal�� status Tiketu',
      'Send mail!' => 'Poslat email!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Je pot�eba vlo�it emailovou adresu (nap�. klient@email.cz) v poli Komu:!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'V� email s ��slem ticketu "<OTRS_TICKET>" byl p�ed�n "<OTRS_BOUNCE_TO>". Konktantujte se na t�to adrese pro dal�� infromace.',

    # Template: AgentClose
      ' (work units)' => ' (jednotky pr�ce)',
      'A message should have a subject!' => 'Zpr�va by me�la m�t p�edm�t!',
      'Close ticket' => 'Zav�ene tikety',
      'Close type' => 'Typ uzav�en�',
      'Close!' => 'Zav�en�!',
      'Note Text' => 'Text pozn�mky',
      'Note type' => 'Typ pozn�mky',
      'Options' => 'Nastaven�',
      'Spell Check' => 'Kontrola pravopisu',
      'Time units' => 'jednotky �asu',
      'You need to account time!' => 'Pot�ebujete ��et �asu!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'Zpr�va mus� b�t skontrolovan� pravopisem!',
      'Attach' => 'P�ipojit',
      'Compose answer for ticket' => 'Vytvo�it odpov�� pro tento tiket',
      'for pending* states' => 'pro status nevy��zeno*',
      'Is the ticket answered' => 'Je na tiket odpov�zeno?',
      'Pending Date' => '�as v nevy��zen�',

    # Template: AgentCustomer
      'Back' => 'Zp�t',
      'Change customer of ticket' => 'Zm�nit klienta tiketu',
      'CustomerID' => 'ID klienta',
      'Search Customer' => 'Vyhledat klienta',
      'Set customer user and customer id of a ticket' => 'Nastavit klienta k tomuto tiketu',

    # Template: AgentCustomerHistory
      'Customer history' => 'Historie klienta',

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerMessage
      'Follow up' => 'N�sleduj�c�',
      'Next state' => 'Dals� status',

    # Template: AgentCustomerView
      'Customer Data' => 'Data klienta',

    # Template: AgentForward
      'Article type' => 'Typ artiklu',
      'Date' => 'Datum',
      'End forwarded message' => 'Konec p�esm�rovan� zpr�vy',
      'Forward article of ticket' => 'P�esm�rovan� artikl tiketu',
      'Forwarded message from' => 'P�esm�rovat zpr�vu od',
      'Reply-To' => 'Odpov�d�t',

    # Template: AgentFreeText
      'Change free text of ticket' => 'Zm�nit text tiketu',
      'Value' => 'Hodnota',

    # Template: AgentHistoryForm
      'History of' => 'Historie',

    # Template: AgentMailboxNavBar
      'All messages' => 'V�echny zpr�vy',
      'down' => 'dol�',
      'Mailbox' => '',
      'New' => 'Nov�',
      'New messages' => 'Nov� zpr�vy',
      'Open' => 'Otev�en�',
      'Open messages' => 'Otev�en� zpr�vy',
      'Order' => 'Se�adit',
      'Pending messages' => 'Zpr�vy ve vy�izov�n�',
      'Reminder' => 'Upom�nky',
      'Reminder messages' => 'Zpr�vy k upom�nce',
      'Sort by' => 'Se�adit dle',
      'Tickets' => 'Tikety',
      'up' => 'nahoru',

    # Template: AgentMailboxTicket

    # Template: AgentMove
      'Move Ticket' => 'P�esunout Tiket',
      'New Queue' => 'NOv� �ada',
      'New user' => 'Nov� oper�tor',

    # Template: AgentNavigationBar
      'Locked tickets' => 'Uzam�en� tikety',
      'new message' => 'nov� zpr�vy',
      'PhoneView' => 'Vlo�it Tiket',
      'Preferences' => 'Vlastnosti',
      'Utilities' => 'Vyhled�v�n� ',

    # Template: AgentNote
      'Add note to ticket' => 'P�idat pozn�mku k tiketu',
      'Note!' => 'Pozn�mka!',

    # Template: AgentOwner
      'Change owner of ticket' => 'Zm�nit majitele tiketu',
      'Message for new Owner' => 'Zpr�va pro mov�ho majitele',

    # Template: AgentPending
      'Pending date' => '�as k vy��zen�',
      'Pending type' => 'Typ vy�izov�n�',
      'Pending!' => 'Vy�izuje se!',
      'Set Pending' => 'Nastaven� vy�izov�n�',

    # Template: AgentPhone
      'Customer called' => 'Klient volal',
      'Phone call' => 'Telefon� hovor',
      'Phone call at %s' => 'Telefon� hovor v %s',

    # Template: AgentPhoneNew
      'Clear From' => 'Zru�it pole od',
      'create' => 'vytvo�it',
      'new ticket' => 'Nov� tiket',

    # Template: AgentPlain
      'ArticleID' => 'K�d artiklu',
      'Plain' => '',
      'TicketID' => 'K�d tiketu',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'Vyberte si vlastn� �adu',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Zm�nit heslo',
      'New password' => 'Nov� heslo',
      'New password again' => 'Nov� heslo (potvrzen�)',

    # Template: AgentPriority
      'Change priority of ticket' => 'Zm�nit prioritu tiketu',

    # Template: AgentSpelling
      'Apply these changes' => 'Pou��t tyto zm�na',
      'Discard all changes and return to the compose screen' => 'Zru�it v�echny zm�ny a vr�tit se k vytv��en�',
      'Return to the compose screen' => 'Vr�tit se k vytv��en�',
      'Spell Checker' => 'Slovn�k',
      'spelling error(s)' => 'chyba(y) ve slovech',
      'The message being composed has been closed.  Exiting.' => 'Zpr�vy mus� b�t vytvo�eny, je�t� p�ed t�m, ne� je zav�ete.',
      'This window must be called from compose window' => 'Toto okno mus� b�t vol�no pouze z vytv��ec�ho',

    # Template: AgentStatusView
      'D' => 'D',
      'of' => 'z',
      'Site' => 'Str�nka',
      'sort downward' => 'se�adit dolu',
      'sort upward' => 'se�adit nahoru',
      'Ticket Status' => 'Status tiketu',
      'U' => 'U',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Tiket je zamknut!',
      'Ticket unlock!' => 'Tiket je odemknut!',

    # Template: AgentTicketPrint
      'by' => ' ',

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'U�tov� �as',
      'Escalation in' => '',
      'printed by' => 'tisknuto',

    # Template: AgentUtilSearch
      'Article free text' => 'Text artiklu',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Hled�n� fulltext (nap�. "Mar*in" nebo "Nov*" �i "martin+chyba")',
      'search' => 'Hledat',
      'search (e. g. 10*5155 or 105658*)' => 'hledat (nap�: 10*5155 nebo 105658*)',
      'Ticket free text' => 'Text tiketu',
      'Ticket Search' => 'Hled�n� tiketu',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Vyhled�v�n� historie klienta',
      'Customer history search (e. g. "ID342425").' => 'Vyhled�v�n� historie klienta (nap�: "ID342425")',
      'No * possible!' => '* nen� povolena!',

    # Template: AgentUtilSearchNavBar
      'Results' => 'V�sledky',
      'Total hits' => 'Celkem hit�',

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'V�echny uzav�en� tikety',
      'All open tickets' => 'V�echny otev�en� tikety',
      'closed tickets' => 'zav�en�ch tiket�',
      'open tickets' => 'otev�en�ch tiket�',
      'or' => 'nebo',
      'Provides an overview of all' => 'Vygenerovat n�hled v�ech',
      'So you see what is going on in your system.' => 'M��ete vid�t kdo je ve Va�em syst�mu.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'Vytvo�it n�sleduj�c�',
      'Your own Ticket' => 'Va�e vlastn� tikety',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'Vytvo�it odpov��',
      'Contact customer' => 'Kontaktovat klienta',
      'phone call' => 'telefon� hovor',

    # Template: AgentZoomArticle
      'Split' => 'O�ezat',

    # Template: AgentZoomBody
      'Change queue' => 'Zm�nit �adu',

    # Template: AgentZoomHead
      'Free Fields' => 'Voln� pole',
      'Print' => 'TIsknout',

    # Template: AgentZoomStatus

    # Template: CustomerCreateAccount
      'Create Account' => 'Vytvo�it ��et',

    # Template: CustomerError
      'Traceback' => '',

    # Template: CustomerFooter
      'Powered by' => 'Vytvo�eno',

    # Template: CustomerHeader
      'Contact' => 'Konktatk',
      'Home' => '',
      'Online-Support' => 'Online Podpora',
      'Products' => 'Produkty',
      'Support' => 'Podpora',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Zapom�l/a jste heslo?',
      'Request new password' => 'Po��dat o nov� heslo',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => 'Vytvo�it nov� tiket',
      'My Tickets' => 'Moje tikety',
      'New Ticket' => 'Nov� tiket',
      'Ticket-Overview' => 'P�ehled tiket�',
      'Welcome %s' => 'V�tejte %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Kliknut�m zde po�lete chybu!',

    # Template: Footer
      'Top of Page' => 'Nahoru',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => 'Vytvo�it Databazi ',
      'Drop Database' => 'Smazat databazi',
      'Finished' => 'Ukon�it',
      'System Settings' => 'Nastaven� syst�mu',
      'Web-Installer' => 'Web-Installer',

    # Template: InstallerFinish
      'Admin-User' => 'Administrace u�ivatel�',
      'After doing so your OTRS is up and running.' => 'Po tomto V� OTRS je nainstalov�n a funguje',
      'Have a lot of fun!' => 'Hodn� �t�st� s OTRS!',
      'Restart your webserver' => 'Restartovat server',
      'Start page' => '�vodn� str�nka',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Per poter usare OTRS devi inserire questa riga di comando in una shell come utente root.',
      'Your OTRS Team' => 'V� OTR t�m',

    # Template: InstallerLicense
      'accept license' => 'souhlas�m',
      'don\'t accept license' => 'nesouhlas�m',
      'License' => 'Licence',

    # Template: InstallerStart
      'Create new database' => 'Vytvo�it novou datab�zi',
      'DB Admin Password' => 'Heslo administr�tora k datab�zi',
      'DB Admin User' => 'Administra�n� username',
      'DB Host' => '',
      'DB Type' => 'Typ datab�ze',
      'default \'hot\'' => '',
      'Delete old database' => 'Smazat starou datab',
      'next step' => 'dal�� krok',
      'OTRS DB connect host' => '',
      'OTRS DB Name' => '',
      'OTRS DB Password' => '',
      'OTRS DB User' => '',
      'your MySQL DB should have a root password! Default is empty!' => 'Va�e datab�ze by m�la m�t heslo!',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kontrola MX z�znam� pou�it�ho emalu p�i vytv��en� odpov�d� Nepou��vejte pokus jste p�ipojeni na OTR pomoc� dial upu!)',
      '(Email of the system admin)' => '(Email administr�tora)',
      '(Full qualified domain name of your system)' => '(Pln� kvalifikovan� dom�na syst�mu)',
      '(Logfile just needed for File-LogModule!)' => '(LogFIle pot�ebujete pro modul Souborov�ho logov�n�)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Syst�mov� ID. Ka�d� ��slo tiketu a ka�d� HTTP session bude startovat t�mto ��slem)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identik�tor tiket�. Nekte�� lid� chtej� pou��vat nap�. \'Tiket#\',  \'Hovor\' nebo \'MujTiket\')',
      '(Used default language)' => '(Pou�it� defaultn� jazyk)',
      '(Used log backend)' => '(U�it� typ log�)',
      '(Used ticket number format)' => '(��seln� typ tiket�)',
      'CheckMXRecord' => 'Zkontrolovat MX z�znam',
      'Default Charset' => 'Defaultn� znakov� sada',
      'Default Language' => 'Defaultn� jazyk',
      'Logfile' => 'LogFile',
      'LogModule' => 'Modul Log',
      'Organization' => 'Organizace',
      'System FQDN' => 'System FQDN',
      'SystemID' => 'System ID',
      'Ticket Hook' => 'Prefix riket�',
      'Ticket Number Generator' => 'Generator ��sel tiket�',
      'Webfrontend' => 'Webove rozhran�',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Nem�te pr�va',

    # Template: Notify
      'Info' => 'Informace',

    # Template: PrintFooter
      'URL' => '',

    # Template: PrintHeader

    # Template: QueueView
      'All tickets' => 'Celkem tiket�',
      'Queues' => '�ady',
      'Tickets available' => 'Tiket� k dispozici',
      'Tickets shown' => 'Zobrazen� tikety',

    # Template: SystemStats
      'Graphs' => 'Grafy',

    # Template: Test
      'OTRS Test Page' => 'Test OTRS str�nky',

    # Template: TicketEscalation
      'Ticket escalation!' => '',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => 'P�idat pozn�mku',

    # Template: Warning

    # Misc
      '(Click here to add a group)' => '(Klikn�te zde pro p�id�n� skupiny)',
      '(Click here to add a queue)' => '(Klikn�te zde pro p�id�n� �ady)',
      '(Click here to add a response)' => '(Klikn�te zde pro p�id�n� odpov�di)',
      '(Click here to add a salutation)' => '(Klikn�te zde pro p�id�n� osloven�)',
      '(Click here to add a signature)' => '(Klikn�te zde pro p�id�n� podpisu)',
      '(Click here to add a system email address)' => '(Klikn�te zde pro p�id�n� syst�mov� emailov� adresy)',
      '(Click here to add a user)' => '(Klikn�te zde pro p�id�n� oper�tora)',
      '(Click here to add an auto response)' => '(Klikn�te zde pro p�id�n� automatick� odpov�di)',
      '(Click here to add charset)' => '(Klikn�te zde pro p�id�n� znakov� sady)',
      '(Click here to add language)' => '(Klikn�te zde pro p�id�n� jazyka)',
      '(Click here to add state)' => '(Klikn�te zde pro p�id�n� nov�ho statusu)',
      '(E-Mail of the system admin)' => '(Email syst�mov�ho admina)',
      'A message should have a From: recipient!' => 'Va�e zpr�va by m�la m�t OD: odes�latel!',
      'Create' => 'Vytvo�it',
      'Customer info' => 'Informace o klientovi',
      'CustomerUser' => 'Klient',
      'FAQ' => 'FAQ',
      'Fulltext search' => 'Fulltextov� vyhled�v�n�',
      'Handle' => 'Ovl�d�n�',
      'In Queue' => 'V �ad�',
      'New state' => 'Nov� status',
      'New ticket via call.' => 'Nov� tiket via telefon.',
      'Search in' => 'Hledat v',
      'Set customer id of a ticket' => 'Nastaven� klient ID v tiketu',
      'Show all' => 'ZObrazit v�e',
      'System Language Management' => 'Spr�va jazyk�',
      'Update auto response' => 'Aktualizovat automatick� odpov�di',
      'Update charset' => 'Aktualizovat znakovou sadu',
      'Update group' => 'Aktualizovat skupinu',
      'Update language' => 'Aktualizovat jazyk',
      'Update queue' => 'Aktualizovat �adu',
      'Update response' => 'Aktualizovat odpov��',
      'Update salutation' => 'Aktualizovat osloven�',
      'Update signature' => 'Aktualizovat podpis',
      'Update state' => 'Aktualizovat status',
      'Update system address' => 'Aktualizovat adresu',
      'Update user' => 'Aktualizovat oper�tora',
      'With Priority' => 'S prioritou',
      'With State' => 'Se statusem',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further inforamtions.' => 'V� email s ��slem tiketu "<OTRS_TICKET>"   byl p�ed�n "<OTRS_BOUNCE_TO>". Kontaktujte tuto adresu pro dal�� informace.',
      'auto responses set' => 'nastavit automatick� odpov�di',
      'invalid-temporarily' => 'do�asn� neplatn�',
      'store' => 'sklad',
      'tickets' => 'tiket',
      'valid' => 'validn�',
    );

    # $$STOP$$
    $Self->{Translation} = \%Hash;
}
# --
1;
