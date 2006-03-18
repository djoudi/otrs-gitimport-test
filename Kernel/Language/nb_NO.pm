# --
# Kernel/Language/nb_NO.pm - Norwegian language translation (bokm�l)
# Copyright (C) 2004 Arne Georg Gleditsch <argggh@linpro.no>
#               2005 Stefansen Espen <espen.stefansen@imr.no>
#               2006 Knut Haugen <knuthaug@linpro.no>
# --
# $Id: nb_NO.pm,v 1.23 2006-03-18 20:42:25 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::nb_NO;

use strict;

use vars qw($VERSION);
$VERSION = q$Revision: 1.23 $;
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Wed Mar  1 11:17:14 2006

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D/%M %Y %T';
    $Self->{DateFormatLong} = '%A %D. %B %Y %T';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => 'Ja',
      'No' => 'Nei',
      'yes' => 'ja',
      'no' => 'ingen',
      'Off' => 'Av',
      'off' => 'av',
      'On' => 'P�',
      'on' => 'p�',
      'top' => 'topp',
      'end' => 'slutt',
      'Done' => 'Ferdig',
      'Cancel' => 'Avbryt',
      'Reset' => 'Nullstill',
      'last' => 'siste',
      'before' => 'f�r',
      'day' => 'dag',
      'days' => 'dager',
      'day(s)' => 'dag(er)',
      'hour' => 'time',
      'hours' => 'timer',
      'hour(s)' => 'time(r)',
      'minute' => 'minutt',
      'minutes' => 'minutter',
      'minute(s)' => 'minutt(er)',
      'month' => 'm�ned',
      'months' => 'm�neder',
      'month(s)' => 'm�ned(er)',
      'week' => 'uke',
      'week(s)' => 'uke(r)',
      'year' => '�r',
      'years' => '�r',
      'year(s)' => '�r',
      'wrote' => 'skrev',
      'Message' => 'Melding',
      'Error' => 'Feil',
      'Bug Report' => 'Rapporter feil',
      'Attention' => 'OBS',
      'Warning' => 'Advarsel',
      'Module' => 'Modul',
      'Modulefile' => 'Modulfil',
      'Subfunction' => 'Underfunksjon',
      'Line' => 'Linje',
      'Example' => 'Eksempel',
      'Examples' => 'Eksempler',
      'valid' => 'gyldig',
      'invalid' => 'ugyldig',
      'invalid-temporarily' => 'midlertidig ugyldig',
      ' 2 minutes' => ' 2 minutter',
      ' 5 minutes' => ' 5 minutter',
      ' 7 minutes' => ' 7 minutter',
      '10 minutes' => '10 minutter',
      '15 minutes' => '15 minutter',
      'Mr.' => 'Hr.',
      'Mrs.' => 'Fru',
      'Next' => 'Neste',
      'Back' => 'Tilbake',
      'Next...' => 'Neste...',
      '...Back' => '...Tilbake',
      '-none-' => '-ingen',
      'none' => 'ingen',
      'none!' => 'ingen!',
      'none - answered' => 'ingen - besvart',
      'please do not edit!' => 'Vennligst ikke endre!',
      'AddLink' => 'Legg til link',
      'Link' => 'Koble',
      'Linked' => 'Koblet',
      'Link (Normal)' => 'Koblet (Normal)',
      'Link (Parent)' => 'Koblet (Forelder))',
      'Link (Child)' => 'Koblet (Barn)',
      'Normal' => 'Normal',
      'Parent' => 'Forelder',
      'Child' => 'Barn',
      'Hit' => 'Treff',
      'Hits' => 'Treff',
      'Text' => 'Tekst',
      'Lite' => 'Enkel',
      'User' => 'Bruker',
      'Username' => 'Brukernavn',
      'Language' => 'Spr�k',
      'Languages' => 'Spr�k',
      'Password' => 'Passord',
      'Salutation' => 'Hilsning',
      'Signature' => 'Signatur',
      'Customer' => 'Kunde',
      'CustomerID' => 'Organisasjons-ID',
      'CustomerIDs' => 'Organisasjons-ID-er',
      'customer' => 'kunde',
      'agent' => 'agent',
      'system' => 'System',
      'Customer Info' => 'Kunde-info',
      'go!' => 'Start!',
      'go' => 'Start',
      'All' => 'Alle',
      'all' => 'alle',
      'Sorry' => 'Beklager',
      'update!' => 'oppdater!',
      'update' => 'oppdater',
      'Update' => 'Oppdater',
      'submit!' => 'send!',
      'submit' => 'send',
      'Submit' => 'Send',
      'change!' => 'endre!',
      'Change' => 'Endre',
      'change' => 'endre',
      'click here' => 'klikk her',
      'Comment' => 'Kommentar',
      'Valid' => 'Gyldig',
      'Invalid Option!' => 'Ugyldig valg',
      'Invalid time!' => 'Ugyldig tid',
      'Invalid date!' => 'Ugyldig dato',
      'Name' => 'Navn',
      'Group' => 'Gruppe',
      'Description' => 'Beskrivelse',
      'description' => 'beskrivelse',
      'Theme' => 'Tema',
      'Created' => 'Opprettet',
      'Created by' => 'Opprettet av',
      'Changed' => 'Endret',
      'Changed by' => 'Endret av',
      'Search' => 'S�k',
      'and' => 'og',
      'between' => 'mellom',
      'Fulltext Search' => 'Friteksts�k',
      'Data' => 'Data',
      'Options' => 'Valg',
      'Title' => 'Tittel',
      'Item' => 'Punkt',
      'Delete' => 'Slett',
      'Edit' => 'Rediger',
      'View' => 'Bilde',
      'Number' => 'Nummer',
      'System' => 'System',
      'Contact' => 'Kontakt',
      'Contacts' => 'Kontakter',
      'Export' => 'Eksport�r',
      'Up' => 'Opp',
      'Down' => 'Ned',
      'Add' => 'Legg til',
      'Category' => 'Kategori',
      'Viewer' => 'Fremviser',
      'New message' => 'Ny melding',
      'New message!' => 'Ny melding!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Vennligst besvar denne/disse sakene for � komme tilbake til det normale k�-visningsbildet!',
      'You got new message!' => 'Du har en ny melding!',
      'You have %s new message(s)!' => 'Du har %s ny(e) melding(er)!',
      'You have %s reminder ticket(s)!' => 'Du har %s p�minnelses-sak(er)!',
      'The recommended charset for your language is %s!' => 'Anbefalt tegnsett for ditt spr�k er %s!',
      'Passwords doesn\'t match! Please try it again!' => 'Passordene er ikke like. Vennligst pr�v igjen!',
      'Password is already in use! Please use an other password!' => 'Passordet er allerede i bruk, vennligst bruk et annet passord!',
      'Password is already used! Please use an other password!' => 'Passordet er allerede i bruk, vennligst bruk et annet passord!',
      'You need to activate %s first to use it!' => 'Du m� aktivere %s f�rst for � bruke den',
      'No suggestions' => 'Ingen forslag',
      'Word' => 'Ord',
      'Ignore' => 'Ignor�r',
      'replace with' => 'erstatt med',
      'Welcome to OTRS' => 'Velkommen til OTRS',
      'There is no account with that login name.' => 'Finner ingen konto med det navnet.',
      'Login failed! Your username or password was entered incorrectly.' => 'Innlogging feilet! Oppgitt brukernavn og/eller passord er ikke korrekt.',
      'Please contact your admin' => 'Vennligst ta kontakt med administrator',
      'Logout successful. Thank you for using OTRS!' => 'Utlogging utf�rt.  Takk for at du brukte OTRS!',
      'Invalid SessionID!' => 'Ugyldig SessionID!',
      'Feature not active!' => 'Funksjon ikke aktivert!',
      'License' => 'Lisens',
      'Take this Customer' => 'Velg denne kunden',
      'Take this User' => 'Velg denne brukeren',
      'possible' => 'mulig',
      'reject' => 'Avvises',
      'Facility' => 'Innretning',
      'Timeover' => 'Tidsoverskridelse',
      'Pending till' => 'Utsatt til',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Det er ikke anbefalt � arbeide som userid 1 (systemkonto)! Opprett heller nye brukere!',
      'Dispatching by email To: field.' => 'Utsending etter oppf�ringer i To:-felt.',
      'Dispatching by selected Queue.' => 'Utsending etter valgt k�.',
      'No entry found!' => 'Ingen oppf�ringer funnet!',
      'Session has timed out. Please log in again.' => 'Sesjonen har g�tt ut p� tid.  Vennligst logg inn igjen.',
      'No Permission!' => 'Ingen rettigheter!',
      'To: (%s) replaced with database email!' => 'Til: (%s) erstattet med mail fra database!',
      'Cc: (%s) added database email!' => 'Cc: (%s) la til database-epost!',
      '(Click here to add)' => '(Klikk her for � legge til)',
      'Preview' => 'Forh�ndsvisning',
      'Package not correctly deployed, you need to deploy it again!' => 'Pakken ble ikke korrekt aktivert. Du m� aktivere den igjen!',
      'Added User "%s"' => 'Lagt til bruker "%s"',
      'Contract' => 'Kontrakt',
      'Online Customer: %s' => 'P�logget kunde: %s',
      'Online Agent: %s' => 'P�logget agent: %s',
      'Calendar' => 'Kalender',
      'File' => 'Fil',
      'Filename' => 'Filnavn',
      'Type' => 'Type',
      'Size' => 'St�rrelse',
      'Upload' => 'Last opp',
      'Directory' => 'Katalog',
      'Signed' => 'Signert',
      'Sign' => 'Sign�r',
      'Crypted' => 'Kryptert',
      'Crypt' => 'Krypt�r',
      'Office' => 'Kontor',
      'Phone' => 'Telefon',
      'Fax' => 'Telefaks',
      'installed' => 'installert',
      'uninstalled' => 'avinstallert',

      # Template: AAAMonth
      'Jan' => 'jan',
      'Feb' => 'feb',
      'Mar' => 'mar',
      'Apr' => 'apr',
      'May' => 'mai',
      'Jun' => 'jun',
      'Jul' => 'jul',
      'Aug' => 'aug',
      'Sep' => 'sep',
      'Oct' => 'okt',
      'Nov' => 'nov',
      'Dec' => 'des',
      'January' => 'januar',
      'February' => 'februar',
      'March' => 'mars',
      'April' => 'april',
      'May' => 'mai',
      'June' => 'juni',
      'July' => 'juli',
      'August' => 'august',
      'September' => 'september',
      'October' => 'oktober',
      'November' => 'november',
      'December' => 'desember',

      # Template: AAANavBar
      'Admin-Area' => 'Admin-omr�de',
      'Agent-Area' => 'Agent-omr�de',
      'Ticket-Area' => 'Sak-omr�de',
      'Logout' => 'Logg ut',
      'Agent Preferences' => 'Agent-innstillinger',
      'Preferences' => 'Innstillinger',
      'Agent Mailbox' => 'Agent-innboks',
      'Stats' => 'Statistikk',
      'Stats-Area' => 'Statistikk-omr�de',
      'FAQ-Area' => 'FAQ-omr�de',
      'FAQ' => 'OBS',
      'FAQ-Search' => 'OBS-s�k',
      'FAQ-Article' => 'OBS-artikkel',
      'New Article' => 'Ny artikkel',
      'FAQ-State' => 'OBS-status',
      'Admin' => 'Administrator',
      'A web calendar' => 'EN web-kalender',
      'WebMail' => 'Webmail',
      'A web mail client' => 'En webmail-klient',
      'FileManager' => 'Filh�ndterer',
      'A web file manager' => 'En webbasert filh�ndterer',
      'Artefact' => 'Artefakt',
      'Incident' => 'Hendelse',
      'Advisory' => 'R�d',
      'WebWatcher' => 'Weboverv�ker',
      'Customer Users' => 'Kunder',
      'Customer Users <-> Groups' => 'Kunder <-> Grupper',
      'Users <-> Groups' => 'Saksbehandlere <-> Grupper',
      'Roles' => 'Roller',
      'Roles <-> Users' => 'Roller <-> Saksbehandlere',
      'Roles <-> Groups' => 'Roller <-> Grupper',
      'Salutations' => 'Hilsninger',
      'Signatures' => 'Signaturer',
      'Email Addresses' => 'E-postadresser',
      'Notifications' => 'Meldinger i e-poster',
      'Category Tree' => 'Kategori-tre',
      'Admin Notification' => 'Administrator-beskjed',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Innstillinger lagret!',
      'Mail Management' => 'E-post-administrasjon',
      'Frontend' => 'Grensesnitt',
      'Other Options' => 'Andre valg',
      'Change Password' => 'Endre passord',
      'New password' => 'Nytt passord',
      'New password again' => 'Nytt passord igjen',
      'Select your QueueView refresh time.' => 'Velg automatisk oppdateringsfrekvens i mappebilde.',
      'Select your frontend language.' => 'Velg spr�k.',
      'Select your frontend Charset.' => 'Velg tegnsett.',
      'Select your frontend Theme.' => 'Velg stil-tema.',
      'Select your frontend QueueView.' => 'Velg mappebilde.',
      'Spelling Dictionary' => 'Ordbok for stavekontroll',
      'Select your default spelling dictionary.' => 'Velg standard ordbok for stavekontroll.',
      'Max. shown Tickets a page in Overview.' => 'Maks. viste saker per side i oversikten.',
      'Can\'t update password, passwords doesn\'t match! Please try it again!' => 'Kan ikke oppdatere passord. Passordene er ikke like, vennligst fors�k igjen!',
      'Can\'t update password, invalid characters!' => 'Kan ikke oppdatere passord: ugyldige tegn!',
      'Can\'t update password, need min. 8 characters!' => 'Kan ikke oppdatere passord: trenger minst 8 tegn!',
      'Can\'t update password, need 2 lower and 2 upper characters!' => 'Kan ikke oppdatere passord: trenger minst 2 sm� og 2 store bokstaver!',
      'Can\'t update password, need min. 1 digit!' => 'Kan ikke oppdatere passord: trenger minst ett tall!',
      'Can\'t update password, need min. 2 characters!' => 'Kan ikke oppdatere passord: trenger minst 2 bokstaver',
      'Password is needed!' => 'Passord er p�krevd!',

      # Template: AAATicket
      'Lock' => 'Ta sak',
      'Unlock' => 'Frigi sak',
      'History' => 'Historikk',
      'Zoom' => 'Detaljer',
      'Age' => 'Alder',
      'Bounce' => 'Oversend',
      'Forward' => 'Videresende',
      'From' => 'Fra',
      'To' => 'Til',
      'Cc' => 'Cc',
      'Bcc' => 'Bcc',
      'Subject' => 'Emne',
      'Move' => 'Flytt',
      'Queue' => 'Mappe',
      'Priority' => 'Prioritet',
      'State' => 'Status',
      'Compose' => 'Forfatt',
      'Pending' => 'Satt p� vent',
      'Owner' => 'Saksbehandler',
      'Owner Update' => 'Eier-oppdatering',
      'Sender' => 'Avsender',
      'Article' => 'Artikkel',
      'Ticket' => 'Sak',
      'Createtime' => 'Opprettet',
      'plain' => 'r�',
      'Email' => 'E-post',
      'email' => 'e-post',
      'Close' => 'Avslutt sak',
      'Action' => 'Handling',
      'Attachment' => 'Vedlegg',
      'Attachments' => 'Vedlegg',
      'This message was written in a character set other than your own.' => 'Denne meldingen ble skrevet i et annet tegnsett enn det du bruker.',
      'If it is not displayed correctly,' => 'Dersom den ikke vises korrekt,',
      'This is a' => 'Dette er en',
      'to open it in a new window.' => 'for � �pne i nytt vindu',
      'This is a HTML email. Click here to show it.' => 'Dette er en HTML e-post. Klikk her for � vise den.',
      'Free Fields' => 'Stikkord',
      'Merge' => 'Flett',
      'closed successful' => 'l�st og avsluttet',
      'closed unsuccessful' => 'ul�st, men avsluttet',
      'new' => 'ny',
      'open' => '�pen',
      'closed' => 'avsluttet',
      'removed' => 'fjernet',
      'pending reminder' => 'venter p� p�minnelse',
      'pending auto close+' => 'venter p� avslutting (l�st)',
      'pending auto close-' => 'venter p� avslutting (ul�st)',
      'email-external' => 'e-post eksternt',
      'email-internal' => 'e-post internt',
      'note-external' => 'notis eksternt',
      'note-internal' => 'notis internt',
      'note-report' => 'notis til rapport',
      'phone' => 'telefon',
      'sms' => 'sms',
      'webrequest' => 'web-foresp�rsel',
      'lock' => 'privat',
      'unlock' => 'tilgjengelig',
      'very low' => 'sv�rt lav',
      'low' => 'lav',
      'normal' => 'normal',
      'high' => 'h�y',
      'very high' => 'sv�rt h�y',
      '1 very low' => '1 sv�rt lav',
      '2 low' => '2 lav',
      '3 normal' => '3 normal',
      '4 high' => '4 h�y',
      '5 very high' => '5 sv�rt h�y',
      'Ticket "%s" created!' => 'Sak "%s" opprettet!',
      'Ticket Number' => 'Saksnr',
      'Ticket Object' => 'Saksobjekt',
      'No such Ticket Number "%s"! Can\'t link it!' => 'Finner ikke saksnummer "%s"! Kan ikke linke til det!',
      'Don\'t show closed Tickets' => 'Ikke vis avsluttede saker',
      'Show closed Tickets' => 'Vis avsluttede saker',
      'Email-Ticket' => 'Send e-post',
      'Create new Email Ticket' => 'Opprett ny sak ved � sende e-post',
      'Phone-Ticket' => 'Henvendelser',
      'Create new Phone Ticket' => 'Opprett ny henvendelse',
      'Search Tickets' => 'S�k i saker',
      'Edit Customer Users' => 'Redig�r kundebrukere',
      'Bulk-Action' => 'Masseredigering',
      'Bulk Actions on Tickets' => 'Masseredigering p� saker',
      'Send Email and create a new Ticket' => 'Send e-post og opprett en ny sak',
      'Overview of all open Tickets' => 'Oversikt over alle tilgjengelige saker',
      'Locked Tickets' => 'Mine private saker',
      'Lock it to work on it!' => 'Sett sak som privat eller tilgjengelig!',
      'Unlock to give it back to the queue!' => 'Gj�r saken tilgjengelig i mappen!',
      'Shows the ticket history!' => 'Se p� historikken til saken!',
      'Print this ticket!' => 'Skriv ut denne saken!',
      'Change the ticket priority!' => 'Endre prioritet p� saken!',
      'Change the ticket free fields!' => 'Endre stikkordene!',
      'Link this ticket to an other objects!' => 'Link denne saken til en annen sak!',
      'Change the ticket owner!' => 'Endre saksbehandler til saken!',
      'Change the ticket customer!' => 'Endre kunde til saken!',
      'Add a note to this ticket!' => 'Legg til notis til saken!',
      'Merge this ticket!' => 'Flett denne saken',
      'Set this ticket to pending!' => 'Sett saken p� vent!',
      'Close this ticket!' => 'Avslutt denne saken!',
      'Look into a ticket!' => 'Se p� sak!',
      'Delete this ticket!' => 'Slett denne saken',
      'Mark as Spam!' => 'Mark�r som spam',
      'My Queues' => 'Mine mapper',
      'Shown Tickets' => 'Viste saker',
      'New ticket notification' => 'Merknad ved nyopprettet sak',
      'Send me a notification if there is a new ticket in "My Queues".' => 'Send meg en melding dersom det kommer en ny sak i mine utvalgte mapper.',
      'Follow up notification' => 'Oppf�lgingsmerknad',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Send meg en melding ved kundekorrespondanse p� saker jeg st�r som saksbehandler av.',
      'Ticket lock timeout notification' => 'Melding ved overskridelse av tidsfrist for avslutting av sak',
      'Send me a notification if a ticket is unlocked by the system.' => 'Send meg en melding dersom systemet �pner en avsluttet sak.',
      'Move notification' => 'Merknad ved mappe-endring',
      'Send me a notification if a ticket is moved into one of "My Queues".' => 'Send meg en melding dersom en sak flyttes over i en av mine utvalgte mapper.',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => 'Her velger du dine utvalgte mapper. Du vil ogs� f� p�minnelser fra disse mappene, hvis du har valgt det.',
      'Custom Queue' => 'Utvalgte mapper',
      'QueueView refresh time' => 'Automatisk oppdateringsfrekvens av mappe',
      'Screen after new ticket' => 'Skjermbilde etter innlegging av ny sak',
      'Select your screen after creating a new ticket.' => 'Velg skjermbilde som vises etter registrering av ny sak.',
      'Closed Tickets' => 'Avsluttede saker',
      'Show closed tickets.' => 'Vis avsluttede saker.',
      'Max. shown Tickets a page in QueueView.' => 'Max. viste saker per side i mappevisningen.',
      'CompanyTickets' => 'Firma-saker',
      'MyTickets' => 'Mine saker',
      'New Ticket' => 'Ny sak',
      'Create new Ticket' => 'Opprett ny sak',
      'Customer called' => 'Kunde oppringt',
      'phone call' => 'telefonsamtale',
      'Responses' => 'Ferdigsvar',
      'Responses <-> Queue' => 'Ferdigsvar <-> Mapper',
      'Auto Responses' => 'Autosvar',
      'Auto Responses <-> Queue' => 'Autosvar <-> Mapper',
      'Attachments <-> Responses' => 'Vedlegg <-> Ferdigsvar',
      'History::Move' => 'Sak flyttet inn i mappe "%s" (%s) fra mappe "%s" (%s).',
      'History::NewTicket' => 'Ny sak [%s] opprettet (Q=%s;P=%s;S=%s).',
      'History::FollowUp' => 'Oppf�lging til sak [%s]. %s',
      'History::SendAutoReject' => 'AutoReject sent to "%s".',
      'History::SendAutoReply' => 'AutoSvar sendt til "%s".',
      'History::SendAutoFollowUp' => 'AutoOppf�lging sendt til "%s".',
      'History::Forward' => 'Videresendt til "%s".',
      'History::Bounce' => 'Bounced to "%s".',
      'History::SendAnswer' => 'E-post sendt til "%s".',
      'History::SendAgentNotification' => '"%s"-p�minnelse sendt til "%s".',
      'History::SendCustomerNotification' => 'P�minnelse sendt til "%s".',
      'History::EmailAgent' => 'E-post sendt til saksbehandler.',
      'History::EmailCustomer' => 'Lagt e-post til sak. %s',
      'History::PhoneCallAgent' => 'Saksbehandler ringte kunde.',
      'History::PhoneCallCustomer' => 'Kunden ringte oss.',
      'History::AddNote' => 'Lagt til notis (%s)',
      'History::Lock' => 'Sak satt som privat.',
      'History::Unlock' => 'Sak gjort tilgjengelig.',
      'History::TimeAccounting' => '%s minutt(er) lagt til. Total tid er %s minutt(er).',
      'History::Remove' => '%s',
      'History::CustomerUpdate' => 'Oppdatert: %s',
      'History::PriorityUpdate' => 'Endret prioritet fra "%s" (%s) til "%s" (%s).',
      'History::OwnerUpdate' => 'Ny saksbehandler er "%s" (ID=%s).',
      'History::LoopProtection' => 'Loop-Protection! No auto-response sent to "%s".',
      'History::Misc' => '%s',
      'History::SetPendingTime' => 'Sett p� vent til: %s',
      'History::StateUpdate' => 'Gammel: "%s" Ny: "%s"',
      'History::TicketFreeTextUpdate' => 'Stikkord oppdatert: %s=%s;%s=%s;',
      'History::WebRequestCustomer' => 'Kundeforesp�rsel via web.',
      'History::TicketLinkAdd' => 'La til link til sak "%s".',
      'History::TicketLinkDelete' => 'Slettet link til sak "%s".',

      # Template: AAAWeekDay
      'Sun' => 's�n',
      'Mon' => 'man',
      'Tue' => 'tir',
      'Wed' => 'ons',
      'Thu' => 'tor',
      'Fri' => 'fre',
      'Sat' => 'l�r',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Administrasjon: Vedlegg',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Administrasjon: Autosvar',
      'Response' => 'Svar',
      'Auto Response From' => 'Autosvar-avsender',
      'Note' => 'Notis',
      'Useable options' => 'Gyldige valg',
      'to get the first 20 character of the subject' => 'gir de f�rste 20 bokstavene av emnebeskrivelsen',
      'to get the first 5 lines of the email' => 'gir de f�rste 5 linjene av e-posten',
      'to get the from line of the email' => 'gir avsenderlinjen i e-posten',
      'to get the realname of the sender (if given)' => 'gir avsenders fulle navn (hvis mulig)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Valg for ticket-data (f.eks. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Konfigurasjonsvalg (f.eks. &lt;OTRS_CONFIG_HttpType&gt;)',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'Det tilh�rende redigeringsvinduet har blitt lukket.  Avslutter.',
      'This window must be called from compose window' => 'Denne funksjonen m� kalles fra redigeringsvinduet',
      'Customer User Management' => 'Administrasjon av kunde-brukere',
      'Search for' => 'S�k etter',
      'Result' => 'Resultat',
      'Select Source (for add)' => 'Velg kilde (for � legge til)',
      'Source' => 'Kilde',
      'This values are read only.' => 'Disse verdiene kan ikke endres.',
      'This values are required.' => 'Disse verdiene m� fylles ut.',
      'Customer user will be needed to have a customer history and to login via customer panel.' => 'Kundebruker vil trenge � ha en kundehistorikk og logge inn via kundesidene',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => 'Kunde-bruker <-> Gruppe',
      'Change %s settings' => 'Endre %s-innstillinger',
      'Select the user:group permissions.' => 'Velg bruker:gruppe-rettigheter.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Hvis ingen punkter er valgt, er ingen rettigheter tildelt (saker i denne gruppen vil ikke v�re tilgjengelig for brukeren).',
      'Permission' => 'Rettigheter',
      'ro' => 'lesetilgang',
      'Read only access to the ticket in this group/queue.' => 'Kun lese-tilgang til saker i denne gruppen/mappen.',
      'rw' => 'skrivetilgang',
      'Full read and write access to the tickets in this group/queue.' => 'Full lese- og skrive-tilgang til saker i denne gruppen/mappen.',

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => 'Melding sendt til',
      'Recipents' => 'Mottager(e)',
      'Body' => 'Meldingstekst',
      'send' => 'Send',

      # Template: AdminGenericAgent
      'GenericAgent' => 'Administrasjon: GenericAgent',
      'Job-List' => 'Liste over jobber',
      'Last run' => 'Sist kj�rt',
      'Run Now!' => 'Kj�r n�!',
      'x' => 'x',
      'Save Job as?' => 'Lagre jobb som?',
      'Is Job Valid?' => 'Er jobben gyldig?',
      'Is Job Valid' => 'Er jobben gyldig',
      'Schedule' => 'Plan',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Friteksts�k i artikler (f.eks. "Mar*in" eller "Baue*")',
      '(e. g. 10*5155 or 105658*)' => 'f.eks. 10*5144 eller 105658*',
      '(e. g. 234321)' => 'f.eks. 234321',
      'Customer User Login' => 'Kunde-bruker login-navn',
      '(e. g. U5150)' => 'f.eks. U5150',
      'Agent' => 'Agent',
      'TicketFreeText' => 'Stikkordss�k',
      'Ticket Lock' => 'Saks-l�s',
      'Times' => 'Tider',
      'No time settings.' => 'Ingen tidsinnstillinger.',
      'Ticket created' => 'Sak opprettet',
      'Ticket created between' => 'Sak opprettet mellom',
      'New Priority' => 'Ny prioritet',
      'New Queue' => 'Ny mappe',
      'New State' => 'Ny status',
      'New Agent' => 'Ny agent',
      'New Owner' => 'Ny saksbehandler',
      'New Customer' => 'Ny kunde',
      'New Ticket Lock' => 'Ny saks-l�s',
      'CustomerUser' => 'Kunde-bruker',
      'Add Note' => 'Legg til notis',
      'CMD' => 'CMD',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Denne kommandoen vil bli kj�rt. ARG[0] vil v�re saksnummer. ARG[1] saks-id.',
      'Delete tickets' => 'Slett saker',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Advarsel! Disse sakene vil ble fjernet fra databasen! Sakene er borte for godt!',
      'Modules' => 'Moduler',
      'Param 1' => 'Parameter 1',
      'Param 2' => 'Parameter 2',
      'Param 3' => 'Parameter 3',
      'Param 4' => 'Parameter 4',
      'Param 5' => 'Parameter 5',
      'Param 6' => 'Parameter 6',
      'Save' => 'Lagre',

      # Template: AdminGroupForm
      'Group Management' => 'Administrasjon: Grupper',
      'The admin group is to get in the admin area and the stats group to get stats area.' => '\'admin\'-gruppen gir tilgang til Admin-omr�det, \'stats\'-gruppen til Statistikk-omr�det.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Opprett nye grupper for � kunne h�ndtere forskjellige rettigheter for forskjellige grupper agenter (f.eks. innkj�psavdeling, supportavdeling, salgsavdeling, ...).',
      'It\'s useful for ASP solutions.' => 'Nyttig for ASP-l�sninger.',

      # Template: AdminLog
      'System Log' => 'Systemlogg',
      'Time' => 'Tid',

      # Template: AdminNavigationBar
      'Users' => 'Saksbehandlere',
      'Groups' => 'Grupper',
      'Misc' => 'Diverse',

      # Template: AdminNotificationForm
      'Notification Management' => 'Administrasjon: Meldinger i e-poster',
      'Notification' => 'Melding',
      'Notifications are sent to an agent or a customer.' => 'Meldinger som sendes til agenter eller kunder.',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'gir tilgang til data for agenten som st�r som eier av saken (f.eks. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'gir tilgang til data for agenten som utf�rer handlingen (f.eks. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'gir tilgang til data for gjeldende kunde (f.eks. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',

      # Template: AdminPackageManager
      'Package Manager' => 'Pakkeh�ndterer',
      'Uninstall' => 'Avinstaller',
      'Version' => 'Versjon',
      'Do you really want to uninstall this package?' => 'Vil du virkelig avinstallere denne pakken?',
      'Install' => 'Installer',
      'Package' => 'Pakke',
      'Online Repository' => 'Online pakkelager',
      'Vendor' => 'Forhandler',
      'Upgrade' => 'Oppgrader',
      'Local Repository' => 'Lokalt pakkelager',
      'Status' => 'Status',
      'Reinstall' => 'Re-install�r',
      'Overview' => 'Oversikt',
      'Download' => 'Last ned',
      'Rebuild' => 'Bygg p� ny',
      'Required' => 'P�krevd',
      'PrimaryKey' => 'Prim�rn�kkel',
      'AutoIncrement' => 'Autoincrement',

      # Template: AdminPGPForm
      'PGP Management' => 'PGP-innstillinger',
      'Identifier' => 'N�kkel',
      'Bit' => 'Bit',
      'Key' => 'N�kkel',
      'Fingerprint' => 'Fingeravtrykk',
      'Expires' => 'Utg�r',
      'In this way you can directly edit the keyring configured in SysConfig.' => 'P� denne m�ten kan du direkte redigere keyringen som er konfigurert i SysConfig',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'Administrasjon: POP3-Konto',
      'Host' => 'Maskin',
      'Trusted' => 'Betrodd',
      'Dispatching' => 'Fordeling',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Innkommende e-poster fra POP3-kontoer blir sortert til valgt mappe!',
      'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Dersom kontoen er betrodd vil de eksisterende X-OTRS headere ved ankomst (for proritet...) bli brukt. PostMaster filtre vil bli brukt uansett.',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => 'Administrasjon: E-postfilter',
      'List' => 'Liste',
      'Filtername' => 'Filternavn',
      'Match' => 'Treff',
      'Header' => 'Overskrift',
      'Value' => 'Innhold',
      'Set' => 'Sett',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Gj�r sortering eller filtrering av inkommende epost basert p� X-headere. Regul�ruttrykk er ogs� mulig. ',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Dersom du bruker regul�ruttrykk kan du ogs� bruke den matchede verdien i () som [***] i \'Sett\')',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => 'Administrasjon: Mappe <-> Autosvar',

      # Template: AdminQueueForm
      'Queue Management' => 'Administrasjon: Mapper',
      'Sub-Queue of' => 'Undermappe av',
      'Unlock timeout' => 'Tidsintervall for � sette sak tilgjengelig for andre',
      '0 = no unlock' => '0 = ikke gj�r saker tilgjengelig',
      'Escalation time' => 'Eskalasjonstid',
      '0 = no escalation' => '0 = ingen eskalering',
      'Follow up Option' => 'Korrespondanse p� avsluttet sak',
      'Ticket lock after a follow up' => 'Saken settes som privat etter oppf�lgnings e-post',
      'Systemaddress' => 'Systemadresse',
      'Customer Move Notify' => 'Kundenotifikasjon ved flytting',
      'Customer State Notify' => 'Kundenotifikasjon ved statusendring',
      'Customer Owner Notify' => 'Kundenotifikasjon ved skifte av saksbehandler',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Hvis en sak er satt som privat, men likevel ikke blir besvart innen denne tiden, vil saken bli gjort tilgjengelig for andre.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Hvis en sak ikke blir besvart innen denne tiden, blir kun denne saken vist.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Hvis en kunde sender oppf�lgings e-post p� en avsluttet sak, blir saken l�st til forrige saksbehandler.',
      'Will be the sender address of this queue for email answers.' => 'Avsenderadresse for e-post i denne mappen.',
      'The salutation for email answers.' => 'Hilsning for e-postsvar.',
      'The signature for email answers.' => 'Signatur for e-postsvar.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS sender en merknad til kunden dersom saken flyttes.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS sender en merknad til kunden ved statusoppdatering.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS sender en merknad til kunden ved skifte av saksbehandler.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => 'Administrasjon: Ferdigsvar <-> Mapper',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Ferdigsvar',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => 'Administrasjon: Ferdigsvar <-> Vedlegg',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Administrasjon: Ferdigsvar',
      'A response is default text to write faster answer (with default text) to customers.' => 'Et ferdigsvar er en forh�ndsdefinert tekst for � lette skriving av svar p� vanlige henvendelser.',
      'Don\'t forget to add a new response a queue!' => 'Husk � tilordne nye ferdigsvar til en mappe!',
      'Next state' => 'Neste status',
      'All Customer variables like defined in config option CustomerUser.' => 'Alle "kunde-variabler" som er definert i konfigurasjonen CustomerUser',
      'The current ticket state is' => 'N�v�rende status p� sak',
      'Your email address is new' => 'Din e-postadresse er ny',

      # Template: AdminRoleForm
      'Role Management' => 'Administrasjon: Roller',
      'Create a role and put groups in it. Then add the role to the users.' => 'Opprett en rolle og legg grupper til rollen. Legg deretter til saksbehandlere til rollen.',
      'It\'s useful for a lot of users and groups.' => 'Dette er nyttig n�r du administrerer mange brukere og grupper.',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => 'Administrasjon: Roller <-> Grupper',
      'move_into' => 'Flytt til',
      'Permissions to move tickets into this group/queue.' => 'Rettighet til � flytte saker i denne gruppen/mappen.',
      'create' => 'Opprett',
      'Permissions to create tickets in this group/queue.' => 'Rettighet til � opprette saker i denne gruppen/mappen.',
      'owner' => 'Eier',
      'Permissions to change the ticket owner in this group/queue.' => 'Rettighet til � endre saksbehandler i denne gruppen/mappen.',
      'priority' => 'prioritet',
      'Permissions to change the ticket priority in this group/queue.' => 'Rettighet til � endre prioritet i denne gruppen/mappen.',

      # Template: AdminRoleGroupForm
      'Role' => 'Rolle',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => 'Administrasjon: Roller <-> Saksbehandlere',
      'Active' => 'Aktiv',
      'Select the role:user relations.' => 'Velg relasjonen rolle:bruker',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Administrasjon: Hilsninger',
      'customer realname' => 'Fullt kundenavn',
      'for agent firstname' => 'gir agents fornavn',
      'for agent lastname' => 'gir agents etternavn',
      'for agent user id' => 'gir agents bruker-id',
      'for agent login' => 'gir agents login',

      # Template: AdminSelectBoxForm
      'Select Box' => 'SQL-tilgang',
      'SQL' => 'SQL',
      'Limit' => 'Limit',
      'Select Box Result' => 'Select Box-resultat',

      # Template: AdminSession
      'Session Management' => 'Sesjonsh�ndtering',
      'Sessions' => 'Sesjoner',
      'Uniq' => 'Unik',
      'kill all sessions' => 'Termin�r alle sesjoner',
      'Session' => 'Sesjon',
      'kill session' => 'Termin�r sesjon',

      # Template: AdminSignatureForm
      'Signature Management' => 'Administrasjon: Signaturer',

      # Template: AdminSMIMEForm
      'S/MIME Management' => 'Administrasjon: S/MIME',
      'Add Certificate' => 'Legg til sertifikat',
      'Add Private Key' => 'Legg til privat n�kkel',
      'Secret' => 'Hemmelighet',
      'Hash' => 'Hash',
      'In this way you can directly edit the certification and private keys in file system.' => 'P� denne m�ten kan du direkte redigere sertifikatet og private n�kler i filsystemet. ',

      # Template: AdminStateForm
      'System State Management' => 'Administrasjon: Status',
      'State Type' => 'Status-type',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Forsikre deg om at du ogs� har oppdatert standard tilstander i Kernel/Config.pm!',
      'See also' => 'Se ogs�',

      # Template: AdminSysConfig
      'SysConfig' => 'SysConfig',
      'Group selection' => 'Valg av gruppe',
      'Show' => 'Vis',
      'Download Settings' => 'Last ned innstillinger',
      'Download all system config changes.' => 'Last ned alle endringer i systemkonfigurasjon.',
      'Load Settings' => 'Last inn innstillinger',
      'Subgroup' => 'Undergruppe',
      'Elements' => 'Elementer',

      # Template: AdminSysConfigEdit
      'Config Options' => 'Konfigurasjonsvalg',
      'Default' => 'Forvalgt',
      'Content' => 'Innhold',
      'New' => 'Ny',
      'New Group' => 'Ny gruppe',
      'Group Ro' => 'Gruppe lesetilgang',
      'New Group Ro' => 'Ny gruppe lesetilgang',
      'NavBarName' => 'navBarName',
      'NavBar' => 'Navigasjonsmeny',
      'Image' => 'Bilde',
      'Prio' => 'Prioritet',
      'Block' => 'Blokk',
      'AccessKey' => 'Tilgangstast',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Administrer: Systemets e-postadresser',
      'Email' => 'E-post',
      'Realname' => 'Fullt navn',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alle innkommende e-poster til denne addressen (To:) vil bli fordelt til valgt mappe.',

      # Template: AdminUserForm
      'User Management' => 'Administrasjon: Saksbehandlere',
      'Login as' => 'Logg in som',
      'Firstname' => 'Fornavn',
      'Lastname' => 'Etternavn',
      'User will be needed to handle tickets.' => 'Brukere er n�dvendig for � jobbe med saker.',
      'Don\'t forget to add a new user to groups and/or roles!' => 'Ikke glem og legg til nye saksbehandlere til grupper og/eller roller!',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => 'Administrer: Saksbehandlere <-> Gruppe',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'Adressebok',
      'Return to the compose screen' => 'Lukk vindu',
      'Discard all changes and return to the compose screen' => 'Forkast endringer og lukk vindu',

      # Template: AgentCalendarSmall

      # Template: AgentCalendarSmallIcon

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => 'Informasjon',

      # Template: AgentLinkObject
      'Link Object' => 'Link-objekt',
      'Select' => 'Velg',
      'Results' => 'Resultat',
      'Total hits' => 'Totalt funnet',
      'Site' => 'side',
      'Detail' => 'Detalj',

      # Template: AgentLookup
      'Lookup' => 'Oppslag',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => 'Sak valgt for masseredigering',
      'You need min. one selected Ticket!' => 'Du m� minimum velge �n sak!',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Stavekontroll',
      'spelling error(s)' => 'Stavefeil',
      'or' => 'eller',
      'Apply these changes' => 'Iverksett endringer',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'En melding m� ha en mottager i Til:-feltet!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'I Til-feltet m� det oppgis en gyldig email-adresse (f.eks. kunde@eksempeldomene.no)!',
      'Bounce ticket' => 'Oversend sak',
      'Bounce to' => 'Oversend til',
      'Next ticket state' => 'Neste status p� sak',
      'Inform sender' => 'Informer avsender',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'E-posten med saksnummer "<OTRS_TICKET>" er oversendt "<OTRS_BOUNCE_TO>". Vennligst ta kontakt p� denne adressen for videre henvendelser.',
      'Send mail!' => 'Send e-posten!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'En melding m� ha en emnebeskrivelse!',
      'Ticket Bulk Action' => 'Masseredigering av saker',
      'Spell Check' => 'Stavekontroll',
      'Note type' => 'Notistype',
      'Unlock Tickets' => 'Frigi saker',

      # Template: AgentTicketClose
      'A message should have a body!' => 'En melding m� inneholde en meldingstekst!',
      'You need to account time!' => 'Du har ikke f�rt tidsregnskap!',
      'Close ticket' => 'Avslutt sak',
      'Note Text' => 'Notistekst',
      'Close type' => 'Lukketilstand',
      'Time units' => 'Tidsenheter',
      ' (work units)' => ' (arbeidsenheter)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Stavekontroll m� utf�res p� alle meldinger!',
      'Compose answer for ticket' => 'Forfatt svar til sak',
      'Attach' => 'Legg ved',
      'Pending Date' => 'Utsatt til',
      'for pending* states' => 'for vente-tilstander',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Endre kunde for sak',
      'Set customer user and customer id of a ticket' => 'Sett kunde-bruker og kunde-id for sak',
      'Customer User' => 'Kunde-bruker',
      'Search Customer' => 'Kundes�k',
      'Customer Data' => 'Kundedata',
      'Customer history' => 'Kunde-historikk',
      'All customer tickets.' => 'Alle saker for kunde.',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Oppf�lging',

      # Template: AgentTicketEmail
      'Compose Email' => 'Skriv e-post',
      'new ticket' => 'Ny sak',
      'Clear To' => 'Visk ut "Til"',
      'All Agents' => 'Alle agenter',

      # Template: AgentTicketForward
      'Article type' => 'Artikkeltype',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Endre stikkord til sak',

      # Template: AgentTicketHistory
      'History of' => 'Historikk for',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket l�st',
      'Ticket unlock!' => 'Ticket frigi',

      # Template: AgentTicketMailbox
      'Mailbox' => 'Mine private saker',
      'Tickets' => 'Saker',
      'of' => 'av',
      'Page' => 'Side',
      'Filter' => 'Filter',
      'All messages' => 'Alle meldinger',
      'New messages' => 'Ny melding',
      'Pending messages' => 'Ventende meldinger',
      'Reminder messages' => 'P�minnelses-meldinger',
      'Reminder' => 'P�minnelse',
      'Sort by' => 'Sorter etter',
      'Order' => 'Sortering',
      'up' => 'stigende',
      'down' => 'synkende',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => 'Du m� bruke et saksnummer',
      'Ticket Merge' => 'Flett saker',
      'Merge to' => 'Flett med',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Din epost-sak med numemr "<OTRS_TICKET>" er flettet med ">OTRS_MERGE_TO_TICKET>". ',

      # Template: AgentTicketMove
      'Move Ticket' => 'Flytt sak',
      'Previous Owner' => 'Forrige saksbehandler',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Legg til notis ved sak',
      'Inform Agent' => 'Inform�r agent',
      'Optional' => 'Valgfri',
      'Inform involved Agents' => 'Inform�r involverte agenter',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Endre saksbehandler av sak',
      'Message for new Owner' => 'Melding for ny saksbehandler',

      # Template: AgentTicketPending
      'Set Pending' => 'Sett p� vent',
      'Pending type' => 'Venter p�',
      'Pending date' => 'Sett p� vent til',

      # Template: AgentTicketPhone
      'Phone call' => 'Telefonanrop',

      # Template: AgentTicketPhoneNew
      'Clear From' => 'Blank ut "Fra":',

      # Template: AgentTicketPlain
      'Plain' => 'Enkel',
      'TicketID' => 'Sak-ID',
      'ArticleID' => 'Artikkel-ID',

      # Template: AgentTicketPrint
      'Ticket-Info' => 'Saksinfo',
      'Accounted time' => 'Benyttet tid',
      'Escalation in' => 'Eskalering om',
      'Linked-Object' => 'Koblet objekt',
      'Parent-Object' => 'Foreldre-objekt',
      'Child-Object' => 'Barne-objekt',
      'by' => 'av',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Endre prioritet for sak',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Saker vist',
      'Tickets available' => 'Tilgjengelige saker',
      'All tickets' => 'Alle saker',
      'Queues' => 'Mapper',
      'Ticket escalation!' => 'Sak-eskalering!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'Din egen sak',
      'Compose Follow up' => 'Skriv oppf�lgingssvar',
      'Compose Answer' => 'Skriv svar',
      'Contact customer' => 'Kontakt kunde',
      'Change queue' => 'Endre mappe',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => 'S�k etter sak',
      'Profile' => 'Profil',
      'Search-Template' => 'S�kemal',
      'Created in Queue' => 'Opprettet i mappe',
      'Result Form' => 'Resultatbilde',
      'Save Search-Profile as Template?' => 'Lagre s�kekriterier som mal?',
      'Yes, save it with name' => 'Ja, lagre med navn',

      # Template: AgentTicketSearchResult
      'Search Result' => 'S�keresultat',
      'Change search options' => 'Endre s�ke-innstillinger',

      # Template: AgentTicketSearchResultPrint
      '"}' => '"}',

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'Sorter stigende',
      'U' => 'O',
      'sort downward' => 'Sorter synkende',
      'D' => 'N',

      # Template: AgentTicketStatusView
      'Ticket Status View' => 'Sakstatus-visning',
      'Open Tickets' => '�pne saker',

      # Template: AgentTicketZoom
      'Split' => 'Splitt',

      # Template: AgentTicketZoomStatus
      'Locked' => 'Tilgjenglighet',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => 'Traceback',

      # Template: CustomerFAQ
      'Print' => 'Skriv ut',
      'Symptom' => 'Symptom',
      'Problem' => 'Problem',
      'Solution' => 'L�sning',
      'Modified' => 'Endret',
      'Keywords' => 'N�kkelord',
      'Last update' => 'Sist endret',
      'FAQ System History' => 'FAQ Historikk',
      'modified' => 'endret',
      'FAQ Search' => 'FAQ S�k',
      'Fulltext' => 'Fritekst',
      'Keyword' => 'N�kkelord',
      'FAQ Search Result' => 'FAQ S�keresultat',

      # Template: CustomerFooter
      'Powered by' => 'Drevet av',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin
      'Login' => 'Logg inn',
      'Lost your password?' => 'Mistet passord?',
      'Request new password' => 'Be om nytt passord',
      'Create Account' => 'Opprett konto',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Velkommen %s',

      # Template: CustomerPreferencesForm

      # Template: CustomerStatusView

      # Template: CustomerTicketMessage

      # Template: CustomerTicketMessageNew

      # Template: CustomerTicketSearch

      # Template: CustomerTicketSearchResultCSV

      # Template: CustomerTicketSearchResultPrint

      # Template: CustomerTicketSearchResultShort

      # Template: CustomerTicketZoom

      # Template: CustomerWarning

      # Template: Error
      'Click here to report a bug!' => 'Klikk her for � rapportere en feil!',

      # Template: FAQ
      'Comment (internal)' => 'Kommentar (intern)',
      'A article should have a title!' => 'En artikkel b�r ha en tittel',
      'New FAQ Article' => 'Ny OBS-artikkel',
      'Do you really want to delete this Object?' => 'Vil du virkelig slette dette objektet?',
      'System History' => 'Historikk',

      # Template: FAQCategoryForm
      'Name is required!' => 'Navn er p�krevd',
      'FAQ Category' => 'FAQ Kategori',

      # Template: FAQLanguageForm
      'FAQ Language' => 'FAQ Spr�k',

      # Template: Footer
      'Top of Page' => 'Toppen av siden',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'Hjem',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Web-installasjon',
      'accept license' => 'aksepter lisens',
      'don\'t accept license' => 'ikke aksepter lisens',
      'Admin-User' => 'Admin-bruker',
      'Admin-Password' => 'Administrator-passord',
      'your MySQL DB should have a root password! Default is empty!' => 'Din MySQL-database b�r ha et root-passord satt!  Default er intet passord!',
      'Database-User' => 'Database-bruker',
      'default \'hot\'' => 'Standard \'hot\'',
      'DB connect host' => 'Tilkoblingsmaskin for database',
      'Database' => 'Database',
      'Create' => 'Opprett',
      'false' => 'usann',
      'SystemID' => 'System-ID',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Unik id for dette systemet.  Alle saksnummer og http-sesjonsid-er starter med denne id-en)',
      'System FQDN' => 'Systemets FQDN',
      '(Full qualified domain name of your system)' => '(Fullkvalifisert dns-navn for ditt system)',
      'AdminEmail' => 'Admin e-post',
      '(Email of the system admin)' => '(E-post til systemadmin)',
      'Organization' => 'Organisasjon',
      'Log' => 'Logg',
      'LogModule' => 'Logg-modul',
      '(Used log backend)' => '(Valgt logge-backend)',
      'Logfile' => 'Logfil',
      '(Logfile just needed for File-LogModule!)' => '(Logfile kun p�krevet for File-LogModule!)',
      'Webfrontend' => 'Web-grensesnitt',
      'Default Charset' => 'Standardtegnsett',
      'Use utf-8 it your database supports it!' => 'Bruk utf-8 dersom din database st�tter det!',
      'Default Language' => 'Standardspr�k',
      '(Used default language)' => '(Valgt standardspr�k)',
      'CheckMXRecord' => 'CheckMXRecord',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Sjekker mx-innslag for oppgitte e-postadresser i meldinger som skrives.  Bruk ikke CheckMXRecord om din OTRS-maskin er bak en oppringt-linje!)',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'For � kunne bruke OTRS, m� f�lgende linje utf�res p� kommandolinjen som root.',
      'Restart your webserver' => 'Restart webserveren din',
      'After doing so your OTRS is up and running.' => 'Etter dette vil OTRS v�re oppe og kj�re.',
      'Start page' => 'Startside',
      'Have a lot of fun!' => 'Ha det g�y!',
      'Your OTRS Team' => 'Ditt OTRS-Team',

      # Template: Login

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Ingen tilgang',

      # Template: Notify
      'Important' => 'Viktig',

      # Template: PrintFooter
      'URL' => 'URL',

      # Template: PrintHeader
      'printed by' => 'skrevet av',

      # Template: Redirect

      # Template: SystemStats
      'Format' => 'Format',

      # Template: Test
      'OTRS Test Page' => 'OTRS Test-side',
      'Counter' => 'Teller',

      # Template: Warning
      # Misc
      'Create Database' => 'Opprett database',
      'DB Host' => 'Databasemaskin',
      'Ticket Number Generator' => 'Saksnummer-generator',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Sakskjennetegn, f.eks. \'Ticket#\', \'Call#\' eller \'MyTicket#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'P� denne m�ten kan du direkte redigere n�kkelringen som er konfigurert i Kernel/Config.pm',
      'Customer history search (e. g. "ID342425").' => 'S�k etter kunde for historikk (f.eks. "ID342425").',
      'Close!' => 'Lukk!',
      'Don\'t forget to add a new user to groups!' => 'Ikke glem � gi nye brukere en gruppe!',
      'CreateTicket' => 'Opprettet sak',
      'OTRS DB Name' => 'OTRS DB navn',
      'System Settings' => 'Systeminnstillinger',
      'Finished' => 'Ferdig',
      'Queue ID' => 'Mappe-ID',
      'FAQ Overview' => 'FAQ Oversikt',
      'DB Admin User' => 'DB administratorbruker',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Valg for saksdata (f.eks. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
      'Change user <-> group settings' => 'Endre bruker <-> gruppe-instillinger',
      'DB Type' => 'DB type',
      'next step' => 'neste steg',
      'Termin1' => 'Termin1',
      'Customer history search' => 'Historikk for kunde',
      'Admin-Email' => 'Admin e-post',
      'QueueView' => 'Mapper',
      'Create new database' => 'Opprett ny database',
      'Delete old database' => 'Slett gammel database',
      'No * possible!' => 'Jokertegn ikke tillatt!',
      'OTRS DB User' => 'OTRS DB bruker',
      'PhoneView' => 'Henvendelser',
      'Verion' => 'Versjon',
      'OTRS DB Password' => 'OTRS DB passord',
      'DB Admin Password' => 'DB administratorpassord',
      'Drop Database' => 'Slett database',
      '(Used ticket number format)' => '(Valgt format for saksnummer)',
    };
    # $$STOP$$
}
# --
1;
