# --
# Kernel/Language/hu.pm - provides de language translation
# Copyright (C) 2004 RLAN Internet <MAGIC at rlan.hu>
# --
# $Id: hu.pm,v 1.4 2004-08-24 08:20:42 martin Exp $
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
$VERSION = '$Revision: 1.4 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Tue Aug 24 10:17:13 2004 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', 'iso-8859-15', ];
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
      '...Back' => '',
      '10 minutes' => '10 Perc',
      '15 minutes' => '15 Perc',
      'Added User "%s"' => '',
      'AddLink' => 'Link hozz�ad�sa',
      'Admin-Area' => 'Admin ter�let',
      'agent' => '�gyn�k',
      'Agent-Area' => '�gyn�k-ter�let',
      'all' => '�sszes',
      'All' => '�sszes',
      'Attention' => 'Figyelem',
      'Back' => 'Vissza',
      'before' => 'el�tt',
      'Bug Report' => 'Hibajelent�s',
      'Calendar' => '',
      'Cancel' => 'M�gsem',
      'change' => 'v�ltoztat',
      'Change' => 'V�ltoztat',
      'change!' => 'V�ltoztat!',
      'click here' => 'kattints ide',
      'Comment' => 'Megjegyz�s',
      'Contract' => '',
      'Crypt' => '',
      'Crypted' => '',
      'Customer' => '�gyf�l',
      'customer' => '�gyf�l',
      'Customer Info' => '�gyf�l Info',
      'day' => 'nap',
      'day(s)' => 'nap',
      'days' => 'nap',
      'description' => 'le�r�s',
      'Description' => 'Le�r�s',
      'Directory' => '',
      'Dispatching by email To: field.' => 'Feloszt�s email c�mzett mez� szerint.',
      'Dispatching by selected Queue.' => 'Feloszt�s a kiv�lasztott �gy szerint.',
      'Don\'t show closed Tickets' => 'Ne jelen�tse meg a lez�rt jegyeket.',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Ne dolgozzon az 1-es felhaszn�l�val (Rendszer jogosults�g)! Hozzon l�tre �j felhaszn�l�t!',
      'Done' => 'K�sz',
      'end' => 'v�ge',
      'Error' => 'Hiba',
      'Example' => 'P�lda',
      'Examples' => 'P�lda',
      'Facility' => 'K�pess�g',
      'FAQ-Area' => 'GYIK ter�let',
      'Feature not active!' => 'K�pess�g nem akt�v!',
      'go' => 'ind�tsd',
      'go!' => 'Ind�tsd!',
      'Group' => 'Csoport',
      'History::AddNote' => '',
      'History::Bounce' => '',
      'History::CustomerUpdate' => '',
      'History::EmailAgent' => '',
      'History::EmailCustomer' => '',
      'History::FollowUp' => '',
      'History::Forward' => '',
      'History::Lock' => '',
      'History::LoopProtection' => '',
      'History::Misc' => '',
      'History::Move' => '',
      'History::NewTicket' => '',
      'History::OwnerUpdate' => '',
      'History::PhoneCallAgent' => '',
      'History::PhoneCallCustomer' => '',
      'History::PriorityUpdate' => '',
      'History::Remove' => '',
      'History::SendAgentNotification' => '',
      'History::SendAnswer' => '',
      'History::SendAutoFollowUp' => '',
      'History::SendAutoReject' => '',
      'History::SendAutoReply' => '',
      'History::SendCustomerNotification' => '',
      'History::SetPendingTime' => '',
      'History::StateUpdate' => '',
      'History::TicketFreeTextUpdate' => '',
      'History::TicketLinkAdd' => '',
      'History::TicketLinkDelete' => '',
      'History::TimeAccounting' => '',
      'History::Unlock' => '',
      'History::WebRequestCustomer' => '',
      'Hit' => 'Tal�lat',
      'Hits' => 'Tal�lat',
      'hour' => '�ra',
      'hours' => '�ra',
      'Ignore' => 'Figyelmen k�v�l hagy',
      'invalid' => 'hib�s',
      'Invalid SessionID!' => 'Hib�s SessionID!',
      'Language' => 'Nyelv',
      'Languages' => 'Nyelv',
      'last' => 'utols�',
      'Line' => 'Vonal',
      'Lite' => 'Egyszer�',
      'Login failed! Your username or password was entered incorrectly.' => 'Bel�p�s sikertelen! Hib�san adta meg a felhaszn�l�i nev�t vagy jelszav�t.',
      'Logout successful. Thank you for using OTRS!' => 'Kil�p�s rendben! K�sz�nj�k, hogy az OTRS-t haszn�lja!',
      'Message' => '�zenet',
      'minute' => 'Perc',
      'minutes' => 'perc',
      'Module' => 'Modul',
      'Modulefile' => 'Modulfile',
      'month(s)' => 'h�nap',
      'Name' => 'N�v',
      'New Article' => '�j cikk',
      'New message' => '�j �zenet',
      'New message!' => '�j �zenet!',
      'Next' => '',
      'Next...' => '',
      'No' => 'Nem',
      'no' => 'nem',
      'No entry found!' => 'Nem tal�lhat� t�tel!',
      'No Permission!' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'No suggestions' => 'Nincsenek javaslatok',
      'none' => 'semmi',
      'none - answered' => 'semmi - megv�laszolt',
      'none!' => 'semmi!',
      'Normal' => 'Norm�l',
      'off' => 'ki',
      'Off' => 'Ki',
      'On' => 'Be',
      'on' => 'be',
      'Online Agent: %s' => '',
      'Online Customer: %s' => '',
      'Password' => 'Jelsz�',
      'Passwords dosn\'t match! Please try it again!' => '',
      'Pending till' => 'V�rakoz�s am�g',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'K�rj�k v�laszoljon erre(ezekre) a jegy(ek)re hogy visszat�rhessen a norm�l �gyek n�zethez!',
      'Please contact your admin' => 'K�rj�k vegye fel a kapcsolatot a rendszergazd�j�val',
      'please do not edit!' => 'k�rj�k ne jav�tsa!',
      'possible' => 'lehets�ges',
      'Preview' => 'El�n�zet',
      'QueueView' => '�gyekN�zet',
      'reject' => 'elutas�t',
      'replace with' => 'csere ezzel',
      'Reset' => 'Alap�ll�s',
      'Salutation' => 'Megsz�l�t�s',
      'Session has timed out. Please log in again.' => 'Az �gymenet id�t�ll�p�smiatt befejez�d�tt. K�rj�k l�pjen be �jra.',
      'Show closed Tickets' => 'Mutasd a lez�rt jegyeket',
      'Sign' => '',
      'Signature' => 'Al��r�s',
      'Signed' => '',
      'Size' => '',
      'Sorry' => 'Sajn�lom',
      'Stats' => 'Statisztika',
      'Subfunction' => 'Alfunkci�',
      'submit' => 'elk�ld',
      'submit!' => 'Elk�ld!',
      'system' => 'rendszer',
      'Take this Customer' => '',
      'Take this User' => 'Foglalt ennek a felhaszn�l�nak',
      'Text' => 'Sz�veg',
      'The recommended charset for your language is %s!' => 'Az aj�nlott karakterk�szlet az �n nyelv�n�l %s!',
      'Theme' => 'T�ma',
      'There is no account with that login name.' => 'Azzal a n�vvel nincs azonos�t�.',
      'Ticket Number' => '',
      'Timeover' => 'K�s�s',
      'To: (%s) replaced with database email!' => 'C�mzett: (%s) fel�l�rva az adatb�zis c�mmel!',
      'top' => 'Teteje',
      'Type' => 'T�pus',
      'update' => 'friss�t',
      'Update' => 'Friss�t',
      'update!' => 'Friss�t!',
      'Upload' => '',
      'User' => 'Felhaszn�l�',
      'Username' => 'Felhaszn�l�n�v',
      'Valid' => '�rv�nyes',
      'Warning' => 'Figyelem',
      'week(s)' => 'h�t',
      'Welcome to OTRS' => '�dv�zli az OTRS',
      'Word' => 'Sz�',
      'wrote' => '�rta',
      'year(s)' => '�v',
      'Yes' => 'Igen',
      'yes' => 'igen',
      'You got new message!' => '�j �zenete �rkezett!',
      'You have %s new message(s)!' => '%s �j �zenete van!',
      'You have %s reminder ticket(s)!' => '%s eml�keztet� jegye van!',

    # Template: AAAMonth
      'Apr' => '�pr',
      'Aug' => 'Aug',
      'Dec' => 'Dec',
      'Feb' => 'Feb',
      'Jan' => 'Jan',
      'Jul' => 'J�l',
      'Jun' => 'J�n',
      'Mar' => 'M�r',
      'May' => 'M�j',
      'Nov' => 'Nov',
      'Oct' => 'Okt',
      'Sep' => 'Sze',

    # Template: AAAPreferences
      'Closed Tickets' => 'Lez�rt jegyek',
      'CreateTicket' => 'Jegyl�trehoz�s',
      'Custom Queue' => 'Egyedi �gyek',
      'Follow up notification' => 'V�laszlev�l �rtes�t�s',
      'Frontend' => 'Munkafel�let',
      'Mail Management' => 'Email kezel�s',
      'Max. shown Tickets a page in Overview.' => 'Max. megjelen�tett jegy az �ttekint�sn�l.',
      'Max. shown Tickets a page in QueueView.' => 'Max. megjelen�tett jegy az �gyek n�zetn�l.',
      'Move notification' => '�thelyez�s �rtes�t�s',
      'New ticket notification' => '�j jegy �rtes�t�s',
      'Other Options' => 'Egy�b be�ll�t�sok',
      'PhoneView' => 'TelefonN�zet',
      'Preferences updated successfully!' => 'Be�ll�t�sok sikeresen friss�tve!',
      'QueueView refresh time' => '�gyekN�zet friss�t�si id�',
      'Screen after new ticket' => '�j jegy ut�ni k�perny�',
      'Select your default spelling dictionary.' => 'V�lassza ki az alap�rtelmezett helyes�r�sellen�rz� sz�t�rat.',
      'Select your frontend Charset.' => 'V�lassza ki a munkafel�let karakterk�szlet�t.',
      'Select your frontend language.' => 'V�lassza ki a munkafel�let nyelv�t.',
      'Select your frontend QueueView.' => 'V�lassza ki a munkafel�let �gyek-n�zet�t.',
      'Select your frontend Theme.' => 'V�lassza ki a munkafel�let st�lus�t.',
      'Select your QueueView refresh time.' => 'V�lassza ki az �gyekN�zet friss�t�si idej�t.',
      'Select your screen after creating a new ticket.' => 'V�lassza ki a k�perny�t �j jegy l�trehoz�sa ut�n.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'K�ldj�n �rtes�t�st ha az �gyf�l v�laszol �s �n vagyok a tulajdonosa a jegynek.',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Send me a notification if a ticket is unlocked by the system.' => 'K�ldj�n �rtes�t�st ha a jegy z�rol�s�t a renszer feloldotta.',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Show closed tickets.' => 'Mutasd a lez�rt jegyeket.',
      'Spelling Dictionary' => 'Helyes�r�s-ellen�rz� sz�t�r',
      'Ticket lock timeout notification' => 'Jegyz�rol�s-lej�rat �rtes�t�s',
      'TicketZoom' => 'JegyNagy�t�s',

    # Template: AAATicket
      '1 very low' => '1 nagyon alacsony',
      '2 low' => '2 alacsony',
      '3 normal' => '3 norm�l',
      '4 high' => '4 magas',
      '5 very high' => '5 nagyon magas',
      'Action' => 'M�velet',
      'Age' => 'Kor',
      'Article' => 'Cikk',
      'Attachment' => 'Csatol�s',
      'Attachments' => 'Csatol�s',
      'Bcc' => 'Vakm�solat',
      'Bounce' => 'Visszak�ld',
      'Cc' => 'M�solat',
      'Close' => 'Lez�r',
      'closed' => '',
      'closed successful' => 'sikeresen lez�rva',
      'closed unsuccessful' => 'sikertelen�l lez�rva',
      'Compose' => 'K�sz�t',
      'Created' => 'Elk�sz�tve',
      'Createtime' => 'Elk�sz�lt ',
      'email' => 'email',
      'eMail' => 'eMail',
      'email-external' => 'k�ls� email',
      'email-internal' => 'bels� email',
      'Forward' => 'Tov�bb�t',
      'From' => 'Felad�',
      'high' => 'magas',
      'History' => 'T�rt�net',
      'If it is not displayed correctly,' => 'Ha nem helyesen jelent meg,',
      'lock' => 'z�rolt',
      'Lock' => 'Z�rol',
      'low' => 'alacsony',
      'Move' => '�thelyez',
      'new' => '�j',
      'normal' => 'norm�l',
      'note-external' => 'k�ls� jegyzet',
      'note-internal' => 'bels� jegyzet',
      'note-report' => 'jegyzet jelent�s',
      'open' => 'nyitva',
      'Owner' => 'Tulajdonos',
      'Pending' => 'V�rakozik',
      'pending auto close+' => 'automatikus z�r�sra v�rakozik+',
      'pending auto close-' => 'automatikus z�r�sra v�rakozik-',
      'pending reminder' => 'eml�keztet�re v�rakozik',
      'phone' => 'telefon',
      'plain' => 'sima',
      'Priority' => 'S�rg�ss�g',
      'Queue' => '�gyek',
      'removed' => 't�r�lve',
      'Sender' => 'K�ld�',
      'sms' => 'sms',
      'State' => '�llapot',
      'Subject' => 'T�rgy',
      'This is a' => 'Ez egy',
      'This is a HTML email. Click here to show it.' => 'Ez egy HTML email. Kattintson ide a megtekint�shez.',
      'This message was written in a character set other than your own.' => 'Ezt az �zenetet m�s karakterk�szlettel �rt�k mint amit �n haszn�l.',
      'Ticket' => 'Jegy',
      'Ticket "%s" created!' => 'A "%s" jegy l�trehozva!',
      'To' => 'C�mzett',
      'to open it in a new window.' => 'hogy megnyissa �j ablakban.',
      'Unlock' => 'Felold',
      'unlock' => 'feloldva',
      'very high' => 'nagyon magas',
      'very low' => 'nagyon alacsony',
      'View' => 'N�zet',
      'webrequest' => 'webk�r�s',
      'Zoom' => 'Nagy�t',

    # Template: AAAWeekDay
      'Fri' => 'P�n',
      'Mon' => 'H�t',
      'Sat' => 'Szo',
      'Sun' => 'Vas',
      'Thu' => 'Cs�',
      'Tue' => 'Ked',
      'Wed' => 'Sze',

    # Template: AdminAttachmentForm
      'Add' => 'Hozz�ad',
      'Attachment Management' => 'Csatol�s kezel�se',

    # Template: AdminAutoResponseForm
      'Auto Response From' => 'Automatikus v�lasz felad�nak',
      'Auto Response Management' => 'Automatikus v�lasz kezel�nek',
      'Note' => 'Jegyzet',
      'Response' => 'V�lasz',
      'to get the first 20 character of the subject' => 'hogy megkapja az els� 20 karaktert a t�rgyb�l',
      'to get the first 5 lines of the email' => 'hogy megkapja az els� 5 sort az email-b�l',
      'to get the from line of the email' => 'hogy megkapja a felad�t az email-b�l',
      'to get the realname of the sender (if given)' => 'hogy megkapja a felad� val�di nev�t (ha lehets�ges)',
      'to get the ticket id of the ticket' => 'hogy megkapja a jegyazonos�t�t a jegyb�l',
      'to get the ticket number of the ticket' => 'hogy megkapja a jegysorsz�mot a jegyb�l',
      'Useable options' => 'Haszn�lhat� opci�k',

    # Template: AdminCustomerUserForm
      'Customer User Management' => '�gyf�l felhaszn�l�k kezel�se',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => '',
      'Result' => '',
      'Search' => 'Keres�s',
      'Search for' => '',
      'Select Source (for add)' => '',
      'Source' => 'Forr�s',
      'The message being composed has been closed.  Exiting.' => 'Az �ppen elk�sz�lt lev�l lez�r�sra ker�lt. Kil�p�s.',
      'This values are read only.' => '',
      'This values are required.' => '',
      'This window must be called from compose window' => 'Ezt az ablakot a szerkeszt� ablakb�l kell h�vni',

    # Template: AdminCustomerUserGroupChangeForm
      'Change %s settings' => '%s be�ll�t�sainak m�dos�t�sa',
      'Customer User <-> Group Management' => '�gyf�l felhaszn�l� <-> Csoportok kezel�se',
      'Full read and write access to the tickets in this group/queue.' => 'Teljes �r�s �s olvas�si jog a jegyekhez ebben a csoportban/�gyben.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Ha nincs semmi kiv�lasztva, akkor nincsenek jogosults�gok ebben a csoportban (a jegyek nem lesznek el�rhet�k a felhaszn�l�nak).',
      'Permission' => 'Jogosults�g',
      'Read only access to the ticket in this group/queue.' => 'Csak olvas�si jogosults�g a jegyekhez ebben a csoportban/�gyben.',
      'ro' => 'Csak olvas�s',
      'rw' => '�r�s/Olvas�s',
      'Select the user:group permissions.' => 'A felhaszn�l�:csoport jogok kiv�laszt�sa.',

    # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'A felhaszn�l� <-> csoport be�ll�t�sok megv�ltoztat�sa',

    # Template: AdminEmail
      'Admin-Email' => 'Kezel�-Email',
      'Body' => 'T�rzs',
      'OTRS-Admin Info!' => 'OTRS-Kezel� Info!',
      'Recipents' => 'C�mzettek',
      'send' => 'k�ld',

    # Template: AdminEmailSent
      'Message sent to' => '�zenet elk�ldve',

    # Template: AdminGenericAgent
      '(e. g. 10*5155 or 105658*)' => 'pl. 10*5144 vagy 105658*',
      '(e. g. 234321)' => 'pl. 234321',
      '(e. g. U5150)' => 'pl. U5150',
      '-' => '',
      'Add Note' => 'Megjegyz�s hozz�ad�sa',
      'Agent' => '�gyn�k',
      'and' => '�s',
      'CMD' => '',
      'Customer User Login' => '�gyf�l felhaszn�l� bel�p�s',
      'CustomerID' => '�gyf�lsz�m#',
      'CustomerUser' => '�gyf�l',
      'Days' => '',
      'Delete' => 'T�r�l',
      'Delete tickets' => '',
      'Edit' => 'Szerkeszt',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Teljessz�veg keres�s a cikkben (pl. "Mar*in" oder "Baue*")',
      'GenericAgent' => '',
      'Hours' => '',
      'Job-List' => '',
      'Jobs' => '',
      'Last run' => '',
      'Minutes' => '',
      'Modules' => '',
      'New Agent' => '',
      'New Customer' => '',
      'New Owner' => '�j tulajdonos',
      'New Priority' => '',
      'New Queue' => '�j �gy',
      'New State' => '',
      'New Ticket Lock' => '',
      'No time settings.' => 'Nincs id�be�ll�t�s.',
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
      'Ticket created' => 'Jegy l�trehozva',
      'Ticket created between' => 'Jegy l�trehozva k�z�tt�k:',
      'Ticket Lock' => '',
      'TicketFreeText' => 'Jegy szabadsz�veg',
      'Times' => 'Id�k',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => '',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Hozzon l�tre �j csoportot a k�l�nb�z� �gyn�k csoportok (pl. beszerz� oszt�ly, t�mogat� oszt�ly, elad� oszt�ly, ...) hozz�f�r�si jogainak kezel�s�hez.',
      'Group Management' => 'Csoport kezel�s',
      'It\'s useful for ASP solutions.' => 'Ez hasznos ASP megold�sokhoz.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Az admin csoport megkapja az admin ter�letet �s a st�tusz csoport megkapja a st�tusz ter�letet.',

    # Template: AdminLog
      'System Log' => 'Rendszernapl�',
      'Time' => '',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Kezel�Email',
      'Attachment <-> Response' => 'Csatol�s <-> V�lasz',
      'Auto Response <-> Queue' => 'Automatikus v�lasz <-> �gyek',
      'Auto Responses' => 'Automatikus v�laszok',
      'Customer User' => '�gyf�l felhaszn�l�',
      'Customer User <-> Groups' => '�gyf�l felhaszn�l� <-> Csoportok',
      'Email Addresses' => 'Email c�mek',
      'Groups' => 'Csoportok',
      'Logout' => 'Kil�p',
      'Misc' => 'Egy�b',
      'Notifications' => '�rtes�t�sek',
      'PGP Keys' => '',
      'PostMaster Filter' => 'PostaMester sz�r�',
      'PostMaster POP3 Account' => 'PostaMester POP3 azonos�t�',
      'Responses' => 'V�laszok',
      'Responses <-> Queue' => 'V�laszok <-> �gyek',
      'Role' => '',
      'Role <-> Group' => '',
      'Role <-> User' => '',
      'Roles' => '',
      'Select Box' => 'SQL Parancsok',
      'Session Management' => 'Folyamatkezel�s',
      'SMIME Certificates' => '',
      'Status' => '�llapot',
      'System' => 'Rendszer',
      'User <-> Groups' => 'Felhaszn�l� <-> Csoportok',

    # Template: AdminNotificationForm
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Be�ll�t�s opci�k (pl. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Notification Management' => '�rtes�t�skezel�s',
      'Notifications are sent to an agent or a customer.' => 'Az �rtes�t�sek �gyn�knek vagy �gyf�lnek ker�lnek elk�ld�sre.',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Opci�k az aktu�lis �gyf�l felhaszn�l�i adatokhoz (pl. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Opci�k a aktu�lis felhaszn�l�n�l aki k�rte ezt az elj�r�st. (pl. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Jegy tulajdonos opci�k (pl. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',

    # Template: AdminPGPForm
      'Bit' => '',
      'Expires' => '',
      'File' => '',
      'Fingerprint' => '',
      'FIXME: WHAT IS PGP?' => '',
      'Identifier' => '',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Key' => 'Kulcs',
      'PGP Key Management' => '',

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Az �sszes egy azonos�t�val rendelkez� bej�v� email egy kiv�lasztott �gyn�lh�z lesz rendelve!',
      'Dispatching' => 'Hozz�rendel�s',
      'Host' => 'Gazda',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',
      'POP3 Account Management' => 'POP3 azonos�t� kezel�se',
      'Trusted' => 'Megb�zhat�',

    # Template: AdminPostMasterFilter
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'Filtername' => '',
      'Header' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',
      'Match' => 'Egyez�s',
      'PostMaster Filter Management' => '',
      'Set' => 'Be�ll�t',
      'Value' => '�rt�k',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => '�gyek <-> Automatikus v�lasz kezel�s',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = nincs eszkal�ci�',
      '0 = no unlock' => '0 = nincs felold�s',
      'Customer Move Notify' => '�gyf�l �rtes�t�s mozgat�skor',
      'Customer Owner Notify' => '�gyf�l �rtes�t�s tulajdonsov�lt�skor',
      'Customer State Notify' => '�gyf�l �rtes�t�s �llapotv�ltoz�skor',
      'Escalation time' => 'Eszkal�ci� id�',
      'Follow up Option' => 'V�lasz opci�k',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Ha a jegy le van z�rva �s az �gyf�l v�laszol a jegyre, akkor az z�rol�sra ker�l a r�gi tulajdonosnak.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Ha a jegy nem ker�l megv�laszol�sra a megadott id�n bel�l, csak ez a jegy lesz megjelen�tve.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Ha az �gyn�k z�rolja a jegyet �s nem k�ld v�laszt ezen id�n bel�l, a jegy z�rol�sa megsz�nik. �gy a jegy l�that� lesz minden �gyn�knek.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy �thelyez�sre ker�lt.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy tulajdonosa megv�ltozott.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy �llapota megv�ltozott.',
      'Queue Management' => '�gyek kezel�se',
      'Sub-Queue of' => 'Al-�gye a(z)',
      'Systemaddress' => 'Rendszerc�m',
      'The salutation for email answers.' => 'A megsz�l�t�s az email v�laszokhoz.',
      'The signature for email answers.' => 'Az al��r�s a v�lasz emailekhez.',
      'Ticket lock after a follow up' => 'Jegy z�rol�sa v�lasz �rkez�se ut�n.',
      'Unlock timeout' => 'Felold�s id�t�ll�p�s',
      'Will be the sender address of this queue for email answers.' => 'Enn�l az �gyn�l ez lesz a felad� email v�laszokhoz.',

    # Template: AdminQueueResponsesChangeForm
      'Std. Responses <-> Queue Management' => 'Alap v�laszok <-> �gyek kezel�se',

    # Template: AdminQueueResponsesForm
      'Answer' => 'V�lasz',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Alap v�laszok <-> Alap csatol�sok kezel�se',

    # Template: AdminResponseAttachmentForm

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Egy reakci� az alap�rtelmezett sz�veg gyors v�laszokhoz (az alap�rtelmezett sz�veggel) az �gyfeleknek.',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'Don\'t forget to add a new response a queue!' => 'Ne felejtsen el �j reakci�t hozz�adni az �gyh�z!',
      'Next state' => 'K�vetkez� �llapot',
      'Response Management' => 'Reakci� kezel�s',
      'The current ticket state is' => 'A jegy aktu�lis �llapota',
      'Your email address is new' => '',

    # Template: AdminRoleForm
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',
      'Role Management' => '',

    # Template: AdminRoleGroupChangeForm
      'create' => 'k�sz�t',
      'move_into' => 'mozgat',
      'owner' => 'tulajdonos',
      'Permissions to change the ticket owner in this group/queue.' => 'Jogosults�gok a jegy tulajdonos�nak megv�ltoztat�s�hoz ebben a csoportban/�gyben.',
      'Permissions to change the ticket priority in this group/queue.' => 'Jogosult�gok a jegy priorit�snak megv�ltoztat�s�hoz ebben a csoportban/�gyben.',
      'Permissions to create tickets in this group/queue.' => 'Jogosults�gok �j jegyek l�trehoz�s�hoz ebben a csoportban/�gyben.',
      'Permissions to move tickets into this group/queue.' => 'Jogosults�gok jegyek �thelyez�s�hez ebbe a csoportba/�gybe.',
      'priority' => 's�rg�ss�g',
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
      'customer realname' => '�gyf�l val�di n�v',
      'for agent firstname' => '�gyn�k keresztn�vhez',
      'for agent lastname' => '�gyn�k csal�din�vhez',
      'for agent login' => '�gyn�k bel�p�s�hez',
      'for agent user id' => '�gyn�k felhaszn�l� azonos�t�j�hoz',
      'Salutation Management' => 'Megsz�l�t�s kezel�s',

    # Template: AdminSelectBoxForm
      'Limit' => 'Korl�t',
      'SQL' => 'SQL',

    # Template: AdminSelectBoxResult
      'Select Box Result' => 'SQL Parancs eredm�ny',

    # Template: AdminSession
      'kill all sessions' => 'Minden elj�r�s kil�v�se',
      'kill session' => 'folyamat le�ll�t�sa',
      'Overview' => '�ttekint�',
      'Session' => '',
      'Sessions' => 'Elj�r�sok',
      'Uniq' => 'Egyedi',

    # Template: AdminSignatureForm
      'Signature Management' => 'Al��r�s kezel�s',

    # Template: AdminStateForm
      'See also' => 'L�sd m�g',
      'State Type' => '�llapot t�pus',
      'System State Management' => 'Rendszer�llapot kezel�s',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Figyeljen oda, hogy az Kernel/Config.pm f�jlban is friss�tse az alap�rtelmezett �llapotokat!',

    # Template: AdminSystemAddressForm
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Az �sszes bej�v� email ezzel az "Email"-el (C�mzett:) a kiv�lasztott �gyh�z lesz rendelve!',
      'Email' => 'Email',
      'Realname' => 'Val�di n�v',
      'System Email Addresses Management' => 'Rendszer email c�mek kezel�se',

    # Template: AdminUserForm
      'Don\'t forget to add a new user to groups!' => 'Ne felejtsen el �j felhaszn�l�t hozz�adni a csoportokhoz!',
      'Firstname' => 'Keresztn�v',
      'Lastname' => 'Csal�di n�v',
      'User Management' => 'Felhaszn�l� kezel�s',
      'User will be needed to handle tickets.' => 'Felhaszn�l� kell a jegyek kezel�s�hez.',

    # Template: AdminUserGroupChangeForm
      'User <-> Group Management' => 'Felhaszn�l� <-> Csoport kezel�s',

    # Template: AdminUserGroupForm

    # Template: AgentBook
      'Address Book' => 'C�mjegyz�k',
      'Discard all changes and return to the compose screen' => 'Minden v�ltoztat�s megsemmis�t�se �s visszat�r�s a szerkeszt�k�perny�re',
      'Return to the compose screen' => 'Visszat�r�s a szerkeszt�k�perny�re',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Egy �zenethez kellene legyen c�mzett!',
      'Bounce ticket' => 'Jegy visszak�ld�se',
      'Bounce to' => 'Visszak�ld�s ide:',
      'Inform sender' => 'K�ld� t�j�koztat�sa',
      'Next ticket state' => 'A jegy k�vetkez� �llapota',
      'Send mail!' => 'Email k�ld�se!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Kell egy email c�m (pl. customer@example.com) c�mzettnek!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Az �n "<OTRS_TICKET>" sz�m� jegyhez rendelt emailje visszak�ld�sre ker�lt a "<OTRS_BOUNCE_TO>" c�mre. Vegye fel ezzel a c�mmel a kapcsolatot tov�bbi inform�ci�k�rt.',

    # Template: AgentBulk
      '$Text{"Note!' => '',
      'A message should have a subject!' => 'Egy �zenetnek kell legyen t�rgya!',
      'Note type' => 'Jegyzet t�pus',
      'Note!' => 'Megjegyz�s!',
      'Options' => 'Be�ll�t�sok',
      'Spell Check' => 'Helyes�r�sellen�rz�s',
      'Ticket Bulk Action' => '',

    # Template: AgentClose
      ' (work units)' => ' (munkaegys�g)',
      'A message should have a body!' => 'Egy �zenetnek kell legyen t�rzse!',
      'Close ticket' => 'Jegy lez�r�sa',
      'Close type' => 'T�pus lez�r�sa',
      'Close!' => 'Lez�r!',
      'Note Text' => 'Jegyzet sz�veg',
      'Time units' => 'Id� egys�gek',
      'You need to account time!' => 'El kell sz�molnia az id�vel!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'Az �zenetnek helyes�r�sellen�rz�sen kell �tmennie!',
      'Attach' => 'Csatol',
      'Compose answer for ticket' => 'V�laszad�s a jegyre',
      'for pending* states' => 'v�rakoz�* st�tuszhoz',
      'Is the ticket answered' => 'Megv�laszolt-e a jegy',
      'Pending Date' => 'V�rakoz�s d�tuma',

    # Template: AgentCrypt

    # Template: AgentCustomer
      'Change customer of ticket' => 'A jegy �gyfel�nek megv�ltoztat�sa',
      'Search Customer' => '�gyf�l keres�se',
      'Set customer user and customer id of a ticket' => 'A jegy �gyf�l felhaszn�l�j�nak �s �gyf�l azonos�t�j�nak megbe�ll�t�sa',

    # Template: AgentCustomerHistory
      'All customer tickets.' => '�sszes �gyf�l jegy.',
      'Customer history' => '�gyf�l t�rt�net',

    # Template: AgentCustomerMessage
      'Follow up' => 'V�lasz',

    # Template: AgentCustomerView
      'Customer Data' => '�gyf�l adatok',

    # Template: AgentEmailNew
      'All Agents' => 'Minden �gyn�k',
      'Clear To' => '',
      'Compose Email' => '�j Email �r�sa',
      'new ticket' => '�j jegy',

    # Template: AgentForward
      'Article type' => 'Cikk t�pusa',
      'Date' => 'D�tum',
      'End forwarded message' => 'V�ge a tov�bb�tott �zenetnek',
      'Forward article of ticket' => 'Tov�bb�tott cikk a jegyben',
      'Forwarded message from' => 'Tov�bb�tott �zenet innen',
      'Reply-To' => 'V�lasz-Ide',

    # Template: AgentFreeText
      'Change free text of ticket' => 'Szabad sz�veg v�ltoztat�sa a jegyben',

    # Template: AgentHistoryForm
      'History of' => 'T�rt�nete ennek:',

    # Template: AgentHistoryRow

    # Template: AgentInfo
      'Info' => 'Info',

    # Template: AgentLookup
      'Lookup' => '',

    # Template: AgentMailboxNavBar
      'All messages' => 'Minden �zenet',
      'down' => 'le',
      'Mailbox' => 'Postafi�k',
      'New' => '�j',
      'New messages' => '�j �zenetek',
      'Open' => 'Nyitva',
      'Open messages' => 'Nyitott �zenetek',
      'Order' => 'Sorrend',
      'Pending messages' => 'V�rakoz� �zenetek',
      'Reminder' => 'Eml�keztet�',
      'Reminder messages' => 'Eml�keztet� �zenetek',
      'Sort by' => 'Rendez�s �gy',
      'Tickets' => 'Jegyek',
      'up' => 'fel',

    # Template: AgentMailboxTicket
      '"}' => '}',
      '"}","14' => '"}","14',
      'Add a note to this ticket!' => '',
      'Change the ticket customer!' => '',
      'Change the ticket owner!' => '',
      'Change the ticket priority!' => '',
      'Close this ticket!' => '',
      'Shows the detail view of this ticket!' => '',
      'Unlock this ticket!' => '',

    # Template: AgentMove
      'Move Ticket' => 'Jegy �thelyez�se',
      'Previous Owner' => 'Kor�bbi tulajdonos',
      'Queue ID' => '�gy azonos�t�',

    # Template: AgentNavigationBar
      'Agent Preferences' => '',
      'Bulk Action' => '',
      'Bulk Actions on Tickets' => '',
      'Create new Email Ticket' => '',
      'Create new Phone Ticket' => '',
      'Email-Ticket' => '',
      'Locked tickets' => 'Z�rolt jegyek',
      'new message' => '�j �zenet',
      'Overview of all open Tickets' => '',
      'Phone-Ticket' => '',
      'Preferences' => 'Be�ll�t�sok',
      'Search Tickets' => '',
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

    # Template: AgentNote
      'Add note to ticket' => 'Megjegyz�s hozz�ad�sa a jegyhez',

    # Template: AgentOwner
      'Change owner of ticket' => 'Jegy tulajdonos�nak m�dos�t�sa',
      'Message for new Owner' => '�zenet az �j tulajdonosnak',

    # Template: AgentPending
      'Pending date' => 'V�rakoz�si d�tum',
      'Pending type' => 'V�rakoz�s t�pusa',
      'Set Pending' => 'V�rakoz�s be�ll�t�s',

    # Template: AgentPhone
      'Phone call' => 'Telefonh�v�s',

    # Template: AgentPhoneNew
      'Clear From' => 'Felad� t�rl�se',

    # Template: AgentPlain
      'ArticleID' => 'Cikkazonos�t�',
      'Download' => '',
      'Plain' => 'Egyszer�',
      'TicketID' => 'Jegyazonos�t�',

    # Template: AgentPreferencesCustomQueue
      'My Queues' => '',
      'You also get notified about this queues via email if enabled.' => '',
      'Your queue selection of your favorite queues.' => '',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Jelsz� m�dos�t�sa',
      'New password' => '�j jelsz�',
      'New password again' => '�j jelsz� ism�t',

    # Template: AgentPriority
      'Change priority of ticket' => 'Jegy s�rg�ss�g�nek m�dos�t�sa',

    # Template: AgentSpelling
      'Apply these changes' => 'M�dos�t�sok �rv�nyes�t�se',
      'Spell Checker' => 'Helyes�r�sellen�rz�',
      'spelling error(s)' => 'helyes�r�si hiba(k)',

    # Template: AgentStatusView
      'D' => 'Z',
      'of' => 'kit�l',
      'Site' => 'G�p',
      'sort downward' => 'rendez�s lefel�',
      'sort upward' => 'rendez�s felfel�',
      'Ticket Status' => 'Jegy �llapota',
      'U' => 'A',

    # Template: AgentTicketLink
      'Delete Link' => '',
      'Link' => 'Hivatkoz�s',
      'Link to' => 'Hivatkoz�s ide',

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Jegy lez�rva!',
      'Ticket unlock!' => 'Jegy feloldva!',

    # Template: AgentTicketPrint

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Elsz�molt id�',
      'Escalation in' => 'Eszkal�ci� ebben',

    # Template: AgentUtilSearch
      'Profile' => 'Profil',
      'Result Form' => 'Eredm�ny �rlap',
      'Save Search-Profile as Template?' => 'Elmenti a keres� profilt sablonk�nt?',
      'Search-Template' => 'Keres� sablon',
      'Select' => 'Kiv�laszt',
      'Ticket Search' => 'Jegy keres�s',
      'Yes, save it with name' => 'Igen, elmentve ezen a n�ven',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Keres�s az �gyf�l t�rt�net�ben',
      'Customer history search (e. g. "ID342425").' => 'Keres�s az �gyf�l t�rt�net�ben (pl. "ID342425").',
      'No * possible!' => 'A "*" nem lehets�ges!',

    # Template: AgentUtilSearchResult
      'Change search options' => 'Keres�si be�ll�t�sok m�dos�t�sa',
      'Results' => 'Eredm�nyek',
      'Search Result' => 'Keres�si eredm�ny',
      'Total hits' => '�sszes tal�lat',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'Minden lez�rt jegy',
      'All open tickets' => 'Minden nyitott jegy',
      'closed tickets' => 'lez�rt jegyek',
      'open tickets' => 'nyitott jegyek',
      'or' => 'vagy',
      'Provides an overview of all' => '�ttekint�st ad az �sszesr�l',
      'So you see what is going on in your system.' => 'Sz�val �n l�tja mi folyik a rendszer�ben.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'V�lasz �r�sa',
      'Your own Ticket' => 'Az �n saj�t jegye',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'V�lasz �r�sa',
      'Contact customer' => 'Kapcsolatbal�p�s az �gyf�llel',
      'phone call' => 'Telefonh�v�s',

    # Template: AgentZoomArticle
      'Split' => 'Feloszt�s',

    # Template: AgentZoomBody
      'Change queue' => '�gy v�ltoztat�s',

    # Template: AgentZoomHead
      'Change the ticket free fields!' => '',
      'Free Fields' => 'Szabad mez�k',
      'Link this ticket to an other one!' => '',
      'Lock it to work on it!' => '',
      'Print' => 'Nyomtat',
      'Print this ticket!' => '',
      'Set this ticket to pending!' => '',
      'Shows the ticket history!' => '',

    # Template: AgentZoomStatus
      '"}","18' => '"}","18',
      'Locked' => '',
      'SLA Age' => '',

    # Template: Copyright
      'printed by' => 'Nyomtatta',

    # Template: CustomerAccept

    # Template: CustomerCreateAccount
      'Create Account' => 'Azonos�t� l�trehoz�sa',
      'Login' => 'Bel�p�s',

    # Template: CustomerError
      'Traceback' => 'Visszak�vet�s',

    # Template: CustomerFAQArticleHistory
      'FAQ History' => 'GYIK t�rt�net',

    # Template: CustomerFAQArticlePrint
      'Category' => 'Kateg�ria',
      'Keywords' => 'Kulcssz�',
      'Last update' => 'Utols� friss�t�s',
      'Problem' => 'Probl�ma',
      'Solution' => 'Megold�s',
      'Symptom' => 'Jelens�g',

    # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => 'GYIK rendszer t�rt�net',

    # Template: CustomerFAQArticleView
      'FAQ Article' => 'GYIK Cikk',
      'Modified' => 'M�dos�tva',

    # Template: CustomerFAQOverview
      'FAQ Overview' => 'GYIK �ttekint�',

    # Template: CustomerFAQSearch
      'FAQ Search' => 'GYIK keres�s',
      'Fulltext' => 'Teljessz�veg',
      'Keyword' => 'Kulcssz�',

    # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'GYIK keres�s eredm�ny',

    # Template: CustomerFooter
      'Powered by' => 'K�sz�tette',

    # Template: CustomerLostPassword
      'Lost your password?' => 'Elfelejtette a jelszav�t?',
      'Request new password' => '�j jelsz� k�r�se',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'CompanyTickets' => '',
      'Create new Ticket' => '�j jegy l�trehoz�sa',
      'FAQ' => 'GYIK',
      'MyTickets' => '',
      'New Ticket' => '�j jegy',
      'Welcome %s' => '�dv�z�li a %s',

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
      'Click here to report a bug!' => 'Kattintson ide �j hiba bejelent�s�hez!',

    # Template: FAQArticleDelete
      'FAQ Delete' => 'GYIK t�rl�se',
      'You really want to delete this article?' => 'Biztos, hogy t�r�lni akarja ezt a cikket?',

    # Template: FAQArticleForm
      'A article should have a title!' => '',
      'Comment (internal)' => 'Megjegyz�s (bels�)',
      'Filename' => 'F�jln�v',
      'Title' => '',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQArticleViewSmall

    # Template: FAQCategoryForm
      'FAQ Category' => 'GYIK kateg�ria',
      'Name is required!' => '',

    # Template: FAQLanguageForm
      'FAQ Language' => 'GYIK nyelv',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: Footer
      'Top of Page' => 'Lap teteje',

    # Template: FooterSmall

    # Template: InstallerBody
      'Create Database' => 'Adatb�zis l�trehoz�sa',
      'Drop Database' => 'Adatb�zis t�rl�se',
      'Finished' => 'Befejezve',
      'System Settings' => 'Rendszerbe�ll�t�sok',
      'Web-Installer' => 'Web-telep�t�',

    # Template: InstallerFinish
      'Admin-User' => 'Admin-felhaszn�l�',
      'After doing so your OTRS is up and running.' => 'Ha ez k�sz, az OTRS k�sz �s fut.',
      'Have a lot of fun!' => 'Sok sikert!',
      'Restart your webserver' => 'Ind�tsa �jra a web-kiszolg�l�t',
      'Start page' => 'Start oldal',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Ahhoz, hogy az OTRS-t haszn�lni tudja, a k�vetkez� parancsot kell beg�pelnie parancssorban (termin�lban/h�jjban) root-k�nt.',
      'Your OTRS Team' => 'Az �n OTRS csapata',

    # Template: InstallerLicense
      'accept license' => 'Licenc elfogad�sa',
      'don\'t accept license' => 'Licenc elutas�t�sa',
      'License' => 'Licenc',

    # Template: InstallerStart
      'Create new database' => '�j adatb�zis l�trehoz�sa',
      'DB Admin Password' => 'DB Admin jelsz�',
      'DB Admin User' => 'DB Admin felhaszn�l�',
      'DB Host' => 'DB Gazda',
      'DB Type' => 'DB t�pusa',
      'default \'hot\'' => 'alap�rtelmezett',
      'Delete old database' => 'R�gi adatb�zis t�rl�se',
      'next step' => 'k�vetkez� l�p�s',
      'OTRS DB connect host' => 'OTRS DB kapcsol�dik a gazd�hoz',
      'OTRS DB Name' => 'OTRS DB n�v',
      'OTRS DB Password' => 'OTRS DB jelsz�',
      'OTRS DB User' => 'OTRS DB felhaszn�l�',
      'your MySQL DB should have a root password! Default is empty!' => 'Az �n MySQL adatb�zis�nak kell legyen root jelszava! Az alap�rtelmezett �res!',

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

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Nincs jogosults�g',

    # Template: Notify

    # Template: PrintFooter
      'URL' => 'URL',

    # Template: QueueView
      'All tickets' => 'Minden jegy',
      'Page' => 'Oldal',
      'Queues' => '�gyek',
      'Tickets available' => 'El�rhet� jegyek',
      'Tickets shown' => 'Mutatott jegyek',

    # Template: SystemStats

    # Template: Test
      'OTRS Test Page' => 'OTRS tesztoldal',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Jegy eszkal�ci�!',

    # Template: TicketView

    # Template: TicketViewLite

    # Template: Warning

    # Template: css
      'Home' => 'Otthon',

    # Template: customer-css
      'Contact' => 'Kapcsolat',
      'Online-Support' => 'Online-t�mogat�s',
      'Products' => 'Term�kek',
      'Support' => 'T�mogat�s',

    # Misc
      '"}","15' => '"}","15',
      '"}","30' => '"}","30',
      'Add auto response' => 'Automatikus v�lasz hozz�ad�sa',
      'Addressbook' => 'C�mjegyz�k',
      'AgentFrontend' => '�gyn�k-Munkafel�let',
      'Article free text' => 'Cikk szabadsz�veg',
      'BackendMessage' => 'H�tt�r�zenet',
      'Bottom of Page' => 'Lap alja',
      'Change Response <-> Attachment settings' => 'Reakci� <-> Csatol�s be�ll�t�sok m�dos�t�sa',
      'Change answer <-> queue settings' => 'V�lasz <-> �gyek be�ll�t�sok m�dos�t�sa',
      'Change auto response settings' => 'Automatikus v�lasz be�ll�t�sok m�dos�t�sa',
      'Charset' => 'Karakterk�szlet',
      'Charsets' => 'Karakterk�szletek',
      'Closed' => 'Lez�rva',
      'Create' => 'L�trehoz',
      'Customer called' => '�gyf�l felh�vva',
      'Customer user will be needed to to login via customer panels.' => 'Az �gyf�l panel haszn�lat�hoz �gyf�l felhaszn�l�ra lesz sz�ks�g.',
      'FAQ State' => 'GYIK �llapot',
      'Graphs' => 'Grafikonok',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Ha a te azonos�t�d megb�zhat�, az x-otrs fejl�cet (priorit�shoz,...) haszn�ljuk!',
      'Lock Ticket' => 'Jegy lez�r�sa',
      'Max Rows' => 'Max. oszlopok',
      'My Tickets' => 'Az �n jegyeim',
      'New ticket via call.' => '�j jegy h�v�son kereszt�l.',
      'New user' => '�j felhaszn�l�',
      'POP3 Account' => 'POP3 azonos�t�',
      'Pending!' => 'V�rakoz�s!',
      'Phone call at %s' => 'Telefonh�v�s ekkor: %s',
      'Please go away!' => 'K�rj�k menjen innen!',
      'PostMasterFilter Management' => 'PostaMesterSz�r� kezel�se',
      'Search in' => 'Keres�s itt',
      'Select source:' => 'Forr�s kiv�laszt�sa:',
      'Select your custom queues' => 'V�lassza ki az egyedi �gyeit',
      'Send me a notification if a ticket is moved into a custom queue.' => 'K�ldj�n �rtes�t�st ha a jegyet �thelyezik egyedi �gyh�z.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'K�ldj�n �rtes�t�st ha �j jegy van az �n egyedi �gyeim k�z�tt.',
      'SessionID' => 'Folyamatazonos�t�',
      'SessionID invalid! Need user data!' => 'Hib�s SessionID! Felhaszn�l�i adat sz�ks�ges!',
      'Short Description' => 'R�vid le�r�s',
      'Show all' => 'Mindent mutat',
      'Shown Tickets' => 'Jegyek megmutat�sa',
      'System Charset Management' => 'Rendszer karakterk�szlet kezel�se',
      'Ticket-Overview' => 'Jegy-�ttekint�s',
      'Time till escalation' => 'Id� az eszkal�ci�ig',
      'Utilities' => 'Keres�s',
      'With Priority' => 'S�rg�ss�ggel',
      'With State' => '�lapottal',
      'by' => '�ltala:',
      'invalid-temporarily' => 'ideiglenesen-�rv�nytelen',
      'search' => 'keres',
      'settings' => 'be�ll�t�sok',
      'store' => 't�rol',
      'tickets' => 'jegyek',
      'valid' => '�rv�nyes',
    );

    # $$STOP$$
    $Self->{Translation} = \%Hash;
}
# --
1;
