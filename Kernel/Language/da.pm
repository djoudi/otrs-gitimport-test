# --
# Kernel/Language/da.pm - provides da language translation
# Copyright (C) 2001-2006 Martin Edenhofer <martin+code@otrs.org>
#
# Last updated 2006/03/09 by Thorsten Rossner <thorsten.rossner[at]stepstone.de>
# --
# $Id: da.pm,v 1.1.2.3 2006-03-15 19:00:28 cs Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::da;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.1.2.3 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: n/a

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
		'Yes' => 'Ja',
		'No' => 'Nej',
		'yes' => 'ja',
		'no' => 'nej',
		'Off' => 'Off - offline',
		'off' => 'off - offline',
		'On' => 'On - online',
		'on' => 'den',
		'top' => '�verst',
		'end' => 'slut',
		'Done' => 'F�rdig',
		'Cancel' => 'Annuller',
		'Reset' => 'Nulstil',
		'last' => 'sidste',
		'before' => 'f�r',
		'day' => 'dag',
		'days' => 'dage',
		'day(s)' => 'dag(e)',
		'hour' => 'time',
		'hours' => 'timer',
		'hour(s)' => 'time(r)',
		'minute' => 'minut',
		'minutes' => 'minutter',
		'minute(s)' => 'minut(ter)',
		'month' => 'm�ned',
		'months' => 'm�neder',
		'month(s)' => 'm�ned(er)',
		'week' => 'uge',
		'week(s)' => 'uge(r)',
		'year' => '�r',
		'years' => '�r',
		'year(s)' => '�r',
		'wrote' => 'skrev',
		'Message' => 'Meddelelse',
		'Error' => 'Fejl',
		'Bug Report' => 'Fejlrapport',
		'Attention' => 'OBS',
		'Warning' => 'Advarsel',
		'Module' => 'Modul',
		'Modulefile' => 'Modulfil',
		'Subfunction' => 'Underfunktion',
		'Line' => 'Linje',
		'Example' => 'Eksempel',
		'Examples' => 'Eksempler',
		'valid' => 'gyldig',
		'invalid' => 'ugyldig',
		'invalid-temporarily' => 'ugyldig-midlertidigt',
		' 2 minutes' => '2 minutter',
		' 5 minutes' => '5 minutter',
		' 7 minutes' => '7 minutter',
		'10 minutes' => '10 minutter',
		'15 minutes' => '15 minutter',
		'Mr.' => 'Hr.',
		'Mrs.' => 'Fru',
		'Next' => 'N�ste',
		'Back' => 'Tilbage',
		'Next...' => 'N�ste...',
		'...Back' => '...Tilbage',
		'-none-' => '-ingen-',
		'none' => 'ingen',
		'none!' => 'ingen!',
		'none - answered' => 'ingen - svarede',
		'please do not edit!' => 'v�r venlig ikke at redigere!',
		'AddLink' => 'Tilf�jLink',
		'Link' => 'Link',
		'Linked' => 'Linket',
		'Link (Normal)' => 'Link (normal)',
		'Link (Parent)' => 'Link (for�ldre)',
		'Link (Child)' => 'Link (barn)',
		'Normal' => 'Normal',
		'Parent' => 'For�ldre',
		'Child' => 'Barn',
		'Hit' => 'Hit',
		'Hits' => 'Antal hit',
		'Text' => 'Tekst',
		'Lite' => 'Let',
		'User' => 'Bruger',
		'Username' => 'Brugernavn',
		'Language' => 'Sprog',
		'Languages' => 'Sprog',
		'Password' => 'Adgangskode',
		'Salutation' => 'Hilsen',
		'Signature' => 'Underskrift',
		'Customer' => 'Kunde',
		'CustomerID' => 'Kunde-ID',
		'CustomerIDs' => 'Kunde-ID\'er',
		'customer' => 'kunde',
		'agent' => 'agent',
		'system' => 'system',
		'Customer Info' => 'Kundeinfo',
		'go!' => 'g�!',
		'go' => 'g�',
		'All' => 'Alle',
		'all' => 'alle',
		'Sorry' => 'Beklager',
		'update!' => 'opdater!',
		'update' => 'opdater',
		'Update' => 'Opdater',
		'submit!' => 'indsend!',
		'submit' => 'indsend',
		'Submit' => 'Indsend',
		'change!' => 'skift!',
		'Change' => 'Skift',
		'change' => 'skift',
		'click here' => 'klik her',
		'Comment' => 'Kommentar',
		'Valid' => 'Gyldig',
		'Invalid Option!' => 'Ugyldig valgmulighed!',
		'Invalid time!' => 'Ugyldigt tidsrum!',
		'Invalid date!' => 'Ugyldig dato!',
		'Name' => 'Navn',
		'Group' => 'Gruppe',
		'Description' => 'Beskrivelse',
		'description' => 'beskrivelse',
		'Theme' => 'Tema',
		'Created' => 'Oprettet',
		'Created by' => 'Oprettet af',
		'Changed' => 'Udskiftet',
		'Changed by' => 'Udskiftet af',
		'Search' => 'S�g',
		'and' => 'og',
		'between' => 'mellem',
		'Fulltext Search' => 'Friteksts�gning',
		'Data' => 'Data',
		'Options' => 'Valgmuligheder',
		'Title' => 'Titel',
		'Item' => 'Punkt',
		'Delete' => 'Slet',
		'Edit' => 'Rediger',
		'View' => 'Vis',
		'Number' => 'Nummer',
		'System' => 'System',
		'Contact' => 'Kontaktperson',
		'Contacts' => 'Kontaktpersoner',
		'Export' => 'Eksporter',
		'Up' => 'Op',
		'Down' => 'Ned',
		'Add' => 'Tilf�j',
		'Category' => 'Kategori',
		'Viewer' => 'L�seapparat',
		'New message' => 'Ny meddelelse',
		'New message!' => 'Ny meddelelse!',
		'Please answer this ticket(s) to get back to the normal queue view!' => 'V�r venlig at besvare �n eller flere billetter her for at komme tilbage til k�ens normale visning!',
		'You got new message!' => 'Du har f�et en ny meddelelse!',
		'You have %s new message(s)!' => 'Du har %s ny(e) meddelelse(r)!',
		'You have %s reminder ticket(s)!' => 'Du har %s p�mindelsesbilletter!',
		'The recommended charset for your language is %s!' => 'Det anbefalede tegns�t til dit sprog er %s!',
		'Passwords doesn\'t match! Please try it again!' => 'Adgangskoderne matcher ikke! Pr�v igen!',
		'Password is already in use! Please use an other password!' => 'Adgangskoden er allerede i brug! V�r venlig at bruge en anden adgangskode!',
		'Password is already used! Please use an other password!' => 'Adgangskoden er allerede brugt! V�r venlig at bruge en anden adgangskode!',
		'You need to activate %s first to use it!' => 'Du skal f�rst aktivere %s for at bruge den!',
		'No suggestions' => 'Ingen forslag',
		'Word' => 'Word',
		'Ignore' => 'Ignorer',
		'replace with' => 'udskift med',
		'Welcome to OTRS' => 'Velkommen til OTRS',
		'There is no account with that login name.' => 'Der er ingen konto med det login-navn.',
		'Login failed! Your username or password was entered incorrectly.' => 'Login mislykkedes! Brugernavnet eller adgangskoden blev forkert indtastet.',
		'Please contact your admin' => 'Kontakt din administrator',
		'Logout successful. Thank you for using OTRS!' => 'Log ud lykkedes. Tak fordi du bruger OTRS.',
		'Invalid SessionID!' => 'Ugyldigt sessions-ID!',
		'Feature not active!' => 'Funktionen er ikke aktiv!',
		'Take this Customer' => 'Tag denne kunde',
		'Take this User' => 'Tag denne bruger',
		'possible' => 'mulig',
		'reject' => 'afvis',
		'Facility' => 'Facilitet',
		'Timeover' => 'Tidsoverskridelse',
		'Pending till' => 'Afventer til',
		'Don\'t work with UserID 1 (System account)! Create new users!' => 'Arbejd ikke med bruger-ID 1 (systemkonto)! Opret nye brugere!',
		'Dispatching by email To: field.' => 'Sendes via e-mail til: felt.',
		'Dispatching by selected Queue.' => 'Sendes via den valgte k�.',
		'No entry found!' => 'Ingen post fundet!',
		'Session has timed out. Please log in again.' => 'Sessionens tidsfrist er udl�bet. V�r venlig at logge ind igen.',
		'No Permission!' => 'Ingen tilladelse!',
		'To: (%s) replaced with database email!' => 'Til: (%s) udskiftet med e-mail til database!',
		'Cc: (%s) added database email!' => 'Cc: (%s) tilf�jet e-mail til database!',
		'(Click here to add)' => '(Klik her for at tilf�je)',
		'Preview' => 'Vis udskrift',
		'Added User "%s"' => 'Tilf�jet til bruger "%s"',
		'Contract' => 'Kontrakt',
		'Online Customer: %s' => 'Online kunde: %s ',
		'Online Agent: %s' => 'Online agent: %s ',
		'Calendar' => 'Kalender',
		'File' => 'Fil',
		'Filename' => 'Filnavn',
		'Type' => 'Type',
		'Size' => 'St�rrelse',
		'Upload' => 'Upload',
		'Directory' => 'Katalog',
		'Signed' => 'Underskrevet',
		'Sign' => 'Underskriv',
		'Crypted' => 'Krypteret',
		'Crypt' => 'Krypter',

		# Template: AAAMonth
		'Jan' => 'Jan',
		'Feb' => 'Feb',
		'Mar' => 'Mar',
		'Apr' => 'Apr',
		'May' => 'Maj',
		'Jun' => 'Jun',
		'Jul' => 'Jul',
		'Aug' => 'Aug',
		'Sep' => 'Sep',
		'Oct' => 'Okt',
		'Nov' => 'Nov',
		'Dec' => 'Dec',

		# Template: AAANavBar
		'Admin-Area' => 'Admin-omr�de',
		'Agent-Area' => 'Agent-omr�de',
		'Ticket-Area' => 'Billet-Omr�de',
		'Logout' => 'Log ud',
		'Agent Preferences' => 'Agentpr�ferencer',
		'Preferences' => 'Pr�ferencer',
		'Agent Mailbox' => 'Agentmailboks',
		'Stats' => 'Statistik',
		'Stats-Area' => 'Statistikomr�de',
		'FAQ-Area' => 'OSS-omr�de',
		'FAQ' => 'OSS',
		'FAQ-Search' => 'OSS-s�gning',
		'FAQ-Article' => 'OSS-artikel',
		'New Article' => 'Ny artikel',
		'FAQ-State' => 'OSS-tilstand',
		'Admin' => 'Admin',
		'A web calendar' => 'En webkalender',
		'WebMail' => 'WebMail',
		'A web mail client' => 'En webmailklient',
		'FileManager' => 'FilManager',
		'A web file manager' => 'En webfilmanager',
		'Artefact' => 'Artefakt',
		'Incident' => 'H�ndelse',
		'Advisory' => 'Bekendtg�relse',
		'WebWatcher' => 'WebWatcher',
		'Customer Users' => 'Kundebrugere',
		'Customer Users <-> Groups' => 'Kundebrugere <-> Grupper',
		'Users <-> Groups' => 'Brugere <-> Grupper',
		'Roles' => 'Roller',
		'Roles <-> Users' => 'Roller <-> Brugere',
		'Roles <-> Groups' => 'Roller <-> Grupper',
		'Salutations' => 'Hilsner',
		'Signatures' => 'Underskrifter',
		'Email Addresses' => 'E-mailadresser',
		'Notifications' => 'Beskeder',
		'Category Tree' => 'Kategoritr�',
		'Admin Notification' => 'Besked til admin',

		# Template: AAAPreferences
		'Preferences updated successfully!' => 'Det lykkedes at opdatere pr�ferencerne!',
		'Mail Management' => 'Mailstyring',
		'Frontend' => 'Frontend',
		'Other Options' => 'Andre valgmuligheder',
		'Change Password' => 'Skift adgangskode',
		'New password' => 'Ny adgangskode',
		'New password again' => 'Ny adgangskode igen',
		'Select your QueueView refresh time.' => 'V�lg genindl�sningstid til k�visningen.',
		'Select your frontend language.' => 'V�lg dit sprog til frontend.',
		'Select your frontend Charset.' => 'V�lg dit tegns�t til frontend.',
		'Select your frontend Theme.' => 'V�lg dit tema til frontend.',
		'Select your frontend QueueView.' => 'V�lg din k�visning til frontend.',
		'Spelling Dictionary' => 'Ordbog til stavekontrol',
		'Select your default spelling dictionary.' => 'V�lg din standardordbog til stavekontrol.',
		'Max. shown Tickets a page in Overview.' => 'Max. viste billetter pr. side i oversigten.',
		'Can\'t update password, passwords dosen\'t match! Please try it again!' => 'Kan ikke opdatere adgangskode, adgangskoderne matcher ikke! Pr�v igen!',
		'Can\'t update password, invalid characters!' => 'Kan ikke opdatere adgangskode, ugyldige tegn!',
		'Can\'t update password, need min. 8 characters!' => 'Kan ikke opdatere adgangskode, der skal v�re mindst 8 tegn!',
		'Can\'t update password, need 2 lower and 2 upper characters!' => 'Kan ikke opdatere adgangskode, der skal v�re 2 sm� og 2 store bogstaver/tegn!',
		'Can\'t update password, need min. 1 digit!' => 'Kan ikke opdatere adgangskode, mindst 1 ciffer mangler!',
		'Can\'t update password, need min. 2 characters!' => 'Kan ikke opdatere adgangskode, mindst 2 tegn mangler!',
		'Password is needed!' => 'Adgangskode er p�kr�vet!',

		# Template: AAATicket
		'Lock' => 'L�s',
		'Unlock' => 'Ul�st',
		'History' => 'Historik',
		'Zoom' => 'Zoom',
		'Age' => 'Alder',
		'Bounce' => 'Retur til afsender',
		'Forward' => 'Videresend',
		'From' => 'Fra',
		'To' => 'Til',
		'Cc' => 'Cc',
		'Bcc' => 'Bcc',
		'Subject' => 'Emne',
		'Move' => 'Flyt',
		'Queue' => 'K�',
		'Priority' => 'Prioritering',
		'State' => 'Tilstand',
		'Compose' => 'Formuler',
		'Pending' => 'Afventer',
		'Owner' => 'Indehaver',
		'Owner Update' => 'Indehaveropdatering',
		'Sender' => 'Afsender',
		'Article' => 'Artikel',
		'Ticket' => 'Billet',
		'Createtime' => 'Opret tidsrum',
		'plain' => 'almindelig',
		'email' => 'e-Mail',
		'email' => 'e-mail',
		'Close' => 'Luk',
		'Action' => 'Handling',
		'Attachment' => 'Vedh�ftet fil',
		'Attachments' => 'Vedh�ftede filer',
		'This message was written in a character set other than your own.' => 'Denne meddelelse blev skrevet i et andet tegns�t end dit eget.',
		'If it is not displayed correctly,' => 'Vises den ikke korrekt,',
		'This is a' => 'Der er',
		'to open it in a new window.' => 'for at �bne et nyt vindue.',
		'This is a HTML email. Click here to show it.' => 'Det er en e-mail i HTML. Klik her for at vise den.',
		'Free Fields' => 'Frie felter',
		'Merge' => 'Saml',
		'closed successful' => 'lukning lykkedes',
		'closed unsuccessful' => 'lukning mislykkedes',
		'new' => 'ny',
		'open' => '�ben',
		'closed' => 'lukket',
		'removed' => 'fjernet',
		'pending reminder' => 'afventer p�mindelse',
		'pending auto close+' => 'afventer autolukning+',
		'pending auto close-' => 'afventer autolukning-',
		'email-external' => 'email-ekstern',
		'email-internal' => 'email-intern',
		'note-external' => 'bem�rkning-ekstern',
		'note-internal' => 'bem�rkning-intern',
		'note-report' => 'bem�rkning-rapport',
		'phone' => 'telefon',
		'sms' => 'sms',
		'webrequest' => 'webanmodning',
		'lock' => 'l�s',
		'unlock' => 'ul�st',
		'very low' => 'meget lav',
		'low' => 'lav',
		'normal' => 'normal',
		'high' => 'h�j',
		'very high' => 'meget h�j',
		'1 very low' => '1 meget lav',
		'2 low' => '2 lav',
		'3 normal' => '3 normal',
		'4 high' => '4 h�j',
		'5 very high' => '5 meget h�j',
		'Ticket "%s" created!' => 'Billet "%s" oprettet!',
		'Ticket Number' => 'Billetnummer',
		'Ticket Object' => 'Billetobjekt',
		'No such Ticket Number "%s"! Can\'t link it!' => 'Intet s�dant billetnummer "%s"! Kan ikke linke til det!',
		'Don\'t show closed Tickets' => 'Vis ikke lukkede billetter',
		'Show closed Tickets' => 'Vis lukkede billetter',
		'Email-Ticket' => 'E-mail-billet',
		'Create new Email Ticket' => 'Opret ny e-mailbillet',
		'Phone-Ticket' => 'Telefon-Billet',
		'Create new Phone Ticket' => 'Opret ny telefonbillet',
		'Search Tickets' => 'S�g billetter',
		'Edit Customer Users' => 'Rediger kundebrugere',
		'Bulk-Action' => 'Massehandling',
		'Bulk Actions on Tickets' => 'Massehandlinger vedr�rende billetter',
		'Send Email and create a new Ticket' => 'Send e-mail og opret en ny billet',
		'Overview of all open Tickets' => 'Oversigt over alle �bne billetter',
		'Locked Tickets' => 'L�ste billetter',
		'Lock it to work on it!' => 'L�s den for at arbejde p� den!',
		'Unlock to give it back to the queue!' => 'L�s den op for at give den tilbage til k�en!',
		'Shows the ticket history!' => 'Viser billethistorik!',
		'Print this ticket!' => 'Udskriv denne billet!',
		'Change the ticket priority!' => 'Skift billetprioriteringen!',
		'Change the ticket free fields!' => 'Skift billettens frie felter!',
		'Link this ticket to an other objects!' => 'Link denne billet til et andet objekt!',
		'Change the ticket owner!' => 'Udskift billetindehaveren!',
		'Change the ticket customer!' => 'Udskift billetkunden!',
		'Add a note to this ticket!' => 'Tilf�j en bem�rkning til denne billet!',
		'Merge this ticket!' => 'Saml denne billet!',
		'Set this ticket to pending!' => 'Indstil denne billet som afventende!',
		'Close this ticket!' => 'Luk denne billet!',
		'Look into a ticket!' => 'Se n�rmere p� en billet!',
		'Delete this ticket!' => 'Slet denne billet!',
		'Mark as Spam!' => 'Mark�r som spam!',
		'My Queues' => 'Mine k�er',
		'Shown Tickets' => 'Vis billetter',
		'New ticket notification' => 'Besked om ny billet',
		'Send me a notification if there is a new ticket in "My Queues".' => 'Send mig en besked, hvis der er en ny billet i "Mine k�er".',
		'Follow up notification' => 'Besked om opf�lgning',
		'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Send mig en besked, hvis en kunde sender en opf�lgning, og jeg er denne billets indehaver.',
		'Ticket lock timeout notification' => 'Besked om billetl�s efter tidsfristens udl�b',
		'Send me a notification if a ticket is unlocked by the system.' => 'Send mig en besked, hvis systemet l�ser en billet op.',
		'Move notification' => 'Besked om flytning',
		'Send me a notification if a ticket is moved into one of "My Queues".' => 'Send mig en besked, hvis en billet flyttes ind i en af "Mine k�er".',
		'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => 'Dit k�valg af foretrukne k�er. Du f�r ogs� besked om disse k�er via e-mail, hvis det er aktiveret.',
		'Custom Queue' => 'Brugertilpas k�',
		'QueueView refresh time' => 'K�Visnings genindl�sningstid',
		'Screen after new ticket' => 'Sk�rm efter ny billet',
		'Select your screen after creating a new ticket.' => 'V�lg din sk�rm, efter en ny billet er oprettet.',
		'Closed Tickets' => 'Lukkede billetter',
		'Show closed tickets.' => 'Vis lukkede billetter.',
		'Max. shown Tickets a page in QueueView.' => 'Max. viste billetter pr. side i k�-visning - QueueView.',
		'Responses' => 'Responssvar',
		'Responses <-> Queue' => 'Responssvar <-> K�',
		'Auto Responses' => 'Autosvar',
		'Auto Responses <-> Queue' => 'Autosvar <-> K�',
		'Attachments <-> Responses' => 'Vedh�ftede filer <-> Responssvar',
		'History::Move' => 'Historik::Flytning',
		'History::NewTicket' => 'Historik::NyBillet',
		'History::FollowUp' => 'Historik::Opf�lgning',
		'History::SendAutoReject' => 'Historik::SendAutoAfslag',
		'History::SendAutoReply' => 'Historik::SendAutoSvar',
		'History::SendAutoFollowUp' => 'Historik::SendAutoOpf�lgning',
		'History::Forward' => 'Historik::Videresend',
		'History::Bounce' => 'Historik::Retur til afsender',
		'History::SendAnswer' => 'Historik::SendSvar',
		'History::SendAgentNotification' => 'Historik::SendAgentBesked',
		'History::SendCustomerNotification' => 'Historik::SendKundeBesked',
		'History::EmailAgent' => 'Historik::E-mailAgent',
		'History::EmailCustomer' => 'Historik::E-mailKunde',
		'History::PhoneCallAgent' => 'Historik::TelefonOpkaldAgent',
		'History::PhoneCallCustomer' => 'Historik::TelefonOpkaldKunde',
		'History::AddNote' => 'Historik::Tilf�jBem�rkning',
		'History::Lock' => 'Historik::L�s',
		'History::Unlock' => 'Historik::L�s op',
		'History::TimeAccounting' => 'Historik::TidRegnskab',
		'History::Remove' => 'Historik::Fjern',
		'History::CustomerUpdate' => 'Historik::KundeOpdatering',
		'History::PriorityUpdate' => 'Historik::Prioritetsopdatering',
		'History::OwnerUpdate' => 'Historik::IndehaverOpdatering',
		'History::LoopProtection' => 'Historik::LoopBeskyttelse',
		'History::Misc' => 'Historik::Diverse',
		'History::SetPendingTime' => 'Historik::IndstilVentetid',
		'History::StateUpdate' => 'Historik::TilstandOpdatering',
		'History::TicketFreeTextUpdate' => 'Historik::BilletFriTekstOpdatering',
		'History::WebRequestCustomer' => 'Historik::WebAnmodningKunde',
		'History::TicketLinkAdd' => 'Historik::BilletLinkTilf�j',
		'History::TicketLinkDelete' => 'Historik::BilletLinkSlet',

		# Template: AAAWeekDay
		'Sun' => 'S�n',
		'Mon' => 'Man',
		'Tue' => 'Tir',
		'Wed' => 'Ons',
		'Thu' => 'Tor',
		'Fri' => 'Fri',
		'Sat' => 'L�r',

		# Template: AdminAttachmentForm
		'Attachment Management' => 'Styring af vedh�ftede filer',

		# Template: AdminAutoResponseForm
		'Auto Response Management' => 'Styring af autosvar',
		'Response' => 'Responssvar',
		'Auto Response From' => 'Autosvar fra',
		'Note' => 'Bem�rkning',
		'Useable options' => 'Brugbare valgmuligheder',
		'to get the first 20 character of the subject' => 'for at f� emnets f�rste 20 tegn',
		'to get the first 5 lines of the email' => 'for at f� e-mailens f�rste 5 linjer',
		'to get the from line of the email' => 'for at f� e-mailens fra-linje',
		'to get the realname of the sender (if given)' => 'for at f� afsenderens virkelige navn (hvis det er oplyst)',
		'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Valgmuligheder for billettens data (f.eks. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',

		# Template: AdminCustomerUserForm
		'The message being composed has been closed.  Exiting.' => 'Den meddelelse, der er ved at blive formuleret, er blevet lukket.  Afslutter.',
		'This window must be called from compose window' => 'Dette vindue skal �bnes via formuleringsvinduet.',
		'Customer User Management' => 'Styring af kundebruger',
		'Search for' => 'S�g efter',
		'Result' => 'Resultat',
		'Select Source (for add)' => 'V�lg kilde (til tilf�jelse)',
		'Source' => 'Kilde',
		'This values are read only.' => 'Disse v�rdier kan kun l�ses.',
		'This values are required.' => 'Disse v�rdier er p�kr�vede.',
		'Customer user will be needed to have a customer history and to to login via customer panel.' => 'Kundebrugeren er n�dvendig for at have en kundehistorik og for at logge ind via kundepanelerne.',

		# Template: AdminCustomerUserGroupChangeForm
		'Customer Users <-> Groups Management' => 'Kundebrugere <-> Gruppestyring',
		'Change %s settings' => 'Skift %s indstillinger',
		'Select the user:group permissions.' => 'V�lg tilladelser til brugeren:gruppen.',
		'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Er intet valgt, er der ingen tilladelser i denne gruppe (der er ingen tilg�ngelige billetter til brugeren).',
		'Permission' => 'Tilladelse',
		'ro' => 'rol',
		'Read only access to the ticket in this group/queue.' => 'Kun l�seadgang til billetten i denne gruppe/k�.',
		'rw' => 'rw',
		'Full read and write access to the tickets in this group/queue.' => 'Komplet l�se- og skriveadgang til billetterne i denne gruppe/k�.',

		# Template: AdminCustomerUserGroupForm

		# Template: AdminEmail
		'Message sent to' => 'Meddelelse sendt til',
		'Recipents' => 'Modtagere',
		'Body' => 'Hovedtekst',
		'send' => 'send',

		# Template: AdminGenericAgent
		'GenericAgent' => 'GenericAgent',
		'Job-List' => 'Job-Liste',
		'Last run' => 'Sidste k�rsel',
		'Run Now!' => 'K�r nu!',
		'x' => 'x',
		'Save Job as?' => 'Gem et job som?',
		'Is Job Valid?' => 'Er jobbet gyldigt?',
		'Is Job Valid' => 'Er jobbet gyldigt',
		'Schedule' => 'Tidsplan',
		'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Friteksts�gning i artikel (f.eks. "Mar*in" eller "Baue*")',
		'(e. g. 10*5155 or 105658*)' => '(f.eks. 10*5155 eller 105658*)',
		'(e. g. 234321)' => '(f.eks. 234321)',
		'Customer User Login' => 'Kundebrugers login',
		'(e. g. U5150)' => '(f.eks. U5150)',
		'Agent' => 'Agent',
		'TicketFreeText' => 'BilletFriTekst',
		'Ticket Lock' => 'Billetl�s',
		'Times' => 'Tider',
		'No time settings.' => 'Ingen tidsindstillinger.',
		'Ticket created' => 'Billet oprettet',
		'Ticket created between' => 'Billet oprettet mellem',
		'New Priority' => 'Ny prioritering',
		'New Queue' => 'Ny k�',
		'New State' => 'Ny tilstand',
		'New Agent' => 'Ny agent',
		'New Owner' => 'Ny indehaver',
		'New Customer' => 'Ny kunde',
		'New Ticket Lock' => 'Ny billetl�s',
		'CustomerUser' => 'KundeBruger',
		'Add Note' => 'Tilf�j bem�rkning',
		'CMD' => 'CMD',
		'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Denne kommando vil blive udf�rt. ARG[0] bliver billettens nummer. ARG[1] billettens ID. ',
		'Delete tickets' => 'Slet billetter',
		'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Advarsel! Denne billet fjernes fra databasen! Denne billet er g�et tabt!',
		'Modules' => 'Moduler',
		'Param 1' => 'Param 1',
		'Param 2' => 'Param 2',
		'Param 3' => 'Param 3',
		'Param 4' => 'Param 4',
		'Param 5' => 'Param 5',
		'Param 6' => 'Param 6',
		'Save' => 'Gem',

		# Template: AdminGroupForm
		'Group Management' => 'Gruppestyring',
		'The admin group is to get in the admin area and the stats group to get stats area.' => 'Admin-gruppen skal ind i administratoromr�det og statistikgruppen i statistikomr�det.',
		'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Opret nye grupper til at h�ndtere adgangstilladelser for agentens forskellige grupper (f.eks. indk�bs-, support- og salgsafdeling ...).',
		'It\'s useful for ASP solutions.' => 'Det er nyttigt for ASP-l�sninger.',

		# Template: AdminLog
		'System Log' => 'Systemlog',
		'Time' => 'Tid',

		# Template: AdminNavigationBar
		'Users' => 'Brugere',
		'Groups' => 'Grupper',
		'Misc' => 'Diverse',

		# Template: AdminNotificationForm
		'Notification Management' => 'Beskedstyring',
		'Notification' => 'Besked',
		'Notifications are sent to an agent or a customer.' => 'Beskeder sendes til en agent eller kunde.',
		'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Konfigurationsmuligheder (f.eks. &lt;OTRS_CONFIG_HttpType&gt;)',
		'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Billetindehavers valgmuligheder (f.eks. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
		'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Valgmuligheder for den aktuelle bruger, som anmodede om denne handling (f.eks. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
		'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Valgmuligheder for de aktuelle kundebrugerdata (f.eks. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',

		# Template: AdminPackageManager
		'Package Manager' => 'Pakkechef',
		'Uninstall' => 'Afinstaller',
		'Verion' => 'Version',
		'Do you really want to uninstall this package?' => 'Er du sikker p�, du �nsker at afinstallere denne pakke?',
		'Install' => 'Installation',
		'Package' => 'Pakke',
		'Online Repository' => 'Online lagerdepot',
		'Version' => 'Version',
		'Vendor' => 'S�lger',
		'Upgrade' => 'Opgrader',
		'Local Repository' => 'Lokalt lagerdepot',
		'Status' => 'Status',
		'Overview' => 'Oversigt',
		'Download' => 'Download',
		'Rebuild' => 'Genopbyg',
		'Reinstall' => 'Geninstaller',

		# Template: AdminPGPForm
		'PGP Management' => 'PGP-styring',
		'Identifier' => 'Identifikator',
		'Bit' => 'Bit',
		'Key' => 'N�gle',
		'Fingerprint' => 'Fingeraftryk',
		'Expires' => 'Udl�ber',
		'In this way you can directly edit the keyring configured in SysConfig.' => 'Du kan p� denne m�de direkte redigere den n�glering, der er konfigureret i SysConfig.',

		# Template: AdminPOP3Form
		'POP3 Account Management' => 'POP3 kontostyring',
		'Host' => 'V�rtscomputer',
		'Trusted' => 'P�lidelig',
		'Dispatching' => 'Sender',
		'All incoming emails with one account will be dispatched in the selected queue!' => 'Alle indkommende e-mail med 1 konto sendes til den valgte k�!',
		'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Er der tillid til din konto, bliver den allerede eksisterende x-otrs-header ved ankomsttidspunktet (for prioritering, ...) anvendt! Der anvendes PostMaster-filter under alle omst�ndigheder.',

		# Template: AdminPostMasterFilter
		'PostMaster Filter Management' => 'PostMasters filterstyring',
		'Filtername' => 'Filternavn',
		'Match' => 'Match',
		'Header' => 'Overskrift',
		'Value' => 'V�rdi',
		'Set' => 'Indstil',
		'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Send eller filtrer indkommende e-mail baseret p� hver e-mails X-header! RegExp er ogs� mulig.',
		'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Anvender du RegExp, kan du ogs� bruge den matchede v�rdi i () som [***] i \'Set\'.',

		# Template: AdminQueueAutoResponseForm
		'Queue <-> Auto Responses Management' => 'K� <-> Styring af autoresponssvar',

		# Template: AdminQueueAutoResponseTable

		# Template: AdminQueueForm
		'Queue Management' => 'K�styring',
		'Sub-Queue of' => 'Underk� af',
		'Unlock timeout' => 'L�s tisfristen op',
		'0'=> '0',
		'Escalation time' => 'Eskaleringstid',
		'0'=> '0',
		'Follow up Option' => 'Opf�lgningsmulighed',
		'Ticket lock after a follow up' => 'Billet l�st efter en opf�lgning',
		'Systemaddress' => 'Systemadresse',
		'Customer Move Notify' => 'Kundebesked ved flytning',
		'Customer State Notify' => 'Besked om kundetilstand',
		'Customer Owner Notify' => 'Besked til kundeindehaver',
		'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'L�ser en agent en billet, og vedkommende vil ikke sende et svar inden for dette tidsrum, l�ses billetten automatisk op. Derved kan alle andre agenter se billetten.',
		'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Besvares en billet ikke inden for det tidsrum, vil kun denne billet blive vist.',
		'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Er en billet lukket, og kunden sender en opf�lgning, l�ses billetten for den gamle indehaver.',
		'Will be the sender address of this queue for email answers.' => 'Bliver til denne k�s afsenderadresse for e-mailsvar.',
		'The salutation for email answers.' => 'Den hilsen, der bruges til e-mailsvar.',
		'The signature for email answers.' => 'Den underskrift, der bruges til e-mailsvar.',
		'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS sender en e-mail med besked til kunden, hvis billetten er flyttet.',
		'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS sender en e-mail med besked til kunden, hvis billettens tilstand er �ndret.',
		'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS sender en e-mail med besked til kunden, hvis billetten har f�et en anden indehaver.',

		# Template: AdminQueueResponsesChangeForm
		'Responses <-> Queue Management' => 'Responssvar <-> K�styring',

		# Template: AdminQueueResponsesForm
		'Answer' => 'Svar',

		# Template: AdminResponseAttachmentChangeForm
		'Responses <-> Attachments Management' => 'Responssvar <-> Styring af vedh�ftede filer',

		# Template: AdminResponseAttachmentForm

		# Template: AdminResponseForm
		'Response Management' => 'Responssvarstyring',
		'A response is default text to write faster answer (with default text) to customers.' => 'Et responssvar er en standardtekst, der bruges til at skrive et hurtigere svar (med standardtekst) til kunderne.',
		'Don\'t forget to add a new response a queue!' => 'Glem ikke at tilf�je et nyt responssvar pr. k�!',
		'Next state' => 'N�ste tilstand',
		'All Customer variables like defined in config option CustomerUser.' => 'Alle kundevariabler som definerede i konfigurationsmuligheden KundeBruger.',
		'The current ticket state is' => 'Den aktuelle billettilstand er',
		'Your email address is new' => 'Din e-mailadresse er ny',

		# Template: AdminRoleForm
		'Role Management' => 'Rollestyring',
		'Create a role and put groups in it. Then add the role to the users.' => 'Opret en rolle og inds�t grupper i den. Tilf�j dern�st brugernes rolle.',
		'It\'s useful for a lot of users and groups.' => 'Det er nyttigt for mange brugere og grupper.',

		# Template: AdminRoleGroupChangeForm
		'Roles <-> Groups Management' => 'Roller <-> Gruppestyring',
		'move_into' => 'flyt_til',
		'Permissions to move tickets into this group/queue.' => 'Tilladelser til at flytte billetter ind i denne gruppe/k�.',
		'create' => 'opret',
		'Permissions to create tickets in this group/queue.' => 'Tilladelser til at oprette billetter i denne gruppe/k�.',
		'owner' => 'indehaver',
		'Permissions to change the ticket owner in this group/queue.' => 'Tilladelser til at �ndre billetindehaveren i denne gruppe/k�.',
		'priority' => 'prioritering',
		'Permissions to change the ticket priority in this group/queue.' => 'Tilladelser til at �ndre billetprioriteringen i denne gruppe/k�.',

		# Template: AdminRoleGroupForm
		'Role' => 'Rolle',

		# Template: AdminRoleUserChangeForm
		'Roles <-> Users Management' => 'Roller <-> Brugerstyring',
		'Active' => 'Aktiv',
		'Select the role:user relations.' => 'V�lg relationer mellem rollen:brugeren.',

		# Template: AdminRoleUserForm

		# Template: AdminSalutationForm
		'Salutation Management' => 'Styring af hilsner',
		'customer realname' => 'kundens virkelige navn',
		'for agent firstname' => 'for agents fornavn',
		'for agent lastname' => 'for agents efternavn',
		'for agent user id' => 'for agents bruger-ID',
		'for agent login' => 'for agents login',

		# Template: AdminSelectBoxForm
		'Select Box' => 'V�lg felt',
		'SQL' => 'SQL',
		'Limit' => 'Gr�nse',
		'Select Box Result' => 'V�lg feltresultat',

		# Template: AdminSession
		'Session Management' => 'Sessionsstyring',
		'Sessions' => 'Sessioner',
		'Uniq' => 'Unik',
		'kill all sessions' => 'afbryd alle sessioner',
		'Session' => 'Session',
		'kill session' => 'afbryd session',

		# Template: AdminSignatureForm
		'Signature Management' => 'Underskriftstyring',

		# Template: AdminSMIMEForm
		'SMIME Management' => 'SMIME-styring',
		'Add Certificate' => 'Tilf�j certifikat',
		'Add Private Key' => 'Tilf�j privat n�gle',
		'Secret' => 'Hemmelig',
		'Hash' => 'Nummertegn',
		'In this way you can directly edit the certification and private keys in file system.' => 'Du kan p� denne m�de direkte redigere certificeringsn�gler og private n�gler i filsystemet.',

		# Template: AdminStateForm
		'System State Management' => 'Systemtilstandsstyring',
		'State Type' => 'Tilstandstype',
		'Take care that you also updated the default states in you Kernel/Config.pm!' => 'S�rg for, at du ogs� opdatede standardtilstandene i Kernel/Config.pm!',
		'See also' => 'Se ogs�',

		# Template: AdminSysConfig
		'SysConfig' => 'SysConfig',
		'Group selection' => 'Gruppevalg',
		'Show' => 'Vis',
		'Download Settings' => 'Download indstillinger',
		'Download all system config changes.' => 'Download alle systemkonfigurations�ndringer.',
		'Load Settings' => 'Indl�s indstillinger',
		'Subgroup' => 'Undergruppe',
		'Elements' => 'Elementer',

		# Template: AdminSysConfigEdit
		'Config Options' => 'Konfiguationsmuligheder',
		'Default' => 'Standard',
		'Content' => 'Indhold',
		'New' => 'Ny',
		'New Group' => 'Ny gruppe',
		'Group Ro' => 'Gruppe Ro',
		'New Group Ro' => 'Ny grupperolle',
		'NavBarName' => 'NavBarNavn',
		'Image' => 'Billede',
		'Prio' => 'Prio',
		'Block' => 'Blok',
		'NavBar' => 'NavBar',
		'AccessKey' => 'AccessKey',

		# Template: AdminSystemAddressForm
		'System Email Addresses Management' => 'Systems e-mailadressestyring',
		'Email' => 'E-mail',
		'Realname' => 'VirkeligtNavn',
		'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alle indkommende e-mail med denne "E-mail" (Til:) sendes til den valgte k�!',

		# Template: AdminUserForm
		'User Management' => 'Brugerstyring',
		'Firstname' => 'Fornavn',
		'Lastname' => 'Efternavn',
		'User will be needed to handle tickets.' => 'Brugeren beh�ves til at h�ndtere billetterne.',
		'Don\'t forget to add a new user to groups and/or roles!' => 'Glem ikke at tilf�je en ny bruger til grupper og/eller roller!',

		# Template: AdminUserGroupChangeForm
		'Users <-> Groups Management' => 'Brugere <-> Gruppestyring',

		# Template: AdminUserGroupForm

		# Template: AgentBook
		'Address Book' => 'Adressebog',
		'Return to the compose screen' => 'Vend tilbage til formuleringssk�rmen',
		'Discard all changes and return to the compose screen' => 'Kass�r alle �ndringer og vend tilbage til formuleringssk�rmen',

		# Template: AgentCalendarSmall

		# Template: AgentCalendarSmallIcon

		# Template: AgentCustomerTableView

		# Template: AgentInfo
		'Info' => 'Info',

		# Template: AgentLinkObject
		'Link Object' => 'Link til objekt',
		'Select' => 'V�lg',
		'Results' => 'Resultater',
		'Total hits' => 'Samlede antal hit',
		'Site' => 'Websted',
		'Detail' => 'Oplysning',

		# Template: AgentLookup
		'Lookup' => 'Find',

		# Template: AgentNavigationBar
		'Ticket selected for bulk action!' => 'Billet valgt til massehandling!',
		'You need min. one selected Ticket!' => 'Du beh�ver mindst 1 valgt billet!',

		# Template: AgentPreferencesForm

		# Template: AgentSpelling
		'Spell Checker' => 'Stavekontrolprogram',
		'spelling error(s)' => 'stavefejl',
		'or' => 'eller',
		'Apply these changes' => 'Anvend disse �ndringer',

		# Template: AgentTicketBounce
		'A message should have a To: recipient!' => 'En meddelelse skal have en Til: modtager!',
		'You need a email address (e. g. customer@example.com) in To:!' => 'Der skal v�re en e-mailadresse (f.eks. customer@eksempel.com) i feltet Til:!',
		'Bounce ticket' => 'Billet retur til afsender',
		'Bounce to' => 'Retur til',
		'Next ticket state' => 'N�ste billettilstand',
		'Inform sender' => 'Informer afsender',
		'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Din e-mail med billetnummer "<OTRS_TICKET>" er sendt retur til afsender til "<OTRS_BOUNCE_TO>". Kontakt denne adresse for at f� flere oplysninger.',
		'Send mail!' => 'Send mail!',

		# Template: AgentTicketBulk
		'A message should have a subject!' => 'En meddelelse skal have et emne!',
		'Ticket Bulk Action' => 'Billetmassehandling',
		'Spell Check' => 'Stavekontrol',
		'Note type' => 'Bem�rkningstype',
		'Unlock Tickets' => 'L�s billetter op',

		# Template: AgentTicketClose
		'A message should have a body!' => 'En meddelelse skal have en hovedtekst!',
		'You need to account time!' => 'Du skal udregne tiden!',
		'Close ticket' => 'Luk billet',
		'Note Text' => 'Bem�rkningstekst',
		'Close type' => 'Luk type',
		'Time units' => 'Tidsenheder',
		' (work units)' => '(arbejdsenheder)',

		# Template: AgentTicketCompose
		'A message must be spell checked!' => 'En meddelelse skal stavekontrolleres!',
		'Compose answer for ticket' => 'Formuler svar til billet',
		'Attach' => 'Vedh�ft',
		'Pending Date' => 'Afventer dato',
		'for pending* states' => 'for afventende* tilstande',

		# Template: AgentTicketCustomer
		'Change customer of ticket' => 'Skift billetkunde',
		'Set customer user and customer id of a ticket' => 'Indstil en billets kundebruger og kunde-ID',
		'Customer User' => 'Kundebruger',
		'Search Customer' => 'S�g kunde',
		'Customer Data' => 'Kundedata',
		'Customer history' => 'Kundehistorik',
		'All customer tickets.' => 'Alle kundebilletter.',

		# Template: AgentTicketCustomerMessage
		'Follow up' => 'Opf�lgning',

		# Template: AgentTicketEmail
		'Compose Email' => 'Formuler e-mail',
		'new ticket' => 'ny billet',
		'Clear To' => 'Ryd til',
		'All Agents' => 'Alle agenter',
		'Termin1' => 'Termin1',

		# Template: AgentTicketForward
		'Article type' => 'Artikeltype',

		# Template: AgentTicketFreeText
		'Change free text of ticket' => 'Skift billettens fritekst',

		# Template: AgentTicketHistory
		'History of' => 'Historik af',

		# Template: AgentTicketLocked
		'Ticket locked!' => 'Billet l�st!',
		'Ticket unlock!' => 'Billet l�st op!',

		# Template: AgentTicketMailbox
		'Mailbox' => 'Mailboks',
		'Tickets' => 'Billetter',
		'All messages' => 'Alle meddelelser',
		'New messages' => 'Nye meddelelser',
		'Pending messages' => 'Afventer meddelelser',
		'Reminder messages' => 'P�mindelsesmeddelelser',
		'Reminder' => 'P�mindelse',
		'Sort by' => 'Sorter efter',
		'Order' => 'Ordre',
		'up' => 'op',
		'down' => 'ned',

		# Template: AgentTicketMerge
		'You need to use a ticket number!' => 'Du beh�ver et billetnummer!',
		'Ticket Merge' => 'Billetsamling',
		'Merge to' => 'Saml til',
		'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Din e-mail med billetnummer "<OTRS_TICKET>" er samlet til "<OTRS_MERGE_TO_TICKET>".',

		# Template: AgentTicketMove
		'Queue ID' => 'K�-ID',
		'Move Ticket' => 'Flyt billet',
		'Previous Owner' => 'Tidligere indehaver',

		# Template: AgentTicketNote
		'Add note to ticket' => 'Tilf�j bem�rkning til billet',
		'Inform Agent' => 'Informer Agent',
		'Optional' => 'Valgfri',
		'Inform involved Agents' => 'Informer involverede Agenter',

		# Template: AgentTicketOwner
		'Change owner of ticket' => 'Skift billetindehaver',
		'Message for new Owner' => 'Meddelelse til ny indehaver',

		# Template: AgentTicketPending
		'Set Pending' => 'Indstil afventer',
		'Pending type' => 'Afventer type',
		'Pending date' => 'Afventer dato',

		# Template: AgentTicketPhone
		'Phone call' => 'Telefonopkald',

		# Template: AgentTicketPhoneNew
		'Clear From' => 'Ryd fra',

		# Template: AgentTicketPlain
		'Plain' => 'Almindelig',
		'TicketID' => 'Billet-ID',
		'ArticleID' => 'Artikel-ID',

		# Template: AgentTicketPrint
		'Ticket-Info' => 'Billet-Info',
		'Accounted time' => 'Benyttet tid',
		'Escalation in' => 'Eskalering ind',
		'Linked-Object' => 'Linket-Objekt',
		'Parent-Object' => 'For�ldre-Objekt',
		'Child-Object' => 'Barn-Objekt',
		'by' => 'af',

		# Template: AgentTicketPriority
		'Change priority of ticket' => 'Skift billetprioritering',

		# Template: AgentTicketQueue
		'Tickets shown' => 'Viste billetter',
		'Page' => 'Side',
		'Tickets available' => 'Ledige billetter',
		'All tickets' => 'Alle billetter',
		'Queues' => 'K�er',
		'Ticket escalation!' => 'Billeteskalering!',

		# Template: AgentTicketQueueTicketView
		'Your own Ticket' => 'Din egen billet',
		'Compose Follow up' => 'Formuler opf�lgning',
		'Compose Answer' => 'Formuler svar',
		'Contact customer' => 'Kontakt kunde',
		'Change queue' => 'Skift k�',

		# Template: AgentTicketQueueTicketViewLite

		# Template: AgentTicketSearch
		'Ticket Search' => 'Billets�gning',
		'Profile' => 'Profil',
		'Search-Template' => 'S�ge-skabelon',
		'Created in Queue' => 'Oprettet i k�',
		'Result Form' => 'Resultatformular',
		'Save Search-Profile as Template?' => 'Gem s�geprofil som skabelon?',
		'Yes, save it with name' => 'Ja, gem den med navn',
		'Customer history search' => 'Kundehistoriks�gning',
		'Customer history search (e. g. "ID342425").' => 'Kundehistoriks�gning (f.eks. "ID342425").',
		'No * possible!' => 'Ingen * er mulig!',

		# Template: AgentTicketSearchResult
		'Search Result' => 'S�geresultat',
		'Change search options' => 'Skift s�gemuligheder',

		# Template: AgentTicketSearchResultPrint
		'}'=> '}',

		# Template: AgentTicketSearchResultShort
		'sort upward' => 'sorter stigende',
		'U' => 'U',
		'sort downward' => 'sorter faldende',
		'D' => 'D',

		# Template: AgentTicketStatusView
		'Ticket Status View' => 'Billetstatusvisning',
		'Open Tickets' => '�bne billetter',

		# Template: AgentTicketZoom
		'Split' => 'Del i to',

		# Template: AgentTicketZoomStatus
		'Locked' => 'L�st',

		# Template: AgentWindowTabStart

		# Template: AgentWindowTabStop

		# Template: Copyright

		# Template: css

		# Template: customer-css

		# Template: CustomerAccept

		# Template: CustomerCalendarSmallIcon

		# Template: CustomerError
		'Traceback' => 'Tilbagesporing',

		# Template: CustomerFAQ
		'Print' => 'Udskriv',
		'Keywords' => 'S�geord',
		'Symptom' => 'Symptom',
		'Problem' => 'Problem',
		'Solution' => 'L�sning',
		'Modified' => 'Modificeret',
		'Last update' => 'Sidste opdatering',
		'FAQ System History' => 'OSS systemhistorik',
		'modified' => 'modificeret',
		'FAQ Search' => 'OSS s�gning',
		'Fulltext' => 'Fritekst',
		'Keyword' => 'S�geord',
		'FAQ Search Result' => 'OSS s�geresultat',
		'FAQ Overview' => 'OSS oversigt',

		# Template: CustomerFooter
		'Powered by' => 'Drevet af',

		# Template: CustomerFooterSmall

		# Template: CustomerHeader

		# Template: CustomerHeaderSmall

		# Template: CustomerLogin
		'Login' => 'Login',
		'Lost your password?' => 'Mistet din adgangskode?',
		'Request new password' => 'Anmod om ny adgangskode',
		'Create Account' => 'Opret konto',

		# Template: CustomerNavigationBar
		'Welcome %s' => 'Velkommen %s',

		# Template: CustomerPreferencesForm

		# Template: CustomerStatusView
		'of' => 'af',

		# Template: CustomerTicketMessage

		# Template: CustomerTicketMessageNew

		# Template: CustomerTicketSearch

		# Template: CustomerTicketSearchResultCSV

		# Template: CustomerTicketSearchResultPrint

		# Template: CustomerTicketSearchResultShort

		# Template: CustomerTicketZoom

		# Template: CustomerWarning

		# Template: Error
		'Click here to report a bug!' => 'Klik her for at rapportere en fejl!',

		# Template: FAQ
		'Comment (internal)' => 'Kommentar (intern)',
		'A article should have a title!' => 'En artikel skal have en titel!',
		'New FAQ Article' => 'Ny OSS-artikel',
		'Do you really want to delete this Object?' => 'Er du sikker p�, du �nsker at slette dette objekt?',
		'System History' => 'Systemhistorik',

		# Template: FAQCategoryForm
		'Name is required!' => 'Navn er p�kr�vet!',
		'FAQ Category' => 'OSS kategori',

		# Template: FAQLanguageForm
		'FAQ Language' => 'OSS sprog',

		# Template: Footer
		'QueueView' => 'K�Visning',
		'PhoneView' => 'TelefonVisning',
		'Top of Page' => '�verst p� siden',

		# Template: FooterSmall

		# Template: Header
		'Home' => 'Hjem',

		# Template: HeaderSmall

		# Template: Installer
		'Web-Installer' => 'Web-Installation',
		'accept license' => 'acceptlicens',
		'don\'t accept license' => 'accepter ikke licens',
		'Admin-User' => 'Admin-bruger',
		'Admin-Password' => 'Admin-adgangskode',
		'your MySQL DB should have a root password! Default is empty!' => 'din MySQL DB skat have en rod-adgangskode! Standarden er tom!',
		'Database-User' => 'Database-bruger',
		'default \'hot\'' => 'standard \'hot\'',
		'DB connect host' => 'DB tilsluttes v�rtscomputer',
		'Database' => 'Database',
		'Create' => 'Opret',
		'false' => 'feil',
		'SystemID' => 'System-ID',
		'(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Systemets identificering. Hvert billetnummer og hver http-sessions ID starter med dette tal) ',
		'System FQDN' => 'System FQDN',
		'(Full qualified domain name of your system)' => '(Hele dit systems brugbare dom�nenavn) ',
		'AdminEmail' => 'AdminE-mail',
		'(Email of the system admin)' => '(Systemadministrators e-mail)',
		'Organization' => 'Organisation',
		'Log' => 'Log',
		'LogModule' => 'LogModul',
		'(Used log backend)' => '(Anvendt log til backend)',
		'Logfile' => 'Logfil',
		'(Logfile just needed for File-LogModule!)' => '(Logfilen beh�ves kun til Fil-LogModul!)',
		'Webfrontend' => 'Webfrontend',
		'Default Charset' => 'Standardtegns�t',
		'Use utf-8 it your database supports it!' => 'Anvend utf-8, hvis din database underst�tter det!',
		'Default Language' => 'Standardsprog',
		'(Used default language)' => '(Anvendt standardsprog)',
		'CheckMXRecord' => 'CheckMXRecord',
		'(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kontrollerer MX-poster af anvendte e-mailadresser ved at udforme et svar. Anvend ikke CheckMXRecord, hvis OTRS-maskinen befinder sig bag en opkaldslinje $!)',
		'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'For at kunne anvende OTRS, er du n�dt til at indtaste f�lgende linje i din kommandolinje (Terminal/Shell) som rod.',
		'Restart your webserver' => 'Genstart webserveren',
		'After doing so your OTRS is up and running.' => 'N�r det er gjort, er din OTRS sat i gang og fungerer.',
		'Start page' => 'Startside',
		'Have a lot of fun!' => 'Hav det rigtig sjovt!',
		'Your OTRS Team' => 'Dit OTRS Team',

		# Template: Login

		# Template: Motd

		# Template: NoPermission
		'No Permission' => 'Ingen tilladelse',

		# Template: Notify
		'Important' => 'Vigtigt',

		# Template: PrintFooter
		'URL' => 'URL',

		# Template: PrintHeader
		'printed by' => 'udskrevet af',

		# Template: Redirect

		# Template: SystemStats
		'Format' => 'Format',

		# Template: Test
		'OTRS Test Page' => 'OTRS pr�veside',
		'Counter' => 'T�ller',

		# Template: Warning
		# Misc
		'Create Database' => 'Opret database',
		'DB Host' => 'DB v�rtscomputer',
		'Ticket Number Generator' => 'Billetnummergenerator',
		'(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Billetidentifikator. Nogle personer �nsker at indstille dette til f.eks. \Ticket#\, \Call#\ eller \MyTicket#\)',
		'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Du kan p� denne m�de direkte redigere den n�glering, der er konfigureret i Kernel/Config.pm.',
		'Close!' => 'Luk!',
		'Don\'t forget to add a new user to groups!' => 'Glem ikke at tilf�je en ny bruger til grupper!',
		'License' => 'Licens',
		'CreateTicket' => 'Opret billet',
		'OTRS DB Name' => 'OTRS DB-navn',
		'System Settings' => 'Systemindstillinger',
		'Finished' => 'F�rdig',
		'DB Admin User' => 'DB-admin-bruger',
		'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Valgmuligheder for billettens data (f.eks. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
		'Change user <-> group settings' => 'Skift bruger <-> gruppeindstillinger',
		'DB Type' => 'DB type',
		'next step' => 'n�ste trin',
		'Admin-Email' => 'Admin-E-mail',
		'Create new database' => 'Opret ny database',
		'Delete old database' => 'Slet gammel database',
		'OTRS DB User' => 'OTRS DB-bruger',
		'OTRS DB Password' => 'OTRS DB-adgangskode',
		'DB Admin Password' => 'DB-admins adgangskode',
		'Drop Database' => 'Udelad database',
		'(Used ticket number format)' => '(Anvendt billetnummerformat)',
		'Package not correctly deployed, you need to deploy it again!' => 'Pakken blev ikke korrekt distribueret, den skal distribueres igen!',
		'Customer called' => 'Kunde ringede',
		'Phone' => 'Telefon',
		'Office' => 'Kontor',
		'CompanyTickets' => 'Virksomhedsbilletter',
		'MyTickets' => 'MineBilletter',
		'New Ticket' => 'Ny billet',
		'Create new Ticket' => 'Opret ny billet',
		'installed' => 'installeret',
		'uninstalled' => 'afinstalleret',
    };
    # $$STOP$$
}
# --
1;
