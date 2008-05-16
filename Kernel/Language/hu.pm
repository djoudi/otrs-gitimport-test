# --
# Kernel/Language/hu.pm - provides de language translation
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: hu.pm,v 1.47 2008-05-16 12:16:13 martin Exp $
# Translation: Gabor Gancs /gg@magicnet.hu/ & Krisztian Gancs /krisz@gancs.hu/
# Verify: Flora Szabo /szaboflora@magicnet.hu/
# Hungary Sopron Europe
#
# Reviewed and adapted to OTRS v2.2 by Aron Ujvari <ujvari@hungary.com>
#
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::Language::hu;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.47 $) [1];

sub Data {
    my ( $Self, %Param ) = @_;

    # $$START$$
    # Last translation file sync: Fri May 16 14:08:31 2008

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%Y.%M.%D %T';
    $Self->{DateFormatLong}      = '%Y %B %D %A %T';
    $Self->{DateFormatShort}     = '%Y.%M.%D';
    $Self->{DateInputFormat}     = '%Y.%M.%D';
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
        'last' => 'legfeljebb ennyi ideje',
        'before' => 'legal�bb ennyi ideje',
        'day' => 'nap',
        'days' => 'nap',
        'day(s)' => 'nap',
        'hour' => '�ra',
        'hours' => '�ra',
        'hour(s)' => '�ra',
        'minute' => 'Perc',
        'minutes' => 'perc',
        'minute(s)' => 'perc',
        'month' => 'h�nap',
        'months' => 'h�nap',
        'month(s)' => 'h�nap',
        'week' => 'h�t',
        'week(s)' => 'h�t',
        'year' => '�v',
        'years' => '�v',
        'year(s)' => '�v',
        'second(s)' => 'mp',
        'seconds' => 'mp',
        'second' => 'mp',
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
        '* invalid' => '* �rv�nytelen',
        'invalid-temporarily' => 'ideiglenesen �rv�nytelen',
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
        '-none-' => '-nincs-',
        'none' => 'semmi',
        'none!' => 'semmi!',
        'none - answered' => 'semmi - megv�laszolt',
        'please do not edit!' => 'k�rj�k ne jav�tsa!',
        'AddLink' => 'Kapcsolat hozz�ad�sa',
        'Link' => 'Kapcsolat',
        'Unlink' => 'Kapcsolat felold�sa',
        'Linked' => 'Kapcsolat',
        'Link (Normal)' => '',
        'Link (Parent)' => '',
        'Link (Child)' => '',
        'Normal' => 'Norm�l',
        'Parent' => 'Sz�l�',
        'Child' => 'Gyerek',
        'Hit' => 'Tal�lat',
        'Hits' => 'Tal�latok',
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
        'CustomerID' => '�gyf�lazonos�t�',
        'CustomerIDs' => '�gyf�lazonos�t�k',
        'customer' => '�gyf�l',
        'agent' => '�gyint�z�',
        'system' => 'rendszer',
        'Customer Info' => '�gyf�l Info',
        'Customer Company' => '�gyf�l c�g',
        'Company' => 'C�g',
        'go!' => 'Ind�t�s!',
        'go' => 'ind�t�s',
        'All' => '�sszes',
        'all' => '�sszes',
        'Sorry' => 'Sajn�lom',
        'update!' => 'M�dos�t�s!',
        'update' => 'm�dos�t�s',
        'Update' => 'M�dos�t�s',
        'submit!' => 'Elk�ld�s!',
        'submit' => 'elk�ld�s',
        'Submit' => 'Elk�ld�s',
        'change!' => 'V�ltoztat�s!',
        'Change' => 'V�ltoztat�s',
        'change' => 'v�ltoztat�s',
        'click here' => 'kattints ide',
        'Comment' => 'Megjegyz�s',
        'Valid' => '�rv�nyess�g',
        'Invalid Option!' => '',
        'Invalid time!' => 'Hib�s id�pont!',
        'Invalid date!' => 'Hib�s d�tum!',
        'Name' => 'N�v',
        'Group' => 'Csoport',
        'Description' => 'Le�r�s',
        'description' => 'le�r�s',
        'Theme' => 'T�ma',
        'Created' => 'L�trehoz�s ideje',
        'Created by' => 'L�trehozta',
        'Changed' => 'M�dos�t�s ideje',
        'Changed by' => 'M�dos�totta',
        'Search' => 'Keres�s',
        'and' => '�s',
        'between' => '',
        'Fulltext Search' => '',
        'Data' => '',
        'Options' => 'Be�ll�t�sok',
        'Title' => 'C�m',
        'Item' => '',
        'Delete' => 'T�rl�s',
        'Edit' => 'Szerkeszt�s',
        'View' => 'N�zet',
        'Number' => '',
        'System' => 'Rendszer',
        'Contact' => 'Kapcsolat',
        'Contacts' => '',
        'Export' => '',
        'Up' => '',
        'Down' => '',
        'Add' => 'Hozz�ad�s',
        'Category' => 'Kateg�ria',
        'Viewer' => '',
        'New message' => '�j �zenet',
        'New message!' => '�j �zenet!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'K�rj�k v�laszoljon erre(ezekre) a jegy(ek)re hogy visszat�rhessen a norm�l v�r�lista n�zethez!',
        'You got new message!' => '�j �zenete �rkezett!',
        'You have %s new message(s)!' => '%s �j �zenete van!',
        'You have %s reminder ticket(s)!' => '%s eml�keztet� jegye van!',
        'The recommended charset for your language is %s!' => 'Az aj�nlott karakterk�szlet az �n nyelv�n�l %s!',
        'Passwords doesn\'t match! Please try it again!' => 'A jelszavak nem egyeznek! Pr�b�lja meg �jra!',
        'Password is already in use! Please use an other password!' => '',
        'Password is already used! Please use an other password!' => '',
        'You need to activate %s first to use it!' => '%s aktiv�l�s�ra van sz�ks�g miel�tt haszn�ln�!',
        'No suggestions' => 'Nincsenek javaslatok',
        'Word' => 'Sz�',
        'Ignore' => 'Figyelmen k�v�l hagy',
        'replace with' => 'csere ezzel',
        'There is no account with that login name.' => 'Azzal a n�vvel nincs azonos�t�.',
        'Login failed! Your username or password was entered incorrectly.' => 'Bel�p�s sikertelen! Hib�san adta meg a felhaszn�l�i nev�t vagy jelszav�t.',
        'Please contact your admin' => 'K�rj�k vegye fel a kapcsolatot a rendszergazd�j�val',
        'Logout successful. Thank you for using OTRS!' => 'Kil�p�s megt�rt�nt! K�sz�nj�k, hogy az OTRS-t haszn�lja!',
        'Invalid SessionID!' => 'Hib�s folyamat azonos�t�!',
        'Feature not active!' => 'K�pess�g nem akt�v!',
        'Login is needed!' => '',
        'Password is needed!' => '',
        'License' => 'Licensz',
        'Take this Customer' => '�tveszi ez az �gyf�l',
        'Take this User' => '�tveszi ez a felhaszn�l�',
        'possible' => 'lehets�ges',
        'reject' => 'elutas�t�s',
        'reverse' => '',
        'Facility' => 'K�pess�g',
        'Timeover' => 'K�s�s',
        'Pending till' => 'V�rakoz�s eddig',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'Ne dolgozzon az 1-es felhaszn�l�val (Rendszer jogosults�g)! Hozzon l�tre �j felhaszn�l�t!',
        'Dispatching by email To: field.' => 'Sz�tv�logat�s az e-mail c�mzett mez�je szerint.',
        'Dispatching by selected Queue.' => 'Sz�tv�logat�s a kiv�lasztott v�r�lista szerint.',
        'No entry found!' => 'Nem tal�lhat� t�tel!',
        'Session has timed out. Please log in again.' => 'Az folyamat id�t�ll�p�s miatt befejez�d�tt. K�rj�k l�pjen be �jra.',
        'No Permission!' => 'Nincs jogosults�g!',
        'To: (%s) replaced with database email!' => 'C�mzett: (%s) fel�l�rva az adatb�zis c�mmel!',
        'Cc: (%s) added database email!' => 'M�solat: (%s) e-mail c�me hozz�adva az adatb�zishoz!',
        '(Click here to add)' => '(Kattinston ide a hozz�ad�shoz)',
        'Preview' => 'El�n�zet',
        'Package not correctly deployed! You should reinstall the Package again!' => 'A csomag nincsen megfelel�en telep�tve! Telep�tse �jra a csomagot!',
        'Added User "%s"' => 'A "%s" felhaszn�l� hozz�adva',
        'Contract' => 'Kapcsolat',
        'Online Customer: %s' => 'Bejelentkezett �gyf�l: %s',
        'Online Agent: %s' => 'Bejelentkezett �gyint�z�: %s',
        'Calendar' => 'Napt�r',
        'File' => 'F�jl',
        'Filename' => 'F�jln�v',
        'Type' => 'T�pus',
        'Size' => 'M�ret',
        'Upload' => 'Felt�lt�s',
        'Directory' => 'K�nyvt�r',
        'Signed' => 'Al��rt',
        'Sign' => 'Al��r�s',
        'Crypted' => 'K�dolt',
        'Crypt' => 'K�dol�s',
        'Office' => 'Iroda',
        'Phone' => 'Telefonsz�m',
        'Fax' => 'Fax sz�m',
        'Mobile' => 'Mobil sz�m',
        'Zip' => 'Ir�ny�t�sz�m',
        'City' => 'V�ros',
        'Street' => 'Utca',
        'Country' => 'Orsz�g',
        'installed' => 'telep�tett',
        'uninstalled' => 'nem telep�tett',
        'Security Note: You should activate %s because application is already running!' => 'Biztons�gi megjegyz�s: Aktiv�lnia kellene a %s modult, mert az alakalmaz�s m�r fut!',
        'Unable to parse Online Repository index document!' => 'Nem siker�lt �rtelmezni az on-line csomagt�rol� index dokumentum�t!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'Nincsenek csomagok a k�rt Keretrendszerhez ebben az on-line csomagt�rol�ban, viszont vannak m�s Keretrendszerekhez!',
        'No Packages or no new Packages in selected Online Repository!' => 'Nincsenek csomagok vagy nincsenek �j csomagok a kiv�lasztott on-line csomagt�rol�ban!',
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
        'Invalid Token!' => '',

        # Template: AAAMonth
        'Jan' => 'Jan',
        'Feb' => 'Feb',
        'Mar' => 'M�r',
        'Apr' => '�pr',
        'May' => 'M�jus',
        'Jun' => 'J�n',
        'Jul' => 'J�l',
        'Aug' => 'Aug',
        'Sep' => 'Sze',
        'Oct' => 'Okt',
        'Nov' => 'Nov',
        'Dec' => 'Dec',
        'January' => 'Janu�r',
        'February' => 'Febru�r',
        'March' => 'M�rcius',
        'April' => '�prilis',
        'June' => 'J�nius',
        'July' => 'J�lius',
        'August' => 'Augusztus',
        'September' => 'Szeptember',
        'October' => 'Okt�ber',
        'November' => 'November',
        'December' => 'December',

        # Template: AAANavBar
        'Admin-Area' => 'Adminisztr�ci�s-ter�let',
        'Agent-Area' => '�gyint�z�-ter�let',
        'Ticket-Area' => 'Jegy-ter�let',
        'Logout' => 'Kil�p�s',
        'Agent Preferences' => '�gyint�z� be�ll�t�sai',
        'Preferences' => 'Be�ll�t�sok',
        'Agent Mailbox' => '�gyint�z� postafi�kja',
        'Stats' => 'Statisztika',
        'Stats-Area' => 'Statisztika-ter�let',
        'Admin' => 'Adminisztr�ci�',
        'Customer Users' => '�gyf�l felhaszn�l�k',
        'Customer Users <-> Groups' => '�gyf�l felhaszn�l�k <-> Csoportok',
        'Users <-> Groups' => 'Felhaszn�l�k <-> Csoportok',
        'Roles' => 'Szerepek',
        'Roles <-> Users' => 'Szerepek <-> Felhaszn�l�k',
        'Roles <-> Groups' => 'Szerepek <-> Csoportok',
        'Salutations' => 'Megsz�l�t�sok',
        'Signatures' => 'Al��r�sok',
        'Email Addresses' => 'E-mail c�mek',
        'Notifications' => '�rtes�t�sek',
        'Category Tree' => '',
        'Admin Notification' => 'Adminsztr�tori �rtes�t�sek',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Be�ll�t�sok sikeresen friss�tve!',
        'Mail Management' => 'E-mail kezel�s',
        'Frontend' => 'Felhaszn�l�i fel�let',
        'Other Options' => 'Egy�b be�ll�t�sok',
        'Change Password' => 'Jelsz� megv�ltoztat�sa',
        'New password' => '�j jelsz�',
        'New password again' => '�j jelsz� megism�tl�se',
        'Select your QueueView refresh time.' => 'V�lassza ki a V�r�lista n�zet friss�t�si idej�t.',
        'Select your frontend language.' => 'V�lassza ki a felhaszn�l�i fel�let nyelv�t.',
        'Select your frontend Charset.' => 'V�lassza ki a felhaszn�l�i fel�let karakterk�szlet�t.',
        'Select your frontend Theme.' => 'V�lassza ki a felhaszn�l�i fel�let st�lus�t.',
        'Select your frontend QueueView.' => 'V�lassza ki a felhaszn�l�i fel�let V�r�lista n�zet�t.',
        'Spelling Dictionary' => 'Helyes�r�s-ellen�rz� sz�t�r',
        'Select your default spelling dictionary.' => 'V�lassza ki az alap�rtelmezett helyes�r�sellen�rz� sz�t�rat.',
        'Max. shown Tickets a page in Overview.' => 'Max. megjelen�tett jegy az �ttekint�sn�l.',
        'Can\'t update password, passwords doesn\'t match! Please try it again!' => 'Nem siker�lt modos�tani a jelsz�t, a jelszavak nem egyeznek! K�rem pr�b�lja �jra!',
        'Can\'t update password, invalid characters!' => 'Nem siker�lt modos�tani a jelsz�t, �rv�nytelen karakterek!',
        'Can\'t update password, need min. 8 characters!' => 'Nem siker�lt modos�tani a jelsz�t, legal�bb 8 karakter megad�sa sz�ks�ges!',
        'Can\'t update password, need 2 lower and 2 upper characters!' => 'Nem siker�lt modos�tani a jelsz�t, legal�bb 2 kisbet�nek �s 2 nagybet�nek kell benne szerepelnie!',
        'Can\'t update password, need min. 1 digit!' => 'Nem siker�lt modos�tani a jelsz�t, legal�bb egy sz�mjegynek kell benne szerepelnie!',
        'Can\'t update password, need min. 2 characters!' => 'Nem siker�lt modos�tani a jelsz�t, legal�bb 2 karakter megad�sa sz�ks�ges!',

        # Template: AAAStats
        'Stat' => 'Statisztika',
        'Please fill out the required fields!' => 'K�rem t�ltse ki a k�telez� mez�ket!',
        'Please select a file!' => 'K�rem v�lasszon egy f�jlt!',
        'Please select an object!' => 'K�rem v�lasszok egy objektumot!',
        'Please select a graph size!' => 'K�rem v�lasszon egy grafikon m�retet!',
        'Please select one element for the X-axis!' => 'K�rem v�lasszon egy tulajdons�got az X tengelynek',
        'You have to select two or more attributes from the select field!' => 'Legal�bb k�t �rt�ket v�lasszon ki a mez�ben!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'K�rem v�lasszon egy �rt�ket vagy kapcsolja ki a \'R�gz�tett\' kapcsol�t a megjel�lt mez�n�l.',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Ha egy jel�l�n�gyzetet haszn�l, akkor n�h�ny �rt�ket is ki kell v�lasztania a tulajdons�ghoz!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Adjon meg egy �rt�ket a bemeneti mez�ben vagy kapcsolja ki a \'R�gz�tett\' kapcsol�t!',
        'The selected end time is before the start time!' => 'A befejez�si id�nek a kezdeti id� ut�n kell lennie!',
        'You have to select one or more attributes from the select field!' => 'V�lasszon ki egy vagy t�bb �rt�ket a mez�b�l!',
        'The selected Date isn\'t valid!' => 'A kiv�lasztott d�tum �rv�nytelen!',
        'Please select only one or two elements via the checkbox!' => 'K�rem v�lasszon egy vagy k�t elemet a jel�l�n�gyetekb�l!',
        'If you use a time scale element you can only select one element!' => 'Amennyiben egy id�sk�la elemet is v�lasztott, akkro csak egy elemet v�laszthat k�z�l�k!',
        'You have an error in your time selection!' => 'Hib�s a kiv�lasztott id�!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'A kiv�lasztott id� intervallum t�l kicsi, k�rem v�lasszon nagyobb sk�l�t.',
        'The selected start time is before the allowed start time!' => 'A kiv�lasztott kezd�si id� a megengedett kezd�si id� el�tt van!',
        'The selected end time is after the allowed end time!' => 'A kiv�lasztott befejez�si id� a megengedett befejez�si id� ut�n van!',
        'The selected time period is larger than the allowed time period!' => 'A kiv�lasztott ism�tl�d�s a megengedett ism�tl�d�sn�l nagyobb!',
        'Common Specification' => '�ltal�nos be�ll�t�sok',
        'Xaxis' => 'X tengely',
        'Value Series' => 'Megjelen�tett �rt�kek',
        'Restrictions' => 'Megk�t�sek',
        'graph-lines' => 'Grafikon - vonalak',
        'graph-bars' => 'Grafikon - oszlopok',
        'graph-hbars' => 'Grafikon - v�zszintes oszlopok',
        'graph-points' => 'Grafikon - pontok',
        'graph-lines-points' => 'Grafikon - vonalak-pontok',
        'graph-area' => 'Grafikon - ter�let',
        'graph-pie' => 'Grafikon - torta',
        'extended' => 'Kiterjesztett',
        'Agent/Owner' => '�gyint�z�/Tulajdonos',
        'Created by Agent/Owner' => 'Letrehoz� �gyint�z�/tulajdonos',
        'Created Priority' => 'L�trehoz�skori priorit�s',
        'Created State' => 'L�trehoz�skori �llapot',
        'Create Time' => 'L�trehoz�s ideje',
        'CustomerUserLogin' => '�gyf�l felhaszn�l�neve',
        'Close Time' => 'Lez�r�s ideje',

        # Template: AAATicket
        'Lock' => 'Z�rol�s',
        'Unlock' => 'Felold�s',
        'History' => 'El�zm�nyek',
        'Zoom' => 'R�szletek',
        'Age' => 'Kor',
        'Bounce' => 'Visszak�ld�s',
        'Forward' => 'Tov�bb�t�s',
        'From' => 'Felad�',
        'To' => 'C�mzett',
        'Cc' => 'M�solat',
        'Bcc' => 'Rejtett m�solat',
        'Subject' => 'T�rgy',
        'Move' => '�thelyez�s',
        'Queue' => 'V�r�lista',
        'Priority' => 'Priorit�s',
        'Priority Update' => 'Priorit�s m�dos�t�sa',
        'State' => '�llapot',
        'Compose' => 'K�sz�t',
        'Pending' => 'V�rakozik',
        'Owner' => 'Tulajdonos',
        'Owner Update' => 'Tulajdonos m�dos�t�sa',
        'Responsible' => 'Felel�s',
        'Responsible Update' => 'Felel�s m�dos�t�sa',
        'Sender' => 'K�ld�',
        'Article' => 'Bejegyz�s',
        'Ticket' => 'Jegy',
        'Createtime' => 'L�trehoz�s ideje',
        'plain' => 'sima',
        'Email' => 'E-mail',
        'email' => 'e-mail',
        'Close' => 'Lez�r�s',
        'Action' => 'M�velet',
        'Attachment' => 'Lev�lmell�klet',
        'Attachments' => 'Lev�lmell�kletek',
        'This message was written in a character set other than your own.' => 'Ezt az �zenetet m�s karakterk�szlettel �rt�k mint amit �n haszn�l.',
        'If it is not displayed correctly,' => 'Ha nem helyesen jelent meg,',
        'This is a' => 'Ez egy',
        'to open it in a new window.' => 'hogy megnyissa �j ablakban.',
        'This is a HTML email. Click here to show it.' => 'Ez egy HTML e-mail. Kattintson ide a megtekint�shez.',
        'Free Fields' => 'Szabad mez�k',
        'Merge' => 'Egyes�t�s',
        'merged' => 'egyes�tett',
        'closed successful' => 'sikeresen lez�rva',
        'closed unsuccessful' => 'sikertelen�l lez�rva',
        'new' => '�j',
        'open' => 'nyitott',
        'closed' => 'lez�rt',
        'removed' => 't�r�lt',
        'pending reminder' => 'eml�keztet�re v�rakozik',
        'pending auto' => '',
        'pending auto close+' => 'automatikus z�r�sra v�rakozik+',
        'pending auto close-' => 'automatikus z�r�sra v�rakozik-',
        'email-external' => 'k�ls� e-mail',
        'email-internal' => 'bels� e-mail',
        'note-external' => 'k�ls� jegyzet',
        'note-internal' => 'bels� jegyzet',
        'note-report' => 'jegyzet jelent�s',
        'phone' => 'telefon',
        'sms' => 'sms',
        'webrequest' => 'webk�r�s',
        'lock' => 'z�rolt',
        'unlock' => 'feloldott',
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
        'Ticket Number' => 'Jegy sz�ma',
        'Ticket Object' => 'Jegy objektum',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Nincs "%s" sz�m� jegy! Nem tudom csatolni!',
        'Don\'t show closed Tickets' => 'Ne jelen�tse meg a lez�rt jegyeket.',
        'Show closed Tickets' => 'Mutasd a lez�rt jegyeket',
        'New Article' => '�j bejegyz�s',
        'Email-Ticket' => 'E-mail jegy',
        'Create new Email Ticket' => '',
        'Phone-Ticket' => 'Telefon-jegy',
        'Search Tickets' => 'Jegyek keres�se',
        'Edit Customer Users' => '�gyf�l felhaszn�l� szerkeszt�se',
        'Edit Customer Company' => '�gyf�l c�g szerkeszt�se',
        'Bulk-Action' => 'Csoportos m�velet',
        'Bulk Actions on Tickets' => 'Csoportos m�velet jegyeken',
        'Send Email and create a new Ticket' => '',
        'Create new Email Ticket and send this out (Outbound)' => '�j E-mail jegy l�trehoz�sa �s kik�ld�se (Kimen�)',
        'Create new Phone Ticket (Inbound)' => '�j Telefon-jegy l�trehoz�sa (Bej�v�)',
        'Overview of all open Tickets' => '�sszes nyitott jegy �ttekint�se',
        'Locked Tickets' => 'Z�rolt jegyek',
        'Watched Tickets' => 'K�vetett jegyek',
        'Watched' => 'K�vetett',
        'Subscribe' => 'Feliratkoz�s',
        'Unsubscribe' => 'Leiratkoz�s',
        'Lock it to work on it!' => 'Jegy z�rol�sa, hogy dolgozzon rajta!',
        'Unlock to give it back to the queue!' => 'Oldja f�l, hogy visszaker�lj�n a v�r�list�ba!',
        'Shows the ticket history!' => 'Jegy el�zm�nyeinek megjelen�t�se!',
        'Print this ticket!' => 'Jegy nyomtat�sa!',
        'Change the ticket priority!' => 'Jegy priorit�s�nak m�dos�t�sa!',
        'Change the ticket free fields!' => 'Jegy szabad mez�inek m�dos�t�sa!',
        'Link this ticket to an other objects!' => '�sszekapcsolja a jegyet egy m�sik objektummal!',
        'Change the ticket owner!' => 'Jegy tulajdonos�nak m�dos�t�sa!',
        'Change the ticket customer!' => 'Jegyhez tartoz� �gyf�l m�dos�t�sa!',
        'Add a note to this ticket!' => 'Megjegyz�s �r�sa a jegyhez!',
        'Merge this ticket!' => 'Egyes�ti a jegyet egy m�sikkal!',
        'Set this ticket to pending!' => 'Jegy v�rakoz� �llapotba helyez�se!',
        'Close this ticket!' => 'Jegy lez�r�sa!',
        'Look into a ticket!' => 'Jegy r�szletesebb megtekint�se!',
        'Delete this ticket!' => 'Jegy t�rl�se!',
        'Mark as Spam!' => 'Jegy spamnek jel�l�se!',
        'My Queues' => 'Saj�t v�r�list�im',
        'Shown Tickets' => 'Megjelen�tett jegyek',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Az �n "<OTRS_TICKET>" jegy sz�mmal rendelkez� e-mailje egyes�t�sre ker�lt a "<OTRS_MERGE_TO_TICKET>" jeggyel.',
        'Ticket %s: first response time is over (%s)!' => 'Jegy %s: els� v�lasz ideje letelt (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Jegy %s: els� v�lasz ideje le fog telni %s id�n bel�l!',
        'Ticket %s: update time is over (%s)!' => 'Jegy %s: friss�t�s ideje letelt (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Jegy %s: friss�t�s ideje le fog telni %s id�n bel�l!',
        'Ticket %s: solution time is over (%s)!' => 'Jegy %s: megold�s ideje letelt (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Jegy %s: megold�s ideje le fog telni %s id�n bel�l!',
        'There are more escalated tickets!' => 'T�bb kiemelt jegy van!',
        'New ticket notification' => '�j jegy �rtes�t�s',
        'Send me a notification if there is a new ticket in "My Queues".' => 'K�ldj�n nekem �rtes�t�st, ha �j jegy van a "Saj�t v�r�list�im"-ban.',
        'Follow up notification' => 'V�laszlev�l �rtes�t�s',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'K�ldj�n �rtes�t�st ha az �gyf�l v�laszol �s �n vagyok a tulajdonosa a jegynek.',
        'Ticket lock timeout notification' => 'Jegyz�rol�s-lej�rat �rtes�t�s',
        'Send me a notification if a ticket is unlocked by the system.' => 'K�ldj�n �rtes�t�st ha egy jegy z�rol�s�t a renszer feloldotta.',
        'Move notification' => '�thelyez�s �rtes�t�s',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'K�ldj�n nekem �rtes�t�st, ha egy jegyet a "Saj�t v�r�list�im" egyik�be mozgatt�k.',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Saj�t v�r�list�knak tekintett v�r�list�k kiv�laszt�sa. E-mail �rtes�t�t�sek fog kapni ezekr�l a v�r�list�kr�l, amennyiben ez enged�lyezett.',
        'Custom Queue' => 'Egyedi v�r�list�k',
        'QueueView refresh time' => 'V�r�lista n�zet friss�t�si ideje',
        'Screen after new ticket' => '�j jegy ut�ni k�perny�',
        'Select your screen after creating a new ticket.' => 'V�lassza ki a k�perny�t �j jegy l�trehoz�sa ut�n.',
        'Closed Tickets' => 'Lez�rt jegyek',
        'Show closed tickets.' => 'Mutasd a lez�rt jegyeket.',
        'Max. shown Tickets a page in QueueView.' => 'A megjelen�tett jegyek sz�m�nak maximuma a V�r�lista n�zetn�l.',
        'CompanyTickets' => 'C�g jegyek',
        'MyTickets' => 'Saj�t jegyek',
        'New Ticket' => '�j jegy',
        'Create new Ticket' => '�j jegy l�trehoz�sa',
        'Customer called' => '�gyf�l telefon�lt',
        'phone call' => 'telefonh�v�s',
        'Responses' => 'V�laszok',
        'Responses <-> Queue' => 'V�laszok <-> V�r�lista',
        'Auto Responses' => 'Automatikus v�laszok',
        'Auto Responses <-> Queue' => 'Automatikus v�laszok <-> V�r�lista',
        'Attachments <-> Responses' => 'Lev�lmell�kletek <-> V�laszok',
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
        'History::SendAgentNotification' => 'T�rt�net::�gyint�z��rtes�t�sK�ld�s',
        'History::SendCustomerNotification' => 'T�rt�net::�gyf�l�rtes�t�sK�ld�s',
        'History::EmailAgent' => 'T�rt�net::Email�gyint�z�',
        'History::EmailCustomer' => 'T�rt�net::Email�gyf�l',
        'History::PhoneCallAgent' => 'T�rt�net::�gyint�z�TelefonH�v�s',
        'History::PhoneCallCustomer' => 'T�rt�net::�gyf�lTelefonH�v�s',
        'History::AddNote' => 'T�rt�net::Megjegyz�sHozz�ad�s',
        'History::Lock' => 'T�rt�net::Z�rol',
        'History::Unlock' => 'T�rt�net::Felold�s',
        'History::TimeAccounting' => 'T�rt�net::Id�Elsz�mol�s',
        'History::Remove' => 'T�rt�net::Elt�vol�t�s',
        'History::CustomerUpdate' => 'T�rt�net::�gyf�lM�dos�t�s',
        'History::PriorityUpdate' => 'T�rt�net::Priorit�sM�dos�t�s',
        'History::OwnerUpdate' => 'T�rt�net::TulajdonosV�lt�s',
        'History::LoopProtection' => 'T�rt�net::Visszacsatol�sV�delem',
        'History::Misc' => 'T�rt�net::Vegyes',
        'History::SetPendingTime' => 'T�rt�net::V�rakoz�siId�Be�ll�t�s',
        'History::StateUpdate' => 'T�rt�net::�llapotM�dos�t�s',
        'History::TicketFreeTextUpdate' => 'T�rt�net::JegySzabadSz�vegM�dos�t�s',
        'History::WebRequestCustomer' => 'T�rt�net::�gyf�lWebK�r�s',
        'History::TicketLinkAdd' => 'T�rt�net::JegyCsatol�sHozz�ad�s',
        'History::TicketLinkDelete' => 'T�rt�net::JegyCsatol�sT�rl�s',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

        # Template: AAAWeekDay
        'Sun' => 'Vas',
        'Mon' => 'H�t',
        'Tue' => 'Ked',
        'Wed' => 'Sze',
        'Thu' => 'Cs�',
        'Fri' => 'P�n',
        'Sat' => 'Szo',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Lev�lmell�kletek kezel�se',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Automatikus v�lasz kezel�nek',
        'Response' => 'V�lasz',
        'Auto Response From' => 'Automatikus v�lasz felad�nak',
        'Note' => 'Megjegyz�s',
        'Useable options' => 'Haszn�lhat� opci�k',
        'To get the first 20 character of the subject.' => 'Az els� 20 karakter haszn�lata a t�rgyb�l',
        'To get the first 5 lines of the email.' => 'Az els� 5 sor haszn�lata az e-mailb�l.',
        'To get the realname of the sender (if given).' => 'A k�ld� val�di nev�nek haszn�lata (ha van ilyen)',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'A bejegyz�s attributm�nak haszn�lata (pl. <OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> �s <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Az aktu�lis �gyf�l adatai (pl.  <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'A jegy tulajdonos�nak adatai (pl.  <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'A jegy felel�s�nek adatai (pl. <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'A m�veletet v�gz� felhaszn�l�nak adatai (pl. <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'A jegy adatai (pl. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Konfigur�ci�s �rt�kek (pl.  <OTRS_CONFIG_HttpType>).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '�gyf�l c�gek kezel�se',
        'Search for' => 'Keresend�',
        'Add Customer Company' => '�gyf�l c�g hozz�ad�sa',
        'Add a new Customer Company.' => '�j �gyf�l c�g hozzad�sa',
        'List' => 'Lista',
        'This values are required.' => 'Ezen �rt�kek megad�sa k�telez�.',
        'This values are read only.' => 'Ezek az �rt�kek csak olvashat�k.',

        # Template: AdminCustomerUserForm
        'Customer User Management' => '�gyf�l felhaszn�l�k kezel�se',
        'Add Customer User' => '�gyf�l felhaszn�l� hozz�ad�sa',
        'Source' => 'Forr�s',
        'Create' => 'L�trehoz�s',
        'Customer user will be needed to have a customer history and to login via customer panel.' => '�gyf�l felhaszn�l� l�trehoz�sa sz�ks�ges, hogy legyenek �gyf�lhez tartoz� el�zm�nyek �s be lehessen l�pni az �gyf�l oldalon.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => '�gyf�l felhaszn�l�k <-> Csoportok kezel�se',
        'Change %s settings' => '%s be�ll�t�sainak m�dos�t�sa',
        'Select the user:group permissions.' => 'A felhaszn�l�:csoport jogok kiv�laszt�sa.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Ha nincs semmi kiv�lasztva, akkor nincsenek jogosults�gok ebben a csoportban (a jegyek nem lesznek el�rhet�k a felhaszn�l�nak).',
        'Permission' => 'Jogosults�g',
        'ro' => 'Csak olvas�s',
        'Read only access to the ticket in this group/queue.' => 'Csak olvas�si jogosults�g a jegyekhez ebben a csoportban/v�r�list�ban.',
        'rw' => '�r�s/Olvas�s',
        'Full read and write access to the tickets in this group/queue.' => 'Teljes �r�s �s olvas�si jog a jegyekhez ebben a csoportban/v�r�list�ban.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => '�gyf�l felhaszn�l�k <-> Szolg�ltat�sok kezel�se',
        'CustomerUser' => '�gyf�l felhaszn�l�',
        'Service' => 'Szolg�ltat�s',
        'Edit default services.' => '',
        'Search Result' => 'Keres�si eredm�ny',
        'Allocate services to CustomerUser' => '',
        'Active' => 'Akt�v',
        'Allocate CustomerUser to service' => '',

        # Template: AdminEmail
        'Message sent to' => '�zenet elk�ldve',
        'Recipents' => 'C�mzettek',
        'Body' => 'T�rzs',
        'Send' => 'K�ld�s',

        # Template: AdminGenericAgent
        'GenericAgent' => 'Automata �gyint�z�',
        'Job-List' => 'Teend�k list�ja',
        'Last run' => 'Utols� v�grehajt�s',
        'Run Now!' => 'V�grehajt�s most!',
        'x' => 'x',
        'Save Job as?' => 'Teend�k ment�se m�sk�pp?',
        'Is Job Valid?' => 'Teend� �rv�nyes?',
        'Is Job Valid' => 'Teend� �rv�nyes',
        'Schedule' => 'Id�z�t�s',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Sz�veg keres�se a bejegyz�sekben (pl. "Mar*in" or "Baue*")',
        '(e. g. 10*5155 or 105658*)' => 'pl. 10*5144 vagy 105658*',
        '(e. g. 234321)' => 'pl. 234321',
        'Customer User Login' => '�gyf�l felhaszn�l� bel�p�s',
        '(e. g. U5150)' => 'pl. U5150',
        'SLA' => 'SLA',
        'Agent' => '�gyint�z�',
        'Ticket Lock' => 'Jegy z�rol�s',
        'TicketFreeFields' => 'Jegy szabad mez�i',
        'Create Times' => 'L�trehoz�si id�k',
        'No create time settings.' => 'Nincsenek l�trehoz�si id� be�ll�t�sok.',
        'Ticket created' => 'Jegy l�trehozva',
        'Ticket created between' => 'Jegy l�trehozva id�pontok k�z�tt:',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending Times' => 'V�rakoz�si id�k',
        'No pending time settings.' => 'Nincsenek v�rakoz�si id� be�ll�t�sok.',
        'Ticket pending time reached' => 'V�rakoz�si id� letelt',
        'Ticket pending time reached between' => 'V�rakoz�si id� letelt id�pontok k�z�tt:',
        'New Service' => '',
        'New SLA' => '',
        'New Priority' => '�j priorit�s',
        'New Queue' => '�j v�r�lista',
        'New State' => '�j �llapot',
        'New Agent' => '�j �gyint�z�',
        'New Owner' => '�j tulajdonos',
        'New Customer' => '�j �gyf�l',
        'New Ticket Lock' => 'Jegy �j z�rol�si �llapota',
        'New Type' => '',
        'New Title' => '',
        'New Type' => '',
        'New TicketFreeFields' => '�j jegy szabad mez�k',
        'Add Note' => 'Megjegyz�s hozz�ad�sa',
        'CMD' => 'PARANCS',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Ez a parancs lesz v�grehajtva. Az ARG[0] lesz a jegy sz�ma. Az ARG[1] lesz a jegy azonos�t�ja.',
        'Delete tickets' => 'Jegyek t�rl�se',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Figyelmeztet�s! Ezek a jegyek el lesznek t�vol�tva az adatb�zisb�l! Ezek a jegyek elvesznek!',
        'Send Notification' => '�rtes�t�s k�ld�se',
        'Param 1' => '1. param�ter',
        'Param 2' => '2. param�ter',
        'Param 3' => '3. param�ter',
        'Param 4' => '4. param�ter',
        'Param 5' => '5. param�ter',
        'Param 6' => '6. param�ter',
        'Send no notifications' => 'Ne k�ldj�n �rtes�t�seket',
        'Yes means, send no agent and customer notifications on changes.' => 'Igen eset�n nem k�ld �rtes�t�sekes sem az �gyint�z�nek, sem az �gyf�lnek a v�ltoz�sokr�l.',
        'No means, send agent and customer notifications on changes.' => 'Nem eset�n mind az �gyint�z�nek, mind az �gyf�lnek k�ld �rtes�t�seket a v�ltoz�sokr�l.',
        'Save' => 'Ment�s',
        '%s Tickets affected! Do you really want to use this job?' => '%s jegy �rintett! Val�ban el akarja v�gezni ezt a teend�t a jegyeken?',
        '"}' => '',

        # Template: AdminGroupForm
        'Group Management' => 'Csoportok kezel�se',
        'Add Group' => 'Csoport hozz�ad�sa',
        'Add a new Group.' => '�j csoport hozz�ad�sa',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Az admin csoport megkapja az admin ter�letet �s a st�tusz csoport megkapja a st�tusz ter�letet.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Hozzon l�tre �j csoportot a k�l�nb�z� �gyint�z� csoportok (pl. beszerz� oszt�ly, t�mogat� oszt�ly, elad� oszt�ly, ...) hozz�f�r�si jogainak kezel�s�hez.',
        'It\'s useful for ASP solutions.' => 'Ez hasznos ASP megold�sokhoz.',

        # Template: AdminLog
        'System Log' => 'Rendszernapl�',
        'Time' => 'Id�',

        # Template: AdminMailAccount
        'Mail Account Management' => '',
        'Host' => 'Kiszolg�l�',
        'Trusted' => 'Megb�zhat�',
        'Dispatching' => 'Sz�tv�logat�s',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Az �sszes fi�kkal rendelkez� bej�v� e-mail egy kiv�lasztott v�r�list�hoz lesz rendelve!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Ha az �n fi�kja megb�zhat�, a m�r l�tez� X-OTRS fejl�cet haszn�ljuk be�rkez�skor (priorit�shoz, ...)! Egy�b esetben a levelez�si sz�r�k lesznek alkalmazva.',

        # Template: AdminNavigationBar
        'Users' => 'Felhaszn�l�k',
        'Groups' => 'Csoportok',
        'Misc' => 'Egy�b',

        # Template: AdminNotificationForm
        'Notification Management' => '�rtes�t�skezel�s',
        'Notification' => '�rtes�t�s',
        'Notifications are sent to an agent or a customer.' => 'Az �rtes�t�sek �gyint�z�nek vagy �gyf�lnek ker�lnek elk�ld�sre.',

        # Template: AdminPackageManager
        'Package Manager' => 'Csomagkezel�',
        'Uninstall' => 'Elt�vol�t�s',
        'Version' => 'Verzi�',
        'Do you really want to uninstall this package?' => 'Val�ban el akarja t�vol�tani ezt a csomagot?',
        'Reinstall' => '�jratelep�t�s',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Val�ban �jra k�v�nja telep�teni ezt a csomagot (minden megv�ltoztatott be�ll�t�s elv�sz)?',
        'Continue' => 'Folytat�s',
        'Install' => 'Telep�t�s',
        'Package' => 'Csomag',
        'Online Repository' => 'On-line csomagt�rol�',
        'Vendor' => 'Terjeszt�',
        'Upgrade' => 'Friss�t�s',
        'Local Repository' => 'Helyi csomagt�rol�',
        'Status' => '�llapot',
        'Overview' => '�ttekint�s',
        'Download' => 'Let�lt�s',
        'Rebuild' => '�jra�p�t�s',
        'ChangeLog' => 'V�ltoztat�sok',
        'Date' => 'D�tum',
        'Filelist' => 'F�jl lista',
        'Download file from package!' => 'F�jl let�lt�se a csomagb�l!',
        'Required' => 'K�vetlem�nyek',
        'PrimaryKey' => '',
        'AutoIncrement' => '',
        'SQL' => 'SQL',
        'Diff' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Teljes�tm�ny napl�',
        'This feature is enabled!' => 'Ez a k�pess�g akt�v!',
        'Just use this feature if you want to log each request.' => 'Haszn�lja ezt a k�pess�get amennyiben napl�zni szeretne minden egyes k�r�st.',
        'Of couse this feature will take some system performance it self!' => 'Term�szetesen ez a k�pess�g maga is befoly�solja a rendszer teljes�tm�ny�t!',
        'Disable it here!' => 'Inaktiv�lja itt!',
        'This feature is disabled!' => 'Ez a k�pess�g inakt�v!',
        'Enable it here!' => 'Aktiv�lja itt!',
        'Logfile too large!' => 'A napl�f�jl t�l nagy!',
        'Logfile too large, you need to reset it!' => 'A napl�f�jl t�l nagy, kit�rl�se sz�ks�ges!',
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
        'PGP Management' => 'PGP kulcs kezel�se',
        'Result' => 'Eredm�nyek',
        'Identifier' => 'Azonos�t�',
        'Bit' => 'Bitek sz�ma',
        'Key' => 'Kulcs',
        'Fingerprint' => 'Ujjlenyomat',
        'Expires' => 'Lej�rati id�',
        'In this way you can directly edit the keyring configured in SysConfig.' => '�gy k�zvetlen�l szerkesztheti a kulcstart�t amit a rendszer be�ll�t�sain�l be�ll�tott.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Levelez�si sz�r�k kezel�se',
        'Filtername' => 'Sz�r� neve',
        'Match' => 'Egyez�s',
        'Header' => 'Fejl�c',
        'Value' => '�rt�k',
        'Set' => 'Be�ll�t�s',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'A be�rkez� e-mailek az X-Fejl�cek alapj�n legyen hozz�rendelve! Szab�lyos kifejez�sek alkalmazhat�k.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Amennyiben �n csak az e-mail c�m egyez�s�t k�v�nja vizsg�lni, akkor haszn�lja a EMAILADDRESS:info@example.com formul�t a Felad� (From), C�mzett (To) vagy M�solat (Cc) mez�kben.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Ha szab�lyos kifejz�seket haszn�l, haszn�lhatja a ()-ben lev� egyez� �rt�ket mint [***] a \'Be�ll�t�s\'-n�l.',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'V�r�lista <-> Automatikus v�laszok kezel�se',

        # Template: AdminQueueForm
        'Queue Management' => 'V�r�list�k kezel�se',
        'Sub-Queue of' => 'V�r�lista al� tartozik',
        'Unlock timeout' => 'Felold�si id�t�ll�p�s',
        '0 = no unlock' => '0 = nincs felold�s',
        'Only business hours are counted.' => '',
        'Escalation - First Response Time' => 'Kiemel�s - Els� v�lasz ideje',
        '0 = no escalation' => '0 = nincs kiemel�s',
        'Only business hours are counted.' => '',
        'Notify by' => '',
        'Escalation - Update Time' => 'Kiemel�s - Friss�t�s ideje',
        'Notify by' => '',
        'Escalation - Solution Time' => 'Kiemel�s - Megold�s ideje',
        'Follow up Option' => 'V�lasz kezel�se',
        'Ticket lock after a follow up' => 'Jegy z�rol�sa v�lasz �rkez�se ut�n.',
        'Systemaddress' => 'Rendszerc�m',
        'Customer Move Notify' => '�gyf�l �rtes�t�se mozgat�skor',
        'Customer State Notify' => '�gyf�l �rtes�t�se �llapotv�ltoz�skor',
        'Customer Owner Notify' => '�gyf�l �rtes�t�se tulajdonosv�lt�skor',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Ha az �gyint�z� z�rolja a jegyet �s nem k�ld v�laszt ezen id�n bel�l, a jegy z�rol�sa megsz�nik. �gy a jegy l�that� lesz minden �gyint�z�nek.',
        'Escalation time' => 'Kiemel�si id�',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Ha a jegy nem ker�l megv�laszol�sra a megadott id�n bel�l, csak ez a jegy lesz megjelen�tve.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Ha a jegy le van z�rva �s az �gyf�l v�laszol a jegyre, akkor az z�rol�sra ker�l a r�gi tulajdonos r�sz�re.',
        'Will be the sender address of this queue for email answers.' => 'Enn�l a v�r�list�n�l ez lesz a felad� e-mail v�laszokhoz.',
        'The salutation for email answers.' => 'A megsz�l�t�s az e-mail v�laszokhoz.',
        'The signature for email answers.' => 'Az al��r�s a v�lasz e-mailekhez.',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy �thelyez�sre ker�lt.',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy �llapota megv�ltozott.',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'Az OTRS �rtes�t� levelet k�ld az �gyf�lnek ha a jegy tulajdonosa megv�ltozott.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'V�laszok <-> V�rlist�k kezel�se',

        # Template: AdminQueueResponsesForm
        'Answer' => 'V�lasz',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'V�laszok <-> Lev�lmell�kletek kezel�se',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Reakci� kezel�s',
        'A response is default text to write faster answer (with default text) to customers.' => 'Egy reakci� az alap�rtelmezett sz�veg gyors v�laszokhoz (az alap�rtelmezett sz�veggel) az �gyfeleknek.',
        'Don\'t forget to add a new response a queue!' => 'Ne felejtsen el �j reakci�t hozz�adni a v�r�list�hoz!',
        'The current ticket state is' => 'A jegy aktu�lis �llapota',
        'Your email address is new' => 'Az �n e-mail c�me �j',

        # Template: AdminRoleForm
        'Role Management' => 'Szerepek kezel�se',
        'Add Role' => 'Szerep hozz�ad�sa',
        'Add a new Role.' => '�j szerep hozz�ad�sa',
        'Create a role and put groups in it. Then add the role to the users.' => 'Hozzon l�tre egy szerepet �s tegyen bele csoportokat. Azut�n adja a szerepet a felhaszn�l�khoz.',
        'It\'s useful for a lot of users and groups.' => 'Ez hasznos egy csom� felhaszn�l�nak �s csoportnak',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'Szerepek <-> Csoportok kezel�se',
        'move_into' => 'mozgat',
        'Permissions to move tickets into this group/queue.' => 'Jogosults�gok jegyek �thelyez�s�hez ebbe a csoportba/v�r�list�ba.',
        'create' => 'k�sz�t',
        'Permissions to create tickets in this group/queue.' => 'Jogosults�gok �j jegyek l�trehoz�s�hoz ebben a csoportban/v�r�list�ban.',
        'owner' => 'tulajdonos',
        'Permissions to change the ticket owner in this group/queue.' => 'Jogosults�gok a jegy tulajdonos�nak megv�ltoztat�s�hoz ebben a csoportban/v�r�list�ban.',
        'priority' => 'priorit�s',
        'Permissions to change the ticket priority in this group/queue.' => 'Jogosult�gok a jegy priorit�snak megv�ltoztat�s�hoz ebben a csoportban/v�r�list�ban.',

        # Template: AdminRoleGroupForm
        'Role' => 'Szerep',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'Szerepek <-> Felhaszn�l�k kezel�se',
        'Select the role:user relations.' => 'V�lassza ki a szerep:felhaszn�l� kapcsolatokat.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Megsz�l�t�sok kezel�se',
        'Add Salutation' => 'Megsz�l�t�s hozz�ad�sa',
        'Add a new Salutation.' => '�j megsz�l�t�s hozz�ad�sa',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'SQL parancsok',
        'Limit' => 'Sorok sz�ma legfeljebb',
        'Go' => 'Ind�t�s',
        'Select Box Result' => 'SQL parancs eredm�nye',

        # Template: AdminService
        'Service Management' => 'Szolg�ltat�sok kezel�se',
        'Add Service' => 'Szolg�ltat�s hozz�ad�sa',
        'Add a new Service.' => '�j szolg�ltat�s hozz�ad�sa',
        'Sub-Service of' => 'Szolg�tat�sa al� tartozik',

        # Template: AdminSession
        'Session Management' => 'Folyamatkezel�s',
        'Sessions' => 'Folyamat',
        'Uniq' => 'Egyedi',
        'Kill all sessions' => '�sszes folyamat t�rl�se',
        'Session' => 'Folyamat',
        'Content' => 'Tartalom',
        'kill session' => 'folyamat t�rl�se',

        # Template: AdminSignatureForm
        'Signature Management' => 'Al��r�sok kezel�se',
        'Add Signature' => 'Al��r�s hozz�ad�sa',
        'Add a new Signature.' => '�j al��r�s hozz�ad�sa',

        # Template: AdminSLA
        'SLA Management' => 'SLA kezel�se',
        'Add SLA' => 'SLA hozz�ad�sa',
        'Add a new SLA.' => '�j SLA hozz�ad�sa',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME kezel�s',
        'Add Certificate' => 'Tanus�tv�ny Hozz�ad�sa',
        'Add Private Key' => 'Titkos Kulcs Hoz�ad�sa',
        'Secret' => 'Titok',
        'Hash' => 'Kivonat',
        'In this way you can directly edit the certification and private keys in file system.' => '�ly m�don k�zvetlen�l szerkesztheti a f�jlrendszeren t�rolt tanus�tv�nyokat �s titkos kulcsokat.',

        # Template: AdminStateForm
        'State Management' => '�llapotok kezel�se',
        'Add State' => '�llapot hozz�ad�sa',
        'Add a new State.' => '�j �llapot hozz�ad�sa',
        'State Type' => '�llapot t�pusa',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Figyeljen oda, hogy az Kernel/Config.pm f�jlban is friss�tse az alap�rtelmezett �llapotokat!',
        'See also' => 'L�sd m�g',

        # Template: AdminSysConfig
        'SysConfig' => 'Rendszerbe�ll�t�sok',
        'Group selection' => 'Csoport kiv�laszt�sa',
        'Show' => 'Megjelen�t�s',
        'Download Settings' => 'Be�ll�t�sok let�lt�se',
        'Download all system config changes.' => 'Minden rendszerbe�ll�t�s modos�t�s let�lt�se.',
        'Load Settings' => 'Be�ll�t�sok bet�lt�se',
        'Subgroup' => 'Alcsoport',
        'Elements' => 'Elemek sz�ma',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Be�ll�t�si lehet�s�gek',
        'Default' => 'Alap�rtelmezett',
        'New' => '�j',
        'New Group' => '�j csoport',
        'Group Ro' => '',
        'New Group Ro' => '',
        'NavBarName' => '',
        'NavBar' => '',
        'Image' => '',
        'Prio' => '',
        'Block' => '',
        'AccessKey' => '',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Rendszer e-mail c�mek kezel�se',
        'Add System Address' => 'Rendszer c�m hozz�ad�sa',
        'Add a new System Address.' => '�j rendszer c�m hozz�ad�sa',
        'Realname' => 'Val�di n�v',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Az �sszes bej�v� e-mail ezzel az c�mzettel a kiv�lasztott v�r�list�hoz lesz rendelve!',

        # Template: AdminTypeForm
        'Type Management' => 'T�pusok kezel�se',
        'Add Type' => 'T�pus hozz�ad�sa',
        'Add a new Type.' => '�j t�pus hozz�ad�sa',

        # Template: AdminUserForm
        'User Management' => 'Felhaszn�l�k kezel�se',
        'Add User' => 'Felhaszn�l� hozz�ad�sa',
        'Add a new Agent.' => '�j felhaszn�l� hozz�ad�sa',
        'Login as' => '',
        'Firstname' => 'Keresztn�v',
        'Lastname' => 'Vezet�kn�v',
        'User will be needed to handle tickets.' => 'Felhaszn�l� sz�ks�ges a jegyek kezel�s�hez.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Ne felejtse el az �j felhaszn�l�t hozz�adni csoportokhoz �s/vagy szerepekhez!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'Felhaszn�l�k <-> Csoportok kezel�se',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'C�mjegyz�k',
        'Return to the compose screen' => 'Visszat�r�s a szerkeszt�k�perny�re',
        'Discard all changes and return to the compose screen' => 'Minden v�ltoztat�s megsemmis�t�se �s visszat�r�s a szerkeszt�k�perny�re',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerTableView

        # Template: AgentInfo
        'Info' => 'Info',

        # Template: AgentLinkObject
        'Link Object' => 'Objektumok �sszekapcsol�sa',
        'Select' => 'Kiv�laszt�s',
        'Results' => 'Eredm�nyek',
        'Total hits' => '�sszes tal�lat',
        'Page' => 'Oldal',
        'Detail' => 'R�szletek',

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
        'Do you really want to delete this Object?' => 'Val�ban t�r�lni szertn� ezt az objektumot?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'V�lassza ki a megk�t�seket a statsztika testre szab�s�hoz',
        'Fixed' => 'R�gz�tett',
        'Please select only one element or turn off the button \'Fixed\'.' => 'K�rem v�lasszon egy �rt�ket vagy kapcsolja ki a \'R�gz�tett\' kapcsol�t.',
        'Absolut Period' => 'Abszol�t id�szak',
        'Between' => 'Id�szak:',
        'Relative Period' => 'Relat�v id�szak',
        'The last' => 'A legut�bbi',
        'Finish' => 'Befejez�s',
        'Here you can make restrictions to your stat.' => 'Itt megk�t�seket adhat a statsztik�hoz.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Ha elt�vol�tja a "R�gz�tett" jel�l�n�gyzetet, akkor a statisztik�t el��ll�t� �gyint�z� megv�ltoztathatja az �rt�keit a megfelel� tulajdons�gnak.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Az �ltal�nos be�ll�t�sok megad�sa',
        'Permissions' => 'Jogosults�gok',
        'Format' => 'Form�tum',
        'Graphsize' => 'Grafikon m�rete',
        'Sum rows' => 'Sorok �sszegz�se',
        'Sum columns' => 'Oszlopok �sszegz�se',
        'Cache' => 'Gyors�t�t�r',
        'Required Field' => 'K�telez� mez�k',
        'Selection needed' => 'V�laszt�k sz�ks�ges',
        'Explanation' => 'Magyar�zat',
        'In this form you can select the basic specifications.' => 'Ezen a fel�leten elv�gezheti az alapvet� be�ll�t�sokat.',
        'Attribute' => 'Tulajdons�g',
        'Title of the stat.' => 'A statisztika c�me.',
        'Here you can insert a description of the stat.' => 'Itt tudja megadni a statisztika le�r�s�t.',
        'Dynamic-Object' => 'Dinamikus objektum',
        'Here you can select the dynamic object you want to use.' => 'Itt tudja kiv�lasztani azt a dinamikus objektumot, amelyet haszn�ni k�v�n.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(Megjegyz�s: A telep�t�st�l f�gg mennyi dinamikus objektumot haszn�lhat.)',
        'Static-File' => 'Statikus f�jl',
        'For very complex stats it is possible to include a hardcoded file.' => 'Nagyon �sszetett statisztik�kn�l lehets�g el�re elk�sz�tett f�jlok haszn�lata.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'Ha rendelkez�sre �ll egy �jabb el�re elk�sz�tett f�jl akkor az itt megjelenik �s v�laszthat� k�z�l�k egyet.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Jogosults�g be�ll�t�sok. Kiv�laszthat egy vagy t�bb csoportot, hogy a be�ll�tott statisztik�t megtekinthet�v� tegye a k�l�nb�z� �gyint�z�k sz�m�ra.',
        'Multiple selection of the output format.' => 'T�bb kimeneti form�tum kiv�laszt�sa.',
        'If you use a graph as output format you have to select at least one graph size.' => 'Amennyiben grafikont is kiv�lasztott, mint kimeneti form�tum, �gy ki kell v�lasztania legal�bb egy grafikon m�retet.',
        'If you need the sum of every row select yes' => 'Amennyiben a sorok �sszegz�s�re van sz�ks�ge, akkor v�lassza az igent.',
        'If you need the sum of every column select yes.' => 'Amennyiben az oszlopok �sszegz�s�re van sz�ks�ge, akkor v�lassza az igent.',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'A statisztik�k t�bbs�ge haszn�lhat gyors�t�t�rat. Ez gyors�tja az elk�sz�t�s�t a statisztik�nak.',
        '(Note: Useful for big databases and low performance server)' => '(Megyjegyz�s: Ez hasznos nagy m�ret� adatb�zisokn�l �s ki teljes�tm�ny� kiszolg�l� haszn�lata eset�n.)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => '�rv�nytelen statisztika eset�n nem lehets�ges a statiszika el��ll�t�sa.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'Ez akkor hasznos, ha nem akarja, hogy valaki el�rje a statisztika eredm�ny�t vagy a statsztika nincsen m�g teljesen be�ll�tva.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'V�lassza ki a tulajdons�gokat a grafikonon megjelen� �rt�kekhez',
        'Scale' => 'Sk�la',
        'minimal' => '',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => '',
        'Here you can the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Itt kiv�laszthatja a grafikonon megjelen� �rt�keket. Egy vagy k�t tulajdons�got jel�lhet ki. Ut�n kiv�laszthatja a tulajdons�g �rt�keit. Minden �rt�k k�l�n ker�l �br�zol�sra a grafikonon. Ha nem v�laszt ki egyetlen �rt�ket sem a tulajdons�ghoz, akkor az �sszes �rt�k haszn�lva lesz a statisztika l�trehoz�sakor. Szint�n hozz�ad�sra ker�lnek a legut�bbi be�ll�t�s �ta l�trej�tt �j �rt�kek is.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'V�lassza ki a tulajdons�got, amely az X tengelyen fog megjelenni.',
        'maximal period' => '',
        'minimal scale' => '',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Itt �ll�thatja be az X tengelyt. V�lasszon egyet a r�di� gombok k�z�l. Ut�na v�lassza ki k�t vagy t�bb �rt�k�t a tulajdons�gnak. Ha nem v�laszt ki egyetlen �rt�ket sem a tulajdons�ghoz, akkor az �sszes �rt�k haszn�lva lesz a statisztika l�trehoz�sakor. Szint�n hozz�ad�sra ker�lnek a legut�bbi be�ll�t�s �ta l�trej�tt �j �rt�kek is.',

        # Template: AgentStatsImport
        'Import' => 'Import�l�s',
        'File is not a Stats config' => 'A f�jl nem egy statisztika be�ll�t�s f�jl',
        'No File selected' => 'Nincsen f�jl kiv�lasztva',

        # Template: AgentStatsOverview
        'Object' => 'Objektum',

        # Template: AgentStatsPrint
        'Print' => 'Nyomtat�s',
        'No Element selected.' => 'Nincsen �rt�k kiv�lasztva.',

        # Template: AgentStatsView
        'Export Config' => 'Be�ll�t�sok export�l�sa',
        'Informations about the Stat' => 'Inform�ci� a statisztik�r�l',
        'Exchange Axis' => 'Tengelyek f�lcser�l�se',
        'Configurable params of static stat' => '',
        'No element selected.' => 'Nincsenek ert�kek kiv�lasztva.',
        'maximal period from' => '',
        'to' => '',
        'Start' => 'Start',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'A bemeneti �s kiv�laszthat� mez�kkel kiv�laszthatja a k�v�nt statisztik�t. Az �n �ltal szerkeszthet� statisztika �rt�kek a statisztik�t be�ll�t� adminisztr�tort�l f�ggnek.',

        # Template: AgentTicketBounce
        'Bounce ticket' => 'Jegy visszak�ld�se',
        'Ticket locked!' => 'Jegy z�rolva!',
        'Ticket unlock!' => 'Jegy felold�sa!',
        'Bounce to' => 'Visszak�ld�s ide:',
        'Next ticket state' => 'A jegy k�vetkez� �llapota',
        'Inform sender' => 'K�ld� t�j�koztat�sa',
        'Send mail!' => 'E-mail k�ld�se!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Csoportos jegy-m�velet',
        'Spell Check' => 'Helyes�r�sellen�rz�s',
        'Note type' => 'Jegyzet t�pusa',
        'Unlock Tickets' => 'Jegyek felold�sa',

        # Template: AgentTicketClose
        'Close ticket' => 'Jegy lez�r�sa',
        'Previous Owner' => 'Kor�bbi tulajdonos',
        'Inform Agent' => '�gyint�z� �rts�t�se',
        'Optional' => 'Nem k�telez�',
        'Inform involved Agents' => '�rintett �gyint�z�k �rtes�t�se',
        'Attach' => 'Csatol�s',
        'Next state' => 'K�vetkez� �llapot',
        'Pending date' => 'V�rakoz�si d�tum',
        'Time units' => 'Id� egys�gek',

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'V�laszad�s a jegyre',
        'Pending Date' => 'V�rakoz�s d�tuma',
        'for pending* states' => 'v�rakoz�* st�tuszhoz',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'A jegyhez tartoz� �gyf�l megv�ltoztat�sa',
        'Set customer user and customer id of a ticket' => 'A jegyhez tartoz� �gyf�l felhaszn�l�nak �s �gyf�l azonos�t�nak be�ll�t�sa',
        'Customer User' => '�gyf�l felhaszn�l�',
        'Search Customer' => '�gyf�l keres�se',
        'Customer Data' => '�gyf�l adatok',
        'Customer history' => '�gyf�l t�rt�net',
        'All customer tickets.' => '�sszes �gyf�l jegy.',

        # Template: AgentTicketCustomerMessage
        'Follow up' => 'V�lasz',

        # Template: AgentTicketEmail
        'Compose Email' => '�j e-mail �r�sa',
        'new ticket' => '�j jegy',
        'Refresh' => 'Friss�t�s',
        'Clear To' => 'Mez� t�rl�se',

        # Template: AgentTicketEscalationView
        'Ticket Escalation View' => '',
        'Escalation' => '',
        'Today' => '',
        'Tomorrow' => '',
        'Next Week' => '',
        'up' => 'fel',
        'down' => 'le',
        'Escalation' => '',
        'Locked' => 'Z�rol�s',

        # Template: AgentTicketForward
        'Article type' => 'Bejegyz�s t�pusa',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Szabad sz�veg v�ltoztat�sa a jegyben',

        # Template: AgentTicketHistory
        'History of' => 'El�zm�nyek:',

        # Template: AgentTicketLocked

        # Template: AgentTicketMailbox
        'Mailbox' => 'Postafi�k',
        'Tickets' => 'Jegyek',
        'of' => 'kit�l',
        'Filter' => 'Sz�r�',
        'New messages' => '�j �zenetek',
        'Reminder' => 'Eml�keztet�',
        'Sort by' => 'Rendez�s �gy',
        'Order' => 'Sorrend',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Jegy egyes�t�se',
        'Merge to' => 'Befogad�',

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
        'Clear From' => 'Mez� t�rl�se',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Egyszer�',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Jegy inform�ci�',
        'Accounted time' => 'Elsz�molt id�',
        'First Response Time' => 'Els� v�laszid�',
        'Update Time' => 'Friss�t�s ideje',
        'Solution Time' => 'Megold�s ideje',
        'Linked-Object' => 'Kapcsol�d� objektum',
        'Parent-Object' => 'Sz�l� objektum',
        'Child-Object' => 'Gyerek objektum',
        'by' => '�ltala:',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Jegy priorit�s�nak m�dos�t�sa',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Mutatott jegyek',
        'Tickets available' => 'El�rhet� jegyek',
        'All tickets' => '�sszes jegy',
        'Queues' => 'V�r�list�k',
        'Ticket escalation!' => 'Jegy kiemel�se!',

        # Template: AgentTicketQueueTicketView
        'Service Time' => 'Szolg�ltat�s ideje',
        'Your own Ticket' => 'Az �n saj�t jegye',
        'Compose Follow up' => 'V�lasz �r�sa',
        'Compose Answer' => 'V�lasz �r�sa',
        'Contact customer' => 'Kapcsolatbal�p�s az �gyf�llel',
        'Change queue' => 'V�r�lista megv�ltoztat�sa',

        # Template: AgentTicketQueueTicketViewLite

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Jegy felel�s�nek megv�ltoztat�sa',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Jegy keres�s',
        'Profile' => 'Profil',
        'Search-Template' => 'Keres� sablon',
        'TicketFreeText' => 'Jegy szabadsz�veg',
        'Created in Queue' => 'L�trehoz�skori v�r�lista',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Result Form' => 'Eredm�ny �rlap',
        'Save Search-Profile as Template?' => 'Elmenti a keres� profilt sablonk�nt?',
        'Yes, save it with name' => 'Igen, elmentve ezen a n�ven',

        # Template: AgentTicketSearchOpenSearchDescription

        # Template: AgentTicketSearchResult
        'Change search options' => 'Keres�si be�ll�t�sok m�dos�t�sa',

        # Template: AgentTicketSearchResultPrint
        '"}' => '',

        # Template: AgentTicketSearchResultShort

        # Template: AgentTicketStatusView
        'Ticket Status View' => 'Jegy �llapot�nak megtekint�se',
        'Open Tickets' => 'Jegyek megnyit�sa',

        # Template: AgentTicketZoom
        'Expand View' => '',
        'Collapse View' => '',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: css

        # Template: customer-css

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'Visszak�vet�s',

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

        # Template: CustomerTicketZoom

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
        'Welcome to %s' => '�dv�zli az %s',
        'Accept license' => 'Lincensz elfogad�sa',
        'Don\'t accept license' => 'Licensz elutas�t�sa',
        'Admin-User' => 'Adminisztr�tor felhaszn�l�',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '',
        'Admin-Password' => 'Adminisztr�tor jelsz�',
        'Database-User' => 'Adatb�zis felhaszn�l�',
        'default \'hot\'' => 'alap�rtelmezett',
        'DB connect host' => 'Adatb�zis kiszolg�l�',
        'Database' => 'Adatb�zis',
        'Default Charset' => 'Alap�rtelmezett karakterk�szlet',
        'utf8' => '',
        'false' => 'hamis',
        'SystemID' => 'Rendszer azonos�t�',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Azonos�t�s a rendszerben. Minden jegyhez �s minden http elj�r�s ezzel a sorsz�mmal indul)',
        'System FQDN' => 'Rendszer FQDN',
        '(Full qualified domain name of your system)' => '(Teljes ellen�rz�tt domain n�v a rendszerben)',
        'AdminEmail' => 'AdminEmail',
        '(Email of the system admin)' => '(A rendszergazda e-mailje)',
        'Organization' => 'Szervezet',
        'Log' => '',
        'LogModule' => 'Log modul',
        '(Used log backend)' => '(Haszn�lt h�tt�r log)',
        'Logfile' => 'Log file',
        '(Logfile just needed for File-LogModule!)' => '(Logfile sz�ks�ges a File-LogModul sz�m�ra!)',
        'Webfrontend' => 'Webes felhaszn�l�i fel�let',
        'Use utf-8 it your database supports it!' => 'Haszn�ld utf-8-at az adatb�zis t�mogat�sokn�l!',
        'Default Language' => 'Alap�rtelmezett nyelv',
        '(Used default language)' => '(A felhaszn�l� alap�rtelmezett nyelve)',
        'CheckMXRecord' => 'MX Rekord ellen�rz�s',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Ellen�rizd le az MX rekordot a haszn�lt email c�mben a v�lasz �r�sakor!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Ahhoz, hogy az OTRS-t haszn�lni tudja, a k�vetkez� parancsot kell beg�pelnie parancssorban (termin�lban/h�jjban) root-k�nt.',
        'Restart your webserver' => 'Ind�tsa �jra a web-kiszolg�l�t',
        'After doing so your OTRS is up and running.' => 'Ha ez k�sz, az OTRS k�sz �s fut.',
        'Start page' => 'Start oldal',
        'Your OTRS Team' => 'Az �n OTRS csapata',

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'Nincs jogosults�g',

        # Template: Notify
        'Important' => 'Fontos',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'Nyomtatta',

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'OTRS tesztoldal',
        'Counter' => 'Sz�ml�l�',

        # Template: Warning
        # Misc
        'auto follow up' => 'automatikus v�lasz',
        'Create Database' => 'Adatb�zis l�trehoz�sa',
        'verified' => 'ellen�rz�tt',
        'File-Name' => '',
        'Ticket Number Generator' => 'Jegy sorsz�m gener�tor',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Jegy azonos�t�s. pl. \'Jegy#\', \'H�v�#\' vagy \'Jegyem#\')',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '�ly m�don k�zvetlen�l szerkesztheti a Kernel/Config.pm-ben be�ll�tott kulcskarik�t.',
        'Create new Phone Ticket' => '�j telefon jegy l�trehoz�sa',
        'U' => 'A',
        'A message should have a To: recipient!' => 'Egy �zenethez kellene legyen c�mzett!',
        'Site' => 'G�p',
        'Reset of unlock time.' => 'Felold�si id� null�z�sa.',
        'Customer history search (e. g. "ID342425").' => 'Keres�s az �gyf�l t�rt�net�ben (pl. "ID342425").',
        'Close!' => 'Lez�r!',
        'for agent firstname' => '�gyint�z� keresztn�vhez',
        'Reporter' => '',
        'The message being composed has been closed.  Exiting.' => 'Az �ppen elk�sz�lt lev�l lez�r�sra ker�lt. Kil�p�s.',
        'Process-Path' => '',
        'to get the realname of the sender (if given)' => 'hogy megkapja a felad� val�di nev�t (ha lehets�ges)',
        'FAQ Search Result' => '',
        'Notification (Customer)' => '�rtes�t�s (�gyf�l)',
        'Select Source (for add)' => 'V�lassza ki a forrs�t (hozz�ad�shoz)',
        'Node-Name' => '',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',
        'Agent updated!' => '�gyint�z� m�dos�tva!',
        'Home' => 'Otthon',
        'Workflow Groups' => '',
        'Current Impact Rating' => '',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Be�ll�t�s opci�k (pl. <OTRS_CONFIG_HttpType>)',
        'FAQ System History' => '',
        'customer realname' => '�gyf�l val�di n�v',
        'Pending messages' => 'V�rakoz� �zenetek',
        'auto reply/new ticket' => 'automatikus v�lasz/�j jegy',
        'Modules' => 'Modul',
        'for agent login' => '�gyint�z� bel�p�s�hez',
        'Keyword' => 'Kulcssz�',
        'Reference' => '',
        'with' => '',
        'Close type' => 'T�pus lez�r�sa',
        'DB Admin User' => 'DB Admin felhaszn�l�',
        'for agent user id' => '�gyn�k felhaszn�l� azonos�t�j�hoz',
        'sort upward' => 'rendez�s felfel�',
        'Classification' => 'Besorol�s',
        'Change user <-> group settings' => 'A felhaszn�l� <-> csoport be�ll�t�sok megv�ltoztat�sa',
        'next step' => 'k�vetkez� l�p�s',
        'Customer history search' => 'Keres�s az �gyf�l t�rt�net�ben',
        'not verified' => 'nem ellen�rz�tt',
        'Stat#' => 'Stat#',
        'Create new database' => '�j adatb�zis l�trehoz�sa',
        'auto reject' => 'automatikus visszautas�t�s',
        'Year' => '�v',
        'A message must be spell checked!' => 'Az �zenetnek helyes�r�sellen�rz�sen kell �tmennie!',
        'X-axis' => 'X tengely',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Az �n "<OTRS_TICKET>" sz�m� jegyhez rendelt e-mailje visszak�ld�sre ker�lt a "<OTRS_BOUNCE_TO>" c�mre. Vegye fel ezzel a c�mmel a kapcsolatot tov�bbi inform�ci�k�rt.',
        'A message should have a body!' => 'Egy �zenetnek kell legyen t�rzse!',
        'All Agents' => 'Minden �gyint�z�',
        'Keywords' => 'Kulcssz�',
        'No * possible!' => 'A "*" nem lehets�ges!',
        'Load' => 'Bet�lt�s',
        'Change Time' => 'Id� megv�ltoztat�sa',
        'PostMaster Filter' => 'Levelez�si sz�r�k',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
        'PostMaster POP3 Account' => 'Levelez�si fi�kok (POP3)',
        'Message for new Owner' => '�zenet az �j tulajdonosnak',
        'to get the first 5 lines of the email' => 'hogy megkapja az els� 5 sort az e-mailb�l',
        'Default Sign Key' => 'Alap�rtelmezett al��r� kulcs',
        'OTRS DB Password' => 'OTRS DB jelsz�',
        'Last update' => 'Utols� friss�t�s',
        'not rated' => '',
        'to get the first 20 character of the subject' => 'hogy megkapja az els� 20 karaktert a t�rgyb�l',
        'Select the customeruser:service relations.' => 'V�lassza ki az �gyf�l felhaszn�l�:szolg�ltat�s rel�ci�t.',
        'DB Admin Password' => 'DB Admin jelsz�',
        'Drop Database' => 'Adatb�zis t�rl�se',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'Opci�k az aktu�lis �gyf�l felhaszn�l�i adatokhoz (pl. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'V�rakoz�s t�pusa',
        'Comment (internal)' => 'Megjegyz�s (bels�)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Jegy tulajdonos�nak adatai (pl. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'This window must be called from compose window' => 'Ezt az ablakot a szerkeszt� ablakb�l kell h�vni',
        'User-Number' => '',
        'You need min. one selected Ticket!' => 'Legal�bb egy jegyet ki kell v�lasztani!',
        'Reset of escalation time.' => 'Kiemel�si id� null�z�sa.',
        'System Address updated!' => 'Rendszer c�m m�dos�tva!',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
        '(Used ticket number format)' => '(Nyitott jegyek sorsz�m�nak form�tuma)',
        'Fulltext' => 'Teljes sz�veg',
        'Month' => 'H�nap',
        'SessionID invalid! Need user data!' => 'Hib�s folyamat azonos�t�! Felhaszn�l�i adatok megad�sa sz�ks�ges!',
        'Node-Address' => '',
        'All Agent variables.' => '',
        ' (work units)' => ' (munkaegys�g)',
        'You use the DELETE option! Take care, all deleted Tickets are lost!!!' => 'A T�RL�S opci�t haszn�lja! Legyen �vatos, az �sszes t�r�lt jegy elveszik!!!',
        'All Customer variables like defined in config option CustomerUser.' => 'Az �sszes �gyf�l v�ltoz� ahogyan az �gyf�l felhaszn�l� opci�kn�l lett be�ll�tva.',
        'for agent lastname' => '�gyint�z� csal�din�vhez',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Opci�k a aktu�lis felhaszn�l�n�l aki k�rte ezt az elj�r�st. (pl. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Eml�keztet� �zenetek',
        'A message should have a subject!' => 'Egy �zenetnek kell legyen t�rgya!',
        'TicketZoom' => 'JegyR�szletek',
        'Don\'t forget to add a new user to groups!' => 'Ne felejtsen el �j felhaszn�l�t hozz�adni a csoportokhoz!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Kell egy e-mail c�m (pl. customer@example.com) c�mzettnek!',
        'CreateTicket' => 'JegyL�trehoz�s',
        'unknown' => 'ismeretlen',
        'You need to account time!' => 'El kell sz�molnia az id�vel!',
        'System Settings' => 'Rendszerbe�ll�t�sok',
        'Finished' => 'Befejezve',
        'Imported' => '',
        'unread' => 'olvasatlan',
        'Split' => 'Feloszt�s',
        'D' => 'Z',
        'System Status' => 'Rendszer �llapota',
        'All messages' => 'Minden �zenet',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'A jegy adatai (pl.  <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'A article should have a title!' => 'Egy bejegyz�snek kell legyen c�me!',
        'Customer Users <-> Services' => '�gyf�l felhaszn�l�k <-> Szolg�ltat�sok',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Konfigur�ci�s �rt�kek (pl. &lt;OTRS_CONFIG_HttpType&gt;)',
        'Event' => 'Esem�ny',
        'Imported by' => '',
        'S/MIME' => 'S/MIME',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Jegy tulajdonos opci�k (pl. <OTRS_OWNER_UserFirstname>)',
        'read' => 'olvasott',
        'Product' => 'Term�k',
        'Name is required!' => 'A nevet meg kell adni!',
        'kill all sessions' => 'Minden elj�r�s kil�v�se',
        'to get the from line of the email' => 'hogy megkapja a felad�t az e-mailb�l',
        'Solution' => 'Megold�s',
        'auto reply' => 'automatikus v�lasz',
        'QueueView' => 'V�r�lista n�zet',
        'My Queue' => 'Saj�t v�r�list�m',
        'Select Box' => 'SQL lek�rdez�s',
        'Instance' => '',
        'Day' => 'Nap',
        'auto remove' => 'automatikus t�rl�s',
        'Service-Name' => 'Szolg�ltat�s neve',
        'Welcome to OTRS' => '�dv�zli az OTRS',
        'tmp_lock' => 'ideiglenesen z�rolt',
        'modified' => 'm�dos�tott',
        'Escalation in' => 'Kiemel�s ebben',
        'Delete old database' => 'R�gi adatb�zis t�rl�se',
        'sort downward' => 'rendez�s lefel�',
        'You need to use a ticket number!' => 'Adja meg egy jegy sz�m�t!',
        'Watcher' => '',
        'Have a lot of fun!' => 'Sok sikert!',
        'send' => 'k�ld�s',
        'Note Text' => 'Jegyzet sz�veg',
        'POP3 Account Management' => 'Levelez�si POP3 fi�kok kezel�se',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Az aktu�lis �gyf�l felhaszn�l� adatai (pl. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'System State Management' => 'Rendszer�llapot kezel�s',
        'PhoneView' => 'TelefonN�zet',
        'User-Name' => 'Felhaszn�l�n�v',
        'File-Path' => '',
        'Modified' => 'M�dos�tva',
        'Ticket selected for bulk action!' => 'Jegy kiv�lasztva csoportos m�velethez!',
    };
    # $$STOP$$
    return;
}

1;
