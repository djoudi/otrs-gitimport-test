# --
# Kernel/Language/Bavarian.pm - provides german-bavafian languag (slang) translation
# Copyright (C) 2001-2002 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Bavarian.pm,v 1.2 2002-07-18 23:35:01 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::Bavarian;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # --
    # some common words
    # --
    $Self->{Lock} = 'Ziehen';
    $Self->{Unlock} = 'Freigeben';
    $Self->{unlock} = 'freigeben';
    $Self->{Zoom} = 'Inhalt';
    $Self->{History} = 'History';
    $Self->{'Add Note'} = 'Notiz anheften';
    $Self->{Bounce} = 'Bounce';
    $Self->{Age} = 'Alter';
    $Self->{Priority} = 'Priorit�t';
    $Self->{State} = 'Status';
    $Self->{From} = 'Vom';
    $Self->{To} = 'An';
    $Self->{Cc} = 'Cc';
    $Self->{Subject} = 'Betreff';
    $Self->{Move} = 'Verschieben';
    $Self->{Queues} = 'Queues';
    $Self->{Close} = 'Schlie�en';
    $Self->{Compose} = 'schreim';
    $Self->{Pending} = 'Warten';
    $Self->{end} = 'runter';
    $Self->{top} = 'Anfang';
    $Self->{day} = 'Tag';
    $Self->{days} = 'Tage';
    $Self->{hour} = 'Stunde';
    $Self->{hours} = 'Stunden';
    $Self->{minute} = 'Minute';
    $Self->{minutes} = 'Minuten';
    $Self->{Owner} = 'Besitzer';
    $Self->{Sender} = 'Sender';
    $Self->{Article} = 'Artikel';
    $Self->{Ticket} = 'Ticket';
    $Self->{Createtime} = 'gschrim am';
    $Self->{Created} = 'gschrim';
    $Self->{View} = 'Ansicht';
    $Self->{plain} = 'klar';
    $Self->{Plain} = 'Ungemustert';
    $Self->{Action} = 'Aktion';
    $Self->{Attachment} = 'Anlage';
    $Self->{User} = 'Benutzer';
    $Self->{Username} = 'Benutzername';
    $Self->{Password} = 'Passwort';
    $Self->{Back} = 'zur�ck';
    $Self->{store} = 'speichern';
    $Self->{phone} = 'Telefon';
    $Self->{Phone} = 'Telefon';
    $Self->{email} = 'eMail';
    $Self->{Email} = 'eMail';
    $Self->{'Language'} = 'Sprache';
    $Self->{'Languages'} = 'Sprachen';
    $Self->{'Salutation'} = 'Anrede';
    $Self->{'Signature'} = 'Signatur';
    $Self->{currently} = 'im Moment';
    $Self->{Customer} = 'Kunde';
    $Self->{'Customer info'} = 'Kundn Info';
    $Self->{'Set customer id of a ticket'} = 'Setze eine Kundn# zu einem Ticket';
    $Self->{'All tickets of this customer'} = 'Alle Tickets dieses Kundn';
    $Self->{'New CustomerID'} = 'Neue Kundnnummer';
    $Self->{'for ticket'} = 'f�r Ticket';
    $Self->{'new ticket'} = 'Neis Ticket';
    $Self->{'weider work'} = 'weider Arbeit';
    $Self->{'Stop work'} = 'Stop Arbeit';
    $Self->{'CustomerID'} = 'Kundn#';
    $Self->{'Compose Answer'} = 'Antwort schreim';
    $Self->{'Contact customer'} = 'Kundn kontaktieren';
    $Self->{'Change queue'} = 'Wechsle Queue';
    $Self->{'go!'} = 'weider!';
    $Self->{'go'} = 'weider';
    $Self->{'all'} = 'alle';
    $Self->{'All'} = 'All';
    $Self->{'Sorry'} = 'Bedauere';
    $Self->{'No'} = 'Na';
    $Self->{'no'} = 'kein';
    $Self->{'Yes'} = 'Ja';
    $Self->{'yes'} = 'ja';
    $Self->{'Off'} = 'Aus';
    $Self->{'off'} = 'aus';
    $Self->{'On'} = 'Ein';
    $Self->{'on'} = 'ein';
    $Self->{'update!'} = 'basst scho!';
    $Self->{'update'} = 'basst scho';
    $Self->{'submit!'} = '�bermitteln!';
    $Self->{'change!'} = '�ndern!';
    $Self->{'change'} = '�ndern';
    $Self->{'Change'} = '�ndern';
    $Self->{'click here'} = 'klick hier';
    $Self->{'settings'} = 'Einstellungen';
    $Self->{'Settings'} = 'Einstellungen';
    $Self->{'Comment'} = 'Kommentar';
    $Self->{'Valid'} = 'G�ltig';
    $Self->{'Forward'} = 'Weidaleiten';
    $Self->{'Name'} = 'Name';
    $Self->{'Group'} = 'Gruppe';
    $Self->{'Response'} = 'Antwort';
    $Self->{'Preferences'} = 'Einstellungen';
    $Self->{'Description'} = 'Beschreibung';
    $Self->{'description'} = 'Beschreibung';
    $Self->{'Key'} = 'Schl�ssel';
    $Self->{'top'} = 'hou';
    $Self->{'Line'} = 'Zeile';
    $Self->{'Subfunction'} = 'Unterfunktion';
    $Self->{'Module'} = 'Modul';
    $Self->{'Modulefile'} = 'Moduldatei';
    $Self->{'No Permission'} = 'Keine Erlaubnis';
    $Self->{'You have to be in the admin group!'} = 'Sie m�ssen hierf�r in der Admin-Gruppe sein!';
    $Self->{'You have to be in the stats group!'} = 'Sie m�ssen hierf�r in der Statistik-Gruppe sein!';
    $Self->{'Message'} = 'Nachricht';
    $Self->{'Error'} = 'Fehler';
    $Self->{'Bug Report'} = 'Fehler berichten';
    $Self->{'Click here to report a bug!'} = 'Klicken Sie hier um einen Fehler zu berichten!';
    $Self->{'This is a HTML email. Click here to show it.'} = 'Dies ist eine HTML eMail. Hier klicken um sie anzusehen.';
    $Self->{'AgentFrontend'} = 'AgentOberfl�che';
    $Self->{'Attention'} = 'Achtung';
    $Self->{'Time till escalation'} = 'Zeit bis zur Escalation';
    $Self->{'Groups'} = 'Gruppen';
    $Self->{'User'} = 'Benutzer';
    $Self->{'none!'} = 'keine Angabe!';
    $Self->{'none'} = 'keine';
    $Self->{'none - answered'} = 'keine - beantwortet';
    $Self->{'German'} = 'Deutsch';
    $Self->{'English'} = 'Englisch';
    $Self->{'French'} = 'Franz�sisch';
    $Self->{'French'} = 'Franz�sisch';
    $Self->{'Chinese'} = 'Chinesisch';
    $Self->{'Czech'} = 'Tschechisch';
    $Self->{'Danish'} = 'D�nisch';
    $Self->{'Spanish'} = 'Spanisch';
    $Self->{'Greek'} = 'Griechisch';
    $Self->{'Italian'} = 'Italienisch';
    $Self->{'Korean'} = 'Koreanisch';
    $Self->{'Dutch'} = 'Niederl�ndisch';
    $Self->{'Polish'} = 'Polnisch';
    $Self->{'Brazilian'} = 'Brasilianisch';
    $Self->{'Russian'} = 'Russisch';
    $Self->{'Swedish'} = 'Schwedisch';
    $Self->{'Lite'} = 'Einfach';
    $Self->{'This message was written in a character set other than your own.'} = 
     'Dei Nachricht wurde in einem Zeichensatz gschrim, der nicht Deim eigenen entspricht.';
    $Self->{'If it is not displayed correctly,'} = 'Wenn sie nicht korrekt angoagt wird,';
    $Self->{'This is a'} = 'Dies ist eine';
    $Self->{'to open it in a new window.'} = 'um sie in einem neuen Fenster angoagt zu bekommen';
    # --
    # admin interface
    # --
    # common adminwords
    $Self->{'Useable options'} = 'Benutzbare Optionen';
    $Self->{'Example'} = 'Beispiel';
    $Self->{'Examples'} = 'Beispiele';
    # nav bar
    $Self->{'Admin Area'} = 'Adminbereich';
    $Self->{'Auto Responses'} = 'Auto-Antworten'; 
    $Self->{'Responses'} = 'Antworten';
    $Self->{'Responses <-> Queue'} = 'Antworten <-> Queues';
    $Self->{'Queue <-> Auto Response'} = 'Queues <-> Auto-Antworten';
    $Self->{'Session Management'} = 'Sitzungs Verwaltung';
    $Self->{'Email Addresses'} = 'Email-Adressen';
    # user
    $Self->{'User Management'} = 'Benutzer Verwaltung';
    $Self->{'Change user settings'} = '�ndern der Benutzereinstellung';
    $Self->{'Add user'} = 'Benutzer hinzuf�gen';
    $Self->{'Update user'} = 'Benutzer basst scho';
    $Self->{'Firstname'} = 'Vorname';
    $Self->{'Lastname'} = 'Nachname';
    $Self->{'(Click here to add a user)'} = '(Hier klicken - Benutzer hinzuf�gen)';
    $Self->{'User will be needed to handle tickets.'} = 'Benutzer werden ben�tigt um Tickets zu bearbeietn.';
    $Self->{'Don\'t forget to add a new user to groups!'} = 'Eine neuer Benutzer muss auch einer Gruppe zugewiesen werden!';
    # group
    $Self->{'Group Management'} = 'Gruppen Verwaltung';
    $Self->{'Change group settings'} = '�ndern einer Gruppe';
    $Self->{'Add group'} = 'Gruppe hinzuf�gen';
    $Self->{'Update group'} = 'Gruppe basst scho';
    $Self->{'(Click here to add a group)'} = '(Hier klicken - Gruppe hinzuf�gen)';
    $Self->{'The admin group is to get in the admin area and the stats group to get stats area.'} =
     'Die admin Gruppe wird f�r den Admin-Bereich ben�tigt, die stats Gruppe f�r den Statistik-Bereich.';
    $Self->{'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).'} =
     'Erstelle neue Gruppen um die Zugriffe f�r verschieden Agent-Gruppen zu definieren (z. B. Einkaufs-Abteilung, Support-Abteilung, Verkaufs-Abteilung, ...).';
    $Self->{'It\'s useful for ASP solutions.'} = 'gscheid n�tzlich f�r ASP-L�sungen.';
    # user <-> group
    $Self->{'User <-> Group Management'} = 'Benutzer <-> Gruppe Verwaltung';
    $Self->{'Change user <-> group settings'} = '�ndern der Benutzer <-> Gruppe Beziehung';
    # queue
    $Self->{'Queue Management'} = 'Queue Verwaltung';
    $Self->{'Add queue'} = 'Queue hinzuf�gen';
    $Self->{'Change queue settings'} = '�ndern einer Queue';
    $Self->{'Update queue'} = 'Queue basst scho';
    $Self->{'(Click here to add a queue)'} = '(Hier klicken - Queue hinzuf�gen)';
    $Self->{'Unlock timeout'} = 'Freigabe Zeit�berschreitung';
    $Self->{'Escalation time'} = 'Eskalationszeit';
    # Response
    $Self->{'Response Management'} = 'Antworten Verwaltung';
    $Self->{'Add response'} = 'Antwort hinzuf�gen';
    $Self->{'Change response settings'} = '�ndern einer Antwort';
    $Self->{'Update response'} = 'Antworten basst scho';
    $Self->{'(Click here to add a response)'} = '(Hier klicken - Antwort hinzuf�gen)'; 
    $Self->{'A response is default text to write faster answer (with default text) to customers.'} =
     'Eine Antwort ist ein vorgegebener Text um schneller Antworten an Kundern schreiben zu k�nnen.';
    $Self->{'Don\'t forget to add a new response a queue!'} = 'Eine neue Antwort muss auch einer Queue zugewiesen werden!';
    # Responses <-> Queue
    $Self->{'Std. Responses <-> Queue Management'} = 'Std. Antworten <-> Queue Verwaltung';
    $Self->{'Standart Responses'} = 'Standard-Antworten';
    $Self->{'Change answer <-> queue settings'} = '�ndern der Antworten <-> Queue Beziehung';
    # auto responses
    $Self->{'Auto Response Management'} = 'Auto-Antworten Verwaltung';
    $Self->{'Change auto response settings'} = '�ndern einer Auto-Antworten';
    $Self->{'Add auto response'} = 'Auto-Antwort hinzuf�gen';
    $Self->{'Update auto response'} = 'Auto-Antwort basst scho';
    $Self->{'(Click here to add an auto response)'} = '(Hier klicken - Auto-Antwort hinzuf�gen)';
    # salutation
    $Self->{'Salutation Management'} = 'Anreden Verwaltung';
    $Self->{'Add salutation'} = 'Anrede hinzuf�gen';
    $Self->{'Update salutation'} = 'Anrede basst scho';
    $Self->{'Change salutation settings'} = '�ndern einer Anrede';
    $Self->{'(Click here to add a salutation)'} = '(Hier klicken - Anrede hinzuf�gen)';
    $Self->{'customer realname'} = 'echter Kundnname';
    # signature
    $Self->{'Signature Management'} = 'Signatur Verwaltung';
    $Self->{'Add signature'} = 'Signatur hinzuf�gen';
    $Self->{'Update signature'} = 'Signatur basst scho';
    $Self->{'Change signature settings'} = '�ndern einer Signatur';
    $Self->{'(Click here to add a signature)'} = '(Hier klicken - Signatur hinzuf�gen)';
    $Self->{'for agent firstname'} = 'f�r Vorname des Agents';
    $Self->{'for agent lastname'} = 'f�r Nachname des Agents';
    # queue <-> auto response
    $Self->{'Queue <-> Auto Response Management'} = 'Queue <-> Auto-Antworten Verwaltung';
    $Self->{'auto responses set'} = 'Auto-Antworten gesetzt';
    # system email addesses
    $Self->{'System Email Addresses Management'} = 'System-Email-Adressen Verwaltung';
    $Self->{'Change system address setting'} = '�ndere System-Adresse';
    $Self->{'Add system address'} = 'System-Email-Adresse hinzuf�gen';
    $Self->{'Update system address'} = 'System-Email-Adresse basst scho';
    $Self->{'(Click here to add a system email address)'} = '(Hier klicken - System-Email-Adresse hinzuf�gen)';
    $Self->{'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!'} = 'Alle eingehenden Emails mit dem "To:" werden in die ausgew�hlte Queue einsortiert.';
    # charsets
    $Self->{'System Charset Management'} = 'System-Charset Verwaltung';
    $Self->{'Change system charset setting'} = '�ndere System-Charset';
    $Self->{'Add charset'} = 'Charset hinzuf�gen';
    $Self->{'Update charset'} = 'Charset basst scho';
    $Self->{'(Click here to add charset)'} = '(Hier klicken - Charset hinzuf�gen';
    # states
    $Self->{'System State Management'} = 'System-State Verwaltung';
    $Self->{'Change system state setting'} = '�ndere System-State';
    $Self->{'Add state'} = 'State hinzuf�gen';
    $Self->{'Update state'} = 'State basst scho';
    $Self->{'(Click here to add state)'} = '(Hier klicken - state hinzuf�gen)';
    # language
    $Self->{'System Language Management'} = 'System-Sprache Verwaltung';
    $Self->{'Change system language setting'} = '�ndere System-Sprache';
    $Self->{'Add language'} = 'Sprache hinzuf�gen';
    $Self->{'Update language'} = 'Sprache basst scho';
    $Self->{'(Click here to add language)'} = '(Hier klicken - Sprache hinzuf�gen)';
    # session
    $Self->{'Session Management'} = 'Sitzungs Verwaltung';
    $Self->{'kill all sessions'} = 'L�schen alles Sitzungen';
    $Self->{'kill session'} = 'Sitzung l�schen';
    # select box
    $Self->{'Max Rows'} = 'Max. Zeile';

    # --
    # agent interface
    # --
    # nav bar
    $Self->{Logout} = 'Abmelden';
    $Self->{QueueView} = 'Queue-Ansicht';
    $Self->{PhoneView} = 'Telefon-Ansicht';
    $Self->{Utilities} = 'Werkzeige';
    $Self->{AdminArea} = 'AdminBereich';
    $Self->{Preferences} = 'Einstellungen';
    $Self->{'Locked tickets'} = 'Eigene Tickets';
    $Self->{'new message'} = 'neue Nachricht';
    # ticket history
    $Self->{'History of Ticket'} = 'History Vom Ticket';
    # ticket note
    $Self->{'Add note to ticket'} = 'Anheften einer Notiz an Ticket';
    $Self->{'Note type'} = 'Notiz-Typ';
    # queue view
    $Self->{'Tickets shown'} = 'Tickets goagt';
    $Self->{'Ticket available'} = 'Ticket verf�gbar';
    $Self->{'Show all'} = 'Alle goagt';
    $Self->{'tickets'} = 'Tickets';
    $Self->{'All tickets'} = 'Alle Tickets';
    $Self->{'Ticket escalation!'} = 'Ticket Eskalation!';
    $Self->{'Please answer this ticket(s) to get back to the normal queue view!'} = 
     'Bitte eskalierte Tickets beantworten um in die normale Queue-Ansicht zur�ck zu kommen!';
    # locked tickets
    $Self->{'All locked Tickets'} = 'Eigene Tickets';
    $Self->{'New message'} = 'Neue Nachricht';
    $Self->{'New message!'} = 'Neue Nachricht!';
    # util
    $Self->{'Hit'} = 'Treffer';
    $Self->{'Total hits'} = 'Treffer gesamt';
    $Self->{'search'} = 'suachan';
    $Self->{'Search again'} = 'Nochmal suachan';
    $Self->{'max viewable hits'} = 'max. Treffer sichtbar';
    $Self->{'Utilities/Search'} = 'Werkzeig/suacha';
    $Self->{'search (e. g. 10*5155 or 105658*)'} = 'suacha (z. B. 10*5155 or 105658*)';
    $Self->{'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")'} = 'Volltextsuacha (z. B. "Mar*in" oder "Baue*" oder "martin+hallo")';
    $Self->{'Customer history search'} = 'Kundn-History-suacha';
    $Self->{'No * possible!'} = 'Kein * m�glich!';
    $Self->{'Fulltext search'} = 'Volltext-suacha';
    $Self->{'Customer history search (e. g. "ID342425").'} = 'Kundn History suacha (z. B. "ID342425").';
    # compose
    $Self->{'Compose message'} = 'Nachricht schreim';
    $Self->{'please do not edit!'} = 'Bitte nicht ver�ndern!';
    $Self->{'Send mail!'} = 'Mail senden!';
    $Self->{'wrote'} = 'schrieb';
    $Self->{'Compose answer for ticket'} = 'Antwort schreim f�r';
    $Self->{'Ticket locked!'} = 'Ticket gesperrt!';
    $Self->{'A message should have a To: recipient!'} = 'Eine Nachricht sollte einen Empf�nger im An: haben!';
    $Self->{'A message should have a subject!'} = 'Eine Nachricht sollte ein Betreff haben!';
    $Self->{'You need a email address (e. g. customer@example.com) in To:!'} = 'Im An-Feld wird eine eMail-Adresse (z. B. kunde@beispiel.de) ben�tigt!';
    # forward
    $Self->{'Forward article of ticket'} = 'Weidaleitung des Artikels vom Ticket';
    $Self->{'Article type'} = 'Artikel-Typ';
    $Self->{'Next ticket state'} = 'N�chster Status des Tickets';

    # preferences
    $Self->{'User Preferences'} = 'Benutzereinstellungen';
    $Self->{'Change Password'} = 'Passwort �ndern';
    $Self->{'New password'} = 'Neis Passwort';
    $Self->{'New password again'} = 'Neis Passwort wiederholen';
    $Self->{'Select your custom queues'} = 'Bevorzugte Queues w�hln';
    $Self->{'Select your QueueView refresh time'} = 'Queue-Ansicht Aktualisierungszeit w�hln';
    $Self->{'Select your frontend language'} = 'Oberfl�chen-Sprache w�hln';
    $Self->{'Select your frontend Charset'} = 'Zeichensatz f�r Darstellung w�hln';
    $Self->{'Select your frontend theme'} = 'Anzeigeschema w�hln';
    $Self->{'Send follow up notification'} = 'Zusenden einer Mitteilung bei Nachfragen';
    $Self->{'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.'} = 'Zusenden einer Mitteilung wenn ein Kundn eine Nachfrage stellt uns ich der Eigner bin.';
    $Self->{'Send new ticket notification'} = 'Zusenden einer Mitteilung bei neuem Ticket';
    $Self->{'Send me a notification if there is a new ticket in my custom queues.'} = 'Zusenden einer Mitteilung bei neuem Ticket in der/den individuellen Queue(s).';
  
    $Self->{'Frontend language'} = 'Bedien-Sprache w�hln';
    $Self->{' 2 minutes'} = ' 2 Minuten';
    $Self->{' 5 minutes'} = ' 5 Minuten';
    $Self->{' 7 minutes'} = ' 7 Minuten';
    $Self->{'10 minutes'} = '10 Minuten';
    $Self->{'15 minutes'} = '15 Minuten';
    # change priority
    $Self->{'Change priority of ticket'} = 'Priorit�t �ndern f�r Ticket';
    # some other words ...
    $Self->{'AddLink'} = 'Link hinzuf�gen';
    $Self->{'Logout successful. Thank you for using OpenTRS!'} = 'Abmelden erfolgreich! Danke f�r die Benutzung Vom OpenTRS!';
#    $Self->{} = '';
#    $Self->{} = '';

    # stats
    $Self->{'Stats'} = 'Statistik';
    $Self->{'Status'} = 'Status';
    $Self->{'Graph'} = 'Diagramm';
    $Self->{'Graphs'} = 'Diagramme';

    # phone view
    $Self->{'Phone call'} = 'Anruf';
    $Self->{'phone call'} = 'Anrufen';
    $Self->{'Phone call at'} = 'Anruf um';

    # states
    $Self->{'new'} = 'neu';
    $Self->{'open'} = 'offen';
    $Self->{'closed succsessful'} = 'erfolgreich geschlossen';
    $Self->{'closed unsuccsessful'} = 'erfolglos geschlossen';
    $Self->{'removed'} = 'entfernt';
    # article types
    $Self->{'email-external'} = 'Email an extern';
    $Self->{'email-internal'} = 'Email an intern';
    $Self->{'note-internal'} = 'Notiz f�r intern';
    $Self->{'note-external'} = 'Notiz f�r extern';
    $Self->{'note-report'} = 'Notiz f�r reporting';

    # priority
    $Self->{'very low'} = 'gscheid niedrig';
    $Self->{'low'} = 'niedrig';
    $Self->{'normal'} = 'normal';
    $Self->{'high'} = 'hou';
    $Self->{'very high'} = 'gscheid hou';

    return;
}
# --

1;

