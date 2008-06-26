# --
# Kernel/Language/nb_NO.pm - Norwegian language translation (bokm�l)
# Copyright (C) 2004 Arne Georg Gleditsch <argggh at linpro.no>
# Copyright (C) 2005 Stefansen Espen <espen.stefansen at imr.no>
# Copyright (C) 2006 Knut Haugen <knuthaug at linpro.no>
# Copyright (C) 2007 Fredrik Andersen <fredrik.andersen at husbanken.no>
# --
# $Id: nb_NO.pm,v 1.58 2008-06-26 13:24:02 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::Language::nb_NO;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = q$Revision: 1.58 $;

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Fri May 16 14:08:39 2008

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D/%M %Y %T';
    $Self->{DateFormatLong}      = '%A %D. %B %Y %T';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
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
        'second(s)' => 'sekund(er)',
        'seconds' => 'sekunder',
        'second' => 'sekund',
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
        '* invalid' => '* ugyldig',
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
        'Unlink' => 'Koble fra',
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
        'agent' => 'saksbehandler',
        'system' => 'System',
        'Customer Info' => 'Kunde-info',
        'Customer Company' => 'Kundebedrift',
        'Company' => 'Bedrift',
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
        'There is no account with that login name.' => 'Finner ingen konto med det navnet.',
        'Login failed! Your username or password was entered incorrectly.' => 'Innlogging feilet! Oppgitt brukernavn og/eller passord er ikke korrekt.',
        'Please contact your admin' => 'Vennligst ta kontakt med administrator',
        'Logout successful. Thank you for using OTRS!' => 'Utlogging utf�rt.  Takk for at du brukte OTRS!',
        'Invalid SessionID!' => 'Ugyldig SessionID!',
        'Feature not active!' => 'Funksjon ikke aktivert!',
        'Login is needed!' => 'Innlogging kreves',
        'Password is needed!' => 'Passord er p�krevd!',
        'License' => 'Lisens',
        'Take this Customer' => 'Velg denne kunden',
        'Take this User' => 'Velg denne brukeren',
        'possible' => 'mulig',
        'reject' => 'Avvises',
        'reverse' => 'motsatt',
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
        'Package not correctly deployed! You should reinstall the Package again!' => 'Pakken er ikke installert korrekt! Du burde reinstallere pakken igjen!',
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
        'Mobile' => 'Mobil',
        'Zip' => 'Postnummer',
        'City' => 'By',
        'Street' => 'Gate',
        'Country' => 'Land',
        'installed' => 'installert',
        'uninstalled' => 'avinstallert',
        'Security Note: You should activate %s because application is already running!' => 'Sikkerhetsnotis: Du burde aktivere %s siden applikasjonen allerede kj�rer!',
        'Unable to parse Online Repository index document!' => 'Kunne ikke lese online bibliotekets indeks dokument!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'Ingen pakker ble funnet for det �nskede rammeverket i online bibliotek, men pakker for andre rammeverk ble funnet!',
        'No Packages or no new Packages in selected Online Repository!' => 'Ingen pakker, eller ingen nye pakker i valgte online bibliotek!',
        'printed at' => 'skrevet ut p�',
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
        'Admin' => 'Administrator',
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

        # Template: AAAStats
        'Stat' => 'Statistikk',
        'Please fill out the required fields!' => 'Vennligst fyll ut alle p�krevde felter!',
        'Please select a file!' => 'Vennligst velg en fil!',
        'Please select an object!' => 'Vennligst velg et objekt!',
        'Please select a graph size!' => 'Vennligst velge en graf st�rrelse!',
        'Please select one element for the X-axis!' => 'Vennligst velg ett element for X-aksen!',
        'You have to select two or more attributes from the select field!' => 'Du m� velge to eller flere attributter fra valg feltet!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Vennligst velg kun ett element, eller deaktiver \'Fast\' knappen der det valgte feltet er markert!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Dersom du benytter en avkryssingsboks m� du velge noen attributter i valg feltet!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Vennligst skriv inn en verdi i det valgte input feltet, eller skru av \'Fast\' avkryssingsboksen!',
        'The selected end time is before the start time!' => 'Det valgte slutt tidspunktet er f�r start tidspunktet!',
        'You have to select one or more attributes from the select field!' => 'Du m� velge en eller flere attributter fra valg feltet!',
        'The selected Date isn\'t valid!' => 'Den valgte datoen er ikke gyldig!',
        'Please select only one or two elements via the checkbox!' => 'Vennligst velg kun en eller to elementer i avkryssingsboksen!',
        'If you use a time scale element you can only select one element!' => 'Dersom du benytter et tidsskala element, m� du kun velge ett element!',
        'You have an error in your time selection!' => 'Du har en feil i tidsvalget!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'Rapporteringsintervallet er for lite, vennligst velg et st�rre intervall!',
        'The selected start time is before the allowed start time!' => 'Det valgte start tidspunktet er f�r godkjent start tidspunkt!',
        'The selected end time is after the allowed end time!' => 'Det valgte slutt tidspunktet er etter godkjent slutt tidspunkt!',
        'The selected time period is larger than the allowed time period!' => 'Den valgte tidsperioden er st�rre enn godkjent tidsperiode!',
        'Common Specification' => 'Felles spesifikasjon',
        'Xaxis' => 'X-akse',
        'Value Series' => 'Verdiserier',
        'Restrictions' => 'Restriksjoner',
        'graph-lines' => 'graf-linjer',
        'graph-bars' => 'graf-stolper',
        'graph-hbars' => 'graf-hlinjer',
        'graph-points' => 'graf-punkter',
        'graph-lines-points' => 'graf-linjer-punkter',
        'graph-area' => 'graf-omr�de',
        'graph-pie' => 'graf-kakediagram',
        'extended' => 'utvidet',
        'Agent/Owner' => 'Agent/Eier',
        'Created by Agent/Owner' => 'Opprettet av Agent/Eier',
        'Created Priority' => 'Opprettet Prioritet',
        'Created State' => 'Opprettet Status',
        'Create Time' => 'Tid',
        'CustomerUserLogin' => 'KundeBrukerInnlogging',
        'Close Time' => 'Avsluttet Tidspunkt',

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
        'Cc' => 'Kopi',
        'Bcc' => 'Blindkopi',
        'Subject' => 'Emne',
        'Move' => 'Flytt',
        'Queue' => 'Mappe',
        'Priority' => 'Prioritet',
        'Priority Update' => 'Prioritets oppdatering',
        'State' => 'Status',
        'Compose' => 'Forfatt',
        'Pending' => 'Satt p� vent',
        'Owner' => 'Saksbehandler',
        'Owner Update' => 'Saksbehandler Oppdatering',
        'Responsible' => 'Ansvarlig',
        'Responsible Update' => 'Ansvarlig Oppdatering',
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
        'merged' => 'flettet',
        'closed successful' => 'l�st og avsluttet',
        'closed unsuccessful' => 'ul�st, men avsluttet',
        'new' => 'ny',
        'open' => '�pen',
        'closed' => 'avsluttet',
        'removed' => 'fjernet',
        'pending reminder' => 'venter p� p�minnelse',
        'pending auto' => 'venter p� automatisk endring',
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
        'New Article' => 'Ny artikkel',
        'Email-Ticket' => 'Send e-post',
        'Create new Email Ticket' => 'Opprett ny sak ved � sende e-post',
        'Phone-Ticket' => 'Henvendelser',
        'Search Tickets' => 'S�k i saker',
        'Edit Customer Users' => 'Redig�r kundebrukere',
        'Edit Customer Company' => 'Redig�r kundebedrift',
        'Bulk-Action' => 'Masseredigering',
        'Bulk Actions on Tickets' => 'Masseredigering p� saker',
        'Send Email and create a new Ticket' => 'Send e-post og opprett en ny sak',
        'Create new Email Ticket and send this out (Outbound)' => 'Opprett ny e-post sak, og send denne utg�ende',
        'Create new Phone Ticket (Inbound)' => 'Opprett ny telefonhenvendelse (inng�ende)',
        'Overview of all open Tickets' => 'Oversikt over alle tilgjengelige saker',
        'Locked Tickets' => 'Mine private saker',
        'Watched Tickets' => 'Overv�kede saker',
        'Watched' => 'Overv�ket',
        'Subscribe' => 'Abboner',
        'Unsubscribe' => 'Stopp abbonement',
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
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Din epost-sak med numemr "<OTRS_TICKET>" er flettet med "<OTRS_MERGE_TO_TICKET>". ',
        'Ticket %s: first response time is over (%s)!' => 'Sak %s: f�rste responstid tidsfristen er overskredet (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Sak %s: f�rste responstid tidsfristen er over om %s!',
        'Ticket %s: update time is over (%s)!' => 'Sak %s: oppdateringstidsfristen er overskredet (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Sak %s: oppdateringstidsfristen er over om %s!',
        'Ticket %s: solution time is over (%s)!' => 'Sak %s: l�sningstidsfristen er overskredet (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Sak %s: l�sningstidsfristen er over om %s!',
        'There are more escalated tickets!' => 'Det er flere eskalerte saker!',
        'New ticket notification' => 'Merknad ved nyopprettet sak',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Send meg en melding dersom det kommer en ny sak i mine utvalgte mapper.',
        'Follow up notification' => 'Oppf�lgingsmerknad',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Send meg en melding ved kundekorrespondanse p� saker jeg st�r som saksbehandler av.',
        'Ticket lock timeout notification' => 'Melding ved overskridelse av tidsfrist for avslutting av sak',
        'Send me a notification if a ticket is unlocked by the system.' => 'Send meg en melding dersom systemet �pner en avsluttet sak.',
        'Move notification' => 'Merknad ved mappe-endring',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Send meg en melding dersom en sak flyttes over i en av mine utvalgte mapper.',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Her velger du dine utvalgte mapper. Du vil ogs� f� p�minnelser fra disse mappene, hvis du har valgt det.',
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
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => 'Updated SLA to %s (ID=%s).',
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
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

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
        'To get the first 20 character of the subject.' => 'For � hente de f�rste 20 tegnene i overskriften.',
        'To get the first 5 lines of the email.' => 'For � hente de f�rste 5 linjene i e-posten.',
        'To get the realname of the sender (if given).' => 'For � hente senderens virkelige navn (hvis oppgitt).',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'For � hente artikkelens atributter (f.eks. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> og <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Valg for den gjeldende kundes brukerdata (f.eks. <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Valg for saks eieren (f.eks. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Valg for saksansvarlige (f.eks. <OTRS_RESPONSIBLE_UserFirstname>)',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'Valg for den gjeldene bruker som forespurte denne handlingen (f.eks. <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'Valg for saksdata (f.eks. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Konfigurasjonsvalg (f.eks. <OTRS_CONFIG_HttpType>).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Administrasjon av kundebedrifter',
        'Search for' => 'S�k etter',
        'Add Customer Company' => 'Legg til kundebedrift',
        'Add a new Customer Company.' => 'Legg til en ny kundebedrift',
        'List' => 'Liste',
        'This values are required.' => 'Disse verdiene m� fylles ut.',
        'This values are read only.' => 'Disse verdiene kan ikke endres.',

        # Template: AdminCustomerUserForm
        'Customer User Management' => 'Administrasjon av kunde-brukere',
        'Add Customer User' => 'Legg til kundebruker',
        'Source' => 'Kilde',
        'Create' => 'Opprett',
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

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Kunde <-> Tjenesteadministrasjon',
        'CustomerUser' => '',
        'Service' => '',
        'Edit default services.' => '',
        'Search Result' => '',
        'CustomerUser' => '',
        'Service' => '',
        'Allocate services to CustomerUser' => 'Tilordne tjenester til kunde-bruker',
        'Active' => '',
        'Allocate CustomerUser to service' => 'Tilordne kunde-bruker til tjeneste',
        'Active' => '',

        # Template: AdminEmail
        'Message sent to' => 'Melding sendt til',
        'Recipents' => 'Mottager(e)',
        'Body' => 'Meldingstekst',
        'Send' => 'Send',

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
        'SLA' => 'SLA',
        'Agent' => 'Agent',
        'Ticket Lock' => 'Saks-l�s',
        'TicketFreeFields' => 'SakTilgjengeligeFelter',
        'Create Times' => 'Opprettelsestidspunkt',
        'No create time settings.' => 'Ingen opprettelsestidspunkt innstillinger.',
        'Ticket created' => 'Sak opprettet',
        'Ticket created between' => 'Sak opprettet mellom',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending Times' => 'Ventetid',
        'No pending time settings.' => 'Ingen innstillinger for ventetid.',
        'Ticket pending time reached' => 'Ventetiden er n�dd',
        'Ticket pending time reached between' => 'Ventetiden er n�dd mellom',
        'New Service' => '',
        'New SLA' => '',
        'New Priority' => 'Ny prioritet',
        'New Queue' => 'Ny mappe',
        'New State' => 'Ny status',
        'New Agent' => 'Ny agent',
        'New Owner' => 'Ny saksbehandler',
        'New Customer' => 'Ny kunde',
        'New Ticket Lock' => 'Ny saks-l�s',
        'New Type' => '',
        'New Title' => '',
        'New Type' => '',
        'New TicketFreeFields' => 'Ny SakTilgjengeligFelter',
        'Add Note' => 'Legg til notis',
        'CMD' => 'Kommando',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Denne kommandoen vil bli kj�rt. ARG[0] vil v�re saksnummer. ARG[1] saks-id.',
        'Delete tickets' => 'Slett saker',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Advarsel! Disse sakene vil ble fjernet fra databasen! Sakene er borte for godt!',
        'Send Notification' => 'Send notis',
        'Param 1' => 'Parameter 1',
        'Param 2' => 'Parameter 2',
        'Param 3' => 'Parameter 3',
        'Param 4' => 'Parameter 4',
        'Param 5' => 'Parameter 5',
        'Param 6' => 'Parameter 6',
        'Send no notifications' => 'Ikke send notiser',
        'Yes means, send no agent and customer notifications on changes.' => 'Ja betyr at man ikke sender saksbehandler eller kunde endringsnotiser.',
        'No means, send agent and customer notifications on changes.' => 'Nei betyr at man sender saksbehandler og kunde endringsnotiser.',
        'Save' => 'Lagre',
        '%s Tickets affected! Do you really want to use this job?' => '%s saker ber�res! Vil du virkelig utf�re denne jobben?',
        '"}' => '"}',

        # Template: AdminGroupForm
        'Group Management' => 'Administrasjon: Grupper',
        'Add Group' => 'Legg til gruppe',
        'Add a new Group.' => 'Legg til en ny gruppe',
        'The admin group is to get in the admin area and the stats group to get stats area.' => '\'admin\'-gruppen gir tilgang til Admin-omr�det, \'stats\'-gruppen til Statistikk-omr�det.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Opprett nye grupper for � kunne h�ndtere forskjellige rettigheter for forskjellige grupper agenter (f.eks. innkj�psavdeling, supportavdeling, salgsavdeling, ...).',
        'It\'s useful for ASP solutions.' => 'Nyttig for ASP-l�sninger.',

        # Template: AdminLog
        'System Log' => 'Systemlogg',
        'Time' => 'Tid',

        # Template: AdminMailAccount
        'Mail Account Management' => '',
        'Host' => 'Maskin',
        'Trusted' => 'Betrodd',
        'Dispatching' => 'Fordeling',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Innkommende e-poster fra POP3-kontoer blir sortert til valgt mappe!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Dersom kontoen er betrodd vil de eksisterende X-OTRS headere ved ankomst (for proritet...) bli brukt. PostMaster filtre vil bli brukt uansett.',

        # Template: AdminNavigationBar
        'Users' => 'Saksbehandlere',
        'Groups' => 'Grupper',
        'Misc' => 'Diverse',

        # Template: AdminNotificationForm
        'Notification Management' => 'Administrasjon: Meldinger i e-poster',
        'Notification' => 'Melding',
        'Notifications are sent to an agent or a customer.' => 'Meldinger som sendes til agenter eller kunder.',

        # Template: AdminPackageManager
        'Package Manager' => 'Pakkeh�ndterer',
        'Uninstall' => 'Avinstaller',
        'Version' => 'Versjon',
        'Do you really want to uninstall this package?' => 'Vil du virkelig avinstallere denne pakken?',
        'Reinstall' => 'Re-install�r',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Vil du virkelig reinstallere pakken (alle manuelle endringer vil bli tapt)?',
        'Continue' => 'Fortsett',
        'Install' => 'Installer',
        'Package' => 'Pakke',
        'Online Repository' => 'Online pakkelager',
        'Vendor' => 'Forhandler',
        'Upgrade' => 'Oppgrader',
        'Local Repository' => 'Lokalt pakkelager',
        'Status' => 'Status',
        'Overview' => 'Oversikt',
        'Download' => 'Last ned',
        'Rebuild' => 'Bygg p� ny',
        'ChangeLog' => 'Endringslogg',
        'Date' => 'Dato',
        'Filelist' => 'Filliste',
        'Download file from package!' => 'Last ned fil fra pakke!',
        'Required' => 'P�krevd',
        'PrimaryKey' => 'Prim�rn�kkel',
        'AutoIncrement' => 'Autoincrement',
        'SQL' => 'SQL',
        'Diff' => 'Forskjell',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Ytelseslogg',
        'This feature is enabled!' => 'Denne funksjonen er aktivert!',
        'Just use this feature if you want to log each request.' => 'Bruk denne funksjonen kun dersom du vil logge hver foresp�rsel.',
        'Of couse this feature will take some system performance it self!' => 'Selvf�lgelig vil denne funksjonen kreve litt systemressurser selv ogs�!',
        'Disable it here!' => 'Deaktiver denne her!',
        'This feature is disabled!' => 'Denne funksjonen er deaktivert!',
        'Enable it here!' => 'Aktiver denne her!',
        'Logfile too large!' => 'Loggfilen er for stor!',
        'Logfile too large, you need to reset it!' => 'Loggfilen er for stor, du m� resette den!',
        'Range' => 'Rekkevidde',
        'Interface' => 'Grensesnitt',
        'Requests' => 'Foresp�rsler',
        'Min Response' => 'Min Respons',
        'Max Response' => 'Max Respons',
        'Average Response' => 'Gjennomsnittlig Respons',
        'Period' => '',
        'Min' => '',
        'Max' => '',
        'Average' => '',

        # Template: AdminPGPForm
        'PGP Management' => 'PGP-innstillinger',
        'Result' => 'Resultat',
        'Identifier' => 'N�kkel',
        'Bit' => 'Bit',
        'Key' => 'N�kkel',
        'Fingerprint' => 'Fingeravtrykk',
        'Expires' => 'Utg�r',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'P� denne m�ten kan du direkte redigere keyringen som er konfigurert i SysConfig',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Administrasjon: E-postfilter',
        'Filtername' => 'Filternavn',
        'Match' => 'Treff',
        'Header' => 'Overskrift',
        'Value' => 'Innhold',
        'Set' => 'Sett',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Gj�r sortering eller filtrering av inkommende epost basert p� X-headere. Regul�ruttrykk er ogs� mulig. ',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Dersom du �nsker � kun treffe e-post adresser, benytt EMAILADDRESS:info@example.com i Fra, Til eller Kopi.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Dersom du bruker regul�ruttrykk kan du ogs� bruke den matchede verdien i () som [***] i \'Sett\')',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'Administrasjon: Mappe <-> Autosvar',

        # Template: AdminQueueForm
        'Queue Management' => 'Administrasjon: Mapper',
        'Sub-Queue of' => 'Undermappe av',
        'Unlock timeout' => 'Tidsintervall for � sette sak tilgjengelig for andre',
        '0 = no unlock' => '0 = ikke gj�r saker tilgjengelig',
        'Only business hours are counted.' => '',
        'Escalation - First Response Time' => 'Eskalering - f�rste responstid',
        '0 = no escalation' => '0 = ingen eskalering',
        'Only business hours are counted.' => '',
        'Notify by' => '',
        'Escalation - Update Time' => 'Eskalering - oppdateringstid',
        'Notify by' => '',
        'Escalation - Solution Time' => 'Eskalering - l�sningstid',
        'Follow up Option' => 'Korrespondanse p� avsluttet sak',
        'Ticket lock after a follow up' => 'Saken settes som privat etter oppf�lgnings e-post',
        'Systemaddress' => 'Systemadresse',
        'Customer Move Notify' => 'Kundenotifikasjon ved flytting',
        'Customer State Notify' => 'Kundenotifikasjon ved statusendring',
        'Customer Owner Notify' => 'Kundenotifikasjon ved skifte av saksbehandler',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Hvis en sak er satt som privat, men likevel ikke blir besvart innen denne tiden, vil saken bli gjort tilgjengelig for andre.',
        'Escalation time' => 'Eskalasjonstid',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Hvis en sak ikke blir besvart innen denne tiden, blir kun denne saken vist.',
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
        'The current ticket state is' => 'N�v�rende status p� sak',
        'Your email address is new' => 'Din e-postadresse er ny',

        # Template: AdminRoleForm
        'Role Management' => 'Administrasjon: Roller',
        'Add Role' => 'Legg til rolle',
        'Add a new Role.' => 'Legg til en ny rolle.',
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
        'Select the role:user relations.' => 'Velg relasjonen rolle:bruker',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Administrasjon: Hilsninger',
        'Add Salutation' => 'Legg til hilsning',
        'Add a new Salutation.' => 'Legg til en ny hilsning.',

        # Template: AdminSelectBoxForm
        'SQL Box' => '',
        'Limit' => 'Grense',
        'Go' => 'Kj�r',
        'Select Box Result' => 'Select Box-resultat',

        # Template: AdminService
        'Service Management' => 'Tjenesteadministrasjon',
        'Add Service' => 'Legg til tjeneste',
        'Add a new Service.' => 'Legg til en ny tjeneste.',
        'Sub-Service of' => 'Undertjeneste av',

        # Template: AdminSession
        'Session Management' => 'Sesjonsh�ndtering',
        'Sessions' => 'Sesjoner',
        'Uniq' => 'Unik',
        'Kill all sessions' => 'Termin�r alle sesjoner',
        'Session' => 'Sesjon',
        'Content' => 'Innhold',
        'kill session' => 'Termin�r sesjon',

        # Template: AdminSignatureForm
        'Signature Management' => 'Administrasjon: Signaturer',
        'Add Signature' => 'Legg til signatur',
        'Add a new Signature.' => 'Legg til en ny signatur',

        # Template: AdminSLA
        'SLA Management' => 'SLA administrasjon',
        'Add SLA' => 'Legg til SLA',
        'Add a new SLA.' => 'Legg til en ny SLA',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'Administrasjon: S/MIME',
        'Add Certificate' => 'Legg til sertifikat',
        'Add Private Key' => 'Legg til privat n�kkel',
        'Secret' => 'Hemmelighet',
        'Hash' => 'Hash',
        'In this way you can directly edit the certification and private keys in file system.' => 'P� denne m�ten kan du direkte redigere sertifikatet og private n�kler i filsystemet. ',

        # Template: AdminStateForm
        'State Management' => 'Status administrasjon',
        'Add State' => 'Legg til status',
        'Add a new State.' => 'Legg til en ny status.',
        'State Type' => 'Status-type',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Forsikre deg om at du ogs� har oppdatert standard tilstander i Kernel/Config.pm!',
        'See also' => 'Se ogs�',

        # Template: AdminSysConfig
        'SysConfig' => 'Systemkonfigurasjon',
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
        'Add System Address' => 'Legg til system adresse',
        'Add a new System Address.' => 'Legg til en ny system adresse',
        'Realname' => 'Fullt navn',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alle innkommende e-poster til denne addressen (To:) vil bli fordelt til valgt mappe.',

        # Template: AdminTypeForm
        'Type Management' => 'Type administrasjon',
        'Add Type' => 'Legg til type',
        'Add a new Type.' => 'Legg til en ny type.',

        # Template: AdminUserForm
        'User Management' => 'Administrasjon: Saksbehandlere',
        'Add User' => 'Legg til bruker',
        'Add a new Agent.' => 'Legg til en ny saksbehandler.',
        'Login as' => 'Logg in som',
        'Firstname' => 'Fornavn',
        'Lastname' => 'Etternavn',
        'User will be needed to handle tickets.' => 'Brukere er n�dvendig for � jobbe med saker.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Ikke glem � legge til nye saksbehandlere til grupper og/eller roller!',

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
        'Page' => 'Side',
        'Detail' => 'Detalj',

        # Template: AgentLookup
        'Lookup' => 'Oppslag',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Stavekontroll',
        'spelling error(s)' => 'Stavefeil',
        'or' => 'eller',
        'Apply these changes' => 'Iverksett endringer',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Vil du virkelig slette dette objektet?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'Velg restriksjonene for � karakterisere statistikken',
        'Fixed' => 'Fast',
        'Please select only one element or turn off the button \'Fixed\'.' => 'Vennligst velg kun ett element, eller deaktiver \'Fast\' knappen',
        'Absolut Period' => 'Absolutt Periode',
        'Between' => 'Mellom',
        'Relative Period' => 'Relativ Periode',
        'The last' => 'Den siste',
        'Finish' => 'Ferdig',
        'Here you can make restrictions to your stat.' => 'Her kan du begrense statistikken.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Dersom du deaktiverer "Fast" knappen, vil saksbehandleren som genererer statistikken endre attributtene til det korresponderende elementet.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Registrering av felles spesifikasjoner',
        'Permissions' => 'Tilgang',
        'Format' => 'Format',
        'Graphsize' => 'Graf st�rrelse',
        'Sum rows' => 'Summer rader',
        'Sum columns' => 'Summer kolonner',
        'Cache' => 'Hurtigbuffer',
        'Required Field' => 'P�krevd felt',
        'Selection needed' => 'Valg kreves',
        'Explanation' => 'Forklaring',
        'In this form you can select the basic specifications.' => 'I dette bildet kan du velge grunnspesifikasjonene.',
        'Attribute' => 'Attributt',
        'Title of the stat.' => 'Statistikk tittel',
        'Here you can insert a description of the stat.' => 'Her kan du sette inn en beskrivelse av statistikken.',
        'Dynamic-Object' => 'Dynamisk-objekt',
        'Here you can select the dynamic object you want to use.' => 'Her kan du velge det dynamiske objektet som du �nsker � benytte.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(OBS: Installasjonen begrenser hvor mange dynamiske objekter du kan benytte)',
        'Static-File' => 'Statisk fil',
        'For very complex stats it is possible to include a hardcoded file.' => 'For veldig komplekse statistikker er det mulig � inkludere en hardkodet fil.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'Dersom en ny hardkodet fil er tilgjengelig, vil denne attributten vises, og du kan foreta et valg.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Tilgangsinnstillinger. Du kan velge en eller flere grupper for � gj�re den konfigurerte statistikken synlig for forskjellige agenter.',
        'Multiple selection of the output format.' => 'Flere valg for visningsformatet.',
        'If you use a graph as output format you have to select at least one graph size.' => 'Dersom du benytter en graf for visning av statistikken, m� du velge minst �n grafst�rrelse.',
        'If you need the sum of every row select yes' => 'Dersom du trenger � summere radene, velg ja.',
        'If you need the sum of every column select yes.' => 'Dersom du trenger � summere kolonnene, velg ja.',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'De fleste statistikker kan lagres i hurtigbufferet. Dette vil medf�re at grafen genereres raskere.',
        '(Note: Useful for big databases and low performance server)' => '(OBS: Nyttig for store databaser og tjenere med lav ytelse)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Med en ugyldig statistikk kan man ikke generere en statistikk.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'Dette er nyttig dersom man �nsker at ingen skal kunne hente resultatene til en statistikk som ikke er ferdig konfigurert.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'Velg elementene for verdiserien.',
        'Scale' => 'Skala',
        'minimal' => 'minimal',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Bemerk at skalaen for verdieserien m� v�re st�rre enn skalaen til X-aksen (f.eks. X-akse => m�ned, verdiserie => �r).',
        'Here you can the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Her kan du sette verdiserien. Du har muligheten til � velge en eller flere elementer, og deretter kan du velge attributtene til elementene. Hver attributt vil bli vist som en egen verdiserie. Dersom du ikke velge noen attributter, vil alle attributtene bli brukt n�r statistikken genereres. I tillegg vil nye attributter som er lagt til etter konfigurasjonen av statistikken ogs� vises.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'Velg et element som skal brukes p� X-aksen',
        'maximal period' => 'Maksimal periode',
        'minimal scale' => 'Minimal skala',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Her kan du definere x-aksen. Du kan velge ett element, og deretter m� du velge to eller flere attributter til dette elementet. Dersom du ikke gj�r et valg, vil alle attributtene til elementet bli benyttet om du genererer statistikken, i tillegg til eventuelle nye attributter som blir lagt til siden siste konfigurasjon.',

        # Template: AgentStatsImport
        'Import' => 'Importer',
        'File is not a Stats config' => 'Filen er ikke en statistikk konfigurasjon',
        'No File selected' => 'Ingen fil er valgt',

        # Template: AgentStatsOverview
        'Object' => 'Objekt',

        # Template: AgentStatsPrint
        'Print' => 'Skriv ut',
        'No Element selected.' => 'Ingen valgte elementer.',

        # Template: AgentStatsView
        'Export Config' => 'Eksporter konfigurasjon',
        'Information about the Stat' => 'Informasjon om statistikken',
        'Exchange Axis' => 'Bytt akser',
        'Configurable params of static stat' => 'Konfigurerbare parametre til statisk statistikk',
        'No element selected.' => 'Ingen valgte elementer.',
        'maximal period from' => 'Maksimal periode fra',
        'to' => 'til',
        'Start' => 'Start',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'Med input og valg feltene kan man konfigurere statistikken til � fylle dine behov. Hvilke elementer til en statistikk man kan endre avhenger av hvilke elementer den som opprettet statistikken har satt til � kunne endres.',

        # Template: AgentTicketBounce
        'Bounce ticket' => 'Oversend sak',
        'Ticket locked!' => 'Ticket l�st',
        'Ticket unlock!' => 'Ticket frigi',
        'Bounce to' => 'Oversend til',
        'Next ticket state' => 'Neste status p� sak',
        'Inform sender' => 'Informer avsender',
        'Send mail!' => 'Send e-posten!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Masseredigering av saker',
        'Spell Check' => 'Stavekontroll',
        'Note type' => 'Notistype',
        'Unlock Tickets' => 'Frigi saker',

        # Template: AgentTicketClose
        'Close ticket' => 'Avslutt sak',
        'Previous Owner' => 'Forrige saksbehandler',
        'Inform Agent' => 'Inform�r agent',
        'Optional' => 'Valgfri',
        'Inform involved Agents' => 'Inform�r involverte agenter',
        'Attach' => 'Legg ved',
        'Next state' => 'Neste status',
        'Pending date' => 'Sett p� vent til',
        'Time units' => 'Tidsenheter',

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Forfatt svar til sak',
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
        'Refresh' => 'Oppdater',
        'Clear To' => 'Visk ut "Til"',

        # Template: AgentTicketEscalationView
        'Ticket Escalation View' => '',
        'Escalation' => '',
        'Today' => '',
        'Tomorrow' => '',
        'Next Week' => '',
        'up' => 'stigende',
        'down' => 'synkende',
        'Escalation' => '',
        'Locked' => 'Tilgjenglighet',

        # Template: AgentTicketForward
        'Article type' => 'Artikkeltype',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Endre stikkord til sak',

        # Template: AgentTicketHistory
        'History of' => 'Historikk for',

        # Template: AgentTicketLocked

        # Template: AgentTicketMailbox
        'Mailbox' => 'Mine private saker',
        'Tickets' => 'Saker',
        'of' => 'av',
        'Filter' => 'Filter',
        'New messages' => 'Ny melding',
        'Reminder' => 'P�minnelse',
        'Sort by' => 'Sorter etter',
        'Order' => 'Sortering',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Flett saker',
        'Merge to' => 'Flett med',

        # Template: AgentTicketMove
        'Move Ticket' => 'Flytt sak',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Legg til notis ved sak',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Endre saksbehandler av sak',

        # Template: AgentTicketPending
        'Set Pending' => 'Sett p� vent',

        # Template: AgentTicketPhone
        'Phone call' => 'Telefonanrop',
        'Clear From' => 'Blank ut "Fra":',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Enkel',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Saksinfo',
        'Accounted time' => 'Benyttet tid',
        'First Response Time' => 'F�rste responstid',
        'Update Time' => 'Oppdateringstid',
        'Solution Time' => 'L�sningstid',
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
        'Service Time' => 'Tjenestetid',
        'Your own Ticket' => 'Din egen sak',
        'Compose Follow up' => 'Skriv oppf�lgingssvar',
        'Compose Answer' => 'Skriv svar',
        'Contact customer' => 'Kontakt kunde',
        'Change queue' => 'Endre mappe',

        # Template: AgentTicketQueueTicketViewLite

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Endre ansvarlig for saken',

        # Template: AgentTicketSearch
        'Ticket Search' => 'S�k etter sak',
        'Profile' => 'Profil',
        'Search-Template' => 'S�kemal',
        'TicketFreeText' => 'Stikkordss�k',
        'Created in Queue' => 'Opprettet i mappe',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Result Form' => 'Resultatbilde',
        'Save Search-Profile as Template?' => 'Lagre s�kekriterier som mal?',
        'Yes, save it with name' => 'Ja, lagre med navn',

        # Template: AgentTicketSearchOpenSearchDescription

        # Template: AgentTicketSearchResult
        'Search Result' => '',
        'Change search options' => 'Endre s�ke-innstillinger',

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketSearchResultShort

        # Template: AgentTicketStatusView
        'Ticket Status View' => 'Sakstatus-visning',
        'Open Tickets' => '�pne saker',

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
        'Traceback' => 'Tilbakesporing',

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

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Tider',
        'No time settings.' => 'Ingen tidsinnstillinger.',

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Klikk her for � rapportere en feil!',

        # Template: Footer
        'Top of Page' => 'Toppen av siden',

        # Template: FooterSmall

        # Template: Header

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Web-installasjon',
        'Welcome to %s' => 'Velkommen til %s',
        'Accept license' => 'Aksepter lisens',
        'Don\'t accept license' => 'Ikke aksepter lisens',
        'Admin-User' => 'Admin-bruker',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '',
        'Admin-Password' => 'Administrator-passord',
        'Database-User' => 'Database-bruker',
        'default \'hot\'' => 'Standard \'hot\'',
        'DB connect host' => 'Tilkoblingsmaskin for database',
        'Database' => 'Database',
        'Default Charset' => 'Standardtegnsett',
        'utf8' => 'utf8',
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
        'Use utf-8 it your database supports it!' => 'Bruk utf-8 dersom din database st�tter det!',
        'Default Language' => 'Standardspr�k',
        '(Used default language)' => '(Valgt standardspr�k)',
        'CheckMXRecord' => 'SjekkMXInnslag',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Sjekker mx-innslag for oppgitte e-postadresser i meldinger som skrives.  Bruk ikke CheckMXRecord om din OTRS-maskin er bak en oppringt-linje!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'For � kunne bruke OTRS, m� f�lgende linje utf�res p� kommandolinjen som root.',
        'Restart your webserver' => 'Restart webserveren din',
        'After doing so your OTRS is up and running.' => 'Etter dette vil OTRS v�re oppe og kj�re.',
        'Start page' => 'Startside',
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

        # Template: Test
        'OTRS Test Page' => 'OTRS Test-side',
        'Counter' => 'Teller',

        # Template: Warning
        # Misc
        'Edit Article' => 'Editer artikkel',
        'Create Database' => 'Opprett database',
        'DB Host' => 'Databasemaskin',
        'Ticket Number Generator' => 'Saksnummer-generator',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Sakskjennetegn, f.eks. \'Ticket#\', \'Call#\' eller \'MyTicket#\')',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'P� denne m�ten kan du direkte redigere n�kkelringen som er konfigurert i Kernel/Config.pm',
        'Create new Phone Ticket' => 'Opprett ny henvendelse',
        'Symptom' => 'Symptom',
        'U' => 'O',
        'A message should have a To: recipient!' => 'En melding m� ha en mottager i Til:-feltet!',
        'Site' => 'side',
        'Customer history search (e. g. "ID342425").' => 'S�k etter kunde for historikk (f.eks. "ID342425").',
        'Close!' => 'Lukk!',
        'for agent firstname' => 'gir agents fornavn',
        'The message being composed has been closed.  Exiting.' => 'Det tilh�rende redigeringsvinduet har blitt lukket.  Avslutter.',
        'A web calendar' => 'EN web-kalender',
        'to get the realname of the sender (if given)' => 'gir avsenders fulle navn (hvis mulig)',
        'OTRS DB Name' => 'OTRS DB navn',
        'Notification (Customer)' => 'Notis (kunde)',
        'Select Source (for add)' => 'Velg kilde (for � legge til)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Valg for saksdata (f.eks. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Queue ID' => 'Mappe-ID',
        'Home' => 'Hjem',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Konfigurasjonsvalg (f.eks. <OTRS_CONFIG_HttpType>)',
        'System History' => 'Historikk',
        'customer realname' => 'Fullt kundenavn',
        'Pending messages' => 'Ventende meldinger',
        'Port' => 'Port',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributs of the corresponding element.' => 'Dersom du fjerner haken i \'Fast\' avkryssingsboksen, vil agenten som genererer statistikken kunne endre attributtene til det korresponderende elementet.',
        'Modules' => 'Moduler',
        'for agent login' => 'gir agents login',
        'Keyword' => 'N�kkelord',
        'Close type' => 'Lukketilstand',
        'DB Admin User' => 'DB administratorbruker',
        'for agent user id' => 'gir agents bruker-id',
        'Your reporting time interval is to small, please use a larger time scale!' => 'Rapporteringsintervallet er for lite, vennligst velg en st�rre tidsskala!',
        'sort upward' => 'Sorter stigende',
        'Change user <-> group settings' => 'Endre bruker <-> gruppe-instillinger',
        'Problem' => 'Problem',
        'next step' => 'neste steg',
        'Customer history search' => 'Historikk for kunde',
        'Admin-Email' => 'Admin e-post',
        'Stat#' => 'Stat#',
        'Create new database' => 'Opprett ny database',
        'A message must be spell checked!' => 'Stavekontroll m� utf�res p� alle meldinger!',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'E-posten med saksnummer "<OTRS_TICKET>" er oversendt "<OTRS_BOUNCE_TO>". Vennligst ta kontakt p� denne adressen for videre henvendelser.',
        'ArticleID' => 'Artikkel-ID',
        'A message should have a body!' => 'En melding m� inneholde en meldingstekst!',
        'All Agents' => 'Alle agenter',
        'Keywords' => 'N�kkelord',
        'No * possible!' => 'Jokertegn ikke tillatt!',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Valg for gjeldende bruker som forespurte denne hendelsen (f.eks. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => 'Melding til ny saksbehandler',
        'to get the first 5 lines of the email' => 'gir de f�rste 5 linjene av e-posten',
        'OTRS DB Password' => 'OTRS DB passord',
        'Last update' => 'Sist endret',
        'to get the first 20 character of the subject' => 'gir de f�rste 20 bokstavene av emnebeskrivelsen',
        'Select the customeruser:service relations.' => '',
        'DB Admin Password' => 'DB administratorpassord',
        'Drop Database' => 'Slett database',
        'Advisory' => 'R�d',
        'FileManager' => 'Filh�ndterer',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'gir tilgang til data for gjeldende kunde (f.eks. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'Venter p�',
        'Comment (internal)' => 'Kommentar (intern)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Valg for sakseieren (f.eks. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'This window must be called from compose window' => 'Denne funksjonen m� kalles fra redigeringsvinduet',
        'You need min. one selected Ticket!' => 'Du m� minimum velge �n sak!',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Valg for ticket-data (f.eks. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(Valgt format for saksnummer)',
        'Fulltext' => 'Fritekst',
        'Incident' => 'Hendelse',
        'All Agent variables.' => 'Alle agent variabler.',
        ' (work units)' => ' (arbeidsenheter)',
        'All Customer variables like defined in config option CustomerUser.' => 'Alle "kunde-variabler" som er definert i konfigurasjonen CustomerUser',
        'accept license' => 'aksepter lisens',
        'for agent lastname' => 'gir agents etternavn',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'gir tilgang til data for agenten som utf�rer handlingen (f.eks. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'P�minnelses-meldinger',
        'A message should have a subject!' => 'En melding m� ha en emnebeskrivelse!',
        'Don\'t forget to add a new user to groups!' => 'Ikke glem � gi nye brukere en gruppe!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'I Til-feltet m� det oppgis en gyldig email-adresse (f.eks. kunde@eksempeldomene.no)!',
        'CreateTicket' => 'Opprettet sak',
        'You need to account time!' => 'Du har ikke f�rt tidsregnskap!',
        'System Settings' => 'Systeminnstillinger',
        'WebWatcher' => 'Weboverv�ker',
        'Finished' => 'Ferdig',
        'Explorer' => 'Utforsker',
        'Account Type' => 'Konto type',
        'Split' => 'Splitt',
        'D' => 'N',
        'All messages' => 'Alle meldinger',
        'System Status' => 'System status',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Valg for saks-data (f.eks. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Artefact' => 'Artefakt',
        'A article should have a title!' => 'En artikkel b�r ha en tittel',
        'Here you can define the x-axis. You can select one element via the radio button. Than you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Her kan man definere X-aksen. Man kan f�rst velge ett element, og deretter to eller fler attributter for elementet. Dersom du ikke velger noen attributter vil alle attributtene til elementet velges, i tillegg til eventuelle nye elementer som legges til senere.',
        'Event' => 'Hendelse',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Konfigurasjonsinnstillinger (f.eks. &lt;OTRS_CONFIG_HttpType&gt;)',
        'don\'t accept license' => 'ikke aksepter lisens',
        'A web mail client' => 'En webmail-klient',
        'Please select only one Element or turn of the button \'Fixed\'.' => 'Vennligst velg kun ett element, eller deaktiver \'Fast\' knappen.',
        'WebMail' => 'Webmail',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Valg for saksdata (f.eks. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'gir tilgang til data for agenten som st�r som eier av saken (f.eks. <OTRS_OWNER_UserFirstname>)',
        'Name is required!' => 'Navn er p�krevd',
        'DB Type' => 'DB type',
        'Termin1' => 'Termin1',
        'kill all sessions' => 'Termin�r alle sesjoner',
        'to get the from line of the email' => 'gir avsenderlinjen i e-posten',
        'Solution' => 'L�sning',
        'QueueView' => 'Mapper',
        'Select Box' => 'SQL-tilgang',
        'Please select only one element or turn of the button \'Fixed\' where the select field is marked!' => 'Vennligst velg kun ett element, eller skru av \'Fast\' knappen der valgt felt er markert!',
        'Welcome to OTRS' => 'Velkommen til OTRS',
        'modified' => 'endret',
        'Escalation in' => 'Eskalering om',
        'Delete old database' => 'Slett gammel database',
        'sort downward' => 'Sorter synkende',
        'You need to use a ticket number!' => 'Du m� bruke et saksnummer',
        'A web file manager' => 'En webbasert filh�ndterer',
        'Have a lot of fun!' => 'Ha det g�y!',
        'send' => 'Send',
        'Note Text' => 'Notistekst',
        'POP3 Account Management' => 'Administrasjon: POP3-Konto',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Valg for gjeldende kundes brukerdata (f.eks. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'System State Management' => 'Administrasjon: Status',
        'OTRS DB User' => 'OTRS DB bruker',
        'PhoneView' => 'Henvendelser',
        'maximal period form' => 'maksimal periode form',
        'Verion' => 'Versjon',
        'TicketID' => 'Sak-ID',
        'SubCategoryOf' => 'Underkategori',
        'Modified' => 'Endret',
        'Ticket selected for bulk action!' => 'Sak valgt for masseredigering',

        'Link Object: %s' => '',
        'Unlink Object: %s' => '',
        'Linked as' => '',
        'Can not create link with %s!' => '',
        'Can not delete link with %s!' => '',
        'Object already linked as %s.' => '',
    };
    # $$STOP$$
    return;
}

1;
