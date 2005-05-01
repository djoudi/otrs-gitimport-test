# -- 
# Kernel/Language/nb_NO.pm - Norwegian language translation (bokm�l)
# Copyright (C) 2004 Arne Georg Gleditsch <argggh@linpro.no>
# --
# $Id: nb_NO.pm,v 1.8 2005-05-01 22:46:13 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::nb_NO;

use strict;

use vars qw($VERSION);
$VERSION = q$Revision: 1.8 $;
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation file sync: Mon May  2 00:38:24 2005

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
      'day' => 'dag',
      'days' => 'dager',
      'hour' => 'time',
      'hours' => 'timer',
      'minute' => 'minutt',
      'minutes' => 'minutter',
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
      'invalid' => 'ugyldig',
      ' 2 minutes' => ' 2 minutter',
      ' 5 minutes' => ' 5 minutter',
      ' 7 minutes' => ' 7 minutter',
      '10 minutes' => '10 minutter',
      '15 minutes' => '15 minutter',
      'Mr.' => '',
      'Mrs.' => '',
      'Next' => '',
      'Back' => 'Tilbake',
      'Next...' => '',
      '...Back' => '',
      '-none-' => '',
      'none' => 'ingen',
      'none!' => 'ingen!',
      'none - answered' => 'ingen - besvart',
      'please do not edit!' => 'Vennligst ikke endre!',
      'AddLink' => 'Legg til link',
      'Link' => '',
      'Linked' => '',
      'Link (Normal)' => '',
      'Link (Parent)' => '',
      'Link (Child)' => '',
      'Normal' => '',
      'Parent' => '',
      'Child' => '',
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
      'CustomerIDs' => '',
      'customer' => 'kunde',
      'agent' => '',
      'system' => 'System',
      'Customer Info' => 'Kunde-info',
      'go!' => 'Start!',
      'go' => 'Start',
      'All' => 'Alle',
      'all' => 'alle',
      'Sorry' => 'Beklager',
      'update!' => 'Oppdater!',
      'update' => 'oppdater',
      'Update' => 'Oppdater',
      'submit!' => 'Send!',
      'submit' => 'Send',
      'Submit' => '',
      'change!' => 'endre!',
      'Change' => 'Endre',
      'change' => 'endre',
      'click here' => 'klikk her',
      'Comment' => 'Kommentar',
      'Valid' => 'Gyldig',
      'Name' => 'Navn',
      'Group' => 'Gruppe',
      'Description' => 'Beskrivelse',
      'description' => 'beskrivelse',
      'Theme' => 'Tema',
      'Created' => 'Opprettet',
      'Created by' => '',
      'Changed' => '',
      'Changed by' => '',
      'Search' => 'S�k',
      'and' => 'og',
      'between' => '',
      'Fulltext Search' => '',
      'Data' => '',
      'Options' => 'Opsjoner',
      'Title' => '',
      'Item' => '',
      'Delete' => 'Slett',
      'Edit' => 'Rediger',
      'View' => 'Bilde',
      'Number' => '',
      'System' => '',
      'Contact' => 'Kontakt',
      'Contacts' => '',
      'Export' => '',
      'Up' => '',
      'Down' => '',
      'Add' => 'Legg til',
      'Category' => 'Kategori',
      'New message' => 'Ny melding',
      'New message!' => 'Ny melding!',
      'Admin-Area' => 'Admin-omr�de',
      'Agent-Area' => 'Agent-omr�de',
      'FAQ-Area' => 'FAQ-omr�de',
      'QueueView' => 'K�er',
      'Stats' => 'Statistikk',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Vennligst besvar denne/disse ticketene for � komme tilbake til det normale k�-visningsbildet!',
      'You got new message!' => 'Du har en ny melding!',
      'You have %s new message(s)!' => 'Du har %s ny(e) melding(er)!',
      'You have %s reminder ticket(s)!' => 'Du har %s p�minnelses-ticket(er)!',
      'The recommended charset for your language is %s!' => 'Anbefalt tegnsett for ditt spr�k er %s!',
      'Passwords dosn\'t match! Please try it again!' => '',
      'Password is already in use! Please use an other password!' => '',
      'Password is already used! Please use an other password!' => '',
      'No suggestions' => 'Ingen forslag',
      'Word' => 'Ord',
      'Ignore' => 'Ignorere',
      'replace with' => 'Erstatt med',
      'Welcome to OTRS' => 'Velkommen til OTRS',
      'There is no account with that login name.' => 'Finner ingen konto med det navnet.',
      'Login failed! Your username or password was entered incorrectly.' => 'Innlogging feilet! Oppgitt brukernavn og/eller passord er ikke korrekt.',
      'Please contact your admin' => 'Vennligst ta kontakt med administrator',
      'Logout successful. Thank you for using OTRS!' => 'Utlogging utf�rt.  Takk for at du brukte OTRS!',
      'Invalid SessionID!' => 'Ugydlig SessionID!',
      'Feature not active!' => 'Funksjon ikke aktivert!',
      'Ticket Number' => '',
      'Ticket Object' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'Take this Customer' => '',
      'Take this User' => 'Velg denne brukeren',
      'possible' => 'Gjen�pner',
      'reject' => 'Avvises',
      'Facility' => 'Innretning',
      'Timeover' => 'Tidsoverskridelse',
      'Pending till' => 'Utsatt til',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Det er ikke anbefalt � arbeide som userid 1 (systemkonto)! Opprett heller nye brukere!',
      'Dispatching by email To: field.' => 'Utsending etter oppf�ringer i To:-felt.',
      'Dispatching by selected Queue.' => 'Utsending etter valgt k�.',
      'No entry found!' => 'Ingen innslag funnet!',
      'Session has timed out. Please log in again.' => 'Sesjonen har g�tt ut p� tid.  Vennligst logg p� igjen.',
      'No Permission!' => '',
      'To: (%s) replaced with database email!' => 'Til: (%s) erstattet med mail fra database!',
      'Cc: (%s) added database email!' => '',
      'Don\'t show closed Tickets' => 'Ikke vis lukkede ticketer',
      'Show closed Tickets' => 'Vis lukkede ticketer',
      'New Article' => 'Ny artikkel',
      '(Click here to add)' => '(Klikk her for � legge til)',
      'last' => 'siste',
      'before' => 'f�r',
      'day(s)' => 'dag(er)',
      'month(s)' => 'm�ned(er)',
      'week(s)' => 'uke(r)',
      'year(s)' => '�r',
      'Preview' => 'Forh�ndsvisning',
      'Added User "%s"' => '',
      'Contract' => '',
      'Online Customer: %s' => '',
      'Online Agent: %s' => '',
      'Calendar' => '',
      'File' => '',
      'Filename' => 'Filnavn',
      'Type' => '',
      'Size' => '',
      'Upload' => '',
      'Directory' => '',
      'Signed' => '',
      'Sign' => '',
      'Crypted' => '',
      'Crypt' => '',
      'History::Move' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
      'History::NewTicket' => 'New Ticket [%s] created (Q=%s;P=%s;S=%s).',
      'History::FollowUp' => 'FollowUp for [%s]. %s',
      'History::SendAutoReject' => 'AutoReject sent to "%s".',
      'History::SendAutoReply' => 'AutoReply sent to "%s".',
      'History::SendAutoFollowUp' => 'AutoFollowUp sent to "%s".',
      'History::Forward' => 'Forwarded to "%s".',
      'History::Bounce' => 'Bounced to "%s".',
      'History::SendAnswer' => 'Email sent to "%s".',
      'History::SendAgentNotification' => '"%s"-notification sent to "%s".',
      'History::SendCustomerNotification' => 'Notification sent to "%s".',
      'History::EmailAgent' => 'Email sent to customer.',
      'History::EmailCustomer' => 'Added email. %s',
      'History::PhoneCallAgent' => 'Agent called customer.',
      'History::PhoneCallCustomer' => 'Customer called us.',
      'History::AddNote' => 'Added note (%s)',
      'History::Lock' => 'Locked ticket.',
      'History::Unlock' => 'Unlocked ticket.',
      'History::TimeAccounting' => '%s time unit(s) accounted. Now total %s time unit(s).',
      'History::Remove' => '%s',
      'History::CustomerUpdate' => 'Updated: %s',
      'History::PriorityUpdate' => 'Changed priority from "%s" (%s) to "%s" (%s).',
      'History::OwnerUpdate' => 'New owner is "%s" (ID=%s).',
      'History::LoopProtection' => 'Loop-Protection! No auto-response sent to "%s".',
      'History::Misc' => '%s',
      'History::SetPendingTime' => 'Updated: %s',
      'History::StateUpdate' => 'Old: "%s" New: "%s"',
      'History::TicketFreeTextUpdate' => 'Updated: %s=%s;%s=%s;',
      'History::WebRequestCustomer' => 'Customer request via web.',
      'History::TicketLinkAdd' => 'Added link to ticket "%s".',
      'History::TicketLinkDelete' => 'Deleted link to ticket "%s".',

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

      # Template: AAANavBar
      'Send Email and create a new Ticket' => '',
      'Create new Phone Ticket' => '',
      'Ticket-Area' => '',
      'Overview of all open Tickets' => '',
      'Logout' => 'Logg ut',
      'Agent Preferences' => '',
      'Preferences' => 'Innstillinger',
      'Agent Mailbox' => '',
      'Stats-Area' => '',
      'FAQ' => '',
      'FAQ-Search' => '',
      'FAQ-Article' => '',
      'FAQ-State' => '',
      'Admin' => '',
      'Create new Ticket' => 'Opprett ny ticket',
      'New Ticket' => 'Ny ticket',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Innstillinger lagret!',
      'Mail Management' => 'Mail-administrasjon',
      'Frontend' => 'Grensesnitt',
      'Other Options' => 'Andre opsjoner',
      'New ticket notification' => 'Merknad ved nyopprettet ticket',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Follow up notification' => 'Oppf�lgingsmerknad',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Send meg en melding ved kundekorrespondanse p� ticketer jeg st�r som eier av.',
      'Ticket lock timeout notification' => 'Melding ved overskridelse av tidsfrist for ticket-l�s',
      'Send me a notification if a ticket is unlocked by the system.' => 'Send meg en melding dersom systemet fjerner en ticket-l�s.',
      'Move notification' => 'Merknad ved k�-endring',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Custom Queue' => 'Utvalgte k�er',
      'QueueView refresh time' => 'Automatisk oppdateringsfrekvens i k�-bilde',
      'Select your QueueView refresh time.' => 'Velg automatisk oppdateringsfrekvens i k�-bilde.',
      'Select your frontend language.' => 'Velg spr�k.',
      'Select your frontend Charset.' => 'Velg tegnsett.',
      'Select your frontend Theme.' => 'Velg stil-tema.',
      'Select your frontend QueueView.' => 'Velg k�-bilde.',
      'Spelling Dictionary' => 'Ordbok for stavekontroll',
      'Select your default spelling dictionary.' => 'Velg standard ordbok for stavekontroll.',
      'PhoneView' => 'Henvendelser',
      'TicketZoom' => 'Ticket Zoom',
      'CreateTicket' => 'Opprettet Ticket',
      'Screen after new ticket' => 'Skjermbilde etter innlegging av ny ticket',
      'Select your screen after creating a new ticket.' => 'Velg skjermbilde som vises etter registrering av ny henvendelse/ticket.',
      'Closed Tickets' => 'Lukkede ticketer',
      'Show closed tickets.' => 'Vis lukkede ticketer.',
      'Max. shown Tickets a page in QueueView.' => 'Max. viste ticketer per side i K�-bilde.',
      'Max. shown Tickets a page in Overview.' => 'Max. viste ticketer per side i Overview.',
      'Can\'t update password, passwords dosn\'t match! Please try it again!' => '',
      'Can\'t update password, invalid characters!' => '',
      'Can\'t update password, need min. 8 characters!' => '',
      'Can\'t update password, need 2 lower and 2 upper characters!' => '',
      'Can\'t update password, need min. 1 digit!' => '',
      'Can\'t update password, need min. 2 characters!' => '',

      # Template: AAATicket
      'Lock' => 'L�s',
      'Unlock' => 'Frigi',
      'History' => 'Historikk',
      'Zoom' => '',
      'Age' => 'Alder',
      'Bounce' => '',
      'Forward' => 'Videresende',
      'From' => 'Fra',
      'To' => 'Til',
      'Cc' => '',
      'Bcc' => '',
      'Subject' => 'Emne',
      'Move' => 'Flytt',
      'Queue' => 'K�',
      'Priority' => 'Prioritet',
      'State' => 'Status',
      'Compose' => 'Forfatt',
      'Pending' => 'Utsett',
      'Owner' => 'Eier',
      'Sender' => '',
      'Article' => 'Artikkel',
      'Ticket' => '',
      'Createtime' => 'Oprettet',
      'plain' => 'r�',
      'eMail' => 'email',
      'email' => '',
      'Close' => 'Lukk',
      'Action' => 'Aksjon',
      'Attachment' => 'Vedlegg',
      'Attachments' => 'Vedlegg',
      'This message was written in a character set other than your own.' => 'Denne meldinger er skrevet i et annet tegnsett enn du bruker.',
      'If it is not displayed correctly,' => 'Dersom den ikke vises korrekt,',
      'This is a' => 'Dette er en',
      'to open it in a new window.' => 'for � �pne i nytt vindu',
      'This is a HTML email. Click here to show it.' => 'Dette er en HTML-email. Klikk her for � vise.',
      'closed successful' => 'l�st og lukket',
      'closed unsuccessful' => 'ul�st men lukket',
      'new' => 'ny',
      'open' => '�pen',
      'closed' => '',
      'removed' => 'fjernet',
      'pending reminder' => 'venter p� p�minnelse',
      'pending auto close+' => 'venter p� lukking (l�st)',
      'pending auto close-' => 'venter p� lukking (ul�st)',
      'email-external' => 'email eksternt',
      'email-internal' => 'email internt',
      'note-external' => 'notis eksternt',
      'note-internal' => 'notis internt',
      'note-report' => 'notis til rapport',
      'phone' => 'telefon',
      'sms' => '',
      'webrequest' => 'web-foresp�rsel',
      'lock' => 'l�st',
      'unlock' => 'ul�st',
      'very low' => 'sv�rt lav',
      'low' => 'lav',
      'normal' => '',
      'high' => 'h�y',
      'very high' => 'sv�rt h�y',
      '1 very low' => '1 sv�rt lav',
      '2 low' => '2 lav',
      '3 normal' => '',
      '4 high' => '4 h�y',
      '5 very high' => '5 sv�rt h�y',
      'Ticket "%s" created!' => 'Ticket "%s" opprettet!',

      # Template: AAAWeekDay
      'Sun' => 's�n',
      'Mon' => 'man',
      'Tue' => 'tir',
      'Wed' => 'ons',
      'Thu' => 'tor',
      'Fri' => 'fre',
      'Sat' => 'l�r',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Vedleggsadministrering',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Autosvar-administrering',
      'Response' => 'Svar',
      'Auto Response From' => 'autosvar-avsender',
      'Note' => 'Notis',
      'Useable options' => 'Gyldige opsjoner',
      'to get the first 20 character of the subject' => 'gir de f�rste 20 bokstavene av emnebeskrivelsen',
      'to get the first 5 lines of the email' => 'gir de f�rste 5 linjene av emailen',
      'to get the from line of the email' => 'gir avsenderlinjen i emailen',
      'to get the realname of the sender (if given)' => 'gir avsenders fulle navn (hvis mulig)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'Det tilh�rende redigeringsvinduet har blitt lukket.  Avslutter.',
      'This window must be called from compose window' => 'Denne funksjonen m� kalles fra redigeringsvinduet',
      'Customer User Management' => 'Kunde-bruker',
      'Search for' => '',
      'Result' => '',
      'Select Source (for add)' => '',
      'Source' => 'Kilde',
      'This values are read only.' => '',
      'This values are required.' => '',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => '',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => '',
      'Change %s settings' => 'Endre %s-innstillinger',
      'Select the user:group permissions.' => 'Velg bruker:gruppe-rettigheter.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Hvis ingen punkter er valgt, er ingen rettigheter tildelt (ticketer i denne gruppen vil ikke v�re tilgjengelig for brukeren).',
      'Permission' => 'Rettigheter',
      'ro' => '',
      'Read only access to the ticket in this group/queue.' => 'Kun lese-tilgang til ticketer i denne gruppen/k�en.',
      'rw' => '',
      'Full read and write access to the tickets in this group/queue.' => 'Full lese- og skrive-tilgang til ticketer i denne gruppen/k�en.',

      # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Endre bruker <-> gruppe-instillinger',

      # Template: AdminEmail
      'Admin-Email' => 'Admin-email',
      'Message sent to' => 'Melding sendt til',
      'Recipents' => 'Mottager',
      'Body' => 'Meldingstekst',
      'send' => 'Send',

      # Template: AdminGenericAgent
      'GenericAgent' => '',
      'Job-List' => '',
      'Last run' => '',
      'valid' => 'gyldig',
      'Run Now!' => '',
      'x' => '',
      'Save Job as?' => '',
      'Is Job Valid?' => '',
      'Is Job Valid' => '',
      'Schedule' => '',
      'Minutes' => '',
      'Hours' => '',
      'Days' => '',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Friteksts�k i artikler (f.eks. "Mar*in" eller "Baue*")',
      '(e. g. 10*5155 or 105658*)' => 'f.eks. 10*5144 eller 105658*',
      '(e. g. 234321)' => 'f.eks. 234321',
      'Customer User Login' => 'Kunde-bruker login-navn',
      '(e. g. U5150)' => 'f.eks. U5150',
      'Agent' => '',
      'TicketFreeText' => '',
      'Ticket Lock' => '',
      'Times' => 'Tider',
      'No time settings.' => 'Ingen tidsinnstillinger.',
      'Ticket created' => 'Ticket opprettet',
      'Ticket created between' => 'Ticket opprettet mellom',
      'New Priority' => '',
      'New Queue' => 'Ny k�',
      'New State' => '',
      'New Agent' => '',
      'New Owner' => 'Ny eier',
      'New Customer' => '',
      'New Ticket Lock' => '',
      'CustomerUser' => 'Kunde-bruker',
      'Add Note' => 'Legg til notis',
      'CMD' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '',
      'Delete tickets' => '',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => '',
      'Modules' => '',
      'Param 1' => '',
      'Param 2' => '',
      'Param 3' => '',
      'Param 4' => '',
      'Param 5' => '',
      'Param 6' => '',
      'Save' => '',

      # Template: AdminGroupForm
      'Group Management' => 'Grupper',
      'The admin group is to get in the admin area and the stats group to get stats area.' => '\'admin\'-gruppen gir tilgang til Admin-omr�det, \'stats\'-gruppen til Statistikk-omr�det.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Opprett nye grupper for � kunne h�ndtere forskjellige rettigheter for forskjellige grupper agenter (f.eks. innkj�psavdeling, supportavdeling, salgsavdeling, ...).',
      'It\'s useful for ASP solutions.' => 'Nyttig for ASP-l�sninger.',

      # Template: AdminLog
      'System Log' => 'Systemlogg',
      'Time' => '',

      # Template: AdminNavigationBar
      'Users' => '',
      'Groups' => 'Grupper',
      'Roles' => '',
      'Responses' => 'Ferdigsvar',
      'Misc' => 'Ymse',

      # Template: AdminNotificationForm
      'Notification Management' => 'Meldingsadministrasjon',
      'Notification' => '',
      'Notifications are sent to an agent or a customer.' => 'Meldinger sendes til agenter eller kunder.',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Konfigurasjonsopsjoner (f.eks. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'gir tilgang til data for agenten som st�r som eier av ticketen (f.eks. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'gir tilgang til data for agenten som utf�rer handlingen (f.eks. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'gir tilgang til data for gjeldende kunde (f.eks. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',

      # Template: AdminPackageManager
      'Package Manager' => '',
      'Uninstall' => '',
      'Verion' => '',
      'Do you really want to uninstall this package?' => '',
      'Install' => '',
      'Package' => '',
      'Online Repository' => '',
      'Version' => '',
      'Vendor' => '',
      'Upgrade' => '',
      'Local Repository' => '',
      'Status' => '',
      'Overview' => 'Oversikt',
      'Download' => '',
      'Rebuild' => '',
      'Reinstall' => '',

      # Template: AdminPGPForm
      'PGP Management' => '',
      'Identifier' => '',
      'Bit' => '',
      'Key' => 'N�kkel',
      'Fingerprint' => '',
      'Expires' => '',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'FIXME: WHAT IS PGP?' => '',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'Administrasjon POP3-Konto',
      'Host' => 'Maskin',
      'Trusted' => 'Betrodd',
      'Dispatching' => 'Fordeling',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Innkommende email fra POP3-konter blir sortert til valgt k�!',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => '',
      'Filtername' => '',
      'Match' => 'Treff',
      'Header' => '',
      'Value' => 'Innhold',
      'Set' => 'Sett',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => '',

      # Template: AdminQueueAutoResponseTable

      # Template: AdminQueueForm
      'Queue Management' => 'Administrasjon av k�er',
      'Sub-Queue of' => 'Underk� av',
      'Unlock timeout' => 'Tidsintervall f�r fjerning av l�s',
      '0 = no unlock' => '0 = ikke fjern l�s',
      'Escalation time' => 'Eskalasjonstid',
      '0 = no escalation' => '0 = ingen eskalering',
      'Follow up Option' => 'Korrespondanse p� lukket ticket',
      'Ticket lock after a follow up' => 'Ticket l�ses etter oppf�lgningsmail',
      'Systemaddress' => 'Systemadresse',
      'Customer Move Notify' => 'Kundenotifikasjon ved flytting',
      'Customer State Notify' => 'Kundenotifikasjon ved statusendring',
      'Customer Owner Notify' => 'Kundenotifikasjon ved eierskifte',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Hvis en ticket som er l�st av en agent men likevel ikke blir besvart innen denne tiden, vil l�sen automatisk fjernes.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Hvis en ticket ikke blir besvart innen denne tiden, blir kun denne ticketen vist.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Hvis en kunde sender oppf�lgingsmail p� en lukket ticket, blir ticketen l�st til forrige eier.',
      'Will be the sender address of this queue for email answers.' => 'Avsenderadresse for email i denne k�en.',
      'The salutation for email answers.' => 'Hilsning for email-svar.',
      'The signature for email answers.' => 'Signatur for email-svar.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS sender en merknad til kunden dersom ticketen flyttes.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS sender en merknad til kuden ved statusoppdatering.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS sender en merknad til kunden ved eierskifte.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => '',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Ferdigsvar',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => '',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Administrer Ferdigsvar',
      'A response is default text to write faster answer (with default text) to customers.' => 'Et ferdigsvar er en forh�ndsdefinert tekst for � lette skriving av svar p� vanlige henvendelser.',
      'Don\'t forget to add a new response a queue!' => 'Husk � tilordne nye ferdigsvar til en k�!',
      'Next state' => 'Neste tilstand',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'The current ticket state is' => 'N�v�rende ticket-status',
      'Your email address is new' => '',

      # Template: AdminRoleForm
      'Role Management' => '',
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => '',
      'move_into' => 'Flytt til',
      'Permissions to move tickets into this group/queue.' => 'Rett til � flytte ticketer i denne gruppen/k�en.',
      'create' => 'Opprett',
      'Permissions to create tickets in this group/queue.' => 'Rett til � opprette ticketer i denne gruppen/k�en.',
      'owner' => 'Eier',
      'Permissions to change the ticket owner in this group/queue.' => 'Rett til � endre eierskap i denne gruppen/k�en.',
      'priority' => 'prioritet',
      'Permissions to change the ticket priority in this group/queue.' => 'Rett til � endre prioritet i denne gruppen/k�en.',

      # Template: AdminRoleGroupForm
      'Change roles <-> groups settings' => '',
      'Role' => '',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => '',
      'Active' => '',
      'Select the role:user relations.' => '',

      # Template: AdminRoleUserForm
      'Change users <-> roles settings' => '',

      # Template: AdminSalutationForm
      'Salutation Management' => 'Administrer Hilsninger',
      'customer realname' => 'Fullt kundenavn',
      'for agent firstname' => 'gir agents fornavn',
      'for agent lastname' => 'gir agents etternavn',
      'for agent user id' => 'gir agents bruker-id',
      'for agent login' => 'gir agents login',

      # Template: AdminSelectBoxForm
      'Select Box' => 'SQL-tilgang',
      'SQL' => '',
      'Limit' => '',
      'Select Box Result' => 'Select Box Ergebnis',

      # Template: AdminSession
      'Session Management' => 'Sesjonsh�ndtering',
      'Sessions' => 'Sesjoner',
      'Uniq' => '',
      'kill all sessions' => 'Terminer alle sesjoner',
      'Session' => '',
      'kill session' => 'Terminer sesjon',

      # Template: AdminSignatureForm
      'Signature Management' => 'Administrasjon Signaturer',

      # Template: AdminSMIMEForm
      'SMIME Management' => '',
      'Add Certificate' => '',
      'Add Private Key' => '',
      'Secret' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',
      'FIXME: WHAT IS SMIME?' => '',

      # Template: AdminStateForm
      'System State Management' => 'Administrer Status',
      'State Type' => 'Status-type',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Forsikre deg om at du ogs� har oppdatert standard tilstander i Kernel/Config.pm!',
      'See also' => 'Se ogs�',

      # Template: AdminSysConfig
      'SysConfig' => '',
      'Group selection' => '',
      'Show' => '',
      'Subgroup' => '',

      # Template: AdminSysConfigEdit
      'Options ' => '',
      'for ' => '',
      'Subgroup \'' => '',
      '\' ' => '',
      'Content' => '',
      'New' => 'Ny',
      'Group Ro' => '',
      'NavBarName' => '',
      'Image' => '',
      'Typ' => '',
      'Prio' => '',
      'Block' => '',
      'NavBar' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Administrer System-email-adresser',
      'Email' => '',
      'Realname' => 'Fullt navn',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alle innkommende mail til denne addressat (To:) blir fordelt til valgt k�.',

      # Template: AdminUserForm
      'User Management' => 'Administrasjon Brukere',
      'Firstname' => 'Fornavn',
      'Lastname' => 'Etternavn',
      'User will be needed to handle tickets.' => 'Brukere er n�dvendig for � jobbe med tickets.',
      'Don\'t forget to add a new user to groups!' => 'Ikke glem � gi nye brukere en gruppe!',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => '',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'Adressebok',
      'Return to the compose screen' => 'Lukk vindu',
      'Discard all changes and return to the compose screen' => 'Forkast endringer og lukk vindu',

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => '',

      # Template: AgentLinkObject
      'Link Object' => '',
      '"}" $Text{"with' => '',
      'Select' => 'Velg',
      'Results' => 'Resultat',
      'Total hits' => 'Totalt funnet',
      'Site' => 'side',
      'Detail' => '',

      # Template: AgentLookup
      'Lookup' => '',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Stavekontroll',
      'spelling error(s)' => 'Stavefeil',
      'or' => 'eller',
      'Apply these changes' => 'Iverksett endringer',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'En melding m� ha en mottager i Til:-feltet!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'I Til-feltet m� det oppgis en gyldig email-adresse (f.eks. kunde@eksempeldomene.no)!',
      'Bounce ticket' => 'Oversend ticket',
      'Bounce to' => 'Oversend til',
      'Next ticket state' => 'Neste ticket-status',
      'Inform sender' => 'Informer avsender',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Emailen med ticketnummer "<OTRS_TICKET>" er oversendt "<OTRS_BOUNCE_TO>". Vennligst ta kontakt p� denne adressen for videre henvendelser.',
      'Send mail!' => '',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'En melding m� ha en emnebeskrivelse!',
      'Ticket Bulk Action' => '',
      '$Text{"Note!' => '',
      'Spell Check' => 'Stavekontroll',
      'Note type' => 'Notistype',
      'Unlock Tickets' => '',

      # Template: AgentTicketClose
      'A message should have a body!' => 'En melding m� inneholde en meldingstekst!',
      'You need to account time!' => 'Du har ikke f�rt tidsregnskap!',
      'Close ticket' => 'Lukk ticket',
      'Close!' => 'Lukk!',
      'Note Text' => 'Notistekst',
      'Close type' => 'Lukketilstand',
      'Time units' => 'Tidsenheter',
      ' (work units)' => ' (arbeidsenheter)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Stavekontroll m� utf�res p� alle meldinger!',
      'Compose answer for ticket' => 'Forfatt svar til ticket',
      'Attach' => 'Legg ved',
      'Pending Date' => 'Utsatt til',
      'for pending* states' => 'for vente-tilstander',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Endre kunde for ticket',
      'Set customer user and customer id of a ticket' => 'Sett kunde-bruker og organisasjons-id for ticket',
      'Customer User' => 'Kunde-bruker',
      'Search Customer' => 'Kundes�k',
      'Customer Data' => 'Kundedata',
      'Customer history' => 'Kunde-historikk',
      'All customer tickets.' => 'Alle ticketer for kunde.',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Oppf�lging',

      # Template: AgentTicketEmail
      'Compose Email' => 'Skriv email',
      'new ticket' => 'Ny ticket',
      'Clear To' => '',
      'All Agents' => 'Alle agenter',

      # Template: AgentTicketForward
      'Article type' => 'Artikkeltype',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Endre frie ticket-felter',

      # Template: AgentTicketHistory
      'History of' => 'Historikk for',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket l�st',
      'Ticket unlock!' => 'Ticket frigi',

      # Template: AgentTicketMailbox
      'Mailbox' => '',
      'Tickets' => 'Ticketer',
      'All messages' => 'Alle meldinger',
      'New messages' => 'Ny melding',
      'Pending messages' => 'Ventende meldinger',
      'Reminder messages' => 'P�minnelses-meldinger',
      'Reminder' => 'P�minnelse',
      'Sort by' => 'Sorter etter',
      'Order' => 'Sortering',
      'up' => 'stigende',
      'down' => 'synkende',
      '"}\'; return true;" onmouseout="window.status=\'\';" class="menuitem" title="$Text{"' => '',
      '"}"}">$Quote{"$Text{""}' => '',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => '',
      'Ticket Merge' => '',
      'Merge to' => '',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '',

      # Template: AgentTicketMove
      'Queue ID' => 'K�-id',
      'Move Ticket' => 'Flytt ticket',
      'Previous Owner' => 'Forrige eier',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Legg til notis ved ticket',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Endre eier av ticket',
      'Message for new Owner' => 'Melding for ny eier',

      # Template: AgentTicketPending
      'Set Pending' => 'Sett utsettelse',
      'Pending type' => 'Venter p�',
      'Pending date' => 'Utsatt til',

      # Template: AgentTicketPhone
      'Phone call' => 'Telefonanrop',

      # Template: AgentTicketPhoneNew
      'Clear From' => 'Blank ut Fra:',

      # Template: AgentTicketPlain
      'Plain' => 'Enkel',
      'TicketID' => '',
      'ArticleID' => '',

      # Template: AgentTicketPrint
      'Ticket-Info' => '',
      'Accounted time' => 'Benyttet tid',
      'Escalation in' => 'Eskalering om',
      'Linked-Object' => '',
      'Parent-Object' => '',
      'Child-Object' => '',
      'by' => 'av',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Endre prioritet for ticket',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Ticketer vist',
      'Page' => 'Side',
      'Tickets available' => 'Tilgjengelige ticketer',
      'All tickets' => 'Alle ticketer',
      'Queues' => 'K�er',
      'Ticket escalation!' => 'Ticket-eskalering!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'Din egen ticket',
      'Compose Follow up' => 'Skriv oppf�lgingssvar',
      'Compose Answer' => 'Skriv svar',
      'Contact customer' => 'Kontakt kunde',
      'Change queue' => 'Endre k�',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => 'Ticket-s�k',
      'Profile' => 'Profil',
      'Search-Template' => 'S�kemal',
      'Created in Queue' => '',
      'Result Form' => 'Resultatbilde',
      'Save Search-Profile as Template?' => 'Lagre s�kekriterier som mal?',
      'Yes, save it with name' => 'Ja, lagre med navn',
      'Customer history search' => 'Historikk for kunde',
      'Customer history search (e. g. "ID342425").' => 'S�k etter kunde for historikk (f.eks. "ID342425").',
      'No * possible!' => 'Jokertegn ikke tillatt!',

      # Template: AgentTicketSearchResult
      'Search Result' => 'S�keresultat',
      'Change search options' => 'Endre s�ke-innstillinger',

      # Template: AgentTicketSearchResultPrint
      '"}' => '',

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'Sorter stigende',
      'U' => 'O',
      'sort downward' => 'Sorter synkende',
      'D' => 'N',

      # Template: AgentTicketStatusView
      'Ticket Status View' => '',
      'Open Tickets' => '',

      # Template: AgentTicketZoom
      'Split' => 'Splitt',

      # Template: AgentTicketZoomStatus
      'Locked' => '',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerError
      'Traceback' => '',

      # Template: CustomerFAQArticleHistory
      'FAQ History' => '',
      'Print' => 'Skriv ut',

      # Template: CustomerFAQArticlePrint
      'Keywords' => 'N�kkelord',
      'Last update' => 'Sist endret',
      'Symptom' => '',
      'Problem' => '',
      'Solution' => 'L�sning',

      # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => '',

      # Template: CustomerFAQArticleView
      'Modified' => 'Endret',

      # Template: CustomerFAQOverview
      'FAQ Overview' => 'FAQ Oversikt',

      # Template: CustomerFAQSearch
      'FAQ Search' => 'FAQ S�k',
      'Fulltext' => 'Fritekst',
      'Keyword' => 'N�kkelord',

      # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'FAQ S�keresultat',

      # Template: CustomerFooter
      'Powered by' => '',

      # Template: CustomerHeader

      # Template: CustomerLogin
      'Login' => '',
      'Lost your password?' => 'Mistet passord?',
      'Request new password' => 'Be om nytt passord',
      'Create Account' => 'Opprekt konto',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Velkommen %s',

      # Template: CustomerPreferencesForm

      # Template: CustomerStatusView
      'of' => 'av',

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
      'A article should have a title!' => '',
      'New FAQ Article' => '',
      'Do you really want to delete this Object?' => '',
      'System History' => '',

      # Template: FAQCategoryForm
      'Name is required!' => '',
      'FAQ Category' => 'FAQ Kategori',

      # Template: FAQLanguageForm
      'FAQ Language' => 'FAQ Spr�k',

      # Template: Footer
      'Top of Page' => 'Toppen av siden',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'Hjem',

      # Template: HeaderSmall

      # Template: InstallerBody
      'Web-Installer' => 'Web-installasjon',
      'Create Database' => 'Opprett database',
      'Drop Database' => 'Slett database',
      'System Settings' => 'Systeminnstillinger',
      'Finished' => 'Ferdig',

      # Template: InstallerFinish
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'For � kunne bruke OTRS, m� f�lgende linje utf�res p� kommandolinjen som root.',
      'Restart your webserver' => 'Restart webserveren din',
      'After doing so your OTRS is up and running.' => 'Etter dette vil OTRS v�re oppe � kj�re.',
      'Start page' => 'Startside',
      'Admin-User' => 'Admin-bruker',
      'Have a lot of fun!' => 'Ha det g�y!',
      'Your OTRS Team' => 'Ditt OTRS-Team',

      # Template: InstallerLicense
      'License' => 'Lisens',
      'accept license' => 'aksepter lisens',
      'don\'t accept license' => 'ikke aksepter lisens',

      # Template: InstallerStart
      'DB Admin User' => 'DB administratorbruker',
      'DB Admin Password' => 'DB administratorpassord',
      'your MySQL DB should have a root password! Default is empty!' => 'Din MySQL-database b�r ha et root-passord satt!  Default er intet passord!',
      'DB Host' => 'DB maskin',
      'DB Type' => 'DB type',
      'OTRS DB Name' => 'OTRS DB navn',
      'OTRS DB User' => 'OTRS DB bruker',
      'OTRS DB Password' => 'OTRS DB passord',
      'default \'hot\'' => '',
      'OTRS DB connect host' => '',
      'Create new database' => 'Opprett ny database',
      'Delete old database' => 'Slett gammel database',
      'next step' => 'neste steg',

      # Template: InstallerSystem
      'SystemID' => '',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Unik id for dette systemet.  Alle ticketnummer og http-sesjonsid-er starter med denne id-en)',
      'System FQDN' => '',
      '(Full qualified domain name of your system)' => '(Fullkvalifisert dns-navn for ditt system)',
      'AdminEmail' => 'Admin-email',
      '(Email of the system admin)' => '(Email til systemadmin)',
      'Organization' => 'Organisasjon',
      'LogModule' => '',
      '(Used log backend)' => '(Valgt logge-backend)',
      'Logfile' => 'Logfil',
      '(Logfile just needed for File-LogModule!)' => '(Logfile kun p�krevet for File-LogModule!)',
      'CheckMXRecord' => '',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Sjekker mx-innslag for oppgitte email-adresser i meldiger som skrives.  Bruk ikke CheckMXRecord om din OTRS-maskin er bak en oppringt-linje!)',
      'Ticket Hook' => '',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Ticket-kjennetegn, f.eks. \'Ticket#\', \'Call#\' eller \'MyTicket#\')',
      'Ticket Number Generator' => 'Ticket-nummergenerator',
      '(Used ticket number format)' => '(Valgt format for ticketnummer)',
      'Webfrontend' => 'Web-grensesnitt',
      'Default Charset' => 'Standardtegnsett',
      'Use utf-8 it your database supports it!' => 'Bruk utf-8 dersom din database st�tter det!',
      'Default Language' => 'Standardspr�k',
      '(Used default language)' => '(Valgt standardspr�k)',

      # Template: Login

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Ingen tilgang',

      # Template: Notify

      # Template: PrintFooter
      'URL' => '',

      # Template: PrintHeader
      'printed by' => 'skrevet av',

      # Template: Redirect

      # Template: SystemStats
      'Format' => '',

      # Template: Test
      'OTRS Test Page' => 'OTRS Test-side',
      'Counter' => '',

      # Template: Warning
    };
    # $$STOP$$
    $Self->{Translation} = \%Hash;
}
# --
1;
