# --
# Kernel/Language/fi.pm - provides fi language translation
# Copyright (C) 2002 Team Seu.Net <team at seu.net>
# --
# $Id: fi.pm,v 1.1 2002-12-11 23:45:28 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::fi;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*\$/\$1/;
# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];

    # Template: AAABase
    $Hash{' 2 minutes'} = ' 2 Minuuttia';
    $Hash{' 5 minutes'} = ' 5 Minuuttia';
    $Hash{' 7 minutes'} = ' 7 Minuuttia';
    $Hash{'10 minutes'} = '10 Minuuttia';
    $Hash{'15 minutes'} = '15 Minuuttia';
    $Hash{'AddLink'} = 'Lis�� linkki';
    $Hash{'AdminArea'} = 'Yll�pito';
    $Hash{'All'} = 'Kaikki';
    $Hash{'all'} = 'kaikki';
    $Hash{'Attention'} = 'Huomio';
    $Hash{'Bug Report'} = 'L�het� bugiraportti';
    $Hash{'Cancel'} = '';
    $Hash{'Change'} = 'Muuta';
    $Hash{'change'} = 'muuta';
    $Hash{'change!'} = 'muuta!';
    $Hash{'click here'} = 'klikkaa t�st�';
    $Hash{'Comment'} = 'Kommentti';
    $Hash{'Customer'} = 'Asiakas';
    $Hash{'Customer info'} = 'Tietoa asiakkaasta';
    $Hash{'day'} = 'p�iv�';
    $Hash{'days'} = 'p�iv��';
    $Hash{'description'} = 'Selitys';
    $Hash{'Description'} = 'Selitys';
    $Hash{'Done'} = '';
    $Hash{'end'} = 'Loppuun';
    $Hash{'Error'} = 'Virhe';
    $Hash{'Example'} = 'Esimerkki';
    $Hash{'Examples'} = 'Esimerkit';
    $Hash{'Feature not acitv!'} = '';
    $Hash{'go'} = 'mene';
    $Hash{'go!'} = 'mene!';
    $Hash{'Group'} = 'Ryhm�';
    $Hash{'Hit'} = 'Hit';
    $Hash{'Hits'} = '';
    $Hash{'hour'} = 'tunti';
    $Hash{'hours'} = 'tuntia';
    $Hash{'Ignore'} = '';
    $Hash{'Invalid SessionID!'} = '';
    $Hash{'Language'} = 'Kieli';
    $Hash{'Languages'} = 'Kielet';
    $Hash{'Line'} = 'Rivi';
    $Hash{'Lite'} = 'Kevyt';
    $Hash{'Login failed! Your username or password was entered incorrectly.'} = '';
    $Hash{'Logout successful. Thank you for using OTRS!'} = 'Uloskirjautuminen onnistui. Kiitos kun k�ytit OTRS-j�rjestelm��';
    $Hash{'Message'} = 'Viesti';
    $Hash{'minute'} = 'minutti';
    $Hash{'minutes'} = 'minuuttia';
    $Hash{'Module'} = 'Moduuli';
    $Hash{'Modulefile'} = 'Moduulitiedosto';
    $Hash{'Name'} = 'Nimi';
    $Hash{'New message'} = 'Uusi viesti';
    $Hash{'New message!'} = 'Uusi viesti!';
    $Hash{'No'} = 'Ei';
    $Hash{'no'} = 'ei';
    $Hash{'No suggestions'} = '';
    $Hash{'none'} = 'ei mit��n';
    $Hash{'none - answered'} = 'ei mit��n - vastattu';
    $Hash{'none!'} = 'ei mit��n!';
    $Hash{'off'} = 'pois';
    $Hash{'Off'} = 'Pois';
    $Hash{'on'} = 'p��ll�';
    $Hash{'On'} = 'P��ll�';
    $Hash{'Password'} = 'Salasana';
    $Hash{'Please answer this ticket(s) to get back to the normal queue view!'} = 'Vastaa t�h�n viestiin saadaksesi se takaisin normaalille jonotuslistalle';
    $Hash{'Please contact your admin'} = '';
    $Hash{'please do not edit!'} = '�l� muokkaa, kiitos!';
    $Hash{'QueueView'} = 'Jonotuslistan�kym�';
    $Hash{'replace with'} = '';
    $Hash{'Reset'} = '';
    $Hash{'Salutation'} = 'Tervehdys';
    $Hash{'Signature'} = 'Allekirjoitus';
    $Hash{'Sorry'} = 'Anteeksi';
    $Hash{'Stats'} = 'Tilastot';
    $Hash{'Subfunction'} = 'Alifunktio';
    $Hash{'submit'} = '';
    $Hash{'submit!'} = 'l�het�!';
    $Hash{'Text'} = 'Teksti';
    $Hash{'The recommended charset for your language is %s!'} = '';
    $Hash{'Theme'} = '';
    $Hash{'There is no account with that login name.'} = '';
    $Hash{'top'} = 'yl�s';
    $Hash{'update'} = 'p�ivit�';
    $Hash{'update!'} = 'p�ivit�!';
    $Hash{'User'} = 'K�ytt�j�';
    $Hash{'Username'} = 'K�ytt�j�nimi';
    $Hash{'Valid'} = 'K�yt�ss�';
    $Hash{'Warning'} = '';
    $Hash{'Welcome to OTRS'} = '';
    $Hash{'Word'} = '';
    $Hash{'wrote'} = 'kirjoittaa';
    $Hash{'Yes'} = 'Kyll�';
    $Hash{'yes'} = 'kyll�';
    $Hash{'You got new message!'} = '';

    # Template: AAAPreferences
    $Hash{'Custom Queue'} = '';
    $Hash{'Follow up notification'} = '';
    $Hash{'Frontend'} = '';
    $Hash{'Mail Management'} = '';
    $Hash{'Move notification'} = '';
    $Hash{'New ticket notification'} = '';
    $Hash{'Other Options'} = '';
    $Hash{'Preferences updated successfully!'} = '';
    $Hash{'QueueView refresh time'} = '';
    $Hash{'Select your frontend Charset.'} = '';
    $Hash{'Select your frontend language.'} = '';
    $Hash{'Select your frontend QueueView.'} = '';
    $Hash{'Select your frontend Theme.'} = '';
    $Hash{'Select your QueueView refresh time.'} = '';
    $Hash{'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.'} = 'L�het� ilmoitus jatkokysymyksist�, jos olen kyseisen tiketin omistaja';
    $Hash{'Send me a notification if a ticket is moved into a custom queue.'} = '';
    $Hash{'Send me a notification if a ticket is unlocked by the system.'} = '';
    $Hash{'Send me a notification if there is a new ticket in my custom queues.'} = 'L�het� ilmoitus uusista tiketeist�, jotka tulevat valitsemilleni jonotuslistoille';
    $Hash{'Ticket lock timeout notification'} = '';

    # Template: AAATicket
    $Hash{'Action'} = 'Hyv�ksy';
    $Hash{'Age'} = 'Ik�';
    $Hash{'Article'} = 'Artikkeli';
    $Hash{'Attachment'} = 'Liitetiedosto';
    $Hash{'Attachments'} = '';
    $Hash{'Bcc'} = '';
    $Hash{'Bounce'} = 'Delekoi';
    $Hash{'Cc'} = 'Kopio';
    $Hash{'Close'} = 'Sulje';
    $Hash{'closed succsessful'} = 'Valmistui - Sulje';
    $Hash{'closed unsuccsessful'} = 'Keskener�inen - Sulje';
    $Hash{'Compose'} = 'uusia viesti';
    $Hash{'Created'} = 'Luotu';
    $Hash{'Createtime'} = 'Luontiaika';
    $Hash{'eMail'} = '';
    $Hash{'email'} = 's�hk�posti';
    $Hash{'email-external'} = 'S�hk�posti-sis�inen';
    $Hash{'email-internal'} = 'S�hk�posti - julkinen';
    $Hash{'Forward'} = 'V�lit�';
    $Hash{'From'} = 'L�hett�j�';
    $Hash{'high'} = 'Kiireellinen';
    $Hash{'History'} = 'Historia';
    $Hash{'If it is not displayed correctly,'} = 'Jos t�m� ei n�y oikein,';
    $Hash{'Lock'} = 'Lukitse';
    $Hash{'low'} = 'Alhainen';
    $Hash{'Move'} = 'Siirr�';
    $Hash{'new'} = 'uusi';
    $Hash{'normal'} = 'Normaali';
    $Hash{'note-external'} = 'Huomautus - sis�inen';
    $Hash{'note-internal'} = 'Huomautus - sis�inen';
    $Hash{'note-report'} = 'Huomautus - raportti';
    $Hash{'open'} = 'avoin';
    $Hash{'Owner'} = 'Omistaja';
    $Hash{'Pending'} = 'Odottaa';
    $Hash{'phone'} = 'puhelimitse';
    $Hash{'plain'} = 'pelkk� teksti';
    $Hash{'Priority'} = 'Prioriteetti';
    $Hash{'Queue'} = '';
    $Hash{'removed'} = 'poistettu';
    $Hash{'Sender'} = 'L�hett�j�';
    $Hash{'sms'} = '';
    $Hash{'State'} = 'Status';
    $Hash{'Subject'} = 'Otsikko';
    $Hash{'This is a'} = 'T�m� on';
    $Hash{'This is a HTML email. Click here to show it.'} = 'T�m� s�hk�posti on HTML-muodossa. Klikkaa t�st� katsoaksesi sit�';
    $Hash{'This message was written in a character set other than your own.'} = 'T�m� teksti on kirjoitettu eri kirjaisinasetuksilla kuin omasi';
    $Hash{'Ticket'} = 'Ticket';
    $Hash{'To'} = 'Vastaanottaja';
    $Hash{'to open it in a new window.'} = 'avataksesi se uuteen ikkunaan.';
    $Hash{'Unlock'} = 'Poista lukitus';
    $Hash{'very high'} = 'Eritt�in kiireellinen';
    $Hash{'very low'} = 'Eritt�in alhainen';
    $Hash{'View'} = 'Katso';
    $Hash{'webrequest'} = '';
    $Hash{'Zoom'} = 'Katso';

    # Template: AdminAutoResponseForm
    $Hash{'Add auto response'} = 'Lis�� automaattivastaus';
    $Hash{'Auto Response From'} = '';
    $Hash{'Auto Response Management'} = 'Automaattivastausten hallinta';
    $Hash{'Change auto response settings'} = 'Muuta automaattivastausten asetuksia';
    $Hash{'Charset'} = '';
    $Hash{'Note'} = '';
    $Hash{'Response'} = 'Vastaa';
    $Hash{'to get the first 20 character of the subject'} = '';
    $Hash{'to get the first 5 lines of the email'} = '';
    $Hash{'to get the from line of the email'} = '';
    $Hash{'to get the realname of the sender (if given)'} = '';
    $Hash{'to get the ticket number of the ticket'} = '';
    $Hash{'Type'} = '';
    $Hash{'Useable options'} = 'K�ytett�v�t asetukset';

    # Template: AdminCharsetForm
    $Hash{'Add charset'} = 'Lis�� kirjaisinasetus';
    $Hash{'Change system charset setting'} = 'Muuta kirjaisinasetuksia';
    $Hash{'System Charset Management'} = 'J�rjestelm�n kirjaisinasetusten hallinta';

    # Template: AdminCustomerUserForm
    $Hash{'Add customer user'} = '';
    $Hash{'Change customer user settings'} = '';
    $Hash{'Customer User Management'} = '';
    $Hash{'Customer user will be needed to to login via customer panels.'} = '';

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
    $Hash{'Admin-Email'} = '';
    $Hash{'Body'} = '';
    $Hash{'OTRS-Admin Info!'} = '';
    $Hash{'Recipents'} = '';

    # Template: AdminEmailSent
    $Hash{'Message sent to'} = '';

    # Template: AdminGroupForm
    $Hash{'Add group'} = 'Lis�� ryhm�';
    $Hash{'Change group settings'} = 'Muuta ryhm�n asetuksia';
    $Hash{'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).'} = 'Lis�� uusi k�ytt�j�ryhm�, ett� voit m��ritell� k�ytt�oikeuksia useammille eri tukiryhmille (Huolto, Ostot, Markkinointi jne.)';
    $Hash{'Group Management'} = 'Ryhmien hallinta';
    $Hash{'It\'s useful for ASP solutions.'} = 'T�m� on hy�dyllinen ASP-k�yt�ss�';
    $Hash{'The admin group is to get in the admin area and the stats group to get stats area.'} = 'Admin-ryhm�n j�senet p��sev�t yll�pito- ja tilastoalueille.';

    # Template: AdminLanguageForm
    $Hash{'Add language'} = 'Lis�� kieli';
    $Hash{'Change system language setting'} = 'Muokkaa j�rjestelm�n kieliasetuksua';
    $Hash{'System Language Management'} = 'J�rjestelm�n kielen hallinta';

    # Template: AdminNavigationBar
    $Hash{'AdminEmail'} = '';
    $Hash{'AgentFrontend'} = 'Tukin�kym�';
    $Hash{'Auto Response <-> Queue'} = 'Automaattivastaukset <-> Jonotuslista';
    $Hash{'Auto Responses'} = 'Automaattivastaukset';
    $Hash{'Charsets'} = '';
    $Hash{'CustomerUser'} = '';
    $Hash{'Email Addresses'} = 'S�hk�postiosoitteet';
    $Hash{'Groups'} = 'Ryhm�t';
    $Hash{'Logout'} = 'Kirjaudu ulos';
    $Hash{'Responses'} = 'Vastaukset';
    $Hash{'Responses <-> Queue'} = 'Vastaukset <-> Jonotuslista';
    $Hash{'Select Box'} = '';
    $Hash{'Session Management'} = 'Istuntojen hallinta';
    $Hash{'Status defs'} = '';
    $Hash{'User <-> Groups'} = '';

    # Template: AdminQueueAutoResponseForm
    $Hash{'Queue <-> Auto Response Management'} = 'Jonotuslista <-> Automaattivastaushallinta';

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
    $Hash{'0 = no escalation'} = '';
    $Hash{'0 = no unlock'} = '';
    $Hash{'Add queue'} = 'Lis�� jonotuslista';
    $Hash{'Change queue settings'} = 'Muuta jonotuslistan asetuksia';
    $Hash{'Escalation time'} = 'Maksimi k�sittelyaika';
    $Hash{'Follow up Option'} = '';
    $Hash{'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.'} = '';
    $Hash{'If a ticket will not be answered in thos time, just only this ticket will be shown.'} = '';
    $Hash{'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.'} = '';
    $Hash{'Key'} = 'Key';
    $Hash{'Queue Management'} = 'Jonotuslistan Hallinta';
    $Hash{'Systemaddress'} = '';
    $Hash{'The salutation for email answers.'} = '';
    $Hash{'The signature for email answers.'} = '';
    $Hash{'Ticket lock after a follow up'} = '';
    $Hash{'Unlock timeout'} = 'Aika lukituksen poistumiseen';
    $Hash{'Will be the sender address of this queue for email answers.'} = '';

    # Template: AdminQueueResponsesChangeForm
    $Hash{'Change %s settings'} = '';
    $Hash{'Std. Responses <-> Queue Management'} = 'Oletusvastaukset <-> Jonotuslista';

    # Template: AdminQueueResponsesForm
    $Hash{'Answer'} = '';
    $Hash{'Change answer <-> queue settings'} = 'Vaihda vastaus <-> Jonotuslista';

    # Template: AdminResponseForm
    $Hash{'A response is default text to write faster answer (with default text) to customers.'} = 'Vastauspohja on oletusteksti, jonka avulla voit nopeuttaa vastaamista asiakkaille';
    $Hash{'Add response'} = 'Lis�� vastauspohja';
    $Hash{'Change response settings'} = 'Muuta vastauspohjan asetuksia';
    $Hash{'Don\'t forget to add a new response a queue!'} = '�l� unohda lis�t� uutta vastauspohjaa jonotuslistalle.';
    $Hash{'Response Management'} = 'Vastauspohjien hallinta';

    # Template: AdminSalutationForm
    $Hash{'Add salutation'} = 'Lis�� tervehdys';
    $Hash{'Change salutation settings'} = 'Muuta tervehdysasetuksia';
    $Hash{'customer realname'} = 'k�ytt�j�n oikea nimi';
    $Hash{'Salutation Management'} = 'Tervehdysten hallinta';

    # Template: AdminSelectBoxForm
    $Hash{'Max Rows'} = 'Max. rivim��r�';

    # Template: AdminSelectBoxResult
    $Hash{'Limit'} = '';
    $Hash{'Select Box Result'} = '';
    $Hash{'SQL'} = '';

    # Template: AdminSession
    $Hash{'kill all sessions'} = 'Tapa kaikki istunnot';

    # Template: AdminSessionTable
    $Hash{'kill session'} = 'Tapa istunto';
    $Hash{'SessionID'} = '';

    # Template: AdminSignatureForm
    $Hash{'Add signature'} = 'Lis�� allekirjoitus';
    $Hash{'Change signature settings'} = 'Muuta allekirjoitusasetuksia';
    $Hash{'for agent firstname'} = 'k�sittelij�n etunimi';
    $Hash{'for agent lastname'} = 'k�sittelij�n sukunimi';
    $Hash{'Signature Management'} = 'Allekirjoitusten hallinta';

    # Template: AdminStateForm
    $Hash{'Add state'} = 'Lis�� status';
    $Hash{'Change system state setting'} = '�ndere System-State';
    $Hash{'System State Management'} = 'Tilamahdollisuuksien m��ritt�minen';

    # Template: AdminSystemAddressForm
    $Hash{'Add system address'} = 'Lis�� j�rjestelm�n s�hk�postiosoite';
    $Hash{'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!'} = 'Alle eingehenden Emails mit dem "To:" werden in die ausgew�hlte Queue einsortiert.';
    $Hash{'Change system address setting'} = 'Muuta j�rjestelm�n s�hk�postiasetuksia';
    $Hash{'Email'} = 'S�hk�posti';
    $Hash{'Realname'} = '';
    $Hash{'System Email Addresses Management'} = 'S�hk�postiosoitteiden m��ritys';

    # Template: AdminUserForm
    $Hash{'Add user'} = 'Lis�� k�ytt�j�';
    $Hash{'Change user settings'} = 'Vaihda k�ytt�j�n asetuksia';
    $Hash{'Don\'t forget to add a new user to groups!'} = '�l� unohda lis�t� k�ytt�j�� ryhmiin!';
    $Hash{'Firstname'} = 'Etunimi';
    $Hash{'Lastname'} = 'Sukunimi';
    $Hash{'Login'} = '';
    $Hash{'User Management'} = 'K�ytt�j�hallinta';
    $Hash{'User will be needed to handle tickets.'} = 'K�ytt�j� tarvitaan tikettien k�sittelemiseen.';

    # Template: AdminUserGroupChangeForm
    $Hash{'Change  settings'} = '';
    $Hash{'User <-> Group Management'} = 'K�ytt�j� <-> Ryhm�hallinta';

    # Template: AdminUserGroupForm
    $Hash{'Change user <-> group settings'} = 'Vaihda k�ytt�j� <-> Ryhm�hallinta';

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
    $Hash{'A message should have a To: recipient!'} = 'Viestiss� pit�� olla vastaanottaja!';
    $Hash{'Bounce ticket'} = '';
    $Hash{'Bounce to'} = '';
    $Hash{'Inform sender'} = '';
    $Hash{'Next ticket state'} = 'Uusi tiketin status';
    $Hash{'Send mail!'} = 'L�het� s�hk�posti!';
    $Hash{'You need a email address (e. g. customer@example.com) in To:!'} = 'Laita vastaanottajakentt��n s�hk�postiosoite!';
    $Hash{'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further inforamtions.'} = '';

    # Template: AgentClose
    $Hash{' (work units)'} = '';
    $Hash{'Close ticket'} = '';
    $Hash{'Close type'} = '';
    $Hash{'Close!'} = '';
    $Hash{'Note Text'} = '';
    $Hash{'Note type'} = 'Viestityyppi';
    $Hash{'store'} = 'tallenna';
    $Hash{'Time units'} = '';

    # Template: AgentCompose
    $Hash{'A message should have a subject!'} = 'Viestiss� pit�� olla otsikko!';
    $Hash{'Attach'} = '';
    $Hash{'Compose answer for ticket'} = 'L�het� vastaus tikettiin';
    $Hash{'Is the ticket answered'} = '';
    $Hash{'Options'} = '';
    $Hash{'Spell Check'} = '';

    # Template: AgentCustomer
    $Hash{'Back'} = 'Takaisin';
    $Hash{'Change customer of ticket'} = '';
    $Hash{'Set customer id of a ticket'} = 'Aseta tiketin asiakasnumero#';

    # Template: AgentCustomerHistory
    $Hash{'Customer history'} = '';

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerView
    $Hash{'Customer Data'} = '';

    # Template: AgentForward
    $Hash{'Article type'} = 'Huomautustyyppi';
    $Hash{'Date'} = '';
    $Hash{'End forwarded message'} = '';
    $Hash{'Forward article of ticket'} = 'V�lit� tiketin artikkeli';
    $Hash{'Forwarded message from'} = '';
    $Hash{'Reply-To'} = '';

    # Template: AgentHistoryForm
    $Hash{'History of'} = '';

    # Template: AgentMailboxTicket
    $Hash{'Add Note'} = 'Lis�� huomautus';
    $Hash{'CustomerID'} = 'AsiakasID#';

    # Template: AgentNavigationBar
    $Hash{'FAQ'} = '';
    $Hash{'Locked tickets'} = 'Lukitut tiketit';
    $Hash{'new message'} = 'uusi viesti';
    $Hash{'PhoneView'} = 'Puhelun�kym�';
    $Hash{'Preferences'} = 'K�ytt�j�asetukset';
    $Hash{'Utilities'} = 'Etsi';

    # Template: AgentNote
    $Hash{'Add note to ticket'} = 'Lis�� huomautus t�h�n tikettiin';
    $Hash{'Note!'} = '';

    # Template: AgentOwner
    $Hash{'Change owner of ticket'} = '';
    $Hash{'Message for new Owner'} = '';
    $Hash{'New user'} = '';

    # Template: AgentPhone
    $Hash{'Customer called'} = '';
    $Hash{'Phone call'} = 'Puhelut';
    $Hash{'Phone call at %s'} = '';

    # Template: AgentPhoneNew
    $Hash{'A message should have a From: recipient!'} = '';
    $Hash{'new ticket'} = 'Uusi tiketti';
    $Hash{'New ticket via call.'} = '';
    $Hash{'You need a email address (e. g. customer@example.com) in From:!'} = '';

    # Template: AgentPlain
    $Hash{'ArticleID'} = '';
    $Hash{'Plain'} = 'Pelkk� teksti';
    $Hash{'TicketID'} = '';

    # Template: AgentPreferencesCustomQueue
    $Hash{'Select your custom queues'} = 'Valitse erityinen jonotuslista';

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
    $Hash{'Change Password'} = 'Vaihda salasana';
    $Hash{'New password'} = 'Uusi salasana';
    $Hash{'New password again'} = 'Kirjoita salasana uudelleen';

    # Template: AgentPriority
    $Hash{'Change priority of ticket'} = 'Muuta prioriteetti�';
    $Hash{'New state'} = '';

    # Template: AgentSpelling
    $Hash{'Apply these changes'} = '';
    $Hash{'Discard all changes and return to the compose screen'} = '';
    $Hash{'Return to the compose screen'} = '';
    $Hash{'Spell Checker'} = '';
    $Hash{'spelling error(s)'} = '';
    $Hash{'The message being composed has been closed.  Exiting.'} = '';
    $Hash{'This window must be called from compose window'} = '';

    # Template: AgentStatusView
    $Hash{'D'} = '';
    $Hash{'sort downward'} = '';
    $Hash{'sort upward'} = '';
    $Hash{'Ticket limit:'} = '';
    $Hash{'Ticket Status'} = '';
    $Hash{'U'} = '';

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
    $Hash{'Ticket locked!'} = 'Tiketti lukittu!';
    $Hash{'unlock'} = 'poista lukitus';

    # Template: AgentUtilSearchByCustomerID
    $Hash{'Customer history search'} = 'Asiakashistoriahaku';
    $Hash{'Customer history search (e. g. "ID342425").'} = 'Asiakashistoriahaku (Esim. "ID342425").';
    $Hash{'No * possible!'} = 'Jokerimerkki (*) ei k�yt�ss� !';

    # Template: AgentUtilSearchByText
    $Hash{'Article free text'} = '';
    $Hash{'Fulltext search'} = 'Tekstihaku';
    $Hash{'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")'} = 'Tekstihaku("Etsi esimerkiksi "Mi*a" tai "Petr+Tekrat"';
    $Hash{'Search in'} = '';
    $Hash{'Ticket free text'} = '';

    # Template: AgentUtilSearchByTicketNumber
    $Hash{'search'} = 'Etsi';
    $Hash{'search (e. g. 10*5155 or 105658*)'} = 'etsi tikettinumerolla (Esim. 10*5155 or 105658*)';

    # Template: AgentUtilSearchNavBar
    $Hash{'Results'} = '';
    $Hash{'Site'} = '';
    $Hash{'Total hits'} = 'Hakutuloksia yhteens�';

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
    $Hash{'All open tickets'} = '';
    $Hash{'open tickets'} = '';
    $Hash{'Provides an overview of all'} = '';
    $Hash{'So you see what is going on in your system.'} = '';

    # Template: CustomerCreateAccount
    $Hash{'Create'} = '';
    $Hash{'Create Account'} = '';

    # Template: CustomerError
    $Hash{'Backend'} = '';
    $Hash{'BackendMessage'} = '';
    $Hash{'Click here to report a bug!'} = 'Klikkaa t�st� l�hett��ksesi bugiraportti!';
    $Hash{'Handle'} = '';

    # Template: CustomerFooter
    $Hash{'Powered by'} = '';

    # Template: CustomerHeader

    # Template: CustomerLogin

    # Template: CustomerLostPassword
    $Hash{'Lost your password?'} = '';
    $Hash{'Request new password'} = '';

    # Template: CustomerMessage
    $Hash{'Follow up'} = '';

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
    $Hash{'Create new Ticket'} = '';
    $Hash{'My Tickets'} = '';
    $Hash{'New Ticket'} = '';
    $Hash{'Ticket-Overview'} = '';
    $Hash{'Welcome %s'} = '';

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom
    $Hash{'Accounted time'} = '';

    # Template: CustomerWarning

    # Template: Error

    # Template: Footer

    # Template: Header
    $Hash{'Home'} = '';

    # Template: InstallerStart
    $Hash{'next step'} = '';

    # Template: InstallerSystem
    $Hash{'(Email of the system admin)'} = '';
    $Hash{'(Full qualified domain name of your system)'} = '';
    $Hash{'(Logfile just needed for File-LogModule!)'} = '';
    $Hash{'(The identify of the system. Each ticket number and each http session id starts with this number)'} = '';
    $Hash{'(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')'} = '';
    $Hash{'(Used default language)'} = '';
    $Hash{'(Used log backend)'} = '';
    $Hash{'(Used ticket number format)'} = '';
    $Hash{'Default Charset'} = '';
    $Hash{'Default Language'} = '';
    $Hash{'Logfile'} = '';
    $Hash{'LogModule'} = '';
    $Hash{'Organization'} = '';
    $Hash{'System'} = '';
    $Hash{'System FQDN'} = '';
    $Hash{'SystemID'} = '';
    $Hash{'Ticket Hook'} = '';
    $Hash{'Ticket Number Generator'} = '';
    $Hash{'Webfrontend'} = '';

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
    $Hash{'No Permission'} = 'Ei k�ytt�oikeutta';

    # Template: Notify
    $Hash{'Info'} = '';

    # Template: QueueView
    $Hash{'All tickets'} = 'Tikettej� yhteens�';
    $Hash{'Queues'} = 'Jonotuslista';
    $Hash{'Show all'} = 'Yhteens�';
    $Hash{'Ticket available'} = 'Tikettej� avoinna';
    $Hash{'tickets'} = 'tiketti�';
    $Hash{'Tickets shown'} = 'Tikettej� n�kyviss�';

    # Template: SystemStats
    $Hash{'Graphs'} = 'Grafiikat';
    $Hash{'Tickets'} = '';

    # Template: Test
    $Hash{'OTRS Test Page'} = '';

    # Template: TicketEscalation
    $Hash{'Ticket escalation!'} = 'Tiketin maksimi hyv�ksytt�v� k�sittelyaika!';

    # Template: TicketView
    $Hash{'Change queue'} = 'Vaihda jonotuslistaa';
    $Hash{'Compose Answer'} = 'Vastaa';
    $Hash{'Contact customer'} = 'Ota yhteytt� asiakkaaseen';
    $Hash{'phone call'} = 'Puhelut';
    $Hash{'Time till escalation'} = 'Aikaa j�ljell� maksimi k�sittelyaikaan';

    # Template: TicketViewLite

    # Template: TicketZoom

    # Template: TicketZoomNote

    # Template: TicketZoomSystem

    # Template: Warning

    # Misc
    $Hash{'(Click here to add a group)'} = '(Klikkaa t�st� luodaksesi ryhm�n)';
    $Hash{'(Click here to add a queue)'} = '(Klikkaa t�st� tehd�ksesi uuden jonotuslistan)';
    $Hash{'(Click here to add a response)'} = '(Klikkaa t�st� lis�t�ksesi vastauspohjan)';
    $Hash{'(Click here to add a salutation)'} = '(Klikkaa t�st� lis�t�ksesi tervehdyksen)';
    $Hash{'(Click here to add a signature)'} = '(Klikkaa t��lt� lis�t�ksesi allekirjoituksen)';
    $Hash{'(Click here to add a system email address)'} = '(Klikkaa t�st� lis�t�ksesi j�rjestelm�n s�hk�postiosoitteen)';
    $Hash{'(Click here to add a user)'} = '(Klikkaa t�st� lis�t�ksesi k�ytt�j�n';
    $Hash{'(Click here to add an auto response)'} = '(Klikkaa t�st� lis�t�ksesi automaattivastauksen)';
    $Hash{'(Click here to add charset)'} = 'Klikkaa t�st� lis�t�ksesi kirjaisinasetuksen';
    $Hash{'(Click here to add language)'} = '(Klikkaa t�st� lis�t�ksesi uusi kieli)';
    $Hash{'(Click here to add state)'} = '(Klikkaa t�st� lis�t�ksesi uusi status)';
    $Hash{'Update auto response'} = '';
    $Hash{'Update charset'} = 'P�ivit� kirjaisinasetukset';
    $Hash{'Update group'} = 'P�ivit� ryhm�tiedot';
    $Hash{'Update language'} = 'P�ivit� kieli';
    $Hash{'Update queue'} = 'P�ivit� jonotuslista';
    $Hash{'Update response'} = 'P�ivit� vastauspohja';
    $Hash{'Update salutation'} = 'P�ivit� tervehdys';
    $Hash{'Update signature'} = 'P�ivit� allekirjoitus';
    $Hash{'Update state'} = 'P�ivit� status';
    $Hash{'Update system address'} = 'P�ivit� j�rjestelm�n s�hk�postiosoitetta';
    $Hash{'Update user'} = 'P�ivit� k�ytt�j�tiedot';
    $Hash{'You have to be in the admin group!'} = '';
    $Hash{'You have to be in the stats group!'} = '';
    $Hash{'auto responses set'} = '';

    $Self->{Translation} = \%Hash;

}
# --
1;
