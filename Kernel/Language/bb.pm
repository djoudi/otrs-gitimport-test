# --
# Kernel/Language/bb.pm - provides bavarian language translation
# Copyright (C) 2002 Martin Edenhofer <martin at otrs.org>
# --
# $Id: bb.pm,v 1.3 2002-12-20 19:08:21 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::bb;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.3 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*\$/\$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Fri Dec 20 19:14:36 2002 by Martin Edenhofer 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';

    # Template: AAABase
    $Hash{' 2 minutes'} = ' 2 Minutn';
    $Hash{' 5 minutes'} = ' 5 Minutn';
    $Hash{' 7 minutes'} = ' 7 Minutn';
    $Hash{'10 minutes'} = '10 Minutn';
    $Hash{'15 minutes'} = '15 Minutn';
    $Hash{'AddLink'} = 'Link hinzuf�gen';
    $Hash{'AdminArea'} = 'AdminBereich';
    $Hash{'All'} = 'All';
    $Hash{'all'} = 'alle';
    $Hash{'Attention'} = 'Achtung';
    $Hash{'Bug Report'} = 'Fehla berichten';
    $Hash{'Cancel'} = 'Abbrechen';
    $Hash{'Change'} = '�ndern';
    $Hash{'change'} = '�ndern';
    $Hash{'change!'} = '�ndern!';
    $Hash{'click here'} = 'klick hier';
    $Hash{'Comment'} = 'Kommentar';
    $Hash{'Customer'} = 'Kunde';
    $Hash{'Customer info'} = 'Kunden Info';
    $Hash{'day'} = 'Tag';
    $Hash{'days'} = 'Tage';
    $Hash{'description'} = 'Beschreibung';
    $Hash{'Description'} = 'Beschreibung';
    $Hash{'Done'} = 'Fertig';
    $Hash{'end'} = 'runter';
    $Hash{'Error'} = 'Fehler';
    $Hash{'Example'} = 'Beispiel';
    $Hash{'Examples'} = 'Beispiele';
    $Hash{'Feature not acitv!'} = '';
    $Hash{'go'} = 'start';
    $Hash{'go!'} = 'start!';
    $Hash{'Group'} = 'Gruppe';
    $Hash{'Hit'} = 'Treffa';
    $Hash{'Hits'} = 'Treffa';
    $Hash{'hour'} = 'Stunde';
    $Hash{'hours'} = 'Stunden';
    $Hash{'Ignore'} = 'Ignorieren';
    $Hash{'Invalid SessionID!'} = 'Invalid SessionID!';
    $Hash{'Language'} = 'Sprache';
    $Hash{'Languages'} = 'Sprachen';
    $Hash{'Line'} = 'Zeile';
    $Hash{'Lite'} = 'Einfach';
    $Hash{'Login failed! Your username or password was entered incorrectly.'} = 'Login fehlgeschlagen! Benutzername oder Passwort falsch.';
    $Hash{'Logout successful. Thank you for using OTRS!'} = 'Abmelden erfolgreich! Danke f�r die Benutzung von OTRS!';
    $Hash{'Message'} = 'Nachricht';
    $Hash{'minute'} = 'Minute';
    $Hash{'minutes'} = 'Minutn';
    $Hash{'Module'} = 'Modul';
    $Hash{'Modulefile'} = 'Moduldatei';
    $Hash{'Name'} = 'Name';
    $Hash{'New message'} = 'Neue Nachricht';
    $Hash{'New message!'} = 'Neue Nachricht!';
    $Hash{'No'} = 'Nein';
    $Hash{'no'} = 'kein';
    $Hash{'No suggestions'} = 'koane Vorschl�ge';
    $Hash{'none'} = 'koane';
    $Hash{'none - answered'} = 'koane - beantwortet';
    $Hash{'none!'} = 'koane Angabe!';
    $Hash{'off'} = 'aus';
    $Hash{'Off'} = 'Aus';
    $Hash{'on'} = 'ein';
    $Hash{'On'} = 'Ein';
    $Hash{'Password'} = 'Passwort';
    $Hash{'Please answer this ticket(s) to get back to the normal queue view!'} = 'Bitte beantworten Sie dieses Ticket um in die normale queue view zur�ck zu kommen!';
    $Hash{'Please contact your admin'} = 'Bitte kontaktieren Sie Ihren Admin';
    $Hash{'please do not edit!'} = 'Bitte nicht ver�ndern!';
    $Hash{'QueueView'} = 'Queue-Ansicht';
    $Hash{'replace with'} = 'ersetzen mit';
    $Hash{'Reset'} = 'R�cksetzen';
    $Hash{'Salutation'} = 'Anrede';
    $Hash{'Signature'} = 'Signatur';
    $Hash{'Sorry'} = 'Bedauere';
    $Hash{'Stats'} = 'Statistik';
    $Hash{'Subfunction'} = 'Unterfunktion';
    $Hash{'submit'} = '�bermitteln';
    $Hash{'submit!'} = '�bermitteln!';
    $Hash{'Text'} = '';
    $Hash{'The recommended charset for your language is %s!'} = 'Der empfohlene Charset f�r Ihre Sprache ist %s!';
    $Hash{'Theme'} = '';
    $Hash{'There is no account with that login name.'} = 'Es existiert kein Login mit diesen Namen.';
    $Hash{'top'} = 'hoch';
    $Hash{'update'} = 'aktualisieren';
    $Hash{'update!'} = 'aktualisieren!';
    $Hash{'User'} = 'Benutzer';
    $Hash{'Username'} = 'Benutzername';
    $Hash{'Valid'} = 'G�ltig';
    $Hash{'Warning'} = 'Warnung';
    $Hash{'Welcome to OTRS'} = 'Willkommen zu OTRS';
    $Hash{'Word'} = 'Wort';
    $Hash{'wrote'} = 'schrieb';
    $Hash{'Yes'} = 'Ja';
    $Hash{'yes'} = 'ja';
    $Hash{'You got new message!'} = 'Neue Nachricht bekommen!';

    # Template: AAAMonth
    $Hash{'Apr'} = '';
    $Hash{'Aug'} = '';
    $Hash{'Dec'} = 'Dez';
    $Hash{'Feb'} = '';
    $Hash{'Jan'} = '';
    $Hash{'Jul'} = '';
    $Hash{'Jun'} = '';
    $Hash{'Mar'} = 'M�r';
    $Hash{'May'} = 'Mai';
    $Hash{'Nov'} = '';
    $Hash{'Oct'} = 'Okt';
    $Hash{'Sep'} = '';

    # Template: AAAPreferences
    $Hash{'Custom Queue'} = '';
    $Hash{'Follow up notification'} = 'Mitteilung bei Nachfragen';
    $Hash{'Frontend'} = '';
    $Hash{'Mail Management'} = '';
    $Hash{'Move notification'} = 'Move Mitteilung';
    $Hash{'New ticket notification'} = 'Mitteilung bei neuem Ticket';
    $Hash{'Other Options'} = 'Andere Optionen';
    $Hash{'Preferences updated successfully!'} = 'Update der Benutzereinstellungen erfolgreich!';
    $Hash{'QueueView refresh time'} = 'Queue-Ansicht refresh Zeit';
    $Hash{'Select your frontend Charset.'} = 'Zeichensatz f�r Darstellung ausw�hlen.';
    $Hash{'Select your frontend language.'} = 'Oberfl�chen-Sprache ausw�hlen.';
    $Hash{'Select your frontend QueueView.'} = 'Queue-Ansicht ausw�hlen.';
    $Hash{'Select your frontend Theme.'} = 'Anzeigeschema ausw�hlen.';
    $Hash{'Select your QueueView refresh time.'} = 'Queue-Ansicht Aktualisierungszeit ausw�hlen';
    $Hash{'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.'} = 'Zusenden einer Mitteilung wenn ein Kunden eine Nachfrage stellt uns ich der Eigner bin.';
    $Hash{'Send me a notification if a ticket is moved into a custom queue.'} = ' Zusenden einer Mitteilung beim verschieben eines Ticket in meine individuellen Queue(s).';
    $Hash{'Send me a notification if a ticket is unlocked by the system.'} = 'Zusenden einer Mitteilung wenn ein Ticket vom System freigegeben (unlocked) wird.';
    $Hash{'Send me a notification if there is a new ticket in my custom queues.'} = 'Zusenden einer Mitteilung bei neuem Ticket in der/den individuellen Queue(s).';
    $Hash{'Ticket lock timeout notification'} = 'Mitteilung bei lock Zeit�berschreitung';

    # Template: AAATicket
    $Hash{'Action'} = 'Aktion';
    $Hash{'Age'} = 'Alter';
    $Hash{'Article'} = 'Artikel';
    $Hash{'Attachment'} = 'Anlage';
    $Hash{'Attachments'} = 'Anlagen';
    $Hash{'Bcc'} = '';
    $Hash{'Bounce'} = '';
    $Hash{'Cc'} = '';
    $Hash{'Close'} = 'Schlie�en';
    $Hash{'closed successful'} = 'erfolgreich geschlossen';
    $Hash{'closed unsuccessful'} = 'erfolglos geschlossen';
    $Hash{'Compose'} = 'Verfassen';
    $Hash{'Created'} = 'Erstellt';
    $Hash{'Createtime'} = 'Erstellt am';
    $Hash{'email'} = 'eMail';
    $Hash{'eMail'} = '';
    $Hash{'email-external'} = 'Email an extern';
    $Hash{'email-internal'} = 'Email an intern';
    $Hash{'Forward'} = 'Weiterleiten';
    $Hash{'From'} = 'Von';
    $Hash{'high'} = 'hoch';
    $Hash{'History'} = '';
    $Hash{'If it is not displayed correctly,'} = 'Wenn sie nicht korrekt angezeigt wird,';
    $Hash{'Lock'} = 'Ziehen';
    $Hash{'low'} = 'niedrig';
    $Hash{'Move'} = 'Verschieben';
    $Hash{'new'} = 'neu';
    $Hash{'normal'} = 'normal';
    $Hash{'note-external'} = 'Notiz f�r extern';
    $Hash{'note-internal'} = 'Notiz f�r intern';
    $Hash{'note-report'} = 'Notiz f�r reporting';
    $Hash{'open'} = 'offen';
    $Hash{'Owner'} = 'Besitzer';
    $Hash{'Pending'} = 'Warten';
    $Hash{'phone'} = 'Telefon';
    $Hash{'plain'} = 'klar';
    $Hash{'Priority'} = 'Priorit�t';
    $Hash{'Queue'} = '';
    $Hash{'removed'} = 'entfernt';
    $Hash{'Sender'} = 'Sender';
    $Hash{'sms'} = '';
    $Hash{'State'} = 'Status';
    $Hash{'Subject'} = 'Betreff';
    $Hash{'This is a'} = 'Dies ist eine';
    $Hash{'This is a HTML email. Click here to show it.'} = 'Dies ist eine HTML eMail. Do klicken um sie anzusehen.';
    $Hash{'This message was written in a character set other than your own.'} = 'Diese Nachricht wurde in einem Zeichensatz erstellt, der nicht Ihrem eigenen entspricht.';
    $Hash{'Ticket'} = 'Ticket';
    $Hash{'To'} = 'An';
    $Hash{'to open it in a new window.'} = 'um sie in einem neuen Fenster angezeigt zu bekommen';
    $Hash{'Unlock'} = 'Freigeben';
    $Hash{'very high'} = 'sehr hoch';
    $Hash{'very low'} = 'sehr niedrig';
    $Hash{'View'} = 'Ansicht';
    $Hash{'webrequest'} = 'Webanfrage';
    $Hash{'Zoom'} = 'Inhalt';

    # Template: AAAWeekDay
    $Hash{'Fri'} = 'Fre';
    $Hash{'Mon'} = 'Mon';
    $Hash{'Sat'} = 'Sam';
    $Hash{'Sun'} = 'Son';
    $Hash{'Thu'} = 'Don';
    $Hash{'Tue'} = 'Die';
    $Hash{'Wed'} = 'Mit';

    # Template: AdminAutoResponseForm
    $Hash{'Add auto response'} = 'Auto-Antwort hinzuf�gen';
    $Hash{'Auto Response From'} = 'Auto-Antwort Form';
    $Hash{'Auto Response Management'} = 'Auto-Antworten Verwaltung';
    $Hash{'Change auto response settings'} = '�ndern einer Auto-Antworten';
    $Hash{'Charset'} = '';
    $Hash{'Note'} = 'Notiz';
    $Hash{'Response'} = 'Antwort';
    $Hash{'to get the first 20 character of the subject'} = 'Um die ersten 20 Zeichen des Betreffs zu bekommen';
    $Hash{'to get the first 5 lines of the email'} = 'Um die ersten 5 Zeilen der eMail zu bekommen';
    $Hash{'to get the from line of the email'} = '';
    $Hash{'to get the realname of the sender (if given)'} = '';
    $Hash{'to get the ticket number of the ticket'} = '';
    $Hash{'Type'} = '';
    $Hash{'Useable options'} = 'Benutzbare Optionen';

    # Template: AdminCharsetForm
    $Hash{'Add charset'} = 'Charset hinzuf�gen';
    $Hash{'Change system charset setting'} = '�ndere System-Charset';
    $Hash{'System Charset Management'} = 'System-Charset Verwaltung';

    # Template: AdminCustomerUserForm
    $Hash{'Add customer user'} = 'Hinzuf�gen eines Kunden-Benutzers';
    $Hash{'Change customer user settings'} = '�mdern der Kunden-Benutzers einstellungen';
    $Hash{'Customer User Management'} = 'Kunden-Benutzer Management';
    $Hash{'Customer user will be needed to to login via customer panels.'} = 'Kunden-Benutzer werden f�r das Kunden-Webfrontend ben�tigt';

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
    $Hash{'Admin-Email'} = '';
    $Hash{'Body'} = '';
    $Hash{'OTRS-Admin Info!'} = '';
    $Hash{'Recipents'} = 'Empf�nger';

    # Template: AdminEmailSent
    $Hash{'Message sent to'} = 'Nachricht gesendet an';

    # Template: AdminGroupForm
    $Hash{'Add group'} = 'Gruppe hinzuf�gen';
    $Hash{'Change group settings'} = '�ndern einer Gruppe';
    $Hash{'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).'} = 'Erstelle neue Gruppen um die Zugriffe f�r verschieden Agent-Gruppen zu definieren (z. B. Einkaufs-Abteilung, Support-Abteilung, Verkaufs-Abteilung, ...).';
    $Hash{'Group Management'} = 'Gruppen Verwaltung';
    $Hash{'It\'s useful for ASP solutions.'} = 'Sehr n�tzlich f�r ASP-L�sungen.';
    $Hash{'The admin group is to get in the admin area and the stats group to get stats area.'} = 'Die admin Gruppe wird f�r den Admin-Bereich ben�tigt, die stats Gruppe f�r den Statistik-Bereich.';

    # Template: AdminLanguageForm
    $Hash{'Add language'} = 'Sprache hinzuf�gen';
    $Hash{'Change system language setting'} = '�ndere System-Sprache';
    $Hash{'System Language Management'} = 'System-Sprache Verwaltung';

    # Template: AdminLog
    $Hash{'System Log'} = '';

    # Template: AdminNavigationBar
    $Hash{'AdminEmail'} = '';
    $Hash{'AgentFrontend'} = 'AgentOberfl�che';
    $Hash{'Auto Response <-> Queue'} = 'Auto-Antworten <-> Queues';
    $Hash{'Auto Responses'} = 'Auto-Antworten';
    $Hash{'Charsets'} = '';
    $Hash{'Customer User'} = 'Kunden Benutzer';
    $Hash{'Email Addresses'} = 'Email-Adressen';
    $Hash{'Groups'} = 'Gruppen';
    $Hash{'Logout'} = 'Abmelden';
    $Hash{'POP3 Account'} = '';
    $Hash{'Responses'} = 'Antworten';
    $Hash{'Responses <-> Queue'} = 'Antworten <-> Queues';
    $Hash{'Select Box'} = '';
    $Hash{'Session Management'} = 'Sitzungs Verwaltung';
    $Hash{'Status defs'} = '';
    $Hash{'User <-> Groups'} = 'Benutzer <-> Gruppen';

    # Template: AdminPOP3Form
    $Hash{'Add POP3 Account'} = 'POP3 Account hinzuf�gen';
    $Hash{'All incoming emails with one account will be dispatched in the selected queue!'} = 'Einkommende emails von POP3 Accounts werden in die ausgew�hlte Queue einsortiert!';
    $Hash{'Change POP3 Account setting'} = 'POP3 Account �ndern';
    $Hash{'Host'} = 'Rechner';
    $Hash{'If your account is trusted, the x-otrs header (for priority, ...) will be used!'} = 'Ist der Account trusted, werden die x-otrs Header benutzt!';
    $Hash{'Login'} = '';
    $Hash{'POP3 Account Management'} = '';
    $Hash{'Trusted'} = '';

    # Template: AdminQueueAutoResponseForm
    $Hash{'Queue <-> Auto Response Management'} = 'Queue <-> Auto-Antworten Verwaltung';

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
    $Hash{'0 = no escalation'} = '0 = koane Eskalation';
    $Hash{'0 = no unlock'} = '0 = kein Unlock';
    $Hash{'Add queue'} = 'Queue hinzuf�gen';
    $Hash{'Change queue settings'} = '�ndern einer Queue';
    $Hash{'Escalation time'} = 'Eskalationszeit';
    $Hash{'Follow up Option'} = '';
    $Hash{'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.'} = 'Wenn ein Ticket geschlossen ist und der Kunde jedoch ein follow up sendet, wird das ticket f�r den alten Eigner gelocked.';
    $Hash{'If a ticket will not be answered in thos time, just only this ticket will be shown.'} = 'Wird ein Ticket nicht in jener Zeit beantortet, wird nur noch dieses Ticket gezeigt.';
    $Hash{'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.'} = 'Wird ein Ticket durch einen Agent gelocked jedoch nicht in dieser Zeit beantwortet, wird das Ticket automatisch unlocked.';
    $Hash{'Key'} = 'Schl�ssel';
    $Hash{'Queue Management'} = 'Queue Verwaltung';
    $Hash{'Systemaddress'} = 'System-Adresse';
    $Hash{'The salutation for email answers.'} = 'Die Anrede f�r eMail Antworten.';
    $Hash{'The signature for email answers.'} = 'Die Signatur f�r eMail Antworten.';
    $Hash{'Ticket lock after a follow up'} = 'Ticket locken nache einem follow up';
    $Hash{'Unlock timeout'} = 'Freigabe Zeit�berschreitung';
    $Hash{'Will be the sender address of this queue for email answers.'} = 'Absende Adresse f�r eMails aus dieser Queue.';

    # Template: AdminQueueResponsesChangeForm
    $Hash{'Change %s settings'} = '�ndern der %s Einstellungen';
    $Hash{'Std. Responses <-> Queue Management'} = 'Std. Antworten <-> Queue Verwaltung';

    # Template: AdminQueueResponsesForm
    $Hash{'Answer'} = 'Antwort';
    $Hash{'Change answer <-> queue settings'} = '�ndern der Antworten <-> Queue Beziehung';

    # Template: AdminResponseForm
    $Hash{'A response is default text to write faster answer (with default text) to customers.'} = 'Eine Antwort ist ein vorgegebener Text um schneller Antworten an Kundern schreiben zu k�nnen.';
    $Hash{'Add response'} = 'Antwort hinzuf�gen';
    $Hash{'Change response settings'} = '�ndern einer Antwort';
    $Hash{'Don\'t forget to add a new response a queue!'} = 'Eine neue Antwort muss auch einer Queue zugewiesen werden!';
    $Hash{'Response Management'} = 'Antworten Verwaltung';

    # Template: AdminSalutationForm
    $Hash{'Add salutation'} = 'Anrede hinzuf�gen';
    $Hash{'Change salutation settings'} = '�ndern einer Anrede';
    $Hash{'customer realname'} = 'echter Kundenname';
    $Hash{'Salutation Management'} = 'Anreden Verwaltung';

    # Template: AdminSelectBoxForm
    $Hash{'Max Rows'} = 'Max. Zeile';

    # Template: AdminSelectBoxResult
    $Hash{'Limit'} = '';
    $Hash{'Select Box Result'} = 'Select Box Ergebnis';
    $Hash{'SQL'} = '';

    # Template: AdminSession
    $Hash{'kill all sessions'} = 'L�schen alles Sitzungen';

    # Template: AdminSessionTable
    $Hash{'kill session'} = 'Sitzung l�schen';
    $Hash{'SessionID'} = '';

    # Template: AdminSignatureForm
    $Hash{'Add signature'} = 'Signatur hinzuf�gen';
    $Hash{'Change signature settings'} = '�ndern einer Signatur';
    $Hash{'for agent firstname'} = 'f�r Vorname des Agents';
    $Hash{'for agent lastname'} = 'f�r Nachname des Agents';
    $Hash{'Signature Management'} = 'Signatur Verwaltung';

    # Template: AdminStateForm
    $Hash{'Add state'} = 'State hinzuf�gen';
    $Hash{'Change system state setting'} = '�ndere System-State';
    $Hash{'System State Management'} = 'System-State Verwaltung';

    # Template: AdminSystemAddressForm
    $Hash{'Add system address'} = 'System-Email-Adresse hinzuf�gen';
    $Hash{'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!'} = 'Alle eingehenden Emails mit dem "To:" werden in die ausgew�hlte Queue einsortiert.';
    $Hash{'Change system address setting'} = '�ndere System-Adresse';
    $Hash{'Email'} = 'eMail';
    $Hash{'Realname'} = '';
    $Hash{'System Email Addresses Management'} = 'System-Email-Adressen Verwaltung';

    # Template: AdminUserForm
    $Hash{'Add user'} = 'Benutzer hinzuf�gen';
    $Hash{'Change user settings'} = '�ndern der Benutzereinstellung';
    $Hash{'Don\'t forget to add a new user to groups!'} = 'Eine neuer Benutzer muss auch einer Gruppe zugewiesen werden!';
    $Hash{'Firstname'} = 'Vorname';
    $Hash{'Lastname'} = 'Nachname';
    $Hash{'User Management'} = 'Benutzer Verwaltung';
    $Hash{'User will be needed to handle tickets.'} = 'Benutzer werden ben�tigt um Tickets zu bearbeietn.';

    # Template: AdminUserGroupChangeForm
    $Hash{'Change  settings'} = '';
    $Hash{'User <-> Group Management'} = 'Benutzer <-> Gruppe Verwaltung';

    # Template: AdminUserGroupForm
    $Hash{'Change user <-> group settings'} = '�ndern der Benutzer <-> Gruppe Beziehung';

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
    $Hash{'A message should have a To: recipient!'} = 'Eine Nachricht sollte einen Empf�nger im An: haben!';
    $Hash{'Bounce ticket'} = '';
    $Hash{'Bounce to'} = 'Bounce an';
    $Hash{'Inform sender'} = 'Sender informieren';
    $Hash{'Next ticket state'} = 'N�chster Status des Tickets';
    $Hash{'Send mail!'} = 'Mail senden!';
    $Hash{'You need a email address (e. g. customer@example.com) in To:!'} = 'Im An-Feld wird eine eMail-Adresse (z. B. kunde@beispiel.de) ben�tigt!';
    $Hash{'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further inforamtions.'} = '';

    # Template: AgentClose
    $Hash{' (work units)'} = ' (arbeits Einheiten)';
    $Hash{'Close ticket'} = 'Ticket schlie�en';
    $Hash{'Close type'} = 'Schlie�en Type';
    $Hash{'Close!'} = 'Schlie�en!';
    $Hash{'Note Text'} = 'Notiz Text';
    $Hash{'Note type'} = 'Notiz-Typ';
    $Hash{'store'} = 'speichern';
    $Hash{'Time units'} = 'Zeit-Einheiten';

    # Template: AgentCompose
    $Hash{'A message should have a subject!'} = 'Eine Nachricht sollte ein Betreff haben!';
    $Hash{'Attach'} = 'Anh�ngen';
    $Hash{'Compose answer for ticket'} = 'Antwort erstellen f�r';
    $Hash{'Is the ticket answered'} = 'Ist das Ticket beantwortet';
    $Hash{'Options'} = 'Optionen';
    $Hash{'Spell Check'} = 'Rechtschreibkontrolle';

    # Template: AgentCustomer
    $Hash{'Back'} = 'zur�ck';
    $Hash{'Change customer of ticket'} = '�ndern des Kunden von Ticket';
    $Hash{'Set customer id of a ticket'} = 'Setze eine Kunden# zu einem Ticket';

    # Template: AgentCustomerHistory
    $Hash{'Customer history'} = 'Kunden History';

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerView
    $Hash{'Customer Data'} = 'Kunden Daten';

    # Template: AgentForward
    $Hash{'Article type'} = 'Artikel-Typ';
    $Hash{'Date'} = 'Datum';
    $Hash{'End forwarded message'} = '';
    $Hash{'Forward article of ticket'} = 'Weiterleitung des Artikels vom Ticket';
    $Hash{'Forwarded message from'} = '';
    $Hash{'Reply-To'} = '';

    # Template: AgentHistoryForm
    $Hash{'History of'} = 'History von';

    # Template: AgentMailboxTicket
    $Hash{'Add Note'} = 'Notiz anheften';
    $Hash{'CustomerID'} = 'Kunden#';

    # Template: AgentNavigationBar
    $Hash{'FAQ'} = '';
    $Hash{'Locked tickets'} = 'Eigene Tickets';
    $Hash{'new message'} = 'neue Nachricht';
    $Hash{'PhoneView'} = 'Telefon-Ansicht';
    $Hash{'Preferences'} = 'Einstellungen';
    $Hash{'Utilities'} = 'Werkzeuge';

    # Template: AgentNote
    $Hash{'Add note to ticket'} = 'Anheften einer Notiz an Ticket';
    $Hash{'Note!'} = 'Notiz!';

    # Template: AgentOwner
    $Hash{'Change owner of ticket'} = '�ndern Eigners von Ticket';
    $Hash{'Message for new Owner'} = 'Nachricht an neuen Eigner';
    $Hash{'New user'} = 'Neuer Eigner';

    # Template: AgentPhone
    $Hash{'Customer called'} = 'Kunden angerufen';
    $Hash{'Phone call'} = 'Angrufa';
    $Hash{'Phone call at %s'} = 'Angrufa um %s';

    # Template: AgentPhoneNew
    $Hash{'new ticket'} = 'Neis Ticket';

    # Template: AgentPlain
    $Hash{'ArticleID'} = '';
    $Hash{'Plain'} = '';
    $Hash{'TicketID'} = '';

    # Template: AgentPreferencesCustomQueue
    $Hash{'Select your custom queues'} = 'Bevorzugte Queues ausw�hlen';

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
    $Hash{'Change Password'} = 'Passwort �ndern';
    $Hash{'New password'} = 'Neis Passwort';
    $Hash{'New password again'} = 'Neis Passwort wiederholen';

    # Template: AgentPriority
    $Hash{'Change priority of ticket'} = 'Priorit�t �ndern f�r Ticket';
    $Hash{'New state'} = 'Neue Priorit�t';

    # Template: AgentSpelling
    $Hash{'Apply these changes'} = '�nderungen �bernehmen';
    $Hash{'Discard all changes and return to the compose screen'} = 'Verwerfen aller �nderungen und zur�ck zum Verfassen-Fenster';
    $Hash{'Return to the compose screen'} = 'Zur�ck zum Verfassen-Fenster';
    $Hash{'Spell Checker'} = 'Rechtschreibkontrolle';
    $Hash{'spelling error(s)'} = 'Rechtschreibfehler';
    $Hash{'The message being composed has been closed.  Exiting.'} = 'Die erstellte Nachricht wurde geschlossen.';
    $Hash{'This window must be called from compose window'} = 'Dieses Fenster muss �ber das Verfassen-Fenster aufgerufen werden';

    # Template: AgentStatusView
    $Hash{'D'} = '';
    $Hash{'sort downward'} = 'Sortierung abw�rts';
    $Hash{'sort upward'} = 'Sortierung aufw�rts';
    $Hash{'Ticket limit:'} = '';
    $Hash{'Ticket Status'} = '';
    $Hash{'U'} = '';

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
    $Hash{'Ticket locked!'} = 'Ticket gesperrt!';
    $Hash{'unlock'} = 'freigeben';

    # Template: AgentUtilSearchByCustomerID
    $Hash{'Customer history search'} = 'Kunden-History-Suche';
    $Hash{'Customer history search (e. g. "ID342425").'} = 'Kunden History Suche (z. B. "ID342425").';
    $Hash{'No * possible!'} = 'Kein * m�glich!';

    # Template: AgentUtilSearchByText
    $Hash{'Article free text'} = 'Artikel frei Text';
    $Hash{'Fulltext search'} = 'Volltext-Suche';
    $Hash{'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")'} = 'Volltextsuche (z. B. "Mar*in" oder "Baue*" oder "martin+hallo")';
    $Hash{'Search in'} = 'Suche in';
    $Hash{'Ticket free text'} = 'Ticket frei Text';

    # Template: AgentUtilSearchByTicketNumber
    $Hash{'search'} = 'Sucha';
    $Hash{'search (e. g. 10*5155 or 105658*)'} = 'Suche (z. B. 10*5155 or 105658*)';

    # Template: AgentUtilSearchNavBar
    $Hash{'Results'} = 'Ergebnis';
    $Hash{'Site'} = 'Seite';
    $Hash{'Total hits'} = 'Treffa gesamt';

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
    $Hash{'All open tickets'} = 'Alle offenen Tickets';
    $Hash{'open tickets'} = 'offene Tickets';
    $Hash{'Provides an overview of all'} = 'Bietet eine �bersicht von allen';
    $Hash{'So you see what is going on in your system.'} = 'Somit k�nnen Sie sehen, was in Ihrem System vorgeht.';

    # Template: CustomerCreateAccount
    $Hash{'Create'} = 'Erstellen';
    $Hash{'Create Account'} = 'Account erstellen';

    # Template: CustomerError
    $Hash{'Backend'} = '';
    $Hash{'BackendMessage'} = 'Backend-Nachricht';
    $Hash{'Click here to report a bug!'} = 'Klicken Sie Do um einen Fehla zu berichten!';
    $Hash{'Handle'} = '';

    # Template: CustomerFooter
    $Hash{'Powered by'} = '';

    # Template: CustomerHeader
    $Hash{'Contact'} = 'Kontakt';
    $Hash{'Home'} = '';
    $Hash{'Online-Support'} = '';
    $Hash{'Products'} = 'Produkt';
    $Hash{'Support'} = '';

    # Template: CustomerLogin

    # Template: CustomerLostPassword
    $Hash{'Lost your password?'} = 'Passwort verschmissn?';
    $Hash{'Request new password'} = 'Neis Passwort beantragen';

    # Template: CustomerMessage
    $Hash{'Follow up'} = '';

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
    $Hash{'Create new Ticket'} = 'Neis Ticket erstellen';
    $Hash{'My Tickets'} = 'Meine Tickets';
    $Hash{'New Ticket'} = 'Neis Ticket';
    $Hash{'Ticket-Overview'} = 'Ticket-�bersicht';
    $Hash{'Welcome %s'} = 'Willkommen %s';

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView
    $Hash{'of'} = 'von';

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom
    $Hash{'Accounted time'} = 'Zugewiesene Zeit';

    # Template: CustomerWarning

    # Template: Error

    # Template: Footer

    # Template: Header

    # Template: InstallerStart
    $Hash{'next step'} = 'N�chster Schritt';

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
    $Hash{'No Permission'} = 'koane Erlaubnis';

    # Template: Notify
    $Hash{'Info'} = '';

    # Template: QueueView
    $Hash{'All tickets'} = 'Alle Tickets';
    $Hash{'Queues'} = 'Queues';
    $Hash{'Show all'} = 'Alle gezeigt';
    $Hash{'Ticket available'} = 'Ticket verf�gbar';
    $Hash{'tickets'} = 'Tickets';
    $Hash{'Tickets shown'} = 'Tickets gezeigt';

    # Template: SystemStats
    $Hash{'Graphs'} = 'Diagramme';
    $Hash{'Tickets'} = '';

    # Template: Test
    $Hash{'OTRS Test Page'} = 'OTRS Test Seite';

    # Template: TicketEscalation
    $Hash{'Ticket escalation!'} = 'Ticket Eskalation!';

    # Template: TicketView
    $Hash{'Change queue'} = 'Wechsle Queue';
    $Hash{'Compose Answer'} = 'Antwort erstellen';
    $Hash{'Contact customer'} = 'Kunden kontaktieren';
    $Hash{'phone call'} = 'Angrufaen';
    $Hash{'Time till escalation'} = 'Zeit bis zur Escalation';

    # Template: TicketViewLite

    # Template: TicketZoom

    # Template: TicketZoomNote

    # Template: TicketZoomSystem

    # Template: Warning

    # Misc
    $Hash{'(Click here to add a group)'} = '(Hier klicken - Gruppe hinzuf�gen)';
    $Hash{'(Click here to add a queue)'} = '(Hier klicken - Queue hinzuf�gen)';
    $Hash{'(Click here to add a response)'} = '(Hier klicken - Antwort hinzuf�gen)';
    $Hash{'(Click here to add a salutation)'} = '(Hier klicken - Anrede hinzuf�gen)';
    $Hash{'(Click here to add a signature)'} = '(Hier klicken - Signatur hinzuf�gen)';
    $Hash{'(Click here to add a system email address)'} = '(Hier klicken - System-Email-Adresse hinzuf�gen)';
    $Hash{'(Click here to add a user)'} = '(Hier klicken - Benutzer hinzuf�gen)';
    $Hash{'(Click here to add an auto response)'} = '(Hier klicken - Auto-Antwort hinzuf�gen)';
    $Hash{'(Click here to add charset)'} = '(Hier klicken - Charset hinzuf�gen';
    $Hash{'(Click here to add language)'} = '(Hier klicken - Sprache hinzuf�gen)';
    $Hash{'(Click here to add state)'} = '(Hier klicken - state hinzuf�gen)';
    $Hash{'A message should have a From: recipient!'} = 'Eine Nachricht sollte einen Absender im Von: haben!';
    $Hash{'CustomerUser'} = 'Kunden-Benutzer';
    $Hash{'New ticket via call.'} = 'Neis Ticket durch Angrufa.';
    $Hash{'Update auto response'} = 'Auto-Antwort aktualisieren';
    $Hash{'Update charset'} = 'Charset aktualisieren';
    $Hash{'Update group'} = 'Gruppe aktualisieren';
    $Hash{'Update language'} = 'Sprache aktualisieren';
    $Hash{'Update queue'} = 'Queue aktualisieren';
    $Hash{'Update response'} = 'Antworten aktualisieren';
    $Hash{'Update salutation'} = 'Anrede aktualisieren';
    $Hash{'Update signature'} = 'Signatur aktualisieren';
    $Hash{'Update state'} = 'State aktualisieren';
    $Hash{'Update system address'} = 'System-Email-Adresse aktualisieren';
    $Hash{'Update user'} = 'Benutzer aktualisieren';
    $Hash{'You have to be in the admin group!'} = 'Sie m�ssen hierf�r in der Admin-Gruppe sein!';
    $Hash{'You have to be in the stats group!'} = 'Sie m�ssen hierf�r in der Statistik-Gruppe sein!';
    $Hash{'You need a email address (e. g. customer@example.com) in From:!'} = 'Im From-Feld wird eine eMail-Adresse (z. B. kunde@beispiel.de) ben�tigt!';
    $Hash{'auto responses set'} = 'Auto-Antworten gesetzt';

    # $$STOP$$

    $Self->{Translation} = \%Hash;
}
# --
1;
