# --
# Kernel/Language/hu.pm - provides de language translation
# Copyright (C) 2004 RLAN Internet <MAGIC at rlan.hu>
# --
# $Id: hu.pm,v 1.2 2004-06-11 06:41:16 martin Exp $
# Translation: Gabor Gancs /gg@magicnet.hu/ & Krisztian Gancs /krisz@gancs.hu/
# Verify: Flora Szabo /szaboflora@magicnet.hu/
# Hungary Sopron Europe
#
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::hu;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Tue Feb 10 01:02:02 2004 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%Y.%M.%D %T';
    $Self->{DateFormatLong} = '%Y %B %D %A %T';
    $Self->{DateInputFormat} = '%Y.%M.%D';
    $Self->{DateInputFormatLong} = '%Y.%M.%D - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 Perc',
      ' 5 minutes' => ' 5 Perc',
      ' 7 minutes' => ' 7 Perc',
      '(Click here to add)' => '(Kattinst ide a hozz�ad�shoz)',
      '10 minutes' => '10 Perc',
      '15 minutes' => '15 Perc',
      'AddLink' => 'Link hozz�ad�sa',
      'Admin-Area' => 'Admin ter�let',
      'agent' => '�gyn�k',
      'Agent-Area' => 'Felhaszn�l�i-ter�let',
      'all' => '�sszes',
      'All' => '�sszes',
      'Attention' => 'Figyelem',
      'before' => 'el�z�',
      'Bug Report' => 'Hibalista',
      'Cancel' => 'M�gsem',
      'change' => 'v�lt�s',
      'Change' => 'V�lt�s',
      'change!' => 'V�lt�s!',
      'click here' => 'kattints ide',
      'Comment' => 'Megjegyz�s',
      'Customer' => '�gyf�l',
      'customer' => '�gyf�l',
      'Customer Info' => '�gyf�l Info',
      'day' => 'nap',
      'day(s)' => 'nap(ok)',
      'days' => 'napok',
      'description' => 'le�r�s',
      'Description' => 'Le�r�s',
      'Dispatching by email To: field.' => 'Feloszt�s email szerint: mez�.',
      'Dispatching by selected Queue.' => 'Feloszt�s a kiv�lasztott �gyek szerint.',
      'Don\'t show closed Tickets' => 'Ne jelen�tse meg a lez�rt jegyeket.',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Nem dolgozhat a UserID 1-el (Rendszer jogosults�g)! Hozz�l l�tre �j felhaszn�l�t!',
      'Done' => 'K�sz',
      'end' => 'v�ge',
      'Error' => 'Hiba',
      'Example' => 'P�lda',
      'Examples' => 'P�ld�k',
      'Facility' => 'K�pess�g',
      'FAQ-Area' => 'GYIK ter�let',
      'Feature not active!' => 'Funkci� nem akt�v!',
      'go' => 'Start',
      'go!' => 'Start!',
      'Group' => 'Csoport',
      'Hit' => 'Tal�lat',
      'Hits' => 'Tal�lat',
      'hour' => '�ra',
      'hours' => '�r�k',
      'Ignore' => 'Visszavon',
      'invalid' => 'hib�s',
      'Invalid SessionID!' => 'Hib�s SessionID!',
      'Language' => 'Nyelv',
      'Languages' => 'Nyelvek',
      'last' => 'utols�',
      'Line' => 'Vonal',
      'Lite' => 'Egyszer�',
      'SessionID invalid! Need user data!' => 'Hib�s azonos�t�! Hi�nyz� felhaszn�l�i adatok! L�pjen be �jra a rendszerbe!',
      'Login failed! Your username or password was entered incorrectly.' => 'Bel�p�si hiba! A felhaszn�l�i n�v vagy jelsz� hib�s.',
      'Logout successful. Thank you for using OTRS!' => 'Kil�p�s rendben! Gyere m�skor is!',
      'Message' => '�zenet',
      'minute' => 'Perc',
      'minutes' => 'Perc',
      'Module' => 'Modul',
      'Modulefile' => 'Modulfile',
      'month(s)' => 'H�nap(ok)',
      'Name' => 'N�v',
      'New Article' => '�j t�tel',
      'New message' => '�j �zenet',
      'New message!' => '�j �zenet!',
      'No' => 'Nem',
      'no' => 'nem',
      'No entry found!' => 'Nem tal�lt t�tel!',
      'No suggestions' => 'Nincsenek javaslatok',
      'none' => 'nincs',
      'none - answered' => 'nincs - v�lasz',
      'none!' => 'nincs!',
      'Normal' => 'Norm�l',
      'Off' => 'Ki',
      'off' => 'ki',
      'On' => 'Be',
      'on' => 'be',
      'Password' => 'Jelsz�',
      'Pending till' => 'V�rjon r�',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'K�rj�k v�laszolj erre a jegyre hogy visszat�rj az �gyek n�zethez!',
      'Please contact your admin' => 'Vegye fel a kapcsolatot a rendszeradminisztr�torral',
      'please do not edit!' => 'K�rem ezt ne szerkessze �t!',
      'Please go away!' => 'K�rj�k ezt hagyja �gy!',
      'possible' => 'lehets�ges',
      'Preview' => 'Megtekint�s',
      'QueueView' => '�gyek-N�zet',
      'reject' => 'elutas�t�s',
      'replace with' => 'fel�l�r�s ezzel',
      'Reset' => 'T�rl�s',
      'Salutation' => 'Megsz�l�t�s',
      'Session has timed out. Please log in again.' => 'A program nem v�laszol. L�pjen be �jra.',
      'Show closed Tickets' => 'Lez�rt jegyek megmutat�sa',
      'Signature' => 'Al��r�s',
      'Sorry' => 'Sajn�lom',
      'Stats' => 'Statisztika',
      'Subfunction' => 'Bels� fukci�',
      'submit' => 'elk�ld�s',
      'submit!' => 'Elk�ld�s!',
      'system' => 'Rendszer',
      'Take this User' => 'Foglalt ennek a felhaszn�l�nak',
      'Text' => 'Sz�veg',
      'The recommended charset for your language is %s!' => 'Az aj�nlott karakterk�szlet a v�lasztott nyelvn�l %s!',
      'Theme' => 'T�ma',
      'There is no account with that login name.' => 'Ehhez a n�vhez nem tartozik jogosults�g.',
      'Timeover' => 'Id�t�ll�pes',
      'To: (%s) replaced with database email!'  => 'C�l: (%s) fel�l�rva adatb�zis eMail-al',
      'top' => 'Els�',
      'update' => 'aktualiz�l�s',
      'Update' => 'Aktualiz�l�s',
      'update!' => 'Aktualiz�l�s!',
      'User' => 'Felhaszn�l�',
      'Username' => 'Felhaszn�l� neve',
      'Valid' => '�rv�nyes',
      'Warning' => 'Figyelem',
      'week(s)' => 'H�t(ek)',
      'Welcome to OTRS' => '�dv�z�l az �gykezel� Rendszer',
      'Word' => 'Sz�',
      'wrote' => '�r�s',
      'year(s)' => '�v(ek)',
      'yes' => 'igen',
      'Yes' => 'Igen',
      'You got new message!' => 'Te egy �j �zenetet kapt�l!',
      'You have %s new message(s)!' => 'Neked %s �j �zeneted �rkezett!',
      'You have %s reminder ticket(s)!' => 'Neked %s eml�keztet� jegye(i)d vannak!',

    # Template: AAAMonth
      'Apr' => '',
      'Aug' => '',
      'Dec' => '',
      'Feb' => '',
      'Jan' => '',
      'Jul' => '',
      'Jun' => '',
      'Mar' => '',
      'May' => 'Maj',
      'Nov' => '',
      'Oct' => 'Okt',
      'Sep' => '',

    # Template: AAAPreferences
      'Closed Tickets' => 'Lez�rt Hibajegyek',
      'Custom Queue' => 'Szok�sos �gyek',
      'Follow up notification' => '�rtes�t�s nyomonk�vet�se',
      'Frontend' => 'Munkafel�let',
      'Mail Management' => 'Email kezel�s',
      'Max. shown Tickets a page in Overview.' => 'Maximum megjelen�thet� jegyek sz�ma az �ttekint�sn�l.',
      'Max. shown Tickets a page in QueueView.' => 'Maximum megjelen�thet� jegyek sz�ma az �gyek n�zetn�l.',
      'Move notification' => '�rtes�t�s �thelyez�se',
      'New ticket notification' => '�j jegy �rtes�t�se',
      'Other Options' => 'Tov�bbi be�ll�t�sok',
      'PhoneView' => 'Telefonh�v�s alapj�n-�j jegy',
      'Preferences updated successfully!' => 'V�ltoztat�sok elment�se rendben!',
      'QueueView refresh time' => '�gyek n�zet - friss�t�si id�',
      'Screen after new ticket' => 'K�perny� ut�n �j jegy',
      'Select your default spelling dictionary.' => 'V�laszd ki az alap�rtelmezett helyes�r�sellen�rz� sz�t�rat.',
      'Select your frontend Charset.' => 'V�laszd ki a munkater�let karakterk�szlet�t.',
      'Select your frontend language.' => 'V�laszd ki a munkater�let nyelv�t.',
      'Select your frontend QueueView.' => 'V�laszd ki a munkater�let �gyek-n�zet�t.',
      'Select your frontend Theme.' => 'V�laszd ki a munkater�let st�lus�t.',
      'Select your QueueView refresh time.' => 'V�laszd ki az �gyek n�zet friss�t�si idej�t.',
      'Select your screen after creating a new ticket.' => 'V�laszd ki a k�perny�t az �j jegy l�trehoz�sa ut�n.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'K�ldj�n �rtes�t�st ha a partner haszn�lja �s �n vagyok a fel�gyel�je a jegynek.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'K�ldj�n �rtes�t�st ha a jegyet �thelyezik egy m�sik �gyh�z.',
      'Send me a notification if a ticket is unlocked by the system.' => 'K�ldj�n �rtes�t�st ha a jegyet z�rol�s al�l felszabad�t�sra ker�l.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'K�ldj�n �rtes�t�st ha ott az �j jegy az �n szok�sos �gyeimben.',
      'Show closed tickets.' => 'Lez�rt jegyek megjelen�t�se.',
      'Spelling Dictionary' => 'Helyes�r�s ellen�rz� sz�t�r',
      'Ticket lock timeout notification' => 'Jegyz�rol�s id�t�ll�p�s�nek �rtes�t�se',
      'TicketZoom' => 'Jegy nagy�t�s',

    # Template: AAATicket
      '1 very low' => '1 nagyon kicsi',
      '2 low' => '2 kicsi',
      '3 normal' => '3 norm�l',
      '4 high' => '4 magas',
      '5 very high' => '5 nagyon magas',
      'Action' => 'Akci�',
      'Age' => 'Kor',
      'Article' => 'T�tel',
      'Attachment' => 'Csatol�s',
      'Attachments' => 'Csatol�sok',
      'Bcc' => '',
      'Bounce' => 'Visszapattan�s',
      'Cc' => '',
      'Close' => 'Lez�r�s',
      'closed successful' => 'bez�r�s rendben',
      'closed unsuccessful' => 'bez�r�s sikertelen',
      'Compose' => 'Szerkeszt�s',
      'Created' => 'Elk�sz�tve',
      'Createtime' => 'Elk�sz�lt ',
      'email' => 'E-Mail',
      'eMail' => 'E-Mail',
      'email-external' => 'E-Mail k�ls�',
      'email-internal' => 'E-Mail bels�',
      'Forward' => 'Tov�bb�t�s',
      'From' => 'Kit�l',
      'high' => 'magas',
      'History' => 'T�rt�net',
      'If it is not displayed correctly,' => 'Ha ez nem a megfelel� jav�t�s,',
      'lock' => 'z�rolt',
      'Lock' => 'Z�rolt',
      'low' => 'alacsony',
      'Move' => '�thelyez�s',
      'new' => '�j',
      'normal' => 'norm�l',
      'note-external' => 'k�ls� megjegyz�s',
      'note-internal' => 'bels� megjegyz�s',
      'note-report' => 'Megjegyz�sek lek�r�se',
      'open' => 'nyit�s',
      'Owner' => 'Fel�gyel�',
      'Pending' => 'V�rakoz�s',
      'pending auto close+' => 'automatikus z�r�sra v�rakoz�s+',
      'pending auto close-' => 'automatikus z�r�sra v�rakoz�s-',
      'pending reminder' => 'figyelmeztet�sre v�rakoz�s',
      'phone' => 'Telefon',
      'plain' => '�rthet�',
      'Priority' => 'Priorit�s',
      'Queue' => '�gyek',
      'removed' => 't�r�lve',
      'Sender' => 'K�ld�',
      'sms' => '',
      'State' => 'St�tusz',
      'Subject' => 'T�rgy',
      'This is a' => 'Ez egy',
      'This is a HTML email. Click here to show it.' => 'Ez egy html email. Kattints ide a megjelen�t�shez.',
      'This message was written in a character set other than your own.' => 'Ezt az �zenetet m�s karakterk�szlettel �rt�k mint amit Te haszn�lsz.',
      'Ticket' => 'Jegy',
      'Ticket "%s" created!' => '"%s" jegy l�trehozva!',
      'To' => 'C�mzett',
      'to open it in a new window.' => 'megnyit�sa egy �j ablakban',
      'unlock' => 'kinyit�s',
      'Unlock' => 'Kinyitva',
      'very high' => 'nagyon magas',
      'very low' => 'nagyon alacsony',
      'View' => 'N�zet',
      'webrequest' => 'Webk�rd�s',
      'Zoom' => 'Nagy�t�s',

    # Template: AAAWeekDay
      'Fri' => 'Pen',
      'Mon' => 'Het',
      'Sat' => 'Szo',
      'Sun' => 'Vas',
      'Thu' => 'Csu',
      'Tue' => 'Ked',
      'Wed' => 'Sze',

    # Template: AdminAttachmentForm
      'Add' => 'Hozz�ad�s',
      'Attachment Management' => 'Csatol�sok kezel�se',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'Automatikus v�lasz hozz�ad�sa',
      'Auto Response From' => 'Automatikus v�lasz',
      'Auto Response Management' => 'Automatikus v�laszok kezel�se',
      'Change auto response settings' => 'Automatikus v�lasz be�ll�t�sok m�dos�t�sa',
      'Note' => 'Jegyzet',
      'Response' => 'V�lasz',
      'to get the first 20 character of the subject' => 'kapja meg az els� 20 karaktert a t�rgyb�l',
      'to get the first 5 lines of the email' => 'kapja meg az els� 5 sort az email-b�l',
      'to get the from line of the email' => 'kapja meg a felad� sort az email-b�l',
      'to get the realname of the sender (if given)' => 'kapja meg a felad� val�di nev�t (ha lehets�ges)',
      'to get the ticket id of the ticket' => 'kapja meg a jegy azonos�t�j�t a jegyb�l',
      'to get the ticket number of the ticket' => 'kapja meg a jegy sorsz�m�t a jegyb�l',
      'Type' => 'Be�r�s',
      'Useable options' => 'Haszn�lhat� opci�k',

    # Template: AdminCustomerUserForm
      'Customer User Management' => 'Partner felhaszn�l�k kezel�se',
      'Customer user will be needed to to login via customer panels.' => 'A felhaszn�l�i panel haszn�lat�hoz a partner felhaszn�l�ra lesz sz�ks�g.',
      'Select source:' => 'Forr�s kiv�laszt�sa:',
      'Source' => 'Forr�s',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserGroupChangeForm
      'Change %s settings' => 'V�ltoztatva %s be�ll�t�s',
      'Customer User <-> Group Management' => 'Partner felhaszn�l� <-> Csoportok kezel�se',
      'Full read and write access to the tickets in this group/queue.' => 'Teljes �r�s �s olvas�si jog ehhez a csoport/�gyeknek a jegyekn�l.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Ha nincs kiv�lasztva, akkor nincs jogosults�god ehhez a csoporthoz. (a jegyet nem tudja haszn�lni a felhaszn�l�).',
      'Permission' => 'Jogosults�g',
      'Read only access to the ticket in this group/queue.' => 'Csak olvas�si jogosults�g a csoport/�gyeknek a jegyekn�l.',
      'ro' => 'Csak olvas�s',
      'rw' => '�r�s/Olvas�s',
      'Select the user:group permissions.' => 'Felhaszn�l� kiv�laszt�sa:Csoport jogosults�g.',

    # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Felhaszn�l� v�lt�sa <-> Csoportbe�ll�t�sok',

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => '',
      'Body' => 'Tartalom',
      'OTRS-Admin Info!' => '',
      'Recipents' => 'C�mzettek',
      'send' => 'K�ld�s',

    # Template: AdminEmailSent
      'Message sent to' => '�zenet elk�ldve',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'L�trehoz egy �j csoport, kapcsol�dva m�s csoportok jogosults�g�hoz az adott �gyn�kn�l.',
      'Group Management' => 'Csoportok kezel�se',
      'It\'s useful for ASP solutions.' => 'Ez egy lehets�ges ASP megold�s.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Az admin csoport megkapja az admin ter�letet �s a st�tusz csoport megkapja a st�tusz ter�letet.',

    # Template: AdminLog
      'System Log' => 'Rendszert�rt�net',

    # Template: AdminNavigationBar
      'AdminEmail' => '',
      'Attachment <-> Response' => 'Csatol�s <-> V�lasz',
      'Auto Response <-> Queue' => 'Automatikus v�lasz <-> �gyek',
      'Auto Responses' => 'Automatikus v�laszok',
      'Customer User' => 'Partner Felhaszn�l�',
      'Customer User <-> Groups' => 'Partner <-> Csoport',
      'Email Addresses' => 'E-Mail c�m',
      'Groups' => 'Csoportok',
      'Logout' => 'Kil�p�s',
      'Misc' => 'Egy�b',
      'Notifications' => 'H�rek',
      'PostMaster Filter' => 'Postamester sz�r�',
      'PostMaster POP3 Account' => 'Postamester Email jogosults�g',
      'Responses' => 'V�laszok',
      'Responses <-> Queue' => 'V�laszok <-> �gyek',
      'Select Box' => 'SQL Parancsok',
      'Session Management' => 'Elj�r�sok kezel�se',
      'Status' => '�llapot',
      'System' => 'Rendszer',
      'User <-> Groups' => 'Felhaszn�l� <-> Csoport',

    # Template: AdminNotificationForm
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Configur�i�s be�ll�t�sok (pl. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Notification Management' => '�rtes�t�sek kezel�se',
      'Notifications are sent to an agent or a customer.' => '�rtes�t�s van k�ldve az �gyn�knek vagy a partnernek.',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Opci�k az aktu�lis partner felhaszn�l�i adatokhoz(pl. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Opci�k a aktu�lis felhaszn�l�n�l ha k�ri ezt az elj�r�t. (pl. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Jegy fel�gyel� opci�k (pl. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Az �sszes bej�v� Email egy hozz�f�r�shez ker�l kioszt�sra a kiv�lasztott �gyn�l!',
      'Dispatching' => 'Feloszt�s',
      'Host' => '',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Ha a te jogosults�god bizalmas, az OTRS fejl�ben nem lesz nyitva!',
      'Login' => '',
      'POP3 Account Management' => 'Email jogosults�gok kezel�se',
      'Trusted' => 'Bizalmas',
      'POP3 Account' => 'Email fi�kok',
      
    # Template: AdminPostMasterFilterForm
      'Match' => 'Tal�lat',
      'PostMasterFilter Management' => 'Post�ssz�r�k kezel�se',
      'Set' => 'Be�ll�t�s',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => '�gyek <-> Automatikus v�laszok kezel�se',
      'settings' => 'be�ll�t�sokn�l',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = nem kiterjeszthet�',
      '0 = no unlock' => '0 = nem nyithat�',
      'Customer Move Notify' => 'Partner �rtes�t�s mozgat�sa',
      'Customer Owner Notify' => 'Partner �rtes�t�s fel�gyel�',
      'Customer State Notify' => 'Partner �rtes�t�s �llapota',
      'Escalation time' => 'Kiterjeszt�si id�',
      'Follow up Option' => 'Ellen�rz�si opci�k',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Ha a jegy le van z�rva �s a partner felhaszn�l� �zen a jegynek, akkor az z�rol�sra ker�l a r�gi fel�gyel�nek.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Ha a jegy nem tud v�laszolni a megadott id�ben, csak ez a jegy lesz megjelen�tve.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Ha az �gyn�k z�rolja a jegyet, �s �/Te nem k�ldesz v�laszt a megadott id�pontig, a jegy z�rol�sa megsz�nik �s l�that� lesz minden �gyn�knek.',
      'Key' => 'Kulcs',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS �rtes�t� leveleket k�ld a partnereknek ha a jegyet �thelyezed.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS �rtes�t� leveleket k�ld a partnereknek ha a jegy fel�gyel�je megv�ltozik.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS �rtes�t� leveleket k�ld a partnereknek ha a jegy st�tusza v�ltozik.',
      'Queue Management' => '�gyek kezel�se',
      'Sub-Queue of' => 'Bels� �gyt�l',
      'Systemaddress' => 'Rendszerc�m',
      'The salutation for email answers.' => 'A megsz�l�t�sa az email v�laszoknak.',
      'The signature for email answers.' => 'Al��r�s a v�lasz emailoknak.',
      'Ticket lock after a follow up' => 'Jegy z�rol�sa a nyomonk�vet�s ut�n.',
      'Unlock timeout' => 'Kinyit�s id�t�ll�p�s',
      'Will be the sender address of this queue for email answers.' => 'A k�ld� c�me lesz ehhez az �gyh�z a email v�laszok c�me.',

    # Template: AdminQueueResponsesChangeForm
      'Std. Responses <-> Queue Management' => 'Alapv�laszok <-> �gyek kezel�se',

    # Template: AdminQueueResponsesForm
      'Answer' => 'V�lasz',
      'Change answer <-> queue settings' => 'V�lasz m�dos�t�s <-> �gyek be�ll�t�sok',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Alapv�laszok <-> Alapcsatol�sok kezel�se',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'V�laszok m�dos�t�sa <-> Csatol�s be�ll�t�sok',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'A v�lasz az alap�rtelmezett sz�veg a gyors v�laszokhoz a partnereknek.',
      'Don\'t forget to add a new response a queue!' => 'Nem lehet hozz�adni �j v�laszt az �gyh�z!',
      'Next state' => 'K�vetkez� �llapot',
      'Response Management' => 'V�laszok kezel�se',
      'The current ticket state is' => 'Az aktu�lis jegy �llapota',

    # Template: AdminSalutationForm
      'customer realname' => 'Partner teljesn�v',
      'for agent firstname' => 'kezel�nek csal�di neve',
      'for agent lastname' => 'kezel�nek ut�neve',
      'for agent login' => 'bel�p�si n�v a kezel�nek',
      'for agent user id' => 'felhaszn�l�i azonos�t� a kezel�nek',
      'Salutation Management' => 'Megsz�l�t�sok kezel�se',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Max. oszlopok',

    # Template: AdminSelectBoxResult
      'Limit' => 'Korl�t',
      'Select Box Result' => 'SQL Parancs kiv�laszt�s',
      'SQL' => '',
      'Select Box' => 'SQL Parancsok',

    # Template: AdminSession
      'Agent' => '�gyn�k',
      'kill all sessions' => 'Minden elj�r�s kil�v�se',
      'Overview' => '�ttekint�',
      'Sessions' => 'Elj�r�sok',
      'Uniq' => 'Egyedi',

    # Template: AdminSessionTable
      'kill session' => '�gy kil�v�se',
      'SessionID' => 'Elj�r�s azonos�t�',

    # Template: AdminSignatureForm
      'Signature Management' => 'Al��r�sok kezel�se',

    # Template: AdminStateForm
      'See also' => 'L�sd m�g',
      'State Type' => '�llapot t�pus',
      'System State Management' => 'Rendszer�llapotok kezel�se',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Ellen�rzid le, hogy friss�tve van az alap�rtelmezett st�tusz a Kernel/Config.pm file-ban!',

    # Template: AdminSystemAddressForm
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Minden bej�v� emailhoz az email-t (To:) akarod felosztani a kiv�lasztott �gyben.',
      'Email' => 'E-Mail',
      'Realname' => 'Val�di n�v',
      'System Email Addresses Management' => 'Rendszer email c�m kezel�se',

    # Template: AdminUserForm
      'Don\'t forget to add a new user to groups!' => 'Ne felejtsd el hozz�adni a felhaszn�l�t a csoporthoz!',
      'Firstname' => 'Keresztn�v',
      'Lastname' => 'Csal�di n�v',
      'User Management' => 'Felhaszn�l�k kezel�se',
      'User will be needed to handle tickets.' => 'a felhaszn�l�nak sz�ks�ges a jegyek kezel�s�hez.',

    # Template: AdminUserGroupChangeForm
      'create' => 'k�sz�t�s',
      'move_into' => 'mozgat�s �t',
      'owner' => 'fel�gyel�',
      'Permissions to change the ticket owner in this group/queue.' => 'Jogosults�g a jegy fel�gyel�n�l megv�ltoztat�s�hoz ebben a csoportban/�gyben.',
      'Permissions to change the ticket priority in this group/queue.' => 'Jogosult�g a jegy priorit�snak megv�ltoztat�s�hoz ebben a csoportban/�gyben.',
      'Permissions to create tickets in this group/queue.' => 'Jogosults�g, hogy �j jegyeket k�sz�tsen ebben a csoportban/�gyben.',
      'Permissions to move tickets into this group/queue.' => 'Jogosults�g v�ltoztat�shoz a jegyek �thelyez�s�hez ebben a csoportba/�gybe.',
      'priority' => 'Priorit�s',
      'User <-> Group Management' => 'Felhaszn�l� <-> Csoportok kezel�se',

    # Template: AdminUserGroupForm

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBook
      'Address Book' => 'C�mjegyz�k',
      'Discard all changes and return to the compose screen' => 'Elvet minden v�ltoztat�st �s visszat�r az szerkeszt�k�perny�re',
      'Return to the compose screen' => 'Visszat�r�s a szerkeszt�k�perny�re',
      'Search' => 'Keres�s',
      'The message being composed has been closed.  Exiting.' => 'L�tez� lej�rt �zenet szerkeszt�snek lez�r�s.',
      'This window must be called from compose window' => 'Ez az ablak megh�vja a szerkeszt� ablakot',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Az �zenethez kell c�mzett!',
      'Bounce ticket' => 'Visszapattan� jegy',
      'Bounce to' => 'Visszapattant�s ide',
      'Inform sender' => 'Inform�ci� a k�ld�r�l',
      'Next ticket state' => 'K�vetkez� jegy �llapota',
      'Send mail!' => 'Email k�ld�se!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Kell egy email c�m (pl. kunde@beispiel.de!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'A Te email-od jegy sz�ma "<OTRS_TICKET>" visszapattant "<OTRS_BOUNCE_TO>". Vedd fel a kapcsolatot a rendszergazd�val.',

    # Template: AgentClose
      ' (work units)' => ' (munkater�letek)',
      'A message should have a body!' => 'Az �zenethez sz�veg is kell!',
      'A message should have a subject!' => 'Az �zenethez t�rgy is kell!',
      'Close ticket' => 'Jegy lez�r�sa',
      'Close type' => 'T�pus lez�r�sa',
      'Close!' => 'Lez�r�s!',
      'Note Text' => 'Jegyzet sz�veg',
      'Note type' => 'Jegyzet t�pus',
      'Options' => 'Be�ll�t�sok',
      'Spell Check' => 'Helyes�r�sellen�rz�s',
      'Time units' => 'Id� egys�gek',
      'You need to account time!' => 'Neked kell jogosults�gi id�!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'Az �zenetnek helyes�r�sellen�rz�sen kell �tmennie!',
      'Attach' => 'Csatol�s',
      'Compose answer for ticket' => 'V�lasz szerkeszt�se', 
      'for pending* states' => 'v�rakoz�* st�tusz',
      'Is the ticket answered' => 'Ez egy megv�laszolt jegy',
      'Pending Date' => 'V�rakoz�s d�tuma',

    # Template: AgentCustomer
      'Back' => 'Vissza',
      'Change customer of ticket' => 'Partner v�ltoztat�sa a jegyn�l',
      'CustomerID' => '�gyf�lsz�m#',
      'Search Customer' => 'Partner keres�se',
      'Set customer user and customer id of a ticket' => 'Partner felhaszn�l� �s partner azonos�t� be�ll�t�sa a jegyben',

    # Template: AgentCustomerHistory
      'All customer tickets.' => '�sszes partner jegy.',
      'Customer history' => 'Partner t�rt�net',

    # Template: AgentCustomerMessage
      'Follow up' => 'Nyomonk�vet�s',

    # Template: AgentCustomerView
      'Customer Data' => 'Partner adatok',

    # Template: AgentEmailNew
      'All Agents' => 'Minden �gyn�k',
      'Clear From' => 'Innen: t�rl�s',
      'Compose Email' => 'Email alapj�n-�j jegy',
      'Lock Ticket' => 'Jegy lez�r�sa',
      'new ticket' => '�j jegy',

    # Template: AgentForward
      'Article type' => 'T�tel t�pusa',
      'Date' => 'D�tum',
      'End forwarded message' => 'V�ge a tov�bb�tott �zenetnek',
      'Forward article of ticket' => 'Tov�bb�tott t�tel a jegyben',
      'Forwarded message from' => 'Tov�bb�tott �zenet innen',
      'Reply-To' => 'Kapja m�g',

    # Template: AgentFreeText
      'Change free text of ticket' => 'Szabad sz�veg v�ltoztat�sa a jegyben',
      'Value' => '�rt�k',

    # Template: AgentHistoryForm
      'History of' => 'T�rt�nete a',

    # Template: AgentMailboxNavBar
      'All messages' => 'Minden �zenet',
      'down' => 'le',
      'Mailbox' => 'Postafi�k',
      'New' => '�j',
      'New messages' => '�j �zenetek',
      'Open' => 'Nyit�s',
      'Open messages' => '�zenetek nyit�sa',
      'Order' => 'Rendez�s',
      'Pending messages' => 'V�rakoz� �zenetek',
      'Reminder' => 'Figyelmeztet�s',
      'Reminder messages' => 'Figyelmeztet� �zenet',
      'Sort by' => 'Rendez�s �gy',
      'Tickets' => 'Jegyek',
      'up' => 'fel',

    # Template: AgentMailboxTicket
      '"}' => '',
      '"}","14' => '',

    # Template: AgentMove
      'Move Ticket' => 'Jegy �thelyez�se',
      'New Owner' => '�j fel�gyel�',
      'New Queue' => '�j �gy',
      'Previous Owner' => 'Kor�bbi fel�gyel�',
      'Queue ID' => '�gy azonos�t�',

    # Template: AgentNavigationBar
      'Locked tickets' => 'Z�rolt hibajegyek',
      'new message' => '�j �zenet',
      'Preferences' => 'Be�ll�t�sok',
      'Utilities' => 'Keres�s',

    # Template: AgentNote
      'Add note to ticket' => 'Jegyzet hozz�ad�sa a jegyhez',
      'Note!' => 'Jegyzet!',

    # Template: AgentOwner
      'Change owner of ticket' => 'Jegy fel�gyel�j�nek m�dos�t�sa',
      'Message for new Owner' => '�zenet az �j fel�gyel�nek',

    # Template: AgentPending
      'Pending date' => 'V�rakoz�si d�tum',
      'Pending type' => 'V�rakoz�s t�pusa',
      'Pending!' => 'V�rakoz�s!',
      'Set Pending' => 'V�rakoz�s be�ll�t�s',

    # Template: AgentPhone
      'Customer called' => 'Partner h�v�s',
      'Phone call' => 'Telefonh�v�s',
      'Phone call at %s' => 'Telefonh�v�s innen %s',

    # Template: AgentPhoneNew

    # Template: AgentPlain
      'ArticleID' => 'T�tel azonos�t�',
      'Plain' => 'Egyszer�',
      'TicketID' => 'Jegy azonos�t�',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'V�laszd ki a szok�sos �gyeidet',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Jelsz� m�dos�t�sa',
      'New password' => '�j jelsz�',
      'New password again' => '�j jelsz� �jra',

    # Template: AgentPriority
      'Change priority of ticket' => 'Jegy priorit�s�nak m�dos�t�sa',

    # Template: AgentSpelling
      'Apply these changes' => 'M�dos�t�sok �rv�nyes�t�se',
      'Spell Checker' => 'Helyes�r�sellen�rz�s',
      'spelling error(s)' => 'helyes�r�si hiba(k)',

    # Template: AgentStatusView
      'D' => 'Z',
      'of' => 'kit�l',
      'Site' => 'Oldal',
      'sort downward' => 'Rendez�s lefel�',
      'sort upward' => 'Rendez�s felfel�',
      'Ticket Status' => 'Jegy �llapota',
      'U' => 'A',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLink
      'Link' => '',
      'Link to' => 'Link ide',

    # Template: AgentTicketLocked
      'Ticket locked!' => 'A jegy lez�rva!',
      'Ticket unlock!' => 'A jegy kinyitva!',

    # Template: AgentTicketPrint
      'by' => 'kit�l',

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Jogosults�gi id�',
      'Escalation in' => 'Kiterjeszt�s ebben',

    # Template: AgentUtilSearch
      '(e. g. 10*5155 or 105658*)' => 'pl. 10*5144 vagy 105658*',
      '(e. g. 234321)' => 'pl. 234321',
      '(e. g. U5150)' => 'pl. U5150',
      'and' => '�s',
      'Customer User Login' => 'Partner felhaszn�l� bel�p�s',
      'Delete' => 'T�rl�s',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Teljessz�veg keres�s a t�telben (pl. "Mar*in" oder "Baue*")',
      'No time settings.' => 'Nincs id� be�ll�t�s.',
      'Profile' => 'Profil',
      'Result Form' => 'Eredm�ny �rlap',
      'Save Search-Profile as Template?' => 'Elmented a keres� profilt sablonba?',
      'Search-Template' => 'Keres� sablon',
      'Select' => 'V�laszt�s',
      'Ticket created' => 'Jegy l�trehozva',
      'Ticket created between' => 'L�trehozva a jegyek k�z�tt',
      'Ticket Search' => 'Jegy keres�se',
      'TicketFreeText' => 'Jegy szabadsz�veg',
      'Times' => 'Id�k',
      'Yes, save it with name' => 'Igen, elmentve ezen a n�ven',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Partner t�rt�netben keres�s',
      'Customer history search (e. g. "ID342425").' => 'Partner t�rt�netben keres�s (pl. "ID342425").',
      'No * possible!' => 'Nem "*" lehets�ges!',

    # Template: AgentUtilSearchNavBar
      'Change search options' => 'Keres�si be�ll�t�sok m�dos�t�sa',
      'Results' => 'Eredm�nyek',
      'Search Result' => 'Keres�si eredm�nyek',
      'Total hits' => '�sszes tal�lat',

    # Template: AgentUtilSearchResult
      '"}","15' => '',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultPrintTable
      '"}","30' => '',

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilSearchResultShortTable

    # Template: AgentUtilSearchResultShortTableNotAnswered

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'Minden lez�rt jegyet',
      'All open tickets' => 'Minden nyitott jegyet',
      'closed tickets' => 'lez�rt jegyek',
      'open tickets' => 'nyitott jegyek',
      'or' => 'vagy',
      'Provides an overview of all' => '�ttekint�st ad az �sszesr�l',
      'So you see what is going on in your system.' => '�gy n�zd, mi folyik a rendszerben.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'Nyomonk�vet�s k�sz�t�se',
      'Your own Ticket' => '�ltalad fel�gyelt jegyek',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'V�lasz �r�sa',
      'Contact customer' => 'Partner kapcsolat',
      'phone call' => 'Telefonh�v�s',

    # Template: AgentZoomArticle
      'Split' => 'Megoszt�s',

    # Template: AgentZoomBody
      'Change queue' => '�gy v�ltoztat�s',

    # Template: AgentZoomHead
      'Free Fields' => 'Szabad mez�k',
      'Print' => 'Nyomtat�s',

    # Template: AgentZoomStatus
      '"}","18' => '',

    # Template: CustomerCreateAccount
      'Create Account' => 'Jogosults�g l�trehoz�sa',

    # Template: CustomerError
      'Traceback' => 'Visszak�vet�s',

    # Template: CustomerFAQArticleHistory
      'Edit' => 'Szerkeszt�s',
      'FAQ History' => 'FAQ t�rt�net',

    # Template: CustomerFAQArticlePrint
      'Category' => 'Kateg�ria',
      'Keywords' => 'Kulcssz�',
      'Last update' => 'Utols� friss�t�s',
      'Problem' => 'Probl�ma',
      'Solution' => 'Megold�s',
      'Symptom' => 'Jelens�g',

    # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => 'FAQ rendszer t�rt�net',

    # Template: CustomerFAQArticleView
      'FAQ Article' => 'FAQ T�tel',
      'Modified' => 'M�dos�tva',

    # Template: CustomerFAQOverview
      'FAQ Overview' => 'FAQ �ttekint�',

    # Template: CustomerFAQSearch
      'FAQ Search' => 'FAQ keres�s',
      'Fulltext' => 'Teljessz�veg',
      'Keyword' => 'Kulcssz�',

    # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'FAQ keres�s-eredm�nyek',

    # Template: CustomerFooter
      'Powered by' => 'K�sz�tette',

    # Template: CustomerHeader
      'Contact' => 'Kapcsolat',
      'Home' => '',
      'Online-Support' => '',
      'Products' => 'Term�k',
      'Support' => 'T�mogat�s',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Elfelejtetted a jelszavadat?',
      'Request new password' => '�j jelsz� k�r�se',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => '�j jegy l�trehoz�sa',
      'FAQ' => '',
      'New Ticket' => '�j jegyek',
      'Ticket-Overview' => 'Jegyek-�ttekint�',
      'Welcome %s' => '�dv�z�llek %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView
      'My Tickets' => 'Az �n jegyeim',

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Kattinst ide a hibalista megtekint�s�hez!',

    # Template: FAQArticleDelete
      'FAQ Delete' => 'FAQ t�rl�se',
      'You really want to delete this article?' => 'Biztos, hogy t�r�lni akarod ezt a t�telt?',

    # Template: FAQArticleForm
      'Comment (internal)' => 'Megjegyz�s (bels�)',
      'Filename' => 'File neve',
      'Short Description' => 'R�vid le�r�s',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQCategoryForm
      'FAQ Category' => 'FAQ Kateg�ria',

    # Template: FAQLanguageForm
      'FAQ Language' => 'FAQ nyelv',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: FAQStateForm
      'FAQ State' => 'FAQ �llapot',

    # Template: Footer
      'Top of Page' => 'Lap tetej�re',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => 'Adatb�zis l�trehoz�sa',
      'Drop Database' => 'Adatb�zis t�rl�se',
      'Finished' => 'Befejezve',
      'System Settings' => 'Rendszerbe�ll�t�sok',
      'Web-Installer' => '',

    # Template: InstallerFinish
      'Admin-User' => 'Admin-felhaszn�l�',
      'After doing so your OTRS is up and running.' => 'Ha k�sz az OTRS indul �s fut.',
      'Have a lot of fun!' => 'K�sz�n�m a l�togat�st!',
      'Restart your webserver' => 'Webserver �jraind�t�s',
      'Start page' => 'Start-lap',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Az OTRS haszn�lat�hoz be kell l�pned a k�vetkez� parancssor �rtelmez�be (Termin�l/Shell) root-k�nt.',
      'Your OTRS Team' => 'OTRS Adminisztr�tor',

    # Template: InstallerLicense
      'accept license' => 'Licenc elfogad�sa',
      'don\'t accept license' => 'Licenc elutas�t�sa',
      'License' => 'Licenc',

    # Template: InstallerStart
      'Create new database' => '�j adatb�zis l�trehoz�sa',
      'DB Admin Password' => 'DB Admin jelsz�',
      'DB Admin User' => 'DB Admin felhaszn�l�',
      'DB Host' => 'DB Host',
      'DB Type' => 'DB t�pusa',
      'default \'hot\'' => 'alap�rtelmezett',
      'Delete old database' => 'R�gi adatb�zis t�rl�se',
      'next step' => 'k�vetkez� l�p�s',
      'OTRS DB connect host' => 'OTRS DB kapcsol�dik a host-hoz',
      'OTRS DB Name' => 'OTRS DB n�v',
      'OTRS DB Password' => 'OTRS DB jelsz�',
      'OTRS DB User' => 'OTRS DB felhaszn�l�',
      'your MySQL DB should have a root password! Default is empty!' => 'Te MySQL DB el�r�sedhez jelsz� kell. Az alap�rtelmezett �res!',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Ellen�rizd le az MX rekordot a haszn�lt email c�mben a v�lasz �r�sakor!)',
      '(Email of the system admin)' => '(E-Mail a rendszergazd�nak)',
      '(Full qualified domain name of your system)' => '(Teljes ellen�rz�tt domain n�v a rendszerben)',
      '(Logfile just needed for File-LogModule!)' => '(Logfile sz�ks�ges a File-LogModul sz�m�ra!)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Azonos�t�s a rendszerben. Minden jegyhez �s minden http elj�r�s ezzel a sorsz�mmal indul)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Jegy azonos�t�s. pl. \'Jegy#\', \'H�v�#\' vagy \'Jegyem#\')',
      '(Used default language)' => '(A felhaszn�l� alap�rtelmezett nyelve)',
      '(Used log backend)' => '(Haszn�lt h�tt�r log)',
      '(Used ticket number format)' => '(Nyitott jegyek sorsz�m�nak form�tuma)',
      'CheckMXRecord' => 'MX Rekord ellen�rz�s',
      'Default Charset' => 'Alap�rtelmezett karakterk�szlet',
      'Default Language' => 'Alap�rtelmezett nyelv',
      'Logfile' => 'Log file',
      'LogModule' => 'Log modul',
      'Organization' => 'Szervezet',
      'System FQDN' => '',
      'SystemID' => 'Rendszer azonos�t�',
      'Ticket Hook' => 'Jegy p�c�k',
      'Ticket Number Generator' => 'Jegy sorsz�m gener�tor',
      'Use utf-8 it your database supports it!' => 'Haszn�ld utf-8-at az adatb�zis t�mogat�sokn�l!',
      'Webfrontend' => 'Web-munkafel�let',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Nem jogosult',

    # Template: Notify
      'Info' => '',

    # Template: PrintFooter
      'URL' => '',

    # Template: PrintHeader
      'printed by' => 'Nyomtatta',

    # Template: QueueView
      'All tickets' => 'Minden jegy',
      'Page' => 'Oldal',
      'Queues' => '�gyek',
      'Tickets available' => 'El�rhet� jegyek',
      'Tickets shown' => 'Jegyek mutat�sa',

    # Template: SystemStats
      'Graphs' => 'Grafikon',

    # Template: Test
      'OTRS Test Page' => 'OTRS tesztoldal',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Jegy kiterjeszt�s!',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => 'Jegyzet hozz�ad�sa',

    # Template: Warning

    # Misc
      'Addressbook' => 'C�mjegyz�k',
      'AgentFrontend' => '�gyn�k-Munkafel�let',
      'Article free text' => 'T�tel-Szabadsz�veg',
      'BackendMessage' => 'H�tt�r�zenet',
      'Bottom of Page' => 'Lap alja',
      'Charset' => 'Karakterk�szlet',
      'Charsets' => 'Karakterk�szletek',
      'Closed' => 'Lez�rva',
      'Create' => 'L�trehoz�s',
      'CustomerUser' => 'Partner',
      'New ticket via call.' => '�j jegy a h�v�son kereszt�l.',
      'New user' => '�j felhaszn�l�',
      'Search in' => 'Keres�s itt',
      'Show all' => 'Mindent mutat',
      'Shown Tickets' => 'Jegyek megmutat�sa',
      'System Charset Management' => 'Rendszer karakterk�szlet kezel�se',
      'Time till escalation' => 'Id� (hat�rid�)',
      'With Priority' => 'Jogosults�ggal',
      'With State' => '�lapottal',
      'invalid-temporarily' => 'hib�s-ideiglenesen',
      'search' => 'Keres�s',
      'store' => 'k�szlet',
      'tickets' => 'Jegyek',
      'valid' => '�rv�nyes',
      'CreateTicket' => 'Jegyl�trehoz�s',
    );

    # $$STOP$$
    $Self->{Translation} = \%Hash;
}
# --
1;
