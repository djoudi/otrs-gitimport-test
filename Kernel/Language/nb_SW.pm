# --
# Kernel/Language/nb_SW.pm - Swedish language translation
# Copyright (C) 2004 Mats Eric Olausson <mats@synergy.se>
# --
# $Id: nb_SW.pm,v 1.3 2004-08-24 08:20:42 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::nb_SW;

use strict;

use vars qw($VERSION);
$VERSION = q$Revision: 1.3 $;
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Tue Aug 24 10:10:43 2004 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D/%M %Y %T';
    $Self->{DateFormatLong} = '%A %D. %B %Y %T';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 minuter',
      ' 5 minutes' => ' 5 minuter',
      ' 7 minutes' => ' 7 minuter',
      '(Click here to add)' => '(Klicka h�r f�r att l�gga till)',
      '...Back' => '',
      '10 minutes' => '10 minuter',
      '15 minutes' => '15 minuter',
      'Added User "%s"' => '',
      'AddLink' => 'L�gg till l�nk',
      'Admin-Area' => 'Admin-omr�de',
      'agent' => 'agent',
      'Agent-Area' => 'Agent-omr�de',
      'all' => 'alla',
      'All' => 'Alla',
      'Attention' => 'OBS',
      'Back' => 'Tilbaka',
      'before' => 'f�re',
      'Bug Report' => 'Rapportera fel',
      'Calendar' => '',
      'Cancel' => 'Avbryt',
      'change' => '�ndra',
      'Change' => '�ndra',
      'change!' => '�ndra!',
      'click here' => 'klicka h�r',
      'Comment' => 'Kommentar',
      'Contract' => '',
      'Crypt' => '',
      'Crypted' => '',
      'Customer' => 'Kund',
      'customer' => 'kund',
      'Customer Info' => 'Kundinfo',
      'day' => 'dag',
      'day(s)' => 'dag(ar)',
      'days' => 'dagar',
      'description' => 'beskrivning',
      'Description' => 'Beskrivning',
      'Directory' => '',
      'Dispatching by email To: field.' => 'Skickar iv�g enligt epostmeddelandets Till:-f�lt.',
      'Dispatching by selected Queue.' => '',
      'Don\'t show closed Tickets' => 'Visa inte l�sta tickets',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Det �r inte rekommenderat att arbeta som userid 1 (systemkonto)! Skapa nya anv�ndare!',
      'Done' => 'Klar',
      'end' => 'slut',
      'Error' => 'Fel',
      'Example' => 'Exempel',
      'Examples' => 'Exempel',
      'Facility' => 'Innr�ttning',
      'FAQ-Area' => 'FAQ-omr�de',
      'Feature not active!' => 'Funktion inte aktiverad!',
      'go' => 'Starta',
      'go!' => 'Starta!',
      'Group' => 'Grupp',
      'History::AddNote' => '',
      'History::Bounce' => '',
      'History::CustomerUpdate' => '',
      'History::EmailAgent' => '',
      'History::EmailCustomer' => '',
      'History::FollowUp' => '',
      'History::Forward' => '',
      'History::Lock' => '',
      'History::LoopProtection' => '',
      'History::Misc' => '',
      'History::Move' => '',
      'History::NewTicket' => '',
      'History::OwnerUpdate' => '',
      'History::PhoneCallAgent' => '',
      'History::PhoneCallCustomer' => '',
      'History::PriorityUpdate' => '',
      'History::Remove' => '',
      'History::SendAgentNotification' => '',
      'History::SendAnswer' => '',
      'History::SendAutoFollowUp' => '',
      'History::SendAutoReject' => '',
      'History::SendAutoReply' => '',
      'History::SendCustomerNotification' => '',
      'History::SetPendingTime' => '',
      'History::StateUpdate' => '',
      'History::TicketFreeTextUpdate' => '',
      'History::TicketLinkAdd' => '',
      'History::TicketLinkDelete' => '',
      'History::TimeAccounting' => '',
      'History::Unlock' => '',
      'History::WebRequestCustomer' => '',
      'Hit' => 'Tr�ff',
      'Hits' => 'Tr�ffar',
      'hour' => 'timme',
      'hours' => 'timmar',
      'Ignore' => 'Ignorera',
      'invalid' => 'ogiltig',
      'Invalid SessionID!' => 'Ogiltigt SessionID!',
      'Language' => 'Spr�k',
      'Languages' => 'Spr�k',
      'last' => 'sista',
      'Line' => 'Rad',
      'Lite' => 'Enkel',
      'Login failed! Your username or password was entered incorrectly.' => 'Inloggningen misslyckades! Angivet anv�ndarnamn och/eller l�senord �r inte korrekt.',
      'Logout successful. Thank you for using OTRS!' => 'Utloggningen lyckades.  Tack f�r att du anv�nde OTRS!',
      'Message' => 'Meddelande',
      'minute' => 'minut',
      'minutes' => 'minuter',
      'Module' => 'Modul',
      'Modulefile' => 'Modulfil',
      'month(s)' => 'm�nad(er)',
      'Name' => 'Namn',
      'New Article' => 'Ny artikel',
      'New message' => 'Nytt meddelande',
      'New message!' => 'Nytt meddelande!',
      'Next' => '',
      'Next...' => '',
      'No' => 'Nej',
      'no' => 'inga',
      'No entry found!' => 'Ingen inmatning funnen!',
      'No Permission!' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'No suggestions' => 'Inga f�rslag',
      'none' => 'inga',
      'none - answered' => 'inga - besvarat',
      'none!' => 'inga!',
      'Normal' => 'Normal',
      'off' => 'av',
      'Off' => 'Av',
      'On' => 'P�',
      'on' => 'p�',
      'Online Agent: %s' => '',
      'Online Customer: %s' => '',
      'Password' => 'L�senord',
      'Passwords dosn\'t match! Please try it again!' => '',
      'Pending till' => 'V�ntande tills',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'V�nligen besvara denna/dessa tickets f�r att komma tillbaka till den normala k�-visningsbilden!',
      'Please contact your admin' => 'V�nligen kontakta administrat�ren',
      'please do not edit!' => 'Var v�nlig och �ndra inte detta!',
      'possible' => 'm�jlig',
      'Preview' => 'Forhandsvisning',
      'QueueView' => 'K�er',
      'reject' => 'Avvisas',
      'replace with' => 'Ers�tt med',
      'Reset' => 'Nollst�ll',
      'Salutation' => 'H�lsning',
      'Session has timed out. Please log in again.' => 'Sessionstiden har l�pt ut.  V�nligen logga p� igen.',
      'Show closed Tickets' => 'Visa l�sta tickets',
      'Sign' => '',
      'Signature' => 'Signatur',
      'Signed' => '',
      'Size' => '',
      'Sorry' => 'Beklagar',
      'Stats' => 'Statistik',
      'Subfunction' => 'Underfunktion',
      'submit' => 'Skicka',
      'submit!' => 'Skicka!',
      'system' => 'System',
      'Take this Customer' => '',
      'Take this User' => 'V�lj denna anv�ndare',
      'Text' => 'Text',
      'The recommended charset for your language is %s!' => 'Den rekommenderade teckenupps�ttningen f�r ditt spr�k �r %s!',
      'Theme' => 'Tema',
      'There is no account with that login name.' => 'Det finns inget konto med detta namn.',
      'Ticket Number' => '',
      'Timeover' => 'Tids�vertr�delse',
      'To: (%s) replaced with database email!' => 'Till: (%s) ersatt med epost fr�n databas!',
      'top' => 'topp',
      'Type' => 'Typ',
      'update' => 'uppdatera',
      'Update' => 'Uppdatera',
      'update!' => 'Uppdatera!',
      'Upload' => '',
      'User' => 'Anv�ndare',
      'Username' => 'Anv�ndarnamn',
      'Valid' => 'Giltigt',
      'Warning' => 'Varning',
      'week(s)' => 'vecka(or)',
      'Welcome to OTRS' => 'V�lkommen till OTRS',
      'Word' => 'Ord',
      'wrote' => 'skrev',
      'year(s)' => '�r',
      'Yes' => 'Ja',
      'yes' => 'ja',
      'You got new message!' => 'Du har f�tt ett nytt meddelande!',
      'You have %s new message(s)!' => 'Du har %s nya meddelanden!',
      'You have %s reminder ticket(s)!' => 'Du har %s p�minnelse-tickets!',

    # Template: AAAMonth
      'Apr' => 'apr',
      'Aug' => 'aug',
      'Dec' => 'dec',
      'Feb' => 'feb',
      'Jan' => 'jan',
      'Jul' => 'jul',
      'Jun' => 'jun',
      'Mar' => 'mar',
      'May' => 'maj',
      'Nov' => 'nov',
      'Oct' => 'okt',
      'Sep' => 'sep',

    # Template: AAAPreferences
      'Closed Tickets' => 'L�sta tickets',
      'CreateTicket' => 'Skapa Ticket',
      'Custom Queue' => 'Utvald k�',
      'Follow up notification' => 'Meddelande om uppf�ljning',
      'Frontend' => 'Gr�nssnitt',
      'Mail Management' => 'Eposthantering',
      'Max. shown Tickets a page in Overview.' => 'Max. visade tickets per sida i �versikt.',
      'Max. shown Tickets a page in QueueView.' => 'Max. visade tickets per side i K�-bild.',
      'Move notification' => 'Meddelande om �ndring av k�',
      'New ticket notification' => 'Meddelande om nyskapad ticket',
      'Other Options' => 'Andra tillval',
      'PhoneView' => 'Tel.samtal',
      'Preferences updated successfully!' => 'Inst�llningar lagrade!',
      'QueueView refresh time' => 'Automatisk uppdateringsintervall f� K�-bild',
      'Screen after new ticket' => 'Sk�rm efter inmatning av ny ticket',
      'Select your default spelling dictionary.' => 'V�lj standard ordbok for stavningskontroll.',
      'Select your frontend Charset.' => 'V�lj teckenupps�ttning.',
      'Select your frontend language.' => 'V�lj spr�k.',
      'Select your frontend QueueView.' => 'V�lj K�-bild.',
      'Select your frontend Theme.' => 'V�lj stil-tema.',
      'Select your QueueView refresh time.' => 'V�lj automatisk uppdateringsintervall f�r K�-bild.',
      'Select your screen after creating a new ticket.' => 'V�lj sk�rmbild som visas efter registrering av ny h�nvisning/ticket.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Skicka mig ett meddelande om kundkorrespondens f�r tickets som jag st�r som �gare till.',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Send me a notification if a ticket is unlocked by the system.' => 'Skicka mig ett meddelande ifall systemet tar bort l�set p� en ticket.',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Show closed tickets.' => 'Visa l�sta tickets.',
      'Spelling Dictionary' => 'Stavningslexikon',
      'Ticket lock timeout notification' => 'Meddelan mig d� tiden g�tt ut f�r ett ticket-l�s',
      'TicketZoom' => 'Ticket Zoom',

    # Template: AAATicket
      '1 very low' => '1 Planeras',
      '2 low' => '2 l�g',
      '3 normal' => '3 medium',
      '4 high' => '4 h�g',
      '5 very high' => '5 kritisk',
      'Action' => '�tg�rd',
      'Age' => '�lder',
      'Article' => 'Artikel',
      'Attachment' => 'Bifogat dokument',
      'Attachments' => 'Bifogade dokument',
      'Bcc' => 'Bcc',
      'Bounce' => 'Studsa',
      'Cc' => 'Cc',
      'Close' => 'St�ng',
      'closed' => '',
      'closed successful' => 'L�st och st�ngt',
      'closed unsuccessful' => 'Ol�st men st�ngt',
      'Compose' => 'F�rfatta',
      'Created' => 'Skapat',
      'Createtime' => 'Tidpunkt f�r skapande',
      'email' => 'email',
      'eMail' => 'eMail',
      'email-external' => 'email externt',
      'email-internal' => 'email internt',
      'Forward' => 'Vidarebefordra',
      'From' => 'Fr�n',
      'high' => 'h�g',
      'History' => 'Historik',
      'If it is not displayed correctly,' => 'Ifall det inte visas korrekt,',
      'lock' => 'l�st',
      'Lock' => 'L�s',
      'low' => 'l�g',
      'Move' => 'Flytta',
      'new' => 'ny',
      'normal' => 'normal',
      'note-external' => 'notis externt',
      'note-internal' => 'notis internt',
      'note-report' => 'notis till rapport',
      'open' => '�ppen',
      'Owner' => '�gare',
      'Pending' => 'V�ntande',
      'pending auto close+' => 'v�ntar p� att st�ngas (l�st)',
      'pending auto close-' => 'v�ntar p� att st�ngas (ol�st)',
      'pending reminder' => 'v�ntar p� p�minnelse',
      'phone' => 'telefon',
      'plain' => 'r�',
      'Priority' => 'Prioritet',
      'Queue' => 'K�',
      'removed' => 'borttagen',
      'Sender' => 'Avs�ndare',
      'sms' => 'sms',
      'State' => 'Status',
      'Subject' => '�mne',
      'This is a' => 'Detta �r en',
      'This is a HTML email. Click here to show it.' => 'Detta �r ett HTML-email. Klicka h�r f�r att visa.',
      'This message was written in a character set other than your own.' => 'Detta meddelande �r skrivet med en annan teckenupps�ttning �n den du anv�nder.',
      'Ticket' => 'Ticket',
      'Ticket "%s" created!' => 'Ticket "%s" skapad!',
      'To' => 'Till',
      'to open it in a new window.' => 'f�r att �ppna i ett nytt f�nster',
      'Unlock' => 'L�s upp',
      'unlock' => 'l�s upp',
      'very high' => 'kritisk',
      'very low' => 'planeras',
      'View' => 'Bild',
      'webrequest' => 'web-anmodan',
      'Zoom' => 'Zoom',

    # Template: AAAWeekDay
      'Fri' => 'fre',
      'Mon' => 'm�n',
      'Sat' => 'l�r',
      'Sun' => 's�n',
      'Thu' => 'tor',
      'Tue' => 'tis',
      'Wed' => 'ons',

    # Template: AdminAttachmentForm
      'Add' => 'L�gg till',
      'Attachment Management' => 'Hantering av bifogade dokument',

    # Template: AdminAutoResponseForm
      'Auto Response From' => 'autosvar-avs�ndare',
      'Auto Response Management' => 'Autosvar-hantering',
      'Note' => 'Notis',
      'Response' => 'Svar',
      'to get the first 20 character of the subject' => 'f�r att f� fram de f�rste 20 tecknen i �mnesbeskrivningen',
      'to get the first 5 lines of the email' => 'f�r att f� fram de f�rsta 5 raderna av emailen',
      'to get the from line of the email' => 'f�r att f� fram avs�ndarraden i emailen',
      'to get the realname of the sender (if given)' => 'f�r att f� fram avs�ndarens fulla namn (om m�jligt)',
      'to get the ticket id of the ticket' => 'f�r att f� fram intern ticket-id',
      'to get the ticket number of the ticket' => 'f�r att f� fram ticket-nummer',
      'Useable options' => 'Anv�ndbara till�gg',

    # Template: AdminCustomerUserForm
      'Customer User Management' => 'Kundanv�ndare',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => '',
      'Result' => '',
      'Search' => 'S�k',
      'Search for' => '',
      'Select Source (for add)' => '',
      'Source' => 'K�lla',
      'The message being composed has been closed.  Exiting.' => 'Det tilh�rande redigeringsf�nstret har st�ngts. Avslutar.',
      'This values are read only.' => '',
      'This values are required.' => '',
      'This window must be called from compose window' => 'Denne funktion m�ste startas fr�n redigeringsf�nstret',

    # Template: AdminCustomerUserGroupChangeForm
      'Change %s settings' => '�ndra %s-inst�llningar',
      'Customer User <-> Group Management' => 'Kundanv�ndare <-> gruppr',
      'Full read and write access to the tickets in this group/queue.' => 'Fulla l�s- och skrivr�ttigheter till tickets i denna grupp/k�.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Om ingenting �r valt finns inga r�ttigheter i denna grupp (tickets i denna grupp kommer inte att finnas tillg�ngliga f�r anv�ndaren).',
      'Permission' => 'R�ttighet',
      'Read only access to the ticket in this group/queue.' => 'Endast l�sr�ttighet till tickets i denna grupp/k�.',
      'ro' => 'ro',
      'rw' => 'rw',
      'Select the user:group permissions.' => 'V�lj anv�ndar:grupp-rettigheter.',

    # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => '�ndra anv�ndar- <-> grupp-inst�llningar',

    # Template: AdminEmail
      'Admin-Email' => 'Admin-email',
      'Body' => 'Meddelandetext',
      'OTRS-Admin Info!' => 'OTRS-Admin Info!',
      'Recipents' => 'Mottagare',
      'send' => 'Skicka',

    # Template: AdminEmailSent
      'Message sent to' => 'Meddelande skicakt till',

    # Template: AdminGenericAgent
      '(e. g. 10*5155 or 105658*)' => 't.ex. 10*5144 eller 105658*',
      '(e. g. 234321)' => 't.ex. 234321',
      '(e. g. U5150)' => 't.ex. U5150',
      '-' => '',
      'Add Note' => 'L�gg till anteckning',
      'Agent' => '',
      'and' => 'og',
      'CMD' => '',
      'Customer User Login' => 'kundanv�ndare loginnamn',
      'CustomerID' => 'Organisations-ID',
      'CustomerUser' => 'Kundanv�ndare',
      'Days' => '',
      'Delete' => 'Radera',
      'Delete tickets' => '',
      'Edit' => 'Redigera',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Fritexts�k i artiklar (t.ex. "Mar*in" eller "Baue*")',
      'GenericAgent' => '',
      'Hours' => '',
      'Job-List' => '',
      'Jobs' => '',
      'Last run' => '',
      'Minutes' => '',
      'Modules' => '',
      'New Agent' => '',
      'New Customer' => '',
      'New Owner' => 'Ny �gare',
      'New Priority' => '',
      'New Queue' => 'Ny K�',
      'New State' => '',
      'New Ticket Lock' => '',
      'No time settings.' => 'Inga tidsinst�llningar.',
      'Param 1' => '',
      'Param 2' => '',
      'Param 3' => '',
      'Param 4' => '',
      'Param 5' => '',
      'Param 6' => '',
      'Save' => '',
      'Save Job as?' => '',
      'Schedule' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '',
      'Ticket created' => 'Ticket skapad',
      'Ticket created between' => 'Ticket skapat mellan',
      'Ticket Lock' => '',
      'TicketFreeText' => '',
      'Times' => 'Tider',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => '',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Skapa nya gruppr f�r att kunna handtera olika r�ttigheter f�r skilda gruppr av agenter (t.ex. ink�psavdelning, supportavdelning, f�rs�ljningsavdelning, ...).',
      'Group Management' => 'gruppr',
      'It\'s useful for ASP solutions.' => 'Nyttigt f�r ASP-l�sningar.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => '\'admin\'-gruppen ger tillg�ng till Admin-arean, \'stats\'-gruppen till Statistik-arean.',

    # Template: AdminLog
      'System Log' => 'Systemlogg',
      'Time' => '',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Admin-email',
      'Attachment <-> Response' => 'Bifogat dokument <-> Svar',
      'Auto Response <-> Queue' => 'Autosvar <-> K�',
      'Auto Responses' => 'Autosvar',
      'Customer User' => 'Kundanv�ndare',
      'Customer User <-> Groups' => 'Kundanv�ndare <-> gruppr',
      'Email Addresses' => 'Emailadresser',
      'Groups' => 'gruppr',
      'Logout' => 'Logga ut',
      'Misc' => 'Div',
      'Notifications' => 'Meddelanden',
      'PGP Keys' => '',
      'PostMaster Filter' => '',
      'PostMaster POP3 Account' => 'Postmaster POP3-konto',
      'Responses' => 'Svar',
      'Responses <-> Queue' => 'Svar <-> K�',
      'Role' => '',
      'Role <-> Group' => '',
      'Role <-> User' => '',
      'Roles' => '',
      'Select Box' => 'SQL-access',
      'Session Management' => 'Sessionshantering',
      'SMIME Certificates' => '',
      'Status' => '',
      'System' => '',
      'User <-> Groups' => 'Anv�ndare <-> gruppr',

    # Template: AdminNotificationForm
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Konfigurationsval (t.ex. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Notification Management' => 'Meddelandehantering',
      'Notifications are sent to an agent or a customer.' => 'Meddelanden skickats till agenter eller kunder.',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'ger tillg�ng till data f�r g�llande kund (t.ex. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'ger tillg�ng till data f�r agenten som utf�r handlingen (t.ex. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'ger tillgang till data f�r agenten som st�r som �gare till ticketen (t.ex. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',

    # Template: AdminPGPForm
      'Bit' => '',
      'Expires' => '',
      'File' => '',
      'Fingerprint' => '',
      'FIXME: WHAT IS PGP?' => '',
      'Identifier' => '',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Key' => 'Nyckel',
      'PGP Key Management' => '',

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Inkommande email fr�n POP3-konton sorteras till vald k�!',
      'Dispatching' => 'F�rdelning',
      'Host' => 'Host',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',
      'POP3 Account Management' => 'Administration av POP3-Konto',
      'Trusted' => 'Betrodd',

    # Template: AdminPostMasterFilter
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'Filtername' => '',
      'Header' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',
      'Match' => 'Tr�ff',
      'PostMaster Filter Management' => '',
      'Set' => 'Set',
      'Value' => 'Inneh�ll',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Hantering av K� <-> Autosvar',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = ingen upptrappning',
      '0 = no unlock' => '0 = ingen uppl�sning',
      'Customer Move Notify' => 'Meddelande om flytt av kund',
      'Customer Owner Notify' => 'Meddelande om byte av �gare av Kund',
      'Customer State Notify' => 'Meddelande om status�ndring f�r Kund',
      'Escalation time' => 'Upptrappningstid',
      'Follow up Option' => 'Korrespondens p� l�st ticket',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Ifall en kund skickar uppf�ljningsmail p� en l�st ticket, blir ticketen l�st till f�rra �garen.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Ifall en ticket inte blir besvarad inom denna tid, visas enbart denna ticket.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Ifall en ticket som �r l�st av en agent men �nd� inte blir besvarad inom denna tid, kommer l�set automatiskt att tas bort.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS skickar ett meddelande till kunden ifall ticketen flyttas.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS skickar ett meddelande till kunden vid �garbyte.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS skickar ett meddelande till kunden vid statusuppdatering.',
      'Queue Management' => 'K�hantering',
      'Sub-Queue of' => 'Underk� till',
      'Systemaddress' => 'Systemadress',
      'The salutation for email answers.' => 'H�lsningsfras f�r email-svar.',
      'The signature for email answers.' => 'Signatur f�r email-svar.',
      'Ticket lock after a follow up' => 'Ticket l�ses efter uppf�ljningsmail',
      'Unlock timeout' => 'Tidsintervall f�r borttagning av l�s',
      'Will be the sender address of this queue for email answers.' => 'Avs�ndaradress f�r email i denna K�.',

    # Template: AdminQueueResponsesChangeForm
      'Std. Responses <-> Queue Management' => 'Hantering av standardsvar <-> K�hantering',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Svar',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Hantering av standardsvar <-> Bifogade dokument',

    # Template: AdminResponseAttachmentForm

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Ett svar er en standardtext f�r att underl�tta besvarandet av vanliga kundfr�gor.',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'Don\'t forget to add a new response a queue!' => 'Kom ih�g att l�gga till ett nytt svar till en k�!',
      'Next state' => 'N�sta tillst�nd',
      'Response Management' => 'Hantera svar',
      'The current ticket state is' => 'Nuvarande ticket-status',
      'Your email address is new' => '',

    # Template: AdminRoleForm
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',
      'Role Management' => '',

    # Template: AdminRoleGroupChangeForm
      'create' => 'Skapa',
      'move_into' => 'Flytta till',
      'owner' => '�gare',
      'Permissions to change the ticket owner in this group/queue.' => 'R�tt att �ndra ticket-�gare i denna grupp/K�.',
      'Permissions to change the ticket priority in this group/queue.' => 'R�tt att �ndra prioritet i denna grupp/K�.',
      'Permissions to create tickets in this group/queue.' => 'R�tt att skapa tickets i denna grupp/K�.',
      'Permissions to move tickets into this group/queue.' => 'R�tt att flytta tickets i denna grupp/K�.',
      'priority' => 'prioritet',
      'Role <-> Group Management' => '',

    # Template: AdminRoleGroupForm
      'Change role <-> group settings' => '',

    # Template: AdminRoleUserChangeForm
      'Active' => '',
      'Role <-> User Management' => '',
      'Select the role:user relations.' => '',

    # Template: AdminRoleUserForm
      'Change user <-> role settings' => '',

    # Template: AdminSMIMEForm
      'Add Certificate' => '',
      'Add Private Key' => '',
      'FIXME: WHAT IS SMIME?' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',
      'Secret' => '',
      'SMIME Certificate Management' => '',

    # Template: AdminSalutationForm
      'customer realname' => 'Fullt kundnamn',
      'for agent firstname' => 'f�r agents f�rnamn',
      'for agent lastname' => 'f�r agents efternamn',
      'for agent login' => 'f�r agents login',
      'for agent user id' => 'f�r agents anv�ndar-id',
      'Salutation Management' => 'Hantering av H�lsningsfraser',

    # Template: AdminSelectBoxForm
      'Limit' => '',
      'SQL' => '',

    # Template: AdminSelectBoxResult
      'Select Box Result' => 'Select Box Resultat',

    # Template: AdminSession
      'kill all sessions' => 'Terminera alla sessioner',
      'kill session' => 'Terminera session',
      'Overview' => '�versikt',
      'Session' => '',
      'Sessions' => 'Sessioner',
      'Uniq' => '',

    # Template: AdminSignatureForm
      'Signature Management' => 'Signaturhantering',

    # Template: AdminStateForm
      'See also' => 'Se ocks�',
      'State Type' => 'Statustyp',
      'System State Management' => 'Hantering av systemstatus',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Se till att du ocks� uppdaterade standardutg�ngsl�gena i Kernel/Config.pm!',

    # Template: AdminSystemAddressForm
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Alla inkommande mail till denna adressat (To:) delas ut till vald k�.',
      'Email' => 'Email',
      'Realname' => 'Fullst�ndigt namn',
      'System Email Addresses Management' => 'Hantera System-emailadresser',

    # Template: AdminUserForm
      'Don\'t forget to add a new user to groups!' => 'Gl�m inte att l�gga in en ny anv�ndare i en grupp!',
      'Firstname' => 'F�rnamn',
      'Lastname' => 'Efternamn',
      'User Management' => 'Anv�ndarhantering',
      'User will be needed to handle tickets.' => 'Anv�ndare kr�vs f�r att hantera tickets.',

    # Template: AdminUserGroupChangeForm
      'User <-> Group Management' => 'Hantera anv�ndare <-> grupp',

    # Template: AdminUserGroupForm

    # Template: AgentBook
      'Address Book' => 'Adressbok',
      'Discard all changes and return to the compose screen' => 'Bortse fr�n �ndringarna och st�ng f�nstret',
      'Return to the compose screen' => 'St�ng f�nstret',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Ett meddelande m�ste ha en mottagare i Till:-f�ltet!',
      'Bounce ticket' => 'Skicka �ver ticket',
      'Bounce to' => 'Skicka �ver till',
      'Inform sender' => 'Informera avs�ndare',
      'Next ticket state' => 'N�sta ticketstatus',
      'Send mail!' => 'Skicka mail!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'I Till-f�ltet m�ste anges en giltig emailadress (t.ex. kund@exempeldomain.se)!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Emailen med ticketnummer "<OTRS_TICKET>" har skickats �ver till "<OTRS_BOUNCE_TO>". V�nligen kontakta denna adress f�r vidare h�nvisningar.',

    # Template: AgentBulk
      '$Text{"Note!' => '',
      'A message should have a subject!' => 'Ett meddelande m�ste ha en �mnesrad!',
      'Note type' => 'Anteckningstyp',
      'Note!' => 'Observera!',
      'Options' => 'Tillval',
      'Spell Check' => 'Stavningskontroll',
      'Ticket Bulk Action' => '',

    # Template: AgentClose
      ' (work units)' => ' (arbetsenheter)',
      'A message should have a body!' => 'Ett meddelande m�ste inneh�lla en meddelandetext!',
      'Close ticket' => 'St�ng ticket',
      'Close type' => 'St�ngningstillst�nd',
      'Close!' => 'St�ng!',
      'Note Text' => 'Anteckingstext',
      'Time units' => 'Tidsenheter',
      'You need to account time!' => 'Du m�ste redovisa tiden!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'Stavningskontroll m�ste utf�ras p� alla meddelanden!',
      'Attach' => 'Bifoga',
      'Compose answer for ticket' => 'F�rfatta svar till ticket',
      'for pending* states' => 'f�r v�ntetillst�nd',
      'Is the ticket answered' => '�r ticketen besvarad',
      'Pending Date' => 'V�ntar till',

    # Template: AgentCrypt

    # Template: AgentCustomer
      'Change customer of ticket' => '�ndra kund f�r ticket',
      'Search Customer' => 'S�k kund',
      'Set customer user and customer id of a ticket' => 'Markera kundanv�ndare och organisations-id f�r ticket',

    # Template: AgentCustomerHistory
      'All customer tickets.' => 'Alla tickets f�r kund.',
      'Customer history' => 'Kundehistorik',

    # Template: AgentCustomerMessage
      'Follow up' => 'Uppf�ljning',

    # Template: AgentCustomerView
      'Customer Data' => 'Kunddata',

    # Template: AgentEmailNew
      'All Agents' => 'Alla agenter',
      'Clear To' => '',
      'Compose Email' => 'Skriv email',
      'new ticket' => 'Ny ticket',

    # Template: AgentForward
      'Article type' => 'Artikeltyp',
      'Date' => 'Dato',
      'End forwarded message' => 'Avsluta vidarebefordrat meddelande',
      'Forward article of ticket' => 'Vidarebefordrad artikel fr�n ticket',
      'Forwarded message from' => 'Vidarebefordrat meddelande fr�n',
      'Reply-To' => '',

    # Template: AgentFreeText
      'Change free text of ticket' => '�ndra friatextf�lt i ticket',

    # Template: AgentHistoryForm
      'History of' => 'Historik f�r',

    # Template: AgentHistoryRow

    # Template: AgentInfo
      'Info' => '',

    # Template: AgentLookup
      'Lookup' => '',

    # Template: AgentMailboxNavBar
      'All messages' => 'Alla meddelanden',
      'down' => 'sjunkande',
      'Mailbox' => 'Mailbox',
      'New' => 'Nytt',
      'New messages' => 'Nya meddelanden',
      'Open' => '�ppna',
      'Open messages' => '�ppna meddelanden',
      'Order' => 'Sortering',
      'Pending messages' => 'V�ntande meddelanden',
      'Reminder' => 'P�minnelse',
      'Reminder messages' => 'P�minnelsemeddelanden',
      'Sort by' => 'Sortera efter',
      'Tickets' => 'Tickets',
      'up' => 'stigande',

    # Template: AgentMailboxTicket
      '"}' => '',
      '"}","14' => '',
      'Add a note to this ticket!' => '',
      'Change the ticket customer!' => '',
      'Change the ticket owner!' => '',
      'Change the ticket priority!' => '',
      'Close this ticket!' => '',
      'Shows the detail view of this ticket!' => '',
      'Unlock this ticket!' => '',

    # Template: AgentMove
      'Move Ticket' => 'Flytta ticket',
      'Previous Owner' => 'Tidigare �gare',
      'Queue ID' => 'K�-id',

    # Template: AgentNavigationBar
      'Agent Preferences' => '',
      'Bulk Action' => '',
      'Bulk Actions on Tickets' => '',
      'Create new Email Ticket' => '',
      'Create new Phone Ticket' => '',
      'Email-Ticket' => '',
      'Locked tickets' => 'L�sta tickets',
      'new message' => 'Nytt meddelande',
      'Overview of all open Tickets' => '',
      'Phone-Ticket' => '',
      'Preferences' => 'Inst�llningar',
      'Search Tickets' => '',
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

    # Template: AgentNote
      'Add note to ticket' => 'L�gg till anteckning till ticket',

    # Template: AgentOwner
      'Change owner of ticket' => '�ndra �gare av ticket',
      'Message for new Owner' => 'Meddelande till ny �gare',

    # Template: AgentPending
      'Pending date' => 'V�ntande datum',
      'Pending type' => 'V�ntande typ',
      'Set Pending' => 'Markera som v�ntande',

    # Template: AgentPhone
      'Phone call' => 'Telefonsamtal',

    # Template: AgentPhoneNew
      'Clear From' => 'Nolst�ll Fr�n:',

    # Template: AgentPlain
      'ArticleID' => '',
      'Download' => '',
      'Plain' => 'Enkel',
      'TicketID' => '',

    # Template: AgentPreferencesCustomQueue
      'My Queues' => '',
      'You also get notified about this queues via email if enabled.' => '',
      'Your queue selection of your favorite queues.' => '',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => '�ndra l�senord',
      'New password' => 'Nytt l�senord',
      'New password again' => 'Nytt l�senord igen',

    # Template: AgentPriority
      'Change priority of ticket' => '�ndra prioritet f�r ticket',

    # Template: AgentSpelling
      'Apply these changes' => 'Verkst�ll �ndringar',
      'Spell Checker' => 'Stavningskontroll',
      'spelling error(s)' => 'Stavfel',

    # Template: AgentStatusView
      'D' => 'N',
      'of' => 'av',
      'Site' => 'plats',
      'sort downward' => 'Sortera sjunkande',
      'sort upward' => 'Sortera stigande',
      'Ticket Status' => 'Ticketstatus',
      'U' => 'U',

    # Template: AgentTicketLink
      'Delete Link' => '',
      'Link' => 'L�nk',
      'Link to' => 'L�nk till',

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket l�st',
      'Ticket unlock!' => 'Ticket uppl�st',

    # Template: AgentTicketPrint

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Redovisad tid',
      'Escalation in' => 'Upptrappning om',

    # Template: AgentUtilSearch
      'Profile' => 'Profil',
      'Result Form' => 'Resultatbild',
      'Save Search-Profile as Template?' => 'Spara s�kkriterier som mall?',
      'Search-Template' => 'S�kmall',
      'Select' => 'V�lj',
      'Ticket Search' => 'Ticket-s�k',
      'Yes, save it with name' => 'Ja, spara med namn',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Kundhistorik',
      'Customer history search (e. g. "ID342425").' => 'S�k efter kundhistorik (t.ex. "ID342425").',
      'No * possible!' => 'Wildcards * inte till�tna!',

    # Template: AgentUtilSearchResult
      'Change search options' => '�ndra s�kinst�llningar',
      'Results' => 'Resultat',
      'Search Result' => 'S�keresultat',
      'Total hits' => 'Totalt hittade',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'Alla l�sta tickets',
      'All open tickets' => 'Alla �ppna tickets',
      'closed tickets' => 'l�sta tickets',
      'open tickets' => '�ppna tickets',
      'or' => 'eller',
      'Provides an overview of all' => 'Gir en oversikt over alle',
      'So you see what is going on in your system.' => 'S� att du kan se vad som sker i ditt system.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'Skriv uppf�ljningssvar',
      'Your own Ticket' => 'Din egen ticket',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'Skriv svar',
      'Contact customer' => 'Kontakta kund',
      'phone call' => 'Telefonsamtal',

    # Template: AgentZoomArticle
      'Split' => 'Dela',

    # Template: AgentZoomBody
      'Change queue' => '�ndra k�',

    # Template: AgentZoomHead
      'Change the ticket free fields!' => '',
      'Free Fields' => 'Lediga f�lt',
      'Link this ticket to an other one!' => '',
      'Lock it to work on it!' => '',
      'Print' => 'Skriv ut',
      'Print this ticket!' => '',
      'Set this ticket to pending!' => '',
      'Shows the ticket history!' => '',

    # Template: AgentZoomStatus
      '"}","18' => '',
      'Locked' => '',
      'SLA Age' => '',

    # Template: Copyright
      'printed by' => 'utskrivet av',

    # Template: CustomerAccept

    # Template: CustomerCreateAccount
      'Create Account' => 'Skapa konto',
      'Login' => '',

    # Template: CustomerError
      'Traceback' => '',

    # Template: CustomerFAQArticleHistory
      'FAQ History' => '',

    # Template: CustomerFAQArticlePrint
      'Category' => 'Kategori',
      'Keywords' => 'Nyckelord',
      'Last update' => 'Senast �ndrat',
      'Problem' => 'Problem',
      'Solution' => 'L�sning',
      'Symptom' => 'Symptom',

    # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => '',

    # Template: CustomerFAQArticleView
      'FAQ Article' => '',
      'Modified' => '�ndrat',

    # Template: CustomerFAQOverview
      'FAQ Overview' => 'FAQ �versikt',

    # Template: CustomerFAQSearch
      'FAQ Search' => 'FAQ S�k',
      'Fulltext' => 'Fritext',
      'Keyword' => 'Nyckelord',

    # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'FAQ S�kresultat',

    # Template: CustomerFooter
      'Powered by' => '',

    # Template: CustomerLostPassword
      'Lost your password?' => 'Gl�mt l�senordet?',
      'Request new password' => 'Be om nytt l�senord',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'CompanyTickets' => '',
      'Create new Ticket' => 'Skapat ny ticket',
      'FAQ' => 'FAQ',
      'MyTickets' => '',
      'New Ticket' => 'Ny ticket',
      'Welcome %s' => 'V�lkommen %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerTicketSearch

    # Template: CustomerTicketSearchResultPrint

    # Template: CustomerTicketSearchResultShort

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Klicka h�r f�r att rapportera ett fel!',

    # Template: FAQArticleDelete
      'FAQ Delete' => 'Radera FAQ',
      'You really want to delete this article?' => 'Vill du verkligen radera denna artikel?',

    # Template: FAQArticleForm
      'A article should have a title!' => '',
      'Comment (internal)' => 'Kommentar (intern)',
      'Filename' => 'Filnamn',
      'Title' => '',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQArticleViewSmall

    # Template: FAQCategoryForm
      'FAQ Category' => 'FAQ Kategori',
      'Name is required!' => '',

    # Template: FAQLanguageForm
      'FAQ Language' => 'FAQ Spr�k',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: Footer
      'Top of Page' => 'B�rjan av sidan',

    # Template: FooterSmall

    # Template: InstallerBody
      'Create Database' => 'Skapa databas',
      'Drop Database' => 'Radera databas',
      'Finished' => 'Klar',
      'System Settings' => 'Systeminst�llningar',
      'Web-Installer' => 'Web-installation',

    # Template: InstallerFinish
      'Admin-User' => 'Admin-anv�ndare',
      'After doing so your OTRS is up and running.' => 'Efter detta �r OTRS ig�ng.',
      'Have a lot of fun!' => 'Ha det s� roligt!',
      'Restart your webserver' => 'Starta om din webserver',
      'Start page' => 'Startsida',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'F�r att kunna anv�nda OTRS, m�ste f�ljende rad skrivas p� kommandoraden som root.',
      'Your OTRS Team' => 'Ditt OTRS-Team',

    # Template: InstallerLicense
      'accept license' => 'godk�nn licens',
      'don\'t accept license' => 'godk�nn inte licens',
      'License' => 'Licens',

    # Template: InstallerStart
      'Create new database' => 'Skapa ny databas',
      'DB Admin Password' => 'DB Adminl�senord',
      'DB Admin User' => 'DB Adminanv�ndare',
      'DB Host' => 'DB host',
      'DB Type' => 'DB typ',
      'default \'hot\'' => 'default \'hot\'',
      'Delete old database' => 'Radera gammal databas',
      'next step' => 'n�sta steg',
      'OTRS DB connect host' => 'OTRS DB connect host',
      'OTRS DB Name' => 'OTRS DB namn',
      'OTRS DB Password' => 'OTRS DB l�senord',
      'OTRS DB User' => 'OTRS DB anv�ndare',
      'your MySQL DB should have a root password! Default is empty!' => 'Din MySQL-databas b�r ha ett root-l�senord satt!  Default �r inget l�senord!',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kontrollerar mx-uppslag f�r uppgivna emailadresser i meddelanden som skrivs.  Anv�nd inte CheckMXRecord om din OTRS-maskin �r bakom en uppringd lina!)',
      '(Email of the system admin)' => '(Email till systemadmin)',
      '(Full qualified domain name of your system)' => '(Fullt kvalificerat dns-namn f�r ditt system)',
      '(Logfile just needed for File-LogModule!)' => '(Logfile beh�vs enbart f�r File-LogModule!)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Unik id f�r detta system.  Alla ticketnummer och http-sesssionsid b�rjar med denna id)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Ticket-identifierare, t.ex. \'Ticket#\', \'Call#\' eller \'MyTicket#\')',
      '(Used default language)' => '(Valt standardspr�k)',
      '(Used log backend)' => '(Valt logg-backend)',
      '(Used ticket number format)' => '(Valt format f�r ticketnummer)',
      'CheckMXRecord' => '',
      'Default Charset' => 'Standard teckenupps�ttning',
      'Default Language' => 'Standardspr�k',
      'Logfile' => 'Logfil',
      'LogModule' => '',
      'Organization' => 'Organisation',
      'System FQDN' => '',
      'SystemID' => '',
      'Ticket Hook' => '',
      'Ticket Number Generator' => 'Ticket-nummergenerator',
      'Use utf-8 it your database supports it!' => 'Anv�nd utf-8 ifall din databas st�djer det!',
      'Webfrontend' => 'Web-gr�nssnitt',

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Ingen �tkomst',

    # Template: Notify

    # Template: PrintFooter
      'URL' => '',

    # Template: QueueView
      'All tickets' => 'Alla tickets',
      'Page' => 'Sida',
      'Queues' => 'K�er',
      'Tickets available' => 'Tillg�ngliga tickets',
      'Tickets shown' => 'Tickets som visas',

    # Template: SystemStats

    # Template: Test
      'OTRS Test Page' => 'OTRS Test-sida',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Ticket-upptrappning!',

    # Template: TicketView

    # Template: TicketViewLite

    # Template: Warning

    # Template: css
      'Home' => 'Hem',

    # Template: customer-css
      'Contact' => 'Kontakt',
      'Online-Support' => 'Online-support',
      'Products' => 'Produkter',
      'Support' => 'Support',

    # Misc
      '"}","15' => '',
      '"}","30' => '',
      'Add auto response' => 'L�gg till autosvar',
      'Addressbook' => 'Adressbok',
      'AgentFrontend' => 'Agent-gr�nssnitt',
      'Article free text' => 'Artikel-fritext',
      'BackendMessage' => 'Backend-meddelande',
      'Bottom of Page' => 'Slutet av sidan',
      'Change Response <-> Attachment settings' => '�ndra Svar <-> Inst�llningar f�r bifogade dokument',
      'Change answer <-> queue settings' => '�ndra var <-> K�inst�llningar',
      'Change auto response settings' => '�ndra autosvar-inst�llningar',
      'Charset' => 'Teckenupps�ttning',
      'Charsets' => 'Teckenupps�ttningar',
      'Closed' => 'L�st',
      'Create' => 'Skapa',
      'Customer called' => 'Kundeuppringning',
      'Customer user will be needed to to login via customer panels.' => 'Kundanv�ndare m�ste logga in via kundsidorna.',
      'FAQ State' => 'FAQ Status',
      'Graphs' => 'Grafer',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Ifall detta �r ett betrott konto anv�nds X-OTRS Header!',
      'Lock Ticket' => 'L�s ticket',
      'Max Rows' => 'Max rader',
      'My Tickets' => 'Mina tickets',
      'New ticket via call.' => 'Ny ticket via samtal.',
      'New user' => 'Ny anv�ndare',
      'Pending!' => 'V�ntar!',
      'Phone call at %s' => 'Telefonsamtal %s',
      'Please go away!' => 'Systemet anser att du inte �r auktoriserad att utf�ra �tg�rden du fors�ker g�ra.  Ta kontakt med administrat�ren om du anser att detta inte st�mmer.',
      'PostMasterFilter Management' => '',
      'Search in' => 'S�k i',
      'Select source:' => 'V�lj k�lla',
      'Select your custom queues' => 'V�lj dina egna K�er ("PersonalQueue")',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Skicka mig ett meddelande ifall en ticket flyttas �ver till en av mina utvalda k�er.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Skicka mig ett meddelande ifall det kommer ett nytt meddelande till mina utvalda k�er.',
      'SessionID' => '',
      'Short Description' => 'Kort beskrivning',
      'Show all' => 'Visa alla',
      'Shown Tickets' => 'Tickets som visas',
      'System Charset Management' => 'Hantering av systemets teckenupps�ttning',
      'Ticket-Overview' => 'Ticket-�versikt',
      'Time till escalation' => 'Tid till upptrappning',
      'Utilities' => 'Verktyg',
      'With Priority' => 'Med prioritet',
      'With State' => 'Med status',
      'by' => 'av',
      'invalid-temporarily' => 'tempor�rt ogiltig',
      'search' => 's�k',
      'store' => 'lagra',
      'tickets' => 'tickets',
      'valid' => 'giltig',
    );

    # $$STOP$$
    $Self->{Translation} = \%Hash;
}
# --
1;

