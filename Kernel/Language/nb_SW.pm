# -- 
# Kernel/Language/nb_SW.pm - Swedish language translation
# Copyright (C) 2004 Mats Eric Olausson <mats@synergy.se>
# --
# $Id: nb_SW.pm,v 1.1 2004-05-30 16:48:11 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::nb_SW.pm;

use strict;

use vars qw($VERSION);
$VERSION = q$Revision: 1.1 $;
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Fri May 21 19:28:37 2004 by Mats Eric Olausson

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
      '10 minutes' => '10 minuter',
      '15 minutes' => '15 minuter',
      'AddLink' => 'L�gg till l�nk',
      'Admin-Area' => 'Admin-omr�de',
      'agent' => 'agent',
      'Agent-Area' => 'Agent-omr�de',
      'all' => 'alla',
      'All' => 'Alla',
      'Attention' => 'OBS',
      'before' => 'f�re',
      'Bug Report' => 'Rapportera fel',
      'Cancel' => 'Avbryt',
      'change' => '�ndra',
      'Change' => '�ndra',
      'change!' => '�ndra!',
      'click here' => 'klicka h�r',
      'Comment' => 'Kommentar',
      'Customer' => 'Kund',
      'customer' => 'kund',
      'Customer Info' => 'Kundinfo',
      'day' => 'dag',
      'day(s)' => 'dag(ar)',
      'days' => 'dagar',
      'description' => 'beskrivning',
      'Description' => 'Beskrivning',
      'Dispatching by email To: field.' => 'Skickar iv�g enligt epostmeddelandets Till:-f�lt.',
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
      'No' => 'Nej',
      'no' => 'inga',
      'No entry found!' => 'Ingen inmatning funnen!',
      'No suggestions' => 'Inga f�rslag',
      'none' => 'inga',
      'none - answered' => 'inga - besvarat',
      'none!' => 'inga!',
      'Normal' => 'Normal',
      'Off' => 'Av',
      'off' => 'av',
      'On' => 'P�',
      'on' => 'p�',
      'Password' => 'L�senord',
      'Pending till' => 'V�ntande tills',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'V�nligen besvara denna/dessa tickets f�r att komma tillbaka till den normala k�-visningsbilden!',
      'Please contact your admin' => 'V�nligen kontakta administrat�ren',
      'please do not edit!' => 'Var v�nlig och �ndra inte detta!',
      'Please go away!' => 'Systemet anser att du inte �r auktoriserad att utf�ra �tg�rden du fors�ker g�ra.  Ta kontakt med administrat�ren om du anser att detta inte st�mmer.',
      'possible' => 'm�jlig',
      'Preview' => 'Forhandsvisning',
      'QueueView' => 'K�er',
      'reject' => 'Avvisas',
      'replace with' => 'Ers�tt med',
      'Reset' => 'Nollst�ll',
      'Salutation' => 'H�lsning',
      'Session has timed out. Please log in again.' => 'Sessionstiden har l�pt ut.  V�nligen logga p� igen.',
      'Show closed Tickets' => 'Visa l�sta tickets',
      'Signature' => 'Signatur',
      'Sorry' => 'Beklagar',
      'Stats' => 'Statistik',
      'Subfunction' => 'Underfunktion',
      'submit' => 'Skicka',
      'submit!' => 'Skicka!',
      'system' => 'System',
      'Take this User' => 'V�lj denna anv�ndare',
      'Text' => 'Text',
      'The recommended charset for your language is %s!' => 'Den rekommenderade teckenupps�ttningen f�r ditt spr�k �r %s!',
      'Theme' => 'Tema',
      'There is no account with that login name.' => 'Det finns inget konto med detta namn.',
      'Timeover' => 'Tids�vertr�delse',
      'To: (%s) replaced with database email!' => 'Till: (%s) ersatt med epost fr�n databas!',
      'top' => 'topp',
      'update' => 'uppdatera',
      'Update' => 'Uppdatera',
      'update!' => 'Uppdatera!',
      'User' => 'Anv�ndare',
      'Username' => 'Anv�ndarnamn',
      'Valid' => 'Giltigt',
      'Warning' => 'Varning',
      'week(s)' => 'vecka(or)',
      'Welcome to OTRS' => 'V�lkommen till OTRS',
      'Word' => 'Ord',
      'wrote' => 'skrev',
      'year(s)' => '�r',
      'yes' => 'ja',
      'Yes' => 'Ja',
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
      'Send me a notification if a ticket is moved into a custom queue.' => 'Skicka mig ett meddelande ifall en ticket flyttas �ver till en av mina utvalda k�er.',
      'Send me a notification if a ticket is unlocked by the system.' => 'Skicka mig ett meddelande ifall systemet tar bort l�set p� en ticket.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Skicka mig ett meddelande ifall det kommer ett nytt meddelande till mina utvalda k�er.',
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
      'unlock' => 'l�s upp',
      'Unlock' => 'L�s upp',
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
      'Add auto response' => 'L�gg till autosvar',
      'Auto Response From' => 'autosvar-avs�ndare',
      'Auto Response Management' => 'Autosvar-hantering',
      'Change auto response settings' => '�ndra autosvar-inst�llningar',
      'Note' => 'Notis',
      'Response' => 'Svar',
      'to get the first 20 character of the subject' => 'f�r att f� fram de f�rste 20 tecknen i �mnesbeskrivningen',
      'to get the first 5 lines of the email' => 'f�r att f� fram de f�rsta 5 raderna av emailen',
      'to get the from line of the email' => 'f�r att f� fram avs�ndarraden i emailen',
      'to get the realname of the sender (if given)' => 'f�r att f� fram avs�ndarens fulla namn (om m�jligt)',
      'to get the ticket id of the ticket' => 'f�r att f� fram intern ticket-id',
      'to get the ticket number of the ticket' => 'f�r att f� fram ticket-nummer',
      'Type' => 'Typ',
      'Useable options' => 'Anv�ndbara till�gg',

    # Template: AdminCustomerUserForm
      'Customer User Management' => 'Kundanv�ndare',
      'Customer user will be needed to to login via customer panels.' => 'Kundanv�ndare m�ste logga in via kundsidorna.',
      'Select source:' => 'V�lj k�lla',
      'Source' => 'K�lla',

    # Template: AdminCustomerUserGeneric

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

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Admin-email',
      'Body' => 'Meddelandetext',
      'OTRS-Admin Info!' => 'OTRS-Admin Info!',
      'Recipents' => 'Mottagare',
      'send' => 'Skicka',

    # Template: AdminEmailSent
      'Message sent to' => 'Meddelande skicakt till',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Skapa nya gruppr f�r att kunna handtera olika r�ttigheter f�r skilda gruppr av agenter (t.ex. ink�psavdelning, supportavdelning, f�rs�ljningsavdelning, ...).',
      'Group Management' => 'gruppr',
      'It\'s useful for ASP solutions.' => 'Nyttigt f�r ASP-l�sningar.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => '\'admin\'-gruppen ger tillg�ng till Admin-arean, \'stats\'-gruppen till Statistik-arean.',

    # Template: AdminLog
      'System Log' => 'Systemlogg',

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
      'PostMaster Filter' => '',
      'PostMaster POP3 Account' => 'Postmaster POP3-konto',
      'Responses' => 'Svar',
      'Responses <-> Queue' => 'Svar <-> K�',
      'Select Box' => 'SQL-access',
      'Session Management' => 'Sessionshantering',
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

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Inkommande email fr�n POP3-konton sorteras till vald k�!',
      'Dispatching' => 'F�rdelning',
      'Host' => 'Host',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Ifall detta �r ett betrott konto anv�nds X-OTRS Header!',
      'Login' => '',
      'POP3 Account Management' => 'Administration av POP3-Konto',
      'Trusted' => 'Betrodd',

    # Template: AdminPostMasterFilterForm
      'Match' => 'Tr�ff',
      'PostMasterFilter Management' => '',
      'Set' => 'Set',

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
      'Key' => 'Nyckel',
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
      'Change answer <-> queue settings' => '�ndra var <-> K�inst�llningar',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Hantering av standardsvar <-> Bifogade dokument',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => '�ndra Svar <-> Inst�llningar f�r bifogade dokument',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Ett svar er en standardtext f�r att underl�tta besvarandet av vanliga kundfr�gor.',
      'Don\'t forget to add a new response a queue!' => 'Kom ih�g att l�gga till ett nytt svar till en k�!',
      'Next state' => 'N�sta tillst�nd',
      'Response Management' => 'Hantera svar',
      'The current ticket state is' => 'Nuvarande ticket-status',

    # Template: AdminSalutationForm
      'customer realname' => 'Fullt kundnamn',
      'for agent firstname' => 'f�r agents f�rnamn',
      'for agent lastname' => 'f�r agents efternamn',
      'for agent login' => 'f�r agents login',
      'for agent user id' => 'f�r agents anv�ndar-id',
      'Salutation Management' => 'Hantering av H�lsningsfraser',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Max rader',

    # Template: AdminSelectBoxResult
      'Limit' => '',
      'Select Box Result' => 'Select Box Resultat',
      'SQL' => '',

    # Template: AdminSession
      'Agent' => '',
      'kill all sessions' => 'Terminera alla sessioner',
      'Overview' => '�versikt',
      'Sessions' => 'Sessioner',
      'Uniq' => '',

    # Template: AdminSessionTable
      'kill session' => 'Terminera session',
      'SessionID' => '',

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
      'create' => 'Skapa',
      'move_into' => 'Flytta till',
      'owner' => '�gare',
      'Permissions to change the ticket owner in this group/queue.' => 'R�tt att �ndra ticket-�gare i denna grupp/K�.',
      'Permissions to change the ticket priority in this group/queue.' => 'R�tt att �ndra prioritet i denna grupp/K�.',
      'Permissions to create tickets in this group/queue.' => 'R�tt att skapa tickets i denna grupp/K�.',
      'Permissions to move tickets into this group/queue.' => 'R�tt att flytta tickets i denna grupp/K�.',
      'priority' => 'prioritet',
      'User <-> Group Management' => 'Hantera anv�ndare <-> grupp',

    # Template: AdminUserGroupForm

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBook
      'Address Book' => 'Adressbok',
      'Discard all changes and return to the compose screen' => 'Bortse fr�n �ndringarna och st�ng f�nstret',
      'Return to the compose screen' => 'St�ng f�nstret',
      'Search' => 'S�k',
      'The message being composed has been closed.  Exiting.' => 'Det tilh�rande redigeringsf�nstret har st�ngts. Avslutar.',
      'This window must be called from compose window' => 'Denne funktion m�ste startas fr�n redigeringsf�nstret',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Ett meddelande m�ste ha en mottagare i Till:-f�ltet!',
      'Bounce ticket' => 'Skicka �ver ticket',
      'Bounce to' => 'Skicka �ver till',
      'Inform sender' => 'Informera avs�ndare',
      'Next ticket state' => 'N�sta ticketstatus',
      'Send mail!' => 'Skicka mail!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'I Till-f�ltet m�ste anges en giltig emailadress (t.ex. kund@exempeldomain.se)!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Emailen med ticketnummer "<OTRS_TICKET>" har skickats �ver till "<OTRS_BOUNCE_TO>". V�nligen kontakta denna adress f�r vidare h�nvisningar.',

    # Template: AgentClose
      ' (work units)' => ' (arbetsenheter)',
      'A message should have a body!' => 'Ett meddelande m�ste inneh�lla en meddelandetext!',
      'A message should have a subject!' => 'Ett meddelande m�ste ha en �mnesrad!',
      'Close ticket' => 'St�ng ticket',
      'Close type' => 'St�ngningstillst�nd',
      'Close!' => 'St�ng!',
      'Note Text' => 'Anteckingstext',
      'Note type' => 'Anteckningstyp',
      'Options' => 'Tillval',
      'Spell Check' => 'Stavningskontroll',
      'Time units' => 'Tidsenheter',
      'You need to account time!' => 'Du m�ste redovisa tiden!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'Stavningskontroll m�ste utf�ras p� alla meddelanden!',
      'Attach' => 'Bifoga',
      'Compose answer for ticket' => 'F�rfatta svar till ticket',
      'for pending* states' => 'f�r v�ntetillst�nd',
      'Is the ticket answered' => '�r ticketen besvarad',
      'Pending Date' => 'V�ntar till',

    # Template: AgentCustomer
      'Back' => 'Tilbaka',
      'Change customer of ticket' => '�ndra kund f�r ticket',
      'CustomerID' => 'Organisations-ID',
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
      'Clear From' => 'Nolst�ll Fr�n:',
      'Compose Email' => 'Skriv email',
      'Lock Ticket' => 'L�s ticket',
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
      'Value' => 'Inneh�ll',

    # Template: AgentHistoryForm
      'History of' => 'Historik f�r',

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

    # Template: AgentMove
      'Move Ticket' => 'Flytta ticket',
      'New Owner' => 'Ny �gare',
      'New Queue' => 'Ny K�',
      'Previous Owner' => 'Tidigare �gare',
      'Queue ID' => 'K�-id',

    # Template: AgentNavigationBar
      'Locked tickets' => 'L�sta tickets',
      'new message' => 'Nytt meddelande',
      'Preferences' => 'Inst�llningar',
      'Utilities' => 'Verktyg',

    # Template: AgentNote
      'Add note to ticket' => 'L�gg till anteckning till ticket',
      'Note!' => 'Observera!',

    # Template: AgentOwner
      'Change owner of ticket' => '�ndra �gare av ticket',
      'Message for new Owner' => 'Meddelande till ny �gare',

    # Template: AgentPending
      'Pending date' => 'V�ntande datum',
      'Pending type' => 'V�ntande typ',
      'Pending!' => 'V�ntar!',
      'Set Pending' => 'Markera som v�ntande',

    # Template: AgentPhone
      'Customer called' => 'Kundeuppringning',
      'Phone call' => 'Telefonsamtal',
      'Phone call at %s' => 'Telefonsamtal %s',

    # Template: AgentPhoneNew

    # Template: AgentPlain
      'ArticleID' => '',
      'Plain' => 'Enkel',
      'TicketID' => '',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'V�lj dina egna K�er ("PersonalQueue")',

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

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLink
      'Link' => 'L�nk',
      'Link to' => 'L�nk till',

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket l�st',
      'Ticket unlock!' => 'Ticket uppl�st',

    # Template: AgentTicketPrint
      'by' => 'av',

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Redovisad tid',
      'Escalation in' => 'Upptrappning om',

    # Template: AgentUtilSearch
      '(e. g. 10*5155 or 105658*)' => 't.ex. 10*5144 eller 105658*',
      '(e. g. 234321)' => 't.ex. 234321',
      '(e. g. U5150)' => 't.ex. U5150',
      'and' => 'og',
      'Customer User Login' => 'kundanv�ndare loginnamn',
      'Delete' => 'Radera',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Fritexts�k i artiklar (t.ex. "Mar*in" eller "Baue*")',
      'No time settings.' => 'Inga tidsinst�llningar.',
      'Profile' => 'Profil',
      'Result Form' => 'Resultatbild',
      'Save Search-Profile as Template?' => 'Spara s�kkriterier som mall?',
      'Search-Template' => 'S�kmall',
      'Select' => 'V�lj',
      'Ticket created' => 'Ticket skapad',
      'Ticket created between' => 'Ticket skapat mellan',
      'Ticket Search' => 'Ticket-s�k',
      'TicketFreeText' => '',
      'Times' => 'Tider',
      'Yes, save it with name' => 'Ja, spara med namn',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Kundhistorik',
      'Customer history search (e. g. "ID342425").' => 'S�k efter kundhistorik (t.ex. "ID342425").',
      'No * possible!' => 'Wildcards * inte till�tna!',

    # Template: AgentUtilSearchNavBar
      'Change search options' => '�ndra s�kinst�llningar',
      'Results' => 'Resultat',
      'Search Result' => 'S�keresultat',
      'Total hits' => 'Totalt hittade',

    # Template: AgentUtilSearchResult
      '"}","15' => '',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultPrintTable
      '"}","30' => '',

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilSearchResultShortTable

    # Template: AgentUtilSearchResultShortTableNotAnswered

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
      'Free Fields' => 'Lediga f�lt',
      'Print' => 'Skriv ut',

    # Template: AgentZoomStatus
      '"}","18' => '',

    # Template: CustomerCreateAccount
      'Create Account' => 'Skapa konto',

    # Template: CustomerError
      'Traceback' => '',

    # Template: CustomerFAQArticleHistory
      'Edit' => 'Redigera',
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

    # Template: CustomerHeader
      'Contact' => 'Kontakt',
      'Home' => 'Hem',
      'Online-Support' => 'Online-support',
      'Products' => 'Produkter',
      'Support' => 'Support',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Gl�mt l�senordet?',
      'Request new password' => 'Be om nytt l�senord',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => 'Skapat ny ticket',
      'FAQ' => 'FAQ',
      'New Ticket' => 'Ny ticket',
      'Ticket-Overview' => 'Ticket-�versikt',
      'Welcome %s' => 'V�lkommen %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView
      'My Tickets' => 'Mina tickets',

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Klicka h�r f�r att rapportera ett fel!',

    # Template: FAQArticleDelete
      'FAQ Delete' => 'Radera FAQ',
      'You really want to delete this article?' => 'Vill du verkligen radera denna artikel?',

    # Template: FAQArticleForm
      'Comment (internal)' => 'Kommentar (intern)',
      'Filename' => 'Filnamn',
      'Short Description' => 'Kort beskrivning',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQCategoryForm
      'FAQ Category' => 'FAQ Kategori',

    # Template: FAQLanguageForm
      'FAQ Language' => 'FAQ Spr�k',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: FAQStateForm
      'FAQ State' => 'FAQ Status',

    # Template: Footer
      'Top of Page' => 'B�rjan av sidan',

    # Template: Header

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

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Ingen �tkomst',

    # Template: Notify
      'Info' => '',

    # Template: PrintFooter
      'URL' => '',

    # Template: PrintHeader
      'printed by' => 'utskrivet av',

    # Template: QueueView
      'All tickets' => 'Alla tickets',
      'Page' => 'Sida',
      'Queues' => 'K�er',
      'Tickets available' => 'Tillg�ngliga tickets',
      'Tickets shown' => 'Tickets som visas',

    # Template: SystemStats
      'Graphs' => 'Grafer',

    # Template: Test
      'OTRS Test Page' => 'OTRS Test-sida',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Ticket-upptrappning!',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => 'L�gg till anteckning',

    # Template: Warning

    # Misc
      'Addressbook' => 'Adressbok',
      'AgentFrontend' => 'Agent-gr�nssnitt',
      'Article free text' => 'Artikel-fritext',
      'BackendMessage' => 'Backend-meddelande',
      'Bottom of Page' => 'Slutet av sidan',
      'Charset' => 'Teckenupps�ttning',
      'Charsets' => 'Teckenupps�ttningar',
      'Closed' => 'L�st',
      'Create' => 'Skapa',
      'CustomerUser' => 'Kundanv�ndare',
      'New ticket via call.' => 'Ny ticket via samtal.',
      'New user' => 'Ny anv�ndare',
      'Search in' => 'S�k i',
      'Show all' => 'Visa alla',
      'Shown Tickets' => 'Tickets som visas',
      'System Charset Management' => 'Hantering av systemets teckenupps�ttning',
      'Time till escalation' => 'Tid till upptrappning',
      'With Priority' => 'Med prioritet',
      'With State' => 'Med status',
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

