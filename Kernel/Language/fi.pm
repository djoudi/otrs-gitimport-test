# --
# Kernel/Language/fi.pm - provides fi language translation
# Copyright (C) 2002 Antti K�m�r�inen <antti at seu.net>
# --
# $Id: fi.pm,v 1.49.2.1 2007-01-09 01:21:30 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Language::fi;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.49.2.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Oct  5 06:04:11 2006

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateFormatShort} = '%D.%M.%Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => 'Kyll�',
      'No' => 'Ei',
      'yes' => 'kyll�',
      'no' => 'ei',
      'Off' => 'Pois',
      'off' => 'pois',
      'On' => 'P��ll�',
      'on' => 'p��ll�',
      'top' => 'yl�s',
      'end' => 'Loppuun',
      'Done' => 'Valmis',
      'Cancel' => 'Peruuta',
      'Reset' => 'Tyhjenn�',
      'last' => '',
      'before' => '',
      'day' => 'p�iv�',
      'days' => 'p�iv��',
      'day(s)' => '',
      'hour' => 'tunti',
      'hours' => 'tuntia',
      'hour(s)' => '',
      'minute' => 'minutti',
      'minutes' => 'minuuttia',
      'minute(s)' => '',
      'month' => '',
      'months' => '',
      'month(s)' => '',
      'week' => '',
      'week(s)' => '',
      'year' => '',
      'years' => '',
      'year(s)' => '',
      'second(s)' => '',
      'seconds' => '',
      'second' => '',
      'wrote' => 'kirjoittaa',
      'Message' => 'Viesti',
      'Error' => 'Virhe',
      'Bug Report' => 'L�het� bugiraportti',
      'Attention' => 'Huomio',
      'Warning' => 'Varoitus',
      'Module' => 'Moduuli',
      'Modulefile' => 'Moduulitiedosto',
      'Subfunction' => 'Alifunktio',
      'Line' => 'Rivi',
      'Example' => 'Esimerkki',
      'Examples' => 'Esimerkit',
      'valid' => '',
      'invalid' => 'Virheellinen',
      'invalid-temporarily' => '',
      ' 2 minutes' => ' 2 Minuuttia',
      ' 5 minutes' => ' 5 Minuuttia',
      ' 7 minutes' => ' 7 Minuuttia',
      '10 minutes' => '10 Minuuttia',
      '15 minutes' => '15 Minuuttia',
      'Mr.' => '',
      'Mrs.' => '',
      'Next' => '',
      'Back' => 'Takaisin',
      'Next...' => '',
      '...Back' => '',
      '-none-' => '',
      'none' => 'ei mit��n',
      'none!' => 'ei mit��n!',
      'none - answered' => 'ei mit��n - vastattu',
      'please do not edit!' => '�l� muokkaa, kiitos!',
      'AddLink' => 'Lis�� linkki',
      'Link' => '',
      'Linked' => '',
      'Link (Normal)' => '',
      'Link (Parent)' => '',
      'Link (Child)' => '',
      'Normal' => '',
      'Parent' => '',
      'Child' => '',
      'Hit' => '',
      'Hits' => 'Hitit',
      'Text' => 'Teksti',
      'Lite' => 'Kevyt',
      'User' => 'K�ytt�j�',
      'Username' => 'K�ytt�j�nimi',
      'Language' => 'Kieli',
      'Languages' => 'Kielet',
      'Password' => 'Salasana',
      'Salutation' => 'Tervehdys',
      'Signature' => 'Allekirjoitus',
      'Customer' => 'Asiakas',
      'CustomerID' => 'AsiakasID#',
      'CustomerIDs' => '',
      'customer' => '',
      'agent' => '',
      'system' => '',
      'Customer Info' => 'Tietoa asiakkaasta',
      'go!' => 'mene!',
      'go' => 'mene',
      'All' => 'Kaikki',
      'all' => 'kaikki',
      'Sorry' => 'Anteeksi',
      'update!' => 'p�ivit�!',
      'update' => 'p�ivit�',
      'Update' => '',
      'submit!' => 'l�het�!',
      'submit' => 'l�het�',
      'Submit' => '',
      'change!' => 'muuta!',
      'Change' => 'Muuta',
      'change' => 'muuta',
      'click here' => 'klikkaa t�st�',
      'Comment' => 'Kommentti',
      'Valid' => 'K�yt�ss�',
      'Invalid Option!' => '',
      'Invalid time!' => '',
      'Invalid date!' => '',
      'Name' => 'Nimi',
      'Group' => 'Ryhm�',
      'Description' => 'Selitys',
      'description' => 'Selitys',
      'Theme' => 'Ulkoasu',
      'Created' => 'Luotu',
      'Created by' => '',
      'Changed' => '',
      'Changed by' => '',
      'Search' => '',
      'and' => '',
      'between' => '',
      'Fulltext Search' => '',
      'Data' => '',
      'Options' => 'Asetukset',
      'Title' => '',
      'Item' => '',
      'Delete' => '',
      'Edit' => '',
      'View' => 'Katso',
      'Number' => '',
      'System' => 'J�rjestelm�',
      'Contact' => 'Yhteystiedot',
      'Contacts' => '',
      'Export' => '',
      'Up' => '',
      'Down' => '',
      'Add' => '',
      'Category' => '',
      'Viewer' => '',
      'New message' => 'Uusi viesti',
      'New message!' => 'Uusi viesti!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Vastaa t�h�n viestiin saadaksesi se takaisin normaalille jonotuslistalle',
      'You got new message!' => 'Sinulla on uusi viesti!',
      'You have %s new message(s)!' => 'Sinulla on %s kpl uusia viesti�!',
      'You have %s reminder ticket(s)!' => 'Sinulla on %s muistutettavaa viesti�!',
      'The recommended charset for your language is %s!' => 'Suositeltava kirjainasetus kielellesi on %s',
      'Passwords doesn\'t match! Please try it again!' => '',
      'Password is already in use! Please use an other password!' => '',
      'Password is already used! Please use an other password!' => '',
      'You need to activate %s first to use it!' => '',
      'No suggestions' => 'Ei ehdotusta',
      'Word' => 'Sana',
      'Ignore' => 'Ohita',
      'replace with' => 'Korvaa',
      'Welcome to OTRS' => '',
      'There is no account with that login name.' => 'K�ytt�j�tunnus tuntematon',
      'Login failed! Your username or password was entered incorrectly.' => '',
      'Please contact your admin' => 'Ota yhteytt� yll�pit�j��si',
      'Logout successful. Thank you for using OTRS!' => 'Uloskirjautuminen onnistui. Kiitos kun k�ytit OTRS-j�rjestelm��',
      'Invalid SessionID!' => 'Virheellinen SessionID',
      'Feature not active!' => 'Ominaisuus ei k�yt�ss�',
      'License' => 'Lisenssi',
      'Take this Customer' => '',
      'Take this User' => '',
      'possible' => 'K�yt�ss�',
      'reject' => 'Hylk��',
      'reverse' => '',
      'Facility' => '',
      'Timeover' => 'Vanhentuu',
      'Pending till' => 'Odottaa',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Ei toimi k�ytt�j�ID:ll� 1(j�rjestelm�tunnus). Tee uusia k�ytt�ji� ',
      'Dispatching by email To: field.' => '',
      'Dispatching by selected Queue.' => '',
      'No entry found!' => '',
      'Session has timed out. Please log in again.' => '',
      'No Permission!' => '',
      'To: (%s) replaced with database email!' => '',
      'Cc: (%s) added database email!' => '',
      '(Click here to add)' => '',
      'Preview' => '',
      'Package not correctly deployed! You should reinstall the Package again!' => '',
      'Added User "%s"' => '',
      'Contract' => '',
      'Online Customer: %s' => '',
      'Online Agent: %s' => '',
      'Calendar' => '',
      'File' => '',
      'Filename' => '',
      'Type' => 'Tyyppi',
      'Size' => '',
      'Upload' => '',
      'Directory' => '',
      'Signed' => '',
      'Sign' => '',
      'Crypted' => '',
      'Crypt' => '',
      'Office' => '',
      'Phone' => '',
      'Fax' => '',
      'Mobile' => '',
      'Zip' => '',
      'City' => '',
      'Country' => '',
      'installed' => '',
      'uninstalled' => '',
      'printed at' => '',

      # Template: AAAMonth
      'Jan' => 'Tam',
      'Feb' => 'Hel',
      'Mar' => 'Maa',
      'Apr' => 'Huh',
      'May' => 'Tou',
      'Jun' => 'Kes�',
      'Jul' => 'Hei',
      'Aug' => 'Elo',
      'Sep' => 'Syys',
      'Oct' => 'Loka',
      'Nov' => 'Mar',
      'Dec' => 'Jou',
      'January' => '',
      'February' => '',
      'March' => '',
      'April' => '',
      'June' => '',
      'July' => '',
      'August' => '',
      'September' => '',
      'October' => '',
      'November' => '',
      'December' => '',

      # Template: AAANavBar
      'Admin-Area' => 'Yll�pito',
      'Agent-Area' => '',
      'Ticket-Area' => '',
      'Logout' => 'Kirjaudu ulos',
      'Agent Preferences' => '',
      'Preferences' => 'K�ytt�j�asetukset',
      'Agent Mailbox' => '',
      'Stats' => 'Tilastot',
      'Stats-Area' => '',
      'New Article' => '',
      'Admin' => '',
      'A web calendar' => '',
      'WebMail' => '',
      'A web mail client' => '',
      'FileManager' => '',
      'A web file manager' => '',
      'Artefact' => '',
      'Incident' => '',
      'Advisory' => '',
      'WebWatcher' => '',
      'Customer Users' => '',
      'Customer Users <-> Groups' => '',
      'Users <-> Groups' => '',
      'Roles' => '',
      'Roles <-> Users' => '',
      'Roles <-> Groups' => '',
      'Salutations' => '',
      'Signatures' => '',
      'Email Addresses' => '',
      'Notifications' => '',
      'Category Tree' => '',
      'Admin Notification' => '',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Asetukset tallennettu onnistuneesti',
      'Mail Management' => 'Osoitteiden hallinta',
      'Frontend' => 'K�ytt�liittym�',
      'Other Options' => 'Muita asetuksia',
      'Change Password' => '',
      'New password' => '',
      'New password again' => '',
      'Select your QueueView refresh time.' => 'Valitse jonotusn�kym�n p�ivitysaika',
      'Select your frontend language.' => 'Valitse k�ytt�liittym�n kieli',
      'Select your frontend Charset.' => 'Valitse k�ytt�liittym�n kirjaisinasetukset',
      'Select your frontend Theme.' => 'Valitse k�ytt�liittym�si ulkoasu',
      'Select your frontend QueueView.' => 'Valitse k�ytt�liittym�si jonotusn�kym�',
      'Spelling Dictionary' => 'Oikolukusanasto',
      'Select your default spelling dictionary.' => '',
      'Max. shown Tickets a page in Overview.' => '',
      'Can\'t update password, passwords doesn\'t match! Please try it again!' => '',
      'Can\'t update password, invalid characters!' => '',
      'Can\'t update password, need min. 8 characters!' => '',
      'Can\'t update password, need 2 lower and 2 upper characters!' => '',
      'Can\'t update password, need min. 1 digit!' => '',
      'Can\'t update password, need min. 2 characters!' => '',
      'Password is needed!' => '',

      # Template: AAAStats
      'Stat' => '',
      'Please fill out the required fields!' => '',
      'Please select a file!' => '',
      'Please select an object!' => '',
      'Please select a graph size!' => '',
      'Please select one element for the X-axis!' => '',
      'You have to select two or more attributes from the select field!' => '',
      'Please select only one element or turn of the button \'Fixed\' where the select field is marked!' => '',
      'If you use a checkbox you have to select some attributes of the select field!' => '',
      'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => '',
      'The selected end time is before the start time!' => '',
      'You have to select one or more attributes from the select field!' => '',
      'The selected Date isn\'t valid!' => '',
      'Please select only one or two elements via the checkbox!' => '',
      'If you use a time scale element you can only select one element!' => '',
      'You have an error in your time selection!' => '',
      'Your reporting time interval is to small, please use a larger time scale!' => '',
      'The selected start time is before the allowed start time!' => '',
      'The selected end time is after the allowed end time!' => '',
      'The selected time period is larger than the allowed time period!' => '',
      'Common Specification' => '',
      'Xaxis' => '',
      'Value Series' => '',
      'Restrictions' => '',
      'graph-lines' => '',
      'graph-bars' => '',
      'graph-hbars' => '',
      'graph-points' => '',
      'graph-lines-points' => '',
      'graph-area' => '',
      'graph-pie' => '',
      'extended' => '',
      'Agent/Owner' => '',
      'Created by Agent/Owner' => '',
      'Created Priority' => '',
      'Created State' => '',
      'Create Time' => '',
      'CustomerUserLogin' => '',
      'Close Time' => '',

      # Template: AAATicket
      'Lock' => 'Lukitse',
      'Unlock' => 'Poista lukitus',
      'History' => 'Historia',
      'Zoom' => 'Katso',
      'Age' => 'Ik�',
      'Bounce' => 'Delekoi',
      'Forward' => 'V�lit�',
      'From' => 'L�hett�j�',
      'To' => 'Vastaanottaja',
      'Cc' => 'Kopio',
      'Bcc' => 'Piilokopio',
      'Subject' => 'Otsikko',
      'Move' => 'Siirr�',
      'Queue' => 'Jonotuslista',
      'Priority' => 'Prioriteetti',
      'State' => 'Tila',
      'Compose' => 'uusia viesti',
      'Pending' => 'Odottaa',
      'Owner' => 'Omistaja',
      'Owner Update' => '',
      'Responsible' => '',
      'Responsible Update' => '',
      'Sender' => 'L�hett�j�',
      'Article' => 'Artikkeli',
      'Ticket' => 'Tiketti',
      'Createtime' => 'Luontiaika',
      'plain' => 'pelkk� teksti',
      'Email' => 'S�hk�posti',
      'email' => 's�hk�postiosoite',
      'Close' => 'Sulje',
      'Action' => 'Tapahtumat',
      'Attachment' => 'Liitetiedosto',
      'Attachments' => 'Liitetiedostot',
      'This message was written in a character set other than your own.' => 'T�m� teksti on kirjoitettu eri kirjaisinasetuksilla kuin omasi',
      'If it is not displayed correctly,' => 'Jos t�m� ei n�y oikein,',
      'This is a' => 'T�m� on',
      'to open it in a new window.' => 'avataksesi se uuteen ikkunaan.',
      'This is a HTML email. Click here to show it.' => 'T�m� s�hk�posti on HTML-muodossa. Klikkaa t�st� katsoaksesi sit�',
      'Free Fields' => '',
      'Merge' => '',
      'closed successful' => 'Valmistui - Sulje',
      'closed unsuccessful' => 'Keskener�inen - Sulje',
      'new' => 'uusi',
      'open' => 'avoin',
      'closed' => '',
      'removed' => 'poistettu',
      'pending reminder' => 'Muistutus',
      'pending auto close+' => 'Automaattisulkeminen+',
      'pending auto close-' => 'Automaattisulkeminen-',
      'email-external' => 'S�hk�posti - sis�inen',
      'email-internal' => 'S�hk�posti - julkinen',
      'note-external' => 'Huomautus - sis�inen',
      'note-internal' => 'Huomautus - ulkoinen',
      'note-report' => 'Huomautus - raportti',
      'phone' => 'puhelimitse',
      'sms' => 'tekstiviesti',
      'webrequest' => 'web-pyynt�',
      'lock' => 'lukittu',
      'unlock' => 'poista lukitus',
      'very low' => 'Eritt�in alhainen',
      'low' => 'Alhainen',
      'normal' => 'Normaali',
      'high' => 'Kiireellinen',
      'very high' => 'Eritt�in kiireellinen',
      '1 very low' => '1 Eritt�in alhainen',
      '2 low' => '2 Alhainen',
      '3 normal' => '3 Normaali',
      '4 high' => '4 Kiireellinen',
      '5 very high' => '5 Eritt�in kiireellinen',
      'Ticket "%s" created!' => '',
      'Ticket Number' => '',
      'Ticket Object' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'Don\'t show closed Tickets' => '',
      'Show closed Tickets' => '',
      'Email-Ticket' => '',
      'Create new Email Ticket' => '',
      'Phone-Ticket' => '',
      'Create new Phone Ticket' => '',
      'Search Tickets' => '',
      'Edit Customer Users' => '',
      'Bulk-Action' => '',
      'Bulk Actions on Tickets' => '',
      'Send Email and create a new Ticket' => '',
      'Overview of all open Tickets' => '',
      'Locked Tickets' => '',
      'Lock it to work on it!' => '',
      'Unlock to give it back to the queue!' => '',
      'Shows the ticket history!' => '',
      'Print this ticket!' => '',
      'Change the ticket priority!' => '',
      'Change the ticket free fields!' => '',
      'Link this ticket to an other objects!' => '',
      'Change the ticket owner!' => '',
      'Change the ticket customer!' => '',
      'Add a note to this ticket!' => '',
      'Merge this ticket!' => '',
      'Set this ticket to pending!' => '',
      'Close this ticket!' => '',
      'Look into a ticket!' => '',
      'Delete this ticket!' => '',
      'Mark as Spam!' => '',
      'My Queues' => '',
      'Shown Tickets' => '',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '',
      'New ticket notification' => 'Ilmoitus uusista viesteist�',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Follow up notification' => 'Ilmoitus jatkokysymyksist�',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'L�het� ilmoitus jatkokysymyksist�, jos olen kyseisen tiketin omistaja',
      'Ticket lock timeout notification' => 'Ilmoitus tiketin lukituksen vanhenemisesta',
      'Send me a notification if a ticket is unlocked by the system.' => 'L�het� minulle ilmoitus, jos j�rjestelm� poistaa tiketin lukituksen.',
      'Move notification' => 'Siirr� ilmoitus',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '',
      'Custom Queue' => 'Valitsemasi jonotuslistat',
      'QueueView refresh time' => 'Jonotusn�kym�n p�ivitysaika',
      'Screen after new ticket' => '',
      'Select your screen after creating a new ticket.' => '',
      'Closed Tickets' => '',
      'Show closed tickets.' => 'N�yt� suljetut tiketit.',
      'Max. shown Tickets a page in QueueView.' => '',
      'CompanyTickets' => '',
      'MyTickets' => '',
      'New Ticket' => '',
      'Create new Ticket' => '',
      'Customer called' => '',
      'phone call' => '',
      'Responses' => 'Vastaukset',
      'Responses <-> Queue' => '',
      'Auto Responses' => '',
      'Auto Responses <-> Queue' => '',
      'Attachments <-> Responses' => '',
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

      # Template: AAAWeekDay
      'Sun' => 'Su',
      'Mon' => 'Ma',
      'Tue' => 'Ti',
      'Wed' => 'Ke',
      'Thu' => 'To',
      'Fri' => 'Pe',
      'Sat' => 'La',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Liitetiedostojen hallinta',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Automaattivastausten hallinta',
      'Response' => 'Vastaa',
      'Auto Response From' => 'Automaattivastaus ',
      'Note' => 'Huomautus',
      'Useable options' => 'K�ytett�v�t asetukset',
      'to get the first 20 character of the subject' => 'n�hd�ksesi ensimm�iset 20 kirjainta otsikosta',
      'to get the first 5 lines of the email' => 'n�hd�ksesi 5 ensimm�ist� rivi� s�hk�postista',
      'to get the from line of the email' => 'n�hd�ksesi yhden rivin s�hk�postista',
      'to get the realname of the sender (if given)' => 'n�hd�ksesi k�ytt�j�n nimen',
      'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',
      'Config options (e. g. <OTRS_CONFIG_HttpType>)' => '',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => '',
      'This window must be called from compose window' => '',
      'Customer User Management' => 'Asiakas-k�ytt�jien hallinta',
      'Search for' => '',
      'Result' => '',
      'Select Source (for add)' => '',
      'Source' => '',
      'This values are read only.' => '',
      'This values are required.' => '',
      'Customer user will be needed to have a customer history and to login via customer panel.' => '',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => '',
      'Change %s settings' => 'Muuta %s asetuksia',
      'Select the user:group permissions.' => '',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '',
      'Permission' => 'K�ytt�oikeus',
      'ro' => '',
      'Read only access to the ticket in this group/queue.' => '',
      'rw' => '',
      'Full read and write access to the tickets in this group/queue.' => '',

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => 'Viesti l�hetetty, vastaanottaja: ',
      'Recipents' => 'Vastaanottajat',
      'Body' => 'Runko-osa',
      'send' => 'l�het�',

      # Template: AdminGenericAgent
      'GenericAgent' => '',
      'Job-List' => '',
      'Last run' => '',
      'Run Now!' => '',
      'x' => '',
      'Save Job as?' => '',
      'Is Job Valid?' => '',
      'Is Job Valid' => '',
      'Schedule' => '',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '',
      '(e. g. 10*5155 or 105658*)' => '',
      '(e. g. 234321)' => '',
      'Customer User Login' => '',
      '(e. g. U5150)' => '',
      'Agent' => '',
      'Ticket Lock' => '',
      'TicketFreeFields' => '',
      'Times' => '',
      'No time settings.' => '',
      'Ticket created' => '',
      'Ticket created between' => '',
      'New Priority' => '',
      'New Queue' => '',
      'New State' => '',
      'New Agent' => '',
      'New Owner' => '',
      'New Customer' => '',
      'New Ticket Lock' => '',
      'CustomerUser' => '',
      'New TicketFreeFields' => '',
      'Add Note' => 'Lis�� huomautus',
      'CMD' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '',
      'Delete tickets' => '',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => '',
      'Send Notification' => '',
      'Param 1' => '',
      'Param 2' => '',
      'Param 3' => '',
      'Param 4' => '',
      'Param 5' => '',
      'Param 6' => '',
      'Send no notifications' => '',
      'Yes means, send no agent and customer notifications on changes.' => '',
      'No means, send agent and customer notifications on changes.' => '',
      'Save' => '',
      '%s Tickets affected! Do you really want to use this job?' => '',

      # Template: AdminGroupForm
      'Group Management' => 'Ryhmien hallinta',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Admin-ryhm�n j�senet p��sev�t yll�pito- ja tilastoalueille.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Lis�� uusi k�ytt�j�ryhm�, ett� voit m��ritell� k�ytt�oikeuksia useammille eri tukiryhmille (Huolto, Ostot, Markkinointi jne.)',
      'It\'s useful for ASP solutions.' => 'T�m� on hy�dyllinen ASP-k�yt�ss�',

      # Template: AdminLog
      'System Log' => 'J�rjestelm�logi',
      'Time' => '',

      # Template: AdminNavigationBar
      'Users' => '',
      'Groups' => 'Ryhm�t',
      'Misc' => 'Muut',

      # Template: AdminNotificationForm
      'Notification Management' => '',
      'Notification' => '',
      'Notifications are sent to an agent or a customer.' => '',
      'Ticket owner options (e. g. <OTRS_OWNER_USERFIRSTNAME>)' => '',
      'Options of the current user who requested this action (e. g. <OTRS_CURRENT_USERFIRSTNAME>)' => '',
      'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_USERFIRSTNAME>)' => '',
      'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => '',

      # Template: AdminPackageManager
      'Package Manager' => '',
      'Uninstall' => '',
      'Version' => '',
      'Do you really want to uninstall this package?' => '',
      'Reinstall' => '',
      'Do you really want to reinstall this package (all manual changes get lost)?' => '',
      'Install' => '',
      'Package' => '',
      'Online Repository' => '',
      'Vendor' => '',
      'Upgrade' => '',
      'Local Repository' => '',
      'Status' => '',
      'Overview' => '',
      'Download' => '',
      'Rebuild' => '',
      'Download file from package!' => '',
      'Required' => '',
      'PrimaryKey' => '',
      'AutoIncrement' => '',
      'SQL' => '',
      'Diff' => '',

      # Template: AdminPerformanceLog
      'Performance Log' => '',
      'Logfile too large!' => '',
      'Logfile too large, you need to reset it!' => '',
      'Range' => '',
      'Interface' => '',
      'Requests' => '',
      'Min Response' => '',
      'Max Response' => '',
      'Average Response' => '',

      # Template: AdminPGPForm
      'PGP Management' => '',
      'Identifier' => '',
      'Bit' => '',
      'Key' => '',
      'Fingerprint' => '',
      'Expires' => '',
      'In this way you can directly edit the keyring configured in SysConfig.' => '',

      # Template: AdminPOP3
      'POP3 Account Management' => 'POP3 -tunnusten hallinta',
      'Host' => 'Palvelin',
      'List' => '',
      'Trusted' => 'Hyv�ksytty',
      'Dispatching' => 'L�het�',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Kaikki saapuvat s�hk�postit l�hetet��n valitulle jonotuslistalle',
      'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => '',
      'Filtername' => '',
      'Match' => '',
      'Header' => '',
      'Value' => '',
      'Set' => '',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => '',

      # Template: AdminQueueForm
      'Queue Management' => 'Jonotuslistan Hallinta',
      'Sub-Queue of' => '',
      'Unlock timeout' => 'Aika lukituksen poistumiseen',
      '0 = no unlock' => '0 = ei lukituksen poistumista',
      'Escalation time' => 'Maksimi k�sittelyaika',
      '0 = no escalation' => '0 = ei vanhentumisaikaa',
      'Follow up Option' => 'Seuranta-asetukset',
      'Ticket lock after a follow up' => '',
      'Systemaddress' => 'J�rjestelm�n osoite',
      'Customer Move Notify' => '',
      'Customer State Notify' => '',
      'Customer Owner Notify' => '',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '',
      'If a ticket will not be answered in this time, just only this ticket will be shown.' => '',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '',
      'Will be the sender address of this queue for email answers.' => '',
      'The salutation for email answers.' => '',
      'The signature for email answers.' => 'Allekirjoitus s�hk�postiosoitteeseen',
      'OTRS sends an notification email to the customer if the ticket is moved.' => '',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => '',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => '',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => '',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Vastaus',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => '',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Vastauspohjien hallinta',
      'A response is default text to write faster answer (with default text) to customers.' => 'Vastauspohja on oletusteksti, jonka avulla voit nopeuttaa vastaamista asiakkaille',
      'Don\'t forget to add a new response a queue!' => '�l� unohda lis�t� uutta vastauspohjaa jonotuslistalle.',
      'Next state' => '',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'The current ticket state is' => '',
      'Your email address is new' => '',

      # Template: AdminRoleForm
      'Role Management' => '',
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => '',
      'move_into' => '',
      'Permissions to move tickets into this group/queue.' => '',
      'create' => '',
      'Permissions to create tickets in this group/queue.' => '',
      'owner' => '',
      'Permissions to change the ticket owner in this group/queue.' => '',
      'priority' => '',
      'Permissions to change the ticket priority in this group/queue.' => '',

      # Template: AdminRoleGroupForm
      'Role' => '',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => '',
      'Active' => '',
      'Select the role:user relations.' => '',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Tervehdysten hallinta',
      'customer realname' => 'k�ytt�j�n oikea nimi',
      'All Agent variables.' => '',
      'for agent firstname' => 'k�sittelij�n etunimi',
      'for agent lastname' => 'k�sittelij�n sukunimi',
      'for agent user id' => '',
      'for agent login' => '',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Suodatus',
      'Limit' => 'Rajoitus',
      'Select Box Result' => 'Suodatustuloksia',

      # Template: AdminSession
      'Session Management' => 'Istuntojen hallinta',
      'Sessions' => '',
      'Uniq' => '',
      'kill all sessions' => 'Tapa kaikki istunnot',
      'Session' => '',
      'Content' => '',
      'kill session' => 'Tapa istunto',

      # Template: AdminSignatureForm
      'Signature Management' => 'Allekirjoitusten hallinta',

      # Template: AdminSMIMEForm
      'S/MIME Management' => '',
      'Add Certificate' => '',
      'Add Private Key' => '',
      'Secret' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',

      # Template: AdminStateForm
      'System State Management' => 'Tilamahdollisuuksien m��ritt�minen',
      'State Type' => '',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => '',
      'See also' => '',

      # Template: AdminSysConfig
      'SysConfig' => '',
      'Group selection' => '',
      'Show' => '',
      'Download Settings' => '',
      'Download all system config changes.' => '',
      'Load Settings' => '',
      'Subgroup' => '',
      'Elements' => '',

      # Template: AdminSysConfigEdit
      'Config Options' => '',
      'Default' => '',
      'New' => 'Uusi',
      'New Group' => '',
      'Group Ro' => '',
      'New Group Ro' => '',
      'NavBarName' => '',
      'NavBar' => '',
      'Image' => '',
      'Prio' => '',
      'Block' => '',
      'AccessKey' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'S�hk�postiosoitteiden m��ritys',
      'Realname' => 'Nimi',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alle eingehenden Emails mit dem "To:" werden in die ausgew�hlte Queue einsortiert.',

      # Template: AdminUserForm
      'User Management' => 'K�ytt�j�hallinta',
      'Login as' => '',
      'Firstname' => 'Etunimi',
      'Lastname' => 'Sukunimi',
      'User will be needed to handle tickets.' => 'K�ytt�j� tarvitaan tikettien k�sittelemiseen.',
      'Don\'t forget to add a new user to groups and/or roles!' => '',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => '',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => '',
      'Return to the compose screen' => 'Palaa viestin kirjoitusikkunaan',
      'Discard all changes and return to the compose screen' => 'Hylk�� muutokset ja palaa viestin kirjoitusikkunaan',

      # Template: AgentCalendarSmall

      # Template: AgentCalendarSmallIcon

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => '',

      # Template: AgentLinkObject
      'Link Object' => '',
      'Select' => '',
      'Results' => 'Hakutulokset',
      'Total hits' => 'Hakutuloksia yhteens�',
      'Page' => '',
      'Detail' => '',

      # Template: AgentLookup
      'Lookup' => '',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Oikeinkirjoituksen tarkistus',
      'spelling error(s)' => 'Kirjoitusvirheit�',
      'or' => '',
      'Apply these changes' => 'Hyv�ksy muutokset',

      # Template: AgentStatsDelete
      'Do you really want to delete this Object?' => '',

      # Template: AgentStatsEditRestrictions
      'Select the restrictions to characterise the stat' => '',
      'Fixed' => '',
      'Please select only one Element or turn of the button \'Fixed\'.' => '',
      'Absolut Period' => '',
      'Between' => '',
      'Relative Period' => '',
      'The last' => '',
      'Finish' => '',
      'Here you can make restrictions to your stat.' => '',
      'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributs of the corresponding element.' => '',

      # Template: AgentStatsEditSpecification
      'Insert of the common specifications' => '',
      'Permissions' => '',
      'Format' => '',
      'Graphsize' => '',
      'Sum rows' => '',
      'Sum columns' => '',
      'Cache' => '',
      'Required Field' => '',
      'Selection needed' => '',
      'Explanation' => '',
      'In this form you can select the basic specifications.' => '',
      'Attribute' => '',
      'Title of the stat.' => '',
      'Here you can insert a description of the stat.' => '',
      'Dynamic-Object' => '',
      'Here you can select the dynamic object you want to use.' => '',
      '(Note: It depends on your installation how many dynamic objects you can use)' => '',
      'Static-File' => '',
      'For very complex stats it is possible to include a hardcoded file.' => '',
      'If a new hardcoded file is available this attribute will be shown and you can select one.' => '',
      'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '',
      'Multiple selection of the output format.' => '',
      'If you use a graph as output format you have to select at least one graph size.' => '',
      'If you need the sum of every row select yes' => '',
      'If you need the sum of every column select yes.' => '',
      'Most of the stats can be cached. This will speed up the presentation of this stat.' => '',
      '(Note: Useful for big databases and low performance server)' => '',
      'With an invalid stat it isn\'t feasible to generate a stat.' => '',
      'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '',

      # Template: AgentStatsEditValueSeries
      'Select the elements for the value series' => '',
      'Scale' => '',
      'minimal' => '',
      'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => '',
      'Here you can the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

      # Template: AgentStatsEditXaxis
      'Select the element, which will be used at the X-axis' => '',
      'maximal period' => '',
      'minimal scale' => '',
      'Here you can define the x-axis. You can select one element via the radio button. Than you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

      # Template: AgentStatsImport
      'Import' => '',
      'File is not a Stats config' => '',
      'No File selected' => '',

      # Template: AgentStatsOverview
      'Object' => '',

      # Template: AgentStatsPrint
      'Print' => 'Tulosta',
      'No Element selected.' => '',

      # Template: AgentStatsView
      'Export Config' => '',
      'Informations about the Stat' => '',
      'Exchange Axis' => '',
      'Configurable params of static stat' => '',
      'No element selected.' => '',
      'maximal period form' => '',
      'to' => '',
      'Start' => '',
      'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Viestiss� pit�� olla vastaanottaja!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Laita vastaanottajakentt��n s�hk�postiosoite!',
      'Bounce ticket' => 'Delekoi tiketti',
      'Bounce to' => 'Delekoi',
      'Next ticket state' => 'Uusi tiketin status',
      'Inform sender' => 'Informoi l�hett�j��',
      'Send mail!' => 'L�het� s�hk�posti!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Viestiss� pit�� olla otsikko!',
      'Ticket Bulk Action' => '',
      'Spell Check' => 'Oikeinkirjoituksen tarkistus',
      'Note type' => 'Viestityyppi',
      'Unlock Tickets' => '',

      # Template: AgentTicketClose
      'A message should have a body!' => '',
      'You need to account time!' => 'K�sittelyaika',
      'Close ticket' => 'Sulje tiketti',
      'Ticket locked!' => 'Tiketti lukittu!',
      'Ticket unlock!' => '',
      'Previous Owner' => '',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',
      'Attach' => 'Liite',
      'Pending date' => '',
      'Time units' => 'Ty�aika',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Viesti t�ytyy oikolukea!',
      'Compose answer for ticket' => 'L�het� vastaus tikettiin',
      'Pending Date' => 'Odotusp�iv�',
      'for pending* states' => 'Automaattisulkeminen tai muistutus',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Vaihda tiketin asiakasta',
      'Set customer user and customer id of a ticket' => '',
      'Customer User' => 'Asiakas-k�ytt�j�',
      'Search Customer' => 'Etsi Asiakas',
      'Customer Data' => '',
      'Customer history' => 'Asiakkaan historiatiedot',
      'All customer tickets.' => '',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Ilmoitukset',

      # Template: AgentTicketEmail
      'Compose Email' => '',
      'new ticket' => 'Uusi tiketti',
      'Refresh' => '',
      'Clear To' => '',
      'All Agents' => '',

      # Template: AgentTicketForward
      'Article type' => 'Huomautustyyppi',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => '',

      # Template: AgentTicketHistory
      'History of' => 'Historia:',

      # Template: AgentTicketLocked

      # Template: AgentTicketMailbox
      'Mailbox' => 'Saapuneet',
      'Tickets' => 'Tiketit',
      'of' => '',
      'Filter' => '',
      'All messages' => 'Kaikki viestit',
      'New messages' => 'Uusia viestej�',
      'Pending messages' => 'Odottavat viestit',
      'Reminder messages' => 'Muistutettavat viestit',
      'Reminder' => 'Muistuttaja',
      'Sort by' => 'J�rjest�',
      'Order' => 'J�rjestys',
      'up' => 'alkuun',
      'down' => 'loppuun',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => '',
      'Ticket Merge' => '',
      'Merge to' => '',

      # Template: AgentTicketMove
      'Move Ticket' => '',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Lis�� huomautus t�h�n tikettiin',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Muuta t�m�n tiketin omistajaa',

      # Template: AgentTicketPending
      'Set Pending' => '',

      # Template: AgentTicketPhone
      'Phone call' => 'Puhelut',
      'Clear From' => '',
      'Create' => '',

      # Template: AgentTicketPhoneOutbound

      # Template: AgentTicketPlain
      'Plain' => 'Pelkk� teksti',
      'TicketID' => 'TikettiID',
      'ArticleID' => '',

      # Template: AgentTicketPrint
      'Ticket-Info' => '',
      'Accounted time' => '',
      'Escalation in' => 'Vanhenee',
      'Linked-Object' => '',
      'Parent-Object' => '',
      'Child-Object' => '',
      'by' => '',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Muuta prioriteetti�',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Tikettej� n�kyviss�',
      'Tickets available' => 'Tikettej� avoinna',
      'All tickets' => 'Tikettej� yhteens�',
      'Queues' => 'Jonotuslista',
      'Ticket escalation!' => 'Tiketin maksimi hyv�ksytt�v� k�sittelyaika!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => '',
      'Compose Follow up' => '',
      'Compose Answer' => 'Vastaa',
      'Contact customer' => 'Ota yhteytt� asiakkaaseen',
      'Change queue' => 'Vaihda jonotuslistaa',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketResponsible
      'Change responsible of ticket' => '',

      # Template: AgentTicketSearch
      'Ticket Search' => '',
      'Profile' => '',
      'Search-Template' => '',
      'TicketFreeText' => '',
      'Created in Queue' => '',
      'Result Form' => '',
      'Save Search-Profile as Template?' => '',
      'Yes, save it with name' => '',

      # Template: AgentTicketSearchResult
      'Search Result' => '',
      'Change search options' => '',

      # Template: AgentTicketSearchResultPrint

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'J�rjest� nousevasti',
      'U' => 'Y',
      'sort downward' => 'J�rjest� laskevasti',
      'D' => 'A',

      # Template: AgentTicketStatusView
      'Ticket Status View' => '',
      'Open Tickets' => '',

      # Template: AgentTicketZoom
      'Locked' => '',
      'Split' => '',

      # Template: AgentWindowTab

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => '',

      # Template: CustomerFooter
      'Powered by' => '',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin
      'Login' => 'K�ytt�j�tunnus',
      'Lost your password?' => 'Unohditko salasanan?',
      'Request new password' => 'Pyyd� uutta salasanaa',
      'Create Account' => 'Luo tunnus',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Tervetuloa %s',

      # Template: CustomerPreferencesForm

      # Template: CustomerStatusView

      # Template: CustomerTicketMessage

      # Template: CustomerTicketSearch

      # Template: CustomerTicketSearchResultCSV

      # Template: CustomerTicketSearchResultPrint

      # Template: CustomerTicketSearchResultShort

      # Template: CustomerTicketZoom

      # Template: CustomerWarning

      # Template: Error
      'Click here to report a bug!' => 'Klikkaa t�st� l�hett��ksesi bugiraportti!',

      # Template: Footer
      'Top of Page' => '',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'Etusivu',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => '',
      'accept license' => 'Hyv�ksy lisenssi',
      'don\'t accept license' => 'En hyv�ksy lisenssi�',
      'Admin-User' => '',
      'Admin-Password' => '',
      'your MySQL DB should have a root password! Default is empty!' => '',
      'Database-User' => '',
      'default \'hot\'' => '',
      'DB connect host' => '',
      'Database' => '',
      'false' => '',
      'SystemID' => '',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '',
      'System FQDN' => '',
      '(Full qualified domain name of your system)' => '',
      'AdminEmail' => 'Yll�pidon s�hk�posti',
      '(Email of the system admin)' => 'Yll�pit�j�n s�hk�postiosoite',
      'Organization' => 'Organisaatio',
      'Log' => '',
      'LogModule' => '',
      '(Used log backend)' => '',
      'Logfile' => 'Logitiedosto',
      '(Logfile just needed for File-LogModule!)' => '',
      'Webfrontend' => 'Webn�kym�',
      'Default Charset' => 'Oletuskirjaisinasetus',
      'Use utf-8 it your database supports it!' => '',
      'Default Language' => 'Oletuskieli',
      '(Used default language)' => 'Oletuskieli',
      'CheckMXRecord' => '',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '',
      'Restart your webserver' => '',
      'After doing so your OTRS is up and running.' => '',
      'Start page' => 'Aloitussivu',
      'Have a lot of fun!' => '',
      'Your OTRS Team' => '',

      # Template: Login
      'Welcome to %s' => 'Tervetuloa k�ytt�m��n %s',

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Ei k�ytt�oikeutta',

      # Template: Notify
      'Important' => '',

      # Template: PrintFooter
      'URL' => '',

      # Template: PrintHeader
      'printed by' => 'tulostanut: ',

      # Template: Redirect

      # Template: Test
      'OTRS Test Page' => 'OTRS - Testisivu',
      'Counter' => '',

      # Template: Warning
      # Misc
      'Create Database' => 'Luo tietokanta',
      ' (work units)' => ' (esim. minuutteina)',
      'Ticket Number Generator' => 'Tikettinumeroiden generoija',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Symptom' => '',
      'Site' => 'Palvelin',
      'Customer history search (e. g. "ID342425").' => 'Asiakashistoriahaku (Esim. "ID342425").',
      'Close!' => 'Sulje!',
      'Don\'t forget to add a new user to groups!' => '�l� unohda lis�t� k�ytt�j�� ryhmiin!',
      'System Settings' => '',
      'Finished' => 'Valmis',
      'Queue ID' => '',
      'A article should have a title!' => '',
      'System History' => '',
      'Modules' => '',
      'Keyword' => '',
      'Close type' => 'Sulkemisen syy',
      'Change user <-> group settings' => 'Vaihda k�ytt�j� <-> Ryhm�hallinta',
      'Name is required!' => '',
      'Problem' => '',
      'next step' => 'Seuraava',
      'Termin1' => '',
      'Customer history search' => 'Asiakashistoriahaku',
      'Solution' => '',
      'Admin-Email' => 'Yll�pidon s�hk�posti',
      'QueueView' => 'Jonotuslistan�kym�',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'S�hk�posti, tikettinumero "<OTRS_TICKET>" on v�litetty osoitteeseen: "<OTRS_BOUNCE_TO>" . Ota yhteytt� kyseiseen osoitteeseen saadaksesi lis�tietoja',
      'modified' => '',
      'Keywords' => '',
      'Note Text' => 'Huomautusteksti',
      'No * possible!' => 'Jokerimerkki (*) ei k�yt�ss� !',
      'Options ' => '',
      'PhoneView' => 'Puhelu / Uusi tiketti',
      'Verion' => '',
      'Message for new Owner' => '',
      'Last update' => '',
      'Drop Database' => 'Poista tietokanta',
      'Pending type' => '',
      'Comment (internal)' => '',
      '(Used ticket number format)' => 'Tikettinumeroiden oletusformaatti',
      'Fulltext' => '',
      'Modified' => '',
      'Watched Tickets' => '',
      'Watched' => '',
      'Subscribe' => '',
      'Unsubscribe' => '',
    };
    # $$STOP$$
}

1;
