# --
# Kernel/Language/pl.pm - provides pl language translation
# Copyright (C) 2002-2004 Martin Edenhofer <martin at otrs.org>
# Translated by Tomasz Melissa <janek at rumianek.com>
# --
# $Id: pl.pm,v 1.8 2004-03-25 11:16:25 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::pl;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.8 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Tue Feb 10 01:08:12 2004 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 Minuty',
      ' 5 minutes' => ' 5 Minut',
      ' 7 minutes' => ' 7 Minut',
      '(Click here to add)' => '(By doda� kliknij tutaj)',
      '10 minutes' => '10 Minut',
      '15 minutes' => '15 Minut',
      'AddLink' => 'Dodaj link',
      'Admin-Area' => 'Administracja',
      'agent' => 'agent',
      'Agent-Area' => 'Obs�uga',
      'all' => 'wszystkie',
      'All' => 'Wszystkie',
      'Attention' => 'Uwaga',
      'before' => 'przedtem',
      'Bug Report' => 'Zg�o� b��d',
      'Cancel' => 'Anuluj',
      'change' => 'zmie�',
      'Change' => 'Zmie�',
      'change!' => 'Zmie�!',
      'click here' => 'kliknij tutaj',
      'Comment' => 'Komentarz',
      'Customer' => 'Klient',
      'customer' => 'klient',
      'Customer Info' => 'Informacja o kliencie',
      'day' => 'dzie�',
      'day(s)' => 'dzie�(dni)',
      'days' => 'dni',
      'description' => 'opis',
      'Description' => 'Opis',
      'Dispatching by email To: field.' => 'Przekazywanie na podstawie pola DO:',
      'Dispatching by selected Queue.' => 'Przekazywanie na podstawie zaznaczonej kolejki.',
      'Don\'t show closed Tickets' => 'Nie pokazuj zamkni�tych zg�osze�',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Nie u�ywaj u�ytkownika z UserID 1 (Konto systemowe)! Stw�rz nowych u�ytkownik�w!',
      'Done' => 'Zrobione',
      'end' => 'koniec',
      'Error' => 'B��d',
      'Example' => 'Przyk�ad',
      'Examples' => 'Przyk�ady',
      'Facility' => 'U�atwienie',
      'FAQ-Area' => 'Pytania i odpowiedzi (FAQ)',
      'Feature not active!' => 'Funkcja nie aktywna!',
      'go' => 'Start',
      'go!' => 'Start!',
      'Group' => 'Grupa',
      'Hit' => 'Ods�ona',
      'Hits' => 'Ods�on',
      'hour' => 'godzina',
      'hours' => 'godz.',
      'Ignore' => 'Ignoruj',
      'invalid' => 'Niepoprawne',
      'Invalid SessionID!' => 'Niepoprawne ID Sesji!',
      'Language' => 'J�zyk',
      'Languages' => 'J�zyki',
      'last' => 'ostatnie',
      'Line' => 'Linia',
      'Lite' => 'Lekkie',
      'Login failed! Your username or password was entered incorrectly.' => 'Logowanie niepoprawne! Tw�j u�ytkownik lub has�o zosta�y wpisane niepoprawnie.',
      'Logout successful. Thank you for using OTRS!' => 'Wylogowanie zako�czone! Dzi�kujemy za u�ywanie OTRS!',
      'Message' => 'Wiadomo��',
      'minute' => 'minuta',
      'minutes' => 'min.',
      'Module' => 'Modu�',
      'Modulefile' => 'Plik Modu�u',
      'month(s)' => 'miesi�c(-cy)',
      'Name' => 'Nazwa',
      'New Article' => 'Nowy artyku�',
      'New message' => 'Nowa wiadomo��',
      'New message!' => 'Nowa wiadomo��!',
      'No' => 'Nie',
      'no' => 'nie',
      'No entry found!' => 'Nic nie odnaleziono!',
      'No suggestions' => 'Brak podpowiedzi',
      'none' => 'brak danych',
      'none - answered' => 'brak - odpowiedziane',
      'none!' => 'brak!',
      'Normal' => 'Normalne',
      'Off' => 'Wy��czone',
      'off' => 'wy��czone',
      'On' => 'W��czone',
      'on' => 'w��czone',
      'Password' => 'Has�o',
      'Pending till' => 'Oczekuje do',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Prosz� odpowiedz na to zg�oszenie, by m�c powroci� do zwyk�ego widoku kolejki zg�osze�!',
      'Please contact your admin' => 'Skontaktuj si� z Administratorem',
      'please do not edit!' => 'nie edytowa�!',
      'Please go away!' => 'Prosz� zrezygnuj!',
      'possible' => 'mo�liwe',
      'Preview' => 'Podgl�d',
      'QueueView' => 'Podgl�d kolejki',
      'reject' => 'odrzu�',
      'replace with' => 'zamie� z',
      'Reset' => 'Resetuj',
      'Salutation' => 'Zwrot grzeczno�ciowy',
      'Session has timed out. Please log in again.' => 'Sesja wygas�a. Zaloguj si� ponownie',
      'Show closed Tickets' => 'Poka� zamkni�te zg�oszenia',
      'Signature' => 'Podpis',
      'Sorry' => 'Przykro mi',
      'Stats' => 'Statystyki',
      'Subfunction' => 'Funkcja podrz�dna',
      'submit' => 'akceptuj',
      'submit!' => 'akceptuj!',
      'system' => 'System',
      'Take this User' => 'U�yj tego u�ytkownika',
      'Text' => 'Tre��',
      'The recommended charset for your language is %s!' => 'Sugerowane kodowanie dla Twojego j�zyka to %s!',
      'Theme' => 'Schemat',
      'There is no account with that login name.' => 'Nie istnieje konto z takim loginem.',
      'Timeover' => 'Timeover',
      'To: (%s) replaced with database email!' => 'DO: (%s) zamienione z adresem email z bazy danych',
      'top' => 'g�ra',
      'update' => 'uaktualnij',
      'Update' => 'Uaktualnij',
      'update!' => 'uaktualnij!',
      'User' => 'U�ytkownik',
      'Username' => 'Nazwa u�ytkownika',
      'Valid' => 'Zastosowanie',
      'Warning' => 'Ostrze�enie',
      'week(s)' => 'tydzie�(tygodnie)',
      'Welcome to OTRS' => 'Witamy w OTRS',
      'Word' => 'S�owo',
      'wrote' => 'napisa�',
      'year(s)' => 'rok(lat)',
      'yes' => 'tak',
      'Yes' => 'Tak',
      'You got new message!' => 'Masz now� wiadomo��!',
      'You have %s new message(s)!' => 'Masz %s nowych wiadomo�ci!',
      'You have %s reminder ticket(s)!' => 'Masz %s przypomnie� o zg�oszeniach!',

    # Template: AAAMonth
      'Apr' => 'Kwi',
      'Aug' => 'Sie',
      'Dec' => 'Gru',
      'Feb' => 'Lut',
      'Jan' => 'Sty',
      'Jul' => 'Lip',
      'Jun' => 'Cze',
      'Mar' => 'Mar',
      'May' => 'Maj',
      'Nov' => 'Lis',
      'Oct' => 'Pa�',
      'Sep' => 'Wrz',

    # Template: AAAPreferences
      'Closed Tickets' => 'Zamkni�te zg�oszenia',
      'Custom Queue' => 'Kolejka modyfikowana',
      'Follow up notification' => 'Powiadomienie o odpowiedzi',
      'Frontend' => 'Interfejs',
      'Mail Management' => 'Zarz�dzanie poczt�',
      'Max. shown Tickets a page in Overview.' => 'Limit pokazywanych zg�osze� na stronie Podsumowania',
      'Max. shown Tickets a page in QueueView.' => 'Limit pokazywanych zg�osze� na stronie Podgl�du Kolejki',
      'Move notification' => 'Powiadomienie o przesuni�ciu',
      'New ticket notification' => 'Powiadomienie o nowym zg�oszeniu',
      'Other Options' => 'Inne opcje',
      'PhoneView' => 'Nowy telefon',
      'Preferences updated successfully!' => 'Ustawienia zapisano pomy�lnie!',
      'QueueView refresh time' => 'Okres od�wierzania Podgl�du Kolejki',
      'Screen after new ticket' => 'Ekran po nowym zg�oszeniu',
      'Select your default spelling dictionary.' => 'Wybierz domy�lny s�ownik.',
      'Select your frontend Charset.' => 'Wybierz kodowanie.',
      'Select your frontend language.' => 'Wybierz j�zyk.',
      'Select your frontend QueueView.' => 'Wybierz Podgl�d Kolejki.',
      'Select your frontend Theme.' => 'Wybierz schemat wygl�du systemu.',
      'Select your QueueView refresh time.' => 'Wybierz okres od�wierzania Podgl�du Kolejki.',
      'Select your screen after creating a new ticket.' => 'Wybierz ekran, kt�ry poka�e si� po rejestracji nowego zg�oszenia',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Wy�lij mi wiadomo��, gdy klient odpowie na zg�oszenie, kt�rego ja jestem w�a�cicielem.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Wy�lij mi wiadomo��, gdy zg�oszenie zostanie przesuni�te do innej kolejki.',
      'Send me a notification if a ticket is unlocked by the system.' => 'Wy�lij mi wiadomo��, gdy zg�oszenie zostanie odblokowane przez system.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Wy�lij mi wiadomo��, gdy pojawi sie nowe zg�oszenie w moich kolejkach.',
      'Show closed tickets.' => 'Poka� zamkni�te zg�oszenia.',
      'Spelling Dictionary' => 'S�ownik pisowni',
      'Ticket lock timeout notification' => 'Powiadomienie o przekroczonym czasie blokady zg�oszenia',
      'TicketZoom' => 'Podgl�d zg�oszenia',

    # Template: AAATicket
      '1 very low' => '1 bardzo niski',
      '2 low' => '2 niski',
      '3 normal' => '3 normalny',
      '4 high' => '4 wysoki',
      '5 very high' => '5 bardzo wysoki',
      'Action' => 'Akcja',
      'Age' => 'Wiek',
      'Article' => 'Artyku�',
      'Attachment' => 'Za��cznik',
      'Attachments' => 'Za��czniki',
      'Bcc' => 'Bcc',
      'Bounce' => 'Odbij',
      'Cc' => 'Cc',
      'Close' => 'Zamknij',
      'closed successful' => 'zamkni�te z powodzeniem',
      'closed unsuccessful' => 'zamkni�te bez powodzenia',
      'Compose' => 'Stw�rz',
      'Created' => 'Utworzone',
      'Createtime' => 'Utworzone o',
      'email' => 'e-mail',
      'eMail' => 'E-Mail',
      'email-external' => 'e-mail zewn�trzny',
      'email-internal' => 'e-mail wewn�trzny',
      'Forward' => 'Prze�lij dalej',
      'From' => 'Od',
      'high' => 'wysoki',
      'History' => 'Historia',
      'If it is not displayed correctly,' => 'Je�li nie jest wy�wietlane poprawnie,',
      'lock' => 'zablokowane',
      'Lock' => 'Zablokowane',
      'low' => 'niski',
      'Move' => 'Przesu�',
      'new' => 'nowe',
      'normal' => 'normalny',
      'note-external' => 'Notatka zewn�trzna',
      'note-internal' => 'Notatka wewn�trzna',
      'note-report' => 'Notatka raportujaca',
      'open' => 'otwarte',
      'Owner' => 'W�a�ciciel',
      'Pending' => 'Oczekuj�ce',
      'pending auto close+' => 'oczekuj�ce na automatyczne zamkni�cie+',
      'pending auto close-' => 'oczekuj�ce na automatyczne zamkni�cie-',
      'pending reminder' => 'oczekuj�ce przypomnienie',
      'phone' => 'telefon',
      'plain' => 'bez formatowania',
      'Priority' => 'Priorytet',
      'Queue' => 'Kolejka',
      'removed' => 'usuni�te',
      'Sender' => 'Nadawca',
      'sms' => 'SMS',
      'State' => 'Status',
      'Subject' => 'Temat',
      'This is a' => 'To jest',
      'This is a HTML email. Click here to show it.' => 'To jest e-mail w formacie HTML. Kliknij tutaj, by go przeczyta�.',
      'This message was written in a character set other than your own.' => 'Ta wiadomo�� zosta�a napisana z u�yciem kodowania znak�w innego ni� Tw�j.',
      'Ticket' => 'Zg�oszenie',
      'Ticket "%s" created!' => 'Zg�oszenie "%s" utworzone!',
      'To' => 'Do',
      'to open it in a new window.' => 'by otworzy� w oddzielnym oknie',
      'unlock' => 'odblokuj',
      'Unlock' => 'Odblokuj',
      'very high' => 'bardzo wysoki',
      'very low' => 'bardzo niski',
      'View' => 'Widok',
      'webrequest' => 'zg�oszenie z WWW',
      'Zoom' => 'Podgl�d',

    # Template: AAAWeekDay
      'Fri' => 'Ptk',
      'Mon' => 'Pnd',
      'Sat' => 'Sob',
      'Sun' => 'Ndz',
      'Thu' => 'Czw',
      'Tue' => 'Wtr',
      'Wed' => '�rd',

    # Template: AdminAttachmentForm
      'Add' => 'Dodaj',
      'Attachment Management' => 'Konfiguracja za��cznik�w',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'Dodaj automatyczn� odpowied�',
      'Auto Response From' => 'Automatyczna odpowied� Od',
      'Auto Response Management' => 'Konfiguracja automatycznych odpowiedzi',
      'Change auto response settings' => 'Zmie� ustawienia automatycznych odpowiedzi',
      'Note' => 'Uwagi',
      'Response' => 'Odpowied�',
      'to get the first 20 character of the subject' => 'by wstawi� pierwsze 20 znak�w tematu',
      'to get the first 5 lines of the email' => 'by wstawi� 5 pierwszych linii wiadomo�ci',
      'to get the from line of the email' => 'by wstawi� pole Od wiadomo�ci',
      'to get the realname of the sender (if given)' => 'by wstawi� prawdziwe imi� i nazwisko klienta (je�li podano)',
      'to get the ticket id of the ticket' => 'by wstawi� ID zg�oszenia',
      'to get the ticket number of the ticket' => 'by wstawi� numer zg�oszenia',
      'Type' => 'Typ',
      'Useable options' => 'U�yteczne opcje',

    # Template: AdminCustomerUserForm
      'Customer User Management' => 'Konfiguracja u�ytkownik�w',
      'Customer user will be needed to to login via customer panels.' => 'Klient b�dzie musia� logowa� si� poprzez interfejs WWW klienta.',
      'Select source:' => 'Wybierz �r�d�o:',
      'Source' => '�r�d�o',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserGroupChangeForm
      'Change %s settings' => 'Zmie� %s ustawienia',
      'Customer User <-> Group Management' => 'Klient <-> Konfiguracja Grup',
      'Full read and write access to the tickets in this group/queue.' => 'Prawa pe�nego odczytu i zapisu zg�osze� w tej grupie/kolejce',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Je�li nic nie zaznaczono, wtedy u�ytkownik nie b�dzie mia� praw w tej grupie (zg�oszenia b�d� niedost�pne)',
      'Permission' => 'Prawo dost�pu',
      'Read only access to the ticket in this group/queue.' => 'Prawo jedynie do odczytu zg�osze� w tej grupie/kolejce',
      'ro' => 'ro',
      'rw' => 'rw',
      'Select the user:group permissions.' => 'Wybierz prawa dost�pu dla u�ytkownika:grupy',

    # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Zmie� u�ytkownika <-> Ustawienia grupy',

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Wiadomo�� od Administratora',
      'Body' => 'Tre��',
      'OTRS-Admin Info!' => 'Informacja od Administratora OTRS!',
      'Recipents' => 'Adresaci',
      'send' => 'wy�lij',

    # Template: AdminEmailSent
      'Message sent to' => 'Wiadomo�� wys�ana do',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Stw�rz nowe grupy, by m�c efektywniej zarz�dza� dost�pem do zg�osze� r�nych grup u�ytkownikow (np. Serwisu, Sprzeda�y itp...).',
      'Group Management' => 'Zarz�dzanie grupami',
      'It\'s useful for ASP solutions.' => 'Pomocne w rozwi�zanich ASP.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Grupa Admin pozwala posiada prawa Administracji systemem. Grupa Stats umo�liwia przegl�danie statystyk zg�osze�.',

    # Template: AdminLog
      'System Log' => 'Log Systemu',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Email od Admina',
      'Attachment <-> Response' => 'Za��cznik <-> Odpowied�',
      'Auto Response <-> Queue' => 'AutoOdpowied� <-> Kolejka',
      'Auto Responses' => 'AutoOdpowiedzi',
      'Customer User' => 'Klienci',
      'Customer User <-> Groups' => 'Klienci <-> Grupy',
      'Email Addresses' => 'Adresy email',
      'Groups' => 'Grupy',
      'Logout' => 'Wyloguj',
      'Misc' => 'R�ne',
      'Notifications' => 'Powiadomienia',
      'PostMaster Filter' => 'Filtr PostMaster',
      'PostMaster POP3 Account' => 'Konto pocztowe POP3 - PostMaster',
      'Responses' => 'Odpowiedzi',
      'Responses <-> Queue' => 'Odpowiedzi <-> Kolejka',
      'Select Box' => 'Zapytanie SQL',
      'Session Management' => 'Zarz�dzanie sesjami',
      'Status' => 'Status',
      'System' => 'System',
      'User <-> Groups' => 'U�ytkownik <-> Grupy',

    # Template: AdminNotificationForm
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Opcje konfiguracyjne (np. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Notification Management' => 'Konfiguracja Powiadomie�',
      'Notifications are sent to an agent or a customer.' => 'Powiadomienia s� wysy�ane do agenta obs�ugi lub klienta',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Opcje aktualnego klienta (np. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Opcje aktualnego agenta obs�ugi (np. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Opcje dotycz�ce w�a�ciciela zg�oszenia (np. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Wszystkie przychodz�ce na jedno konto wiadomo�ci b�d� umieszczone w zaznacznej kolejce!',
      'Dispatching' => 'Przekazanie',
      'Host' => 'Host',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Je�li Twoje konto jest zaufane, zostanie u�yty nag��wek x-otrs (dla priorytetu...)!',
      'Login' => 'Login',
      'POP3 Account Management' => 'Konfiguracja kont POP3',
      'Trusted' => 'Zaufane',

    # Template: AdminPostMasterFilterForm
      'Match' => 'Odpowiada',
      'PostMasterFilter Management' => 'Konfiguracja konta PostMaster',
      'Set' => 'Ustaw',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Kolejka <-> Konfiguracja AutoOdpowiedzi',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = brak eskalacji',
      '0 = no unlock' => '0 = bez odblokowania',
      'Customer Move Notify' => 'Powiadomienie klienta o przesuni�ciu',
      'Customer Owner Notify' => 'Powiadomienie klienta o zmianie w�a�ciciela',
      'Customer State Notify' => 'Powiadomienie klienta o zmianie statusu',
      'Escalation time' => 'Czas eskalacji',
      'Follow up Option' => 'Opcja Follow Up',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Je�li zg�oszenie by�o zamkni�te, a klient przy�le do niego kolejn� odpowied�, wtedy zg�oszenie zostanie zablokowane w kolejce starego w�a�ciciela.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Je�li, w podanym czasie, nie zostanie udzielona odpowied� na zg�oszenie, wtedy tylko to zg�oszenie b�dzie widoczne w kolejce.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Je�li agent zablokuje zg�oszenie, a nast�pnie nie odpowie na nie w ci�gu wskazanego czasu, wtedy zg�oszenie zostanie automatycznie odblokowane. Dzi�ki temu pozostali agenci b�d� mogli je zobaczy�.',
      'Key' => 'Klucz',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'System wy�le powiadomienie do klienta, gdy zg�oszenie zostanie przesuni�te do innej kolejki.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'System wy�le powiadomienie do klienta, gdy zmieni sie w�a�ciciel zg�oszenia.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'System wy�le powiadomienie do klienta, gdy zmieni sie status zg�oszenia.',
      'Queue Management' => 'Konfiguracja kolejek',
      'Sub-Queue of' => 'Kolejka podrz�dna',
      'Systemaddress' => 'Adres systemowy',
      'The salutation for email answers.' => 'Zwrot grzeczno�ciowy dla odpowiedzi emailowych.',
      'The signature for email answers.' => 'Podpis dla odpowiedzi emailowych.',
      'Ticket lock after a follow up' => 'Zg�oszenie zablokowane po odpowiedzi (Follow Up)',
      'Unlock timeout' => 'Limit czasowy odblokowania',
      'Will be the sender address of this queue for email answers.' => 'B�dzie adresem nadawcy odpowiedzi emailowych wysy�anych z tej kolejki.',

    # Template: AdminQueueResponsesChangeForm
      'Std. Responses <-> Queue Management' => 'Standardowe odpowiedzi <-> Konfiguracja kolejek',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Odpowied�',
      'Change answer <-> queue settings' => 'Zmie� odpowied� <-> Konfiguracja kolejek',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Standardowe odpowiedzi <-> Konfiguracja standardowych za��cznik�w',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'Zmie� odpowied� <-> Konfiguracja za��cznik�w',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Odpowied� to domy�lny tekst wstawiany do odpowiedzi klientowi, dzi�ki czemu agent mo�e szybciej odpowiedzie� na zg�oszenie.',
      'Don\'t forget to add a new response a queue!' => 'Nie zapomnij powi�za� nowej odpowiedzi z jak�� kolejk�!',
      'Next state' => 'Nast�pny status',
      'Response Management' => 'Konfiguracja Odpowiedzi',
      'The current ticket state is' => 'Aktualny status zg�oszenia to',

    # Template: AdminSalutationForm
      'customer realname' => 'Prawdziwe dane klienta',
      'for agent firstname' => 'dla imienia agenta',
      'for agent lastname' => 'dla nazwiska agenta',
      'for agent login' => 'dla loginu agenta',
      'for agent user id' => 'dla ID u�ytkownika agenta',
      'Salutation Management' => 'Konfiguracja zwrot�w grzeczno�ciowych',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Limit liczby wierszy',

    # Template: AdminSelectBoxResult
      'Limit' => 'Limit',
      'Select Box Result' => 'Wyniki Zapytania',
      'SQL' => 'SQL',

    # Template: AdminSession
      'Agent' => 'Agent',
      'kill all sessions' => 'Zamknij wszystkie sesje',
      'Overview' => 'Podsumowanie',
      'Sessions' => 'Sesje',
      'Uniq' => 'Unikalne',

    # Template: AdminSessionTable
      'kill session' => 'Zamknij sesj�',
      'SessionID' => 'ID Sesji',

    # Template: AdminSignatureForm
      'Signature Management' => 'Konfiguracja podpis�w',

    # Template: AdminStateForm
      'See also' => 'Zobacz tak�e',
      'State Type' => 'Typ statusu',
      'System State Management' => 'Konfiguracja status�w',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Pami�taj, by auktualni� r�wnie� domy�lne statusy w pliku Kernel/Config.pm !',

    # Template: AdminSystemAddressForm
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Wszystkie wiadomo�ci przys�ane na ten adres w polu (Do:) zostan� umieszczone w tej kolejce.',
      'Email' => 'E-Mail',
      'Realname' => 'Prawdziwe Imi� i Nazwisko',
      'System Email Addresses Management' => 'Konfiguracja adres�w email Systemu',

    # Template: AdminUserForm
      'Don\'t forget to add a new user to groups!' => 'Nie zapomnij doda� u�ytkownika do grup!',
      'Firstname' => 'Imi�',
      'Lastname' => 'Nazwisko',
      'User Management' => 'Zarz�dzanie U�ytkownikami',
      'User will be needed to handle tickets.' => 'U�ytkownik b�dzie niezb�dny do obs�ugi zg�oszenia.',

    # Template: AdminUserGroupChangeForm
      'create' => 'utw�rz',
      'move_into' => 'przesu� do',
      'owner' => 'w�a�ciciel',
      'Permissions to change the ticket owner in this group/queue.' => 'Uprawnienia do zmiany w�a�ciciela zg�oszenia w tej grupie/kolejce',
      'Permissions to change the ticket priority in this group/queue.' => 'Uprawnienia do zmiany priorytetu zg�oszenia w tej grupie/kolejce',
      'Permissions to create tickets in this group/queue.' => 'Uprawnienia do tworzenia zg�osze� w tej grupie/kolejce',
      'Permissions to move tickets into this group/queue.' => 'Uprawnienia do przesuwania zg�osze� do tej grupy/kolejki',
      'priority' => 'priorytet',
      'User <-> Group Management' => 'U�ytkownik <-> Zarz�dzanie grupami',

    # Template: AdminUserGroupForm

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBook
      'Address Book' => 'Ksi��ka adresowa',
      'Discard all changes and return to the compose screen' => 'Anuluj wszystkie zmiany i powr�� do ekranu edycji',
      'Return to the compose screen' => 'Powr�� do ekranu edycji',
      'Search' => 'Szukaj',
      'The message being composed has been closed.  Exiting.' => 'Wiadomo�� edytowana zosta�a zamkni�ta.  Wychodz�.',
      'This window must be called from compose window' => 'To okno musi zosta� wywo�ane z okna edycji',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Wiadomo�� musi zawiera� wype�nione adresem polu Do: (odbiorca)!',
      'Bounce ticket' => 'Odbij zg�oszenie',
      'Bounce to' => 'Odbij do',
      'Inform sender' => 'Powiadom nadawc�',
      'Next ticket state' => 'Nast�pny status zg�oszenia',
      'Send mail!' => 'Wy�lij wiadomo��!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'W polu Do: musi znale�� si� adres email (np. klient@przyklad.pl)!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Twoja wiadomo�� o numerze zg�oszenia: "<OTRS_TICKET>" zosta�a przekazana na adres "<OTRS_BOUNCE_TO>" . Prosimy kontaktowa� si� pod tym adresem we wszystkich sprawach dotycz�cych tego zg�oszenia.',

    # Template: AgentClose
      ' (work units)' => ' (jednostek roboczych)',
      'A message should have a body!' => 'Wiadomo�� powinna zawiera� jak�� tre��!',
      'A message should have a subject!' => 'Wiadomosc powinna posiada� temat!',
      'Close ticket' => 'Zamknij zg�oszenie',
      'Close type' => 'Typ zamkni�cia',
      'Close!' => 'Zamknij!',
      'Note Text' => 'Tekst notatki',
      'Note type' => 'Typ notatki',
      'Options' => 'Opcje',
      'Spell Check' => 'Sprawd� poprawno��',
      'Time units' => 'Jednostek czasu',
      'You need to account time!' => 'Musisz zaraportowa� czas!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'Wiadomo�� musi zosta� sprawdzona s�ownikiem!',
      'Attach' => 'Wstaw',
      'Compose answer for ticket' => 'Edytuj odpowied� na zg�oszenie',
      'for pending* states' => 'dla status�w "oczekuj�cych" z pola powy�ej',
      'Is the ticket answered' => 'Czy na zg�oszenie udzielono odpowiedzi',
      'Pending Date' => 'Termin wyznaczony',

    # Template: AgentCustomer
      'Back' => 'Powr�t',
      'Change customer of ticket' => 'Zmie� klienta dla zg�oszenia',
      'CustomerID' => 'ID klienta',
      'Search Customer' => 'Szukaj klienta',
      'Set customer user and customer id of a ticket' => 'Wska� klienta i ID klienta dla zg�oszenia',

    # Template: AgentCustomerHistory
      'All customer tickets.' => 'Wszystkie zg�oszenia klienta',
      'Customer history' => 'Historia klienta',

    # Template: AgentCustomerMessage
      'Follow up' => 'Odpowiedz',

    # Template: AgentCustomerView
      'Customer Data' => 'Dane klienta',

    # Template: AgentEmailNew
      'All Agents' => 'Wszyscy agenci',
      'Clear From' => 'Wyczy�� pole Od:',
      'Compose Email' => 'Nowa wiadomo��',
      'Lock Ticket' => 'Zablokuj zg�oszenie',
      'new ticket' => 'Nowe zg�oszenie',

    # Template: AgentForward
      'Article type' => 'Typ artyku�u',
      'Date' => 'Data',
      'End forwarded message' => 'Koniec przekazywanej wiadomo�ci',
      'Forward article of ticket' => 'Przeka� artyku� zg�oszenia',
      'Forwarded message from' => 'Wiadomo�� przekazana przez',
      'Reply-To' => 'Odpowied� do',

    # Template: AgentFreeText
      'Change free text of ticket' => 'Dodaj lub zmie� dodatkowe informacje o zg�oszeniu',
      'Value' => 'Warto��',

    # Template: AgentHistoryForm
      'History of' => 'Historia',

    # Template: AgentMailboxNavBar
      'All messages' => 'Wszystkie wiadomo�ci',
      'down' => 'd�',
      'Mailbox' => 'Skrzynka',
      'New' => 'Nowe',
      'New messages' => 'Nowe wiadomo�ci',
      'Open' => 'Otwarte',
      'Open messages' => 'Otwarte wiadomo�ci',
      'Order' => 'Porz�dek',
      'Pending messages' => 'Oczekuj�ce wiadomo�ci',
      'Reminder' => 'Przypomnienie',
      'Reminder messages' => 'Tekst przypomnienia',
      'Sort by' => 'Sortuj wed�ug',
      'Tickets' => 'Zgloszenia',
      'up' => 'g�ra',

    # Template: AgentMailboxTicket
      '"}' => '',
      '"}","14' => '',

    # Template: AgentMove
      'Move Ticket' => 'Przesu� zg�oszenie',
      'New Owner' => 'Nowy w�a�ciciel',
      'New Queue' => 'Nowa kolejka',
      'Previous Owner' => 'Poprzedni w�a�ciciel',
      'Queue ID' => 'ID Kolejki',

    # Template: AgentNavigationBar
      'Locked tickets' => 'zablokowane zg�oszenia',
      'new message' => 'nowe wiadomo�ci',
      'Preferences' => 'Ustawienia',
      'Utilities' => 'Wyszukiwanie',

    # Template: AgentNote
      'Add note to ticket' => 'Dodaj notatk� do zg�oszenia',
      'Note!' => 'Notatka!',

    # Template: AgentOwner
      'Change owner of ticket' => 'Zmie� w�a�ciciela zg�oszenia',
      'Message for new Owner' => 'Wiadomo�� do nowego w�a�ciciela',

    # Template: AgentPending
      'Pending date' => 'Data oczekiwania',
      'Pending type' => 'Typ oczekiwania',
      'Pending!' => 'Oczekuje!',
      'Set Pending' => 'Ustaw oczekiwanie',

    # Template: AgentPhone
      'Customer called' => 'Zadzwoni� klient',
      'Phone call' => 'Telefon',
      'Phone call at %s' => 'Telefon: %s',

    # Template: AgentPhoneNew

    # Template: AgentPlain
      'ArticleID' => 'ID Artyku�u',
      'Plain' => 'Puste',
      'TicketID' => 'ID Zg�oszenia',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'Wybierz swoje kolejki',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Zmie� has�o',
      'New password' => 'Wpisz nowe has�o',
      'New password again' => 'Ponownie wpisz nowe has�o',

    # Template: AgentPriority
      'Change priority of ticket' => 'Zmie� priorytet zg�oszenia',

    # Template: AgentSpelling
      'Apply these changes' => 'Zastosuj te zmiany',
      'Spell Checker' => 'S�ownik',
      'spelling error(s)' => 'b��d�w j�zykowych',

    # Template: AgentStatusView
      'D' => 'D',
      'of' => 'z',
      'Site' => 'Witryna',
      'sort downward' => 'sortuj malej�co',
      'sort upward' => 'sortuj rosn�co',
      'Ticket Status' => 'Status zg�oszenia',
      'U' => 'G',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLink
      'Link' => 'Link',
      'Link to' => 'Link do',

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Zg�oszenie zablokowane!',
      'Ticket unlock!' => 'Zg�oszenie odblokowane!',

    # Template: AgentTicketPrint
      'by' => 'przez',

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Zaraportowany czas',
      'Escalation in' => 'Eskalowane w',

    # Template: AgentUtilSearch
      '(e. g. 10*5155 or 105658*)' => '(np. 10*5155 lub 105658*)',
      '(e. g. 234321)' => '(np. 3242442)',
      '(e. g. U5150)' => '(np. U4543)',
      'and' => 'i',
      'Customer User Login' => 'Login Klienta',
      'Delete' => 'Kasuj',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Przeszukiwanie pe�notekstowe w artykule (np. "Ja*k" lub "Rumia*)',
      'No time settings.' => 'Brak ustawie� czasu',
      'Profile' => 'Profil',
      'Result Form' => 'Formularz wynik�w',
      'Save Search-Profile as Template?' => 'Zachowaj profil wyszukiwania jako szablon',
      'Search-Template' => 'Szablon wyszukiwania',
      'Select' => 'Zaznacz',
      'Ticket created' => 'Zg�oszenie utworzone',
      'Ticket created between' => 'Zg�oszenie utworzone mi�dzy',
      'Ticket Search' => 'Wyszukiwanie zg�oszenia',
      'TicketFreeText' => 'Dodatkowe informacje o zg�oszeniu',
      'Times' => 'Razy',
      'Yes, save it with name' => 'Tak, zapisz to pod nazw�',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Przeszukiwanie historii klienta',
      'Customer history search (e. g. "ID342425").' => 'Przeszukiwanie historii klienta (np. "ID342425").',
      'No * possible!' => 'Nie u�ywaj znaku "*"!',

    # Template: AgentUtilSearchNavBar
      'Change search options' => 'Zmie� kryteria wyszukiwania',
      'Results' => 'Wyniki',
      'Search Result' => 'Wyniki wyszukiwania',
      'Total hits' => 'Wszystkich trafie�',

    # Template: AgentUtilSearchResult
      '"}","15' => '',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultPrintTable
      '"}","30' => '',

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilSearchResultShortTable

    # Template: AgentUtilSearchResultShortTableNotAnswered

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'Wszystkie zamkni�te zg�oszenia',
      'All open tickets' => 'Wszystkie otwarte zg�oszenia',
      'closed tickets' => 'zamkni�te zg�oszenia',
      'open tickets' => 'otwarte zg�oszenia',
      'or' => 'lub',
      'Provides an overview of all' => 'Pozwala podejrze� wszystkie',
      'So you see what is going on in your system.' => 'Dzi�ki temu widzisz co dzieje si� w systemie.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'Napisz Odpowied� (Follow Up)',
      'Your own Ticket' => 'Twoje w�asne zg�oszenie',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'Napisz odpowied�',
      'Contact customer' => 'Skontaktuj si� z klientem',
      'phone call' => 'telefon',

    # Template: AgentZoomArticle
      'Split' => 'Podziel',

    # Template: AgentZoomBody
      'Change queue' => 'Zmie� kolejk�',

    # Template: AgentZoomHead
      'Free Fields' => 'Dodatkowe informacje',
      'Print' => 'Drukuj',

    # Template: AgentZoomStatus
      '"}","18' => '',

    # Template: CustomerCreateAccount
      'Create Account' => 'Utw�rz konto',

    # Template: CustomerError
      'Traceback' => '�led� wstecz',

    # Template: CustomerFAQArticleHistory
      'Edit' => 'Edytuj',
      'FAQ History' => 'Historia FAQ',

    # Template: CustomerFAQArticlePrint
      'Category' => 'Kategoria',
      'Keywords' => 'S�owa kluczowe',
      'Last update' => 'Ostatnia aktualizacja',
      'Problem' => 'Problem',
      'Solution' => 'Rozwi�zanie',
      'Symptom' => 'Objawy',

    # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => 'Historia FAQ',

    # Template: CustomerFAQArticleView
      'FAQ Article' => 'Artyku� FAQ',
      'Modified' => 'Zmodyfikowany',

    # Template: CustomerFAQOverview
      'FAQ Overview' => 'Podsumowanie FAQ',

    # Template: CustomerFAQSearch
      'FAQ Search' => 'Szukaj w FAQ',
      'Fulltext' => 'Pe�notekstowe',
      'Keyword' => 'S�owo kluczowe',

    # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'Wyniki przeszukiwania FAQ',

    # Template: CustomerFooter
      'Powered by' => 'Oparte na',

    # Template: CustomerHeader
      'Contact' => 'Kontakt',
      'Home' => 'Home',
      'Online-Support' => 'Serwis Online',
      'Products' => 'Produkty',
      'Support' => 'Serwis',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Zapomnia�e� has�a?',
      'Request new password' => 'Pro�ba o nowe has�o',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => 'Utw�rz nowe zg�oszenie',
      'FAQ' => 'FAQ',
      'New Ticket' => 'Nowe zg�oszenie',
      'Ticket-Overview' => 'Zgloszenie - Podgl�d',
      'Welcome %s' => 'Witaj %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView
      'My Tickets' => 'Moje zg�oszenia',

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Kliknij tutaj, by zg�osi� b��d systemu OTRS!',

    # Template: FAQArticleDelete
      'FAQ Delete' => 'Skasuj artyku� FAQ',
      'You really want to delete this article?' => 'Naprawd� chcesz usun�� ten artyku� FAQ?',

    # Template: FAQArticleForm
      'Comment (internal)' => 'Komentarz (wewn�trzny)',
      'Filename' => 'Nazwa pliku',
      'Short Description' => 'Kr�tki opis',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQCategoryForm
      'FAQ Category' => 'Kategoria FAQ',

    # Template: FAQLanguageForm
      'FAQ Language' => 'J�zyk FAQ',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: FAQStateForm
      'FAQ State' => 'Status FAQ',

    # Template: Footer
      'Top of Page' => 'G�ra strony',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => 'Stw�rz baz� danych',
      'Drop Database' => 'Usu� baz� danych',
      'Finished' => 'Zako�czono',
      'System Settings' => 'Ustawienia systemu',
      'Web-Installer' => 'Instalator Web',

    # Template: InstallerFinish
      'Admin-User' => 'Administrator',
      'After doing so your OTRS is up and running.' => 'Po zako�czeniu tych czynno�ci Tw�j system OTRS b�dzie gotowy do pracy',
      'Have a lot of fun!' => '�yczymy dobrej zabawy!',
      'Restart your webserver' => 'Uruchom ponownie serwer WWW',
      'Start page' => 'Strona startowa',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Musisz wpisa� nast�puj�ce polecenie w linii komend (Terminal/Shell).',
      'Your OTRS Team' => 'Tw�j Team OTRS',

    # Template: InstallerLicense
      'accept license' => 'akceptuj� Licencj�',
      'don\'t accept license' => 'nie akceptuj� Licencji',
      'License' => 'Licencja',

    # Template: InstallerStart
      'Create new database' => 'Stw�rz now� baz� danych',
      'DB Admin Password' => 'Has�o Administratora bazy danych',
      'DB Admin User' => 'U�ytkownik administruj�cy baz� danych',
      'DB Host' => 'Host bazy danych',
      'DB Type' => 'Typ bazy danych',
      'default \'hot\'' => 'domy�lne \'hot\'',
      'Delete old database' => 'Usu� star� baz� danych',
      'next step' => 'Nast�pny krok',
      'OTRS DB connect host' => 'Host bazy danych',
      'OTRS DB Name' => 'Nazwa bazy danych OTRS',
      'OTRS DB Password' => 'Has�o dost�pu do bazy dla OTRS',
      'OTRS DB User' => 'U�ytkownik bazy danych OTRS',
      'your MySQL DB should have a root password! Default is empty!' => 'Twoja baza danych MYSQL powinna mie� ustawione jakie� has�o dla u�ytkownika root. Domy�lnie jest puste!',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line!)' => '(Sprawd� rekordy MX dla u�ywanych w odpowiedziach adres�w email. Nie u�ywaj "Sprawd� rekord MX", gdy Tw�j system u�ywa po��czenia Dial-Up!)',
      '(Email of the system admin)' => '(Adres E-Mail Administratora Systemu)',
      '(Full qualified domain name of your system)' => '(Pe�na nazwa domeny Twojego systemu FQDN)',
      '(Logfile just needed for File-LogModule!)' => '(Logfile jest potrzebny jedynie dla modu�u File-Log!)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Identyfikator systemu. Wszystkie zg�oszenia oraz sesje http b�d� zaczyna�y si� od tego ci�gu)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identyfikator zg�oszenia. np. \'Ticket#\', \'Call#\' lub \'MyTicket#\')',
      '(Used default language)' => '(Domy�lny j�zyk)',
      '(Used log backend)' => '(U�ywany log backend)',
      '(Used ticket number format)' => '(U�ywany format numerowania zg�osze�)',
      'CheckMXRecord' => 'Sprawd� rekord MX',
      'Default Charset' => 'Domy�lne kodowanie',
      'Default Language' => 'Domy�lny j�zyk',
      'Logfile' => 'Plik logu',
      'LogModule' => 'Modu� logowania',
      'Organization' => 'Organizacja',
      'System FQDN' => 'Pe�na domena systemu FQDN',
      'SystemID' => 'ID Systemu',
      'Ticket Hook' => 'Identyfikator zg�oszenia',
      'Ticket Number Generator' => 'Generator numer�w zg�osze�',
      'Use utf-8 it your database supports it!' => 'U�ywaj kodowania UTF-8 je�li pozwala Ci na to baza danych!',
      'Webfrontend' => 'Interfejs webowy',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Brak dost�pu',

    # Template: Notify
      'Info' => 'Info',

    # Template: PrintFooter
      'URL' => 'URL',

    # Template: PrintHeader
      'printed by' => 'wydrukowane przez',

    # Template: QueueView
      'All tickets' => 'Wszystkie zg�oszenia',
      'Page' => 'Strona',
      'Queues' => 'Kolejki',
      'Tickets available' => 'Dost�pne zg�oszenia',
      'Tickets shown' => 'Pokazane zg�oszenia',

    # Template: SystemStats
      'Graphs' => 'Wykresy',

    # Template: Test
      'OTRS Test Page' => 'OTRS Strona testowa',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Eskalacja zg�oszenia!',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => 'Dodaj notatk�',

    # Template: Warning

    # Misc
      '(E-Mail of the system admin)' => '(Adres email Administratora)',
      'A message should have a From: recipient!' => 'Wiadomo�� musi zawiera� wype�nione pole Od: !',
      'AgentFrontend' => 'Frontend Agenta',
      'Article free text' => 'Dowolny tekst artyku�u',
      'Backend' => 'Backend',
      'BackendMessage' => 'Komunikat Backend',
      'Bottom of Page' => 'D� strony',
      'Charset' => 'Kodowanie',
      'Charsets' => 'Kodowania',
      'Closed' => 'Zamkni�te',
      'Create' => 'Utw�rz',
      'CustomerUser' => 'Klient',
      'Fulltext search' => 'Przeszukiwanie pe�notekstowe',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Przeszukiwanie pe�noteksotwe (np. "Tom*sz" lub "Jane*" lub "janek+rumianek")',
      'Handle' => 'Obs�uguj (Handle)',
      'In Queue' => 'W kolejce',
      'New state' => 'Nowy status',
      'New ticket via call.' => 'Nowe zg�oszenie telefoniczne.',
      'New user' => 'Nowy u�ytkownik',
      'Screen after new phone ticket' => 'Ekran po nowym zg�oszeniu telefonicznym',
      'Search in' => 'Szukaj w',
      'Select your screen after creating a new ticket via PhoneView.' => 'Wybierz ekran, kt�ry poka�e si� po stworzeniu nowego zg�oszenia telefonicznego',
      'Set customer id of a ticket' => 'Ustaw ID klienta dla zg�oszenia',
      'Show all' => 'Poka� wszystko',
      'System Charset Management' => 'Konfiguracja kodowania dla systemu',
      'System Language Management' => 'Konfiguracja jezyka systemu',
      'Ticket free text' => 'Dodatkowe informacje o zg�oszeniu',
      'Ticket limit:' => 'Limit zg�oszenia',
      'Time till escalation' => 'Czas do eskalacji',
      'With Priority' => 'Z priorytetem',
      'With State' => 'Ze statusem',
      'You have to be in the admin group!' => 'Musisz nale�e� do grupy Admin!',
      'You have to be in the stats group!' => 'Musisz nale�e� do grupy Stats!',
      'You need a email address (e. g. customer@example.com) in From:!' => 'Musisz wpisa� email (np. klient@przyklad.pl) w polu Od:!',
      'auto responses set' => 'ustawione AutoOdpowiedzi',
      'invalid-temporarily' => 'Tymczasowo nieu�ywane',
      'search' => 'szukaj',
      'search (e. g. 10*5155 or 105658*)' => 'szukaj (np. "10*5155" lub "105658*")',
      'store' => 'Store',
      'tickets' => 'Zg�oszenia',
      'valid' => 'poprawne',
    );

    # $$STOP$$

    $Self->{Translation} = \%Hash;
}
# --
1;
