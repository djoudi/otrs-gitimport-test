# --
# Kernel/Language/pl.pm - provides pl language translation
# Copyright (C) 2001-2006 OTRS GmbH, http://otrs.org/
# Translated by Tomasz Melissa <janek at rumianek.com>
# --
# $Id: pl.pm,v 1.31 2006-10-05 04:23:55 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Language::pl;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.31 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Oct  5 06:04:49 2006

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateFormatShort} = '%D.%M.%Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => 'Tak',
      'No' => 'Nie',
      'yes' => 'tak',
      'no' => 'nie',
      'Off' => 'Wy��czone',
      'off' => 'wy��czone',
      'On' => 'W��czone',
      'on' => 'w��czone',
      'top' => 'g�ra',
      'end' => 'koniec',
      'Done' => 'Zrobione',
      'Cancel' => 'Anuluj',
      'Reset' => 'Resetuj',
      'last' => 'ostatnie',
      'before' => 'przedtem',
      'day' => 'dzie�',
      'days' => 'dni',
      'day(s)' => 'dzie�(dni)',
      'hour' => 'godzina',
      'hours' => 'godz.',
      'hour(s)' => '',
      'minute' => 'minuta',
      'minutes' => 'min.',
      'minute(s)' => '',
      'month' => '',
      'months' => '',
      'month(s)' => 'miesi�c(-cy)',
      'week' => '',
      'week(s)' => 'tydzie�(tygodnie)',
      'year' => '',
      'years' => '',
      'year(s)' => 'rok(lat)',
      'second(s)' => '',
      'seconds' => '',
      'second' => '',
      'wrote' => 'napisa�',
      'Message' => 'Wiadomo��',
      'Error' => 'B��d',
      'Bug Report' => 'Zg�o� b��d',
      'Attention' => 'Uwaga',
      'Warning' => 'Ostrze�enie',
      'Module' => 'Modu�',
      'Modulefile' => 'Plik Modu�u',
      'Subfunction' => 'Funkcja podrz�dna',
      'Line' => 'Linia',
      'Example' => 'Przyk�ad',
      'Examples' => 'Przyk�ady',
      'valid' => 'poprawne',
      'invalid' => 'Niepoprawne',
      'invalid-temporarily' => '',
      ' 2 minutes' => ' 2 Minuty',
      ' 5 minutes' => ' 5 Minut',
      ' 7 minutes' => ' 7 Minut',
      '10 minutes' => '10 Minut',
      '15 minutes' => '15 Minut',
      'Mr.' => '',
      'Mrs.' => '',
      'Next' => '',
      'Back' => 'Powr�t',
      'Next...' => '',
      '...Back' => '',
      '-none-' => '',
      'none' => 'brak danych',
      'none!' => 'brak!',
      'none - answered' => 'brak - odpowiedziane',
      'please do not edit!' => 'nie edytowa�!',
      'AddLink' => 'Dodaj link',
      'Link' => '',
      'Linked' => '',
      'Link (Normal)' => '',
      'Link (Parent)' => '',
      'Link (Child)' => '',
      'Normal' => 'Normalne',
      'Parent' => '',
      'Child' => '',
      'Hit' => 'Ods�ona',
      'Hits' => 'Ods�on',
      'Text' => 'Tre��',
      'Lite' => 'Lekkie',
      'User' => 'U�ytkownik',
      'Username' => 'Nazwa u�ytkownika',
      'Language' => 'J�zyk',
      'Languages' => 'J�zyki',
      'Password' => 'Has�o',
      'Salutation' => 'Zwrot grzeczno�ciowy',
      'Signature' => 'Podpis',
      'Customer' => 'Klient',
      'CustomerID' => 'ID klienta',
      'CustomerIDs' => '',
      'customer' => 'klient',
      'agent' => '',
      'system' => 'System',
      'Customer Info' => 'Informacja o kliencie',
      'go!' => 'Start!',
      'go' => 'Start',
      'All' => 'Wszystkie',
      'all' => 'wszystkie',
      'Sorry' => 'Przykro mi',
      'update!' => 'uaktualnij!',
      'update' => 'uaktualnij',
      'Update' => 'Uaktualnij',
      'submit!' => 'akceptuj!',
      'submit' => 'akceptuj',
      'Submit' => '',
      'change!' => 'Zmie�!',
      'Change' => 'Zmie�',
      'change' => 'zmie�',
      'click here' => 'kliknij tutaj',
      'Comment' => 'Komentarz',
      'Valid' => 'Zastosowanie',
      'Invalid Option!' => '',
      'Invalid time!' => '',
      'Invalid date!' => '',
      'Name' => 'Nazwa',
      'Group' => 'Grupa',
      'Description' => 'Opis',
      'description' => 'opis',
      'Theme' => 'Schemat',
      'Created' => 'Utworzone',
      'Created by' => '',
      'Changed' => '',
      'Changed by' => '',
      'Search' => 'Szukaj',
      'and' => 'i',
      'between' => '',
      'Fulltext Search' => '',
      'Data' => '',
      'Options' => 'Opcje',
      'Title' => '',
      'Item' => '',
      'Delete' => 'Kasuj',
      'Edit' => 'Edytuj',
      'View' => 'Widok',
      'Number' => '',
      'System' => '',
      'Contact' => 'Kontakt',
      'Contacts' => '',
      'Export' => '',
      'Up' => '',
      'Down' => '',
      'Add' => 'Dodaj',
      'Category' => 'Kategoria',
      'Viewer' => '',
      'New message' => 'Nowa wiadomo��',
      'New message!' => 'Nowa wiadomo��!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Prosz� odpowiedz na to zg�oszenie, by m�c powroci� do zwyk�ego widoku kolejki zg�osze�!',
      'You got new message!' => 'Masz now� wiadomo��!',
      'You have %s new message(s)!' => 'Masz %s nowych wiadomo�ci!',
      'You have %s reminder ticket(s)!' => 'Masz %s przypomnie� o zg�oszeniach!',
      'The recommended charset for your language is %s!' => 'Sugerowane kodowanie dla Twojego j�zyka to %s!',
      'Passwords doesn\'t match! Please try it again!' => '',
      'Password is already in use! Please use an other password!' => '',
      'Password is already used! Please use an other password!' => '',
      'You need to activate %s first to use it!' => '',
      'No suggestions' => 'Brak podpowiedzi',
      'Word' => 'S�owo',
      'Ignore' => 'Ignoruj',
      'replace with' => 'zamie� z',
      'Welcome to OTRS' => '',
      'There is no account with that login name.' => 'Nie istnieje konto z takim loginem.',
      'Login failed! Your username or password was entered incorrectly.' => 'Logowanie niepoprawne! Tw�j u�ytkownik lub has�o zosta�y wpisane niepoprawnie.',
      'Please contact your admin' => 'Skontaktuj si� z Administratorem',
      'Logout successful. Thank you for using OTRS!' => 'Wylogowanie zako�czone! Dzi�kujemy za u�ywanie OTRS!',
      'Invalid SessionID!' => 'Niepoprawne ID Sesji!',
      'Feature not active!' => 'Funkcja nie aktywna!',
      'License' => 'Licencja',
      'Take this Customer' => '',
      'Take this User' => 'U�yj tego u�ytkownika',
      'possible' => 'mo�liwe',
      'reject' => 'odrzu�',
      'reverse' => '',
      'Facility' => 'U�atwienie',
      'Timeover' => '',
      'Pending till' => 'Oczekuje do',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Nie u�ywaj u�ytkownika z UserID 1 (Konto systemowe)! Stw�rz nowych u�ytkownik�w!',
      'Dispatching by email To: field.' => 'Przekazywanie na podstawie pola DO:',
      'Dispatching by selected Queue.' => 'Przekazywanie na podstawie zaznaczonej kolejki.',
      'No entry found!' => 'Nic nie odnaleziono!',
      'Session has timed out. Please log in again.' => 'Sesja wygas�a. Zaloguj si� ponownie',
      'No Permission!' => '',
      'To: (%s) replaced with database email!' => 'DO: (%s) zamienione z adresem email z bazy danych',
      'Cc: (%s) added database email!' => '',
      '(Click here to add)' => '(By doda� kliknij tutaj)',
      'Preview' => 'Podgl�d',
      'Package not correctly deployed! You should reinstall the Package again!' => '',
      'Added User "%s"' => '',
      'Contract' => '',
      'Online Customer: %s' => '',
      'Online Agent: %s' => '',
      'Calendar' => '',
      'File' => '',
      'Filename' => 'Nazwa pliku',
      'Type' => 'Typ',
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
      'Jan' => 'Sty',
      'Feb' => 'Lut',
      'Mar' => '',
      'Apr' => 'Kwi',
      'May' => 'Maj',
      'Jun' => 'Cze',
      'Jul' => 'Lip',
      'Aug' => 'Sie',
      'Sep' => 'Wrz',
      'Oct' => 'Pa�',
      'Nov' => 'Lis',
      'Dec' => 'Gru',
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
      'Admin-Area' => 'Administracja',
      'Agent-Area' => 'Obs�uga',
      'Ticket-Area' => '',
      'Logout' => 'Wyloguj',
      'Agent Preferences' => '',
      'Preferences' => 'Ustawienia',
      'Agent Mailbox' => '',
      'Stats' => 'Statystyki',
      'Stats-Area' => '',
      'New Article' => 'Nowy artyku�',
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
      'Preferences updated successfully!' => 'Ustawienia zapisano pomy�lnie!',
      'Mail Management' => 'Zarz�dzanie poczt�',
      'Frontend' => 'Interfejs',
      'Other Options' => 'Inne opcje',
      'Change Password' => '',
      'New password' => '',
      'New password again' => '',
      'Select your QueueView refresh time.' => 'Wybierz okres od�wierzania Podgl�du Kolejki.',
      'Select your frontend language.' => 'Wybierz j�zyk.',
      'Select your frontend Charset.' => 'Wybierz kodowanie.',
      'Select your frontend Theme.' => 'Wybierz schemat wygl�du systemu.',
      'Select your frontend QueueView.' => 'Wybierz Podgl�d Kolejki.',
      'Spelling Dictionary' => 'S�ownik pisowni',
      'Select your default spelling dictionary.' => 'Wybierz domy�lny s�ownik.',
      'Max. shown Tickets a page in Overview.' => 'Limit pokazywanych zg�osze� na stronie Podsumowania',
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
      'Lock' => 'Zablokowane',
      'Unlock' => 'Odblokuj',
      'History' => 'Historia',
      'Zoom' => 'Podgl�d',
      'Age' => 'Wiek',
      'Bounce' => 'Odbij',
      'Forward' => 'Prze�lij dalej',
      'From' => 'Od',
      'To' => 'Do',
      'Cc' => '',
      'Bcc' => '',
      'Subject' => 'Temat',
      'Move' => 'Przesu�',
      'Queue' => 'Kolejka',
      'Priority' => 'Priorytet',
      'State' => 'Status',
      'Compose' => 'Stw�rz',
      'Pending' => 'Oczekuj�ce',
      'Owner' => 'W�a�ciciel',
      'Owner Update' => '',
      'Responsible' => '',
      'Responsible Update' => '',
      'Sender' => 'Nadawca',
      'Article' => 'Artyku�',
      'Ticket' => 'Zg�oszenie',
      'Createtime' => 'Utworzone o',
      'plain' => 'bez formatowania',
      'Email' => 'E-Mail',
      'email' => 'e-mail',
      'Close' => 'Zamknij',
      'Action' => 'Akcja',
      'Attachment' => 'Za��cznik',
      'Attachments' => 'Za��czniki',
      'This message was written in a character set other than your own.' => 'Ta wiadomo�� zosta�a napisana z u�yciem kodowania znak�w innego ni� Tw�j.',
      'If it is not displayed correctly,' => 'Je�li nie jest wy�wietlane poprawnie,',
      'This is a' => 'To jest',
      'to open it in a new window.' => 'by otworzy� w oddzielnym oknie',
      'This is a HTML email. Click here to show it.' => 'To jest e-mail w formacie HTML. Kliknij tutaj, by go przeczyta�.',
      'Free Fields' => '',
      'Merge' => '',
      'closed successful' => 'zamkni�te z powodzeniem',
      'closed unsuccessful' => 'zamkni�te bez powodzenia',
      'new' => 'nowe',
      'open' => 'otwarte',
      'closed' => '',
      'removed' => 'usuni�te',
      'pending reminder' => 'oczekuj�ce przypomnienie',
      'pending auto close+' => 'oczekuj�ce na automatyczne zamkni�cie+',
      'pending auto close-' => 'oczekuj�ce na automatyczne zamkni�cie-',
      'email-external' => 'e-mail zewn�trzny',
      'email-internal' => 'e-mail wewn�trzny',
      'note-external' => 'Notatka zewn�trzna',
      'note-internal' => 'Notatka wewn�trzna',
      'note-report' => 'Notatka raportujaca',
      'phone' => 'telefon',
      'sms' => 'SMS',
      'webrequest' => 'zg�oszenie z WWW',
      'lock' => 'zablokowane',
      'unlock' => 'odblokuj',
      'very low' => 'bardzo niski',
      'low' => 'niski',
      'normal' => 'normalny',
      'high' => 'wysoki',
      'very high' => 'bardzo wysoki',
      '1 very low' => '1 bardzo niski',
      '2 low' => '2 niski',
      '3 normal' => '3 normalny',
      '4 high' => '4 wysoki',
      '5 very high' => '5 bardzo wysoki',
      'Ticket "%s" created!' => 'Zg�oszenie "%s" utworzone!',
      'Ticket Number' => '',
      'Ticket Object' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'Don\'t show closed Tickets' => 'Nie pokazuj zamkni�tych zg�osze�',
      'Show closed Tickets' => 'Poka� zamkni�te zg�oszenia',
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
      'New ticket notification' => 'Powiadomienie o nowym zg�oszeniu',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Follow up notification' => 'Powiadomienie o odpowiedzi',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Wy�lij mi wiadomo��, gdy klient odpowie na zg�oszenie, kt�rego ja jestem w�a�cicielem.',
      'Ticket lock timeout notification' => 'Powiadomienie o przekroczonym czasie blokady zg�oszenia',
      'Send me a notification if a ticket is unlocked by the system.' => 'Wy�lij mi wiadomo��, gdy zg�oszenie zostanie odblokowane przez system.',
      'Move notification' => 'Powiadomienie o przesuni�ciu',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => '',
      'Custom Queue' => 'Kolejka modyfikowana',
      'QueueView refresh time' => 'Okres od�wierzania Podgl�du Kolejki',
      'Screen after new ticket' => 'Ekran po nowym zg�oszeniu',
      'Select your screen after creating a new ticket.' => 'Wybierz ekran, kt�ry poka�e si� po rejestracji nowego zg�oszenia',
      'Closed Tickets' => 'Zamkni�te zg�oszenia',
      'Show closed tickets.' => 'Poka� zamkni�te zg�oszenia.',
      'Max. shown Tickets a page in QueueView.' => 'Limit pokazywanych zg�osze� na stronie Podgl�du Kolejki',
      'CompanyTickets' => '',
      'MyTickets' => '',
      'New Ticket' => '',
      'Create new Ticket' => '',
      'Customer called' => '',
      'phone call' => '',
      'Responses' => 'Odpowiedzi',
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
      'Sun' => 'Ndz',
      'Mon' => 'Pnd',
      'Tue' => 'Wtr',
      'Wed' => '�rd',
      'Thu' => 'Czw',
      'Fri' => 'Ptk',
      'Sat' => 'Sob',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Konfiguracja za��cznik�w',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Konfiguracja automatycznych odpowiedzi',
      'Response' => 'Odpowied�',
      'Auto Response From' => 'Automatyczna odpowied� Od',
      'Note' => 'Uwagi',
      'Useable options' => 'U�yteczne opcje',
      'to get the first 20 character of the subject' => 'by wstawi� pierwsze 20 znak�w tematu',
      'to get the first 5 lines of the email' => 'by wstawi� 5 pierwszych linii wiadomo�ci',
      'to get the from line of the email' => 'by wstawi� pole Od wiadomo�ci',
      'to get the realname of the sender (if given)' => 'by wstawi� prawdziwe imi� i nazwisko klienta (je�li podano)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Opcje konfiguracyjne (np. &lt;OTRS_CONFIG_HttpType&gt;)',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'Wiadomo�� edytowana zosta�a zamkni�ta.  Wychodz�.',
      'This window must be called from compose window' => 'To okno musi zosta� wywo�ane z okna edycji',
      'Customer User Management' => 'Konfiguracja u�ytkownik�w',
      'Search for' => '',
      'Result' => '',
      'Select Source (for add)' => '',
      'Source' => '�r�d�o',
      'This values are read only.' => '',
      'This values are required.' => '',
      'Customer user will be needed to have a customer history and to login via customer panel.' => '',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => '',
      'Change %s settings' => 'Zmie� %s ustawienia',
      'Select the user:group permissions.' => 'Wybierz prawa dost�pu dla u�ytkownika:grupy',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Je�li nic nie zaznaczono, wtedy u�ytkownik nie b�dzie mia� praw w tej grupie (zg�oszenia b�d� niedost�pne)',
      'Permission' => 'Prawo dost�pu',
      'ro' => '',
      'Read only access to the ticket in this group/queue.' => 'Prawo jedynie do odczytu zg�osze� w tej grupie/kolejce',
      'rw' => '',
      'Full read and write access to the tickets in this group/queue.' => 'Prawa pe�nego odczytu i zapisu zg�osze� w tej grupie/kolejce',

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => 'Wiadomo�� wys�ana do',
      'Recipents' => 'Adresaci',
      'Body' => 'Tre��',
      'send' => 'wy�lij',

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
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Przeszukiwanie pe�notekstowe w artykule (np. "Ja*k" lub "Rumia*)',
      '(e. g. 10*5155 or 105658*)' => '(np. 10*5155 lub 105658*)',
      '(e. g. 234321)' => '(np. 3242442)',
      'Customer User Login' => 'Login Klienta',
      '(e. g. U5150)' => '(np. U4543)',
      'Agent' => '',
      'Ticket Lock' => '',
      'TicketFreeFields' => '',
      'Times' => 'Razy',
      'No time settings.' => 'Brak ustawie� czasu',
      'Ticket created' => 'Zg�oszenie utworzone',
      'Ticket created between' => 'Zg�oszenie utworzone mi�dzy',
      'New Priority' => '',
      'New Queue' => 'Nowa kolejka',
      'New State' => '',
      'New Agent' => '',
      'New Owner' => 'Nowy w�a�ciciel',
      'New Customer' => '',
      'New Ticket Lock' => '',
      'CustomerUser' => 'Klient',
      'New TicketFreeFields' => '',
      'Add Note' => 'Dodaj notatk�',
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
      'Group Management' => 'Zarz�dzanie grupami',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Grupa Admin pozwala posiada prawa Administracji systemem. Grupa Stats umo�liwia przegl�danie statystyk zg�osze�.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Stw�rz nowe grupy, by m�c efektywniej zarz�dza� dost�pem do zg�osze� r�nych grup u�ytkownikow (np. Serwisu, Sprzeda�y itp...).',
      'It\'s useful for ASP solutions.' => 'Pomocne w rozwi�zanich ASP.',

      # Template: AdminLog
      'System Log' => 'Log Systemu',
      'Time' => '',

      # Template: AdminNavigationBar
      'Users' => '',
      'Groups' => 'Grupy',
      'Misc' => 'R�ne',

      # Template: AdminNotificationForm
      'Notification Management' => 'Konfiguracja Powiadomie�',
      'Notification' => '',
      'Notifications are sent to an agent or a customer.' => 'Powiadomienia s� wysy�ane do agenta obs�ugi lub klienta',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Opcje dotycz�ce w�a�ciciela zg�oszenia (np. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Opcje aktualnego agenta obs�ugi (np. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Opcje aktualnego klienta (np. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

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
      'Package not correctly deployed, you need to deploy it again!' => '',
      'Overview' => 'Podsumowanie',
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
      'Key' => 'Klucz',
      'Fingerprint' => '',
      'Expires' => '',
      'In this way you can directly edit the keyring configured in SysConfig.' => '',

      # Template: AdminPOP3
      'POP3 Account Management' => 'Konfiguracja kont POP3',
      'Host' => '',
      'List' => '',
      'Trusted' => 'Zaufane',
      'Dispatching' => 'Przekazanie',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Wszystkie przychodz�ce na jedno konto wiadomo�ci b�d� umieszczone w zaznacznej kolejce!',
      'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => '',
      'Filtername' => '',
      'Match' => 'Odpowiada',
      'Header' => '',
      'Value' => 'Warto��',
      'Set' => 'Ustaw',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => '',

      # Template: AdminQueueForm
      'Queue Management' => 'Konfiguracja kolejek',
      'Sub-Queue of' => 'Kolejka podrz�dna',
      'Unlock timeout' => 'Limit czasowy odblokowania',
      '0 = no unlock' => '0 = bez odblokowania',
      'Escalation time' => 'Czas eskalacji',
      '0 = no escalation' => '0 = brak eskalacji',
      'Follow up Option' => 'Opcja Follow Up',
      'Ticket lock after a follow up' => 'Zg�oszenie zablokowane po odpowiedzi (Follow Up)',
      'Systemaddress' => 'Adres systemowy',
      'Customer Move Notify' => 'Powiadomienie klienta o przesuni�ciu',
      'Customer State Notify' => 'Powiadomienie klienta o zmianie statusu',
      'Customer Owner Notify' => 'Powiadomienie klienta o zmianie w�a�ciciela',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Je�li agent zablokuje zg�oszenie, a nast�pnie nie odpowie na nie w ci�gu wskazanego czasu, wtedy zg�oszenie zostanie automatycznie odblokowane. Dzi�ki temu pozostali agenci b�d� mogli je zobaczy�.',
      'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Je�li, w podanym czasie, nie zostanie udzielona odpowied� na zg�oszenie, wtedy tylko to zg�oszenie b�dzie widoczne w kolejce.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Je�li zg�oszenie by�o zamkni�te, a klient przy�le do niego kolejn� odpowied�, wtedy zg�oszenie zostanie zablokowane w kolejce starego w�a�ciciela.',
      'Will be the sender address of this queue for email answers.' => 'B�dzie adresem nadawcy odpowiedzi emailowych wysy�anych z tej kolejki.',
      'The salutation for email answers.' => 'Zwrot grzeczno�ciowy dla odpowiedzi emailowych.',
      'The signature for email answers.' => 'Podpis dla odpowiedzi emailowych.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'System wy�le powiadomienie do klienta, gdy zg�oszenie zostanie przesuni�te do innej kolejki.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'System wy�le powiadomienie do klienta, gdy zmieni sie status zg�oszenia.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'System wy�le powiadomienie do klienta, gdy zmieni sie w�a�ciciel zg�oszenia.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => '',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Odpowied�',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => '',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Konfiguracja Odpowiedzi',
      'A response is default text to write faster answer (with default text) to customers.' => 'Odpowied� to domy�lny tekst wstawiany do odpowiedzi klientowi, dzi�ki czemu agent mo�e szybciej odpowiedzie� na zg�oszenie.',
      'Don\'t forget to add a new response a queue!' => 'Nie zapomnij powi�za� nowej odpowiedzi z jak�� kolejk�!',
      'Next state' => 'Nast�pny status',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'The current ticket state is' => 'Aktualny status zg�oszenia to',
      'Your email address is new' => '',

      # Template: AdminRoleForm
      'Role Management' => '',
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => '',
      'move_into' => 'przesu� do',
      'Permissions to move tickets into this group/queue.' => 'Uprawnienia do przesuwania zg�osze� do tej grupy/kolejki',
      'create' => 'utw�rz',
      'Permissions to create tickets in this group/queue.' => 'Uprawnienia do tworzenia zg�osze� w tej grupie/kolejce',
      'owner' => 'w�a�ciciel',
      'Permissions to change the ticket owner in this group/queue.' => 'Uprawnienia do zmiany w�a�ciciela zg�oszenia w tej grupie/kolejce',
      'priority' => 'priorytet',
      'Permissions to change the ticket priority in this group/queue.' => 'Uprawnienia do zmiany priorytetu zg�oszenia w tej grupie/kolejce',

      # Template: AdminRoleGroupForm
      'Role' => '',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => '',
      'Active' => '',
      'Select the role:user relations.' => '',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Konfiguracja zwrot�w grzeczno�ciowych',
      'customer realname' => 'Prawdziwe dane klienta',
      'All Agent variables.' => '',
      'for agent firstname' => 'dla imienia agenta',
      'for agent lastname' => 'dla nazwiska agenta',
      'for agent user id' => 'dla ID u�ytkownika agenta',
      'for agent login' => 'dla loginu agenta',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Zapytanie SQL',
      'Limit' => '',
      'Select Box Result' => 'Wyniki Zapytania',

      # Template: AdminSession
      'Session Management' => 'Zarz�dzanie sesjami',
      'Sessions' => 'Sesje',
      'Uniq' => 'Unikalne',
      'kill all sessions' => 'Zamknij wszystkie sesje',
      'Session' => '',
      'Content' => '',
      'kill session' => 'Zamknij sesj�',

      # Template: AdminSignatureForm
      'Signature Management' => 'Konfiguracja podpis�w',

      # Template: AdminSMIMEForm
      'S/MIME Management' => '',
      'Add Certificate' => '',
      'Add Private Key' => '',
      'Secret' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',

      # Template: AdminStateForm
      'System State Management' => 'Konfiguracja status�w',
      'State Type' => 'Typ statusu',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Pami�taj, by auktualni� r�wnie� domy�lne statusy w pliku Kernel/Config.pm !',
      'See also' => 'Zobacz tak�e',

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
      'New' => 'Nowe',
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
      'System Email Addresses Management' => 'Konfiguracja adres�w email Systemu',
      'Realname' => 'Prawdziwe Imi� i Nazwisko',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Wszystkie wiadomo�ci przys�ane na ten adres w polu (Do:) zostan� umieszczone w tej kolejce.',

      # Template: AdminUserForm
      'User Management' => 'Zarz�dzanie U�ytkownikami',
      'Login as' => '',
      'Firstname' => 'Imi�',
      'Lastname' => 'Nazwisko',
      'User will be needed to handle tickets.' => 'U�ytkownik b�dzie niezb�dny do obs�ugi zg�oszenia.',
      'Don\'t forget to add a new user to groups and/or roles!' => '',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => '',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'Ksi��ka adresowa',
      'Return to the compose screen' => 'Powr�� do ekranu edycji',
      'Discard all changes and return to the compose screen' => 'Anuluj wszystkie zmiany i powr�� do ekranu edycji',

      # Template: AgentCalendarSmall

      # Template: AgentCalendarSmallIcon

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => '',

      # Template: AgentLinkObject
      'Link Object' => '',
      'Select' => 'Zaznacz',
      'Results' => 'Wyniki',
      'Total hits' => 'Wszystkich trafie�',
      'Page' => 'Strona',
      'Detail' => '',

      # Template: AgentLookup
      'Lookup' => '',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'S�ownik',
      'spelling error(s)' => 'b��d�w j�zykowych',
      'or' => 'lub',
      'Apply these changes' => 'Zastosuj te zmiany',

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
      'Print' => 'Drukuj',
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
      'A message should have a To: recipient!' => 'Wiadomo�� musi zawiera� wype�nione adresem polu Do: (odbiorca)!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'W polu Do: musi znale�� si� adres email (np. klient@przyklad.pl)!',
      'Bounce ticket' => 'Odbij zg�oszenie',
      'Bounce to' => 'Odbij do',
      'Next ticket state' => 'Nast�pny status zg�oszenia',
      'Inform sender' => 'Powiadom nadawc�',
      'Send mail!' => 'Wy�lij wiadomo��!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Wiadomosc powinna posiada� temat!',
      'Ticket Bulk Action' => '',
      'Spell Check' => 'Sprawd� poprawno��',
      'Note type' => 'Typ notatki',
      'Unlock Tickets' => '',

      # Template: AgentTicketClose
      'A message should have a body!' => 'Wiadomo�� powinna zawiera� jak�� tre��!',
      'You need to account time!' => 'Musisz zaraportowa� czas!',
      'Close ticket' => 'Zamknij zg�oszenie',
      'Ticket locked!' => 'Zg�oszenie zablokowane!',
      'Ticket unlock!' => 'Zg�oszenie odblokowane!',
      'Previous Owner' => 'Poprzedni w�a�ciciel',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',
      'Attach' => 'Wstaw',
      'Pending date' => 'Data oczekiwania',
      'Time units' => 'Jednostek czasu',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Wiadomo�� musi zosta� sprawdzona s�ownikiem!',
      'Compose answer for ticket' => 'Edytuj odpowied� na zg�oszenie',
      'Pending Date' => 'Termin wyznaczony',
      'for pending* states' => 'dla status�w "oczekuj�cych" z pola powy�ej',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Zmie� klienta dla zg�oszenia',
      'Set customer user and customer id of a ticket' => 'Wska� klienta i ID klienta dla zg�oszenia',
      'Customer User' => 'Klienci',
      'Search Customer' => 'Szukaj klienta',
      'Customer Data' => 'Dane klienta',
      'Customer history' => 'Historia klienta',
      'All customer tickets.' => 'Wszystkie zg�oszenia klienta',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Odpowiedz',

      # Template: AgentTicketEmail
      'Compose Email' => 'Nowa wiadomo��',
      'new ticket' => 'Nowe zg�oszenie',
      'Refresh' => '',
      'Clear To' => '',
      'All Agents' => 'Wszyscy agenci',

      # Template: AgentTicketForward
      'Article type' => 'Typ artyku�u',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Dodaj lub zmie� dodatkowe informacje o zg�oszeniu',

      # Template: AgentTicketHistory
      'History of' => 'Historia',

      # Template: AgentTicketLocked

      # Template: AgentTicketMailbox
      'Mailbox' => 'Skrzynka',
      'Tickets' => 'Zgloszenia',
      'of' => 'z',
      'Filter' => '',
      'All messages' => 'Wszystkie wiadomo�ci',
      'New messages' => 'Nowe wiadomo�ci',
      'Pending messages' => 'Oczekuj�ce wiadomo�ci',
      'Reminder messages' => 'Tekst przypomnienia',
      'Reminder' => 'Przypomnienie',
      'Sort by' => 'Sortuj wed�ug',
      'Order' => 'Porz�dek',
      'up' => 'g�ra',
      'down' => 'd�',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => '',
      'Ticket Merge' => '',
      'Merge to' => '',

      # Template: AgentTicketMove
      'Move Ticket' => 'Przesu� zg�oszenie',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Dodaj notatk� do zg�oszenia',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Zmie� w�a�ciciela zg�oszenia',

      # Template: AgentTicketPending
      'Set Pending' => 'Ustaw oczekiwanie',

      # Template: AgentTicketPhone
      'Phone call' => 'Telefon',
      'Clear From' => 'Wyczy�� pole Od:',
      'Create' => '',

      # Template: AgentTicketPhoneOutbound

      # Template: AgentTicketPlain
      'Plain' => 'Puste',
      'TicketID' => 'ID Zg�oszenia',
      'ArticleID' => 'ID Artyku�u',

      # Template: AgentTicketPrint
      'Ticket-Info' => '',
      'Accounted time' => 'Zaraportowany czas',
      'Escalation in' => 'Eskalowane w',
      'Linked-Object' => '',
      'Parent-Object' => '',
      'Child-Object' => '',
      'by' => 'przez',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Zmie� priorytet zg�oszenia',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Pokazane zg�oszenia',
      'Tickets available' => 'Dost�pne zg�oszenia',
      'All tickets' => 'Wszystkie zg�oszenia',
      'Queues' => 'Kolejki',
      'Ticket escalation!' => 'Eskalacja zg�oszenia!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'Twoje w�asne zg�oszenie',
      'Compose Follow up' => 'Napisz Odpowied� (Follow Up)',
      'Compose Answer' => 'Napisz odpowied�',
      'Contact customer' => 'Skontaktuj si� z klientem',
      'Change queue' => 'Zmie� kolejk�',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketResponsible
      'Change responsible of ticket' => '',

      # Template: AgentTicketSearch
      'Ticket Search' => 'Wyszukiwanie zg�oszenia',
      'Profile' => 'Profil',
      'Search-Template' => 'Szablon wyszukiwania',
      'TicketFreeText' => 'Dodatkowe informacje o zg�oszeniu',
      'Created in Queue' => '',
      'Result Form' => 'Formularz wynik�w',
      'Save Search-Profile as Template?' => 'Zachowaj profil wyszukiwania jako szablon',
      'Yes, save it with name' => 'Tak, zapisz to pod nazw�',

      # Template: AgentTicketSearchResult
      'Search Result' => 'Wyniki wyszukiwania',
      'Change search options' => 'Zmie� kryteria wyszukiwania',

      # Template: AgentTicketSearchResultPrint

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'sortuj rosn�co',
      'U' => 'G',
      'sort downward' => 'sortuj malej�co',
      'D' => '',

      # Template: AgentTicketStatusView
      'Ticket Status View' => '',
      'Open Tickets' => '',

      # Template: AgentTicketZoom
      'Locked' => '',
      'Split' => 'Podziel',

      # Template: AgentWindowTab

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => '�led� wstecz',

      # Template: CustomerFooter
      'Powered by' => 'Oparte na',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin
      'Login' => '',
      'Lost your password?' => 'Zapomnia�e� has�a?',
      'Request new password' => 'Pro�ba o nowe has�o',
      'Create Account' => 'Utw�rz konto',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Witaj %s',

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
      'Click here to report a bug!' => 'Kliknij tutaj, by zg�osi� b��d systemu OTRS!',

      # Template: Footer
      'Top of Page' => 'G�ra strony',

      # Template: FooterSmall

      # Template: Header
      'Home' => '',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Instalator Web',
      'accept license' => 'akceptuj� Licencj�',
      'don\'t accept license' => 'nie akceptuj� Licencji',
      'Admin-User' => 'Administrator',
      'Admin-Password' => '',
      'your MySQL DB should have a root password! Default is empty!' => 'Twoja baza danych MYSQL powinna mie� ustawione jakie� has�o dla u�ytkownika root. Domy�lnie jest puste!',
      'Database-User' => '',
      'default \'hot\'' => 'domy�lne \'hot\'',
      'DB connect host' => '',
      'Database' => '',
      'false' => '',
      'SystemID' => 'ID Systemu',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Identyfikator systemu. Wszystkie zg�oszenia oraz sesje http b�d� zaczyna�y si� od tego ci�gu)',
      'System FQDN' => 'Pe�na domena systemu FQDN',
      '(Full qualified domain name of your system)' => '(Pe�na nazwa domeny Twojego systemu FQDN)',
      'AdminEmail' => 'Email od Admina',
      '(Email of the system admin)' => '(Adres E-Mail Administratora Systemu)',
      'Organization' => 'Organizacja',
      'Log' => '',
      'LogModule' => 'Modu� logowania',
      '(Used log backend)' => '(U�ywany log backend)',
      'Logfile' => 'Plik logu',
      '(Logfile just needed for File-LogModule!)' => '(Logfile jest potrzebny jedynie dla modu�u File-Log!)',
      'Webfrontend' => 'Interfejs webowy',
      'Default Charset' => 'Domy�lne kodowanie',
      'Use utf-8 it your database supports it!' => 'U�ywaj kodowania UTF-8 je�li pozwala Ci na to baza danych!',
      'Default Language' => 'Domy�lny j�zyk',
      '(Used default language)' => '(Domy�lny j�zyk)',
      'CheckMXRecord' => 'Sprawd� rekord MX',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Musisz wpisa� nast�puj�ce polecenie w linii komend (Terminal/Shell).',
      'Restart your webserver' => 'Uruchom ponownie serwer WWW',
      'After doing so your OTRS is up and running.' => 'Po zako�czeniu tych czynno�ci Tw�j system OTRS b�dzie gotowy do pracy',
      'Start page' => 'Strona startowa',
      'Have a lot of fun!' => '�yczymy dobrej zabawy!',
      'Your OTRS Team' => 'Tw�j Team OTRS',

      # Template: Login
      'Welcome to %s' => 'Witamy w %s',

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Brak dost�pu',

      # Template: Notify
      'Important' => '',

      # Template: PrintFooter
      'URL' => '',

      # Template: PrintHeader
      'printed by' => 'wydrukowane przez',

      # Template: Redirect

      # Template: Test
      'OTRS Test Page' => 'OTRS Strona testowa',
      'Counter' => '',

      # Template: Warning
      # Misc
      'OTRS DB connect host' => 'Host bazy danych',
      'Create Database' => 'Stw�rz baz� danych',
      ' (work units)' => ' (jednostek roboczych)',
      'DB Host' => 'Host bazy danych',
      'Ticket Number Generator' => 'Generator numer�w zg�osze�',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identyfikator zg�oszenia. np. \'Ticket#\', \'Call#\' lub \'MyTicket#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Symptom' => 'Objawy',
      'Site' => 'Witryna',
      'Customer history search (e. g. "ID342425").' => 'Przeszukiwanie historii klienta (np. "ID342425").',
      'Ticket Hook' => 'Identyfikator zg�oszenia',
      'Close!' => 'Zamknij!',
      'TicketZoom' => 'Podgl�d zg�oszenia',
      'Don\'t forget to add a new user to groups!' => 'Nie zapomnij doda� u�ytkownika do grup!',
      'OTRS DB Name' => 'Nazwa bazy danych OTRS',
      'System Settings' => 'Ustawienia systemu',
      'Finished' => 'Zako�czono',
      'Queue ID' => 'ID Kolejki',
      'A article should have a title!' => '',
      'System History' => '',
      'Modules' => '',
      'Keyword' => 'S�owo kluczowe',
      'Close type' => 'Typ zamkni�cia',
      'DB Admin User' => 'U�ytkownik administruj�cy baz� danych',
      'Change user <-> group settings' => 'Zmie� u�ytkownika <-> Ustawienia grupy',
      'Name is required!' => '',
      'Problem' => '',
      'DB Type' => 'Typ bazy danych',
      'next step' => 'Nast�pny krok',
      'Termin1' => '',
      'Customer history search' => 'Przeszukiwanie historii klienta',
      'Solution' => 'Rozwi�zanie',
      'Admin-Email' => 'Wiadomo�� od Administratora',
      'QueueView' => 'Podgl�d kolejki',
      'Create new database' => 'Stw�rz now� baz� danych',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Twoja wiadomo�� o numerze zg�oszenia: "<OTRS_TICKET>" zosta�a przekazana na adres "<OTRS_BOUNCE_TO>" . Prosimy kontaktowa� si� pod tym adresem we wszystkich sprawach dotycz�cych tego zg�oszenia.',
      'modified' => '',
      'Delete old database' => 'Usu� star� baz� danych',
      'Keywords' => 'S�owa kluczowe',
      'Note Text' => 'Tekst notatki',
      'No * possible!' => 'Nie u�ywaj znaku "*"!',
      'OTRS DB User' => 'U�ytkownik bazy danych OTRS',
      'PhoneView' => 'Nowy telefon',
      'Verion' => '',
      'Message for new Owner' => 'Wiadomo�� do nowego w�a�ciciela',
      'OTRS DB Password' => 'Has�o dost�pu do bazy dla OTRS',
      'Last update' => 'Ostatnia aktualizacja',
      'DB Admin Password' => 'Has�o Administratora bazy danych',
      'Drop Database' => 'Usu� baz� danych',
      'Pending type' => 'Typ oczekiwania',
      'Comment (internal)' => 'Komentarz (wewn�trzny)',
      '(Used ticket number format)' => '(U�ywany format numerowania zg�osze�)',
      'Fulltext' => 'Pe�notekstowe',
      'Modified' => 'Zmodyfikowany',
    };
    # $$STOP$$
}

1;
