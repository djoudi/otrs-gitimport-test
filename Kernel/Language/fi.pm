# --
# Kernel/Language/fi.pm - provides fi language translation
# Copyright (C) 2002 Antti K�m�r�inen <antti at seu.net>
# --
# $Id: fi.pm,v 1.10 2003-02-03 22:53:09 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::fi;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.10 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*\$/$1/;
# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Mon Feb  3 23:33:29 2003 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 Minuuttia',
      ' 5 minutes' => ' 5 Minuuttia',
      ' 7 minutes' => ' 7 Minuuttia',
      '10 minutes' => '10 Minuuttia',
      '15 minutes' => '15 Minuuttia',
      'AddLink' => 'Lis�� linkki',
      'AdminArea' => 'Yll�pito',
      'all' => 'kaikki',
      'All' => 'Kaikki',
      'Attention' => 'Huomio',
      'Bug Report' => 'L�het� bugiraportti',
      'Cancel' => 'Peruuta',
      'Change' => 'Muuta',
      'change' => 'muuta',
      'change!' => 'muuta!',
      'click here' => 'klikkaa t�st�',
      'Comment' => 'Kommentti',
      'Customer' => 'Asiakas',
      'Customer info' => 'Tietoa asiakkaasta',
      'day' => 'p�iv�',
      'days' => 'p�iv��',
      'description' => 'Selitys',
      'Description' => 'Selitys',
      'Dispatching by email To: field.' => '',
      'Dispatching by selected Queue.' => '',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Ei toimi k�ytt�j�ID:ll� 1(j�rjestelm�tunnus). Tee uusia k�ytt�ji� ',
      'Done' => 'Valmis',
      'end' => 'Loppuun',
      'Error' => 'Virhe',
      'Example' => 'Esimerkki',
      'Examples' => 'Esimerkit',
      'Facility' => '',
      'Feature not acitv!' => 'Ominaisuus ei k�yt�ss�',
      'go' => 'mene',
      'go!' => 'mene!',
      'Group' => 'Ryhm�',
      'Hit' => 'Hit',
      'Hits' => 'Hitit',
      'hour' => 'tunti',
      'hours' => 'tuntia',
      'Ignore' => 'Ohita',
      'invalid' => 'Virheellinen',
      'Invalid SessionID!' => 'Virheellinen SessionID',
      'Language' => 'Kieli',
      'Languages' => 'Kielet',
      'Line' => 'Rivi',
      'Lite' => 'Kevyt',
      'Login failed! Your username or password was entered incorrectly.' => '',
      'Logout successful. Thank you for using OTRS!' => 'Uloskirjautuminen onnistui. Kiitos kun k�ytit OTRS-j�rjestelm��',
      'Message' => 'Viesti',
      'minute' => 'minutti',
      'minutes' => 'minuuttia',
      'Module' => 'Moduuli',
      'Modulefile' => 'Moduulitiedosto',
      'Name' => 'Nimi',
      'New message' => 'Uusi viesti',
      'New message!' => 'Uusi viesti!',
      'no' => 'ei',
      'No' => 'Ei',
      'No suggestions' => 'Ei ehdotusta',
      'none' => 'ei mit��n',
      'none - answered' => 'ei mit��n - vastattu',
      'none!' => 'ei mit��n!',
      'off' => 'pois',
      'Off' => 'Pois',
      'on' => 'p��ll�',
      'On' => 'P��ll�',
      'Password' => 'Salasana',
      'Pending till' => 'Odottaa',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Vastaa t�h�n viestiin saadaksesi se takaisin normaalille jonotuslistalle',
      'Please contact your admin' => 'Ota yhteytt� yll�pit�j��si',
      'please do not edit!' => '�l� muokkaa, kiitos!',
      'possible' => 'K�yt�ss�',
      'QueueView' => 'Jonotuslistan�kym�',
      'reject' => 'Hylk��',
      'replace with' => 'Korvaa',
      'Reset' => 'Tyhjenn�',
      'Salutation' => 'Tervehdys',
      'Signature' => 'Allekirjoitus',
      'Sorry' => 'Anteeksi',
      'Stats' => 'Tilastot',
      'Subfunction' => 'Alifunktio',
      'submit' => 'l�het�',
      'submit!' => 'l�het�!',
      'Take this User' => '',
      'Text' => 'Teksti',
      'The recommended charset for your language is %s!' => 'Suositeltava kirjainasetus kielellesi on %s',
      'Theme' => 'Ulkoasu',
      'There is no account with that login name.' => 'K�ytt�j�tunnus tuntematon',
      'Timeover' => 'Vanhentuu',
      'top' => 'yl�s',
      'update' => 'p�ivit�',
      'update!' => 'p�ivit�!',
      'User' => 'K�ytt�j�',
      'Username' => 'K�ytt�j�nimi',
      'Valid' => 'K�yt�ss�',
      'Warning' => 'Varoitus',
      'Welcome to OTRS' => 'Tervetuloa k�ytt�m��n OTRS-j�rjestelm��',
      'Word' => 'Sana',
      'wrote' => 'kirjoittaa',
      'Yes' => 'Kyll�',
      'yes' => 'kyll�',
      'You got new message!' => 'Sinulla on uusi viesti!',
      'You have %s new message(s)!' => 'Sinulla on %s kpl uusia viesti�!',
      'You have %s reminder ticket(s)!' => 'Sinulla on %s muistutettavaa viesti�!',

    # Template: AAAMonth
      'Apr' => 'Huh',
      'Aug' => 'Elo',
      'Dec' => 'Jou',
      'Feb' => 'Hel',
      'Jan' => 'Tam',
      'Jul' => 'Hei',
      'Jun' => 'Kes�',
      'Mar' => 'Maa',
      'May' => 'Tou',
      'Nov' => 'Mar',
      'Oct' => 'Loka',
      'Sep' => 'Syys',

    # Template: AAAPreferences
      'Custom Queue' => 'Valitsemasi jonotuslistat',
      'Follow up notification' => 'Ilmoitus jatkokysymyksist�',
      'Frontend' => 'K�ytt�liittym�',
      'Mail Management' => 'Osoitteiden hallinta',
      'Move notification' => 'Siirr� ilmoitus',
      'New ticket notification' => 'Ilmoitus uusista viesteist�',
      'Other Options' => 'Muita asetuksia',
      'Preferences updated successfully!' => 'Asetukset tallennettu onnistuneesti',
      'QueueView refresh time' => 'Jonotusn�kym�n p�ivitysaika',
      'Select your frontend Charset.' => 'Valitse k�ytt�liittym�n kirjaisinasetukset',
      'Select your frontend language.' => 'Valitse k�ytt�liittym�n kieli',
      'Select your frontend QueueView.' => 'Valitse k�ytt�liittym�si jonotusn�kym�',
      'Select your frontend Theme.' => 'Valitse k�ytt�liittym�si ulkoasu',
      'Select your QueueView refresh time.' => 'Valitse jonotusn�kym�n p�ivitysaika',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'L�het� ilmoitus jatkokysymyksist�, jos olen kyseisen tiketin omistaja',
      'Send me a notification if a ticket is moved into a custom queue.' => 'L�het� minulle ilmoitus, jos tikettej� siirret��n valitsemiini jonoihin',
      'Send me a notification if a ticket is unlocked by the system.' => 'L�het� minulle ilmoitus, jos j�rjestelm� poistaa tiketin lukituksen.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'L�het� ilmoitus uusista tiketeist�, jotka tulevat valitsemilleni jonotuslistoille',
      'Ticket lock timeout notification' => 'Ilmoitus tiketin lukituksen vanhenemisesta',

    # Template: AAATicket
      '1 very low' => '1 Eritt�in alhainen',
      '2 low' => '2 Alhainen',
      '3 normal' => '3 Normaali',
      '4 high' => '4 Kiireellinen',
      '5 very high' => '5 Eritt�in kiireellinen',
      'Action' => 'Hyv�ksy',
      'Age' => 'Ik�',
      'Article' => 'Artikkeli',
      'Attachment' => 'Liitetiedosto',
      'Attachments' => 'Liitetiedostot',
      'Bcc' => 'Piilokopio',
      'Bounce' => 'Delekoi',
      'Cc' => 'Kopio',
      'Close' => 'Sulje',
      'closed successful' => 'Valmistui - Sulje',
      'closed unsuccessful' => 'Keskener�inen - Sulje',
      'Compose' => 'uusia viesti',
      'Created' => 'Luotu',
      'Createtime' => 'Luontiaika',
      'email' => 's�hk�postiosoite',
      'eMail' => 'S�hk�postiosoite',
      'email-external' => 'S�hk�posti - sis�inen',
      'email-internal' => 'S�hk�posti - julkinen',
      'Forward' => 'V�lit�',
      'From' => 'L�hett�j�',
      'high' => 'Kiireellinen',
      'History' => 'Historia',
      'If it is not displayed correctly,' => 'Jos t�m� ei n�y oikein,',
      'Lock' => 'Lukitse',
      'low' => 'Alhainen',
      'Move' => 'Siirr�',
      'new' => 'uusi',
      'normal' => 'Normaali',
      'note-external' => 'Huomautus - sis�inen',
      'note-internal' => 'Huomautus - ulkoinen',
      'note-report' => 'Huomautus - raportti',
      'open' => 'avoin',
      'Owner' => 'Omistaja',
      'Pending' => 'Odottaa',
      'pending auto close+' => '',
      'pending auto close-' => '',
      'pending reminder' => '',
      'phone' => 'puhelimitse',
      'plain' => 'pelkk� teksti',
      'Priority' => 'Prioriteetti',
      'Queue' => 'Jonotuslista',
      'removed' => 'poistettu',
      'Sender' => 'L�hett�j�',
      'sms' => 'tekstiviesti',
      'State' => 'Tila',
      'Subject' => 'Otsikko',
      'This is a' => 'T�m� on',
      'This is a HTML email. Click here to show it.' => 'T�m� s�hk�posti on HTML-muodossa. Klikkaa t�st� katsoaksesi sit�',
      'This message was written in a character set other than your own.' => 'T�m� teksti on kirjoitettu eri kirjaisinasetuksilla kuin omasi',
      'Ticket' => 'Tiketti',
      'To' => 'Vastaanottaja',
      'to open it in a new window.' => 'avataksesi se uuteen ikkunaan.',
      'Unlock' => 'Poista lukitus',
      'very high' => 'Eritt�in kiireellinen',
      'very low' => 'Eritt�in alhainen',
      'View' => 'Katso',
      'webrequest' => 'web-pyynt�',
      'Zoom' => 'Katso',

    # Template: AAAWeekDay
      'Fri' => 'Pe',
      'Mon' => 'Ma',
      'Sat' => 'La',
      'Sun' => 'Su',
      'Thu' => 'To',
      'Tue' => 'Ti',
      'Wed' => 'Ke',

    # Template: AdminAttachmentForm
      'Add attachment' => 'Lis�� liitetiedosto',
      'Attachment Management' => 'Liitetiedostojen hallinta',
      'Change attachment settings' => 'Muuta liitetiedostojen asetuksia',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'Lis�� automaattivastaus',
      'Auto Response From' => 'Automaattivastaus ',
      'Auto Response Management' => 'Automaattivastausten hallinta',
      'Change auto response settings' => 'Muuta automaattivastausten asetuksia',
      'Charset' => 'Kirjaisinasetus',
      'Note' => 'Huomautus',
      'Response' => 'Vastaa',
      'to get the first 20 character of the subject' => 'n�hd�ksesi ensimm�iset 20 kirjainta otsikosta',
      'to get the first 5 lines of the email' => 'n�hd�ksesi 5 ensimm�ist� rivi� s�hk�postista',
      'to get the from line of the email' => 'n�hd�ksesi yhden rivin s�hk�postista',
      'to get the realname of the sender (if given)' => 'n�hd�ksesi k�ytt�j�n nimen',
      'to get the ticket id of the ticket' => '',
      'to get the ticket number of the ticket' => 'n�hd�ksesi tiketin numeron',
      'Type' => 'Tyyppi',
      'Useable options' => 'K�ytett�v�t asetukset',

    # Template: AdminCharsetForm
      'Add charset' => 'Lis�� kirjaisinasetus',
      'Change system charset setting' => 'Muuta kirjaisinasetuksia',
      'System Charset Management' => 'J�rjestelm�n kirjaisinasetusten hallinta',

    # Template: AdminCustomerUserForm
      'Add customer user' => 'Lis�� asiakas-k�ytt�j�',
      'Change customer user settings' => 'Muuta asiakas-k�ytt�j�n asetuksia',
      'Customer User Management' => 'Asiakas-k�ytt�jien hallinta',
      'Customer user will be needed to to login via customer panels.' => 'Asiakas-k�ytt�j�n pit�� kirjautua Asiakas-liittym�st�',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Yll�pidon s�hk�posti',
      'Body' => 'Runko-osa',
      'OTRS-Admin Info!' => '',
      'Recipents' => 'Vastaanottajat',

    # Template: AdminEmailSent
      'Message sent to' => 'Viesti l�hetetty, vastaanottaja: ',

    # Template: AdminGroupForm
      'Add group' => 'Lis�� ryhm�',
      'Change group settings' => 'Muuta ryhm�n asetuksia',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Lis�� uusi k�ytt�j�ryhm�, ett� voit m��ritell� k�ytt�oikeuksia useammille eri tukiryhmille (Huolto, Ostot, Markkinointi jne.)',
      'Group Management' => 'Ryhmien hallinta',
      'It\'s useful for ASP solutions.' => 'T�m� on hy�dyllinen ASP-k�yt�ss�',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Admin-ryhm�n j�senet p��sev�t yll�pito- ja tilastoalueille.',

    # Template: AdminLanguageForm
      'Add language' => 'Lis�� kieli',
      'Change system language setting' => 'Muokkaa j�rjestelm�n kieliasetuksua',
      'System Language Management' => 'J�rjestelm�n kielen hallinta',

    # Template: AdminLog
      'System Log' => 'J�rjestelm�logi',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Yll�pidon s�hk�posti',
      'AgentFrontend' => 'Tukin�kym�',
      'Auto Response <-> Queue' => 'Automaattivastaukset <-> Jonotuslista',
      'Auto Responses' => 'Automaattivastaukset',
      'Charsets' => 'Kirjaisinasetus',
      'Customer User' => 'Asiakas-k�ytt�j�',
      'Email Addresses' => 'S�hk�postiosoitteet',
      'Groups' => 'Ryhm�t',
      'Logout' => 'Kirjaudu ulos',
      'Misc' => 'Muut',
      'POP3 Account' => 'POP3 -tunnus',
      'Responses' => 'Vastaukset',
      'Responses <-> Queue' => 'Vastaukset <-> Jonotuslista',
      'Select Box' => 'Suodatus',
      'Session Management' => 'Istuntojen hallinta',
      'Status defs' => 'Tikettien tilam��ritykset',
      'System' => 'J�rjestelm�',
      'User <-> Groups' => 'K�ytt�j� <-> Ryhm�t',

    # Template: AdminPOP3Form
      'Add POP3 Account' => 'Lis�� POP3 -tunnus',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Kaikki saapuvat s�hk�postit l�hetet��n valitulle jonotuslistalle',
      'Change POP3 Account setting' => 'Muuta POP3 -asetuksia',
      'Dispatching' => '',
      'Host' => 'Palvelin',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => '',
      'Login' => 'K�ytt�j�tunnus',
      'POP3 Account Management' => 'POP3 -tunnusten hallinta',
      'Trusted' => 'Hyv�ksytty',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Jonotuslista <-> Automaattivastaushallinta',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = ei vanhentumisaikaa',
      '0 = no unlock' => '0 = ei lukituksen poistumista',
      'Add queue' => 'Lis�� jonotuslista',
      'Change queue settings' => 'Muuta jonotuslistan asetuksia',
      'Escalation time' => 'Maksimi k�sittelyaika',
      'Follow up Option' => 'Seuranta-asetukset',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => '',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '',
      'Key' => 'Key',
      'Queue Management' => 'Jonotuslistan Hallinta',
      'Systemaddress' => 'J�rjestelm�n osoite',
      'The salutation for email answers.' => '',
      'The signature for email answers.' => 'Allekirjoitus s�hk�postiosoitteeseen',
      'Ticket lock after a follow up' => '',
      'Unlock timeout' => 'Aika lukituksen poistumiseen',
      'Will be the sender address of this queue for email answers.' => '',

    # Template: AdminQueueResponsesChangeForm
      'Change %s settings' => 'Muuta %s asetuksia',
      'Std. Responses <-> Queue Management' => 'Oletusvastaukset <-> Jonotuslista',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Vastaus',
      'Change answer <-> queue settings' => 'Vaihda vastaus <-> Jonotuslista',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => '',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'Muokkaa vastauksia <-> Liitetiedostojen hallinta',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Vastauspohja on oletusteksti, jonka avulla voit nopeuttaa vastaamista asiakkaille',
      'Add response' => 'Lis�� vastauspohja',
      'Change response settings' => 'Muuta vastauspohjan asetuksia',
      'Don\'t forget to add a new response a queue!' => '�l� unohda lis�t� uutta vastauspohjaa jonotuslistalle.',
      'Response Management' => 'Vastauspohjien hallinta',

    # Template: AdminSalutationForm
      'Add salutation' => 'Lis�� tervehdys',
      'Change salutation settings' => 'Muuta tervehdysasetuksia',
      'customer realname' => 'k�ytt�j�n oikea nimi',
      'Salutation Management' => 'Tervehdysten hallinta',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Max. rivim��r�',

    # Template: AdminSelectBoxResult
      'Limit' => 'Rajoitus',
      'Select Box Result' => 'Suodatustuloksia',
      'SQL' => 'SQL',

    # Template: AdminSession
      'kill all sessions' => 'Tapa kaikki istunnot',

    # Template: AdminSessionTable
      'kill session' => 'Tapa istunto',
      'SessionID' => 'SessionID',

    # Template: AdminSignatureForm
      'Add signature' => 'Lis�� allekirjoitus',
      'Change signature settings' => 'Muuta allekirjoitusasetuksia',
      'for agent firstname' => 'k�sittelij�n etunimi',
      'for agent lastname' => 'k�sittelij�n sukunimi',
      'Signature Management' => 'Allekirjoitusten hallinta',

    # Template: AdminStateForm
      'Add state' => 'Lis�� uusi tila',
      'Change system state setting' => 'Muuta tiketin tila-asetuksia',
      'System State Management' => 'Tilamahdollisuuksien m��ritt�minen',

    # Template: AdminSystemAddressForm
      'Add system address' => 'Lis�� j�rjestelm�n s�hk�postiosoite',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alle eingehenden Emails mit dem "To:" werden in die ausgew�hlte Queue einsortiert.',
      'Change system address setting' => 'Muuta j�rjestelm�n s�hk�postiasetuksia',
      'Email' => 'S�hk�posti',
      'Realname' => 'Nimi',
      'System Email Addresses Management' => 'S�hk�postiosoitteiden m��ritys',

    # Template: AdminUserForm
      'Add user' => 'Lis�� k�ytt�j�',
      'Change user settings' => 'Vaihda k�ytt�j�n asetuksia',
      'Don\'t forget to add a new user to groups!' => '�l� unohda lis�t� k�ytt�j�� ryhmiin!',
      'Firstname' => 'Etunimi',
      'Lastname' => 'Sukunimi',
      'User Management' => 'K�ytt�j�hallinta',
      'User will be needed to handle tickets.' => 'K�ytt�j� tarvitaan tikettien k�sittelemiseen.',

    # Template: AdminUserGroupChangeForm
      'Change  settings' => '',
      'User <-> Group Management' => 'K�ytt�j� <-> Ryhm�hallinta',

    # Template: AdminUserGroupForm
      'Change user <-> group settings' => 'Vaihda k�ytt�j� <-> Ryhm�hallinta',

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Viestiss� pit�� olla vastaanottaja!',
      'Bounce ticket' => 'Delekoi tiketti',
      'Bounce to' => 'Delekoi',
      'Inform sender' => '',
      'Next ticket state' => 'Uusi tiketin status',
      'Send mail!' => 'L�het� s�hk�posti!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Laita vastaanottajakentt��n s�hk�postiosoite!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further inforamtions.' => 'S�hk�posti, tikettinumero "<OTRS_TICKET>" on v�litetty osoitteeseen: "<OTRS_BOUNCE_TO>" . Ota yhteytt� kyseiseen osoitteeseen saadaksesi lis�tietoja',

    # Template: AgentClose
      ' (work units)' => '',
      'Close ticket' => 'Sulje tiketti',
      'Close type' => 'Sulkemisen syy',
      'Close!' => 'Sulje!',
      'Note Text' => 'Huomautusteksti',
      'Note type' => 'Viestityyppi',
      'store' => 'tallenna',
      'Time units' => 'Aikayksik�t',

    # Template: AgentCompose
      'A message should have a subject!' => 'Viestiss� pit�� olla otsikko!',
      'Attach' => 'Liite',
      'Compose answer for ticket' => 'L�het� vastaus tikettiin',
      'for pending* states' => '',
      'Is the ticket answered' => '',
      'Options' => 'Asetukset',
      'Pending Date' => 'Odotusp�iv�',
      'Spell Check' => 'Oikeinkirjoituksen tarkistus',

    # Template: AgentCustomer
      'Back' => 'Takaisin',
      'Change customer of ticket' => 'Vaihda tiketin asiakasta',
      'Set customer id of a ticket' => 'Aseta tiketin asiakasnumero#',

    # Template: AgentCustomerHistory
      'Customer history' => 'Asiakkaan historiatiedot',

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerView
      'Customer Data' => '',

    # Template: AgentForward
      'Article type' => 'Huomautustyyppi',
      'Date' => 'P�iv�m��r�',
      'End forwarded message' => 'V�litetyn viestin loppu',
      'Forward article of ticket' => 'V�lit� tiketin artikkeli',
      'Forwarded message from' => 'V�litetty viesti. L�hett�j�:',
      'Reply-To' => 'L�het� vastaus',

    # Template: AgentHistoryForm
      'History of' => '',

    # Template: AgentMailboxNavBar
      'All messages' => 'Kaikki viestit',
      'CustomerID' => 'AsiakasID#',
      'down' => 'loppuun',
      'Mailbox' => 'Saapuneet',
      'New' => 'Uusi',
      'New messages' => 'Uusia viestej�',
      'Open' => 'Avaa',
      'Open messages' => 'Avaa viesti',
      'Order' => 'J�rjestys',
      'Pending messages' => 'Odottavat viestit',
      'Reminder' => 'Muistuttaja',
      'Reminder messages' => 'Muistutettavat viestit',
      'Sort by' => 'J�rjest�',
      'Tickets' => 'Tiketit',
      'up' => 'alkuun',

    # Template: AgentMailboxTicket
      'Add Note' => 'Lis�� huomautus',

    # Template: AgentNavigationBar
      'FAQ' => 'FAQ/UKK',
      'Locked tickets' => 'Lukitut tiketit',
      'new message' => 'uusi viesti',
      'PhoneView' => 'Puhelu / Uusi tiketti',
      'Preferences' => 'K�ytt�j�asetukset',
      'Utilities' => 'Etsi',

    # Template: AgentNote
      'Add note to ticket' => 'Lis�� huomautus t�h�n tikettiin',
      'Note!' => '',

    # Template: AgentOwner
      'Change owner of ticket' => 'Muuta t�m�n tiketin omistajaa',
      'Message for new Owner' => '',
      'New user' => 'Uusi k�ytt�j�',

    # Template: AgentPending
      'Pending date' => '',
      'Pending type' => '',
      'Set Pending' => '',

    # Template: AgentPhone
      'Customer called' => 'Asiakas soitti',
      'Phone call' => 'Puhelut',
      'Phone call at %s' => 'Puhelu %s',

    # Template: AgentPhoneNew
      'Search Customer' => 'Etsi Asiakas',
      'new ticket' => 'Uusi tiketti',

    # Template: AgentPlain
      'ArticleID' => '',
      'Plain' => 'Pelkk� teksti',
      'TicketID' => 'TikettiID',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'Valitse erityinen jonotuslista',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Vaihda salasana',
      'New password' => 'Uusi salasana',
      'New password again' => 'Kirjoita salasana uudelleen',

    # Template: AgentPriority
      'Change priority of ticket' => 'Muuta prioriteetti�',
      'New state' => 'Uusi tila',

    # Template: AgentSpelling
      'Apply these changes' => 'Hyv�ksy muutokset',
      'Discard all changes and return to the compose screen' => 'Hylk�� muutokset ja palaa viestin kirjoitusikkunaan',
      'Return to the compose screen' => 'Palaa viestin kirjoitusikkunaan',
      'Spell Checker' => 'Oikeinkirjoituksen tarkistus',
      'spelling error(s)' => 'Kirjoitusvirheit�',
      'The message being composed has been closed.  Exiting.' => '',
      'This window must be called from compose window' => '',

    # Template: AgentStatusView
      'D' => 'A',
      'sort downward' => 'J�rjest� laskevasti',
      'sort upward' => 'J�rjest� nousevasti',
      'Ticket limit:' => 'Tikettien max m��r�',
      'Ticket Status' => 'Tiketin tilatieto',
      'U' => 'Y',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Tiketti lukittu!',
      'unlock' => 'poista lukitus',

    # Template: AgentTicketPrint
      'by' => '',

    # Template: AgentTicketPrintHeader
      'Accounted time' => '',
      'Escalation in' => 'Vanhenee',
      'printed by' => '',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Asiakashistoriahaku',
      'Customer history search (e. g. "ID342425").' => 'Asiakashistoriahaku (Esim. "ID342425").',
      'No * possible!' => 'Jokerimerkki (*) ei k�yt�ss� !',

    # Template: AgentUtilSearchByText
      'Article free text' => '',
      'Fulltext search' => 'Tekstihaku',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Tekstihaku("Etsi esimerkiksi "Mi*a" tai "Petr+Tekrat"',
      'Search in' => 'Etsi seuraavista:',
      'Ticket free text' => 'Etsi koko tiketist�',
      'With State' => '',

    # Template: AgentUtilSearchByTicketNumber
      'search' => 'Etsi',
      'search (e. g. 10*5155 or 105658*)' => 'etsi tikettinumerolla (Esim. 10*5155 or 105658*)',

    # Template: AgentUtilSearchNavBar
      'Results' => 'Hakutulokset',
      'Site' => 'Palvelin',
      'Total hits' => 'Hakutuloksia yhteens�',

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
      'All open tickets' => 'Kaikki avoimet tiketit',
      'open tickets' => 'avoimet tiketit',
      'Provides an overview of all' => '',
      'So you see what is going on in your system.' => '',

    # Template: CustomerCreateAccount
      'Create' => 'Luo',
      'Create Account' => 'Luo tunnus',

    # Template: CustomerError
      'Backend' => '',
      'BackendMessage' => '',
      'Click here to report a bug!' => 'Klikkaa t�st� l�hett��ksesi bugiraportti!',
      'Handle' => '',

    # Template: CustomerFooter
      'Powered by' => '',

    # Template: CustomerHeader
      'Contact' => 'Yhteystiedot',
      'Home' => 'Koti',
      'Online-Support' => 'Online-tuki',
      'Products' => 'Tuotteet',
      'Support' => 'Tuki',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Unohditko salasanan?',
      'Request new password' => 'Pyyd� uutta salasanaa',

    # Template: CustomerMessage
      'Follow up' => 'Ilmoitukset',

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => 'Luo uusi tiketti',
      'My Tickets' => 'Minun tikettini',
      'New Ticket' => 'Uusi tiketti',
      'Ticket-Overview' => 'Tiketin katselu',
      'Welcome %s' => 'Tervetuloa %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView
      'of' => '',

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error

    # Template: Footer

    # Template: Header

    # Template: InstallerStart
      'next step' => 'Seuraava',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '',
      '(Email of the system admin)' => 'Yll�pit�j�n s�hk�postiosoite',
      '(Full qualified domain name of your system)' => '',
      '(Logfile just needed for File-LogModule!)' => '',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '',
      '(Used default language)' => 'Oletuskieli',
      '(Used log backend)' => '',
      '(Used ticket number format)' => 'Tikettinumeroiden oletusformaatti',
      'CheckMXRecord' => '',
      'Default Charset' => 'Oletuskirjaisinasetus',
      'Default Language' => 'Oletuskieli',
      'Logfile' => 'Logitiedosto',
      'LogModule' => '',
      'Organization' => 'Organisaatio',
      'System FQDN' => '',
      'SystemID' => '',
      'Ticket Hook' => '',
      'Ticket Number Generator' => '',
      'Webfrontend' => 'Webn�kym�',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Ei k�ytt�oikeutta',

    # Template: Notify
      'Info' => 'Info',

    # Template: PrintFooter
      'URL' => '',

    # Template: PrintHeader
      'Print' => '',

    # Template: QueueView
      'All tickets' => 'Tikettej� yhteens�',
      'Queues' => 'Jonotuslista',
      'Show all' => 'Yhteens�',
      'Ticket available' => 'Tikettej� avoinna',
      'tickets' => 'tiketti�',
      'Tickets shown' => 'Tikettej� n�kyviss�',

    # Template: SystemStats
      'Graphs' => 'Grafiikat',

    # Template: Test
      'OTRS Test Page' => 'OTRS - Testisivu',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Tiketin maksimi hyv�ksytt�v� k�sittelyaika!',

    # Template: TicketView
      'Change queue' => 'Vaihda jonotuslistaa',
      'Compose Answer' => 'Vastaa',
      'Contact customer' => 'Ota yhteytt� asiakkaaseen',
      'phone call' => 'Puhelut',

    # Template: TicketViewLite

    # Template: TicketZoom

    # Template: TicketZoomNote

    # Template: TicketZoomSystem

    # Template: Warning

    # Misc
      '(Click here to add a group)' => '(Klikkaa t�st� luodaksesi ryhm�n)',
      '(Click here to add a queue)' => '(Klikkaa t�st� tehd�ksesi uuden jonotuslistan)',
      '(Click here to add a response)' => '(Klikkaa t�st� lis�t�ksesi vastauspohjan)',
      '(Click here to add a salutation)' => '(Klikkaa t�st� lis�t�ksesi tervehdyksen)',
      '(Click here to add a signature)' => '(Klikkaa t��lt� lis�t�ksesi allekirjoituksen)',
      '(Click here to add a system email address)' => '(Klikkaa t�st� lis�t�ksesi j�rjestelm�n s�hk�postiosoitteen)',
      '(Click here to add a user)' => '(Klikkaa t�st� lis�t�ksesi k�ytt�j�n',
      '(Click here to add an auto response)' => '(Klikkaa t�st� lis�t�ksesi automaattivastauksen)',
      '(Click here to add charset)' => 'Klikkaa t�st� lis�t�ksesi kirjaisinasetuksen',
      '(Click here to add language)' => '(Klikkaa t�st� lis�t�ksesi uusi kieli)',
      '(Click here to add state)' => '(Klikkaa t�st� lis�t�ksesi uusi status)',
      'A message should have a From: recipient!' => '',
      'New ticket via call.' => 'Uusi ',
      'Time till escalation' => 'Aikaa j�ljell� maksimi k�sittelyaikaan',
      'Update auto response' => 'P�ivit� automaattivastaukset',
      'Update charset' => 'P�ivit� kirjaisinasetukset',
      'Update group' => 'P�ivit� ryhm�tiedot',
      'Update language' => 'P�ivit� kieli',
      'Update queue' => 'P�ivit� jonotuslista',
      'Update response' => 'P�ivit� vastauspohja',
      'Update salutation' => 'P�ivit� tervehdys',
      'Update signature' => 'P�ivit� allekirjoitus',
      'Update state' => 'P�ivit� status',
      'Update system address' => 'P�ivit� j�rjestelm�n s�hk�postiosoitetta',
      'Update user' => 'P�ivit� k�ytt�j�tiedot',
      'You have to be in the admin group!' => 'Sinun t�ytyy olla admin -ryhm�ss�!',
      'You have to be in the stats group!' => 'Sinun t�ytyy olla stats -ryhm�ss�',
      'You need a email address (e. g. customer@example.com) in From:!' => 'L�hett�j� -kent�ss� pit�� olla s�hk�postiosoite (esim. teppo.testi@esimerkki.fi)',
      'auto responses set' => '',
    );

    # $$STOP$$

    $Self->{Translation} = \%Hash;
}
# --
1;
