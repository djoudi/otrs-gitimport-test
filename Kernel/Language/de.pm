# --
# Kernel/Language/de.pm - provides de language translation
# Copyright (C) 2001-2005 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: de.pm,v 1.80 2005-06-22 05:01:16 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::de;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.80 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Fri Jun 10 22:57:40 2005

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => 'Ja',
      'No' => 'Nein',
      'yes' => 'ja',
      'no' => 'kein',
      'Off' => 'Aus',
      'off' => 'aus',
      'On' => 'Ein',
      'on' => 'ein',
      'top' => 'hoch',
      'end' => 'runter',
      'Done' => 'Fertig',
      'Cancel' => 'Abbrechen',
      'Reset' => 'R�cksetzen',
      'day' => 'Tag',
      'days' => 'Tage',
      'hour' => 'Stunde',
      'hours' => 'Stunden',
      'minute' => 'Minute',
      'minutes' => 'Minuten',
      'wrote' => 'schrieb',
      'Message' => 'Nachricht',
      'Error' => 'Fehler',
      'Bug Report' => 'Fehler berichten',
      'Attention' => 'Achtung',
      'Warning' => 'Warnung',
      'Module' => 'Modul',
      'Modulefile' => 'Moduldatei',
      'Subfunction' => 'Unterfunktion',
      'Line' => 'Zeile',
      'Example' => 'Beispiel',
      'Examples' => 'Beispiele',
      'invalid' => 'ung�ltig',
      ' 2 minutes' => ' 2 Minuten',
      ' 5 minutes' => ' 5 Minuten',
      ' 7 minutes' => ' 7 Minuten',
      '10 minutes' => '10 Minuten',
      '15 minutes' => '15 Minuten',
      'Mr.' => 'Herr',
      'Mrs.' => 'Frau',
      'Next' => 'Weiter',
      'Back' => 'Zur�ck',
      'Next...' => 'Weiter...',
      '...Back' => '...Zur�ck',
      '-none-' => '-keine-',
      'none' => 'keine',
      'none!' => 'keine Angabe!',
      'none - answered' => 'keine - beantwortet',
      'please do not edit!' => 'Bitte nicht �ndern!',
      'AddLink' => 'Link hinzuf�gen',
      'Link' => 'Verkn�pfen',
      'Linked' => 'Verkn�pft',
      'Link (Normal)' => 'Verkn�pft (Normal)',
      'Link (Parent)' => 'Verkn�pft (Eltern)',
      'Link (Child)' => 'Verkn�pft (Kinder)',
      'Normal' => '',
      'Parent' => 'Eltern',
      'Child' => 'Kinder',
      'Hit' => 'Treffer',
      'Hits' => 'Treffer',
      'Text' => '',
      'Lite' => 'Einfach',
      'User' => 'Benutzer',
      'Username' => 'Benutzername',
      'Language' => 'Sprache',
      'Languages' => 'Sprachen',
      'Password' => 'Passwort',
      'Salutation' => 'Anrede',
      'Signature' => 'Signatur',
      'Customer' => 'Kunde',
      'CustomerID' => 'Kunden#',
      'CustomerIDs' => 'Kunden-Nummern',
      'customer' => 'Kunde',
      'agent' => 'Agent',
      'system' => 'System',
      'Customer Info' => 'Kunden-Info',
      'go!' => 'Start!',
      'go' => 'Start',
      'All' => 'Alle',
      'all' => 'alle',
      'Sorry' => 'Bedauere',
      'update!' => 'Aktualisieren!',
      'update' => 'Aktualisieren',
      'Update' => 'Aktualisieren',
      'submit!' => '�bermitteln!',
      'submit' => '�bermitteln',
      'Submit' => '�bermitteln',
      'change!' => '�ndern!',
      'Change' => '�ndern',
      'change' => '�ndern',
      'click here' => 'hier klicken',
      'Comment' => 'Kommentar',
      'Valid' => 'G�ltig',
      'Name' => '',
      'Group' => 'Gruppe',
      'Description' => 'Beschreibung',
      'description' => 'Beschreibung',
      'Theme' => 'Schema',
      'Created' => 'Erstellt',
      'Created by' => 'Erstellt von',
      'Changed' => 'Ge�ndert',
      'Changed by' => 'Ge�ndert von',
      'Search' => 'Suche',
      'and' => 'und',
      'between' => 'zwischen',
      'Fulltext Search' => 'Volltextsuche',
      'Data' => 'Daten',
      'Options' => 'Optionen',
      'Title' => 'Titel',
      'Item' => 'Punkt',
      'Delete' => 'L�schen',
      'Edit' => 'Bearbeiten',
      'View' => 'Ansehen',
      'Number' => 'Nummer',
      'System' => '',
      'Contact' => 'Kontakt',
      'Contacts' => 'Kontakte',
      'Export' => '',
      'Up' => 'Auf',
      'Down' => 'Ab',
      'Add' => 'Hinzuf�gen',
      'Category' => 'Kategorie',
      'New message' => 'Neue Nachricht',
      'New message!' => 'Neue Nachricht!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Bitte beantworten Sie dieses Ticket, um in die normale Queue-Ansicht zur�ck zu kommen!',
      'You got new message!' => 'Sie haben eine neue Nachricht bekommen!',
      'You have %s new message(s)!' => 'Sie haben %s neue Nachricht(en) bekommen!',
      'You have %s reminder ticket(s)!' => 'Sie haben %s Erinnerungs-Ticket(s)!',
      'The recommended charset for your language is %s!' => 'Der empfohlene Zeichensatz f�r Ihre Sprache ist %s!',
      'Passwords dosn\'t match! Please try it again!' => 'Passw�rter stimme nicht �berein! Bitte wiederholen!',
      'Password is already in use! Please use an other password!' => 'Dieses Password wird bereits benutzt, es kann nicht verwendet werden!',
      'Password is already used! Please use an other password!' => 'Dieses Password wurde bereits benutzt, es kann nicht verwendet werden!',
      'No suggestions' => 'Keine Vorschl�ge',
      'Word' => 'Wort',
      'Ignore' => 'Ignorieren',
      'replace with' => 'ersetzen mit',
      'Welcome to OTRS' => 'Willkommen zu OTRS',
      'There is no account with that login name.' => 'Es existiert kein Benutzerkonto mit diesem Namen.',
      'Login failed! Your username or password was entered incorrectly.' => 'Anmeldung fehlgeschlagen! Benutzername oder Passwort falsch.',
      'Please contact your admin' => 'Bitte kontaktieren Sie Ihren Administrator',
      'Logout successful. Thank you for using OTRS!' => 'Abmeldung erfolgreich! Danke f�r die Benutzung von  OTRS!',
      'Invalid SessionID!' => 'Ung�ltige SessionID!',
      'Feature not active!' => 'Funktion nicht aktiviert!',
      'Take this Customer' => 'Kunden �bernehmen',
      'Take this User' => 'Benutzer �bernehmen',
      'possible' => 'm�glich',
      'reject' => 'ablehnen',
      'Facility' => 'Einrichtung',
      'Timeover' => 'Zeit�berschreitung',
      'Pending till' => 'Warten bis',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Bitte nicht mit UserID 1 (System Account) arbeiten! Erstelle neue Benutzer!',
      'Dispatching by email To: field.' => 'Verteilung nach To: Feld.',
      'Dispatching by selected Queue.' => 'Verteilung nach ausgew�hlter Queue.',
      'No entry found!' => 'Kein Eintrag gefunden!',
      'Session has timed out. Please log in again.' => 'Zeit�berschreitung der Session. Bitte neu anmelden.',
      'No Permission!' => 'Keine Zugriffsrechte!',
      'To: (%s) replaced with database email!' => 'An: (%s) ersetzt mit Datenbank E-Mail!',
      'Cc: (%s) added database email!' => 'Cc: (%s) Datenbank E-Mail hinzugef�gt!',
      '(Click here to add)' => '(Hier klicken um hinzuzuf�gen)',
      'last' => 'letzten',
      'before' => 'vor',
      'day(s)' => 'Tag(e)',
      'month(s)' => 'Monat(e)',
      'week(s)' => 'Woche(n)',
      'year(s)' => 'Jahr(e)',
      'Preview' => 'Vorschau',
      'Added User "%s"' => 'Benutzer "%s" hinzugef�gt.',
      'Contract' => 'Vertrag',
      'Online Customer: %s' => 'Online Kunde: %s',
      'Online Agent: %s' => '',
      'Calendar' => 'Kalender',
      'File' => 'Datei',
      'Filename' => 'Dateiname',
      'Type' => 'Typ',
      'Size' => 'Gr��e',
      'Upload' => 'Hinaufladen',
      'Directory' => 'Verzeichnis',
      'Signed' => 'Signiert',
      'Sign' => 'Signieren',
      'Crypted' => 'Verschl�sselt',
      'Crypt' => 'Verschl�sseln',

      # Template: AAAMonth
      'Jan' => '',
      'Feb' => '',
      'Mar' => 'M�r',
      'Apr' => '',
      'May' => 'Mai',
      'Jun' => '',
      'Jul' => '',
      'Aug' => '',
      'Sep' => '',
      'Oct' => 'Okt',
      'Nov' => '',
      'Dec' => 'Dez',

      # Template: AAANavBar
      'Admin-Area' => 'Admin-Bereich',
      'Agent-Area' => 'Agent-Bereich',
      'Ticket-Area' => 'Ticket-Bereich',
      'Logout' => 'Abmelden',
      'Agent Preferences' => 'Benutzer Einstellungen',
      'Preferences' => 'Einstellungen',
      'Agent Mailbox' => '',
      'Stats' => 'Statistik',
      'Stats-Area' => 'Statistik-Bereich',
      'FAQ-Area' => 'FAQ-Bereich',
      'FAQ' => '',
      'FAQ-Search' => 'FAQ-Suche',
      'FAQ-Article' => 'FAQ-Artikel',
      'New Article' => 'Neuer Artikel',
      'FAQ-State' => 'FAQ-Status',
      'Admin' => '',
      'A web calendar' => 'Ein Web Kalender',
      'WebMail' => '',
      'A web mail client' => 'Ein WebMail client',
      'FileManager' => 'DateiManager',
      'A web file manager' => 'Ein Web DateiManager',
      'Artefact' => 'Artefakt',
      'Incident' => 'Vorfall',
      'Advisory' => '',
      'WebWatcher' => '',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Benutzereinstellungen erfolgreich aktualisiert!',
      'Mail Management' => '',
      'Frontend' => 'Oberfl�che',
      'Other Options' => 'Andere Optionen',
      'New ticket notification' => 'Mitteilung bei neuem Ticket',
      'Send me a notification if there is a new ticket in "My Queues".' => 'Zusenden einer Mitteilung bei neuem Ticket in "Meine Queues".',
      'Follow up notification' => 'Mitteilung bei Nachfragen',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Zusenden einer Mitteilung, wenn ein Kunde eine Nachfrage stellt und ich der Besitzer bin.',
      'Ticket lock timeout notification' => 'Mitteilung bei �berschreiten der Sperrzeit',
      'Send me a notification if a ticket is unlocked by the system.' => 'Zusenden einer Mitteilung, wenn ein Ticket vom System freigegeben ("unlocked") wird.',
      'Move notification' => 'Mitteilung bei Queue-Wechsel',
      'Send me a notification if a ticket is moved into one of "My Queues".' => 'Zusenden einer Mitteilung beim Verschieben eines Tickets in "Meine Queues".',
      'Change Password' => 'Passwort �ndern',
      'New password' => 'Neues Passwort',
      'New password again' => 'Neues Passwort (wiederholen)',
      'My Queue' => 'Meine Queue',
      'My Queues' => 'Meine Queues',
      'Shown Tickets' => 'Gezeiget Tickets',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => 'Queue Auswahl der bevorzugte Queues. Es werden Email-Benachrichtigungen �ber diese ausgew�hlten Queues versenden.',
      'Custom Queue' => 'Bevorzugte Queue',
      'QueueView refresh time' => 'Queue-Ansicht Aktualisierungszeit',
      'Select your QueueView refresh time.' => 'Queue-Ansicht Aktualisierungszeit ausw�hlen.',
      'Select your frontend language.' => 'Oberfl�chen-Sprache ausw�hlen.',
      'Select your frontend Charset.' => 'Zeichensatz f�r Darstellung ausw�hlen.',
      'Select your frontend Theme.' => 'Anzeigeschema ausw�hlen.',
      'Select your frontend QueueView.' => 'Queue-Ansicht ausw�hlen.',
      'Spelling Dictionary' => 'Rechtschreib-W�rterbuch',
      'Select your default spelling dictionary.' => 'Standard Rechtschreib-W�rterbuch ausw�hlen.',
      'PhoneView' => 'Telefon-Ansicht',
      'TicketZoom' => 'Ticket Inhalt',
      'CreateTicket' => 'Ticket Erstellen',
      'Screen after new ticket' => 'Fenster nach neuem Ticket',
      'Select your screen after creating a new ticket.' => 'Auswahlt des Fensters, welches nach der Erstellung eines neuen Tickets angezeigt werden soll.',
      'Closed Tickets' => 'Geschlossene Tickets',
      'Show closed tickets.' => 'Geschlossene Tickets anzeigen.',
      'Max. shown Tickets a page in QueueView.' => 'Maximale Anzahl angezeigter Tickets pro Seite in der Queue-Ansicht.',
      'Max. shown Tickets a page in Overview.' => 'Maximale Anzahl angezeigter Tickets pro Seite in der �bersicht.',
      'Can\'t update password, passwords dosn\'t match! Please try it again!' => 'Passw�rter sind nicht identisch! Bitte erneut versuchen!',
      'Can\'t update password, invalid characters!' => 'Passwort konnte nicht aktuallisiert werden, Zeichen ung�lig.',
      'Can\'t update password, need min. 8 characters!' => 'Passwort konnte nicht aktuallisiert werden, ben�tige min. 8 Zeichen.',
      'Can\'t update password, need 2 lower and 2 upper characters!' => 'Passwort konnte nicht aktuallisiert werden, ben�tige min. einen gro�geschriebener und einen kleingeschriebener Buchstaben.',
      'Can\'t update password, need min. 1 digit!' => 'Passwort konnte nicht aktuallisiert werden, Passwort muss mit eine Zahl enthalten!',
      'Can\'t update password, need min. 2 characters!' => 'Passwort konnte nicht aktuallisiert werden, Passwort muss zwei Buchstaben enthalten!',

      # Template: AAATicket
      'Lock' => 'Sperren',
      'Unlock' => 'Freigeben',
      'History' => 'Historie',
      'Zoom' => 'Inhalt',
      'Age' => 'Alter',
      'Bounce' => '',
      'Forward' => 'Weiterleiten',
      'From' => 'Von',
      'To' => 'An',
      'Cc' => '',
      'Bcc' => '',
      'Subject' => 'Betreff',
      'Move' => 'Verschieben',
      'Queue' => '',
      'Priority' => 'Priorit�t',
      'State' => 'Status',
      'Compose' => 'Verfassen',
      'Pending' => 'Warten',
      'Owner' => 'Besitzer',
      'Sender' => '',
      'Article' => 'Artikel',
      'Ticket' => '',
      'Createtime' => 'Erstellt am',
      'plain' => 'klar',
      'eMail' => 'E-Mail',
      'email' => 'E-Mail',
      'Close' => 'Schlie�en',
      'Action' => 'Aktion',
      'Attachment' => 'Anlage',
      'Attachments' => 'Anlagen',
      'This message was written in a character set other than your own.' => 'Diese Nachricht wurde in einem Zeichensatz erstellt, der nicht Ihrem eigenen entspricht.',
      'If it is not displayed correctly,' => 'Wenn sie nicht korrekt angezeigt wird,',
      'This is a' => 'Dies ist eine',
      'to open it in a new window.' => 'um sie in einem neuen Fenster angezeigt zu bekommen',
      'This is a HTML email. Click here to show it.' => 'Dies ist eine HTML E-Mail. Hier klicken, um sie anzuzeigen.',
      'closed successful' => 'erfolgreich geschlossen',
      'closed unsuccessful' => 'erfolglos geschlossen',
      'new' => 'neu',
      'open' => 'offen',
      'closed' => 'geschlossen',
      'removed' => 'entfernt',
      'pending reminder' => 'warten zur Erinnerung',
      'pending auto close+' => 'warten auf erfolgreich schlie�en',
      'pending auto close-' => 'warten auf erfolglos schlie�en',
      'email-external' => 'E-Mail an extern',
      'email-internal' => 'E-Mail an intern',
      'note-external' => 'Notiz f�r extern',
      'note-internal' => 'Notiz f�r intern',
      'note-report' => 'Notiz f�r reporting',
      'phone' => 'Telefon',
      'sms' => '',
      'webrequest' => 'Webanfrage',
      'lock' => 'gesperrt',
      'unlock' => 'frei',
      'very low' => 'sehr niedrig',
      'low' => 'niedrig',
      'normal' => '',
      'high' => 'hoch',
      'very high' => 'sehr hoch',
      '1 very low' => '1 sehr niedrig',
      '2 low' => '2 niedrig',
      '3 normal' => '',
      '4 high' => '4 hoch',
      '5 very high' => '5 sehr hoch',
      'Ticket "%s" created!' => 'Ticket "%s" erstellt!',
      'Ticket Number' => 'Ticket Nummer',
      'Ticket Object' => 'Ticket Objekt',
      'No such Ticket Number "%s"! Can\'t link it!' => 'Ticketnummer "%s" nicht gefunden! Ticket konnte nicht verkn�pft werden!',
      'Don\'t show closed Tickets' => 'Geschlossene Tickets nicht zeigen',
      'Show closed Tickets' => 'Geschlossene Tickets anzeigen',
      'Email-Ticket' => '',
      'Create new Email Ticket' => 'Ein neise Email-Ticket erstellen',
      'Phone-Ticket' => 'Telefon-Ticket',
      'Create new Phone Ticket' => 'Neues Telefon-Ticket erstellen',
      'Search Tickets' => 'Ticket-Suche',
      'Edit Customer Users' => 'Kunden-Benutzer bearbeiten',
      'Bulk-Action' => '',
      'Bulk Actions on Tickets' => 'Bulk aktion an Tickets',
      'Send Email and create a new Ticket' => 'Email senden und neunes Ticket erstellen',
      'Overview of all open Tickets' => '�bersicht �ber alle offenen Tickets',
      'Locked tickets' => 'Gesperrte Tickets',
      'Lock it to work on it!' => 'Sperren um es zu bearbeiten!',
      'Unlock to give it back to the queue!' => 'Freigeben um es in die Queue zur�ck zu geben!',
      'Shows the ticket history!' => 'Ticket Historie anzeigen!',
      'Print this ticket!' => 'Ticket drucken!',
      'Change the ticket priority!' => '�ndern der Ticket-Priorit�t',
      'Change the ticket free fields!' => '�ndern der Ticket-Frei-Felder',
      'Link this ticket to an other objects!' => 'Ticket zu anderen Objekten verkn�pfen!',
      'Change the ticket owner!' => '�ndern des Ticket-Benitzers!',
      'Change the ticket customer!' => '�ndern des Ticket-Kunden!',
      'Add a note to this ticket!' => 'Hinzuf�gen einer Notiz!',
      'Merge this ticket!' => 'Ticket Mergen!',
      'Set this ticket to pending!' => 'Setzen des Tickets auf -warten auf-!',
      'Close this ticket!' => 'Ticket schlie�en!',
      'Look into a ticket!' => 'Ticket genauer ansehen!',
      'Delete this ticket!' => 'Ticket l�schen!',
      'Mark as Spam!' => 'Als Spam makieren!',
      'Customer Users' => 'Kunden Benutzer',
      'Customer Users <-> Groups' => 'Kunden Benutzer <-> Gruppen',
      'Users <-> Groups' => 'Benutzer <-> Gruppen',
      'Roles' => 'Rollen',
      'Roles <-> Users' => 'Rollen <-> Benutzer',
      'Roles <-> Groups' => 'Rollen <-> Gruppen',
      'Responses' => 'Antworten',
      'Responses <-> Queue' => 'Antworten <-> Queues',
      'Auto Responses <-> Queue' => 'Auto Antworten <-> Queues',
      'Auto Responses' => 'Auto Antworten',
      'Attachments <-> Responses' => 'Anlagen <-> Antworten',
      'Salutations' => 'Anreden',
      'Signatures' => 'Signaturen',
      'Email Addresses' => 'Email Adressen',
      'Notifications' => 'Benachrichtigungen',
      'History::Move' => 'Ticket verschoben in Queue "%s" (%s) von Queue "%s" (%s).',
      'History::NewTicket' => 'Neues Ticket [%s] erstellt (Q=%s;P=%s;S=%s).',
      'History::FollowUp' => 'FollowUp f�r [%s]. %s',
      'History::SendAutoReject' => 'AutoReject an "%s" versandt.',
      'History::SendAutoReply' => 'AutoReply an "%s" versandt.',
      'History::SendAutoFollowUp' => 'AutoFollowUp an "%s" versandt.',
      'History::Forward' => 'Weitergeleited an "%s".',
      'History::Bounce' => 'Bounced an "%s".',
      'History::SendAnswer' => 'E-Mail versandt an "%s".',
      'History::SendAgentNotification' => '"%s"-Benachrichtigung versand an "%s".',
      'History::SendCustomerNotification' => 'Benachrichtigung versandt an "%s".',
      'History::EmailAgent' => 'E-mail an Kunden versandt.',
      'History::EmailCustomer' => 'E-mail hinzugef�gt. %s',
      'History::PhoneCallAgent' => 'Kunden angerufen.',
      'History::PhoneCallCustomer' => 'Kunde hat angerufen.',
      'History::AddNote' => 'Notiz hinzugef�gt (%s)',
      'History::Lock' => 'Ticket gesperrt.',
      'History::Unlock' => 'Ticketsperre aufgehoben.',
      'History::TimeAccounting' => '%s Zeiteinheit(en) gez�hlt. Nun insgesamt %s Zeiteinheit(en).',
      'History::Remove' => '%s',
      'History::CustomerUpdate' => 'Aktualisiert: %s',
      'History::PriorityUpdate' => 'Priorit�t aktuallisiert von "%s" (%s) nach "%s" (%s).',
      'History::OwnerUpdate' => 'Neuer Besitzer ist "%s" (ID=%s).',
      'History::LoopProtection' => 'Loop-Protection! Keine Auto-Antwort versandt an "%s".',
      'History::Misc' => '%s',
      'History::SetPendingTime' => 'Aktualisiert: %s',
      'History::StateUpdate' => 'Alt: "%s" Neu: "%s"',
      'History::TicketFreeTextUpdate' => 'Aktualisiert: %s=%s;%s=%s;',
      'History::WebRequestCustomer' => 'Kunde stellte Anfrage �ber Web.',
      'History::TicketLinkAdd' => 'Verkn�pfung zu "%s" hergestellt.',
      'History::TicketLinkDelete' => 'Verkn�pfung zu "%s" gel�scht.',

      # Template: AAAWeekDay
      'Sun' => 'Son',
      'Mon' => '',
      'Tue' => 'Die',
      'Wed' => 'Mit',
      'Thu' => 'Don',
      'Fri' => 'Fre',
      'Sat' => 'Sam',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Anlagen Verwaltung',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Auto-Antworten Verwaltung',
      'Response' => 'Antwort',
      'Auto Response From' => 'Auto-Antwort-Absender',
      'Note' => 'Notiz',
      'Useable options' => 'Verf�gbare Optionen',
      'to get the first 20 character of the subject' => 'Um die ersten 20 Zeichen des Betreffs zu erhalten',
      'to get the first 5 lines of the email' => 'Um die ersten 5 Zeilen der E-Mail zu erhalten',
      'to get the from line of the email' => 'Um die From: Zeile zu erhalten',
      'to get the realname of the sender (if given)' => 'Um den Realnamen des Senders zu erhalten (wenn m�glich)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'Die erstellte Nachricht wurde geschlossen.',
      'This window must be called from compose window' => 'Dieses Fenster muss �ber das Verfassen-Fenster aufgerufen werden',
      'Customer User Management' => 'Kunden-Benutzer Verwaltung',
      'Search for' => 'Suche nach',
      'Result' => 'Ergebnis',
      'Select Source (for add)' => 'Quelle ausw�hlen (zum Hinzuf�gen)',
      'Source' => 'Quelle',
      'This values are read only.' => 'Diese Inhalte sind schreibgesch�tzt.',
      'This values are required.' => 'Diese Inhalte werden ben�tigt.',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => 'Kunden-Benutzer werden f�r Kunden-Historien und f�r die Benutzung von Kunden-Weboberfl�che ben�tigt.',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => 'Kundenbenutzer <-> Gruppen Verwaltung',
      'Change %s settings' => '�ndern der %s Einstellungen',
      'Select the user:group permissions.' => 'Auswahl der Benutzer/Gruppen Berechtigungen.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Ist nichts ausgew�hlt, sind keine Rechte vergeben (diese Tickets sind f�r den Benutzer nicht verf�gbar).',
      'Permission' => 'Rechte',
      'ro' => '',
      'Read only access to the ticket in this group/queue.' => 'Nur-Lesen-Zugriff auf Tickets in diesen Gruppen/Queues.',
      'rw' => '',
      'Full read and write access to the tickets in this group/queue.' => 'Voller Schreib- und Lesezugriff auf Tickets in der Queue/Gruppe.',

      # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => '�ndern der Benutzer <-> Gruppen Einstellungen',

      # Template: AdminEmail
      'Admin-Email' => '',
      'Message sent to' => 'Nachricht gesendet an',
      'Recipents' => 'Empf�nger',
      'Body' => '',
      'send' => 'Senden',

      # Template: AdminGenericAgent
      'GenericAgent' => '',
      'Job-List' => 'Job-Liste',
      'Last run' => 'Letzter lauf',
      'valid' => 'g�ltig',
      'Run Now!' => 'Jetzt laufen!',
      'x' => '',
      'Save Job as?' => 'Speichere Job als?',
      'Is Job Valid?' => 'Ist Job g�ltig?',
      'Is Job Valid' => 'Ist Job g�ltig',
      'Schedule' => 'Zeitplan',
      'Minutes' => 'Minuten',
      'Hours' => 'Stunden',
      'Days' => 'Tage',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Volltextsuche in Artikel (z.B. "Mar*in" oder "Baue*")',
      '(e. g. 10*5155 or 105658*)' => 'z.B. 10*5144 oder 105658*',
      '(e. g. 234321)' => 'z.B. 234321',
      'Customer User Login' => 'Kunden-Benutzer-Login',
      '(e. g. U5150)' => 'z.B. U5150',
      'Agent' => '',
      'TicketFreeText' => '',
      'Ticket Lock' => 'Ticket Sperren',
      'Times' => 'Zeiten',
      'No time settings.' => 'Keine Zeit-Einstellungen.',
      'Ticket created' => 'Ticket erstellt',
      'Ticket created between' => 'Ticket erstellt zwischen',
      'New Priority' => 'Neue Priorit�t',
      'New Queue' => 'Neue Queue',
      'New State' => 'Neuer Status',
      'New Agent' => 'Neuer Besitzer',
      'New Owner' => 'Neuer Besitzer',
      'New Customer' => 'Neuer Kunde',
      'New Ticket Lock' => 'Neues Ticket Lock',
      'CustomerUser' => 'Kundenbenutzer',
      'Add Note' => 'Notiz hinzuf�gen',
      'CMD' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Dieses Commando wird mit ARG[0] (die Ticket Nummer) und ARG[1] die TicketID ausgef�hrt.',
      'Delete tickets' => 'Tickets L�schen',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Warnung! Alle diese Tickets werden von der Datenbank entfernt! Diese Tickets sind nicht wiederherstellbar!',
      'Modules' => 'Module',
      'Param 1' => '',
      'Param 2' => '',
      'Param 3' => '',
      'Param 4' => '',
      'Param 5' => '',
      'Param 6' => '',
      'Save' => 'Speichern',

      # Template: AdminGroupForm
      'Group Management' => 'Gruppen Verwaltung',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Die \'admin\'-Gruppe wird f�r den Admin-Bereich ben�tigt, die \'stats\'-Gruppe f�r den Statistik-Bereich.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Erstellen Sie neue Gruppen, um die Zugriffe f�r verschiedene Agenten-Gruppen zu definieren (z.B. Einkaufs-Abteilung, Support-Abteilung, Verkaufs-Abteilung,...).',
      'It\'s useful for ASP solutions.' => 'N�tzlich f�r ASP-L�sungen.',

      # Template: AdminLog
      'System Log' => '',
      'Time' => 'Zeit',

      # Template: AdminNavigationBar
      'Users' => 'Benutzer',
      'Groups' => 'Gruppen',
      'Misc' => 'Sonstiges',

      # Template: AdminNotificationForm
      'Notification Management' => 'Benachrichtigungs Verwaltung',
      'Notification' => 'Benachrichtigung',
      'Notifications are sent to an agent or a customer.' => 'Benachrichtigungen werden an Agenten und Kunden gesendet.',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Konfig Optionen (z. B. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Informationen �ber den Besitzer des Tickets (z. B. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Informationen �ber den Benutzer, der die Aktion gerade anfragt (z. B. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Die Daten der Kundenbenutzer (z. B. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',

      # Template: AdminPackageManager
      'Package Manager' => 'Paket Verwaltung',
      'Uninstall' => 'deinstallieren',
      'Verion' => '',
      'Do you really want to uninstall this package?' => 'Soll das Paket wirklich deinstalliert werden?',
      'Install' => 'installieren',
      'Package' => 'Paket',
      'Online Repository' => '',
      'Version' => '',
      'Vendor' => 'Anbieter',
      'Upgrade' => 'erneuern',
      'Local Repository' => 'Lokales Repository',
      'Status' => '',
      'Overview' => '�bersicht',
      'Download' => 'Herunterladen',
      'Rebuild' => '',
      'Reinstall' => '',

      # Template: AdminPGPForm
      'PGP Management' => 'PGP Verwaltung',
      'Identifier' => 'Identifikator',
      'Bit' => '',
      'Key' => 'Schl�ssel',
      'Fingerprint' => '',
      'Expires' => 'Erlischt',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '�er diesen Weg kann man den Schl�sselring (konfiguriert in Kernel/Config.pm) direkt bearbeiten.',
      'FIXME: WHAT IS PGP?' => '',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'POP3-Konten Verwaltung',
      'Host' => 'Rechner',
      'Trusted' => 'Vertraut',
      'Dispatching' => 'Verteilung',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Einkommende E-Mails von POP3-Konten werden in die ausgew�hlte Queue einsortiert!',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Wird dem Konto vertraut, werden die X-OTRS Header benutzt! PostMaster Filter werden trotzdem benutzt.',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => 'PostMaster Filter Verwaltung',
      'Filtername' => '',
      'Match' => 'Treffer',
      'Header' => '',
      'Value' => 'Wert',
      'Set' => 'Setzen',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Verteilt oder Filtern einkommende Email anhand der X-Headers! RegExp ist auch m�glich.',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Ist RegExp benutzt, k�nnen Sie auch den Inhalt von () als [***] in \'Setzen\' benutzen.',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => 'Queue <-> Auto Antworten Management',

      # Template: AdminQueueAutoResponseTable

      # Template: AdminQueueForm
      'Queue Management' => 'Queue Verwaltung',
      'Sub-Queue of' => 'Unterqueue von',
      'Unlock timeout' => 'Freigabe-Zeitintervall',
      '0 = no unlock' => '0 = keine Freigabe',
      'Escalation time' => 'Eskalationszeit',
      '0 = no escalation' => '0 = keine Eskalation',
      'Follow up Option' => 'Nachfrage Option',
      'Ticket lock after a follow up' => 'Ticket sperren nach einem Follow-Up',
      'Systemaddress' => 'Systemadresse',
      'Customer Move Notify' => 'Kundeninfo Verschieben',
      'Customer State Notify' => 'Kundeninfo Status',
      'Customer Owner Notify' => 'Kundeninfo Besitzer',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Wird ein Ticket durch einen Agent gesperrt, jedoch nicht in dieser Zeit beantwortet, wird das Ticket automatisch freigegeben.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Wird ein Ticket nicht in dieser Zeit beantwortet, wird nur noch dieses Ticket gezeigt.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Wenn ein Ticket geschlossen ist und der Kunde ein Follow-Up sendet, wird das Ticket f�r den alten Besitzer gesperrt.',
      'Will be the sender address of this queue for email answers.' => 'Absenderadresse f�r E-Mails aus dieser Queue.',
      'The salutation for email answers.' => 'Die Anrede f�r E-Mail-Antworten.',
      'The signature for email answers.' => 'Die Signatur f�r E-Mail-Antworten.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS sendet eine Info-E-Mail an Kunden beim Verschieben des Tickets.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS sendet eine Info E-Mail an Kunden beim �ndern des Status.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS sendet eine Info-E-Mail an Kunden beim �ndern des Besitzers.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => 'Antworten <-> Queue Verwaltung',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Antwort',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => 'Antwort <-> Anlagen Verwaltung',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Antworten Verwaltung',
      'A response is default text to write faster answer (with default text) to customers.' => 'Eine Antwort ist ein vordefinierter Text, um Kunden schneller antworten zu k�nnen.',
      'Don\'t forget to add a new response a queue!' => 'Eine neue Antwort muss einer Queue zugewiesen werden!',
      'Next state' => 'N�chster Status',
      'All Customer variables like defined in config option CustomerUser.' => 'Alle Kundenvariablen wie definiert im den Konfigoptionen CustomerUser.',
      'The current ticket state is' => 'Der aktuelle Ticket-Status ist',
      'Your email address is new' => 'Deine E-Mail-Adresse ist neu',

      # Template: AdminRoleForm
      'Role Management' => 'Rollen Verwaltung',
      'Create a role and put groups in it. Then add the role to the users.' => 'Erstell eine Rolle und weise Gruppen hinzu. Danach f�ge Benutzer zu den Rollen.',
      'It\'s useful for a lot of users and groups.' => 'Es ist sehr n�tzlich wenn man viel Gruppen und Benutzer hat.',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => 'Rollen <-> Gruppen Verwaltung',
      'move_into' => 'Verschieben in',
      'Permissions to move tickets into this group/queue.' => 'Rechte, um Tickets in eine Gruppe/Queue zu verschieben.',
      'create' => 'Erstellen',
      'Permissions to create tickets in this group/queue.' => 'Rechte, um in einer Gruppe/Queue Tickets zu erstellen.',
      'owner' => 'Besitzer',
      'Permissions to change the ticket owner in this group/queue.' => 'Rechte, um den Besitzer eines Ticket in einer Gruppe/Queue zu �ndern.',
      'priority' => 'Priorit�t',
      'Permissions to change the ticket priority in this group/queue.' => 'Rechte, um die Priorit�t eines Tickets in einer Gruppe/Queue zu �ndern.',

      # Template: AdminRoleGroupForm
      'Change roles <-> groups settings' => '',
      'Role' => 'Rolle',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => 'Rollen <-> Benutzer Verwaltung',
      'Active' => 'Aktiv',
      'Select the role:user relations.' => 'Auswahl der Rollen:Benutzer Beziehungen.',

      # Template: AdminRoleUserForm
      'Change users <-> roles settings' => '',

      # Template: AdminSalutationForm
      'Salutation Management' => 'Anreden Verwaltung',
      'customer realname' => 'Wirklicher Kundenname',
      'for agent firstname' => 'f�r Vorname des Agents',
      'for agent lastname' => 'f�r Nachname des Agents',
      'for agent user id' => 'f�r Agent UserID',
      'for agent login' => 'f�r Agent Login',

      # Template: AdminSelectBoxForm
      'Select Box' => '',
      'SQL' => '',
      'Limit' => '',
      'Select Box Result' => 'Select Box Ergebnis',

      # Template: AdminSession
      'Session Management' => 'Sitzungsverwaltung',
      'Sessions' => 'Sitzung',
      'Uniq' => '',
      'kill all sessions' => 'Alle Sitzungen l�schen',
      'Session' => '',
      'kill session' => 'Sitzung l�schen',

      # Template: AdminSignatureForm
      'Signature Management' => 'Signatur Verwaltung',

      # Template: AdminSMIMEForm
      'SMIME Management' => 'SMIME Verwaltung',
      'Add Certificate' => 'Zertifikat hinzuf�gen',
      'Add Private Key' => 'Privaten Schl�ssel hinzuf�gen',
      'Secret' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '�ber diesen Weg k�nnen die Zertifikate und privaten Schl�ssel im Dateisystem bearbeitet werden.',
      'FIXME: WHAT IS SMIME?' => '',

      # Template: AdminStateForm
      'System State Management' => 'Status Verwaltung',
      'State Type' => 'Status-Typ',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Gib acht, dass auch die default-Status in Kernel/Config.pm ge�ndert werden!',
      'See also' => 'Siehe auch',

      # Template: AdminSysConfig
      'SysConfig' => '',
      'Group selection' => 'Gruppenauswahl',
      'Show' => 'Zeigen',
      'Download Settings' => 'Einstellungen download',
      'Download all system config changes.' => '',
      'Load Settings' => 'Einstellungen laden',
      'Load' => 'Laden',
      'Subgroup' => 'Untergruppe',
      'Elements' => 'Elemente',

      # Template: AdminSysConfigEdit
      'Config Options' => 'Config Einstellungen',
      'Default' => '',
      'Content' => 'Kontent',
      'New' => 'Neu',
      'New Group' => 'Neue Gruppe',
      'Group Ro' => 'Gruppe Ro',
      'New Group Ro' => 'Neue Gruppe Ro',
      'NavBarName' => '',
      'Image' => '',
      'Typ' => '',
      'Prio' => '',
      'Block' => '',
      'NavBar' => '',
      'AccessKey' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'E-Mail-Adressen Verwaltung',
      'Email' => 'E-Mail',
      'Realname' => '',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alle eingehenden E-Mails mit diesem Empf�nger (To:) werden in die ausgew�hlte Queue einsortiert.',

      # Template: AdminUserForm
      'User Management' => 'Benutzer Verwaltung',
      'Firstname' => 'Vorname',
      'Lastname' => 'Nachname',
      'User will be needed to handle tickets.' => 'Benutzer werden ben�tigt, um Tickets zu bearbeiten.',
      'Don\'t forget to add a new user to groups!' => 'Ein neuer Benutzer muss einer Gruppe zugewiesen werden!',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => 'Benutzer <-> Gruppen Verwaltung',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'Adressbuch',
      'Return to the compose screen' => 'Zur�ck zum Verfassen-Fenster',
      'Discard all changes and return to the compose screen' => 'Alle �nderungen verwerfen und zur�ck zum Verfassen-Fenster',

      'Print' => 'Drucken',

      # Template: AgentCustomerTableView

      # Template: AgentFileManager
      'File-Manager' => '',

      # Template: AgentInfo
      'Info' => '',

      # Template: AgentLinkObject
      'Link Object' => 'Verkn�pfe Objekt',
      'Select' => 'Auswahl',
      'Results' => 'Ergebnis',
      'Total hits' => 'Treffer gesamt',
      'Site' => 'Seite',
      'Detail' => '',

      # Template: AgentLookup
      'Lookup' => '',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => 'Ticket f�r Bulk-Aktion Ausgew�hlt',
      'You need min. one selected Ticket!' => 'Ben�tigt min. ein ausgew�hltes Ticket!',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Rechtschreibpr�fung',
      'spelling error(s)' => 'Rechtschreibfehler',
      'or' => 'oder',
      'Apply these changes' => '�nderungen �bernehmen',

      # Template: AgentTicketAutoCc
      'Change watchers of ticket' => '',
      'Watcher' => '',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Eine Nachricht sollte einen Empf�nger im Feld An: haben!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Im Feld An: wird eine E-Mail-Adresse (z.B. kunde@example.com) ben�tigt!',
      'Bounce ticket' => '',
      'Bounce to' => 'Bounce an',
      'Next ticket state' => 'N�chster Status des Tickets',
      'Inform sender' => 'Sender informieren',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Die E-Mail mit der Ticketnummer "<OTRS_TICKET>" ist an "<OTRS_BOUNCE_TO>" gebounced. Kontaktieren Sie diese Adresse f�r weitere Nachfragen.',
      'Send mail!' => 'Mail senden!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Eine Nachricht sollte einen Betreff haben!',
      'Ticket Bulk Action' => 'Ticket Sammelaktion',
      'Spell Check' => 'Rechtschreibpr�fung',
      'Note type' => 'Notiztyp',
      'Unlock Tickets' => 'Freigeben der Tickets',

      # Template: AgentTicketClose
      'A message should have a body!' => 'Eine Nachricht sollte einen Body haben!',
      'You need to account time!' => 'Zeit muss berechnet werden!',
      'Close ticket' => 'Ticket schlie�en',
      'Close!' => 'Schlie�en!',
      'Note Text' => 'Notiztext',
      'Close type' => 'Art des Schlie�ens',
      'Time units' => 'Zeiteinheiten',
      ' (work units)' => ' (Arbeitseinheiten)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Eine Nachricht m�ssen rechtschreib�berpr�ft sein!',
      'Compose answer for ticket' => 'Antwort erstellen f�r',
      'Attach' => 'Anh�ngen',
      'Pending Date' => 'Warten bis',
      'for pending* states' => 'f�r warten* Status',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => '�ndern des Kunden des Tickets',
      'Set customer user and customer id of a ticket' => 'Kundenbenutzer und Kundennummer des Tickets ausw�hlen',
      'Customer User' => 'Kunden-Benutzer',
      'Search Customer' => 'Kunden suchen',
      'Customer Data' => 'Kunden-Daten',
      'Customer history' => 'Kunden-Historie',
      'All customer tickets.' => 'Alle Tickets des Kunden.',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Nachfrage',

      # Template: AgentTicketEmail
      'Compose Email' => 'E-Mail erstellen',
      'new ticket' => 'Neues Ticket',
      'Clear To' => 'An: l�schen',
      'All Agents' => 'Alle Agenten',

      # Template: AgentTicketForward
      'Article type' => 'Artikeltyp',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => '�ndern der Freifelder des Tickets',

      # Template: AgentTicketHistory
      'History of' => 'Historie von',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket gesperrt!',
      'Ticket unlock!' => 'Ticket freigeben!',

      # Template: AgentTicketMailbox
      'Mailbox' => '',
      'Tickets' => '',
      'All messages' => 'Alle Nachrichten',
      'New messages' => 'Neue Nachrichten',
      'Pending messages' => 'Wartende Nachrichten',
      'Reminder messages' => 'Erinnernde Nachrichten',
      'Reminder' => 'Erinnernd',
      'Sort by' => 'Sortieren nach',
      'Order' => 'Sortierung',
      'up' => 'aufw�rts',
      'down' => 'abw�rts',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => 'Bitte Ticket-Nummer benutzen!',
      'Ticket Merge' => '',
      'Merge to' => 'Mergen zu',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Ihre Email mit Ticket-Nummer "<OTRS_TICKET>" wurde zu Ticket-Nummer "<OTRS_MERGE_TO_TICKET>" gemerged!',

      # Template: AgentTicketMove
      'Queue ID' => '',
      'Move Ticket' => 'Ticket Verschieben',
      'Previous Owner' => 'Vorheriger Besitzer',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Anheften einer Notiz an Ticket',
      'Inform Agent' => 'Agenten Informieren',
      'Optional' => '',
      'Inform involved Agents' => 'Invlivierte Agenten Informieren',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Ticket-Besitzer �ndern',
      'Message for new Owner' => 'Nachricht an neuen Besitzer',

      # Template: AgentTicketPending
      'Set Pending' => 'Setze wartend',
      'Pending type' => 'Warten auf',
      'Pending date' => 'Warten bis',

      # Template: AgentTicketPhone
      'Phone call' => 'Anruf',

      # Template: AgentTicketPhoneNew
      'Clear From' => 'Von: l�schen',

      # Template: AgentTicketPlain
      'Plain' => 'Klar',
      'TicketID' => '',
      'ArticleID' => '',

      # Template: AgentTicketPrint
      'Ticket-Info' => '',
      'Accounted time' => 'Zugewiesene Zeit',
      'Escalation in' => 'Eskalation in',
      'Linked-Object' => '',
      'Parent-Object' => '',
      'Child-Object' => '',
      'by' => 'von',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Priorit�t des Tickets �ndern',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Tickets angezeigt',
      'Page' => 'Seite',
      'Tickets available' => 'Tickets verf�gbar',
      'All tickets' => 'Alle Tickets',
      'Queues' => '',
      'Ticket escalation!' => 'Ticket-Eskalation!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'Ihr eigenes Ticket',
      'Compose Follow up' => 'Erg�nzung schreiben',
      'Compose Answer' => 'Antwort erstellen',
      'Contact customer' => 'Kunden kontaktieren',
      'Change queue' => 'Queue wechseln',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => 'Ticket-Suche',
      'Profile' => 'Profil',
      'Search-Template' => 'Such-Vorlage',
      'Created in Queue' => 'Erstellt in Queue',
      'Result Form' => 'Ergebnis-Ansicht',
      'Save Search-Profile as Template?' => 'Speichere Such-Profil als Vorlage?',
      'Yes, save it with name' => 'Ja, speichere unter dem Namen',
      'Customer history search' => 'Kunden-Historie-Suche',
      'Customer history search (e. g. "ID342425").' => 'Kunden-Historie-Suche (z.B. "ID342425").',
      'No * possible!' => 'Kein "*" m�glich!',

      # Template: AgentTicketSearchResult
      'Search Result' => 'Such-Ergebnis',
      'Change search options' => 'Such-Optionen �ndern',

      # Template: AgentTicketSearchResultPrint

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'aufw�rts sortieren',
      'U' => '',
      'sort downward' => 'abw�rts sortieren',
      'D' => '',

      # Template: AgentTicketStatusView
      'Ticket Status View' => 'Ticket Status Ansicht',
      'Open Tickets' => 'Offene Tickets',

      # Template: AgentTicketZoom
      'Split' => 'Teilen',

      # Template: AgentTicketZoomStatus
      'Locked' => 'Sperre',

      'Do you really want to delete this Object?' => 'Soll das Objekt wirklich gel�scht werden?',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerError
      'Traceback' => '',

      # Template: CustomerFAQArticleHistory
      'FAQ History' => 'FAQ Historie',

      # Template: CustomerFAQArticlePrint
      'Keywords' => 'Schl�sselw�rter',
      'Last update' => 'Letzte �nderungen',
      'Symptom' => '',
      'Problem' => '',
      'Solution' => 'L�sung',

      # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => 'FAQ System Historie',

      # Template: CustomerFAQArticleView
      'Modified' => 'Ver�ndert',

      # Template: CustomerFAQOverview
      'FAQ Overview' => 'FAQ �bersicht',

      # Template: CustomerFAQSearch
      'FAQ Search' => 'FAQ Suche',
      'Fulltext' => 'Volltext',
      'Keyword' => 'Schl�sselwort',

      # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'FAQ Suche-Ergebnis',

      # Template: CustomerFooter
      'Powered by' => '',

      # Template: CustomerHeader

      # Template: CustomerLogin
      'Login' => '',
      'Lost your password?' => 'Passwort verloren?',
      'Request new password' => 'Neues Passwort beantragen',
      'Create Account' => 'Zugang erstellen',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Willkommen %s',

      # Template: CustomerPreferencesForm

      # Template: CustomerStatusView
      'of' => 'von',

      # Template: CustomerTicketMessage

      # Template: CustomerTicketMessageNew

      # Template: CustomerTicketSearch

      # Template: CustomerTicketSearchResultCSV

      # Template: CustomerTicketSearchResultPrint

      # Template: CustomerTicketSearchResultShort

      # Template: CustomerTicketZoom

      # Template: CustomerWarning

      # Template: Error
      'Click here to report a bug!' => 'Klicken Sie hier, um einen Fehler zu berichten!',

      # Template: FAQ
      'Comment (internal)' => 'Kommentar (intern)',
      'A article should have a title!' => 'Ein Artikel sollte einen Titel haben!',
      'New FAQ Article' => 'Neuer FAQ Artikel',
      'System History' => '',

      # Template: FAQCategoryForm
      'Name is required!' => 'Name ist ben�tigt!',
      'FAQ Category' => 'FAQ Kategorie',

      # Template: FAQLanguageForm
      'FAQ Language' => 'FAQ Sprache',

      # Template: Footer
      'QueueView' => 'Queue-Ansicht',
      'Top of Page' => 'Seitenanfang',

      # Template: FooterSmall

      # Template: Header
      'Home' => '',

      # Template: HeaderSmall

      # Template: InstallerBody
      'Web-Installer' => '',
      'Create Database' => 'Datenbank erstellen',
      'Drop Database' => 'Datenbank l�schen',
      'System Settings' => 'System Einstellungen',
      'Finished' => 'Fertig',

      # Template: InstallerFinish
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Um OTRS nutzen zu k�nnen, m�ssen die die folgenden Zeilen als root in die Befehlszeile (Terminal/Shell) eingeben.',
      'Restart your webserver' => 'Starte Deinen Webserver neu.',
      'After doing so your OTRS is up and running.' => 'Danach l�uft Dein OTRS.',
      'Start page' => 'Startseite',
      'Admin-User' => 'Admin-Benutzer',
      'Have a lot of fun!' => 'Viel Spa�!',
      'Your OTRS Team' => 'Dein OTRS-Team',

      # Template: InstallerLicense
      'License' => 'Lizenz',
      'accept license' => 'Lizenz anerkennen',
      'don\'t accept license' => 'Lizenz nicht anerkennen',

      # Template: InstallerStart
      'DB Admin User' => 'DB Admin Benutzer',
      'DB Admin Password' => 'DB Admin Passwort',
      'your MySQL DB should have a root password! Default is empty!' => 'Deine MySQL DB sollte ein Root Passwort haben! Voreingestellt ist keines!',
      'DB Host' => 'DB Rechner',
      'DB Type' => 'DB Typ',
      'OTRS DB Name' => '',
      'OTRS DB User' => 'OTRS DB Benutzer',
      'OTRS DB Password' => 'OTRS DB Passwort',
      'default \'hot\'' => 'voreingestellt \'hot\'',
      'OTRS DB connect host' => 'OTRS DB Verbindungs-Rechner',
      'Create new database' => 'Neue Datenbank erstellen',
      'Delete old database' => 'Alte Datenbank l�schen',
      'next step' => 'N�chster Schritt',

      # Template: InstallerSystem
      'SystemID' => '',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Das Kennzeichnen des Systems. Jede Ticketnummer und http-Sitzung beginnt mit dieser Kennung)',
      'System FQDN' => '',
      '(Full qualified domain name of your system)' => '(Voll qualifizierter Domain-Name des Systems)',
      'AdminEmail' => '',
      '(Email of the system admin)' => '(E-Mail des System-Administrators)',
      'Organization' => 'Organisation',
      'LogModule' => '',
      '(Used log backend)' => '(Benutztes Log Backend)',
      'Logfile' => 'Logdatei',
      '(Logfile just needed for File-LogModule!)' => '(Logfile nur ben�tigt f�r File-LogModule!)',
      'CheckMXRecord' => '',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(�berpr�fen des MX-Eintrags der benutzen E-Mail-Adressen im Verfassen-Fenster. Benutzen Sie CheckMXRecord nicht, wenn Ihr OTRS hinter einer W�hlleitung ist!)',
      'Ticket Hook' => '',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Ticket Kennzeichnen. Z.B. \'Ticket#\', \'Call#\' oder \'MyTicket#\')',
      'Ticket Number Generator' => 'Ticketnummer Generator',
      '(Used ticket number format)' => '(Benutztes Format f�r die Ticketnummer)',
      'Webfrontend' => 'Web-Oberfl�che',
      'Default Charset' => 'Standard-Zeichensatz',
      'Use utf-8 it your database supports it!' => 'Benutzen Sie utf-8 nur, wenn Ihre Datenbank es unterst�tzt!',
      'Default Language' => 'Standardsprache',
      '(Used default language)' => '(Standardwert f�r die Sprache)',

      # Template: Login

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Keine Berechtigung',

      # Template: Notify

      # Template: PrintFooter

      # Template: PrintHeader
      'printed by' => 'gedruckt von',

      # Template: Redirect

      # Template: SystemStats
      'Format' => '',

      # Template: Test
      'OTRS Test Page' => 'OTRS Testseite',
      'Counter' => '',
      'Download all system config changes.' => 'Runterladen aller �nderungen der Konfiguration.',
        'invalid-temporarily' => 'ung�ltig-tempor�r',

      # Template: Warning
    };
    # $$STOP$$
}
# --
1;
