# --
# Kernel/Language/de.pm - provides de language translation
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: de.pm,v 1.204 2009-08-21 07:41:00 mb Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
package Kernel::Language::de;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.204 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sat Jun 27 13:55:00 2009

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%T - %D.%M.%Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
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
        'last' => 'letzten',
        'before' => 'vor',
        'day' => 'Tag',
        'days' => 'Tage',
        'day(s)' => 'Tag(e)',
        'hour' => 'Stunde',
        'hours' => 'Stunden',
        'hour(s)' => 'Stunde(n)',
        'minute' => 'Minute',
        'minutes' => 'Minuten',
        'minute(s)' => 'Minute(n)',
        'month' => 'Monat',
        'months' => 'Monate',
        'month(s)' => 'Monat(e)',
        'week' => 'Woche',
        'week(s)' => 'Woche(n)',
        'year' => 'Jahr',
        'years' => 'Jahre',
        'year(s)' => 'Jahr(e)',
        'second(s)' => 'Sekunde(n)',
        'seconds' => 'Sekunden',
        'second' => 'Sekunde',
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
        'Setting' => 'Einstellung',
        'Settings' => 'Einstellungen',
        'Example' => 'Beispiel',
        'Examples' => 'Beispiele',
        'valid' => 'g�ltig',
        'invalid' => 'ung�ltig',
        '* invalid' => '* ung�ltig',
        'invalid-temporarily' => 'ung�ltig-tempor�r',
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
        'Unlink' => 'Verkn�pft aufheben',
        'Linked' => 'Verkn�pft',
        'Link (Normal)' => 'Verkn�pft (Normal)',
        'Link (Parent)' => 'Verkn�pft (Eltern)',
        'Link (Child)' => 'Verkn�pft (Kinder)',
        'Normal' => 'Normal',
        'Parent' => 'Eltern',
        'Child' => 'Kinder',
        'Hit' => 'Treffer',
        'Hits' => 'Treffer',
        'Text' => 'Text',
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
        'Customer Company' => 'Kunden-Firma',
        'Company' => 'Firma',
        'go!' => 'Start!',
        'go' => 'Start',
        'All' => 'Alle',
        'all' => 'alle',
        'Sorry' => 'Bedauere',
        'update!' => 'Aktualisieren!',
        'update' => 'Aktualisieren',
        'Update' => 'Aktualisieren',
        'Updated!' => 'Aktualisiert!',
        'submit!' => '�bermitteln!',
        'submit' => '�bermitteln',
        'Submit' => '�bermitteln',
        'change!' => '�ndern!',
        'Change' => '�ndern',
        'change' => '�ndern',
        'click here' => 'hier klicken',
        'Comment' => 'Kommentar',
        'Valid' => 'G�ltig',
        'Invalid Option!' => 'Ung�ltige Option!',
        'Invalid time!' => 'Ung�ltige Zeitangabe!',
        'Invalid date!' => 'Ung�ltige Zeitangabe!',
        'Name' => 'Name',
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
        'System' => 'System',
        'Contact' => 'Kontakt',
        'Contacts' => 'Kontakte',
        'Export' => 'Export',
        'Up' => 'Auf',
        'Down' => 'Ab',
        'Add' => 'Hinzuf�gen',
        'Added!' => 'Hinzugef�gt!',
        'Category' => 'Kategorie',
        'Viewer' => 'Betrachter',
        'Expand' => 'Ausklappen',
        'New message' => 'Neue Nachricht',
        'New message!' => 'Neue Nachricht!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'Bitte beantworten Sie dieses Ticket, um in die normale Queue-Ansicht zur�ck zu kommen!',
        'You got new message!' => 'Sie haben eine neue Nachricht bekommen!',
        'You have %s new message(s)!' => 'Sie haben %s neue Nachricht(en) bekommen!',
        'You have %s reminder ticket(s)!' => 'Sie haben %s Erinnerungs-Ticket(s)!',
        'The recommended charset for your language is %s!' => 'Der empfohlene Zeichensatz f�r Ihre Sprache ist %s!',
        'Passwords doesn\'t match! Please try it again!' => 'Passw�rter stimmen nicht �berein! Bitte wiederholen!',
        'Password is already in use! Please use an other password!' => 'Dieses Password wird bereits benutzt, es kann nicht verwendet werden!',
        'Password is already used! Please use an other password!' => 'Dieses Password wurde bereits benutzt, es kann nicht verwendet werden!',
        'You need to activate %s first to use it!' => '%s muss zuerst aktiviert werden um es zu benutzen!',
        'No suggestions' => 'Keine Vorschl�ge',
        'Word' => 'Wort',
        'Ignore' => 'Ignorieren',
        'replace with' => 'ersetzen mit',
        'There is no account with that login name.' => 'Es existiert kein Benutzerkonto mit diesem Namen.',
        'Login failed! Your username or password was entered incorrectly.' => 'Anmeldung fehlgeschlagen! Benutzername oder Passwort falsch.',
        'Please contact your admin' => 'Bitte kontaktieren Sie Ihren Administrator',
        'Logout successful. Thank you for using OTRS!' => 'Abmeldung erfolgreich! Danke f�r die Benutzung von  OTRS!',
        'Invalid SessionID!' => 'Ung�ltige SessionID!',
        'Feature not active!' => 'Funktion nicht aktiviert!',
        'Notification (Event)' => 'Benachrichtigung (Ereignis)',
        'Login is needed!' => 'Login wird ben�tigt!',
        'Password is needed!' => 'Passwort wird ben�tigt!',
        'License' => 'Lizenz',
        'Take this Customer' => 'Kunden �bernehmen',
        'Take this User' => 'Benutzer �bernehmen',
        'possible' => 'm�glich',
        'reject' => 'ablehnen',
        'reverse' => 'umgekehrt',
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
        'Preview' => 'Vorschau',
        'Package not correctly deployed! You should reinstall the Package again!' => 'Paket nicht korrekt installiert! Sie sollten es erneut installieren!',
        'Added User "%s"' => 'Benutzer "%s" hinzugef�gt.',
        'Contract' => 'Vertrag',
        'Online Customer: %s' => 'Online Kunde: %s',
        'Online Agent: %s' => 'Online Agent: %s',
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
        'Office' => 'B�ro',
        'Phone' => 'Telefon',
        'Fax' => 'Fax',
        'Mobile' => 'Mobile',
        'Zip' => 'PLZ',
        'City' => 'Stadt',
        'Street' => 'Stra�e',
        'Country' => 'Land',
        'Location' => 'Standort',
        'installed' => 'installiert',
        'uninstalled' => 'nicht installiert',
        'Security Note: You should activate %s because application is already running!' => 'Sicherheitshinweis: Sie sollten den %s aktivieren, da die Anwendung bereits in Betrieb ist!',
        'Unable to parse Online Repository index document!' => 'Nicht m�glich den Online Repository Index zu verarbeiten!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'Kein Paket f�r den ben�tigten Framework vorhanden, aber f�r andere Frameworks.',
        'No Packages or no new Packages in selected Online Repository!' => 'Kein Paket oder keine neuen Pakete im ausgew�hlten Online Repository vorhanden!',
        'printed at' => 'gedruckt am',
        'Dear Mr. %s,' => 'Sehr geehrter Herr %s,',
        'Dear Mrs. %s,' => 'Sehr geehrte Frau %s,',
        'Dear %s,' => 'Lieber %s,',
        'Hello %s,' => 'Hallo %s,',
        'This account exists.' => 'Dieser Benutzer ist bereits vorhanden.',
        'New account created. Sent Login-Account to %s.' => 'Neuen Account erstellt. Login-Daten an %s gesendet.',
        'Please press Back and try again.' => 'Bitte auf Zur�ck klicken und erneut versuchen.',
        'Sent password token to: %s' => 'Passwort-Token an %s gesendet.',
        'Sent new password to: %s' => 'Neues Passwort an %s gesendet.',
        'Upcoming Events' => 'Anstehende Ereignisse',
        'Event' => 'Ereignis',
        'Events' => 'Ereignisse',
        'Invalid Token!' => 'Ung�ltiger Token!',
        'more' => 'mehr',
        'For more info see:' => 'F�r mehr Informationen hier:',
        'Package verification failed!' => 'Paket �berpr�fung Fehlgeschlagen',
        'Collapse' => 'Zuklappen',
        'News' => 'Neues',
        'Product News' => 'Produkt Neuigkeiten',
        'OTRS News' => 'OTRS Neuigkeiten',
        '7 Day Stats' => '7 Tage-Statistik',
        'Bold' => 'Fett',
        'Italic' => 'Kursiv',
        'Underline' => 'Unterstreichen',
        'Font Color' => 'Schriftfarbe',
        'Background Color' => 'Hintergrundfarbe',
        'Remove Formatting' => 'Entferne Formatierung',
        'Show/Hide Hidden Elements' => 'Zeige/Verstecke versteckte Elemente',
        'Align Left' => 'Ausrichtung linksb�ndig',
        'Align Center' => 'Ausrichtung zentriert',
        'Align Right' => 'Ausrichtung rechtsb�ndig',
        'Justify' => 'Blocksatz',
        'Header' => '�berschrift',
        'Indent' => 'Einzug erh�hen',
        'Outdent' => 'Einzug vermindern',
        'Create an Unordered List' => 'Aufz�hlungsliste erstellen',
        'Create an Ordered List' => 'Nummerierte Liste erstellen',
        'HTML Link' => 'HTML Verkn�pfung',
        'Insert Image' => 'Bild einf�gen',
        'CTRL' => 'STRG',
        'SHIFT' => 'Umschalt',
        'Undo' => 'R�ckg�ngig',
        'Redo' => 'Wiederholen',

        # Template: AAAMonth
        'Jan' => 'Jan',
        'Feb' => 'Feb',
        'Mar' => 'M�r',
        'Apr' => 'Apr',
        'May' => 'Mai',
        'Jun' => 'Jun',
        'Jul' => 'Jul',
        'Aug' => 'Aug',
        'Sep' => 'Sep',
        'Oct' => 'Okt',
        'Nov' => 'Nov',
        'Dec' => 'Dez',
        'January' => 'Januar',
        'February' => 'Februar',
        'March' => 'M�rz',
        'April' => 'April',
        'June' => 'Juni',
        'July' => 'Juli',
        'August' => 'August',
        'September' => 'September',
        'October' => 'Oktober',
        'November' => 'November',
        'December' => 'Dezember',

        # Template: AAANavBar
        'Admin-Area' => 'Admin-Bereich',
        'Agent-Area' => 'Agent-Bereich',
        'Ticket-Area' => 'Ticket-Bereich',
        'Logout' => 'Abmelden',
        'Agent Preferences' => 'Benutzer Einstellungen',
        'Preferences' => 'Einstellungen',
        'Agent Mailbox' => 'Agent Mailbox',
        'Stats' => 'Statistik',
        'Stats-Area' => 'Statistik-Bereich',
        'Admin' => 'Admin',
        'Customer Users' => 'Kunden Benutzer',
        'Customer Users <-> Groups' => 'Kunden Benutzer <-> Gruppen',
        'Users <-> Groups' => 'Benutzer <-> Gruppen',
        'Roles' => 'Rollen',
        'Roles <-> Users' => 'Rollen <-> Benutzer',
        'Roles <-> Groups' => 'Rollen <-> Gruppen',
        'Salutations' => 'Anreden',
        'Signatures' => 'Signaturen',
        'Email Addresses' => 'E-Mail Adressen',
        'Notifications' => 'Benachrichtigungen',
        'Category Tree' => 'Kategorie Baum',
        'Admin Notification' => 'Admin-Benachrichtigung',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Benutzereinstellungen erfolgreich aktualisiert!',
        'Mail Management' => 'Mail Management',
        'Frontend' => 'Oberfl�che',
        'Other Options' => 'Andere Optionen',
        'Change Password' => 'Passwort �ndern',
        'New password' => 'Neues Passwort',
        'New password again' => 'Neues Passwort (wiederholen)',
        'Select your QueueView refresh time.' => 'Queue-Ansicht Aktualisierungszeit ausw�hlen.',
        'Select your frontend language.' => 'Oberfl�chen-Sprache ausw�hlen.',
        'Select your frontend Charset.' => 'Zeichensatz f�r Darstellung ausw�hlen.',
        'Select your frontend Theme.' => 'Anzeigeschema ausw�hlen.',
        'Select your frontend QueueView.' => 'Queue-Ansicht ausw�hlen.',
        'Spelling Dictionary' => 'Rechtschreib-W�rterbuch',
        'Select your default spelling dictionary.' => 'Standard Rechtschreib-W�rterbuch ausw�hlen.',
        'Max. shown Tickets a page in Overview.' => 'Maximale Anzahl angezeigter Tickets pro Seite in der �bersicht.',
        'Can\'t update password, your new passwords do not match! Please try again!' => 'Passw�rter sind nicht identisch! Bitte erneut versuchen!',
        'Can\'t update password, invalid characters!' => 'Passwort konnte nicht aktualisiert werden, Zeichen ung�lig.',
        'Can\'t update password, must be at least %s characters!' => 'Passwort konnte nicht aktualisiert werden, ben�tige min. %s Zeichen.',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => 'Passwort konnte nicht aktualisiert werden, ben�tige min. einen gro�geschriebener und einen kleingeschriebener Buchstaben.',
        'Can\'t update password, needs at least 1 digit!' => 'Passwort konnte nicht aktualisiert werden, Passwort muss mind. eine Zahl enthalten!',
        'Can\'t update password, needs at least 2 characters!' => 'Passwort konnte nicht aktualisiert werden, Passwort muss mind. zwei Buchstaben enthalten!',

        # Template: AAAStats
        'Stat' => 'Statistik',
        'Please fill out the required fields!' => 'Bitte f�llen Sie alle Pflichtfelder aus!',
        'Please select a file!' => 'Bitte w�hlen Sie eine Datei aus!',
        'Please select an object!' => 'Bitte w�hlen Sie ein Statistik-Objekt aus!',
        'Please select a graph size!' => 'Bitte legen Sie die Graphikgr��e fest!',
        'Please select one element for the X-axis!' => 'Bitte w�hlen Sie ein Element f�r die X-Achse aus!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Bitte w�hlen Sie nur ein Element aus oder entfernen Sie das H�kchen der Checkbox \'Fixed\'!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Wenn Sie Inhalte eines Auswahlfelds ausw�hlen m�ssen Sie mindestens zwei Attribute ausw�hlen!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Tragen Sie bitte etwas in die Eingabezeile ein oder entfernen Sie das H�kchen aus der Checkbox \'Fixed\'!',
        'The selected end time is before the start time!' => 'Die ausgew�hlte Endzeit ist vor der Startzeit!',
        'You have to select one or more attributes from the select field!' => 'Bitte w�hlen Sie bitte ein oder mehrere Attribute aus dem Auswahlfeld aus!',
        'The selected Date isn\'t valid!' => 'Sie haben ein ung�ltiges Datum ausgew�hlt!',
        'Please select only one or two elements via the checkbox!' => 'Bitte w�hlen Sie nur ein oder zwei Elemente aus!',
        'If you use a time scale element you can only select one element!' => 'Wenn Sie ein Zeit-Element ausgew�hlt haben, k�nnen Sie nur kein weiteres Element mehr ausw�hlen!',
        'You have an error in your time selection!' => 'Sie haben einen Fehler in Ihrer Zeitauswahl!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'Die Zeitskalierung ist zu klein gew�hlt, bitte w�hlen Sie eine gr��ere Zeitskalierung!',
        'The selected start time is before the allowed start time!' => 'Die gew�hlte Startzeit ist au�erhalb des erlaubten Bereichs!',
        'The selected end time is after the allowed end time!' => 'Die gew�hlte Endzeit ist au�erhalb des erlaubten Bereichs!',
        'The selected time period is larger than the allowed time period!' => 'Der gew�hlte Zeitraum ist gr��er als der erlaubte Zeitraum!',
        'Common Specification' => 'Allgemeine Angaben',
        'Xaxis' => 'X-Achse',
        'Value Series' => 'Wertereihen',
        'Restrictions' => 'Einschr�nkungen',
        'graph-lines' => 'Liniendiagramm',
        'graph-bars' => 'Balkendiagramm',
        'graph-hbars' => 'Balkendiagramm (horizontal)',
        'graph-points' => 'Punktdiagramm',
        'graph-lines-points' => 'Linienpunktdiagramm',
        'graph-area' => 'Fl�chendiagramm',
        'graph-pie' => 'Tortendiagramm',
        'extended' => 'erweitert',
        'Agent/Owner' => 'Agent/Besitzer',
        'Created by Agent/Owner' => 'Erstellt von Agent/Besitzer',
        'Created Priority' => 'Erstellt mit der Priorit�t',
        'Created State' => 'Erstellt mit dem Status',
        'Create Time' => 'Ticket erstellt',
        'CustomerUserLogin' => 'Kundenlogin',
        'Close Time' => 'Ticket geschlossen',
        'TicketAccumulation' => 'Ticket-Aufkommen',
        'Attributes to be printed' => 'Auszugebene Attribute',
        'Sort sequence' => 'Sortierreihenfolge',
        'Order by' => 'Sortieren nach',
        'Limit' => 'Limit',
        'Ticketlist' => 'Ticketliste',
        'ascending' => 'aufsteigend',
        'descending' => 'absteigend',
        'First Lock' => 'Erstmals gesperrt',
        'Evaluation by' => 'Auswertung nach',
        'Total Time' => 'Gesamtzeit',
        'Ticket Average' => 'Durchschnittszeit pro Ticket',
        'Ticket Min Time' => 'Ticket Minimalzeit',
        'Ticket Max Time' => 'Ticket Maximalzeit',
        'Number of Tickets' => 'Anzahl der Tickets',
        'Article Average' => 'Durchschnittszeit pro Artikel',
        'Article Min Time' => 'Artikel Minimalzeit',
        'Article Max Time' => 'Artikel Maximalzeit',
        'Number of Articles' => 'Anzahl der Artikel',
        'Accounted time by Agent' => 'Zeit zugewiesen von Agent',
        'Ticket/Article Accounted Time' => 'Zeit zugewiesen',
        'TicketAccountedTime' => 'Ticket-Bearbeitungszeiten',
        'Ticket Create Time' => 'Ticket erstellt',
        'Ticket Close Time' => 'Ticket geschlossen',

        # Template: AAATicket
        'Lock' => 'Sperren',
        'Unlock' => 'Freigeben',
        'History' => 'Historie',
        'Zoom' => 'Inhalt',
        'Age' => 'Alter',
        'Bounce' => 'Umleiten',
        'Forward' => 'Weiterleiten',
        'From' => 'Von',
        'To' => 'An',
        'Cc' => 'Cc',
        'Bcc' => 'Bcc',
        'Subject' => 'Betreff',
        'Move' => 'Verschieben',
        'Queue' => 'Queue',
        'Priority' => 'Priorit�t',
        'Priority Update' => 'Priorit�t aktualisieren',
        'State' => 'Status',
        'Compose' => 'Verfassen',
        'Pending' => 'Warten',
        'Owner' => 'Besitzer',
        'Owner Update' => 'Besitzer aktualisiert',
        'Responsible' => 'Verantwortlicher',
        'Responsible Update' => 'Verantwortlichen aktualisieren',
        'Sender' => 'Sender',
        'Article' => 'Artikel',
        'Ticket' => 'Ticket',
        'Createtime' => 'Erstellt am',
        'plain' => 'klar',
        'Email' => 'E-Mail',
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
        'Free Fields' => 'Freie Felder',
        'Merge' => 'Zusammenfassen',
        'merged' => 'zusammengef�gt',
        'closed successful' => 'erfolgreich geschlossen',
        'closed unsuccessful' => 'erfolglos geschlossen',
        'new' => 'neu',
        'open' => 'offen',
        'Open' => 'Offen',
        'closed' => 'geschlossen',
        'Closed' => 'Geschlossen',
        'removed' => 'entfernt',
        'pending reminder' => 'warten zur Erinnerung',
        'pending auto' => 'warten auto',
        'pending auto close+' => 'warten auf erfolgreich schlie�en',
        'pending auto close-' => 'warten auf erfolglos schlie�en',
        'email-external' => 'E-Mail an extern',
        'email-internal' => 'E-Mail an intern',
        'note-external' => 'Notiz f�r extern',
        'note-internal' => 'Notiz f�r intern',
        'note-report' => 'Notiz f�r reporting',
        'phone' => 'Telefon',
        'sms' => 'sms',
        'webrequest' => 'Webanfrage',
        'lock' => 'gesperrt',
        'unlock' => 'frei',
        'very low' => 'sehr niedrig',
        'low' => 'niedrig',
        'normal' => 'normal',
        'high' => 'hoch',
        'very high' => 'sehr hoch',
        '1 very low' => '1 sehr niedrig',
        '2 low' => '2 niedrig',
        '3 normal' => '3 normal',
        '4 high' => '4 hoch',
        '5 very high' => '5 sehr hoch',
        'Ticket "%s" created!' => 'Ticket "%s" erstellt!',
        'Ticket Number' => 'Ticket Nummer',
        'Ticket Object' => 'Ticket Objekt',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Ticketnummer "%s" nicht gefunden! Ticket konnte nicht verkn�pft werden!',
        'Don\'t show closed Tickets' => 'Geschlossene Tickets nicht zeigen',
        'Show closed Tickets' => 'Geschlossene Tickets anzeigen',
        'New Article' => 'Neuer Artikel',
        'Email-Ticket' => 'E-Mail-Ticket',
        'Create new Email Ticket' => 'Ein neues E-Mail-Ticket erstellen',
        'Phone-Ticket' => 'Telefon-Ticket',
        'Search Tickets' => 'Ticket-Suche',
        'Edit Customer Users' => 'Kunden-Benutzer bearbeiten',
        'Edit Customer Company' => 'Kunden-Firma bearbeiten',
        'Bulk Action' => 'Sammel-Aktion',
        'Bulk Actions on Tickets' => 'Sammel-Action an Tickets',
        'Send Email and create a new Ticket' => 'E-Mail senden und neues Ticket erstellen',
        'Create new Email Ticket and send this out (Outbound)' => 'Neues Ticket wird erstellt und Email versendet',
        'Create new Phone Ticket (Inbound)' => 'Neues Ticket wird �ber einkommenden Anruf erstellt',
        'Overview of all open Tickets' => '�bersicht �ber alle offenen Tickets',
        'Locked Tickets' => 'Gesperrte Tickets',
        'Watched Tickets' => 'Beobachtete Tickets',
        'Watched' => 'Beobachtet',
        'Subscribe' => 'Abonnieren',
        'Unsubscribe' => 'Ababonnieren',
        'Lock it to work on it!' => 'Sperren um es zu bearbeiten!',
        'Unlock to give it back to the queue!' => 'Freigeben um es in die Queue zur�ck zu geben!',
        'Shows the ticket history!' => 'Ticket Historie anzeigen!',
        'Print this ticket!' => 'Ticket drucken!',
        'Change the ticket priority!' => '�ndern der Ticket-Priorit�t',
        'Change the ticket free fields!' => '�ndern der Ticket-Frei-Felder',
        'Link this ticket to an other objects!' => 'Ticket zu anderen Objekten verkn�pfen!',
        'Change the ticket owner!' => '�ndern des Ticket-Besitzers!',
        'Change the ticket customer!' => '�ndern des Ticket-Kunden!',
        'Add a note to this ticket!' => 'Hinzuf�gen einer Notiz!',
        'Merge this ticket!' => 'Ticket mit einem anderen vereinen!',
        'Set this ticket to pending!' => 'Setzen des Tickets auf -warten auf-!',
        'Close this ticket!' => 'Ticket schlie�en!',
        'Look into a ticket!' => 'Ticket genauer ansehen!',
        'Delete this ticket!' => 'Ticket l�schen!',
        'Mark as Spam!' => 'Als Spam makieren!',
        'My Queues' => 'Meine Queues',
        'Shown Tickets' => 'Gezeigte Tickets',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Ihre E-Mail mit Ticket-Nummer "<OTRS_TICKET>" wurde zu Ticket-Nummer "<OTRS_MERGE_TO_TICKET>" gemerged!',
        'Ticket %s: first response time is over (%s)!' => 'Ticket %s: Reaktionszeit ist abgelaufen (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Ticket %s: Reaktionszeit wird ablaufen in %s!',
        'Ticket %s: update time is over (%s)!' => 'Ticket %s: Aktualisierungszeit ist abgelaufen (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Ticket %s: Aktualisierungszeit wird ablaufen in %s!',
        'Ticket %s: solution time is over (%s)!' => 'Ticket %s: L�sungszeit ist abgelaufen (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Ticket %s: L�sungszeit wird ablaufen in %s!',
        'There are more escalated tickets!' => 'Mehrere eskalierte Tickets vorhanden!',
        'New ticket notification' => 'Mitteilung bei neuem Ticket',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Zusenden einer Mitteilung bei neuem Ticket in "Meine Queues".',
        'Follow up notification' => 'Mitteilung bei Nachfragen',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Zusenden einer Mitteilung, wenn ein Kunde eine Nachfrage stellt und ich der Besitzer bin.',
        'Ticket lock timeout notification' => 'Mitteilung bei �berschreiten der Sperrzeit',
        'Send me a notification if a ticket is unlocked by the system.' => 'Zusenden einer Mitteilung, wenn ein Ticket vom System freigegeben ("unlocked") wird.',
        'Move notification' => 'Mitteilung bei Queue-Wechsel',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Zusenden einer Mitteilung beim Verschieben eines Tickets in "Meine Queues".',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Queue Auswahl der bevorzugten Queues. Es werden E-Mail-Benachrichtigungen �ber diese ausgew�hlten Queues versendet.',
        'Custom Queue' => 'Bevorzugte Queue',
        'QueueView refresh time' => 'Queue-Ansicht Aktualisierungszeit',
        'Screen after new ticket' => 'Fenster nach neuem Ticket',
        'Select your screen after creating a new ticket.' => 'Auswahl des Fensters, das nach der Erstellung eines neuen Tickets angezeigt werden soll.',
        'Closed Tickets' => 'Geschlossene Tickets',
        'Show closed tickets.' => 'Geschlossene Tickets anzeigen.',
        'Max. shown Tickets a page in QueueView.' => 'Maximale Anzahl angezeigter Tickets pro Seite in der Queue-Ansicht.',
        'Watch notification' => 'Beobachter Benachrichtigung',
        'Send me a notification of an watched ticket like an owner of an ticket.' => 'Informierte mich �ber �nderungen an beobachteten Tickets (als ob ich der Besitzer eines Ticket w�re).',
        'Out Of Office' => 'Abwesenheit',
        'Select your out of office time.' => 'Bitte die Abwesenheitszeit ausw�hlen.',
        'CompanyTickets' => 'Firmen Ticket',
        'MyTickets' => 'Meine Tickets',
        'New Ticket' => 'Neues Ticket',
        'Create new Ticket' => 'Neues Ticket erstellen',
        'Customer called' => 'Kunden angerufen',
        'phone call' => 'Telefonanruf',
        'Reminder Reached' => 'Erinnerung erreicht',
        'Reminder Tickets' => 'Erinnerungs Tickets',
        'Escalated Tickets' => 'Eskalierte Tickets',
        'New Tickets' => 'Neue Tickets',
        'Open Tickets / Need to be answered' => 'Offene Tickets / Zur Beantwortung',
        'Tickets which need to be answered!' => 'Tickets welche beantwortet werden m�ssen!',
        'All new tickets!' => 'Alle neuen Tickets!',
        'All tickets which are escalated!' => 'Alle eskalierten Tickets!',
        'All tickets where the reminder date has reached!' => 'Alle Tickets welche die Wiedervorlage erreicht haben!',
        'Responses' => 'Antworten',
        'Responses <-> Queue' => 'Antworten <-> Queues',
        'Auto Responses' => 'Auto Antworten',
        'Auto Responses <-> Queue' => 'Auto Antworten <-> Queues',
        'Attachments <-> Responses' => 'Anlagen <-> Antworten',
        'History::Move' => 'Ticket verschoben in Queue "%s" (%s) von Queue "%s" (%s).',
        'History::TypeUpdate' => 'Typ aktualisiert "%s" (ID=%s).',
        'History::ServiceUpdate' => 'Service aktualisiert "%s" (ID=%s).',
        'History::SLAUpdate' => 'SLA aktualisiert "%s" (ID=%s).',
        'History::NewTicket' => 'Neues Ticket [%s] erstellt (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'FollowUp f�r [%s]. %s',
        'History::SendAutoReject' => 'AutoReject an "%s" versandt.',
        'History::SendAutoReply' => 'AutoReply an "%s" versandt.',
        'History::SendAutoFollowUp' => 'AutoFollowUp an "%s" versandt.',
        'History::Forward' => 'Weitergeleitet an "%s".',
        'History::Bounce' => 'Bounced an "%s".',
        'History::SendAnswer' => 'E-Mail versandt an "%s".',
        'History::SendAgentNotification' => '"%s"-Benachrichtigung versandt an "%s".',
        'History::SendCustomerNotification' => 'Benachrichtigung versandt an "%s".',
        'History::EmailAgent' => 'E-Mail an Kunden versandt.',
        'History::EmailCustomer' => 'E-Mail hinzugef�gt. %s',
        'History::PhoneCallAgent' => 'Kunden angerufen.',
        'History::PhoneCallCustomer' => 'Kunde hat angerufen.',
        'History::AddNote' => 'Notiz hinzugef�gt (%s)',
        'History::Lock' => 'Ticket gesperrt.',
        'History::Unlock' => 'Ticketsperre aufgehoben.',
        'History::TimeAccounting' => '%s Zeiteinheit(en) gez�hlt. Insgesamt %s Zeiteinheit(en).',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Aktualisiert: %s',
        'History::PriorityUpdate' => 'Priorit�t aktualisiert von "%s" (%s) nach "%s" (%s).',
        'History::OwnerUpdate' => 'Neuer Besitzer ist "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop-Protection! Keine Auto-Antwort versandt an "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Aktualisiert: %s',
        'History::StateUpdate' => 'Alt: "%s" Neu: "%s"',
        'History::TicketFreeTextUpdate' => 'Aktualisiert: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Kunde stellte Anfrage �ber Web.',
        'History::TicketLinkAdd' => 'Verkn�pfung zu "%s" hergestellt.',
        'History::TicketLinkDelete' => 'Verkn�pfung zu "%s" gel�scht.',
        'History::Subscribe' => 'Abo f�r Benutzer "%s" eingetragen.',
        'History::Unsubscribe' => 'Abo f�r Benutzer "%s" ausgetragen.',

        # Template: AAAWeekDay
        'Sun' => 'Son',
        'Mon' => 'Mon',
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
        'To get the first 20 character of the subject.' => 'Die ersten 20 Zeichen des Betreffs',
        'To get the first 5 lines of the email.' => 'Die ersten f�nf Zeilen der Nachricht',
        'To get the realname of the sender (if given).' => 'Der Name des Benutzers (soweit bekannt)',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'Die Artikel Attribute (z. B. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Details zum aktuellen Kunden (z. B. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Details zum Ticket-Besitzer (z. B. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Details zum Ticket-Verantwortlichen (z. B.<OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'Details zum aktuellen Benutzer, der diese Aktion veranlasst hat (z. B. <OTRS_CURRENT_UserFirstname).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'Detailinformation zum Ticket (z. B. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Konfigurations Optionen (z. B. <OTRS_CONFIG_HttpType).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Kunden-Firma Verwaltung',
        'Search for' => 'Suche nach',
        'Add Customer Company' => 'Kunden-Firma hinzuf�gen',
        'Add a new Customer Company.' => 'Eine neue Kunden-Firma hinzuf�gen.',
        'List' => 'Liste',
        'This values are required.' => 'Diese Inhalte werden ben�tigt.',
        'This values are read only.' => 'Diese Inhalte sind schreibgesch�tzt.',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => 'Die erstellte Nachricht wurde geschlossen.',
        'This window must be called from compose window' => 'Dieses Fenster muss �ber das Verfassen-Fenster aufgerufen werden',
        'Customer User Management' => 'Kunden-Benutzer Verwaltung',
        'Add Customer User' => 'Kunden-Benutzer hinzuf�gen',
        'Source' => 'Quelle',
        'Create' => 'Erstellen',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'Kunden-Benutzer werden f�r Kunden-Historien und f�r die Benutzung von Kunden-Weboberfl�che ben�tigt.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'Kundenbenutzer <-> Gruppen Verwaltung',
        'Change %s settings' => '�ndern der %s Einstellungen',
        'Select the user:group permissions.' => 'Auswahl der Benutzer/Gruppen Berechtigungen.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Ist nichts ausgew�hlt, sind keine Rechte vergeben (diese Tickets sind f�r den Benutzer nicht verf�gbar).',
        'Permission' => 'Rechte',
        'ro' => 'ro',
        'Read only access to the ticket in this group/queue.' => 'Nur-Lesen-Zugriff auf Tickets in diesen Gruppen/Queues.',
        'rw' => 'rw',
        'Full read and write access to the tickets in this group/queue.' => 'Voller Schreib- und Lesezugriff auf Tickets in der Queue/Gruppe.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Kundenbenutzer <-> Services Verwaltung',
        'CustomerUser' => 'Kundenbenutzer',
        'Service' => 'Service',
        'Edit default services.' => 'Standard-Services bearbeiten.',
        'Search Result' => 'Such-Ergebnis',
        'Allocate services to CustomerUser' => 'Services zuordnen zum Kundenbenutzer',
        'Active' => 'Aktiv',
        'Allocate CustomerUser to service' => 'Kundenbenutzer zuordnen zum Service',

        # Template: AdminEmail
        'Message sent to' => 'Nachricht gesendet an',
        'A message should have a subject!' => 'Eine Nachricht sollte einen Betreff haben!',
        'Recipients' => 'Empf�nger',
        'Body' => 'Text',
        'Send' => 'Senden',

        # Template: AdminGenericAgent
        'GenericAgent' => 'GenericAgent',
        'Job-List' => 'Job-Liste',
        'Last run' => 'Letzte Ausf�hrung',
        'Run Now!' => 'Jetzt ausf�hren!',
        'x' => 'x',
        'Save Job as?' => 'Speichere Job als?',
        'Is Job Valid?' => 'Ist Job g�ltig?',
        'Is Job Valid' => 'Ist Job g�ltig',
        'Schedule' => 'Zeitplan',
        'Currently this generic agent job will not run automatically.' => 'Derzeit w�rde dieser GenericAgentJob nicht automatisch ausgef�hrt werden.',
        'To enable automatic execution select at least one value from minutes, hours and days!' => 'Um ihn automatisch auszuf�hren mu� mindestens ein Wert vom Minuten, Stunden und Tagen ausgew�hlt werden!',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Volltextsuche in Artikel (z. B. "Mar*in" oder "Baue*")',
        '(e. g. 10*5155 or 105658*)' => 'z .B. 10*5144 oder 105658*',
        '(e. g. 234321)' => 'z. B. 234321',
        'Customer User Login' => 'Kunden-Benutzer-Login',
        '(e. g. U5150)' => 'z. B. U5150',
        'SLA' => 'SLA',
        'Agent' => 'Agent',
        'Ticket Lock' => 'Ticket sperren',
        'TicketFreeFields' => 'TicketFreiFelder',
        'Create Times' => 'Erstell-Zeiten',
        'No create time settings.' => 'Keine Erstell-Zeiten',
        'Ticket created' => 'Ticket erstellt',
        'Ticket created between' => 'Ticket erstellt zwischen',
        'Close Times' => 'Schlie�-Zeiten',
        'No close time settings.' => 'keine Schlie�-Zeiten',
        'Ticket closed' => 'Ticket geschlossen',
        'Ticket closed between' => 'Ticket geschlossen zwischen',
        'Pending Times' => 'Warten-Zeiten',
        'No pending time settings.' => 'Keine Warten-Zeiten',
        'Ticket pending time reached' => 'Ticket Warten-Zeit erreicht',
        'Ticket pending time reached between' => 'Ticket Warten-Zeit erreicht zwischen',
        'Escalation Times' => 'Eskalations-Zeiten',
        'No escalation time settings.' => 'Keine Eskalations-Zeiten',
        'Ticket escalation time reached' => 'Ticket Eskalations-Zeit erreicht',
        'Ticket escalation time reached between' => 'Ticket Eskalations-Zeit erreicht zwischen',
        'Escalation - First Response Time' => 'Eskalation - Reaktionszeit',
        'Ticket first response time reached' => 'Ticket Reaktionszeit erreicht',
        'Ticket first response time reached between' => 'Ticket Reaktionszeit erreicht zwischen',
        'Escalation - Update Time' => 'Eskalation - Aktualisierungszeit',
        'Ticket update time reached' => 'Ticket Aktuallisierungszeit erreicht',
        'Ticket update time reached between' => 'Ticket Aktuallisierungszeit erreicht zwischen',
        'Escalation - Solution Time' => 'Eskalation - L�sungszeit',
        'Ticket solution time reached' => 'Ticket L�sungszeit erreicht',
        'Ticket solution time reached between' => 'Ticket L�sungszeit erreicht zwischen',
        'New Service' => 'Neuer Service',
        'New SLA' => 'Neuer SLA',
        'New Priority' => 'Neue Priorit�t',
        'New Queue' => 'Neue Queue',
        'New State' => 'Neuer Status',
        'New Agent' => 'Neuer Besitzer',
        'New Owner' => 'Neuer Besitzer',
        'New Customer' => 'Neuer Kunde',
        'New Ticket Lock' => 'Neues Ticket Lock',
        'New Type' => 'Neuer Typ',
        'New Title' => 'Neuer Titel',
        'New TicketFreeFields' => 'Neue TicketFreiFelder',
        'Add Note' => 'Notiz hinzuf�gen',
        'Time units' => 'Zeiteinheiten',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Dieses Kommando wird mit ARG[0] (die Ticket Nummer) und ARG[1] die TicketID ausgef�hrt.',
        'Delete tickets' => 'Tickets L�schen',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Warnung! Alle diese Tickets werden von der Datenbank entfernt! Diese Tickets sind nicht wiederherstellbar!',
        'Send Notification' => 'Senden der Benachrichtigung',
        'Param 1' => 'Param 1',
        'Param 2' => 'Param 2',
        'Param 3' => 'Param 3',
        'Param 4' => 'Param 4',
        'Param 5' => 'Param 5',
        'Param 6' => 'Param 6',
        'Send agent/customer notifications on changes' => 'Sende eine Agent/Kunden Benachrichtigung bei �nderungen',
        'Save' => 'Speichern',
        '%s Tickets affected! Do you really want to use this job?' => '%s Tickets sind betroffen! Wollen Sie diesen Job wirklich benutzen?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => 'VORSICHT: Wenn Sie den Namen der \'admin\'-Gruppe �ndern ohne zuvor die entsprechenden Anpassungen in der SysConfig get�tigt haben, verlieren Sie den Zugang zum Adminbereich!',
        'Group Management' => 'Gruppen Verwaltung',
        'Add Group' => 'Gruppe hinzuf�gen',
        'Add a new Group.' => 'Eine neue Gruppe hinzuf�gen.',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Die \'admin\'-Gruppe wird f�r den Admin-Bereich ben�tigt, die \'stats\'-Gruppe f�r den Statistik-Bereich.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Erstellen Sie neue Gruppen, um die Zugriffe f�r verschiedene Agenten-Gruppen zu definieren (z. B. Einkaufs-Abteilung, Support-Abteilung, Verkaufs-Abteilung,...).',
        'It\'s useful for ASP solutions.' => 'N�tzlich f�r ASP-L�sungen.',

        # Template: AdminLog
        'System Log' => 'System Log',
        'Time' => 'Zeit',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Mail Account Management',
        'Host' => 'Host',
        'Trusted' => 'Vertraut',
        'Dispatching' => 'Verteilung',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Einkommende E-Mails von POP3-Konten werden in die ausgew�hlte Queue einsortiert!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Wird dem Konto vertraut, werden die X-OTRS Header benutzt! PostMaster Filter werden trotzdem benutzt.',

        # Template: AdminNavigationBar
        'Users' => 'Benutzer',
        'Groups' => 'Gruppen',
        'Misc' => 'Sonstiges',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Benachrichtigungs Verwaltung',
        'Add Notification' => 'Benachrichtigung hinzuf�gen',
        'Add a new Notification.' => 'Eine neue Benachrichtigung hinzuf�gen',
        'Name is required!' => 'Name wird ben�tigt!',
        'Event is required!' => 'Ereignis ist ben�tigt!',
        'A message should have a body!' => 'Eine Nachricht sollte einen Body haben!',
        'Recipient' => 'Empf�nger',
        'Group based' => 'Gruppen basierend',
        'Agent based' => 'Agenten basierend',
        'Email based' => 'Email basierend',
        'Article Type' => 'Artikel Typ',
        'Only for ArticleCreate Event.' => 'Nur f�r Ereignis ArticleCreate.',
        'Subject match' => 'Betreff treffer',
        'Body match' => 'Body treffer',
        'Notifications are sent to an agent or a customer.' => 'Benachrichtigungen werden an Agenten und Kunden gesendet.',
        'To get the first 20 character of the subject (of the latest agent article).' => 'Die ersten 20 Zeichen des Betreffs (des letzten Agenten-Artikel).',
        'To get the first 5 lines of the body (of the latest agent article).' => 'Die ersten f�nf Zeilen der Nachricht (des letzten Agenten-Artikel).',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => 'Die Artikel Attribute (z. B. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> und <OTRS_AGENT_Body>).',
        'To get the first 20 character of the subject (of the latest customer article).' => 'Die ersten 20 Zeichen des Betreffs (des letzten Kunden-Artikel)',
        'To get the first 5 lines of the body (of the latest customer article).' => 'Die ersten f�nf Zeilen der Nachricht (des letzten Kunden-Artikel).',

        # Template: AdminNotificationForm
        'Notification' => 'Benachrichtigung',

        # Template: AdminPackageManager
        'Package Manager' => 'Paket Verwaltung',
        'Uninstall' => 'Deinstallieren',
        'Version' => 'Version',
        'Do you really want to uninstall this package?' => 'Soll das Paket wirklich deinstalliert werden?',
        'Reinstall' => 'Erneut installieren',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Soll das Paket wirklich erneut installiert werden (manuelle �nderungen gehen verloren)?',
        'Continue' => 'Weiter',
        'Install' => 'Installieren',
        'Package' => 'Paket',
        'Online Repository' => 'Online Repository',
        'Vendor' => 'Anbieter',
        'Module documentation' => 'Moduldokumentation',
        'Upgrade' => 'Erneuern',
        'Local Repository' => 'Lokales Repository',
        'Status' => 'Status',
        'Overview' => '�bersicht',
        'Download' => 'Herunterladen',
        'Rebuild' => 'Rebuild',
        'ChangeLog' => 'ChangeLog',
        'Date' => 'Datum',
        'Filelist' => 'Dateiliste',
        'Download file from package!' => 'Datei aus dem Paket herunterladen!',
        'Required' => 'Ben�tigt',
        'PrimaryKey' => 'PrimaryKey',
        'AutoIncrement' => 'AutoIncrement',
        'SQL' => 'SQL',
        'Diff' => 'Diff',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Performance Log',
        'This feature is enabled!' => 'Dieses Feature ist aktiv!',
        'Just use this feature if you want to log each request.' => 'Nur aktivieren wenn jede Anfrage protokolliert werden soll.',
        'Activating this feature might affect your system performance!' => 'Wenn dieses Feature aktiv ist, ist mit Leistungsdefizit zu rechnen.',
        'Disable it here!' => 'Hier deaktivieren!',
        'This feature is disabled!' => 'Dieses Feature ist inaktiv!',
        'Enable it here!' => 'Hier aktivieren!',
        'Logfile too large!' => 'Logdatei zu gro�!',
        'Logfile too large, you need to reset it!' => 'Die Logdatei ist zu gro�, bitte zur�cksetzen!',
        'Range' => 'Bereich',
        'Interface' => 'Interface',
        'Requests' => 'Anfragen',
        'Min Response' => 'Min. Antwortzeit',
        'Max Response' => 'Max. Antwortzeit',
        'Average Response' => 'Durchschnittliche Antwortzeit',
        'Period' => 'Periode',
        'Min' => 'Min',
        'Max' => 'Max',
        'Average' => 'Durchschnitt',

        # Template: AdminPGPForm
        'PGP Management' => 'PGP Verwaltung',
        'Result' => 'Ergebnis',
        'Identifier' => 'Identifikator',
        'Bit' => 'Bit',
        'Key' => 'Schl�ssel',
        'Fingerprint' => 'Fingerabdruck',
        'Expires' => 'Erlischt',
        'In this way you can directly edit the keyring configured in SysConfig.' => '�ber diesen Weg kann man den Schl�sselring (konfiguriert in SysConfig) direkt bearbeiten.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'PostMaster Filter Verwaltung',
        'Filtername' => 'Filtername',
        'Stop after match' => 'Stoppen nach Treffer',
        'Match' => 'Treffer',
        'Value' => 'Wert',
        'Set' => 'Setzen',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Verteilt oder Filtern einkommende E-Mail anhand der X-Headers! RegExp ist auch m�glich.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Wenn nur eine Email-Adresse gesucht wird, dann benutz EMAILADDRESS:info@example.com in Von, An oder Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Ist RegExp benutzt, k�nnen Sie auch den Inhalt von () als [***] in \'Setzen\' benutzen.',

        # Template: AdminPriority
        'Priority Management' => 'Priorit�t Verwaltung',
        'Add Priority' => 'Priorit�t hinzuf�gen',
        'Add a new Priority.' => 'Eine neue Priorit�t hinzuf�gen.',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'Queue <-> Auto Antworten Verwaltung',
        'settings' => 'Einstellungen',

        # Template: AdminQueueForm
        'Queue Management' => 'Queue Verwaltung',
        'Sub-Queue of' => 'Unterqueue von',
        'Unlock timeout' => 'Freigabe-Zeitintervall',
        '0 = no unlock' => '0 = keine Freigabe',
        'Only business hours are counted.' => 'Nur Gesch�ftszeiten werden ber�cksichtigt.',
        '0 = no escalation' => '0 = keine Eskalation',
        'Notify by' => 'Benachrichtigt von',
        'Follow up Option' => 'Nachfrage Option',
        'Ticket lock after a follow up' => 'Ticket sperren nach einem Follow-Up',
        'Systemaddress' => 'Systemadresse',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Wird ein Ticket durch einen Agent gesperrt, jedoch nicht in dieser Zeit beantwortet, wird das Ticket automatisch freigegeben.',
        'Escalation time' => 'Eskalationszeit',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Wird ein Ticket nicht in dieser Zeit beantwortet, wird nur noch dieses Ticket gezeigt.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Wenn ein Ticket geschlossen ist und der Kunde ein Follow-Up sendet, wird das Ticket f�r den alten Besitzer gesperrt.',
        'Will be the sender address of this queue for email answers.' => 'Absenderadresse f�r E-Mails aus dieser Queue.',
        'The salutation for email answers.' => 'Die Anrede f�r E-Mail-Antworten.',
        'The signature for email answers.' => 'Die Signatur f�r E-Mail-Antworten.',
        'Customer Move Notify' => 'Kundeninfo Verschieben',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS sendet eine Info-E-Mail an Kunden beim Verschieben des Tickets.',
        'Customer State Notify' => 'Kundeninfo Status',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS sendet eine Info E-Mail an Kunden beim �ndern des Status.',
        'Customer Owner Notify' => 'Kundeninfo Besitzer',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS sendet eine Info E-Mail an Kunden beim �ndern des Besitzers.',

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
        'The current ticket state is' => 'Der aktuelle Ticket-Status ist',
        'Your email address is new' => 'Deine E-Mail-Adresse ist neu',

        # Template: AdminRoleForm
        'Role Management' => 'Rollen Verwaltung',
        'Add Role' => 'Rolle hinzuf�gen',
        'Add a new Role.' => 'Eine neue Rolle hinzuf�gen.',
        'Create a role and put groups in it. Then add the role to the users.' => 'Erstelle eine Rolle und weise Gruppen hinzu. Danach f�ge Benutzer zu den Rollen hinzu.',
        'It\'s useful for a lot of users and groups.' => 'Es ist sehr n�tzlich wenn man viele Gruppen und Benutzer hat.',

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
        'Role' => 'Rolle',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'Rollen <-> Benutzer Verwaltung',
        'Select the role:user relations.' => 'Auswahl der Rollen:Benutzer Beziehungen.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Anreden Verwaltung',
        'Add Salutation' => 'Anrede hinzuf�gen',
        'Add a new Salutation.' => 'Eine neue Anrede hinzuf�gen.',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => 'Secure Mode muss aktiviert werden!',
        'Secure mode will (normally) be set after the initial installation is completed.' => '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'SQL Box',
        'Go' => 'Go',
        'Select Box Result' => 'Select Box Ergebnis',

        # Template: AdminService
        'Service Management' => 'Service Verwaltung',
        'Add Service' => 'Service hinzuf�gen',
        'Add a new Service.' => 'Einen neuen Service hinzuf�gen.',
        'Sub-Service of' => 'Unterservice von',

        # Template: AdminSession
        'Session Management' => 'Sitzungsverwaltung',
        'Sessions' => 'Sitzung',
        'Uniq' => 'Uniq',
        'Kill all sessions' => 'L�schen aller Sessions',
        'Session' => 'Session',
        'Content' => 'Inhalt',
        'kill session' => 'Sitzung l�schen',

        # Template: AdminSignatureForm
        'Signature Management' => 'Signatur Verwaltung',
        'Add Signature' => 'Signatur hinzuf�gen',
        'Add a new Signature.' => 'Eine neue Signatur hinzuf�gen.',

        # Template: AdminSLA
        'SLA Management' => 'SLA Verwaltung',
        'Add SLA' => 'SLA hinzuf�gen',
        'Add a new SLA.' => 'Einen neuen SLA hinzuf�gen.',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME Verwaltung',
        'Add Certificate' => 'Zertifikat hinzuf�gen',
        'Add Private Key' => 'Privaten Schl�ssel hinzuf�gen',
        'Secret' => 'Secret',
        'Hash' => 'Hash',
        'In this way you can directly edit the certification and private keys in file system.' => '�ber diesen Weg k�nnen die Zertifikate und privaten Schl�ssel im Dateisystem bearbeitet werden.',

        # Template: AdminStateForm
        'State Management' => 'Status Verwaltung',
        'Add State' => 'Status hinzuf�gen',
        'Add a new State.' => 'Einen neuen Status hinzuf�gen.',
        'State Type' => 'Status-Typ',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Beachte, dass auch der default-Status in Kernel/Config.pm ge�ndert werden muss!',
        'See also' => 'Siehe auch',

        # Template: AdminSysConfig
        'SysConfig' => 'SysConfig',
        'Group selection' => 'Gruppenauswahl',
        'Show' => 'Zeigen',
        'Download Settings' => 'Einstellungen herunterladen',
        'Download all system config changes.' => 'Herunterladen aller �nderungen der Konfiguration.',
        'Load Settings' => 'Einstellungen hinaufladen',
        'Subgroup' => 'Untergruppe',
        'Elements' => 'Elemente',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Config Einstellungen',
        'Default' => 'Default',
        'New' => 'Neu',
        'New Group' => 'Neue Gruppe',
        'Group Ro' => 'Gruppe Ro',
        'New Group Ro' => 'Neue Gruppe Ro',
        'NavBarName' => 'NavBarName',
        'NavBar' => 'NavBar',
        'Image' => 'Image',
        'Prio' => 'Prio',
        'Block' => 'Block',
        'AccessKey' => 'AccessKey',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'E-Mail-Adressen Verwaltung',
        'Add System Address' => 'System Adresse hinzuf�gen',
        'Add a new System Address.' => 'Eine neue Systemadresse hinzuf�gen.',
        'Realname' => 'Tats�chlicher Name',
        'All email addresses get excluded on replaying on composing an email.' => 'Alle Email-Adressen werden beim Erstellen einer Antwort exkludiert.',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alle eingehenden E-Mails mit diesem Empf�nger (To:) werden in die ausgew�hlte Queue einsortiert.',

        # Template: AdminTypeForm
        'Type Management' => 'Typ Verwaltung',
        'Add Type' => 'Typ hinzuf�gen',
        'Add a new Type.' => 'Einen neuen Typ hinzuf�gen.',

        # Template: AdminUserForm
        'User Management' => 'Benutzer Verwaltung',
        'Add User' => 'Benutzer hinzuf�gen',
        'Add a new Agent.' => 'Einen neuen Agenten hinzuf�gen.',
        'Login as' => 'Anmelden als',
        'Firstname' => 'Vorname',
        'Lastname' => 'Nachname',
        'Start' => 'Start',
        'End' => 'Ende',
        'User will be needed to handle tickets.' => 'Benutzer werden ben�tigt, um Tickets zu bearbeiten.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Ein neuer Benutzer muss einer Gruppe und/oder Rollen zugewiesen werden!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'Benutzer <-> Gruppen Verwaltung',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Adressbuch',
        'Return to the compose screen' => 'Zur�ck zum Verfassen-Fenster',
        'Discard all changes and return to the compose screen' => 'Alle �nderungen verwerfen und zur�ck zum Verfassen-Fenster',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerSearch

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => 'Dashboard',

        # Template: AgentDashboardCalendarOverview
        'in' => 'in',

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s ist nun verf�gbar!',
        'Please update now.' => 'Bitte nun aktuallisieren.',
        'Release Note' => 'Versionsbeschreibung',
        'Level' => 'Level',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Ver�ffentlicht vor %s.',

        # Template: AgentDashboardTicketOverview

        # Template: AgentDashboardTicketStats

        # Template: AgentInfo
        'Info' => 'Info',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Verkn�pfung erstellen: %s',
        'Object' => 'Objekt',
        'Link Object' => 'Verkn�pfe Objekt',
        'with' => 'mit',
        'Select' => 'Auswahl',
        'Unlink Object: %s' => 'Verkn�pfung aufheben: %s',

        # Template: AgentLookup
        'Lookup' => 'Lookup',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Rechtschreibpr�fung',
        'spelling error(s)' => 'Rechtschreibfehler',
        'or' => 'oder',
        'Apply these changes' => '�nderungen �bernehmen',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Soll das Objekt wirklich gel�scht werden?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'Auswahl der Einschr�nkungen zur Charaktarisierung der Statistik',
        'Fixed' => 'Fixiert',
        'Please select only one element or turn off the button \'Fixed\'.' => 'Bitte w�hlen Sie nur ein Attribut aus oder entfernen Sie das H�kchen der Checkbox \'Fixiert\'!',
        'Absolut Period' => 'Absoluter Zeitraum',
        'Between' => 'Zwischen',
        'Relative Period' => 'Relativer Zeitraum',
        'The last' => 'Die letzten',
        'Finish' => 'Abschlie�en',
        'Here you can make restrictions to your stat.' => 'Dieses Formular wird dazu verwendet die Einschr�nkungen f�r die Statistik zu definieren.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Wenn Sie den Haken in der "Fixiert" Checkbox entfernen, kann der Agent der die Statistik erstellt, die Attribute des entsprechenden Elements ver�ndern.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Eingabe der allgemeinen Angaben',
        'Permissions' => 'Rechtevergabe',
        'Format' => 'Format',
        'Graphsize' => 'Graphikgr��e',
        'Sum rows' => 'Zeilensummierung',
        'Sum columns' => 'Spaltensummierung',
        'Cache' => 'Cache',
        'Required Field' => 'Pflichtfeld',
        'Selection needed' => 'Auswahl n�tig',
        'Explanation' => 'Erkl�rung',
        'In this form you can select the basic specifications.' => 'Diese Eingabeoberfl�che ist f�r die Eingabe der allgemeinen Angaben.',
        'Attribute' => 'Attribut',
        'Title of the stat.' => 'Titel der Statistik.',
        'Here you can insert a description of the stat.' => 'An dieser Stelle mu� die Beschreibung eingegeben werden.',
        'Dynamic-Object' => 'Dynamisches Objekt',
        'Here you can select the dynamic object you want to use.' => 'Hier kann das zu benutzende dynamische Objekt ausgew�hlt werden.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(Anmerkung: Es ist installationsabh�ngig wieviele dynamische Objekte angezeigt werden)',
        'Static-File' => 'Statische Datei',
        'For very complex stats it is possible to include a hardcoded file.' => 'Bei sehr komplexen Statistiken ist es m�glich Programmdateien zu integrieren.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'Sind neue Programmdateien verf�gbar, werden diese angezeigt.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Rechtevergabe: Sie k�nnen eine oder mehrere Gruppen ausw�hlen, um die Statistiken f�r die entsprechenden Agents sichtbar zu machen.',
        'Multiple selection of the output format.' => 'Auswahl der m�glichen Ausgabeformate.',
        'If you use a graph as output format you have to select at least one graph size.' => 'Wenn Sie als Ausgabeformat eine Graphik ausgew�hlt haben, m�ssen Sie hier die Graphikgr��e ausw�hlen.',
        'If you need the sum of every row select yes' => 'Wenn die eine Summierung der Reihen ben�tigen, w�hlen Sie bitte \'Yes\'.',
        'If you need the sum of every column select yes.' => 'Wenn Sie eine Summierung der Spalten ben�tigen, w�hlen Sie bitte \'Yes\'.',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'Die meisten der Statistiken k�nnen gecached werden. Diese beschleunigt das wiederholte aufrufen einer Statistik.',
        '(Note: Useful for big databases and low performance server)' => '(Anmerkung: Dies ist sinnvoll f�r gro�e Datenbanken und langsame Server)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Durch das Setzen einer Statistik auf \'ung�ltig\', kann man es f�r die Benutzung sperren.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'Dies ist sinnvoll, wenn man nicht will, dass diese Statistik aktuell genutzt wird oder die Statistik noch nicht fertig konfiguriert ist.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'Auswahl der Elemente f�r die Wertereihen',
        'Scale' => 'Skalierung',
        'minimal' => 'minimal',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Bitte bedenken Sie, dass die Zeitskalierung f�r die Wertereihen gr��er sein muss als f�r die X-Achse (z. B. X-Achse => Monat; Wertereihe => Jahr).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Auf dieser Seite werden die Wertereihen festgelegt. Jedes Attribut wird als einzelne Wertereihe dargestellt. Wenn Sie keine Attribute ausw�hlen werden alle Attribute bei der Generierung einer Statistik verwendet. Auch, wenn ein neues Attribut nach der Statistikkonfiguration hinzugef�gt wird.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'Auswahl des Elements, welches f�r die X-Achse genutzt wird.',
        'maximal period' => 'maximaler Zeitraum',
        'minimal scale' => 'minimale Skalierung',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Auf dieser Seite wird die X-Achse definert. Sie k�nnen ein Element per Optionsfeld ausw�hlen. Wenn Sie keine Attribute des Elements ausw�hlen werden alle Attribute verwendet. Auch solche die nach der Konfiguration der Statistik erst hinzukommen.',

        # Template: AgentStatsImport
        'Import' => 'Import',
        'File is not a Stats config' => 'Diese Datei ist keine Statistik-Konfiguration',
        'No File selected' => 'Keine Datei ausgew�hlt',

        # Template: AgentStatsOverview
        'Results' => 'Ergebnis',
        'Total hits' => 'Treffer gesamt',
        'Page' => 'Seite',

        # Template: AgentStatsPrint
        'Print' => 'Drucken',
        'No Element selected.' => 'Kein Element ausgew�hlt.',

        # Template: AgentStatsView
        'Export Config' => 'Konfiguration exportieren',
        'Information about the Stat' => 'Informationen �ber die Statistik',
        'Exchange Axis' => 'Achsen vertauschen',
        'Configurable params of static stat' => 'Konfigurierbare Parameter der statischen Statistik',
        'No element selected.' => 'Es wurde kein Element ausgew�hlt.',
        'maximal period from' => 'maximaler Zeitraum von',
        'to' => 'bis',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'Mit Hilfe der Auswahl- und Eingabefelder kann die Statistik Ihren Bed�rfnissen angepasst werden. Welche Elemente der Statistik Sie ver�ndern d�rfen ist von der Vorkonfiguration der Statistik abh�ngig.',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => 'Eine Nachricht sollte einen Empf�nger im Feld An: haben!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Im Feld An: wird eine E-Mail-Adresse (z. B. kunde@example.com) ben�tigt!',
        'Bounce ticket' => 'Bounce Ticket',
        'Ticket locked!' => 'Ticket gesperrt!',
        'Ticket unlock!' => 'Ticket freigeben!',
        'Bounce to' => 'Bounce an',
        'Next ticket state' => 'N�chster Status des Tickets',
        'Inform sender' => 'Sender informieren',
        'Send mail!' => 'Mail senden!',

        # Template: AgentTicketBulk
        'You need to account time!' => 'Zeit muss berechnet werden!',
        'Ticket Bulk Action' => 'Ticket Sammelaktion',
        'Spell Check' => 'Rechtschreibpr�fung',
        'Note type' => 'Notiztyp',
        'Next state' => 'N�chster Status',
        'Pending date' => 'Warten bis',
        'Merge to' => 'Zusammenfassen zu',
        'Merge to oldest' => 'Zusammenfassen zu �ltesten',
        'Link together' => 'Zusammen verlinken',
        'Link to Parent' => 'Verlinken mit �ltesten',
        'Unlock Tickets' => 'Freigeben der Tickets',

        # Template: AgentTicketClose
        'Ticket Type is required!' => 'Das Feld Ticket-Typ ist ein Pflichtfeld!',
        'A required field is:' => 'Bitte f�llen Sie das Pflichtfeld aus:',
        'Close ticket' => 'Ticket schlie�en',
        'Previous Owner' => 'Vorheriger Besitzer',
        'Inform Agent' => 'Agenten informieren',
        'Optional' => 'Optional',
        'Inform involved Agents' => 'Involvierte Agenten informieren',
        'Attach' => 'Anh�ngen',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => 'Eine Nachricht muss auf Rechtschreibung �berpr�ft werden!',
        'Compose answer for ticket' => 'Antwort erstellen f�r',
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

        # Template: AgentTicketEmail
        'Compose Email' => 'E-Mail erstellen',
        'new ticket' => 'Neues Ticket',
        'Refresh' => 'Aktualisieren',
        'Clear To' => 'An: l�schen',
        'All Agents' => 'Alle Agenten',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Artikeltyp',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => '�ndern der Freifelder des Tickets',

        # Template: AgentTicketHistory
        'History of' => 'Historie von',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => 'Bitte Ticket-Nummer benutzen!',
        'Ticket Merge' => 'Ticket zusammenfassen',

        # Template: AgentTicketMove
        'Move Ticket' => 'Ticket Verschieben',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Notiz an Ticket h�ngen',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => 'Reaktionszeit',
        'Service Time' => 'Service Zeit',
        'Update Time' => 'Aktualisierungszeit',
        'Solution Time' => 'L�sungszeit',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => 'Ben�tigt min. ein ausgew�hltes Ticket!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => 'Filter',
        'Change search options' => 'Such-Optionen �ndern',
        'Tickets' => 'Tickets',
        'of' => 'von',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'Antwort erstellen',
        'Contact customer' => 'Kunden kontaktieren',
        'Change queue' => 'Queue wechseln',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 'aufw�rts sortieren',
        'up' => 'aufw�rts',
        'sort downward' => 'abw�rts sortieren',
        'down' => 'abw�rts',
        'Escalation in' => 'Eskalation in',
        'Locked' => 'Sperre',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Ticket-Besitzer �ndern',

        # Template: AgentTicketPending
        'Set Pending' => 'Setze wartend',

        # Template: AgentTicketPhone
        'Phone call' => 'Anruf',
        'Clear From' => 'Von: l�schen',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Klar',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Ticket-Info',
        'Accounted time' => 'Zugewiesene Zeit',
        'Linked-Object' => 'Verkn�pfte-Objekte',
        'by' => 'von',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Priorit�t des Tickets �ndern',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Tickets angezeigt',
        'Tickets available' => 'Tickets verf�gbar',
        'All tickets' => 'Alle Tickets',
        'Queues' => 'Queues',
        'Ticket escalation!' => 'Ticket-Eskalation!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Verantwortlichen des Tickets �ndern',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Ticket-Suche',
        'Profile' => 'Profil',
        'Search-Template' => 'Such-Vorlage',
        'TicketFreeText' => 'TicketFreeText',
        'Created in Queue' => 'Erstellt in Queue',
        'Article Create Times' => 'Artikel Erstell-Zeiten',
        'Article created' => 'Artikel erstellt',
        'Article created between' => 'Artikel erstellt zwischen',
        'Change Times' => '�nderungs-Zeiten',
        'No change time settings.' => 'Keine �nderungs-Zeiten',
        'Ticket changed' => 'Ticket ge�ndert',
        'Ticket changed between' => 'Ticket ge�ndert zwischen',
        'Result Form' => 'Ergebnis-Ansicht',
        'Save Search-Profile as Template?' => 'Speichere Such-Profil als Vorlage?',
        'Yes, save it with name' => 'Ja, speichere unter dem Namen',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'Volltext',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => 'Ausgeklappte Ansicht',
        'Collapse View' => 'Zugeklappte Ansicht',
        'Split' => 'Teilen',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => 'Artikel-Filter Einstellungen',
        'Save filter settings as default' => 'Filter-Einstellungen als Standard speichern',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'Traceback',

        # Template: CustomerFooter
        'Powered by' => 'Powered by',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => 'Login',
        'Lost your password?' => 'Passwort verloren?',
        'Request new password' => 'Neues Passwort beantragen',
        'Create Account' => 'Zugang erstellen',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Willkommen %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Zeiten',
        'No time settings.' => 'Keine Zeit-Einstellungen.',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Klicken Sie hier, um einen Fehler zu berichten!',

        # Template: Footer
        'Top of Page' => 'Seitenanfang',

        # Template: FooterSmall

        # Template: Header
        'Home' => 'Home',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Web-Installer',
        'Welcome to %s' => 'Willkommen zu %s',
        'Accept license' => 'Lizenz akzeptieren',
        'Don\'t accept license' => 'Lizenz _nicht_ akzeptieren',
        'Admin-User' => 'Admin-Benutzer',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => 'Falls ein Root-Passwort f�r die Datenbank gesetzt ist, muss es hier eingegeben werden. Ist kein Passwort gesetzt, muss das Feld leer gelassen werden. Aus Sicherheitsgr�nden empfehlen wir ein Root-Passwort zu setzt. Weitere Informationen hierzu finden Sie in der Dokumentation Ihrer Datenbank.',
        'Admin-Password' => 'Admin-Passwort',
        'Database-User' => 'Datenbank-Benutzer',
        'default \'hot\'' => 'voreingestellt \'hot\'',
        'DB connect host' => 'DB Verbindungs-Host',
        'Database' => 'Datenbank',
        'Default Charset' => 'Standard-Zeichensatz',
        'utf8' => 'utf8',
        'false' => 'false',
        'SystemID' => 'SystemID',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Das Kennzeichnen des Systems. Jede Ticketnummer und http-Sitzung beginnt mit dieser Kennung)',
        'System FQDN' => 'System FQDN',
        '(Full qualified domain name of your system)' => '(Voll qualifizierter Domain-Name des Systems)',
        'AdminEmail' => 'AdminE-Mail',
        '(Email of the system admin)' => '(E-Mail des System-Administrators)',
        'Organization' => 'Organisation',
        'Log' => 'Log',
        'LogModule' => 'LogModule',
        '(Used log backend)' => '(Benutztes Log Backend)',
        'Logfile' => 'Logdatei',
        '(Logfile just needed for File-LogModule!)' => '(Logfile nur ben�tigt f�r File-LogModule!)',
        'Webfrontend' => 'Web-Oberfl�che',
        'Use utf-8 it your database supports it!' => 'Benutzen Sie utf-8 nur, wenn Ihre Datenbank es unterst�tzt!',
        'Default Language' => 'Standard-Sprache',
        '(Used default language)' => '(Standardwert f�r die Sprache)',
        'CheckMXRecord' => 'CheckMXRecord',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(�berpr�fen des MX-Eintrags der benutzen E-Mail-Adressen im Verfassen-Fenster. Benutzen Sie CheckMXRecord nicht, wenn Ihr OTRS hinter einer W�hlleitung ist!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Um OTRS nutzen zu k�nnen, m�ssen die die folgenden Zeilen als root in die Befehlszeile (Terminal/Shell) eingeben.',
        'Restart your webserver' => 'Starte Deinen Webserver neu.',
        'After doing so your OTRS is up and running.' => 'Danach l�uft Dein OTRS.',
        'Start page' => 'Startseite',
        'Your OTRS Team' => 'Dein OTRS-Team',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'Keine Berechtigung',

        # Template: Notify
        'Important' => 'Wichtig',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'gedruckt von',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'OTRS Testseite',
        'Counter' => 'Z�hler',

        # Template: Warning

        # Template: YUI

        # Misc
        'Create Database' => 'Datenbank erstellen',
        'verified' => 'verifiziert',
        'File-Name' => 'Datei-Dateiname',
        'Ticket Number Generator' => 'Ticketnummer Generator',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Ticket Kennzeichnen. Z.B. \'Ticket#\', \'Call#\' oder \'MyTicket#\')',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Auf diesem Wege k�nnen Sie den Keyring in Kernel/Config.pm direkt ver�ndern',
        'Create new Phone Ticket' => 'Neues Telefon-Ticket erstellen',
        'U' => 'U',
        'Site' => 'Seite',
        'Customer history search (e. g. "ID342425").' => 'Kunden-Historie-Suche (z. B. "ID342425").',
        'Can not delete link with %s!' => 'Link zu %s konnte nicht gel�scht werden!',
        'Close!' => 'Schlie�en!',
        'for agent firstname' => 'f�r Vorname des Agents',
        'Reporter' => 'Melder',
        'Process-Path' => 'Prozess-Path',
        'to get the realname of the sender (if given)' => 'Um den Realnamen des Senders zu erhalten (wenn m�glich)',
        'FAQ Search Result' => 'FAQ Suchergebnis',
        'Notification (Customer)' => 'Benachrichtigung (Kunde)',
        'CSV' => 'CSV',
        'Select Source (for add)' => 'Quelle ausw�hlen (zum Hinzuf�gen)',
        'Node-Name' => 'Node-Name',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'EInstellungen der Ticketdaten (z. B. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => 'Kinder-Objekte',
        'Workflow Groups' => 'Workflow Gruppen',
        'Current Impact Rating' => 'aktuelles Schadenspotential',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Konfig Optionen (z. B. <OTRS_CONFIG_HttpType>)',
        'FAQ System History' => 'FAQ System Historie',
        'customer realname' => 'Wirklicher Kundenname',
        'Pending messages' => 'Wartende Nachrichten',
        'Modules' => 'Module',
        'for agent login' => 'f�r Agent Login',
        'Keyword' => 'Schl�sselwort',
        'Reference' => 'Referenz(en)',
        'Close type' => 'Art des Schlie�ens',
        'DB Admin User' => 'DB Admin Benutzer',
        'for agent user id' => 'f�r Agent UserID',
        'Classification' => 'Klassifizierung',
        'Change user <-> group settings' => '�ndern der Benutzer <-> Gruppen Einstellungen',
        'Escalation' => 'Eskalation',
        'Order' => 'Sortierung',
        'next step' => 'N�chster Schritt',
        'Follow up' => 'Nachfrage',
        'Customer history search' => 'Kunden-Historie-Suche',
        'not verified' => 'nicht verifiziert',
        'Stat#' => 'Statistik Nr.',
        'Create new database' => 'Neue Datenbank erstellen',
        'Year' => 'Jahr',
        'X-axis' => 'X-Achse',
        'Keywords' => 'Schl�sselw�rter',
        'Ticket Escalation View' => 'Ticket Eskalations Ansicht',
        'Today' => 'Heute',
        'No * possible!' => 'Kein "*" m�glich!',
        'Load' => 'Laden',
        'Change Time' => 'Ge�ndert',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Einstellungen f�r den Benutzer, der diese Aktion ausgel�st hat (z. B. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => 'Nachricht an neuen Besitzer',
        'to get the first 5 lines of the email' => 'Um die ersten 5 Zeilen der E-Mail zu erhalten',
        'Sent new password to: ' => 'Das neue Passwort wurde gesendet an: ',
        'Sort by' => 'Sortieren nach',
        'OTRS DB Password' => 'OTRS DB Passwort',
        'Last update' => 'Letzte �nderungen',
        'Tomorrow' => 'Morgen',
        'not rated' => 'nicht bewertet',
        'to get the first 20 character of the subject' => 'Um die ersten 20 Zeichen des Betreffs zu erhalten',
        'Select the customeruser:service relations.' => 'Auswahl der Kundenbenutzer:Service Beziehungen.',
        'DB Admin Password' => 'DB Admin Passwort',
        'Drop Database' => 'Datenbank l�schen',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'Die Daten der Kundenbenutzer (z. B. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'Warten auf',
        'Comment (internal)' => 'Kommentar (intern)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Ticket Besitzer Einstellungen (z. B. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'User-Number' => 'Benutzer-Nummer',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Optionen von Ticket Daten (z. B. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(Benutztes Format f�r die Ticketnummer)',
        'Reminder' => 'Erinnernd',
        'Month' => 'Monat',
        'Node-Address' => 'Node-Adresse',
        'All Agent variables.' => 'Alle Agentenvariabln',
        ' (work units)' => ' (Arbeitseinheiten)',
        'Next Week' => 'N�chste Woche',
        'You use the DELETE option! Take care, all deleted Tickets are lost!!!' => 'Sie benutzen die L�SCHEN Option! Bitte bedenken Sie, dass dann diese Tickets verloren sind!',
        'All Customer variables like defined in config option CustomerUser.' => 'Alle Kundenvariablen wie definiert im den Konfigoptionen CustomerUser.',
        'for agent lastname' => 'f�r Nachname des Agents',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Informationen �ber den Benutzer, der die Aktion gerade anfragt (z. B. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Nachrichten zur Erinnerung',
        'Parent-Object' => 'Eltern-Objekte',
        'Of couse this feature will take some system performance it self!' => 'Wenn dieses Feature aktiv ist, ist mit Leistungsdefizit zu rechnen.',
        'Your own Ticket' => 'Ihr eigenes Ticket',
        'Detail' => 'Detail',
        'TicketZoom' => 'Ticket Inhalt',
        'Don\'t forget to add a new user to groups!' => 'Ein neuer Benutzer muss einer Gruppe zugewiesen werden!',
        'Open Tickets' => 'Offene Tickets',
        'CreateTicket' => 'Ticket Erstellen',
        'unknown' => 'unbekannt',
        'System Settings' => 'System Einstellungen',
        'Finished' => 'Fertig',
        'Imported' => 'Importiert',
        'unread' => 'ungelesen',
        'D' => 'D',
        'System Status' => 'System Status',
        'All messages' => 'Alle Nachrichten',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Optionen des Tickets (z. B. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Object already linked as %s.' => 'Objekt bereits verlinkt als %s.',
        'A article should have a title!' => 'Ein Artikel sollte einen Titel haben!',
        'Customer Users <-> Services' => 'Kunden Benutzer <-> Services',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Einstellungen (z. B.&lt;OTRS_CONFIG_HttpType&gt;)',
        'Compose Follow up' => 'Erg�nzung schreiben',
        'Imported by' => 'Importiert von',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Informationen �ber den Besitzer des Tickets (z. B. <OTRS_OWNER_UserFirstname>)',
        'read' => 'gelesen',
        'Product' => 'Produkt(e)',
        'kill all sessions' => 'Alle Sitzungen l�schen',
        'to get the from line of the email' => 'Um die From: Zeile zu erhalten',
        'Solution' => 'L�sung',
        'QueueView' => 'Queue-Ansicht',
        'My Queue' => 'Meine Queue',
        'Select Box' => 'Select Box',
        'Instance' => 'Instanz',
        'Day' => 'Tag',
        'New messages' => 'Neue Nachrichten',
        'Service-Name' => 'Service-Name',
        'Can not create link with %s!' => 'Link zu %s konnte nicht erstellt werden!',
        'Linked as' => 'Verkn�pft als',
        'Welcome to OTRS' => 'Willkommen zu OTRS',
        'tmp_lock' => 'gesperrt (tempor�r)',
        'modified' => 'ge�ndert',
        'Delete old database' => 'Alte Datenbank l�schen',
        'Watcher' => 'Beobachter',
        'Have a lot of fun!' => 'Viel Spa�!',
        'send' => 'Senden',
        'Note Text' => 'Notiztext',
        'POP3 Account Management' => 'POP3-Konten Verwaltung',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Einstellungen der Benutzerdaten des aktuellen Benutzers ((z. B. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;).',
        'System State Management' => 'Status Verwaltung',
        'Mailbox' => 'Mailbox',
        'PhoneView' => 'Telefon-Ansicht',
        'User-Name' => 'Benutzer-Name',
        'File-Path' => 'Datei-Dateipfad',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'Die E-Mail mit der Ticketnummer "<OTRS_TICKET>" ist an "<OTRS_BOUNCE_TO>" gebounced. Kontaktieren Sie diese Adresse f�r weitere Nachfragen.',
        'Ticket Status View' => 'Ticket Status Ansicht',
        'Modified' => 'Ver�ndert',
        'Ticket selected for bulk action!' => 'Ticket f�r Bulk-Aktion Ausgew�hlt',
    };
    # $$STOP$$
    return;
}

1;
