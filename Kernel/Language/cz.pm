# --
# Kernel/Language/cz.pm - provides cz language translation
# Copyright (C) 2003 Tomas Krmela <tomas.krmela at pvt.cz>
# --
# $Id: cz.pm,v 1.1.2.1 2003-09-29 20:53:50 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::cz;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.1.2.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Sun Apr 13 00:56:54 2003 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 Minut',
      ' 5 minutes' => ' 5 Minut',
      ' 7 minutes' => ' 7 Minut',
      '10 minutes' => '10 Minut',
      '15 minutes' => '15 Minut',
      'AddLink' => 'P�idat odkaz',
      'AdminArea' => 'Administrace',
      'agent' => 'agent',
      'all' => 'v�e',
      'All' => 'V�e',
      'Attention' => 'Upozorn�n�',
      'Bug Report' => 'Chybov� hl�ka',
      'Cancel' => 'Zru�it',
      'change' => 'zm�nit',
      'Change' => 'Zm�nit',
      'change!' => 'zm�nit!',
      'click here' => 'tukni zde',
      'Comment' => 'Koment��',
      'Customer' => 'Z�kazn�k',
      'customer' => 'z�kaznik',
      'Customer Info' => 'Informace o z�kaznikovi',
      'day' => 'den',
      'days' => 'dny',
      'description' => 'popis',
      'Description' => 'Popis',
      'Dispatching by email To: field.' => 'odesilani prostrednictvim polo�ky emailu Kam: .',
      'Dispatching by selected Queue.' => 'odesilani prostrednictvim vybran� fronty.',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Pros�m, nepracujte s UserID 1 (System ucet)! vytvo�te nov� u�ivatele!',
      'Done' => 'Hotovo',
      'end' => 'konec',
      'Error' => 'Chyba',
      'Example' => 'P��klad',
      'Examples' => 'P��klady',
      'Facility' => 'Mo�nost',
      'Feature not active!' => 'Funkcionalita neni aktivov�na!',
      'go' => 'Start',
      'go!' => 'Start!',
      'Group' => 'Skupina',
      'Hit' => '',
      'Hits' => '',
      'hour' => 'hodina',
      'hours' => 'hodiny',
      'Ignore' => 'ignorovat',
      'invalid' => 'neplatny',
      'Invalid SessionID!' => 'neplatn� session ID!',
      'Language' => 'Jazyk',
      'Languages' => 'Jazyky',
      'Line' => '',
      'Lite' => 'lehky',
      'Login failed! Your username or password was entered incorrectly.' => 'P�ihl�en� selhalo! Va�e jmeno nebo heslo bylo zad�no nespravne.',
      'Logout successful. Thank you for using OTRS!' => 'Byl jste odhl�en.D�kujeme V�m za pou��v�n� OTRS!',
      'Message' => 'Zpr�va',
      'minute' => 'Minuta',
      'minutes' => 'Minuty',
      'Module' => 'Modul',
      'Modulefile' => 'soubor modulu',
      'Name' => 'Jmm�no',
      'New message' => 'Nov� zpr�va',
      'New message!' => 'Nov� zpr�va!',
      'No' => 'Ne',
      'no' => 'ne',
      'No entry found!' => '�adny zaznam nebyl nalezen!',
      'No suggestions' => '��dn� n�vrhy',
      'none' => '',
      'none - answered' => '',
      'none!' => '',
      'Off' => '',
      'off' => '',
      'On' => '',
      'on' => '',
      'Password' => 'Heslo',
      'Pending till' => 'Dosud nevy�e�en�',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Pros�m odpovezte tento listek k n�vratu normalniho zobrazeni front!',
      'Please contact your admin' => 'Pros�m  kontaktujte administr�tora',
      'please do not edit!' => 'Prosim neupravovat!',
      'possible' => 'mozn�',
      'QueueView' => 'pohled na frontu',
      'reject' => 'odmitnuto',
      'replace with' => 'nahrazeno s ',
      'Reset' => 'Reset',
      'Salutation' => 'osloveni',
      'Session has timed out. Please log in again.' => 'Uplynul �as pro sezeni.Prosim o op�tovn� p�ihl�en�.',
      'Signature' => 'Podpis',
      'Sorry' => 'Lituji',
      'Stats' => 'Statistika',
      'Subfunction' => 'subfunkce',
      'submit' => 'potvrdit',
      'submit!' => 'Potvrdit!',
      'system' => 'System',
      'Take this User' => 'Vezmi tohoto u�ivatele',
      'Text' => '',
      'The recommended charset for your language is %s!' => 'Doporucena znakova sada  pro Vas jazyk je %s!',
      'Theme' => 'Tema',
      'There is no account with that login name.' => 'Nen� u�et s timto p�ihla�ovac�m jm�nem.',
      'Timeover' => '�as vypr�el',
      'top' => 'nejvy���',
      'update' => 'ulo�',
      'update!' => 'Ulo�!',
      'User' => 'U�ivatel',
      'Username' => 'Jmeno u�ivatele',
      'Valid' => 'Platny',
      'Warning' => 'Varovani',
      'Welcome to OTRS' => 'Vitejte v OTRS',
      'Word' => 'Svet',
      'wrote' => 'napsal',
      'yes' => 'ano',
      'Yes' => 'Ano',
      'Please go away!' => 'Prosim be�te pry�!',
      'You got new message!' => 'M�te novou zpr�vu!',
      'You have %s new message(s)!' => 'M�te %s nov�ch zpr�v!',
      'You have %s reminder ticket(s)!' => 'Mate %s upozorn�n� na zpr�vy!',

    # Template: AAAMonth
      'Apr' => '',
      'Aug' => '',
      'Dec' => '',
      'Feb' => '',
      'Jan' => '',
      'Jul' => '',
      'Jun' => '',
      'Mar' => '',
      'May' => '',
      'Nov' => '',
      'Oct' => '',
      'Sep' => '',

    # Template: AAAPreferences
      'Closed Tickets' => 'uzavrene dotazy',
      'Custom Queue' => 'ctene fronty',
      'Follow up notification' => 'notifikace pri zm�ne po��zen� klientem',
      'Frontend' => 'vzhled',
      'Mail Management' => 'E-mail Management',
      'Move notification' => 'Notikace pri p�esunu do jin� fronty',
      'New ticket notification' => 'Notifikace pri nov�m listku',
      'Other Options' => 'Ostatni nastaveni',
      'Preferences updated successfully!' => 'Nastaven� bylo ulo�eno!',
      'QueueView refresh time' => 'frekvence obnoven� obsahu fronty',
      'Select your default spelling dictionary.' => 'vyber slovnik v�slovnosti.',
      'Select your frontend Charset.' => 'vyber znakovou sadu.',
      'Select your frontend language.' => 'vyber jazyka rozhrani.',
      'Select your frontend QueueView.' => 'vyber zp�sob pohledu na frontu.',
      'Select your frontend Theme.' => 'vyber tematu.',
      'Select your QueueView refresh time.' => 'nastaveni obnoveni zobrazen� fronty.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Po�li mi notifikaci, pokud z�kazn�k p�ipi�e pozn�mku a jsem vlastnikem ticketu.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Po�li notifikaci, pokud je ticket p�esunut do mnou  kontrolovan�ch front.',
      'Send me a notification if a ticket is unlocked by the system.' => 'Po�li notifikaci, pokud je ticket odemknut syst�mem',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Po�li notifikaci, pokud je novy listek mnou kontrolovanych front�ch.',
      'Show closed tickets.' => 'uka� uzav�en� l�stky ',
      'Spelling Dictionary' => 'Slovn�k v�slovnosti',
      'Ticket lock timeout notification' => 'notifikace p�i vypr�en� z�mku',

    # Template: AAATicket
      '1 very low' => '1 velmi n�zk�',
      '2 low' => '2 n�zk�',
      '3 normal' => '3 norm�ln�',
      '4 high' => '4 vysok�',
      '5 very high' => '5 velmi vysok�',
      'Action' => 'Akce',
      'Age' => 'V�k',
      'Article' => 'Artikl',
      'Attachment' => 'P��loha',
      'Attachments' => 'P��lohy',
      'Bcc' => '',
      'Bounce' => '',
      'Cc' => '',
      'Close' => 'Zav��t',
      'closed successful' => 'Upln� uzav�en�',
      'closed unsuccessful' => 'neupln� uzav�en�',
      'Compose' => 'Navrhnout',
      'Created' => 'Vytvo�eno',
      'Createtime' => 'Vytvo�eno v',
      'email' => 'E-Mail',
      'eMail' => 'E-Mail',
      'email-external' => 'extrn� email',
      'email-internal' => 'intern� email',
      'Forward' => 'p�eposlat',
      'From' => 'Od',
      'high' => 'Vysok�',
      'History' => 'Historie',
      'If it is not displayed correctly,' => 'Pokud to nen� zobrazeno korektn�,',
      'lock' => 'Zamknout',
      'Lock' => 'Z�mek',
      'low' => 'n�zk�',
      'Move' => 'P�esunout',
      'new' => 'nov�',
      'normal' => 'norm�ln�',
      'note-external' => 'Pozn�mka pro extern�',
      'note-internal' => 'Pozn�mka pro intern�',
      'note-report' => 'Pozn�mka pro report',
      'open' => 'oterv��t',
      'Owner' => 'Vlastn�k',
      'Pending' => 'nevy�e�en�',
      'pending auto close+' => 'o�ek�van� automatick� uzav�en� +',
      'pending auto close-' => 'o�ek�van� automatick� uzav�en� -',
      'pending reminder' => 'o�ekavan� p�ipom�n�n�',
      'phone' => 'Telefon',
      'plain' => 'prost�',
      'Priority' => 'Priorita',
      'Queue' => 'Fronta',
      'removed' => 'odstran�no',
      'Sender' => 'Odesilatel',
      'sms' => '',
      'State' => 'Status',
      'Subject' => 'p�edm�t',
      'This is a' => 'To je',
      'This is a HTML email. Click here to show it.' => 'To je  HTML email. zde tuknete pro zobrazen�.',
      'This message was written in a character set other than your own.' => 'Tato zpr�va byla naps�na v znakov� sad� odli�n� od va��.',
      'Ticket' => 'Listek',
      'To' => 'Komu',
      'to open it in a new window.' => 'otev�it v nov�m okn�',
      'unlock' => 'odemknuto',
      'Unlock' => 'Odemknout',
      'very high' => 'velmi vysok�',
      'very low' => 'velmi n�zk�',
      'View' => 'Zobrazit',
      'webrequest' => 'Pozadavek z webu',
      'Zoom' => 'Zv�t�it',

    # Template: AAAWeekDay
      'Fri' => 'Fre',
      'Mon' => 'Mon',
      'Sat' => 'Sam',
      'Sun' => 'Son',
      'Thu' => 'Don',
      'Tue' => 'Die',
      'Wed' => 'Mit',

    # Template: AdminAttachmentForm
      'Add attachment' => 'P�idat p��lohu',
      'Attachment Management' => 'Management p��loh',
      'Change attachment settings' => 'Zmenit nastaven� p��loh',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'P�idat automatickou odpov�d',
      'Auto Response From' => 'Automatick� odpov�d od',
      'Auto Response Management' => 'Management automatick�ch odpov�d�',
      'Change auto response settings' => 'Zmenit nastaven� automatick�ch odpov�d�',
      'Charset' => 'Znakov� sada',
      'Note' => 'Pozn�mka',
      'Response' => 'Odpov�d',
      'to get the first 20 character of the subject' => 'K z�sk�n� prvn�ch 20 znaku z p�edm�tu zadejte',
      'to get the first 5 lines of the email' => 'K z�sk�n� prvn�ch 5 ��dk� z emailu zadejte',
      'to get the from line of the email' => 'K z�sk�n� ��dku z emalu zadejte',
      'to get the realname of the sender (if given)' => 'K z�sk�n� jm�na (pokud je zad�no)',
      'to get the ticket id of the ticket' => 'K z�sk�n� id ticketu',
      'to get the ticket number of the ticket' => 'K z�sk�n� ��sla ticketu',
      'Type' => 'Typ',
      'Useable options' => 'Pou�iteln� volby',

    # Template: AdminCharsetForm
      'Add charset' => 'P�idat znakovou sadu',
      'Change system charset setting' => 'Zmenit systemovou znakovou sadu',
      'System Charset Management' => 'Nastaven� Syst�mov� znakov� sady',

    # Template: AdminCustomerUserForm
      'Add customer user' => 'P�idat z�kazn�ka',
      'Change customer user settings' => 'Zm�nit zakaznikovo nastaven�',
      'Customer User Management' => 'Nastaven� z�kazn�ka',
      'Update customer user' => 'Ulo�it z�kazn�ka',
      'Customer user will be needed to to login via customer panels.' => 'z�kazn�k by m�l pou��vat z�kaznick�  rozhrani',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Administr�tor�v email',
      'Body' => 'T�lo',
      'OTRS-Admin Info!' => 'Info o  administratorovi',
      'Permission' => 'Opr�vn�n�',
      'Recipents' => 'Adres�ti',
      'send' => 'Odeslat',

    # Template: AdminEmailSent
      'Message sent to' => 'Zpr�va byla posl�na na',

    # Template: AdminGroupForm
      'Add group' => 'P�idat skupinu',
      'Change group settings' => 'Zm�nit nastaven� skupiny',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'vytvo�te nov� skupiny k nastaven� p��stupov�ch pr�v r�zn�ch skupin pracovn�k�(p��klad obchodn� odd�len�, spr�va s�t�,  spr�va firewallu , ...).',
      'Group Management' => 'Nastaven� skupin',
      'It\'s useful for ASP solutions.' => 'Je to u�ite�n� pro asp and IPS �e�en�.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => '\'admin\' skupina je pro p��stup k administraci a \'stats\'skupina je pro p�istup ke statistice.',

    # Template: AdminLog
      'System Log' => '',

    # Template: AdminNavigationBar
      'AdminEmail' => '',
      'AgentFrontend' => 'Agent-plocha',
      'Attachment <-> Response' => 'p��loha <-> Reakce',
      'Auto Response <-> Queue' => 'auto odpov�d <-> Fronty',
      'Auto Responses' => 'automatick� odpov�di',
      'Charsets' => 'Znakov� sady',
      'Customer User' => 'Info o z�kazn�kovi',
      'Email Addresses' => 'E-Mail-Adresa',
      'Groups' => 'Skupiny',
      'Logout' => 'Odhl�sit',
      'Misc' => 'R�zn�',
      'POP3 Account' => 'POP3-��et',
      'Responses' => 'Reakce',
      'Responses <-> Queue' => 'reakce <-> fronty',
      'Select Box' => 'SQL box',
      'Session Management' => 'nastaven� sezen�',
      'Status' => '',
      'System' => '',
      'User <-> Groups' => 'u�ivatel <-> Skupina',

    # Template: AdminPOP3Form
      'Add POP3 Account' => 'P�idat POP3-��et',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'V�echny p��choz� emaily s jednoho u�tu budou  odeslany do  vybran� fronty!',
      'Change POP3 Account setting' => 'Zm�nit POP3-Konto',
      'Dispatching' => 'Odes�l�n�',
      'Host' => '',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Pokud je Va�e konto duv�ryhodn�, m��ete pou��vat specialni  hlavi�ky!',
      'Login' => 'P�ihl�sit',
      'POP3 Account Management' => 'POP3-Konten-nastaven�',
      'Trusted' => 'D�v�ryhodn�',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Fronta <-> automatick� odpov�di',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = ��dn� eskalace ',
      '0 = no unlock' => '0 = ��dn� unlock',
      'Add queue' => 'P�idat frontu',
      'Change queue settings' => 'Zm�nit nastaven� fronty',
      'Customer Move Notify' => 'Notifikace z�kazn�ka p�i p�esunu ',
      'Customer Owner Notify' => 'Notifikace z�kazn�ka p�i zm�ne vlastn�ka',
      'Customer State Notify' => 'Notifikace z�kazn�ka p�i zm�ne stavu',
      'Escalation time' => 'Eskala�n� �as',
      'Follow up Option' => '',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Pokud je listek uzav�en� a z�kazn�k po�le pozn�mku , listek bude uzamknut pro star�ho vlastn�ka.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Pokud listek nebude zodpovezen v dan�m �ase , v fronte bude zobrazen pouze tento listek.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Pokud agent zamkne liste a on nebo  on neodpov� v dan�m �ase , l�stek bude automaticky odem�en a bude �iteln� i jin�mi agenty.',
      'Key' => 'Kl��',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS po�le Info-E-Maily z�kazn�kovi pokud je listek p�esunut.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS po�le Info-E-Maily z�kazn�kovi pokud je vlastn�k l�stku zm�nen.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS po�le Info-E-Maily z�kazn�kovi pokud je status l�stku zm�nen.',
      'Queue Management' => 'Nastaven� fronty',
      'Sub-Queue of' => 'sub fronta z',
      'Systemaddress' => 'Syst�mov� adresa',
      'The salutation for email answers.' => 'Osloven� pro odpov�di.',
      'The signature for email answers.' => 'Podpis pro odpov�di.',
      'Ticket lock after a follow up' => 'L�stek zamknout po odpov�di z�kazn�ka',
      'Unlock timeout' => '�as odemknut� z�mku',
      'Will be the sender address of this queue for email answers.' => '',

    # Template: AdminQueueResponsesChangeForm
      'Change %s settings' => 'Zm�nit %s nastaven�',
      'Std. Responses <-> Queue Management' => 'Stand. odpov�di <-> Fronta Management',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Odpov�d',
      'Change answer <-> queue settings' => 'Zm�nit odpoved <-> Nastaven� fronty',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Std. odpov�di <-> Std. management p��loh',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'Zm�nit Odpov�d <-> Nastaven� p��loh',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'odpov�d je standartn� text pro rychlej�� psan� reakci s standartn�m textem z�kazn�k�m.',
      'Add response' => 'P�idat odpov�d',
      'Change response settings' => 'Zmeni Odpovedi',
      'Don\'t forget to add a new response a queue!' => 'Nezapomente p�i�adit odpoved k fronte!',
      'Response Management' => 'Nastaven�  standartn�ch odpov�d�',

    # Template: AdminSalutationForm
      'Add salutation' => 'P�idat pozdrav',
      'Change salutation settings' => 'Zm�nit pozdravy',
      'customer realname' => 'Z�kazn�kova jm�no',
      'for agent firstname' => 'pro agentovo jm�no',
      'for agent lastname' => 'pro agentovo p��jmeni',
      'for agent login' => 'pro agent�v login',
      'for agent user id' => 'pro agentovo ID',
      'Salutation Management' => 'Nastaven� pozdrav�',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Max. ��dk�',

    # Template: AdminSelectBoxResult
      'Limit' => '',
      'Select Box Result' => 'SQL Box v�sledek',
      'SQL' => '',

    # Template: AdminSession
      'kill all sessions' => 'v�echny sezen� zab�t',

    # Template: AdminSessionTable
      'kill session' => 'zab�t sesion',
      'SessionID' => '',

    # Template: AdminSignatureForm
      'Add signature' => 'P�idat Podpis',
      'Change signature settings' => 'Zmenit Podpis',
      'Signature Management' => 'Nastaven� Podpis�',

    # Template: AdminStateForm
      'Add state' => 'P�idat stav',
      'Change system state setting' => 'Zm�nit stav',
      'State Type' => 'Typ Stavu',
      'System State Management' => 'Nastaven� Stav�',

    # Template: AdminSystemAddressForm
      'Add system address' => 'P�idat E-Mail-Adresu',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Ve�ker�  p��choz� emaily z tohot emailu budou ulo�eny v vybran� front�.',
      'Change system address setting' => 'Zmenit E-Mail-Adresu',
      'Email' => 'E-Mail',
      'Realname' => '',
      'System Email Addresses Management' => 'Nastaven� E-Mail-Adres',

    # Template: AdminUserForm
      'Add user' => 'P�idat u�ivatele',
      'Change user settings' => 'Zm�nit nastaven� u�ivatele',
      'Don\'t forget to add a new user to groups!' => 'Nezapomente nastavit u�ivateli skupiny!',
      'Firstname' => 'K�estn� jm�no',
      'Lastname' => 'P��jmeni',
      'User Management' => 'Nastaven� u�ivatel�',
      'User will be needed to handle tickets.' => '',

    # Template: AdminUserGroupChangeForm
      'Change  settings' => '',
      'User <-> Group Management' => '',

    # Template: AdminUserGroupForm
      'Change user <-> group settings' => '',

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'zpr�va by m�la m�t adres�ta!',
      'Bounce ticket' => '',
      'Bounce to' => '',
      'Inform sender' => '',
      'Next ticket state' => '',
      'Send mail!' => '',
      'You need a email address (e. g. customer@example.com) in To:!' => '',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => '',

    # Template: AgentClose
      ' (work units)' => 'cas',
      'A message should have a subject!' => 'Zpr�va by m�la m�t p�edm�t!',
      'Close ticket' => '',
      'Close type' => '',
      'Close!' => 'Zav��t!',
      'Note Text' => '',
      'Note type' => '',
      'Options' => '',
      'Spell Check' => '',
      'Time units' => '',
      'You need to account time!' => '',

    # Template: AgentCompose
      'A message must be spell checked!' => '',
      'Attach' => '',
      'Compose answer for ticket' => '',
      'for pending* states' => '',
      'Is the ticket answered' => '',
      'Pending Date' => '',

    # Template: AgentCustomer
      'Back' => '',
      'Change customer of ticket' => '',
      'CustomerID' => '',
      'Search Customer' => '',
      'Set customer user and customer id of a ticket' => '',

    # Template: AgentCustomerHistory
      'Customer history' => '',

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerMessage
      'Follow up' => '',
      'Next state' => '',

    # Template: AgentCustomerView
      'Customer Data' => '',

    # Template: AgentForward
      'Article type' => '',
      'Date' => 'Datum',
      'End forwarded message' => '',
      'Forward article of ticket' => '',
      'Forwarded message from' => '',
      'Reply-To' => '',

    # Template: AgentFreeText
      'Change free text of ticket' => '',
      'Value' => '',

    # Template: AgentHistoryForm
      'History of' => '',

    # Template: AgentMailboxNavBar
      'All messages' => '',
      'down' => '',
      'Mailbox' => '',
      'New' => '',
      'New messages' => 'Nov� zpr�vy',
      'Open' => 'Otev��t',
      'Open messages' => '',
      'Order' => '',
      'Pending messages' => '',
      'Reminder' => '',
      'Reminder messages' => '',
      'Sort by' => '',
      'Tickets' => '',
      'up' => '',

    # Template: AgentMailboxTicket

    # Template: AgentMove
      'Move Ticket' => '',
      'New Queue' => '',
      'New user' => '',

    # Template: AgentNavigationBar
      'Locked tickets' => '',
      'new message' => '',
      'PhoneView' => '',
      'Preferences' => '',
      'Utilities' => '',

    # Template: AgentNote
      'Add note to ticket' => '',
      'Note!' => '',

    # Template: AgentOwner
      'Change owner of ticket' => '',
      'Message for new Owner' => '',

    # Template: AgentPending
      'Pending date' => '',
      'Pending type' => '',
      'Pending!' => '',
      'Set Pending' => '',

    # Template: AgentPhone
      'Customer called' => '',
      'Phone call' => '',
      'Phone call at %s' => '',

    # Template: AgentPhoneNew
      'Clear From' => '',
      'create' => '',
      'new ticket' => '',

    # Template: AgentPlain
      'ArticleID' => '',
      'Plain' => '',
      'TicketID' => '',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => '',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => '',
      'New password' => '',
      'New password again' => '',

    # Template: AgentPriority
      'Change priority of ticket' => '',
      'New state' => '',

    # Template: AgentSpelling
      'Apply these changes' => '',
      'Discard all changes and return to the compose screen' => '',
      'Return to the compose screen' => '',
      'Spell Checker' => '',
      'spelling error(s)' => '',
      'The message being composed has been closed.  Exiting.' => '',
      'This window must be called from compose window' => '',

    # Template: AgentStatusView
      'D' => '',
      'of' => '',
      'Site' => '',
      'sort downward' => '',
      'sort upward' => '',
      'Ticket Status' => '',
      'U' => '',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
      'Ticket locked!' => '',
      'Ticket unlock!' => '',

    # Template: AgentTicketPrint
      'by' => '',

    # Template: AgentTicketPrintHeader
      'Accounted time' => '',
      'Escalation in' => '',
      'printed by' => '',

    # Template: AgentUtilSearch
      'Article free text' => '',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => '',
      'search' => '',
      'search (e. g. 10*5155 or 105658*)' => '',
      'Ticket free text' => '',
      'Ticket Search' => '',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => '',
      'Customer history search (e. g. "ID342425").' => '',
      'No * possible!' => '',

    # Template: AgentUtilSearchNavBar
      'Results' => '',
      'Total hits' => '',

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
      'All closed tickets' => '',
      'All open tickets' => '',
      'closed tickets' => '',
      'open tickets' => '',
      'or' => '',
      'Provides an overview of all' => '',
      'So you see what is going on in your system.' => '',
      'Closed' => '',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => '',
      'Your own Ticket' => '',

    # Template: AgentZoomAnswer
      'Compose Answer' => '',
      'Contact customer' => '',
      'phone call' => '',

    # Template: AgentZoomArticle
      'Split' => '',

    # Template: AgentZoomBody
      'Change queue' => '',

    # Template: AgentZoomHead
      'Free Fields' => '',
      'Print' => '',

    # Template: AgentZoomStatus

    # Template: CustomerCreateAccount
      'Create Account' => '',

    # Template: CustomerError
      'Traceback' => '',

    # Template: CustomerFooter
      'Powered by' => '',

    # Template: CustomerHeader
      'Contact' => 'Kontakt',
      'Home' => '',
      'Online-Support' => '',
      'Products' => 'Produkt',
      'Support' => '',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => '',
      'Request new password' => '',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => '',
      'My Tickets' => '',
      'New Ticket' => '',
      'Ticket-Overview' => '',
      'Welcome %s' => '',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => '',

    # Template: Footer
      'Top of Page' => '',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => '',
      'Drop Database' => '',
      'Finished' => '',
      'System Settings' => '',
      'Web-Installer' => '',

    # Template: InstallerFinish
      'Admin-User' => '',
      'After doing so your OTRS is up and running.' => '',
      'Have a lot of fun!' => '',
      'Restart your webserver' => '',
      'Start page' => '',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '',
      'Your OTRS Team' => '',

    # Template: InstallerLicense
      'accept license' => '',
      'don\'t accept license' => '',
      'License' => '',

    # Template: InstallerStart
      'Create new database' => '',
      'DB Admin Password' => '',
      'DB Admin User' => '',
      'DB Host' => '',
      'DB Type' => '',
      'default \'hot\'' => '',
      'Delete old database' => '',
      'next step' => '',
      'OTRS DB connect host' => '',
      'OTRS DB Name' => '',
      'OTRS DB Password' => '',
      'OTRS DB User' => '',
      'your MySQL DB should have a root password! Default is empty!' => '',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '',
      '(Email of the system admin)' => '',
      '(Full qualified domain name of your system)' => '',
      '(Logfile just needed for File-LogModule!)' => '',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '',
      '(Used default language)' => '',
      '(Used log backend)' => '',
      '(Used ticket number format)' => '',
      'CheckMXRecord' => '',
      'Default Charset' => '',
      'Default Language' => '',
      'Logfile' => '',
      'LogModule' => '',
      'Organization' => '',
      'System FQDN' => '',
      'SystemID' => '',
      'Ticket Hook' => '',
      'Ticket Number Generator' => '',
      'Webfrontend' => '',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => '',

    # Template: Notify
      'Info' => '',

    # Template: PrintFooter
      'URL' => '',

    # Template: PrintHeader

    # Template: QueueView
      'All tickets' => '',
      'Queues' => '',
      'Tickets available' => '',
      'Tickets shown' => '',

    # Template: SystemStats
      'Graphs' => '',

    # Template: Test
      'OTRS Test Page' => '',

    # Template: TicketEscalation
      'Ticket escalation!' => '',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => '',

    # Template: Warning

    # Misc
      '(Click here to add a group)' => '',
      '(Click here to add a queue)' => '',
      '(Click here to add a response)' => '',
      '(Click here to add a salutation)' => '',
      '(Click here to add a signature)' => '',
      '(Click here to add a system email address)' => '',
      '(Click here to add a customer user)' => '',
      '(Click here to add a user)' => '',
      '(Click here to add an auto response)' => '',
      '(Click here to add charset)' => '',
      '(Click here to add language)' => '',
      '(Click here to add state)' => '',
      '(E-Mail of the system admin)' => '',
      'A message should have a From: recipient!' => '',
      'Add language' => '',
      'Backend' => '',
      'BackendMessage' => '',
      'Bottom of Page' => '',
      'Change system language setting' => '',
      'Create' => '',
      'CustomerUser' => '',
      'FAQ' => '',
      'Fulltext search' => '',
      'Handle' => '',
      'In Queue' => '',
      'New ticket via call.' => '',
      'Search in' => '',
      'Set customer id of a ticket' => '',
      'Show all' => '',
      'System Language Management' => '',
      'Ticket limit:' => '',
      'Time till escalation' => '',
      'Update auto response' => '',
      'Update charset' => '',
      'Update group' => '',
      'Update language' => '',
      'Update queue' => '',
      'Update response' => '',
      'Update salutation' => '',
      'Update signature' => '',
      'Update state' => '',
      'Update system address' => '',
      'Update user' => 'uzivatel aktualizovan',
      'With Priority' => 'S prioritou',
      'With State' => 'S Stavem',
      'You have to be in the admin group!' => 'Vy nejste v skupine s opravnenim na administraci!',
      'You have to be in the stats group!' => 'Vy nejste v skupine s opravnenim na statistiku!',
      'You need a email address (e. g. customer@example.com) in From:!' => 'v poli od potrebujeme zakaznikuv email(priklad kunde@beispiel.de) !',
      'auto responses set' => 'Automaticka odpoved aktivovana',
      'invalid-temporarily' => 'docasne neplatny',
      'store' => 'Speichern',
      'tickets' => 'Listky',
      'valid' => 'platny',
    );

    # $$STOP$$

    $Self->{Translation} = \%Hash;
}
# --
1;
