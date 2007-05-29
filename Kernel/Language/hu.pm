# --
# Kernel/Language/hu.pm - provides de language translation
# Copyright (C) 2004 RLAN Internet <MAGIC at rlan.hu>
# --
# $Id: hu.pm,v 1.35 2007-05-29 12:52:58 martin Exp $
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
$VERSION = '$Revision: 1.35 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Tue May 29 14:48:53 2007

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%Y.%M.%D %T';
    $Self->{DateFormatLong} = '%Y %B %D %A %T';
    $Self->{DateFormatShort} = '%Y.%M.%D';
    $Self->{DateInputFormat} = '%Y.%M.%D';
    $Self->{DateInputFormatLong} = '%Y.%M.%D - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => 'Igen',
        'No' => 'Nem',
        'yes' => 'igen',
        'no' => 'nem',
        'Off' => 'Ki',
        'off' => 'ki',
        'On' => 'Be',
        'on' => 'be',
        'top' => 'Teteje',
        'end' => 'v�ge',
        'Done' => 'K�sz',
        'Cancel' => 'M�gsem',
        'Reset' => 'Alap�ll�s',
        'last' => 'utols�',
        'before' => 'el�tt',
        'day' => 'nap',
        'days' => 'nap',
        'day(s)' => 'nap',
        'hour' => '�ra',
        'hours' => '�ra',
        'hour(s)' => '',
        'minute' => 'Perc',
        'minutes' => 'perc',
        'minute(s)' => '',
        'month' => '',
        'months' => '',
        'month(s)' => 'h�nap',
        'week' => '',
        'week(s)' => 'h�t',
        'year' => '',
        'years' => '',
        'year(s)' => '�v',
        'second(s)' => '',
        'seconds' => '',
        'second' => '',
        'wrote' => '�rta',
        'Message' => '�zenet',
        'Error' => 'Hiba',
        'Bug Report' => 'Hibajelent�s',
        'Attention' => 'Figyelem',
        'Warning' => 'Figyelem',
        'Module' => 'Modul',
        'Modulefile' => 'Modulfile',
        'Subfunction' => 'Alfunkci�',
        'Line' => 'Vonal',
        'Example' => 'P�lda',
        'Examples' => 'P�lda',
        'valid' => '�rv�nyes',
        'invalid' => '�rv�nytelen',
        '* invalid' => '',
        'invalid-temporarily' => '',
        ' 2 minutes' => ' 2 Perc',
        ' 5 minutes' => ' 5 Perc',
        ' 7 minutes' => ' 7 Perc',
        '10 minutes' => '10 Perc',
        '15 minutes' => '15 Perc',
        'Mr.' => '',
        'Mrs.' => '',
        'Next' => 'K�vetkez�',
        'Back' => 'Vissza',
        'Next...' => 'K�vetkez�...',
        '...Back' => '...Vissza',
        '-none-' => '',
        'none' => 'semmi',
        'none!' => 'semmi!',
        'none - answered' => 'semmi - megv�laszolt',
        'please do not edit!' => 'k�rj�k ne jav�tsa!',
        'AddLink' => 'Link hozz�ad�sa',
        'Link' => 'Hivatkoz�s',
        'Linked' => '',
        'Link (Normal)' => '',
        'Link (Parent)' => '',
        'Link (Child)' => '',
        'Normal' => 'Norm�l',
        'Parent' => '',
        'Child' => '',
        'Hit' => 'Tal�lat',
        'Hits' => 'Tal�lat',
        'Text' => 'Sz�veg',
        'Lite' => 'Egyszer�',
        'User' => 'Felhaszn�l�',
        'Username' => 'Felhaszn�l�n�v',
        'Language' => 'Nyelv',
        'Languages' => 'Nyelv',
        'Password' => 'Jelsz�',
        'Salutation' => 'Megsz�l�t�s',
        'Signature' => 'Al��r�s',
        'Customer' => '�gyf�l',
        'CustomerID' => '�gyf�l#',
        'CustomerIDs' => '',
        'customer' => '�gyf�l',
        'agent' => '�gyn�k',
        'system' => 'rendszer',
        'Customer Info' => '�gyf�l Info',
        'Customer Company' => '',
        'Company' => '',
        'go!' => 'Ind�tsd!',
        'go' => 'ind�tsd',
        'All' => '�sszes',
        'all' => '�sszes',
        'Sorry' => 'Sajn�lom',
        'update!' => 'Friss�t!',
        'update' => 'friss�t',
        'Update' => 'Friss�t',
        'submit!' => 'Elk�ld!',
        'submit' => 'elk�ld',
        'Submit' => '',
        'change!' => 'V�ltoztat!',
        'Change' => 'V�ltoztat',
        'change' => 'v�ltoztat',
        'click here' => 'kattints ide',
        'Comment' => 'Megjegyz�s',
        'Valid' => '�rv�nyes',
        'Invalid Option!' => '',
        'Invalid time!' => '',
        'Invalid date!' => '',
        'Name' => 'N�v',
        'Group' => 'Csoport',
        'Description' => 'Le�r�s',
        'description' => 'le�r�s',
        'Theme' => 'T�ma',
        'Created' => 'Elk�sz�tve',
        'Created by' => '',
        'Changed' => '',
        'Changed by' => '',
        'Search' => 'Keres�s',
        'and' => '�s',
        'between' => '',
        'Fulltext Search' => '',
        'Data' => '',
        'Options' => 'Be�ll�t�sok',
        'Title' => 'C�m',
        'Item' => '',
        'Delete' => 'T�r�l',
        'Edit' => 'Szerkeszt',
        'View' => 'N�zet',
        'Number' => '',
        'System' => 'Rendszer',
        'Contact' => 'Kapcsolat',
        'Contacts' => '',
        'Export' => '',
        'Up' => '',
        'Down' => '',
        'Add' => 'Hozz�ad',
        'Category' => 'Kateg�ria',
        'Viewer' => '',
        'New message' => '�j �zenet',
        'New message!' => '�j �zenet!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'K�rj�k v�laszoljon erre(ezekre) a jegy(ek)re hogy visszat�rhessen a norm�l �gyek n�zethez!',
        'You got new message!' => '�j �zenete �rkezett!',
        'You have %s new message(s)!' => '%s �j �zenete van!',
        'You have %s reminder ticket(s)!' => '%s eml�keztet� jegye van!',
        'The recommended charset for your language is %s!' => 'Az aj�nlott karakterk�szlet az �n nyelv�n�l %s!',
        'Passwords doesn\'t match! Please try it again!' => 'A jelszavak nem egyeznek! Pr�b�lja meg �jra!',
        'Password is already in use! Please use an other password!' => '',
        'Password is already used! Please use an other password!' => '',
        'You need to activate %s first to use it!' => '',
        'No suggestions' => 'Nincsenek javaslatok',
        'Word' => 'Sz�',
        'Ignore' => 'Figyelmen k�v�l hagy',
        'replace with' => 'csere ezzel',
        'There is no account with that login name.' => 'Azzal a n�vvel nincs azonos�t�.',
        'Login failed! Your username or password was entered incorrectly.' => 'Bel�p�s sikertelen! Hib�san adta meg a felhaszn�l�i nev�t vagy jelszav�t.',
        'Please contact your admin' => 'K�rj�k vegye fel a kapcsolatot a rendszergazd�j�val',
        'Logout successful. Thank you for using OTRS!' => 'Kil�p�s rendben! K�sz�nj�k, hogy az OTRS-t haszn�lja!',
        'Invalid SessionID!' => 'Hib�s SessionID!',
        'Feature not active!' => 'K�pess�g nem akt�v!',
        'Login is needed!' => '',
        'Password is needed!' => '',
        'License' => 'Licenc',
        'Take this Customer' => '�tveszi ez az �gyf�l',
        'Take this User' => '�tveszi ez a felhaszn�l�',
        'possible' => 'lehets�ges',
        'reject' => 'elutas�t',
        'reverse' => '',
        'Facility' => 'K�pess�g',
        'Timeover' => 'K�s�s',
        'Pending till' => 'V�rakoz�s eddig',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'Ne dolgozzon az 1-es felhaszn�l�val (Rendszer jogosults�g)! Hozzon l�tre �j felhaszn�l�t!',
        'Dispatching by email To: field.' => 'Feloszt�s email c�mzett mez� szerint.',
        'Dispatching by selected Queue.' => 'Feloszt�s a kiv�lasztott �gy szerint.',
        'No entry found!' => 'Nem tal�lhat� t�tel!',
        'Session has timed out. Please log in again.' => 'Az �gymenet id�t�ll�p�smiatt befejez�d�tt. K�rj�k l�pjen be �jra.',
        'No Permission!' => 'Nincs jogosults�g!',
        'To: (%s) replaced with database email!' => 'C�mzett: (%s) fel�l�rva az adatb�zis c�mmel!',
        'Cc: (%s) added database email!' => '',
        '(Click here to add)' => '(Kattinst ide a hozz�ad�shoz)',
        'Preview' => 'El�n�zet',
        'Package not correctly deployed! You should reinstall the Package again!' => '',
        'Added User "%s"' => 'A "%s" felhaszn�l� hozz�adva',
        'Contract' => 'Kapcsolat',
        'Online Customer: %s' => 'Bejelentkezett �gyf�l: %s',
        'Online Agent: %s' => 'Bejelentkezett �gyn�k: %s',
        'Calendar' => 'Napt�r',
        'File' => 'F�jl',
        'Filename' => 'F�jln�v',
        'Type' => 'T�pus',
        'Size' => 'M�ret',
        'Upload' => 'Felt�lt',
        'Directory' => 'K�nyvt�r',
        'Signed' => 'Al��rt',
        'Sign' => 'Al��r',
        'Crypted' => 'K�dolt',
        'Crypt' => 'K�dol',
        'Office' => '',
        'Phone' => '',
        'Fax' => '',
        'Mobile' => '',
        'Zip' => '',
        'City' => '',
        'Country' => '',
        'installed' => '',
        'uninstalled' => '',
        'Security Note: You should activate %s because application is already running!' => '',
        'Unable to parse Online Repository index document!' => '',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '',
        'No Packages or no new Packages in selected Online Repository!' => '',
        'printed at' => '',

        # Template: AAAMonth
        'Jan' => '',
        'Feb' => '',
        'Mar' => 'M�r',
        'Apr' => '�pr',
        'May' => 'M�j',
        'Jun' => 'J�n',
        'Jul' => 'J�l',
        'Aug' => '',
        'Sep' => 'Sze',
        'Oct' => 'Okt',
        'Nov' => '',
        'Dec' => '',
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
        'Admin-Area' => 'Admin ter�let',
        'Agent-Area' => '�gyn�k-ter�let',
        'Ticket-Area' => '',
        'Logout' => 'Kil�p',
        'Agent Preferences' => '�gyn�k be�ll�t�sok',
        'Preferences' => 'Be�ll�t�sok',
        'Agent Mailbox' => '',
        'Stats' => 'Statisztika',
        'Stats-Area' => '',
        'Admin' => '',
        'Customer Users' => '',
        'Customer Users <-> Groups' => '',
        'Users <-> Groups' => '',
        'Roles' => 'Szab�lyok',
        'Roles <-> Users' => '',
        'Roles <-> Groups' => '',
        'Salutations' => '',
        'Signatures' => '',
        'Email Addresses' => '',
        'Notifications' => '',
        'Category Tree' => '',
        'Admin Notification' => '',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Be�ll�t�sok sikeresen friss�tve!',
        'Mail Management' => 'Email kezel�s',
        'Frontend' => 'Munkafel�let',
        'Other Options' => 'Egy�b be�ll�t�sok',
        'Change Password' => '',
        'New password' => '',
        'New password again' => '',
        'Select your QueueView refresh time.' => 'V�lassza ki az �gyekN�zet friss�t�si idej�t.',
        'Select your frontend language.' => 'V�lassza ki a munkafel�let nyelv�t.',
        'Select your frontend Charset.' => 'V�lassza ki a munkafel�let karakterk�szlet�t.',
        'Select your frontend Theme.' => 'V�lassza ki a munkafel�let st�lus�t.',
        'Select your frontend QueueView.' => 'V�lassza ki a munkafel�let �gyek-n�zet�t.',
        'Spelling Dictionary' => 'Helyes�r�s-ellen�rz� sz�t�r',
        'Select your default spelling dictionary.' => 'V�lassza ki az alap�rtelmezett helyes�r�sellen�rz� sz�t�rat.',
        'Max. shown Tickets a page in Overview.' => 'Max. megjelen�tett jegy az �ttekint�sn�l.',
        'Can\'t update password, passwords doesn\'t match! Please try it again!' => '',
        'Can\'t update password, invalid characters!' => '',
        'Can\'t update password, need min. 8 characters!' => '',
        'Can\'t update password, need 2 lower and 2 upper characters!' => '',
        'Can\'t update password, need min. 1 digit!' => '',
        'Can\'t update password, need min. 2 characters!' => '',

        # Template: AAAStats
        'Stat' => '',
        'Please fill out the required fields!' => '',
        'Please select a file!' => '',
        'Please select an object!' => '',
        'Please select a graph size!' => '',
        'Please select one element for the X-axis!' => '',
        'You have to select two or more attributes from the select field!' => '',
        'Please select only one element or turn of the button \'Fixed\' where the select field is marked!' => '',
        'If you use a checkbox you have to select some attributes of the select field!' => '',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '',
        'The selected end time is before the start time!' => '',
        'You have to select one or more attributes from the select field!' => '',
        'The selected Date isn\'t valid!' => '',
        'Please select only one or two elements via the checkbox!' => '',
        'If you use a time scale element you can only select one element!' => '',
        'You have an error in your time selection!' => '',
        'Your reporting time interval is to small, please use a larger time scale!' => '',
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

        # Template: AAATicket
        'Lock' => 'Z�rol',
        'Unlock' => 'Felold',
        'History' => 'T�rt�net',
        'Zoom' => 'Nagy�t',
        'Age' => 'Kor',
        'Bounce' => 'Visszak�ld',
        'Forward' => 'Tov�bb�t',
        'From' => 'Felad�',
        'To' => 'C�mzett',
        'Cc' => 'M�solat',
        'Bcc' => 'Vakm�solat',
        'Subject' => 'T�rgy',
        'Move' => '�thelyez',
        'Queue' => '�gyek',
        'Priority' => 'S�rg�ss�g',
        'State' => '�llapot',
        'Compose' => 'K�sz�t',
        'Pending' => 'V�rakozik',
        'Owner' => 'Tulajdonos',
        'Owner Update' => '',
        'Responsible' => '',
        'Responsible Update' => '',
        'Sender' => 'K�ld�',
        'Article' => 'Cikk',
        'Ticket' => 'Jegy',
        'Createtime' => 'Elk�sz�lt ',
        'plain' => 'sima',
        'Email' => '',
        'email' => '',
        'Close' => 'Lez�r',
        'Action' => 'M�velet',
        'Attachment' => 'Csatol�s',
        'Attachments' => 'Csatol�s',
        'This message was written in a character set other than your own.' => 'Ezt az �zenetet m�s karakterk�szlettel �rt�k mint amit �n haszn�l.',
        'If it is not displayed correctly,' => 'Ha nem helyesen jelent meg,',
        'This is a' => 'Ez egy',
        'to open it in a new window.' => 'hogy megnyissa �j ablakban.',
        'This is a HTML email. Click here to show it.' => 'Ez egy HTML email. Kattintson ide a megtekint�shez.',
        'Free Fields' => '',
        'Merge' => '',
        'merged' => '',
        'closed successful' => 'sikeresen lez�rva',
        'closed unsuccessful' => 'sikertelen�l lez�rva',
        'new' => '�j',
        'open' => 'nyitva',
        'closed' => 'lez�rt',
        'removed' => 't�r�lve',
        'pending reminder' => 'eml�keztet�re v�rakozik',
        'pending auto' => '',
        'pending auto close+' => 'automatikus z�r�sra v�rakozik+',
        'pending auto close-' => 'automatikus z�r�sra v�rakozik-',
        'email-external' => 'k�ls� email',
        'email-internal' => 'bels� email',
        'note-external' => 'k�ls� jegyzet',
        'note-internal' => 'bels� jegyzet',
        'note-report' => 'jegyzet jelent�s',
        'phone' => 'telefon',
        'sms' => '',
        'webrequest' => 'webk�r�s',
        'lock' => 'z�rolt',
        'unlock' => 'feloldva',
        'very low' => 'nagyon alacsony',
        'low' => 'alacsony',
        'normal' => 'norm�l',
        'high' => 'magas',
        'very high' => 'nagyon magas',
        '1 very low' => '1 nagyon alacsony',
        '2 low' => '2 alacsony',
        '3 normal' => '3 norm�l',
        '4 high' => '4 magas',
        '5 very high' => '5 nagyon magas',
        'Ticket "%s" created!' => 'A "%s" jegy l�trehozva!',
        'Ticket Number' => 'Jegy sz�m',
        'Ticket Object' => '',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Nincs "%s" sz�m� jegy! Nem tudom csatolni!',
        'Don\'t show closed Tickets' => 'Ne jelen�tse meg a lez�rt jegyeket.',
        'Show closed Tickets' => 'Mutasd a lez�rt jegyeket',
        'New Article' => '�j cikk',
        'Email-Ticket' => '',
        'Create new Email Ticket' => '',
        'Phone-Ticket' => '',
        'Search Tickets' => '',
        'Edit Customer Users' => '',
        'Bulk-Action' => '',
        'Bulk Actions on Tickets' => '',
        'Send Email and create a new Ticket' => '',
        'Create new Email Ticket and send this out (Outbound)' => '',
        'Create new Phone Ticket (Inbound)' => '',
        'Overview of all open Tickets' => '�sszes nyitott jegy �ttekint�se',
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
        'New ticket notification' => '�j jegy �rtes�t�s',
        'Send me a notification if there is a new ticket in "My Queues".' => 'K�ldj�n nekem �rtes�t�st, ha �j jegy van a "Saj�t �gyeim"-ben.',
        'Follow up notification' => 'V�laszlev�l �rtes�t�s',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'K�ldj�n �rtes�t�st ha az �gyf�l v�laszol �s �n vagyok a tulajdonosa a jegynek.',
        'Ticket lock timeout notification' => 'Jegyz�rol�s-lej�rat �rtes�t�s',
        'Send me a notification if a ticket is unlocked by the system.' => 'K�ldj�n �rtes�t�st ha a jegy z�rol�s�t a renszer feloldotta.',
        'Move notification' => '�thelyez�s �rtes�t�s',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'K�ldj�n nekem �rtes�t�st, ha egy jegyet a "Saj�t �gyeim" egyik�be mozgatt�k.',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '',
        'Custom Queue' => 'Egyedi �gyek',
        'QueueView refresh time' => '�gyekN�zet friss�t�si id�',
        'Screen after new ticket' => '�j jegy ut�ni k�perny�',
        'Select your screen after creating a new ticket.' => 'V�lassza ki a k�perny�t �j jegy l�trehoz�sa ut�n.',
        'Closed Tickets' => 'Lez�rt jegyek',
        'Show closed tickets.' => 'Mutasd a lez�rt jegyeket.',
        'Max. shown Tickets a page in QueueView.' => 'Max. megjelen�tett jegy az �gyek n�zetn�l.',
        'CompanyTickets' => '',
        'MyTickets' => '',
        'New Ticket' => '',
        'Create new Ticket' => '',
        'Customer called' => '',
        'phone call' => '',
        'Responses' => 'V�laszok',
        'Responses <-> Queue' => '',
        'Auto Responses' => '',
        'Auto Responses <-> Queue' => '',
        'Attachments <-> Responses' => '',
        'History::Move' => 'T�rt�net::Mozgat',
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => 'Updated SLA to %s (ID=%s).',
        'History::NewTicket' => 'T�rt�net::�jJegy',
        'History::FollowUp' => 'T�rt�net::V�lasz',
        'History::SendAutoReject' => 'T�rt�net::AutomatikusElutas�t�sK�ld�s',
        'History::SendAutoReply' => 'T�rt�net::AutomatikusV�laszK�ld�s',
        'History::SendAutoFollowUp' => 'T�rt�net::AutomatikusReakci�K�ld�s',
        'History::Forward' => 'T�rt�net::Tov�bb�t',
        'History::Bounce' => 'T�rt�net::Visszak�ld',
        'History::SendAnswer' => 'T�rt�net::V�laszK�ld�s',
        'History::SendAgentNotification' => 'T�rt�net::�gyn�k�rtes�t�sK�ld�s',
        'History::SendCustomerNotification' => 'T�rt�net::�gyf�l�rtes�t�sK�ld�s',
        'History::EmailAgent' => 'T�rt�net::Email�gyn�k',
        'History::EmailCustomer' => 'T�rt�net::Email�gyf�l',
        'History::PhoneCallAgent' => 'T�rt�net::�gyn�kTelefonH�v�s',
        'History::PhoneCallCustomer' => 'T�rt�net::�gyf�lTelefonH�v�s',
        'History::AddNote' => 'T�rt�net::Megjegyz�sHozz�ad�s',
        'History::Lock' => 'T�rt�net::Z�rol',
        'History::Unlock' => 'T�rt�net::Felold�s',
        'History::TimeAccounting' => 'T�rt�net::Id�Elsz�mol�s',
        'History::Remove' => 'T�rt�net::Elt�vol�t�s',
        'History::CustomerUpdate' => 'T�rt�net::�gyf�lM�dos�t�s',
        'History::PriorityUpdate' => 'T�rt�net::S�rg�ss�gM�dos�t�s',
        'History::OwnerUpdate' => 'T�rt�net::TulajdonosV�lt�s',
        'History::LoopProtection' => 'T�rt�net::Visszacsatol�sV�delem',
        'History::Misc' => 'T�rt�net::Vegyes',
        'History::SetPendingTime' => 'T�rt�net::V�rakoz�siId�Be�ll�t�s',
        'History::StateUpdate' => 'T�rt�net::�llapotM�dos�t�s',
        'History::TicketFreeTextUpdate' => 'T�rt�net::JegySzabadSz�vegM�dos�t�s',
        'History::WebRequestCustomer' => 'T�rt�net::�gyf�lWebK�r�s',
        'History::TicketLinkAdd' => 'T�rt�net::JegyCsatol�sHozz�ad�s',
        'History::TicketLinkDelete' => 'T�rt�net::JegyCsatol�sT�rl�s',

        # Template: AAAWeekDay
        'Sun' => 'Vas',
        'Mon' => 'H�t',
        'Tue' => 'Ked',
        'Wed' => 'Sze',
        'Thu' => 'Cs�',
        'Fri' => 'P�n',
        'Sat' => 'Szo',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Csatol�s kezel�se',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Automatikus v�lasz kezel�nek',
        'Response' => 'V�lasz',
        'Auto Response From' => 'Automatikus v�lasz felad�nak',
        'Note' => 'Jegyzet',
        'Useable options' => 'Haszn�lhat� opci�k',
        'To get the first 20 character of the subject.' => '',
        'To get the first 5 lines of the email.' => '',
        'To get the realname of the sender (if given).' => '',
        'To get the article attribut (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => '',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => '',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => '',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => '',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => '',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '',
        'Add Customer Company' => '',
        'Add a new Customer Company.' => '',
        'List' => '',
        'This values are required.' => 'Ezek az �rt�kek sz�ks�gesek.',
        'This values are read only.' => 'Ezek az �rt�kek csak olvashat�k.',

        # Template: AdminCustomerUserForm
        'Customer User Management' => '�gyf�l felhaszn�l�k kezel�se',
        'Search for' => 'Keresd a',
        'Add Customer User' => '',
        'Source' => 'Forr�s',
        'Create' => '',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '�gyf�l felhaszn�l�ra lesz sz�ks�g, hogy legyen �gyf�l t�rt�net �s be lehessen l�pni az �gyf�l panelen.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '',
        'Change %s settings' => '%s be�ll�t�sainak m�dos�t�sa',
        'Select the user:group permissions.' => 'A felhaszn�l�:csoport jogok kiv�laszt�sa.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Ha nincs semmi kiv�lasztva, akkor nincsenek jogosults�gok ebben a csoportban (a jegyek nem lesznek el�rhet�k a felhaszn�l�nak).',
        'Permission' => 'Jogosults�g',
        'ro' => 'Csak olvas�s',
        'Read only access to the ticket in this group/queue.' => 'Csak olvas�si jogosults�g a jegyekhez ebben a csoportban/�gyben.',
        'rw' => '�r�s/Olvas�s',
        'Full read and write access to the tickets in this group/queue.' => 'Teljes �r�s �s olvas�si jog a jegyekhez ebben a csoportban/�gyben.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminEmail
        'Message sent to' => '�zenet elk�ldve',
        'Recipents' => 'C�mzettek',
        'Body' => 'T�rzs',
        'Send' => '',

        # Template: AdminGenericAgent
        'GenericAgent' => '�ltal�nos�gyn�k',
        'Job-List' => 'Feladat-Lista',
        'Last run' => 'Utols� v�grehajt�s',
        'Run Now!' => '',
        'x' => '',
        'Save Job as?' => 'Feladat ment�se m�sk�pp?',
        'Is Job Valid?' => '',
        'Is Job Valid' => '',
        'Schedule' => 'Id�z�t',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Teljessz�veg keres�s a cikkben (pl. "Mar*in" oder "Baue*")',
        '(e. g. 10*5155 or 105658*)' => 'pl. 10*5144 vagy 105658*',
        '(e. g. 234321)' => 'pl. 234321',
        'Customer User Login' => '�gyf�l felhaszn�l� bel�p�s',
        '(e. g. U5150)' => 'pl. U5150',
        'Agent' => '�gyn�k',
        'Ticket Lock' => 'Jegy z�rol�s',
        'TicketFreeFields' => '',
        'Create Times' => '',
        'No create time settings.' => '',
        'Ticket created' => 'Jegy l�trehozva',
        'Ticket created between' => 'Jegy l�trehozva k�z�tt�k:',
        'Pending Times' => '',
        'No pending time settings.' => '',
        'Ticket pending time reached' => '',
        'Ticket pending time reached between' => '',
        'New Priority' => '�j s�rg�ss�g',
        'New Queue' => '�j �gy',
        'New State' => '�j �llapot',
        'New Agent' => '�j �gyn�k',
        'New Owner' => '�j tulajdonos',
        'New Customer' => '�j �gyf�l',
        'New Ticket Lock' => '�j jegy z�rol�s',
        'CustomerUser' => '�gyf�lFelhaszn�l�',
        'New TicketFreeFields' => '',
        'Add Note' => 'Megjegyz�s hozz�ad�sa',
        'CMD' => 'PARANCS',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Ez a parancs lesz v�grehajtva. Az ARG[0] lesz a jegy sz�ma. Az ARG[1] lesz a jegy azonos�t�ja.',
        'Delete tickets' => 'Jegyek t�rl�se',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Figyelem! Ezek a jegyek el lesznek t�vol�tva az adatb�zisb�l! Ezek a jegyek elvesztek!',
        'Send Notification' => '',
        'Param 1' => '1. param�ter',
        'Param 2' => '2. param�ter',
        'Param 3' => '3. param�ter',
        'Param 4' => '4. param�ter',
        'Param 5' => '5. param�ter',
        'Param 6' => '6. param�ter',
        'Send no notifications' => '',
        'Yes means, send no agent and customer notifications on changes.' => '',
        'No means, send agent and customer notifications on changes.' => '',
        'Save' => 'Ment',
        '%s Tickets affected! Do you really want to use this job?' => '',
        '"}' => '',

        # Template: AdminGroupForm
        'Group Management' => 'Csoport kezel�s',
        'Add Group' => '',
        'Add a new Group.' => '',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Az admin csoport megkapja az admin ter�letet �s a st�tusz csoport megkapja a st�tusz ter�letet.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Hozzon l�tre �j csoportot a k�l�nb�z� �gyn�k csoportok (pl. beszerz� oszt�ly, t�mogat� oszt�ly, elad� oszt�ly, ...) hozz�f�r�si jogainak kezel�s�hez.',
        'It\'s useful for ASP solutions.' => 'Ez hasznos ASP megold�sokhoz.',

        # Template: AdminLog
        'System Log' => 'Rendszernapl�',
        'Time' => 'Id�',

        # Template: AdminMailAccount
        'Mail Account Management' => '',
        'Host' => 'Gazda',
        'Account Type' => '',
        'POP3' => '',
        'POP3S' => '',
        'IMAP' => '',
        'IMAPS' => '',
        'Mailbox' => 'Postafi�k',
        'Port' => '',
        'Trusted' => 'Megb�zhat�',
        'Dispatching' => 'Hozz�rendel�s',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Az �sszes egy azonos�t�val rendelkez� bej�v� email egy kiv�lasztott �gyn�lh�z lesz rendelve!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Ha az �n azonos�t�jamegb�zhat�, a m�r l�tez� X-OTRS fejl�cet haszn�ljuk az �rkez�skor (s�rg�ss�ghez, ...)! Egy�b esetben a PostMaster sz�r� lesz alkalmazva.',

        # Template: AdminNavigationBar
        'Users' => '',
        'Groups' => 'Csoportok',
        'Misc' => 'Egy�b',

        # Template: AdminNotificationForm
        'Notification Management' => '�rtes�t�skezel�s',
        'Notification' => '',
        'Notifications are sent to an agent or a customer.' => 'Az �rtes�t�sek �gyn�knek vagy �gyf�lnek ker�lnek elk�ld�sre.',

        # Template: AdminPackageManager
        'Package Manager' => '',
        'Uninstall' => '',
        'Version' => '',
        'Do you really want to uninstall this package?' => '',
        'Reinstall' => '',
        'Do you really want to reinstall this package (all manual changes get lost)?' => '',
        'Cancle' => '',
        'Continue' => '',
        'Install' => '',
        'Package' => '',
        'Online Repository' => '',
        'Vendor' => '',
        'Upgrade' => '',
        'Local Repository' => '',
        'Status' => '�llapot',
        'Overview' => '�ttekint�',
        'Download' => 'Let�lt',
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
        'Of couse this feature will take some system performance it self!' => '',
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

        # Template: AdminPGPForm
        'PGP Management' => '',
        'Result' => 'Eredm�nyek',
        'Identifier' => 'Azonos�t�',
        'Bit' => '',
        'Key' => 'Kulcs',
        'Fingerprint' => 'Ujjlenyomat',
        'Expires' => 'Lej�r',
        'In this way you can directly edit the keyring configured in SysConfig.' => '',

        # Template: AdminPOP3
        'POP3 Account Management' => 'POP3 azonos�t� kezel�se',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'PostMaster Sz�r� Kezel�s',
        'Filtername' => 'Sz�r�n�v',
        'Match' => 'Egyez�s',
        'Header' => 'Fejl�c',
        'Value' => '�rt�k',
        'Set' => 'Be�ll�t',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'A be�rkez� emailek az X-Fejl�cek alapj�n legyen hozz�rendelve! Szab�lyos kifelyez�sek alkalmazhat�k.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Ha szab�lyos kifelyez�seket haszn�l, haszn�lhatja az egyez� �rt�keket a ()-ben mint [***] a \'Halmaz\'-ban.',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => '',

        # Template: AdminQueueForm
        'Queue Management' => '�gyek kezel�se',
        'Sub-Queue of' => 'Al-�gye a(z)',
        'Unlock timeout' => 'Felold�s id�t�ll�p�s',
        '0 = no unlock' => '0 = nincs felold�s',
        'Escalation - First Response Time' => '',
        '0 = no escalation' => '0 = nincs eszkal�ci�',
        'Escalation - Update Time' => '',
        'Escalation - Solution Time' => '',
        'Follow up Option' => 'V�lasz opci�k',
        'Ticket lock after a follow up' => 'Jegy z�rol�sa v�lasz �rkez�se ut�n.',
        'Systemaddress' => 'Rendszerc�m',
        'Customer Move Notify' => '�gyf�l �rtes�t�s mozgat�skor',
        'Customer State Notify' => '�gyf�l �rtes�t�s �llapotv�ltoz�skor',
        'Customer Owner Notify' => '�gyf�l �rtes�t�s tulajdonsov�lt�skor',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Ha az �gyn�k z�rolja a jegyet �s nem k�ld v�laszt ezen id�n bel�l, a jegy z�rol�sa megsz�nik. �gy a jegy l�that� lesz minden �gyn�knek.',
        'Escalation time' => 'Eszkal�ci� id�',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Ha a jegy nem ker�l megv�laszol�sra a megadott id�n bel�l, csak ez a jegy lesz megjelen�tve.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Ha a jegy le van z�rva �s az �gyf�l v�laszol a jegyre, akkor az z�rol�sra ker�l a r�gi tulajdonosnak.',
        'Will be the sender address of this queue for email answers.' => 'Enn�l az �gyn�l ez lesz a felad� email v�laszokhoz.',
        'The salutation for email answers.' => 'A megsz�l�t�s az email v�laszokhoz.',
        'The signature for email answers.' => 'Az al��r�s a v�lasz emailekhez.',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy �thelyez�sre ker�lt.',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy �llapota megv�ltozott.',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy tulajdonosa megv�ltozott.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => '',

        # Template: AdminQueueResponsesForm
        'Answer' => 'V�lasz',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => '',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Reakci� kezel�s',
        'A response is default text to write faster answer (with default text) to customers.' => 'Egy reakci� az alap�rtelmezett sz�veg gyors v�laszokhoz (az alap�rtelmezett sz�veggel) az �gyfeleknek.',
        'Don\'t forget to add a new response a queue!' => 'Ne felejtsen el �j reakci�t hozz�adni az �gyh�z!',
        'The current ticket state is' => 'A jegy aktu�lis �llapota',
        'Your email address is new' => 'Az �n e-mail c�me �j',

        # Template: AdminRoleForm
        'Role Management' => 'Szab�ly Kezel�s',
        'Add Role' => '',
        'Add a new Role.' => '',
        'Create a role and put groups in it. Then add the role to the users.' => 'Hozzon l�tre egy szab�lyt �s tegyen bele csoportokat. Azut�n adja a szab�lyt a felhaszn�l�khoz.',
        'It\'s useful for a lot of users and groups.' => 'Ez hasznos egy csom� felhaszn�l�nak �s csoportnak',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => '',
        'move_into' => 'mozgat',
        'Permissions to move tickets into this group/queue.' => 'Jogosults�gok jegyek �thelyez�s�hez ebbe a csoportba/�gybe.',
        'create' => 'k�sz�t',
        'Permissions to create tickets in this group/queue.' => 'Jogosults�gok �j jegyek l�trehoz�s�hoz ebben a csoportban/�gyben.',
        'owner' => 'tulajdonos',
        'Permissions to change the ticket owner in this group/queue.' => 'Jogosults�gok a jegy tulajdonos�nak megv�ltoztat�s�hoz ebben a csoportban/�gyben.',
        'priority' => 's�rg�ss�g',
        'Permissions to change the ticket priority in this group/queue.' => 'Jogosult�gok a jegy priorit�snak megv�ltoztat�s�hoz ebben a csoportban/�gyben.',

        # Template: AdminRoleGroupForm
        'Role' => 'Szab�ly',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => '',
        'Active' => 'Akt�v',
        'Select the role:user relations.' => 'V�lassza ki a szab�ly:felhaszn�l� kapcsolatokat.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Megsz�l�t�s kezel�s',
        'Add Salutation' => '',
        'Add a new Salutation.' => '',

        # Template: AdminSelectBoxForm
        'Select Box' => 'SQL Parancsok',
        'Limit' => 'Korl�t',
        'Go' => '',
        'Select Box Result' => 'SQL Parancs eredm�ny',

        # Template: AdminService
        'Service Management' => '',
        'Add Service' => '',
        'Add a new Service.' => '',
        'Service' => '',
        'Sub-Service of' => '',

        # Template: AdminSession
        'Session Management' => 'Folyamatkezel�s',
        'Sessions' => 'Elj�r�sok',
        'Uniq' => 'Egyedi',
        'Kill all sessions' => '',
        'Session' => 'Elj�r�s',
        'Content' => '',
        'kill session' => 'folyamat le�ll�t�sa',

        # Template: AdminSignatureForm
        'Signature Management' => 'Al��r�s kezel�s',
        'Add Signature' => '',
        'Add a new Signature.' => '',

        # Template: AdminSLA
        'SLA Management' => '',
        'Add SLA' => '',
        'Add a new SLA.' => '',
        'SLA' => '',
        'First Response Time' => '',
        'Update Time' => '',
        'Solution Time' => '',

        # Template: AdminSMIMEForm
        'S/MIME Management' => '',
        'Add Certificate' => 'Tanus�tv�ny Hozz�ad�sa',
        'Add Private Key' => 'Titkos Kulcs Hoz�ad�sa',
        'Secret' => 'Titok',
        'Hash' => 'Kivonat',
        'In this way you can directly edit the certification and private keys in file system.' => '�ly m�don k�zvetlen�l szerkesztheti a f�jlrendszeren t�rolt tanus�tv�nyokat �s titkos kulcsokat.',

        # Template: AdminStateForm
        'State Management' => '',
        'Add State' => '',
        'Add a new State.' => '',
        'State Type' => '�llapot t�pus',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Figyeljen oda, hogy az Kernel/Config.pm f�jlban is friss�tse az alap�rtelmezett �llapotokat!',
        'See also' => 'L�sd m�g',

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
        'New' => '�j',
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
        'System Email Addresses Management' => 'Rendszer email c�mek kezel�se',
        'Add System Address' => '',
        'Add a new System Address.' => '',
        'Realname' => 'Val�di n�v',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Az �sszes bej�v� email ezzel az "Email"-el (C�mzett:) a kiv�lasztott �gyh�z lesz rendelve!',

        # Template: AdminSystemStatus
        'System Status' => '',

        # Template: AdminTicketCustomerNotification
        'Notification (Customer)' => '',
        'Event' => '',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

        # Template: AdminTypeForm
        'Type Management' => '',
        'Add Type' => '',
        'Add a new Type.' => '',

        # Template: AdminUserForm
        'User Management' => 'Felhaszn�l� kezel�s',
        'Add User' => '',
        'Add a new Agent.' => '',
        'Login as' => '',
        'Firstname' => 'Keresztn�v',
        'Lastname' => 'Csal�di n�v',
        'User will be needed to handle tickets.' => 'Felhaszn�l� kell a jegyek kezel�s�hez.',
        'Don\'t forget to add a new user to groups and/or roles!' => '',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => '',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'C�mjegyz�k',
        'Return to the compose screen' => 'Visszat�r�s a szerkeszt�k�perny�re',
        'Discard all changes and return to the compose screen' => 'Minden v�ltoztat�s megsemmis�t�se �s visszat�r�s a szerkeszt�k�perny�re',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerTableView

        # Template: AgentInfo
        'Info' => '',

        # Template: AgentLinkObject
        'Link Object' => '',
        'Select' => 'Kiv�laszt',
        'Results' => 'Eredm�nyek',
        'Total hits' => '�sszes tal�lat',
        'Page' => 'Oldal',
        'Detail' => '',

        # Template: AgentLookup
        'Lookup' => 'Keres',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Helyes�r�sellen�rz�',
        'spelling error(s)' => 'helyes�r�si hiba(k)',
        'or' => 'vagy',
        'Apply these changes' => 'M�dos�t�sok �rv�nyes�t�se',

        # Template: AgentStatsDelete
        'Stat#' => '',
        'Do you really want to delete this Object?' => '',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => '',
        'Fixed' => '',
        'Please select only one Element or turn of the button \'Fixed\'.' => '',
        'Absolut Period' => '',
        'Between' => '',
        'Relative Period' => '',
        'The last' => '',
        'Finish' => '',
        'Here you can make restrictions to your stat.' => '',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributs of the corresponding element.' => '',

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
        'Here you can the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => '',
        'maximal period' => '',
        'minimal scale' => '',
        'Here you can define the x-axis. You can select one element via the radio button. Than you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsImport
        'Import' => '',
        'File is not a Stats config' => '',
        'No File selected' => '',

        # Template: AgentStatsOverview
        'Object' => '',

        # Template: AgentStatsPrint
        'Print' => 'Nyomtat',
        'No Element selected.' => '',

        # Template: AgentStatsView
        'Export Config' => '',
        'Informations about the Stat' => '',
        'Exchange Axis' => '',
        'Configurable params of static stat' => '',
        'No element selected.' => '',
        'maximal period from' => '',
        'to' => '',
        'Start' => '',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '',

        # Template: AgentTicketArticleUpdate
        'A message should have a subject!' => 'Egy �zenetnek kell legyen t�rgya!',
        'A message should have a body!' => 'Egy �zenetnek kell legyen t�rzse!',
        'You need to account time!' => 'El kell sz�molnia az id�vel!',
        'Edit Article' => '',

        # Template: AgentTicketBounce
        'Bounce ticket' => 'Jegy visszak�ld�se',
        'Ticket locked!' => 'Jegy lez�rva!',
        'Ticket unlock!' => 'Jegy feloldva!',
        'Bounce to' => 'Visszak�ld�s ide:',
        'Next ticket state' => 'A jegy k�vetkez� �llapota',
        'Inform sender' => 'K�ld� t�j�koztat�sa',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Az �n "<OTRS_TICKET>" sz�m� jegyhez rendelt emailje visszak�ld�sre ker�lt a "<OTRS_BOUNCE_TO>" c�mre. Vegye fel ezzel a c�mmel a kapcsolatot tov�bbi inform�ci�k�rt.',
        'Send mail!' => 'Email k�ld�se!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Csoportos Jegy M�velet',
        'Spell Check' => 'Helyes�r�sellen�rz�s',
        'Note type' => 'Jegyzet t�pus',
        'Unlock Tickets' => '',

        # Template: AgentTicketClose
        'Close ticket' => 'Jegy lez�r�sa',
        'Previous Owner' => 'Kor�bbi tulajdonos',
        'Inform Agent' => '',
        'Optional' => '',
        'Inform involved Agents' => '',
        'Attach' => 'Csatol',
        'Next state' => 'K�vetkez� �llapot',
        'Pending date' => 'V�rakoz�si d�tum',
        'Time units' => 'Id� egys�gek',
        ' (work units)' => ' (munkaegys�g)',

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'V�laszad�s a jegyre',
        'Pending Date' => 'V�rakoz�s d�tuma',
        'for pending* states' => 'v�rakoz�* st�tuszhoz',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'A jegy �gyfel�nek megv�ltoztat�sa',
        'Set customer user and customer id of a ticket' => 'A jegy �gyf�l felhaszn�l�j�nak �s �gyf�l azonos�t�j�nak megbe�ll�t�sa',
        'Customer User' => '�gyf�l felhaszn�l�',
        'Search Customer' => '�gyf�l keres�se',
        'Customer Data' => '�gyf�l adatok',
        'Customer history' => '�gyf�l t�rt�net',
        'All customer tickets.' => '�sszes �gyf�l jegy.',

        # Template: AgentTicketCustomerMessage
        'Follow up' => 'V�lasz',

        # Template: AgentTicketEmail
        'Compose Email' => '�j Email �r�sa',
        'new ticket' => '�j jegy',
        'Refresh' => '',
        'Clear To' => 'Tiszt�t�s Neki',

        # Template: AgentTicketForward
        'Article type' => 'Cikk t�pusa',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Szabad sz�veg v�ltoztat�sa a jegyben',

        # Template: AgentTicketHistory
        'History of' => 'T�rt�nete ennek:',

        # Template: AgentTicketLocked

        # Template: AgentTicketMailbox
        'Tickets' => 'Jegyek',
        'of' => 'kit�l',
        'Filter' => '',
        'New messages' => '�j �zenetek',
        'Reminder' => 'Eml�keztet�',
        'Sort by' => 'Rendez�s �gy',
        'Order' => 'Sorrend',
        'up' => 'fel',
        'down' => 'le',

        # Template: AgentTicketMerge
        'Ticket Merge' => '',
        'Merge to' => '',

        # Template: AgentTicketMove
        'Move Ticket' => 'Jegy �thelyez�se',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Megjegyz�s hozz�ad�sa a jegyhez',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Jegy tulajdonos�nak m�dos�t�sa',

        # Template: AgentTicketPending
        'Set Pending' => 'V�rakoz�s be�ll�t�s',

        # Template: AgentTicketPhone
        'Phone call' => 'Telefonh�v�s',
        'Clear From' => 'Felad� t�rl�se',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Egyszer�',

        # Template: AgentTicketPrint
        'Ticket-Info' => '',
        'Accounted time' => 'Elsz�molt id�',
        'Escalation in' => 'Eszkal�ci� ebben',
        'Linked-Object' => '',
        'Parent-Object' => '',
        'Child-Object' => '',
        'by' => '�ltala:',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Jegy s�rg�ss�g�nek m�dos�t�sa',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Mutatott jegy',
        'Tickets available' => 'El�rhet� jegy',
        'All tickets' => '�sszes jegy',
        'Queues' => '�gyek',
        'Ticket escalation!' => 'Jegy eszkal�ci�!',

        # Template: AgentTicketQueueTicketView
        'Service Time' => '',
        'Your own Ticket' => 'Az �n saj�t jegye',
        'Compose Follow up' => 'V�lasz �r�sa',
        'Compose Answer' => 'V�lasz �r�sa',
        'Contact customer' => 'Kapcsolatbal�p�s az �gyf�llel',
        'Change queue' => '�gy v�ltoztat�s',

        # Template: AgentTicketQueueTicketViewLite

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Jegy keres�s',
        'Profile' => 'Profil',
        'Search-Template' => 'Keres� sablon',
        'TicketFreeText' => 'Jegy szabadsz�veg',
        'Created in Queue' => '',
        'Result Form' => 'Eredm�ny �rlap',
        'Save Search-Profile as Template?' => 'Elmenti a keres� profilt sablonk�nt?',
        'Yes, save it with name' => 'Igen, elmentve ezen a n�ven',

        # Template: AgentTicketSearchResult
        'Search Result' => 'Keres�si eredm�ny',
        'Change search options' => 'Keres�si be�ll�t�sok m�dos�t�sa',

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketSearchResultShort
        'U' => 'A',
        'D' => 'Z',

        # Template: AgentTicketStatusView
        'Ticket Status View' => '',
        'Open Tickets' => '',
        'Locked' => 'Z�rolt',

        # Template: AgentTicketZoom

        # Template: AgentWindowTab

        # Template: Calculator
        'Calculator' => '',
        'Operation' => '',

        # Template: Copyright

        # Template: css

        # Template: customer-css

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'Visszak�vet�s',

        # Template: CustomerFAQ

        # Template: CustomerFooter
        'Powered by' => 'K�sz�tette',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => 'Bel�p�s',
        'Lost your password?' => 'Elfelejtette a jelszav�t?',
        'Request new password' => '�j jelsz� k�r�se',
        'Create Account' => 'Azonos�t� l�trehoz�sa',

        # Template: CustomerNavigationBar
        'Welcome %s' => '�dv�z�lj�k %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Id�k',
        'No time settings.' => 'Nincs id�be�ll�t�s.',

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Kattintson ide �j hiba bejelent�s�hez!',

        # Template: Footer
        'Top of Page' => 'Lap teteje',

        # Template: FooterSmall

        # Template: Header

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Web-telep�t�',
        'Accept license' => '',
        'Don\'t accept license' => '',
        'Admin-User' => 'Admin-felhaszn�l�',
        'Admin-Password' => '',
        'your MySQL DB should have a root password! Default is empty!' => 'Az �n MySQL adatb�zis�nak kell legyen root jelszava! Az alap�rtelmezett �res!',
        'Database-User' => '',
        'default \'hot\'' => 'alap�rtelmezett',
        'DB connect host' => '',
        'Database' => '',
        'false' => '',
        'SystemID' => 'Rendszer azonos�t�',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Azonos�t�s a rendszerben. Minden jegyhez �s minden http elj�r�s ezzel a sorsz�mmal indul)',
        'System FQDN' => 'Rendszer FQDN',
        '(Full qualified domain name of your system)' => '(Teljes ellen�rz�tt domain n�v a rendszerben)',
        'AdminEmail' => 'Kezel�Email',
        '(Email of the system admin)' => '(E-Mail a rendszergazd�nak)',
        'Organization' => 'Szervezet',
        'Log' => '',
        'LogModule' => 'Log modul',
        '(Used log backend)' => '(Haszn�lt h�tt�r log)',
        'Logfile' => 'Log file',
        '(Logfile just needed for File-LogModule!)' => '(Logfile sz�ks�ges a File-LogModul sz�m�ra!)',
        'Webfrontend' => 'Web-munkafel�let',
        'Default Charset' => 'Alap�rtelmezett karakterk�szlet',
        'Use utf-8 it your database supports it!' => 'Haszn�ld utf-8-at az adatb�zis t�mogat�sokn�l!',
        'Default Language' => 'Alap�rtelmezett nyelv',
        '(Used default language)' => '(A felhaszn�l� alap�rtelmezett nyelve)',
        'CheckMXRecord' => 'MX Rekord ellen�rz�s',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Ellen�rizd le az MX rekordot a haszn�lt email c�mben a v�lasz �r�sakor!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Ahhoz, hogy az OTRS-t haszn�lni tudja, a k�vetkez� parancsot kell beg�pelnie parancssorban (termin�lban/h�jjban) root-k�nt.',
        'Restart your webserver' => 'Ind�tsa �jra a web-kiszolg�l�t',
        'After doing so your OTRS is up and running.' => 'Ha ez k�sz, az OTRS k�sz �s fut.',
        'Start page' => 'Start oldal',
        'Have a lot of fun!' => 'Sok sikert!',
        'Your OTRS Team' => 'Az �n OTRS csapata',

        # Template: Login
        'Welcome to %s' => '�dv�zli az %s',

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'Nincs jogosults�g',

        # Template: Notify
        'Important' => '',

        # Template: PrintFooter
        'URL' => '',

        # Template: PrintHeader
        'printed by' => 'Nyomtatta',

        # Template: PublicFAQ

        # Template: PublicView
        'Management Summary' => '',

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'OTRS tesztoldal',
        'Counter' => '',

        # Template: Warning
        # Misc
        'Create Database' => 'Adatb�zis l�trehoz�sa',
        'DB Host' => 'DB Gazda',
        'Ticket Number Generator' => 'Jegy sorsz�m gener�tor',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Jegy azonos�t�s. pl. \'Jegy#\', \'H�v�#\' vagy \'Jegyem#\')',
        'Create new Phone Ticket' => '�j telefon jegy l�trehoz�sa',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '�ly m�don k�zvetlen�l szerkesztheti a Kernel/Config.pm-ben be�ll�tott kulcskarik�t.',
        'Symptom' => 'Jelens�g',
        'A message should have a To: recipient!' => 'Egy �zenethez kellene legyen c�mzett!',
        'Site' => 'G�p',
        'Customer history search (e. g. "ID342425").' => 'Keres�s az �gyf�l t�rt�net�ben (pl. "ID342425").',
        'for agent firstname' => '�gyn�k keresztn�vhez',
        'Close!' => 'Lez�r!',
        'The message being composed has been closed.  Exiting.' => 'Az �ppen elk�sz�lt lev�l lez�r�sra ker�lt. Kil�p�s.',
        'A web calendar' => '',
        'to get the realname of the sender (if given)' => 'hogy megkapja a felad� val�di nev�t (ha lehets�ges)',
        'OTRS DB Name' => 'OTRS DB n�v',
        'Select Source (for add)' => 'V�lassza ki a forrs�t (hozz�ad�shoz)',
        'Days' => 'Nap',
        'Queue ID' => '�gy azonos�t�',
        'Home' => 'Otthon',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Be�ll�t�s opci�k (pl. <OTRS_CONFIG_HttpType>)',
        'System History' => '',
        'customer realname' => '�gyf�l val�di n�v',
        'First Response' => '',
        'Pending messages' => 'V�rakoz� �zenetek',
        'Modules' => 'Modul',
        'for agent login' => '�gyn�k bel�p�s�hez',
        'Keyword' => 'Kulcssz�',
        'Close type' => 'T�pus lez�r�sa',
        'DB Admin User' => 'DB Admin felhaszn�l�',
        'for agent user id' => '�gyn�k felhaszn�l� azonos�t�j�hoz',
        'sort upward' => 'rendez�s felfel�',
        'Change user <-> group settings' => 'A felhaszn�l� <-> csoport be�ll�t�sok megv�ltoztat�sa',
        'Problem' => 'Probl�ma',
        'next step' => 'k�vetkez� l�p�s',
        'Customer history search' => 'Keres�s az �gyf�l t�rt�net�ben',
        'Admin-Email' => 'Kezel�-Email',
        'Create new database' => '�j adatb�zis l�trehoz�sa',
        'A message must be spell checked!' => 'Az �zenetnek helyes�r�sellen�rz�sen kell �tmennie!',
        'ArticleID' => 'Cikkazonos�t�',
        'All Agents' => 'Minden �gyn�k',
        'Keywords' => 'Kulcssz�',
        'No * possible!' => 'A "*" nem lehets�ges!',
        'Options ' => '',
        'Message for new Owner' => '�zenet az �j tulajdonosnak',
        'to get the first 5 lines of the email' => 'hogy megkapja az els� 5 sort az email-b�l',
        'OTRS DB Password' => 'OTRS DB jelsz�',
        'Last update' => 'Utols� friss�t�s',
        'to get the first 20 character of the subject' => 'hogy megkapja az els� 20 karaktert a t�rgyb�l',
        'DB Admin Password' => 'DB Admin jelsz�',
        'Advisory' => '',
        'Drop Database' => 'Adatb�zis t�rl�se',
        'FileManager' => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'Opci�k az aktu�lis �gyf�l felhaszn�l�i adatokhoz (pl. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'V�rakoz�s t�pusa',
        'Comment (internal)' => 'Megjegyz�s (bels�)',
        'This window must be called from compose window' => 'Ezt az ablakot a szerkeszt� ablakb�l kell h�vni',
        'Minutes' => 'Perc',
        'You need min. one selected Ticket!' => 'Legal�bb egy jegyet ki kell v�lasztani!',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        '(Used ticket number format)' => '(Nyitott jegyek sorsz�m�nak form�tuma)',
        'Fulltext' => 'Teljessz�veg',
        'Incident' => '',
        'OTRS DB connect host' => 'OTRS DB kapcsol�dik a gazd�hoz',
        'All Agent variables.' => '',
        'All Customer variables like defined in config option CustomerUser.' => 'Az �sszes �gyf�l v�ltoz� ahogyan az �gyf�lFelhaszn�l� opci�kn�l lett be�ll�tva.',
        'accept license' => 'Licenc elfogad�sa',
        'for agent lastname' => '�gyn�k csal�din�vhez',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Opci�k a aktu�lis felhaszn�l�n�l aki k�rte ezt az elj�r�st. (pl. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Eml�keztet� �zenetek',
        'Ticket Hook' => 'Jegy p�c�k',
        'TicketZoom' => 'JegyNagy�t�s',
        'Don\'t forget to add a new user to groups!' => 'Ne felejtsen el �j felhaszn�l�t hozz�adni a csoportokhoz!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Kell egy email c�m (pl. customer@example.com) c�mzettnek!',
        'CreateTicket' => 'Jegyl�trehoz�s',
        'System Settings' => 'Rendszerbe�ll�t�sok',
        'WebWatcher' => '',
        'Hours' => '�ra',
        'Finished' => 'Befejezve',
        'Split' => 'Feloszt�s',
        'All messages' => 'Minden �zenet',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        'Artefact' => '',
        'A article should have a title!' => 'Egy cikknek kellene legyen c�me!',
        'don\'t accept license' => 'Licenc elutas�t�sa',
        'A web mail client' => '',
        'WebMail' => '',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Jegy tulajdonos opci�k (pl. <OTRS_OWNER_UserFirstname>)',
        'Name is required!' => 'A nevet meg kell adni!',
        'DB Type' => 'DB t�pusa',
        'Termin1' => '',
        'kill all sessions' => 'Minden elj�r�s kil�v�se',
        'to get the from line of the email' => 'hogy megkapja a felad�t az email-b�l',
        'Solution' => 'Megold�s',
        'QueueView' => '�gyekN�zet',
        'Welcome to OTRS' => '',
        'modified' => '',
        'Delete old database' => 'R�gi adatb�zis t�rl�se',
        'sort downward' => 'rendez�s lefel�',
        'You need to use a ticket number!' => '',
        'A web file manager' => '',
        'send' => 'k�ld',
        'Note Text' => 'Jegyzet sz�veg',
        'System State Management' => 'Rendszer�llapot kezel�s',
        'OTRS DB User' => 'OTRS DB felhaszn�l�',
        'PhoneView' => 'TelefonN�zet',
        'maximal period form' => '',
        'Verion' => '',
        'TicketID' => 'Jegyazonos�t�',
        'Modified' => 'M�dos�tva',
        'Ticket selected for bulk action!' => 'Jegy kiv�lasztva csoportos m�velethez!',
    };
    # $$STOP$$
}

1;
