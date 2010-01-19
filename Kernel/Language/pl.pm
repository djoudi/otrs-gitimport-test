# --
# Kernel/Language/pl.pm - provides Polish language translation
# Copyright (C) 2007 Tomasz Melissa <janek at rumianek.com>
# Copyright (C) 2009 Artur Skalski <skal.ar at wp.pl>
# --
# $Id: pl.pm,v 1.90 2010-01-19 22:57:48 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::pl;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.90 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Thu Jul  9 03:58:03 2009

    # possible charsets
    $Self->{Charset} = ['iso-8859-2', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%A %D %B %T %Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';
    $Self->{Separator}           = ';';

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
        'hour(s)' => 'godz.',
        'minute' => 'minuta',
        'minutes' => 'minut',
        'minute(s)' => 'minuta(minut)',
        'month' => 'miesi�c',
        'months' => 'miesi�cy',
        'month(s)' => 'miesi�c(-cy)',
        'week' => 'tydzie�',
        'week(s)' => 'tydzie�(tygodnie)',
        'year' => 'rok',
        'years' => 'lat',
        'year(s)' => 'rok(lat)',
        'second(s)' => 'sekund(a)',
        'seconds' => 'sekund',
        'second' => 'drugi',
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
        'Setting' => '',
        'Settings' => '',
        'Example' => 'Przyk�ad',
        'Examples' => 'Przyk�ady',
        'valid' => 'Poprawne',
        'invalid' => 'Niewa�ne',
        '* invalid' => '* Niewa�ne',
        'invalid-temporarily' => 'Czasowo niewa�ne',
        ' 2 minutes' => ' 2 Minuty',
        ' 5 minutes' => ' 5 Minut',
        ' 7 minutes' => ' 7 Minut',
        '10 minutes' => '10 Minut',
        '15 minutes' => '15 Minut',
        'Mr.' => 'Pan',
        'Mrs.' => 'Pani',
        'Next' => 'Dalej',
        'Back' => 'Powr�t',
        'Next...' => 'Dalej...',
        '...Back' => '...Powr�t',
        '-none-' => '-brak-',
        'none' => 'brak danych',
        'none!' => 'brak!',
        'none - answered' => 'brak - odpowiedziane',
        'please do not edit!' => 'nie edytowa�!',
        'AddLink' => 'Dodaj link',
        'Link' => 'Po��cz',
        'Unlink' => 'Roz��cz',
        'Linked' => 'Po��czone',
        'Link (Normal)' => 'Po��czone (r�wnorz�dnie)',
        'Link (Parent)' => 'Po��czone (Rodzic)',
        'Link (Child)' => 'Po��czone (Potomek)',
        'Normal' => 'Normalne',
        'Parent' => 'Rodzic',
        'Child' => 'Potomek',
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
        'CustomerIDs' => 'IDs Klienta',
        'customer' => 'klient',
        'agent' => 'agent',
        'system' => 'System',
        'Customer Info' => 'Informacja o kliencie',
        'Customer Company' => 'Firma klienta',
        'Company' => 'Firma',
        'go!' => 'Start!',
        'go' => 'Start',
        'All' => 'Wszystkie',
        'all' => 'wszystkie',
        'Sorry' => 'Przykro mi',
        'update!' => 'uaktualnij!',
        'update' => 'uaktualnij',
        'Update' => 'Uaktualnij',
        'Updated!' => 'Uaktualniono!',
        'submit!' => 'akceptuj!',
        'submit' => 'akceptuj',
        'Submit' => 'Akceptuj',
        'change!' => 'Zmie�!',
        'Change' => 'Zmie�',
        'change' => 'zmie�',
        'click here' => 'kliknij tutaj',
        'Comment' => 'Komentarz',
        'Valid' => 'Poprawne',
        'Invalid Option!' => 'B��dna opcja!',
        'Invalid time!' => 'B��dny czas!',
        'Invalid date!' => 'B�edna data!',
        'Name' => 'Nazwa',
        'Group' => 'Grupa',
        'Description' => 'Opis',
        'description' => 'opis',
        'Theme' => 'Schemat',
        'Created' => 'Utworzone',
        'Created by' => 'Utworzone przez',
        'Changed' => 'Zmienione',
        'Changed by' => 'Zmienione przez',
        'Search' => 'Szukaj',
        'and' => 'i',
        'between' => 'pomi�dzy',
        'Fulltext Search' => 'Wyszukiwanie pe�notekstowe',
        'Data' => 'Data',
        'Options' => 'Opcje',
        'Title' => 'Tytu�',
        'Item' => 'Pozycja',
        'Delete' => 'Kasuj',
        'Edit' => 'Edytuj',
        'View' => 'Widok',
        'Number' => 'Liczba',
        'System' => 'System',
        'Contact' => 'Kontakt',
        'Contacts' => 'Kontakty',
        'Export' => 'Eksport',
        'Up' => 'G�ra',
        'Down' => 'D�',
        'Add' => 'Dodaj',
        'Added!' => 'Dodano!',
        'Category' => 'Kategoria',
        'Viewer' => 'Przegl�darka',
        'Expand' => '',
        'New message' => 'Nowa wiadomo��',
        'New message!' => 'Nowa wiadomo��!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'Prosz� odpowiedz na to zg�oszenie, by m�c powroci� do zwyk�ego widoku kolejki zg�osze�!',
        'You got new message!' => 'Masz now� wiadomo��!',
        'You have %s new message(s)!' => 'Masz %s nowych wiadomo�ci!',
        'You have %s reminder ticket(s)!' => 'Masz %s przypomnie� o zg�oszeniach!',
        'The recommended charset for your language is %s!' => 'Sugerowane kodowanie dla Twojego j�zyka to %s!',
        'Passwords doesn\'t match! Please try it again!' => 'Has�a nie s� zgodne! Spr�buj ponownie!',
        'Password is already in use! Please use an other password!' => 'Has�o obecnie u�ywane! Wybierz inne has�o!',
        'Password is already used! Please use an other password!' => 'Has�o u�yte! Wybierz inne has�o!',
        'You need to activate %s first to use it!' => 'Musisz aktywowa� %s przed u�yciem!',
        'No suggestions' => 'Brak podpowiedzi',
        'Word' => 'S�owo',
        'Ignore' => 'Ignoruj',
        'replace with' => 'zamie� z',
        'There is no account with that login name.' => 'Nie istnieje konto z takim loginem.',
        'Login failed! Your username or password was entered incorrectly.' => 'Logowanie niepoprawne! Tw�j login lub has�o zosta�y wpisane niepoprawnie.',
        'Please contact your admin' => 'Skontaktuj si� z Administratorem',
        'Logout successful. Thank you for using OTRS!' => 'Wylogowanie zako�czone! Dzi�kujemy za u�ywanie OTRS!',
        'Invalid SessionID!' => 'Niepoprawne ID Sesji!',
        'Feature not active!' => 'Funkcja nie aktywna!',
        'Notifications (Event)' => '',
        'Login is needed!' => 'Wymagane zalogowanie!',
        'Password is needed!' => 'Has�o jest wymagane!',
        'License' => 'Licencja',
        'Take this Customer' => 'U�yj tego klienta!',
        'Take this User' => 'U�yj tego u�ytkownika',
        'possible' => 'mo�liwe',
        'reject' => 'odrzu�',
        'reverse' => 'odwr��',
        'Facility' => 'U�atwienie',
        'Timeover' => 'Przekroczenie czasu',
        'Pending till' => 'Oczekuje do',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'Nie u�ywaj u�ytkownika z UserID 1 (Konto systemowe)! Stw�rz nowych u�ytkownik�w!',
        'Dispatching by email To: field.' => 'Przekazywanie na podstawie pola DO:',
        'Dispatching by selected Queue.' => 'Przekazywanie na podstawie zaznaczonej kolejki.',
        'No entry found!' => 'Nic nie odnaleziono!',
        'Session has timed out. Please log in again.' => 'Sesja wygas�a. Zaloguj si� ponownie',
        'No Permission!' => 'Brak uprawnie�',
        'To: (%s) replaced with database email!' => 'DO: (%s) zamienione z adresem email z bazy danych',
        'Cc: (%s) added database email!' => 'Cc: (%s) zamienione z adresem email z bazy danych',
        '(Click here to add)' => '(By doda� kliknij tutaj)',
        'Preview' => 'Podgl�d',
        'Package not correctly deployed! You should reinstall the Package again!' => 'Pakiet niew�aciwie zainstalowany! Nale�y reinstalowa� pakiet!',
        'Added User "%s"' => 'Dodano u�ytkownika "%s"',
        'Contract' => 'Umowa',
        'Online Customer: %s' => 'Klient zalogowany: %s',
        'Online Agent: %s' => 'Agent zalogowany: %s',
        'Calendar' => 'Kalendarz',
        'File' => 'Plik',
        'Filename' => 'Nazwa pliku',
        'Type' => 'Typ',
        'Size' => 'Rozmiar',
        'Upload' => 'Wysy�anie',
        'Directory' => 'Katalog',
        'Signed' => 'Podpisany',
        'Sign' => 'Podpis',
        'Crypted' => 'Zaszyfrowany',
        'Crypt' => 'Szyfr',
        'Office' => 'Biuro',
        'Phone' => 'Tel.',
        'Fax' => 'Fax',
        'Mobile' => 'Tel. kom�rkowy',
        'Zip' => 'Kod',
        'City' => 'Miasto',
        'Street' => 'Ulica',
        'Country' => 'Kraj',
        'Location' => 'Miejsce',
        'installed' => 'zainstalowany',
        'uninstalled' => 'odinstalowany',
        'Security Note: You should activate %s because application is already running!' => 'Nota bezpiecze�stwa: Nale�y aktywowa� %s poniewa� aplikacja jest uruchomiona!',
        'Unable to parse Online Repository index document!' => 'Niedost�pne repozytorium on-line',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'Brak pakiet�w dla u�ywanej wersji Frameworka w tym repozytorium, ale s� pakiety dla innych wersji!',
        'No Packages or no new Packages in selected Online Repository!' => 'Brak pakiet�w lub brak nowych pakiet�w w wybranym repozytorium!',
        'printed at' => 'wydrukowano',
        'Dear Mr. %s,' => 'Drogi Panie %s,',
        'Dear Mrs. %s,' => 'Droga Pani %s,',
        'Dear %s,' => 'Drogi %s,',
        'Hello %s,' => 'Witaj %s,',
        'This account exists.' => 'Konto istnieje.',
        'New account created. Sent Login-Account to %s.' => 'Utworzono konto. Wys�ano login do %s.',
        'Please press Back and try again.' => 'Prosze wybrac Cofnij i spr�bowac ponownie.',
        'Sent password token to: %s' => 'Wys�ano token has�a do: %s',
        'Sent new password to: %s' => 'Wys�ano nowe has�o do: %s',
        'Upcoming Events' => '',
        'Event' => 'Zdarzenie',
        'Events' => '',
        'Invalid Token!' => 'B��dny token!',
        'more' => '',
        'For more info see:' => '',
        'Package verification failed!' => '',
        'Collapse' => '',
        'News' => '',
        'Product News' => '',
        'OTRS News' => '',
        '7 Day Stats' => '',
        'Bold' => '',
        'Italic' => '',
        'Underline' => '',
        'Font Color' => '',
        'Background Color' => '',
        'Remove Formatting' => '',
        'Show/Hide Hidden Elements' => '',
        'Align Left' => '',
        'Align Center' => '',
        'Align Right' => '',
        'Justify' => '',
        'Header' => '',
        'Indent' => '',
        'Outdent' => '',
        'Create an Unordered List' => '',
        'Create an Ordered List' => '',
        'HTML Link' => '',
        'Insert Image' => '',
        'CTRL' => '',
        'SHIFT' => '',
        'Undo' => '',
        'Redo' => '',

        # Template: AAAMonth
        'Jan' => 'Sty',
        'Feb' => 'Lut',
        'Mar' => 'Mar',
        'Apr' => 'Kwi',
        'May' => 'Maj',
        'Jun' => 'Cze',
        'Jul' => 'Lip',
        'Aug' => 'Sie',
        'Sep' => 'Wrz',
        'Oct' => 'Pa�',
        'Nov' => 'Lis',
        'Dec' => 'Gru',
        'January' => 'Stycze�',
        'February' => 'Luty',
        'March' => 'Marzec',
        'April' => 'Kwiecie�',
        'May_long' => 'Maj',
        'June' => 'Czerwiec',
        'July' => 'Lipiec',
        'August' => 'Sierpie�',
        'September' => 'Wrzesie�',
        'October' => 'Pa�dziernik',
        'November' => 'Listopad',
        'December' => 'Grudzie�',

        # Template: AAANavBar
        'Admin-Area' => 'Administracja',
        'Agent-Area' => 'Obs�uga',
        'Ticket-Area' => 'Zg�oszenia',
        'Logout' => 'Wyloguj',
        'Agent Preferences' => 'Ustawienia agenta',
        'Preferences' => 'Ustawienia',
        'Agent Mailbox' => 'Poczta',
        'Stats' => 'Statystyki',
        'Stats-Area' => 'Staystyki',
        'Admin' => 'Administracja',
        'Customer Users' => 'Klienci',
        'Customer Users <-> Groups' => 'Klienci <-> Grupy',
        'Users <-> Groups' => 'U�ytkownicy <-> Grupy',
        'Roles' => 'Role',
        'Roles <-> Users' => 'Role <-> U�ytkownicy',
        'Roles <-> Groups' => 'Role <-> Grupy',
        'Salutations' => 'Powitania',
        'Signatures' => 'Podpisy',
        'Email Addresses' => 'Adresy e-mail',
        'Notifications' => 'Powiadomienia',
        'Category Tree' => 'Drzewo kategorii',
        'Admin Notification' => 'Powiadomienia administratora',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Ustawienia zapisano pomy�lnie!',
        'Mail Management' => 'Zarz�dzanie poczt�',
        'Frontend' => 'Interfejs',
        'Other Options' => 'Inne opcje',
        'Change Password' => 'Zmie� has�o',
        'New password' => 'Nowe has�o',
        'New password again' => 'Ponownie nowe has�o',
        'Select your QueueView refresh time.' => 'Wybierz okres od�wierzania Podgl�du Kolejki.',
        'Select your frontend language.' => 'Wybierz j�zyk.',
        'Select your frontend Charset.' => 'Wybierz kodowanie.',
        'Select your frontend Theme.' => 'Wybierz schemat wygl�du systemu.',
        'Select your frontend QueueView.' => 'Wybierz Podgl�d Kolejki.',
        'Spelling Dictionary' => 'S�ownik pisowni',
        'Select your default spelling dictionary.' => 'Wybierz domy�lny s�ownik.',
        'Max. shown Tickets a page in Overview.' => 'Limit pokazywanych zg�osze� na stronie Podsumowania',
        'Can\'t update password, your new passwords do not match! Please try again!' => '',
        'Can\'t update password, invalid characters!' => 'Nie mo�na zmieni� has�a, niedozwolone znaki!',
        'Can\'t update password, must be at least %s characters!' => '',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => '',
        'Can\'t update password, needs at least 1 digit!' => '',
        'Can\'t update password, needs at least 2 characters!' => '',

        # Template: AAAStats
        'Stat' => 'Statystyki',
        'Please fill out the required fields!' => 'Wype�nij wymagane pola!',
        'Please select a file!' => 'Wybierz plik!',
        'Please select an object!' => 'Wybierz obiekt!',
        'Please select a graph size!' => 'Wybierz rozmiar wykresu!',
        'Please select one element for the X-axis!' => 'Wybierz element dla osi X!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Wybierz tylko jeden element lyb wy��cz klawisz\'Sta�e\' przy zaznaczonym polu!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Po zaznaczeniu pola wyboru musisz wskaza� atrybuty wybranego pola!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Wprowad� warto�� w wybrane pole lub odznacz pole \'Sta�y\'!',
        'The selected end time is before the start time!' => 'Czas zako�czenia wcze�niejszy od czasu rozpocz�cia!',
        'You have to select one or more attributes from the select field!' => 'Wska� jeden lub wi�cej atrybut z pola wyboru!',
        'The selected Date isn\'t valid!' => 'Wybrana data jest nieprawid�owa!',
        'Please select only one or two elements via the checkbox!' => 'Zaznacz tylko jeden lub dwa pola wyboru!',
        'If you use a time scale element you can only select one element!' => 'Je�eli u�ywasz skalowania czasu mo�esz wybra� tylko jeden element!',
        'You have an error in your time selection!' => 'B��d w wyborze czasu!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'Wybrany zakres czasu jest za ma�y, u�yj wi�kszej skali czasu!',
        'The selected start time is before the allowed start time!' => 'Wybrany czas pocz�tku jest przed dozwolonym czasem rozpocz�cia!',
        'The selected end time is after the allowed end time!' => 'Wybrany czas ko�ca przekracza dopuszczalny czas zako�czenia!',
        'The selected time period is larger than the allowed time period!' => 'Wybrany zakres czasu przekracza maksymalny dopuszczalny!',
        'Common Specification' => 'Podstawowa specyfikacja',
        'Xaxis' => 'O� X',
        'Value Series' => 'Serie warto�ci',
        'Restrictions' => 'Ograniczenia',
        'graph-lines' => 'wykres-linie',
        'graph-bars' => 'wykres-s�upki',
        'graph-hbars' => 'wykres-s�upki poziome',
        'graph-points' => 'wykres-punkty',
        'graph-lines-points' => 'wykres- linie i punkty',
        'graph-area' => 'obszar wykresu',
        'graph-pie' => 'wykres-ko�owy',
        'extended' => 'rozszerzony',
        'Agent/Owner' => 'Obs�uguj�cy/W�a�ciciel',
        'Created by Agent/Owner' => 'Utworzony przez Obs�uguj�cego/W�a�ciciela',
        'Created Priority' => 'Utworzony prirytet',
        'Created State' => 'Utworzony status',
        'Create Time' => 'Czas utworzenia',
        'CustomerUserLogin' => 'Login klienta',
        'Close Time' => 'Czas zamkni�cia',
        'TicketAccumulation' => '',
        'Attributes to be printed' => '',
        'Sort sequence' => '',
        'Order by' => '',
        'Limit' => '',
        'Ticketlist' => '',
        'ascending' => '',
        'descending' => '',
        'First Lock' => '',
        'Evaluation by' => '',
        'Total Time' => '',
        'Ticket Average' => '',
        'Ticket Min Time' => '',
        'Ticket Max Time' => '',
        'Number of Tickets' => '',
        'Article Average' => '',
        'Article Min Time' => '',
        'Article Max Time' => '',
        'Number of Articles' => '',
        'Accounted time by Agent' => '',
        'Ticket/Article Accounted Time' => '',
        'TicketAccountedTime' => '',
        'Ticket Create Time' => '',
        'Ticket Close Time' => '',

        # Template: AAATicket
        'Lock' => 'Zablokuj',
        'Unlock' => 'Odblokuj',
        'History' => 'Historia',
        'Zoom' => 'Podgl�d',
        'Age' => 'Wiek',
        'Bounce' => 'Odbij',
        'Forward' => 'Prze�lij dalej',
        'From' => 'Od',
        'To' => 'Do',
        'Cc' => 'Cc',
        'Bcc' => 'Bcc',
        'Subject' => 'Temat',
        'Move' => 'Przesu�',
        'Queue' => 'Kolejka',
        'Priority' => 'Priorytet',
        'Priority Update' => 'Aktualizacja priorytetu',
        'State' => 'Status',
        'Compose' => 'Stw�rz',
        'Pending' => 'Oczekuj�ce',
        'Owner' => 'W�a�ciciel',
        'Owner Update' => 'Aktualizacja w�asciciela',
        'Responsible' => 'Odpowiedzialny',
        'Responsible Update' => 'Aktualizacja odpowiedzialnego',
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
        'Free Fields' => 'Wolne pola',
        'Merge' => 'Scalaj',
        'merged' => 'scalone',
        'closed successful' => 'zamkni�te z powodzeniem',
        'closed unsuccessful' => 'zamkni�te bez powodzenia',
        'new' => 'nowe',
        'open' => 'otwarte',
        'Open' => '',
        'closed' => 'zamkni�te',
        'Closed' => '',
        'removed' => 'usuni�te',
        'pending reminder' => 'oczekuj�ce przypomnienie',
        'pending auto' => 'oczekuj�ce auto',
        'pending auto close+' => 'oczekuj�ce na automatyczne zamkni�cie+',
        'pending auto close-' => 'oczekuj�ce na automatyczne zamkni�cie-',
        'email-external' => 'e-mail zewn�trzny',
        'email-internal' => 'e-mail wewn�trzny',
        'note-external' => 'Notatka zewn�trzna',
        'note-internal' => 'Notatka wewn�trzna',
        'note-report' => 'Notatka raportujaca',
        'phone' => 'telefon',
        'sms' => 'SMS',
        'webrequest' => 'zg�oszenie WWW',
        'lock' => 'zablokuj',
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
        'Ticket Number' => 'Numer zg�oszenia',
        'Ticket Object' => 'Obiekt zg�oszenia',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Nie znaleziono zg�oszenia numer "%s"! Nie mozna po��czy�!',
        'Don\'t show closed Tickets' => 'Nie pokazuj zamkni�tych zg�osze�',
        'Show closed Tickets' => 'Poka� zamkni�te zg�oszenia',
        'New Article' => 'Nowy artyku�',
        'Email-Ticket' => 'Zg�oszenie e-mail',
        'Create new Email Ticket' => 'Utw�rz nowe zg�oszenie e-mail',
        'Phone-Ticket' => 'Zg�oszenie telefoniczne',
        'Search Tickets' => 'Szukaj zg�osze�',
        'Edit Customer Users' => 'Edycja klient�w',
        'Edit Customer Company' => 'Edycja firm',
        'Bulk Action' => '',
        'Bulk Actions on Tickets' => 'Akcja grupowa na zg�oszeniach',
        'Send Email and create a new Ticket' => 'Wylij e-mail i utw�rz nowe zg�oszenie',
        'Create new Email Ticket and send this out (Outbound)' => 'Utw�rz nowe zg�oszenie e-mail i wy�lij (wychodz�ce)',
        'Create new Phone Ticket (Inbound)' => 'Utw�rz zg�oszenie telefoniczne (przychodz�ce)',
        'Overview of all open Tickets' => 'Przegl�d otwartych zg�osze�',
        'Locked Tickets' => 'Zablokowane zg�oszenia',
        'Watched Tickets' => 'Obserwowane zg�oszenia',
        'Watched' => 'Obserwowane',
        'Subscribe' => 'Zapisz',
        'Unsubscribe' => 'Wypisz',
        'Lock it to work on it!' => 'Zablokuj w celu obs�ugi',
        'Unlock to give it back to the queue!' => 'Odblokuj i skieruj do kolejki!',
        'Shows the ticket history!' => 'Poka� histori� zg�oszenia!',
        'Print this ticket!' => 'Wydrukuj zg�oszenie!',
        'Change the ticket priority!' => 'Zmie� priorytet zg�oszenia!',
        'Change the ticket free fields!' => 'Zmie� wolne pola zg�oszenia!',
        'Link this ticket to an other objects!' => 'Po��cz zg�oszenie z innym!',
        'Change the ticket owner!' => 'Zmie� w�aciciela zg�oszenia!',
        'Change the ticket customer!' => 'Zmie� klienta zg�oszenia!',
        'Add a note to this ticket!' => 'Dodaj notatk� do zg�oszenia!',
        'Merge this ticket!' => 'Do��cz zg�oszenie!',
        'Set this ticket to pending!' => 'Ustaw zg�oszenie jako oczekuj�ce!',
        'Close this ticket!' => 'Zamknij zg�oszenie!',
        'Look into a ticket!' => 'Szczeg�y zg�oszenia!',
        'Delete this ticket!' => 'Usu� zg�oszenie!',
        'Mark as Spam!' => 'Oznacz jako spam!',
        'My Queues' => 'Moje kolejki',
        'Shown Tickets' => 'Poka� zg�oszenia',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Twoje zg�oszenie o numerze "<OTRS_TICKET>" zosta�o do��czone do "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Zg�oszenie %s: czas pierwszej odpowiedzi przekroczony (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Zg�oszenie %s: czas pierwszej odpowiedzi zostanie przekroczony za %s!',
        'Ticket %s: update time is over (%s)!' => 'Zg�oszenie %s: czas aktualizacji przekroczony (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Zg�oszenie %s: czas aktualizacji zostanie przekroczony za %s!',
        'Ticket %s: solution time is over (%s)!' => 'Zg�oszenie %s: czas rozwi�zania przekroczony (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Zg�oszenie %s: czas rozwi�zania zostanie przekroczony za %s!',
        'There are more escalated tickets!' => 'Wi�cej przeterminowanych zg�osze�!',
        'New ticket notification' => 'Powiadomienie o nowym zg�oszeniu',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Powiadom o nowym zg�oszeniu w moich kolejkach.',
        'Follow up notification' => 'Powiadomienie o odpowiedzi',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Wy�lij mi wiadomo��, gdy klient odpowie na zg�oszenie, kt�rego ja jestem w�a�cicielem.',
        'Ticket lock timeout notification' => 'Powiadomienie o przekroczonym czasie blokady zg�oszenia',
        'Send me a notification if a ticket is unlocked by the system.' => 'Wy�lij mi wiadomo��, gdy zg�oszenie zostanie odblokowane przez system.',
        'Move notification' => 'Powiadomienie o przesuni�ciu',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Powiadom o przesuni�ciu do mojej kolejki',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Tw�j zestaw wybranych kolejek spo�r�d ulubionych. Bedziesz powiadamiany o tych kolejkach przez e-mail je�eli us�ug� w��czono.',
        'Custom Queue' => 'Kolejka modyfikowana',
        'QueueView refresh time' => 'Okres od�wierzania Podgl�du Kolejki',
        'Screen after new ticket' => 'Ekran po nowym zg�oszeniu',
        'Select your screen after creating a new ticket.' => 'Wybierz ekran, kt�ry poka�e si� po rejestracji nowego zg�oszenia',
        'Closed Tickets' => 'Zamkni�te zg�oszenia',
        'Show closed tickets.' => 'Poka� zamkni�te zg�oszenia.',
        'Max. shown Tickets a page in QueueView.' => 'Limit pokazywanych zg�osze� na stronie Podgl�du Kolejki',
        'Watch notification' => 'Obserwuj powiadomienia',
        'Send me a notification of an watched ticket like an owner of an ticket.' => 'Wy�lij mi powiadomienie obserwowaych zg�osze� tak jak w�a�cicielowi zg�oszenia.',
        'Out Of Office' => 'Poza biurem',
        'Select your out of office time.' => 'Wybierz czas nieobecnosci',
        'CompanyTickets' => 'Zg�oszenia firmy',
        'MyTickets' => 'Moje zg�oszenia',
        'New Ticket' => 'Nowe zg�oszenie',
        'Create new Ticket' => 'Utw�rz nowe zg�oszenie',
        'Customer called' => 'Telefon od klienta',
        'phone call' => 'rozmowa telefoniczna',
        'Reminder Reached' => 'Przypomnienie osi�gni�to',
        'Reminder Tickets' => '',
        'Escalated Tickets' => '',
        'New Tickets' => '',
        'Open Tickets / Need to be answered' => '',
        'Tickets which need to be answered!' => '',
        'All new tickets!' => '',
        'All tickets which are escalated!' => '',
        'All tickets where the reminder date has reached!' => '',
        'Responses' => 'Odpowiedzi',
        'Responses <-> Queues' => 'Odpowied� <-> Kolejka',
        'Auto Responses' => 'Automatyczna odpowied�',
        'Auto Responses <-> Queues' => 'Automatyczna odpowied� <-> Kolejka',
        'Attachments <-> Responses' => 'Za��czniki <-> Odpowiedzi',
        'History::Move' => 'Zg�oszenie przeniesiono do kolejki "%s" (%s) z kolejki "%s" (%s).',
        'History::TypeUpdate' => 'Zaktualizowano typ do %s (ID=%s).',
        'History::ServiceUpdate' => 'Zaktualizowano us�ug� do %s (ID=%s).',
        'History::SLAUpdate' => 'Zaktualizowano SLA do %s (ID=%s).',
        'History::NewTicket' => 'Nowe zg�oszenie [%s] utworzone (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'FollowUp dla [%s]. %s',
        'History::SendAutoReject' => 'Automatyczne odrzucenie wys�ano do "%s".',
        'History::SendAutoReply' => 'Auto odpowied� wys�ano do "%s".',
        'History::SendAutoFollowUp' => 'AutoFollowUp wys�ano do "%s".',
        'History::Forward' => 'Przekazano do "%s".',
        'History::Bounce' => 'Bounced to "%s".',
        'History::SendAnswer' => 'E-mail wys�ano do "%s".',
        'History::SendAgentNotification' => '"%s"-powiadomienie wys�ano do "%s".',
        'History::SendCustomerNotification' => 'Powiadomienie wys�ano do "%s".',
        'History::EmailAgent' => 'E-mail wys�any do klienta.',
        'History::EmailCustomer' => 'Dodano e-mail. %s',
        'History::PhoneCallAgent' => 'Agent telefonowa� do klienta.',
        'History::PhoneCallCustomer' => 'klient telefonowa�.',
        'History::AddNote' => 'Dodano notatk� (%s)',
        'History::Lock' => 'Zablokowano zg�oszenie.',
        'History::Unlock' => 'Odblokowano zg�oszenie.',
        'History::TimeAccounting' => '%s jednostek czasu zliczono. Czas ca�kowity %s jednostek.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Zaktualizowano: %s',
        'History::PriorityUpdate' => 'Zmieniono priorytet z "%s" (%s) na "%s" (%s).',
        'History::OwnerUpdate' => 'Nowym w�a�cicielem jest "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop-Protection! Nie wyslano auto-odpowiedzi do "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Zaktualizowano: %s',
        'History::StateUpdate' => 'Stary: "%s" nowy: "%s"',
        'History::TicketFreeTextUpdate' => 'Zaktualizowano: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => '��danie klienta przez www.',
        'History::TicketLinkAdd' => 'Dodano ��cze do zg�oszenia "%s".',
        'History::TicketLinkDelete' => 'Usuni�to �acze ze zg�oszenia "%s".',
        'History::Subscribe' => 'Dodano subskrypcje dla u�ytkownika "%s".',
        'History::Unsubscribe' => 'Usuni�to subskrypcje dla u�ytkownika "%s".',

        # Template: AAAWeekDay
        'Sun' => 'Nie',
        'Mon' => 'Pon',
        'Tue' => 'Wt',
        'Wed' => '�r',
        'Thu' => 'Czw',
        'Fri' => 'Pi�',
        'Sat' => 'Sob',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Zarz�dzanie za��cznikami',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Zarz�dzanie automatycznymi odpowiedziami',
        'Response' => 'Odpowied�',
        'Auto Response From' => 'Automatyczna odpowied� Od',
        'Note' => 'Uwagi',
        'Useable options' => 'U�yteczne opcje',
        'To get the first 20 character of the subject.' => 'Poka� pierwsze 20 znak�w tematu.',
        'To get the first 5 lines of the email.' => 'Poka� 5 linii wiadomo�ci e-mail.',
        'To get the realname of the sender (if given).' => 'Poka� imi� i nazwisko nadawcy (je�eli poda�).',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'Atrybuty artyku�u (np. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'W�asno�ci aktualnego klienta(np. <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'W�asno�ci w�asciciela zg�oszenia (np. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'W�asno�ci odpowiedzialnego agenta (np. <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'W�asno�ci aktualnego u�ytkownika kt�ry wykona� akcj� (np. <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'W�asno�ci zg�oszenia (np. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'W�asno�ci systemu (np. <OTRS_CONFIG_HttpType>).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Zarz�dzanie firmami',
        'Search for' => 'Szukaj',
        'Add Customer Company' => 'Dodaj firm�',
        'Add a new Customer Company.' => 'Dodaj now� firm�',
        'List' => 'Lista',
        'These values are required.' => 'Warto�� wymagana.',
        'These values are read-only.' => 'Warto�� tylko do odczytu.',

        # Template: AdminCustomerUserForm
        'Title{CustomerUser}' => '',
        'Firstname{CustomerUser}' => '',
        'Lastname{CustomerUser}' => '',
        'Username{CustomerUser}' => '',
        'Email{CustomerUser}' => '',
        'CustomerID{CustomerUser}' => '',
        'Phone{CustomerUser}' => '',
        'Fax{CustomerUser}' => '',
        'Mobile{CustomerUser}' => '',
        'Street{CustomerUser}' => '',
        'Zip{CustomerUser}' => '',
        'City{CustomerUser}' => '',
        'Country{CustomerUser}' => '',
        'Comment{CustomerUser}' => '',
        'The message being composed has been closed.  Exiting.' => 'Wiadomo�� edytowana zosta�a zamkni�ta.  Wychodz�.',
        'This window must be called from compose window' => 'To okno musi zosta� wywo�ane z okna edycji',
        'Customer User Management' => 'Zarzadzanie klientami',
        'Add Customer User' => 'Dodaj klienta',
        'Source' => '�r�d�o',
        'Create' => 'Utw�rz',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'Klient jest wymagany aby obejrze� histori� i zalogowa� si� do panelu.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'Klienci <-> Grupy',
        'Change %s settings' => 'Zmie� %s ustawienia',
        'Select the user:group permissions.' => 'Wybierz prawa dost�pu dla u�ytkownika:grupy',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Je�li nic nie zaznaczono, wtedy u�ytkownik nie b�dzie mia� praw w tej grupie (zg�oszenia b�d� niedost�pne)',
        'Permission' => 'Prawo dost�pu',
        'ro' => 'odczyt',
        'Read only access to the ticket in this group/queue.' => 'Prawo jedynie do odczytu zg�osze� w tej grupie/kolejce',
        'rw' => 'odczyt/zapis',
        'Full read and write access to the tickets in this group/queue.' => 'Prawa pe�nego odczytu i zapisu zg�osze� w tej grupie/kolejce',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Klienci <-> Us�ugi',
        'CustomerUser' => 'Klient',
        'Service' => 'Us�uga',
        'Edit default services.' => 'Edycja domy�lnych us�ug.',
        'Search Result' => 'Wyniki wyszukiwania',
        'Allocate services to CustomerUser' => 'Przypisz us�ugi do klienta',
        'Active' => 'Aktywne',
        'Allocate CustomerUser to service' => 'Przypisz klienta do us�ugi',

        # Template: AdminEmail
        'Message sent to' => 'Wiadomo�� wys�ana do',
        'A message should have a subject!' => 'Wiadomosc powinna posiada� temat!',
        'Recipients' => 'Adresaci',
        'Body' => 'Tre��',
        'Send' => 'Wy�lij',

        # Template: AdminGenericAgent
        'GenericAgent' => 'Agent automatyczny',
        'Job-List' => 'Lista zada�',
        'Last run' => 'Ostatnie uruchomienie',
        'Run Now!' => 'Uruchom teraz',
        'x' => '',
        'Save Job as?' => 'Zapisz zadanie jako',
        'Is Job Valid?' => 'Zadanie jest wa�ne?',
        'Is Job Valid' => 'Zadanie jest wa�ne',
        'Schedule' => 'Harmonogram',
        'Currently this generic agent job will not run automatically.' => 'Zadanie nie zostanie uruchomione automatycznie.',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Przeszukiwanie pe�notekstowe w artykule (np. "Ja*k" lub "Rumia*)',
        '(e. g. 10*5155 or 105658*)' => '(np. 10*5155 lub 105658*)',
        '(e. g. 234321)' => '(np. 3242442)',
        'Customer User Login' => 'Login Klienta',
        '(e. g. U5150)' => '(np. U4543)',
        'SLA' => 'SLA',
        'Agent' => 'Agent',
        'Ticket Lock' => 'Zablokowanie zg�oszenia',
        'TicketFreeFields' => 'Wolne pola zg�oszenia',
        'Create Times' => 'Czasy utworzenia',
        'No create time settings.' => 'Bez czas�w utworzenia.',
        'Ticket created' => 'Zg�oszenie utworzone',
        'Ticket created between' => 'Zg�oszenie utworzone mi�dzy',
        'Close Times' => 'Czasy zamkni�cia',
        'No close time settings.' => 'Bez czas�w zamkniecia.',
        'Ticket closed' => 'Zg�oszenie zamkni�te',
        'Ticket closed between' => 'Zg�oszenie zamkni�te mi�dzy',
        'Pending Times' => 'Czasy oczekiwania',
        'No pending time settings.' => 'Bez czas�w oczekiwania.',
        'Ticket pending time reached' => 'Oczekiwanie zako�czone',
        'Ticket pending time reached between' => 'Oczekiwanie zako�czone mi�dzy',
        'Escalation Times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - First Response Time' => 'Eskalacja - czas pierwszej odpowiedzi',
        'No escalation time settings.' => '',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - Update Time' => 'Eskalacja - czas aktualizacji',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - Solution Time' => 'Eskalacja - czas rozwi�zania',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'New Service' => 'Nowa us�uga',
        'New SLA' => 'Nowa SLA',
        'New Priority' => 'Nowy priorytet',
        'New Queue' => 'Nowa kolejka',
        'New State' => 'Nowy status',
        'New Agent' => 'Nowy agent',
        'New Owner' => 'Nowy w�a�ciciel',
        'New Customer' => 'Nowy klient',
        'New Ticket Lock' => 'Nowa blokada zg�oszenia',
        'New Type' => 'Nowy typ',
        'New Title' => 'Nowy tytu�',
        'New TicketFreeFields' => 'Nowe wolne pole',
        'Add Note' => 'Dodaj notatk�',
        'Time units' => 'Jednostek czasu',
        'CMD' => 'linia polece�',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Komenda zostanie wykonana. ARG[0] to numer zg�oszenia. ARG[1] to id zg�oszenia.',
        'Delete tickets' => 'Usu� zg�oszenia',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Uwaga! Zg�oszenia zostan� usuniete z bazy danych! Zg�oszenia zostan� utracone!',
        'Send Notification' => 'Wy�lij powiadomienie',
        'Param 1' => 'Parametr 1',
        'Param 2' => 'Parametr 2',
        'Param 3' => 'Parametr 3',
        'Param 4' => 'Parametr 4',
        'Param 5' => 'Parametr 5',
        'Param 6' => 'Parametr 6',
        'Send agent/customer notifications on changes' => 'Wy�lij powidomienia agentowi/klientowi przy zmianie ',
        'Save' => 'Zapisz',
        '%s Tickets affected! Do you really want to use this job?' => '%s zg�osze� dotyczy! Chcesz wykona� zadanie?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => 'Uwaga: Jezeli zmienisz nazw� grupy \'admin\', przed wykonaniem w�a�ciwych zmian w SysConfig, zablokujesz panel administrator�w! Je�eli to nast�pi, przywr�� nazw� grupy admin z u�yciem SQL.',
        'Group Management' => 'Zarz�dzanie grupami',
        'Add Group' => 'Dodaj grup�',
        'Add a new Group.' => 'Dodaj now� grup�',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Grupa Admin pozwala posiada prawa Administracji systemem. Grupa Stats umo�liwia przegl�danie statystyk zg�osze�.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Stw�rz nowe grupy, by m�c efektywniej zarz�dza� dost�pem do zg�osze� r�nych grup ow (np. Serwisu, Sprzeda�y itp...).',
        'It\'s useful for ASP solutions.' => 'Pomocne w rozwi�zanich ASP.',

        # Template: AdminLog
        'System Log' => 'Log Systemu',
        'Time' => 'Czas',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Zarz�dzanie kontami e-mail',
        'Host' => 'Komputer',
        'Trusted' => 'Zaufane',
        'Dispatching' => 'Przekazanie',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Wszystkie przychodz�ce na jedno konto wiadomo�ci b�d� umieszczone w zaznacznej kolejce!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Jezeli konto jest zaufane, istniej�ce w chwili przybycia nag��wki X-OTRS (priorytet, ...) zostan� u�yte! Filtr PostMaster zostanie wykonany.',

        # Template: AdminNavigationBar
        'Users' => 'U�ytkownicy',
        'Groups' => 'Grupy',
        'Misc' => 'R�ne',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Konfiguracja Powiadomie�',
        'Add Notification' => '',
        'Add a new Notification.' => '',
        'Name is required!' => 'Nazwa jest wymagana!',
        'Event is required!' => '',
        'A message should have a body!' => 'Wiadomo�� powinna zawiera� jak�� tre��!',
        'Recipient' => '',
        'Group based' => '',
        'Recipient' => '',
        'Agent based' => '',
        'Email based' => '',
        'Article Type' => '',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '',
        'Only for ArticleCreate Event.' => '',
        'Body match' => '',
        'Notifications are sent to an agent or a customer.' => 'Powiadomienia s� wysy�ane do agenta obs�ugi lub klienta',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => 'Powiadomienie',

        # Template: AdminPackageManager
        'Package Manager' => 'Mened�er pakiet�w',
        'Uninstall' => 'Odinstaluj',
        'Version' => 'Wersja',
        'Do you really want to uninstall this package?' => 'Czy na pewno chcesz odinstalowa� ten pakiet?',
        'Reinstall' => 'Przeinstaluj',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Czy chcesz przeinstalowa� pakiet (wszystkie zmiany r�czne zostan� utracone)?',
        'Continue' => 'Kontynuuj',
        'Install' => 'Instaluj',
        'Package' => 'Pakiet',
        'Online Repository' => 'Baza on-line',
        'Vendor' => 'Wydawca',
        'Module documentation' => 'Dokumentacja modu�u',
        'Upgrade' => 'Aktualizacja',
        'Local Repository' => 'Lokalna baza',
        'Status' => 'Status',
        'Overview' => 'Podsumowanie',
        'Download' => 'Pobierz',
        'Rebuild' => 'Przebuduj',
        'ChangeLog' => 'Lista zmian',
        'Date' => 'Data',
        'Filelist' => 'Lista plik�w',
        'Download file from package!' => 'Pobierz plik z pakietu!',
        'Required' => 'Wymagany',
        'PrimaryKey' => 'Klucz podstawowy',
        'AutoIncrement' => 'Zwi�kszaj automatycznie',
        'SQL' => 'SQL',
        'Diff' => 'R�nica',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Log wydajnosci',
        'This feature is enabled!' => 'Ta funkcja jest w��czona!',
        'Just use this feature if you want to log each request.' => 'Wybierz t� opcj� jezeli chcesz logowa� ka�de ��danie.',
        'Activating this feature might affect your system performance!' => '',
        'Disable it here!' => 'Wy��cz tutaj!',
        'This feature is disabled!' => 'Ta funkcja jest wy��czona!',
        'Activating this feature might affect your system performance!' => '',
        'Enable it here!' => 'W��cz tutaj!',
        'Logfile too large!' => 'Plik log jest za du�y!',
        'Logfile too large, you need to reset it!' => 'Plik log jest za du�y, nale�y go usun��!',
        'Range' => 'Zakres',
        'Interface' => 'Interfejs',
        'Requests' => '��dania',
        'Min Response' => 'Min. odpowied�',
        'Max Response' => 'Max odpowied�',
        'Average Response' => '�rednia odpowied�',
        'Period' => 'Okres',
        'Min' => 'Min.',
        'Max' => 'Max.',
        'Average' => '�rednia',

        # Template: AdminPGPForm
        'PGP Management' => 'Zarz�dzanie PGP',
        'Result' => 'Wynik',
        'Identifier' => 'Identyfikator',
        'Bit' => 'Bit',
        'Key' => 'Klucz',
        'Fingerprint' => 'Znacznik (fingerprint)',
        'Expires' => 'Wygasa',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'W ten spos�b mozesz bezpo�rednio edytowa� plik kluczy skonfigurowany w SysConfig.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Zarz�dzanie filtrami poczty',
        'Filtername' => 'Nazwa filtra',
        'Stop after match' => 'Zatrzymaj po dopasowaniu',
        'Match' => 'Odpowiada',
        'Header' => '',
        'Value' => 'Warto��',
        'Set' => 'Ustaw',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Dostarcz lub filtruj przychodz�ce wiadomo�ci w oparciu o nag��wki X-Headers! Wyra�enia regularne (RegExp) tak�e mog� by� u�yte.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Je�eli chcesz tylko dopasowa� adres e-mail u�yj EMAILADDRESS:info@example.com w polach Od, Do lub Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Je�eli u�ywasz wzorc�w regularnych (RegExp), mo�esz tak�e u�y� dopasowanych warto�ci w () jako [***] w \'Set\'.',

        # Template: AdminPriority
        'Priority Management' => 'Zarz�dzanie priorytetami',
        'Add Priority' => 'Dodaj priorytet',
        'Add a new Priority.' => 'Dodaj nowy priorytet',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'Kolejka <-> Zarz�dzanie automatycznymi odpowiedziami',
        'settings' => 'ustawienia',

        # Template: AdminQueueForm
        'Queue Management' => 'Zarzadzanie kolejkami',
        'Sub-Queue of' => 'Kolejka podrz�dna',
        'Unlock timeout' => 'Limit czasowy odblokowania',
        '0 = no unlock' => '0 = bez odblokowania',
        'Only business hours are counted.' => 'Tylko godziny pracy s� liczone.',
        '0 = no escalation' => '0 = brak eskalacji',
        'Notify by' => 'Powiadom przez',
        'Follow up Option' => 'Opcja Follow Up',
        'Ticket lock after a follow up' => 'Zg�oszenie zablokowane po odpowiedzi (Follow Up)',
        'Systemaddress' => 'Adres systemowy',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Je�li agent zablokuje zg�oszenie, a nast�pnie nie odpowie na nie w ci�gu wskazanego czasu, wtedy zg�oszenie zostanie automatycznie odblokowane. Dzi�ki temu pozostali agenci b�d� mogli je zobaczy�.',
        'Escalation time' => 'Czas eskalacji',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Je�li, w podanym czasie, nie zostanie udzielona odpowied� na zg�oszenie, wtedy tylko to zg�oszenie b�dzie widoczne w kolejce.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Je�li zg�oszenie by�o zamkni�te, a klient przy�le do niego kolejn� odpowied�, wtedy zg�oszenie zostanie zablokowane w kolejce starego w�a�ciciela.',
        'Will be the sender address of this queue for email answers.' => 'B�dzie adresem nadawcy odpowiedzi emailowych wysy�anych z tej kolejki.',
        'The salutation for email answers.' => 'Zwrot grzeczno�ciowy dla odpowiedzi emailowych.',
        'The signature for email answers.' => 'Podpis dla odpowiedzi emailowych.',
        'Customer Move Notify' => 'Powiadomienie klienta o przesuni�ciu',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'System wy�le powiadomienie do klienta, gdy zg�oszenie zostanie przesuni�te do innej kolejki.',
        'Customer State Notify' => 'Powiadomienie klienta o zmianie statusu',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'System wy�le powiadomienie do klienta, gdy zmieni sie status zg�oszenia.',
        'Customer Owner Notify' => 'Powiadomienie klienta o zmianie w�a�ciciela',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'System wy�le powiadomienie do klienta, gdy zmieni sie w�a�ciciel zg�oszenia.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'Odpowiedzi <-> Zarz�dzanie kolejkami',

        # Template: AdminQueueResponsesForm
        'Answer' => 'Odpowied�',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'Odpowiedzi <-> Zarz�dzanie za��cznikami',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Konfiguracja Odpowiedzi',
        'A response is default text to write faster answer (with default text) to customers.' => 'Odpowied� to domy�lny tekst wstawiany do odpowiedzi klientowi, dzi�ki czemu agent mo�e szybciej odpowiedzie� na zg�oszenie.',
        'Don\'t forget to add a new response a queue!' => 'Nie zapomnij powi�za� nowej odpowiedzi z jak�� kolejk�!',
        'The current ticket state is' => 'Aktualny status zg�oszenia to',
        'Your email address is new' => 'Ustawiono nowy adres e-mail',

        # Template: AdminRoleForm
        'Role Management' => 'Zarz�dzanie rolami',
        'Add Role' => 'Dodaj rol�',
        'Add a new Role.' => 'Dodaj now� rol�',
        'Create a role and put groups in it. Then add the role to the users.' => 'Utw�rz rol� i dodaj grup� do niej. Potem dodaj rol� do u�ytkownika.',
        'It\'s useful for a lot of users and groups.' => 'U�yteczne dla wielu u�ytkownik�w i grup.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'Role <-> Zarz�dzanie grupami',
        'move_into' => 'przesu� do',
        'Permissions to move tickets into this group/queue.' => 'Uprawnienia do przesuwania zg�osze� do tej grupy/kolejki',
        'create' => 'utw�rz',
        'Permissions to create tickets in this group/queue.' => 'Uprawnienia do tworzenia zg�osze� w tej grupie/kolejce',
        'owner' => 'w�a�ciciel',
        'Permissions to change the ticket owner in this group/queue.' => 'Uprawnienia do zmiany w�a�ciciela zg�oszenia w tej grupie/kolejce',
        'priority' => 'priorytet',
        'Permissions to change the ticket priority in this group/queue.' => 'Uprawnienia do zmiany priorytetu zg�oszenia w tej grupie/kolejce',

        # Template: AdminRoleGroupForm
        'Role' => 'Rola',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => ' Role <-> Zarz�dzanie u�ytkownikami',
        'Select the role:user relations.' => 'Wybierz role: relacje u�ytkownik�w.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Konfiguracja zwrot�w grzeczno�ciowych',
        'Add Salutation' => 'Dodaj zwrot grzeczno�ciowy',
        'Add a new Salutation.' => 'Dodaj nowy zwrot grzeczno�ciowy',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' => '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'Konsola SQL',
        'Limit' => '',
        'CVS' => '',
        'HTML' => '',
        'Select Box Result' => 'Wyniki Zapytania',

        # Template: AdminService
        'Service Management' => 'Konfiguracja us�ug',
        'Add Service' => 'Dodaj us�ug�',
        'Add a new Service.' => 'Dodaj now� us�ug�',
        'Sub-Service of' => 'Us�uga podrz�dna wobec',

        # Template: AdminSession
        'Session Management' => 'Zarz�dzanie sesjami',
        'Sessions' => 'Sesje',
        'Uniq' => 'Unikalne',
        'Kill all sessions' => 'Zako�cz wszystkie sesje',
        'Session' => 'Sesja',
        'Content' => 'Zawarto��',
        'kill session' => 'Zamknij sesj�',

        # Template: AdminSignatureForm
        'Signature Management' => 'Konfiguracja podpis�w',
        'Add Signature' => 'Dodaj podpis',
        'Add a new Signature.' => 'Dodaj nowy podpis',

        # Template: AdminSLA
        'SLA Management' => 'KOnfiguracja SLA',
        'Add SLA' => 'Dodaj SLA',
        'Add a new SLA.' => 'Dodaj now� SLA',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'Konfiguracja S/MIME',
        'Add Certificate' => 'Dodaj certyfikat',
        'Add Private Key' => 'Dodaj klucz prywatny',
        'Secret' => 'Has�o',
        'Hash' => 'Skr�t (hash)',
        'In this way you can directly edit the certification and private keys in file system.' => 'W taki spos�b mo�esz bezpo�rednio edytowa� certyfikaty i klucze prywarne w systemie plik�w',

        # Template: AdminStateForm
        'State Management' => 'Konfiguracja status�w',
        'Add State' => 'Dodaj status',
        'Add a new State.' => 'Dodaj nowy status',
        'State Type' => 'Typ statusu',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Pami�taj, by auktualni� r�wnie� domy�lne statusy w pliku Kernel/Config.pm !',
        'See also' => 'Zobacz tak�e',

        # Template: AdminSysConfig
        'SysConfig' => 'Konfiguracja systemu',
        'Group selection' => 'Wybierz grup�',
        'Show' => 'Poka�',
        'Download Settings' => 'Pobierz ustawienia',
        'Download all system config changes.' => 'Pobierz wszystkie ustawienia systemowe.',
        'Load Settings' => 'Za�aduj ustawienia',
        'Subgroup' => 'Podgrupa',
        'Elements' => 'Elementy',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Opcje konfiguracyjne',
        'Default' => 'Domyslne',
        'New' => 'Nowe',
        'New Group' => 'Nowa grupa',
        'Group Ro' => 'Grupa ro',
        'New Group Ro' => 'Nowa grupa ro',
        'NavBarName' => 'Nazwa paska nawigacyjnego',
        'NavBar' => 'Pasek nawigacyjny',
        'Image' => 'Obraz',
        'Prio' => 'Priorytet',
        'Block' => 'Blok',
        'AccessKey' => 'Klawisz skr�tu',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Konfiguracja adres�w email Systemu',
        'Add System Address' => 'Dodaj adres systemowy',
        'Add a new System Address.' => 'Dodaj nowy adres systemowy',
        'Realname' => 'Prawdziwe Imi� i Nazwisko',
        'All email addresses get excluded on replaying on composing an email.' => 'Wszystkie adresy e-mail zostan� wykluczone z odpowiedzi.',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Wszystkie wiadomo�ci przys�ane na ten adres w polu (Do:) zostan� umieszczone w tej kolejce.',

        # Template: AdminTypeForm
        'Type Management' => 'Zarz�dzanie typami',
        'Add Type' => 'Dodaj typ',
        'Add a new Type.' => 'Dodaj nowy typ',

        # Template: AdminUserForm
        'User Management' => 'Zarz�dzanie u�ytkownikami',
        'Add User' => 'Dodaj agenta',
        'Add a new Agent.' => 'Dodaj nowego agenta',
        'Login as' => 'Zaloguj jako',
        'Title{user}' => '',
        'Firstname' => 'Imi�',
        'Lastname' => 'Nazwisko',
        'Start' => 'Pocz�tek',
        'End' => 'Koniec',
        'User will be needed to handle tickets.' => 'U�ytkownik b�dzie niezb�dny do obs�ugi zg�oszenia.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Nie zapomnij doda� u�ytkownika do grup i/lub r�l!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'U�ytkownicy <-> Zarz�dzanie grupami',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Ksi��ka adresowa',
        'Return to the compose screen' => 'Powr�� do ekranu edycji',
        'Discard all changes and return to the compose screen' => 'Anuluj wszystkie zmiany i powr�� do ekranu edycji',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerSearch

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => '',
        'more' => '',
        'Settings' => '',
        'Expand' => '',
        'Collapse' => '',

        # Template: AgentDashboardCalendarOverview
        'in' => '',

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '',
        'Please update now.' => '',
        'Release Note' => '',
        'Level' => '',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '',

        # Template: AgentDashboardTicketOverview

        # Template: AgentDashboardTicketStats
        'Closed' => '',

        # Template: AgentInfo
        'Info' => 'Info',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Przypisz obiekt: %s',
        'Object' => 'Obiekt',
        'Link Object' => 'Przypisz obiekt',
        'with' => 'z',
        'Select' => 'Zaznacz',
        'Unlink Object: %s' => 'Oddziel obiekt: %s',

        # Template: AgentLookup
        'Lookup' => 'Wyszukiwanie',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'S�ownik',
        'spelling error(s)' => 'b��d�w j�zykowych',
        'or' => 'lub',
        'Apply these changes' => 'Zastosuj te zmiany',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Na pewno chcesz usun�� ten obiekt?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'Wybierz ograniczenia do opisania raportu.',
        'Fixed' => 'Sta�y',
        'Please select only one element or turn off the button \'Fixed\'.' => 'Wybierz jeden element lub odznacz przycisk \'Sta�y\'',
        'Absolut Period' => 'Bezwzgl�dny przedzia�',
        'Between' => 'Pomiedzy',
        'Relative Period' => 'Wzgledny przedzia�',
        'The last' => 'Ostatni',
        'Finish' => 'Koniec',
        'Here you can make restrictions to your stat.' => 'Tu mo�esz na�o�y� ograniczenia na sw�j raport.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Je�eli usuniesz znacznik  w polu "Fixed", agent b�dzie m�g� zmieni� atrybuty powiazanego elementu.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Wstaw podstawowe parametry',
        'Permissions' => 'Prawa',
        'Format' => 'Format',
        'Graphsize' => 'Wielko�� wykresu',
        'Sum rows' => 'Suma wierszy',
        'Sum columns' => 'Suma kolumn',
        'Cache' => 'Pami�� podr�czna',
        'Required Field' => 'Pole wymagane',
        'Selection needed' => 'Wyb�r wymagany',
        'Explanation' => 'Wyja�nienie',
        'In this form you can select the basic specifications.' => 'W tym formularzu mo�esz wybra� podstawowe parametry.',
        'Attribute' => 'Atrybut',
        'Title of the stat.' => 'Tytu� statystyki.',
        'Here you can insert a description of the stat.' => 'Tu mo�esz doda� opis startstyki.',
        'Dynamic-Object' => 'Obiekt dynamiczny',
        'Here you can select the dynamic object you want to use.' => 'Tu mo�esz wybra� obiekt dynamiczny kt�rego chcesz u�y�.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(Uwaga: Od instalacji zale�y ile obiekt�w dynamicznych mo�esz u�y�)',
        'Static-File' => 'Plik statyczny',
        'For very complex stats it is possible to include a hardcoded file.' => 'Dla bardzo skomplikowanych statystyk mo�na u�y� pliku prekompilowanego.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'Je�eli nowy plik prekompilowany bedzie dostepny, ten atrybut zostanie wy�wietlony i bedziesz m�g� wybra� jeden.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Ustawienia dostepu. Wybierz grupy mog�ce udost�pnia� przygotowane raporty dla innych agent�w.',
        'Multiple selection of the output format.' => 'Wielokrotny wyb�r formatu wyjsciowego.',
        'If you use a graph as output format you have to select at least one graph size.' => 'Je�eli u�ywasz wykresu jako formaty wyjsciowego musisz okresli� jego rozmiar.',
        'If you need the sum of every row select yes' => 'Je�eli chcesz sumowa� wiersze wybierz tak.',
        'If you need the sum of every column select yes.' => 'Je�eli chcesz sumowa� kolumny wybierz tak.',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'Wi�kszo�� raport�w mo�e by� umieszczona w pami�ci podr�cznej. Przyspiesza to wy�wietlanie tych raport�w.',
        '(Note: Useful for big databases and low performance server)' => '(Uwaga: U�yteczne dla duzych baz i wolnych serwer�w)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Niewa�ny raport nie mo�e zosta� wygenerowany.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'To jest u�yteczna blokada je�eli chcesz uniemo�liwi� generowanie raportu przed zako�czeniem tworzenia wzorca.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'Wybierz elementy dla serii danych',
        'Scale' => 'Skala',
        'minimal' => 'minimum',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Pami�taj �e skala warto�ci moze by� wi�ksza od skali osi X (np. o� X => Miesi�ce, Warto�ci => Rok).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Tu mozesz zdefiniowac warto�ci. Mo�esz wybra� jeden lub dwa elementy. Potemmozesz wybrac atrybuty element�w. Ka�dy atrybut zostanie pokazany jako seria warto�ci. Jezeli nie wybierzesz �adnego z atrybut�w elementu wszystkie zostana u�yte przy generowaniu raportu. Tak samo jak nowe atrybuty dodane po ostatniej konfiguracji szablonu.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'Wybierz element kt�ry b�dzie uzyty jako o� X',
        'maximal period' => 'maksymalny przedzia�',
        'minimal scale' => 'minimalna skala',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsImport
        'Import' => 'Import',
        'File is not a Stats config' => 'Plik nie jest szablonem rapoortu',
        'No File selected' => 'Nie wybrano pliku',

        # Template: AgentStatsOverview
        'Results' => 'Wyniki',
        'Total hits' => 'Wszystkich trafie�',
        'Page' => 'Strona',

        # Template: AgentStatsPrint
        'Print' => 'Drukuj',
        'No Element selected.' => 'Nie wybrano elementu.',

        # Template: AgentStatsView
        'Export Config' => 'Eksportuj Config',
        'Information about the Stat' => 'Informacja o szablonie',
        'Exchange Axis' => 'Zamie� osie',
        'Configurable params of static stat' => 'Konfigurowalne parametry statycznego raportu',
        'No element selected.' => 'Nie wybrano elementu',
        'maximal period from' => 'maksymalny przedzia� od',
        'to' => 'do',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'Mo�esz utworzy� szablony z wykorzystaniem p�l wyboru i wprowadzania danych wed�ug w�asnych potrzeb. Kt�re elementy mo�esz edytowa� okre�li� administrator statystyk kt�ry konfigurowa� modu� statystyk.',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => 'Wiadomo�� musi zawiera� wype�nione adresem polu Do: (odbiorca)!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'W polu Do: musi znale�� si� adres email (np. klient@przyklad.pl)!',
        'Bounce ticket' => 'Odbij zg�oszenie',
        'Ticket locked!' => 'Zg�oszenie zablokowane!',
        'Ticket unlock!' => 'Zg�oszenie odblokowane!',
        'Bounce to' => 'Odbij do',
        'Next ticket state' => 'Nast�pny status zg�oszenia',
        'Inform sender' => 'Powiadom nadawc�',
        'Send mail!' => 'Wy�lij wiadomo��!',

        # Template: AgentTicketBulk
        'You need to account time!' => 'Musisz zaraportowa� czas!',
        'Ticket Bulk Action' => 'Akcja grupowa',
        'Spell Check' => 'Sprawd� poprawno��',
        'Note type' => 'Typ notatki',
        'Next state' => 'Nast�pny status',
        'Pending date' => 'Data oczekiwania',
        'Merge to' => 'Przy��cz do',
        'Merge to oldest' => 'Przy��cz do najstarszego',
        'Link together' => 'Po��cz razem',
        'Link to Parent' => 'Do��cz do rodzica',
        'Unlock Tickets' => 'Odblokuj zg�oszenia',

        # Template: AgentTicketClose
        'Ticket Type is required!' => 'Typ zg�oszenia jest wymagany!',
        'A required field is:' => 'Wymagane pole to:',
        'Close ticket' => 'Zamknij zg�oszenie',
        'Previous Owner' => 'Poprzedni w�a�ciciel',
        'Inform Agent' => 'Poinformuj agenta',
        'Optional' => 'Opcjonalny',
        'Inform involved Agents' => 'Poinformuj zaanga�owanych agent�w',
        'Attach' => 'Wstaw',

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

        # Template: AgentTicketEmail
        'Compose Email' => 'Nowa wiadomo��',
        'new ticket' => 'Nowe zg�oszenie',
        'Refresh' => 'Odswie�',
        'Clear To' => 'Wyczy�� do',
        'All Agents' => 'Wszyscy agenci',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Typ artyku�u',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Dodaj lub zmie� dodatkowe informacje o zg�oszeniu',

        # Template: AgentTicketHistory
        'History of' => 'Historia',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => 'Musisz u�y� numeru zg�oszenia!',
        'Ticket Merge' => 'Scal zg�oszenie',

        # Template: AgentTicketMove
        'If you want to account time, please provide Subject and Text!' => '',
        'Move Ticket' => 'Przesu� zg�oszenie',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Dodaj notatk� do zg�oszenia',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => 'Czas pierwszej odpowiedzi',
        'Service Time' => 'Czas obs�ugi',
        'Update Time' => 'Czas aktualizacji',
        'Solution Time' => 'Czas rozwiazania',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => 'Musisz wybra� conajmniej jedno zg�oszenie!',
        'Bulk Action' => '',

        # Template: AgentTicketOverviewNavBar
        'Filter' => 'Filtr',
        'Change search options' => 'Zmie� kryteria wyszukiwania',
        'Tickets' => 'Zg�oszenia',
        'of' => 'z',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'Napisz odpowied�',
        'Contact customer' => 'Skontaktuj si� z klientem',
        'Change queue' => 'Zmie� kolejk�',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 'sortuj rosn�co',
        'up' => 'g�ra',
        'sort downward' => 'sortuj malej�co',
        'down' => 'd�',
        'Escalation in' => 'Eskalowane w',
        'Locked' => 'Zablokowane',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Zmie� w�a�ciciela zg�oszenia',

        # Template: AgentTicketPending
        'Set Pending' => 'Ustaw oczekiwanie',

        # Template: AgentTicketPhone
        'Phone call' => 'Telefon',
        'Clear From' => 'Wyczy�� pole Od:',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Puste',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Informacje o zg�oszeniu',
        'Accounted time' => 'Zaraportowany czas',
        'Linked-Object' => 'Powi�zany obiekt',
        'by' => 'przez',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Zmie� priorytet zg�oszenia',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Pokazane zg�oszenia',
        'Tickets available' => 'Dost�pne zg�oszenia',
        'All tickets' => 'Wszystkie zg�oszenia',
        'Queues' => 'Kolejki',
        'Ticket escalation!' => 'Eskalacja zg�oszenia!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Zmie� odpowiedzialnego za zg�oszenie',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Wyszukiwanie zg�oszenia',
        'Profile' => 'Profil',
        'Search-Template' => 'Szablon wyszukiwania',
        'TicketFreeText' => 'Dodatkowe informacje o zg�oszeniu',
        'Created in Queue' => 'Utworzono w kolejce',
        'Article Create Times' => 'Czasy utworzenia artyku�u',
        'Article created' => 'Artuku� utworzono',
        'Article created between' => 'Artuku� utworzono pomi�dzy',
        'Change Times' => 'Zmie� czasy',
        'No change time settings.' => 'Brak zmiany ustawie� czasu',
        'Ticket changed' => 'Zg�oszenie zmieniono',
        'Ticket changed between' => 'Zg�oszenie zmieniono pomi�dzy',
        'Result Form' => 'Formularz wynik�w',
        'Save Search-Profile as Template?' => 'Zachowaj profil wyszukiwania jako szablon',
        'Yes, save it with name' => 'Tak, zapisz to pod nazw�',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'Pe�notekstowe',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => 'Rozwi� widok',
        'Collapse View' => 'Zwi� widok',
        'Split' => 'Podziel',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => 'Ustawienie filtra artyku��w',
        'Save filter settings as default' => 'Zapisz ustawienia filtru jako domy�lne',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

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
        'Login' => 'Login',
        'Lost your password?' => 'Zapomnia�e� has�a?',
        'Request new password' => 'Pro�ba o nowe has�o',
        'Create Account' => 'Utw�rz konto',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Witaj %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Razy',
        'No time settings.' => 'Brak ustawie� czasu',

        # Template: CustomerTicketSearchOpenSearchDescription

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
        'Home' => 'Pocz�tek',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Instalator Web',
        'Welcome to %s' => 'Witamy w %s',
        'Accept license' => 'Akceptuj� licencj�',
        'Don\'t accept license' => 'Nie akceptuje licencji',
        'Admin-User' => 'Administrator',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => 'Je�eli masz has�o administratora bazy danych wpisz je tutaj. Je�eli nie, zostaw pole puste. Ze wzgled�w bezpiecze�stwa zalecamy ustawienia has�a administratoa bazy danych. Po szczeg�y si�gnij do dokumentacji bazy danych.',
        'Admin-Password' => 'Has�o administratora',
        'Database-User' => 'U�ytkownik bazy danych',
        'default \'hot\'' => 'domy�lne \'hot\'',
        'DB connect host' => 'komputer bazy danych',
        'Database' => 'baza danych',
        'Default Charset' => 'Domy�lne kodowanie',
        'utf8' => 'UTF8',
        'false' => 'fa�sz',
        'SystemID' => 'ID Systemu',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Identyfikator systemu. Wszystkie zg�oszenia oraz sesje http b�d� zaczyna�y si� od tego ci�gu)',
        'System FQDN' => 'Pe�na domena systemu FQDN',
        '(Full qualified domain name of your system)' => '(Pe�na nazwa domeny Twojego systemu FQDN)',
        'AdminEmail' => 'Email od Admina',
        '(Email of the system admin)' => '(Adres E-Mail Administratora Systemu)',
        'Organization' => 'Organizacja',
        'Log' => 'Log',
        'LogModule' => 'Modu� logowania',
        '(Used log backend)' => '(U�ywany log backend)',
        'Logfile' => 'Plik logu',
        '(Logfile just needed for File-LogModule!)' => '(Logfile jest potrzebny jedynie dla modu�u File-Log!)',
        'Webfrontend' => 'Interfejs webowy',
        'Use utf-8 it your database supports it!' => 'U�ywaj kodowania UTF-8 je�li pozwala Ci na to baza danych!',
        'Default Language' => 'Domy�lny j�zyk',
        '(Used default language)' => '(Domy�lny j�zyk)',
        'CheckMXRecord' => 'Sprawd� rekord MX',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Sprawd� rekord MX uzytego adresu e-mailprzy tworzeniu odpowiedzi. Nie u�ywaj sprawdzania rekordu MX je�eli twoja maszyna z OTRS jest na �aczu z dynamicznym IP $!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Musisz wpisa� nast�puj�ce polecenie w linii komend (Terminal/Shell).',
        'Restart your webserver' => 'Uruchom ponownie serwer WWW',
        'After doing so your OTRS is up and running.' => 'Po zako�czeniu tych czynno�ci Tw�j system OTRS b�dzie gotowy do pracy',
        'Start page' => 'Strona startowa',
        'Your OTRS Team' => 'Tw�j Team OTRS',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'Brak dost�pu',

        # Template: Notify
        'Important' => 'Wa�ne',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'wydrukowane przez',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor
        'Bold' => '',
        'CTRL' => '',
        'SHIFT' => '',
        'Italic' => '',
        'Underline' => '',
        'Font Color' => '',
        'Background Color' => '',
        'Remove Formatting' => '',
        'Show/Hide Hidden Elements' => '',
        'Align Left' => '',
        'Align Center' => '',
        'Align Right' => '',
        'Justify' => '',
        'Indent' => '',
        'Outdent' => '',
        'Create an Unordered List' => '',
        'Create an Ordered List' => '',
        'HTML Link' => '',
        'Insert Image' => '',
        'Undo' => '',
        'Redo' => '',

        # Template: Test
        'OTRS Test Page' => 'OTRS Strona testowa',
        'Counter' => 'Licznik',

        # Template: Warning

        # Misc
        'Edit Article' => 'Edytuj artyku�',
        'Create Database' => 'Stw�rz baz� danych',
        'DB Host' => 'Host bazy danych',
        'Ticket Number Generator' => 'Generator numer�w zg�osze�',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identyfikator zg�oszenia. np. \'Ticket#\', \'Call#\' lub \'MyTicket#\')',
        'Create new Phone Ticket' => 'Utw�rz zg�oszenie telefoniczne',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'W ten spos�b mo�na edytowa� p�k kluczy skofigurowany w Kernel/Config.pm',
        'Symptom' => 'Objawy',
        'U' => 'G',
        'Site' => 'Witryna',
        'Customer history search (e. g. "ID342425").' => 'Przeszukiwanie historii klienta (np. "ID342425").',
        'Can not delete link with %s!' => 'Nie mo�na usun�� powi�zania z %s',
        'for agent firstname' => 'dla imienia agenta',
        'Close!' => 'Zamknij!',
        'No means, send agent and customer notifications on changes.' => '\'Nie\' oznacza - wy�lij agentowi i klientowi powiadomienia o zmianach.',
        'A web calendar' => 'Kalendarz',
        'to get the realname of the sender (if given)' => 'by wstawi� prawdziwe imi� i nazwisko klienta (je�li podano)',
        'OTRS DB Name' => 'Nazwa bazy danych OTRS',
        'To enable automatic execusion select at least one value form minutes, hours and days!' => 'Aby w��czy� automatyczne wykonywanie ustaw dni, godziny i minuty!',
        'Notification (Customer)' => 'Powiadomienie (Klient)',
        'Select Source (for add)' => 'Wybierz �r�d�o (dla dodania)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Opcjonalne dane (np. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => 'Obiekt potomny',
        'Queue ID' => 'ID Kolejki',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Opcje konfiguracyjne (np. <OTRS_CONFIG_HttpType>)',
        'customer realname' => 'Prawdziwe dane klienta',
        'Pending messages' => 'Oczekuj�ce wiadomo�ci',
        'for agent login' => 'dla loginu agenta',
        'Keyword' => 'S�owo kluczowe',
        'Close type' => 'Typ zamkni�cia',
        'Can\'t update password, need min. 2 characters!' => 'Nie mo�na zmieni� has�a, wymagane conajmniej 2 znaki!',
        'DB Admin User' => 'U�ytkownik administruj�cy baz� danych',
        'for agent user id' => 'dla ID agenta',
        'Change user <-> group settings' => 'Zmie� u�ytkownika <-> Ustawienia grupy',
        'Problem' => 'Problem',
        'Escalation' => 'Eskalacja',
        '"}' => '"}',
        'Order' => 'Porz�dek',
        'next step' => 'Nast�pny krok',
        'Follow up' => 'Odpowiedz',
        'Customer history search' => 'Przeszukiwanie historii klienta',
        'Admin-Email' => 'Wiadomo�� od Administratora',
        'Stat#' => 'Statystyka',
        'Create new database' => 'Stw�rz now� baz� danych',
        'Can\'t update password, need min. 1 digit!' => 'Nie mo�na zmieni� has�a, wymagana conajmniej 1 cyfra!',
        'ArticleID' => 'ID Artyku�u',
        'Go' => 'Start',
        'Keywords' => 'S�owa kluczowe',
        'Ticket Escalation View' => 'Widok eskalowanych zg�osze�',
        'Today' => 'Dzi�',
        'No * possible!' => 'Nie u�ywaj znaku "*"!',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Opcje bie��cego u�ytkownika kt�ry wykona� akcj� (np. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => 'Wiadomo�� do nowego w�a�ciciela',
        'to get the first 5 lines of the email' => 'by wstawi� 5 pierwszych linii wiadomo�ci',
        'Sort by' => 'Sortuj wed�ug',
        'OTRS DB Password' => 'Has�o dost�pu do bazy dla OTRS',
        'Last update' => 'Ostatnia aktualizacja',
        'Tomorrow' => 'Jutro',
        'to get the first 20 character of the subject' => 'by wstawi� pierwsze 20 znak�w tematu',
        'Select the customeruser:service relations.' => 'Wybierz relacj� klient:us�uga.',
        'DB Admin Password' => 'Has�o Administratora bazy danych',
        'Bulk-Action' => 'Akcja grupowa',
        'Drop Database' => 'Usu� baz� danych',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Tu mo�esz zdefiniowac o� X. Mo�esz wybra� jeden element ze zdefiniowanych. Nast�pnie musisz wybra� dwa lub wi�cej atrybut�w wskazanego elementu. Je�eli nie wybra�e� wszystkich atrybut�w elementu u�yte one zostan� przy generowaniu raportu. Tak samo jak nowe atrybuty dodane od ostatniej konfiguracji.',
        'FileManager' => 'Mened�er plik�w',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'Opcje aktualnego klienta (np. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'Typ oczekiwania',
        'Comment (internal)' => 'Komentarz (wewn�trzny)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Opcje w�a�ciciela zg�oszenia (np. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Opcje zg�oszenia (np. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(U�ywany format numerowania zg�osze�)',
        'Reminder' => 'Przypomnienie',
        'Can\'t update password, passwords doesn\'t match! Please try it again!' => 'Nie mo�na zmieni� has�a, podano r�ne has�a! Spr�buj ponownie!',
        'OTRS DB connect host' => 'Host bazy danych',
        ' (work units)' => ' (jednostek roboczych)',
        'Next Week' => 'Nast�pny tydzie�',
        'All Customer variables like defined in config option CustomerUser.' => 'Wszystkie zdefiniowane zmienne klienta.',
        'accept license' => 'akceptuj� Licencj�',
        'for agent lastname' => 'dla nazwiska agenta',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Opcje aktualnego agenta obs�ugi (np. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Tekst przypomnienia',
        'Parent-Object' => 'Obiekt macierzysty',
        'Of couse this feature will take some system performance it self!' => 'Oczywi�cie ta funkcja zabiera cz�� wydajno�ci do obs�ugi samej siebie!',
        'Ticket Hook' => 'Identyfikator zg�oszenia',
        'Your own Ticket' => 'Twoje w�asne zg�oszenie',
        'Detail' => 'Szczeg�',
        'TicketZoom' => 'Podgl�d zg�oszenia',
        'Open Tickets' => 'Otwarte zg�oszenia',
        'Don\'t forget to add a new user to groups!' => 'Nie zapomnij doda� u�ytkownika do grup!',
        'You have to select two or more attributes from the select field!' => 'Musisz wybra� dwa lub wi�cej atrybut�w z pola wyboru!',
        'System Settings' => 'Ustawienia systemu',
        'WebWatcher' => 'Obserwator Web',
        'Finished' => 'Zako�czono',
        'D' => '',
        'All messages' => 'Wszystkie wiadomo�ci',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'W�asno�ci zg�oszenia (np. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Object already linked as %s.' => 'Obiekt ju� przypisany jako %s',
        'A article should have a title!' => 'Artyku� musi miec tytu�!',
        'Customer Users <-> Services' => 'Klienci <-> Us�ugi',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Parametry konfiguracyjne (np. &lt;OTRS_CONFIG_HttpType&gt;)',
        'don\'t accept license' => 'nie akceptuj� Licencji',
        'All email addresses get excluded on replaying on composing and email.' => 'Wszystkie adresy zostan� pomini�te przy odpowiedzi, tworzeniu i wysy�aniu wiadomo�ci.',
        'A web mail client' => 'Klient poczty przez www',
        'Compose Follow up' => 'Napisz Odpowied� (Follow Up)',
        'Can\'t update password, need min. 8 characters!' => 'Nie mo�na zmieni� has�a, wymagane conajmniej 8 znak�w!',
        'WebMail' => 'Poczta przez www',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Opcje dotycz�ce w�a�ciciela zg�oszenia (np. <OTRS_OWNER_UserFirstname>)',
        'DB Type' => 'Typ bazy danych',
        'kill all sessions' => 'Zamknij wszystkie sesje',
        'to get the from line of the email' => 'by wstawi� pole Od wiadomo�ci',
        'Solution' => 'Rozwi�zanie',
        'QueueView' => 'Przegl�d kolejki',
        'Select Box' => 'Zapytanie SQL',
        'New messages' => 'Nowe wiadomo�ci',
        'Can not create link with %s!' => 'Nie po��czono z %s!',
        'Linked as' => 'Po��czono jako',
        'Welcome to OTRS' => 'Witamy w OTRS',
        'modified' => 'zmieniony',
        'Delete old database' => 'Usu� star� baz� danych',
        'A web file manager' => 'Mened�er plik�w przez www ',
        'Have a lot of fun!' => '�yczymy dobrej zabawy!',
        'send' => 'wy�lij',
        'Send no notifications' => 'Wy�lij bez powiadomie�',
        'Note Text' => 'Tekst notatki',
        'POP3 Account Management' => 'Konfiguracja kont POP3',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Cechy aktualnego klienta (np. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'System State Management' => 'Konfiguracja status�w',
        'OTRS DB User' => 'U�ytkownik bazy danych OTRS',
        'Mailbox' => 'Skrzynka',
        'PhoneView' => 'Nowy telefon',
        'maximal period form' => 'maksymalny okres formularza',
        'TicketID' => 'ID Zg�oszenia',
        'Yes means, send no agent and customer notifications on changes.' => '\'Tak\' oznacza - nie wysy�aj powiadomie� agentowi i klientowpi przy zmianach.',
        'Can\'t update password, need 2 lower and 2 upper characters!' => 'Nie mo�na zmieni� has�a, wymagane 2 ma�e i 2 wielkie litery!',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'Twoja wiadomo�� o numerze zg�oszenia: "<OTRS_TICKET>" zosta�a przekazana na adres "<OTRS_BOUNCE_TO>" . Prosimy kontaktowa� si� pod tym adresem we wszystkich sprawach dotycz�cych tego zg�oszenia.',
        'Ticket Status View' => 'Status zg�oszenia',
        'Modified' => 'Zmodyfikowany',
        'Ticket selected for bulk action!' => 'Zg�oszenie wybrano do akcji grupowej!',
        '%s is not writable!' => '',
        'Cannot create %s!' => '',
    };
    # $$STOP$$
    return;
}

1;
