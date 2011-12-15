# --
# Kernel/Language/pl.pm - provides Polish language translation
# Copyright (C) 2003-2010 Tomasz Melissa <janek at rumianek.com>
# Copyright (C) 2009 Artur Skalski <skal.ar at wp.pl>
# --
# $Id: pl.pm,v 1.118 2011-12-15 11:23:57 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::pl;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.118 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: 2011-12-15 12:18:58

    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%Y-%M-%D %T';
    $Self->{DateFormatLong}      = '%A %D %B %T %Y';
    $Self->{DateFormatShort}     = '%Y%-M-%D';
    $Self->{DateInputFormat}     = '%Y-%M-%D';
    $Self->{DateInputFormatLong} = '%Y-%M-%D - %T';

    # csv separator
    $Self->{Separator} = ';';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'Tak',
        'No' => 'Nie',
        'yes' => 'tak',
        'no' => 'nie',
        'Off' => 'Wyłączone',
        'off' => 'wyłączone',
        'On' => 'Włączone',
        'on' => 'włączone',
        'top' => 'góra',
        'end' => 'koniec',
        'Done' => 'Zrobione',
        'Cancel' => 'Anuluj',
        'Reset' => 'Resetuj',
        'last' => 'w ciągu',
        'before' => 'przed',
        'Today' => 'Dziś',
        'Tomorrow' => 'Jutro',
        'Next Week' => 'Następny tydzień',
        'day' => 'dzień',
        'days' => 'dni',
        'day(s)' => 'dzień(dni)',
        'd' => '',
        'hour' => 'godzina',
        'hours' => 'godz.',
        'hour(s)' => 'godz.',
        'Hours' => '',
        'h' => '',
        'minute' => 'minuta',
        'minutes' => 'minut',
        'minute(s)' => 'minuta(minut)',
        'Minutes' => '',
        'm' => '',
        'month' => 'miesiąc',
        'months' => 'miesięcy',
        'month(s)' => 'miesiąc(-cy)',
        'week' => 'tydzień',
        'week(s)' => 'tydzień(tygodnie)',
        'year' => 'rok',
        'years' => 'lat',
        'year(s)' => 'rok(lat)',
        'second(s)' => 'sekund(a)',
        'seconds' => 'sekund',
        'second' => 'drugi',
        's' => '',
        'wrote' => 'napisał',
        'Message' => 'Wiadomość',
        'Error' => 'Błąd',
        'Bug Report' => 'Zgłoś błąd',
        'Attention' => 'Uwaga',
        'Warning' => 'Ostrzeżenie',
        'Module' => 'Moduł',
        'Modulefile' => 'Plik Modułu',
        'Subfunction' => 'Funkcja podrzędna',
        'Line' => 'Linia',
        'Setting' => 'Ustawienie',
        'Settings' => 'Ustawienia',
        'Example' => 'Przykład',
        'Examples' => 'Przykłady',
        'valid' => 'aktywne',
        'Valid' => 'Aktywne',
        'invalid' => 'nieaktywne',
        'Invalid' => '',
        '* invalid' => '* nieaktywne',
        'invalid-temporarily' => 'Czasowo nieaktywne',
        ' 2 minutes' => ' 2 Minuty',
        ' 5 minutes' => ' 5 Minut',
        ' 7 minutes' => ' 7 Minut',
        '10 minutes' => '10 Minut',
        '15 minutes' => '15 Minut',
        'Mr.' => 'Pan',
        'Mrs.' => 'Pani',
        'Next' => 'Dalej',
        'Back' => 'Powrót',
        'Next...' => 'Dalej...',
        '...Back' => '...Powrót',
        '-none-' => '-brak-',
        'none' => 'brak danych',
        'none!' => 'brak!',
        'none - answered' => 'brak - odpowiedziane',
        'please do not edit!' => 'nie edytować!',
        'Need Action' => 'Wymagana akcja',
        'AddLink' => 'Dodaj link',
        'Link' => 'Połącz',
        'Unlink' => 'Rozłącz',
        'Linked' => 'Połączone',
        'Link (Normal)' => 'Połączone (równorzędnie)',
        'Link (Parent)' => 'Połączone (Rodzic)',
        'Link (Child)' => 'Połączone (Potomek)',
        'Normal' => 'Normalne',
        'Parent' => 'Rodzic',
        'Child' => 'Potomek',
        'Hit' => 'Odsłona',
        'Hits' => 'Odsłon',
        'Text' => 'Treść',
        'Standard' => 'Standard',
        'Lite' => 'Lekkie',
        'User' => 'Użytkownik',
        'Username' => 'Nazwa użytkownika',
        'Language' => 'Język',
        'Languages' => 'Języki',
        'Password' => 'Hasło',
        'Preferences' => 'Ustawienia',
        'Salutation' => 'Zwrot grzecznościowy',
        'Salutations' => 'Powitania',
        'Signature' => 'Podpis',
        'Signatures' => 'Podpisy',
        'Customer' => 'Klient',
        'CustomerID' => 'ID klienta',
        'CustomerIDs' => 'IDs Klienta',
        'customer' => 'klient',
        'agent' => 'agent',
        'system' => 'System',
        'Customer Info' => 'Informacja o kliencie',
        'Customer Information' => 'Informacje o kliencie',
        'Customer Company' => 'Firma klienta',
        'Customer Companies' => 'Firmy klientów',
        'Company' => 'Firma',
        'go!' => 'Start!',
        'go' => 'Start',
        'All' => 'Wszystkie',
        'all' => 'wszystkie',
        'Sorry' => 'Przykro mi',
        'update!' => 'zapisz!',
        'update' => 'zapisz',
        'Update' => 'Zapisz',
        'Updated!' => 'Uaktualniono!',
        'submit!' => 'akceptuj!',
        'submit' => 'akceptuj',
        'Submit' => 'Akceptuj',
        'change!' => 'Zmień!',
        'Change' => 'Zmień',
        'change' => 'zmień',
        'click here' => 'kliknij tutaj',
        'Comment' => 'Komentarz',
        'Invalid Option!' => 'Błędna opcja!',
        'Invalid time!' => 'Błędny czas!',
        'Invalid date!' => 'Błedna data!',
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
        'between' => 'pomiędzy',
        'Fulltext Search' => 'Wyszukiwanie pełnotekstowe',
        'Data' => 'Data',
        'Options' => 'Opcje',
        'Title' => 'Tytuł',
        'Item' => 'Pozycja',
        'Delete' => 'Kasuj',
        'Edit' => 'Edytuj',
        'View' => 'Widok',
        'Number' => 'Liczba',
        'System' => 'System',
        'Contact' => 'Kontakt',
        'Contacts' => 'Kontakty',
        'Export' => 'Eksport',
        'Up' => 'Góra',
        'Down' => 'Dół',
        'Add' => 'Dodaj',
        'Added!' => 'Dodano!',
        'Category' => 'Kategoria',
        'Viewer' => 'Przeglądarka',
        'Expand' => 'Rozwiń',
        'Small' => 'Małe',
        'Medium' => 'Średnie',
        'Large' => 'Duże',
        'Date picker' => 'Wybór daty',
        'New message' => 'Nowa wiadomość',
        'New message!' => 'Nowa wiadomość!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'Proszę odpowiedz na to zgłoszenie, by móc powrocić do zwykłego widoku kolejki zgłoszeń!',
        'You have %s new message(s)!' => 'Masz %s nowych wiadomości!',
        'You have %s reminder ticket(s)!' => 'Masz %s przypomnień o zgłoszeniach!',
        'The recommended charset for your language is %s!' => 'Sugerowane kodowanie dla Twojego języka to %s!',
        'Change your password.' => 'Zmień hasło',
        'Please activate %s first!' => 'Najpierw aktywuj %s',
        'No suggestions' => 'Brak podpowiedzi',
        'Word' => 'Słowo',
        'Ignore' => 'Ignoruj',
        'replace with' => 'zamień z',
        'There is no account with that login name.' => 'Nie istnieje konto z takim loginem.',
        'Login failed! Your user name or password was entered incorrectly.' =>
            '',
        'There is no acount with that user name.' => '',
        'Please contact your administrator' => '',
        'Logout' => 'Wyloguj',
        'Logout successful. Thank you for using OTRS!' => 'Wylogowanie zakończone! Dziękujemy za używanie OTRS!',
        'Invalid SessionID!' => 'Niepoprawne ID Sesji!',
        'Feature not active!' => 'Funkcja nie aktywna!',
        'Agent updated!' => '',
        'Create Database' => 'Stwórz bazę danych',
        'System Settings' => 'Ustawienia systemu',
        'Mail Configuration' => '',
        'Finished' => 'Zakończono',
        'Install OTRS' => '',
        'Intro' => '',
        'License' => 'Licencja',
        'Database' => 'baza danych',
        'Configure Mail' => '',
        'Database deleted.' => '',
        'Database setup succesful!' => '',
        'Login is needed!' => 'Wymagane zalogowanie!',
        'Password is needed!' => 'Hasło jest wymagane!',
        'Take this Customer' => 'Użyj tego klienta!',
        'Take this User' => 'Użyj tego użytkownika',
        'possible' => 'możliwe',
        'reject' => 'odrzuć',
        'reverse' => 'odwróć',
        'Facility' => 'Ułatwienie',
        'Time Zone' => 'Strefa czasowa',
        'Pending till' => 'Oczekuje do',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            '',
        'Dispatching by email To: field.' => 'Przekazywanie na podstawie pola DO:',
        'Dispatching by selected Queue.' => 'Przekazywanie na podstawie zaznaczonej kolejki.',
        'No entry found!' => 'Nic nie odnaleziono!',
        'Session has timed out. Please log in again.' => 'Sesja wygasła. Zaloguj się ponownie',
        'No Permission!' => 'Brak uprawnień',
        'To: (%s) replaced with database email!' => 'DO: (%s) zamienione z adresem email z bazy danych',
        'Cc: (%s) added database email!' => 'Cc: (%s) zamienione z adresem email z bazy danych',
        '(Click here to add)' => '(By dodać kliknij tutaj)',
        'Preview' => 'Podgląd',
        'Package not correctly deployed! Please reinstall the package.' =>
            '',
        '%s is not writable!' => '',
        'Cannot create %s!' => 'Nie można utworzyć %s!',
        'Check to activate this date' => '',
        'You have Out of Office enabled, would you like to disable it?' =>
            '',
        'Customer %s added' => '',
        'Role added!' => 'Rola dodana!',
        'Role updated!' => '',
        'Attachment added!' => '',
        'Attachment updated!' => '',
        'Response added!' => '',
        'Response updated!' => '',
        'Group updated!' => '',
        'Queue added!' => '',
        'Queue updated!' => '',
        'State added!' => '',
        'State updated!' => '',
        'Type added!' => '',
        'Type updated!' => '',
        'Customer updated!' => '',
        'Customer company added!' => '',
        'Customer company updated!' => '',
        'Mail account added!' => '',
        'Mail account updated!' => '',
        'System e-mail address added!' => '',
        'System e-mail address updated!' => '',
        'Contract' => 'Umowa',
        'Online Customer: %s' => 'Klient zalogowany: %s',
        'Online Agent: %s' => 'Agent zalogowany: %s',
        'Calendar' => 'Kalendarz',
        'File' => 'Plik',
        'Filename' => 'Nazwa pliku',
        'Type' => 'Typ zgłoszenia',
        'Size' => 'Rozmiar',
        'Upload' => 'Wysyłanie',
        'Directory' => 'Katalog',
        'Signed' => 'Podpisany',
        'Sign' => 'Podpis',
        'Crypted' => 'Zaszyfrowany',
        'Crypt' => 'Szyfr',
        'PGP' => 'PGP',
        'PGP Key' => 'Klucz PGP',
        'PGP Keys' => 'Klucze PGP',
        'S/MIME' => '',
        'S/MIME Certificate' => 'Certyfikat S/MIME',
        'S/MIME Certificates' => 'Certyfikaty S/MIME',
        'Office' => 'Biuro',
        'Phone' => 'Tel.',
        'Fax' => 'Fax',
        'Mobile' => 'Tel. komórkowy',
        'Zip' => 'Kod',
        'City' => 'Miasto',
        'Street' => 'Ulica',
        'Country' => 'Kraj',
        'Location' => 'Miejsce',
        'installed' => 'zainstalowany',
        'uninstalled' => 'odinstalowany',
        'Security Note: You should activate %s because application is already running!' =>
            'Nota bezpieczeństwa: Należy aktywować %s ponieważ aplikacja jest uruchomiona!',
        'Unable to parse repository index document.' => '',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            '',
        'No packages, or no new packages, found in selected repository.' =>
            '',
        'Edit the system configuration settings.' => '',
        'printed at' => 'wydrukowano',
        'Loading...' => 'Ładowanie...',
        'Dear Mr. %s,' => 'Drogi Panie %s,',
        'Dear Mrs. %s,' => 'Droga Pani %s,',
        'Dear %s,' => 'Drogi %s,',
        'Hello %s,' => 'Witaj %s,',
        'This email address already exists. Please log in or reset your password.' =>
            '',
        'New account created. Sent login information to %s. Please check your email.' =>
            '',
        'Please press Back and try again.' => 'Prosze wybrać Cofnij i spróbowac ponownie.',
        'Sent password reset instructions. Please check your email.' => '',
        'Sent new password to %s. Please check your email.' => '',
        'Upcoming Events' => 'Zbliżające się wydarzenia',
        'Event' => 'Zdarzenie',
        'Events' => 'Zdarzenia',
        'Invalid Token!' => 'Błędny token!',
        'more' => 'więcej',
        'For more info see:' => 'Więcej informacji',
        'Package verification failed!' => 'Weryfikacja pakietu nie powiodła się!',
        'Collapse' => 'Zwiń',
        'Shown' => 'Pokazane',
        'News' => 'Informacje',
        'Product News' => 'Informacje o produkcie',
        'OTRS News' => 'Wiadomości OTRS',
        '7 Day Stats' => 'Statystyki z 7 dni',
        'Bold' => 'Pogrubienie',
        'Italic' => 'Italiki',
        'Underline' => 'Podkreślenie',
        'Font Color' => 'Kolor czcionki',
        'Background Color' => 'Kolor tła',
        'Remove Formatting' => 'Usuń formatowanie',
        'Show/Hide Hidden Elements' => 'Pokaż/Ukryj ukryte wiadomości',
        'Align Left' => 'Wyrównanie do lewej',
        'Align Center' => 'Wyrównanie do środka',
        'Align Right' => 'Wyrównanie do prawej',
        'Justify' => 'Justowanie',
        'Header' => 'Nagłówek',
        'Indent' => 'Wcięcie',
        'Outdent' => '',
        'Create an Unordered List' => 'Stwórz listę nienumerowaną',
        'Create an Ordered List' => 'Stwórz listę numerowaną',
        'HTML Link' => 'Łącze',
        'Insert Image' => 'Wstaw obraz',
        'CTRL' => '',
        'SHIFT' => '',
        'Undo' => 'Cofnij',
        'Redo' => 'Ponów',
        'Scheduler process is registered but might not be running.' => '',
        'Scheduler is not running.' => '',

        # Template: AAACalendar
        'New Year\'s Day' => '',
        'International Workers\' Day' => '',
        'Christmas Eve' => '',
        'First Christmas Day' => '',
        'Second Christmas Day' => '',
        'New Year\'s Eve' => '',

        # Template: AAAGenericInterface
        'OTRS as requester' => '',
        'OTRS as provider' => '',
        'Webservice "%s" created!' => '',
        'Webservice "%s" updated!' => '',

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
        'Oct' => 'Paź',
        'Nov' => 'Lis',
        'Dec' => 'Gru',
        'January' => 'Styczeń',
        'February' => 'Luty',
        'March' => 'Marzec',
        'April' => 'Kwiecień',
        'May_long' => 'Maj',
        'June' => 'Czerwiec',
        'July' => 'Lipiec',
        'August' => 'Sierpień',
        'September' => 'Wrzesień',
        'October' => 'Październik',
        'November' => 'Listopad',
        'December' => 'Grudzień',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Ustawienia zapisano pomyślnie!',
        'User Profile' => 'Profil użytkownika',
        'Email Settings' => 'Ustawienia poczty email',
        'Other Settings' => 'Inne ustawienia',
        'Change Password' => 'Zmień hasło',
        'Current password' => 'Aktualne hasło',
        'New password' => 'Nowe hasło',
        'Verify password' => '',
        'Spelling Dictionary' => 'Słownik pisowni',
        'Default spelling dictionary' => 'Domyślny słownik sprawdzania pisowni.',
        'Max. shown Tickets a page in Overview.' => 'Limit pokazywanych zgłoszeń na stronie Podsumowania',
        'The current password is not correct. Please try again!' => 'Hasło jest niepoprawne. Spróbuj jeszcze raz!',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            'Nie można zmienić hasła, nowe powtórzenia nowego hasła nie zgadzają się.',
        'Can\'t update password, it contains invalid characters!' => 'Nie można zmienić hasła ponieważ nowe hasło zawiera nidozwolone znaki.',
        'Can\'t update password, it must be at least %s characters long!' =>
            'Nie można zmienić hasła, nowe hasło musi zawierać co najmniej $s znaków.',
        'Can\'t update password, it must contain at least 2 lowercase  and 2 uppercase characters!' =>
            'Nie można zmienić hasła. Hasło musi zawierać co najmniej 2 wielkie i 2 małe litery.',
        'Can\'t update password, it must contain at least 1 digit!' => 'Nie można zmienić hasła. Hasło musi zawierać co najmniej 1 cyfrę.',
        'Can\'t update password, it must contain at least 2 characters!' =>
            'Nie można zmienić hasła. Hasło musi zawierać co najmniej dwa znaki specjalne.',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            'Nie można zmienić hasła ponieważ było już używane. Należy wybrać nowe hasło!',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            '',
        'CSV Separator' => '',

        # Template: AAAStats
        'Stat' => 'Statystyki',
        'Sum' => '',
        'Please fill out the required fields!' => 'Wypełnij wymagane pola!',
        'Please select a file!' => 'Wybierz plik!',
        'Please select an object!' => 'Wybierz obiekt!',
        'Please select a graph size!' => 'Wybierz rozmiar wykresu!',
        'Please select one element for the X-axis!' => 'Wybierz element dla osi X!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' =>
            'Wybierz tylko jeden element lyb wyłącz klawisz\'Stałe\' przy zaznaczonym polu!',
        'If you use a checkbox you have to select some attributes of the select field!' =>
            'Po zaznaczeniu pola wyboru musisz wskazać atrybuty wybranego pola!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' =>
            'Wprowadź wartość w wybrane pole lub odznacz pole \'Stały\'!',
        'The selected end time is before the start time!' => 'Czas zakończenia wcześniejszy od czasu rozpoczęcia!',
        'You have to select one or more attributes from the select field!' =>
            'Wskaż jeden lub więcej atrybut z pola wyboru!',
        'The selected Date isn\'t valid!' => 'Wybrana data jest nieprawidłowa!',
        'Please select only one or two elements via the checkbox!' => 'Zaznacz tylko jeden lub dwa pola wyboru!',
        'If you use a time scale element you can only select one element!' =>
            'Jeżeli używasz skalowania czasu możesz wybrać tylko jeden element!',
        'You have an error in your time selection!' => 'Błąd w wyborze czasu!',
        'Your reporting time interval is too small, please use a larger time scale!' =>
            'Wybrany zakres czasu jest za mały, użyj większej skali czasu!',
        'The selected start time is before the allowed start time!' => 'Wybrany czas początku jest przed dozwolonym czasem rozpoczęcia!',
        'The selected end time is after the allowed end time!' => 'Wybrany czas końca przekracza dopuszczalny czas zakończenia!',
        'The selected time period is larger than the allowed time period!' =>
            'Wybrany zakres czasu przekracza maksymalny dopuszczalny!',
        'Common Specification' => 'Podstawowa specyfikacja',
        'X-axis' => 'Oś X',
        'Value Series' => 'Serie wartości',
        'Restrictions' => 'Ograniczenia',
        'graph-lines' => 'wykres-linie',
        'graph-bars' => 'wykres-słupki',
        'graph-hbars' => 'wykres-słupki poziome',
        'graph-points' => 'wykres-punkty',
        'graph-lines-points' => 'wykres- linie i punkty',
        'graph-area' => 'obszar wykresu',
        'graph-pie' => 'wykres-kołowy',
        'extended' => 'rozszerzony',
        'Agent/Owner' => 'Obsługujący/Właściciel',
        'Created by Agent/Owner' => 'Utworzony przez Obsługującego/Właściciela',
        'Created Priority' => 'Utworzony prirytet',
        'Created State' => 'Utworzony status',
        'Create Time' => 'Czas utworzenia',
        'CustomerUserLogin' => 'Login klienta',
        'Close Time' => 'Czas zamknięcia',
        'TicketAccumulation' => '',
        'Attributes to be printed' => 'Drukowane atrybuty',
        'Sort sequence' => 'Kolejność sortowania',
        'Order by' => 'Sortuj według',
        'Limit' => 'Limit',
        'Ticketlist' => 'Lista zgłoszeń',
        'ascending' => 'rosnąco',
        'descending' => 'malejąco',
        'First Lock' => 'Pierwsza Blokada',
        'Evaluation by' => 'Ewaluacja do',
        'Total Time' => 'Całkowity Czas',
        'Ticket Average' => 'Zgłoszenie Średnio',
        'Ticket Min Time' => 'Zgłoszenie Min Czas',
        'Ticket Max Time' => 'Zgłoszenie Max Czas',
        'Number of Tickets' => 'Ilość Zgłoszeń',
        'Article Average' => 'Wiadomość Średnio',
        'Article Min Time' => 'Wiadomość Min Czas',
        'Article Max Time' => 'Wiadomość Max Czas',
        'Number of Articles' => 'Ilość wiadomości',
        'Accounted time by Agent' => 'Czas zaraportowany przez Agenta',
        'Ticket/Article Accounted Time' => 'Zaraportowany czas Zgłoszenia/Wiadomości',
        'TicketAccountedTime' => 'Zaraportowany Czas Zgłoszenia',
        'Ticket Create Time' => 'Czas Utworzenia Zgłoszenia',
        'Ticket Close Time' => 'Czas Zamknięcia Zgłoszenia',

        # Template: AAATicket
        'Status View' => '',
        'Bulk' => 'Zaznacz',
        'Lock' => 'Zablokuj',
        'Unlock' => 'Odblokuj',
        'History' => 'Historia',
        'Zoom' => 'Podgląd',
        'Age' => 'Wiek',
        'Bounce' => 'Przekaż',
        'Forward' => 'Prześlij dalej',
        'From' => 'Od',
        'To' => 'Do',
        'Cc' => 'Cc',
        'Bcc' => 'Bcc',
        'Subject' => 'Temat',
        'Move' => 'Przenieś',
        'Queue' => 'Kolejka',
        'Queues' => 'Kolejki',
        'Priority' => 'Priorytet',
        'Priorities' => 'Priorytety',
        'Priority Update' => 'Aktualizacja priorytetu',
        'Priority added!' => '',
        'Priority updated!' => '',
        'Signature added!' => '',
        'Signature updated!' => '',
        'SLA' => 'SLA',
        'Service Level Agreement' => 'Poziom Serwisu (SLA)',
        'Service Level Agreements' => 'Poziomy serwisu (SLA)',
        'Service' => 'Usługa',
        'Services' => 'Usługi serwisowe',
        'State' => 'Status',
        'States' => 'Statusy',
        'Status' => 'Status',
        'Statuses' => 'Statusy',
        'Ticket Type' => 'Typ zgłoszenia',
        'Ticket Types' => 'Typy zgłoszeń',
        'Compose' => 'Stwórz',
        'Pending' => 'Oczekujące',
        'Owner' => 'Właściciel',
        'Owner Update' => 'Aktualizacja własciciela',
        'Responsible' => 'Odpowiedzialny',
        'Responsible Update' => 'Aktualizacja odpowiedzialnego',
        'Sender' => 'Nadawca',
        'Article' => 'Artykuł',
        'Ticket' => 'Zgłoszenie',
        'Createtime' => 'Utworzone o',
        'plain' => 'bez formatowania',
        'Email' => 'E-Mail',
        'email' => 'e-mail',
        'Close' => 'Zamknij',
        'Action' => 'Akcja',
        'Attachment' => 'Załącznik',
        'Attachments' => 'Załączniki',
        'This message was written in a character set other than your own.' =>
            'Ta wiadomość została napisana z użyciem kodowania znaków innego niż Twój.',
        'If it is not displayed correctly,' => 'Jeśli nie jest wyświetlane poprawnie,',
        'This is a' => 'To jest',
        'to open it in a new window.' => 'by otworzyć w oddzielnym oknie',
        'This is a HTML email. Click here to show it.' => 'To jest e-mail w formacie HTML. Kliknij tutaj, by go przeczytać.',
        'Free Fields' => 'Dodatkowe atrybuty',
        'Merge' => 'Scalaj',
        'merged' => 'scalone',
        'closed successful' => 'zamknięte z powodzeniem',
        'closed unsuccessful' => 'zamknięte bez powodzenia',
        'Locked Tickets Total' => '',
        'Locked Tickets Reminder Reached' => '',
        'Locked Tickets New' => '',
        'Responsible Tickets Total' => '',
        'Responsible Tickets New' => '',
        'Responsible Tickets Reminder Reached' => '',
        'Watched Tickets Total' => '',
        'Watched Tickets New' => '',
        'Watched Tickets Reminder Reached' => '',
        'All tickets' => 'Wszystkie zgłoszenia',
        'Tickets available' => 'Dostępne zgłoszenia',
        'Escalation' => 'Eskalacja',
        'last-search' => '',
        'QueueView' => 'Przegląd kolejki',
        'Ticket Escalation View' => 'Widok eskalowanych zgłoszeń',
        'Message from' => '',
        'End message' => '',
        'Forwarded message from' => '',
        'End forwarded message' => '',
        'new' => 'nowe',
        'open' => 'otwarte',
        'Open' => 'Otwarte',
        'closed' => 'zamknięte',
        'Closed' => 'Zamknięte',
        'removed' => 'usunięte',
        'pending reminder' => 'oczekujące przypomnienie',
        'pending auto' => 'oczekujące auto',
        'pending auto close+' => 'oczekujące na automatyczne zamknięcie+',
        'pending auto close-' => 'oczekujące na automatyczne zamknięcie-',
        'email-external' => 'e-mail zewnętrzny',
        'email-internal' => 'e-mail wewnętrzny',
        'note-external' => 'Notatka zewnętrzna',
        'note-internal' => 'Notatka wewnętrzna',
        'note-report' => 'Notatka raportujaca',
        'phone' => 'telefon',
        'sms' => 'SMS',
        'webrequest' => 'zgłoszenie WWW',
        'lock' => 'zablokowane',
        'unlock' => 'odblokowane',
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
        'auto follow up' => '',
        'auto reject' => '',
        'auto remove' => '',
        'auto reply' => '',
        'auto reply/new ticket' => '',
        'Ticket "%s" created!' => 'Zgłoszenie "%s" utworzone!',
        'Ticket Number' => 'Numer zgłoszenia',
        'Ticket Object' => 'Obiekt zgłoszenia',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Nie znaleziono zgłoszenia numer "%s"! Nie mozna połączyć!',
        'You don\'t have write access to this ticket.' => '',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            '',
        'Ticket selected.' => '',
        'Ticket is locked by another agent.' => '',
        'Ticket locked.' => '',
        'Don\'t show closed Tickets' => 'Nie pokazuj zamkniętych zgłoszeń',
        'Show closed Tickets' => 'Pokaż zamknięte zgłoszenia',
        'New Article' => 'Nowy artykuł',
        'Unread article(s) available' => '',
        'Remove from list of watched tickets' => '',
        'Add to list of watched tickets' => '',
        'Email-Ticket' => 'Zgłoszenie e-mail',
        'Create new Email Ticket' => 'Utwórz nowe zgłoszenie e-mail',
        'Phone-Ticket' => 'Zgłoszenie telefoniczne',
        'Search Tickets' => 'Szukaj zgłoszeń',
        'Edit Customer Users' => 'Edycja klientów',
        'Edit Customer Company' => 'Edycja firm',
        'Bulk Action' => 'Akcja grupowa',
        'Bulk Actions on Tickets' => 'Akcje grupowe na zgłoszeniach',
        'Send Email and create a new Ticket' => 'Wylij e-mail i utwórz nowe zgłoszenie',
        'Create new Email Ticket and send this out (Outbound)' => 'Utwórz nowe zgłoszenie e-mail i wyślij (wychodzące)',
        'Create new Phone Ticket (Inbound)' => 'Utwórz zgłoszenie telefoniczne (przychodzące)',
        'Overview of all open Tickets' => 'Przegląd otwartych zgłoszeń',
        'Locked Tickets' => 'Zablokowane Zgłoszenia',
        'My Locked Tickets' => 'Moje Zablokowane Zgłoszenia',
        'My Watched Tickets' => '',
        'My Responsible Tickets' => '',
        'Watched Tickets' => 'Obserwowane zgłoszenia',
        'Watched' => 'Obserwowane',
        'Watch' => '',
        'Unwatch' => '',
        'Lock it to work on it' => '',
        'Unlock to give it back to the queue' => '',
        'Shows the ticket history!' => 'Pokaż historię zgłoszenia!',
        'Print this ticket!' => 'Wydrukuj zgłoszenie!',
        'Change the ticket priority!' => 'Zmień priorytet zgłoszenia!',
        'Change the ticket free fields!' => 'Ustaw dodatkowe atrybuty zgłoszenia!',
        'Link this ticket to an other objects!' => 'Połącz zgłoszenie z innym!',
        'Change the ticket owner!' => 'Zmień właciciela zgłoszenia!',
        'Change the ticket customer!' => 'Zmień klienta zgłoszenia!',
        'Add a note to this ticket!' => 'Dodaj notatkę do zgłoszenia!',
        'Merge this ticket!' => 'Dołącz zgłoszenie!',
        'Set this ticket to pending!' => 'Ustaw zgłoszenie jako oczekujące!',
        'Close this ticket!' => 'Zamknij zgłoszenie!',
        'Look into a ticket!' => 'Szczegóły zgłoszenia!',
        'Delete this ticket!' => 'Usuń zgłoszenie!',
        'Mark as Spam!' => 'Oznacz jako spam!',
        'My Queues' => 'Moje kolejki',
        'Shown Tickets' => 'Pokaż zgłoszenia',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'Twoje zgłoszenie o numerze "<OTRS_TICKET>" zostało dołączone do "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Zgłoszenie %s: czas pierwszej odpowiedzi przekroczony (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Zgłoszenie %s: czas pierwszej odpowiedzi zostanie przekroczony za %s!',
        'Ticket %s: update time is over (%s)!' => 'Zgłoszenie %s: czas aktualizacji przekroczony (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Zgłoszenie %s: czas aktualizacji zostanie przekroczony za %s!',
        'Ticket %s: solution time is over (%s)!' => 'Zgłoszenie %s: czas rozwiązania przekroczony (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Zgłoszenie %s: czas rozwiązania zostanie przekroczony za %s!',
        'There are more escalated tickets!' => 'Więcej przeterminowanych zgłoszeń!',
        'Plain Format' => '',
        'Reply All' => '',
        'Direction' => '',
        'Agent (All with write permissions)' => '',
        'Agent (Owner)' => '',
        'Agent (Responsible)' => '',
        'New ticket notification' => 'Powiadomienie o nowym zgłoszeniu',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'Powiadom o nowym zgłoszeniu w moich kolejkach.',
        'Send new ticket notifications' => 'Wysyłaj powiadomienia o nowych zgłoszeniach',
        'Ticket follow up notification' => 'Wysyłaj powiadomienia o nowych wiadomościach w zgłoszeniach',
        'Ticket lock timeout notification' => 'Powiadomienie o przekroczonym czasie blokady zgłoszenia',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'Wyślij mi wiadomość, gdy zgłoszenie zostanie odblokowane przez system.',
        'Send ticket lock timeout notifications' => 'Wysyłaj powiadomienia o upłynięciu terminu przypomnienia ustawionego w zgłoszeniu',
        'Ticket move notification' => 'Powiadomienie o przeniesieniu zgłoszenia',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'Powiadom o przesunięciu do mojej kolejki',
        'Send ticket move notifications' => 'Wysyłaj powiadomienia o przesunięciu zgłoszenia do innej kolejki',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            '',
        'Custom Queue' => 'Kolejka modyfikowana',
        'QueueView refresh time' => 'Interwał odświeżania Widoku Kolejek',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            'Jeżeli ustawisz tu jakąś wartość, widok kolejek zgłoszeń będzie odświeżany w określonym interwale.',
        'Refresh QueueView after' => 'Odświeżaj widok kolejek co',
        'Screen after new ticket' => 'Ekran po nowym zgłoszeniu',
        'Show this screen after I created a new ticket' => 'Pokaż następujący widok po utworzeniu nowego zgłoszenia',
        'Closed Tickets' => 'Zamknięte zgłoszenia',
        'Show closed tickets.' => 'Pokaż zamknięte zgłoszenia.',
        'Max. shown Tickets a page in QueueView.' => 'Limit pokazywanych zgłoszeń na stronie Podglądu Kolejki',
        'Ticket Overview "Small" Limit' => '',
        'Ticket limit per page for Ticket Overview "Small"' => '',
        'Ticket Overview "Medium" Limit' => '',
        'Ticket limit per page for Ticket Overview "Medium"' => '',
        'Ticket Overview "Preview" Limit' => '',
        'Ticket limit per page for Ticket Overview "Preview"' => '',
        'Ticket watch notification' => 'Powiadomienie o obserwowaniu zgłoszenia',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            '',
        'Send ticket watch notifications' => 'Przysyłaj powiadomienia gdy ktoś zacznie obserwować moje zgłoszenie',
        'Out Of Office Time' => 'Jestem poza biurem',
        'New Ticket' => 'Nowe zgłoszenie',
        'Create new Ticket' => 'Utwórz nowe zgłoszenie',
        'Customer called' => 'Telefon od klienta',
        'phone call' => 'rozmowa telefoniczna',
        'Phone Call Outbound' => 'Rejestracja rozmowy telefonicznej',
        'Phone Call Inbound' => '',
        'Reminder Reached' => 'Przypomnienie osiągnięto',
        'Reminder Tickets' => 'Zgłoszenia z ustawionym przypomnieniem',
        'Escalated Tickets' => 'Zgłoszenia eskalowane',
        'New Tickets' => 'Nowe zgłoszenia',
        'Open Tickets / Need to be answered' => 'Otwarte zgłoszenia wymagające odpowiedzi',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            '',
        'All new tickets, these tickets have not been worked on yet' => '',
        'All escalated tickets' => '',
        'All tickets with a reminder set where the reminder date has been reached' =>
            '',
        'Archived tickets' => '',
        'Unarchived tickets' => '',
        'History::Move' => 'Zgłoszenie przeniesiono do kolejki "%s" (%s) z kolejki "%s" (%s).',
        'History::TypeUpdate' => 'Zaktualizowano typ do %s (ID=%s).',
        'History::ServiceUpdate' => 'Zaktualizowano usługę do %s (ID=%s).',
        'History::SLAUpdate' => 'Zaktualizowano SLA do %s (ID=%s).',
        'History::NewTicket' => 'Nowe zgłoszenie [%s] utworzone (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'FollowUp dla [%s]. %s',
        'History::SendAutoReject' => 'Automatyczne odrzucenie wysłano do "%s".',
        'History::SendAutoReply' => 'Auto odpowiedź wysłano do "%s".',
        'History::SendAutoFollowUp' => 'AutoFollowUp wysłano do "%s".',
        'History::Forward' => 'Przesłano do "%s".',
        'History::Bounce' => 'Przekazano do "%s".',
        'History::SendAnswer' => 'Wysłano odpowiedź do "%s".',
        'History::SendAgentNotification' => '"%s"-powiadomienie wysłano do "%s".',
        'History::SendCustomerNotification' => 'Powiadomienie wysłano do "%s".',
        'History::EmailAgent' => 'E-mail wysłany do klienta.',
        'History::EmailCustomer' => 'Dodano e-mail. %s',
        'History::PhoneCallAgent' => 'Agent telefonował do klienta.',
        'History::PhoneCallCustomer' => 'klient telefonował.',
        'History::AddNote' => 'Dodano notatkę (%s)',
        'History::Lock' => 'Zablokowano zgłoszenie.',
        'History::Unlock' => 'Odblokowano zgłoszenie.',
        'History::TimeAccounting' => '%s jednostek czasu zliczono. Czas całkowity %s jednostek.',
        'History::Remove' => 'Usunięto zgłoszenie %s',
        'History::CustomerUpdate' => 'Zaktualizowano: %s',
        'History::PriorityUpdate' => 'Zmieniono priorytet z "%s" (%s) na "%s" (%s).',
        'History::OwnerUpdate' => 'Nowym właścicielem jest "%s" (ID=%s).',
        'History::LoopProtection' => 'Loop-Protection! Nie wyslano auto-odpowiedzi do "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Ustawiony czas przypomnienia: %s',
        'History::StateUpdate' => 'Aktualizacja statusu. Stary: "%s" nowy: "%s"',
        'History::TicketDynamicFieldUpdate' => 'Zaktualizowano: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Żądanie klienta przez www.',
        'History::TicketLinkAdd' => 'Dodano łącze do zgłoszenia "%s".',
        'History::TicketLinkDelete' => 'Usunięto łacze ze zgłoszenia "%s".',
        'History::Subscribe' => 'Dodano subskrypcje dla użytkownika "%s".',
        'History::Unsubscribe' => 'Usunięto subskrypcje dla użytkownika "%s".',
        'History::SystemRequest' => '',
        'History::ResponsibleUpdate' => 'Zmieniono osobę odpowiedzialną za obsługę zgłoszenia.',
        'History::ArchiveFlagUpdate' => '',

        # Template: AAAWeekDay
        'Sun' => 'Nie',
        'Mon' => 'Pon',
        'Tue' => 'Wt',
        'Wed' => 'Śr',
        'Thu' => 'Czw',
        'Fri' => 'Pią',
        'Sat' => 'Sob',

        # Template: AdminAttachment
        'Attachment Management' => 'Zarządzanie załącznikami',
        'Actions' => 'Akcje',
        'Go to overview' => 'Idź do przeglądu',
        'Add attachment' => '',
        'List' => 'Lista',
        'Validity' => '',
        'No data found.' => 'Nie odnaleziono żadnych elementów spełniających kryteria',
        'Download file' => 'Pobierz plik',
        'Delete this attachment' => 'Usuń ten załącznik',
        'Add Attachment' => 'Dodaj załącznik',
        'Edit Attachment' => 'Edytuj załącznik',
        'This field is required.' => '',
        'or' => 'lub',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'Zarządzanie automatycznymi odpowiedziami',
        'Add auto response' => 'Dodaj odpowiedź automatyczną',
        'Add Auto Response' => 'Dodaj Odpowiedź Automatyczną',
        'Edit Auto Response' => 'Edytuj odpowiedź automatyczną',
        'Response' => 'Odpowiedź',
        'Auto response from' => 'Automatyczna odpowiedź od',
        'Reference' => 'Podpowiedzi',
        'You can use the following tags' => 'Możesz używać następujących znaczników',
        'To get the first 20 character of the subject.' => 'Pokaż pierwsze 20 znaków tematu.',
        'To get the first 5 lines of the email.' => 'Pokaż 5 linii wiadomości e-mail.',
        'To get the realname of the sender (if given).' => 'Pokaż imię i nazwisko nadawcy (jeżeli podał).',
        'To get the article attribute' => '',
        ' e. g.' => 'np.',
        'Options of the current customer user data' => '',
        'Ticket owner options' => '',
        'Ticket responsible options' => '',
        'Options of the current user who requested this action' => '',
        'Options of the ticket data' => '',
        'Config options' => 'Opcje konfiguracyjne',
        'Example response' => 'Przykładowa odpowiedź',

        # Template: AdminCustomerCompany
        'Customer Company Management' => 'Zarządzanie firmami',
        'Wildcards like \'*\' are allowed.' => '',
        'Add customer company' => 'Dodaj firmę',
        'Please enter a search term to look for customer companies.' => '',
        'Add Customer Company' => 'Dodaj Firmę',

        # Template: AdminCustomerUser
        'Customer Management' => 'Zarządzanie klientami',
        'Add customer' => 'Dodaj klienta',
        'Select' => 'Zaznacz',
        'Hint' => '',
        'Customer will be needed to have a customer history and to login via customer panel.' =>
            '',
        'Please enter a search term to look for customers.' => '',
        'Last Login' => 'Ostatnie logowanie',
        'Add Customer' => 'Dodaj Klienta',
        'Edit Customer' => 'Edytuj Klienta',
        'This field is required and needs to be a valid email address.' =>
            '',
        'This email address is not allowed due to the system configuration.' =>
            '',
        'This email address failed MX check.' => '',
        'DNS problem, please check your configuration and the error log.' =>
            '',
        'The syntax of this email address is incorrect.' => '',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => 'Zarządzaj relacjami Klient-Grupa',
        'Notice' => 'Uwaga',
        'This feature is disabled!' => 'Ta funkcja jest wyłączona!',
        'Just use this feature if you want to define group permissions for customers.' =>
            '',
        'Enable it here!' => 'Włącz tutaj!',
        'Search for customers.' => '',
        'Edit Customer Default Groups' => 'Edytuj domyślne Grupy Klientów',
        'These groups are automatically assigned to all customers.' => '',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            '',
        'Filter for Groups' => '',
        'Select the customer:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            '',
        'Search Result:' => 'Wyniki wyszukiwania',
        'Customers' => 'Klienci',
        'Groups' => 'Grupy',
        'No matches found.' => '',
        'Change Group Relations for Customer' => '',
        'Change Customer Relations for Group' => '',
        'Toggle %s Permission for all' => '',
        'Toggle %s permission for %s' => '',
        'Customer Default Groups:' => 'Domyślne grupy klientów',
        'No changes can be made to these groups.' => '',
        'ro' => 'odczyt',
        'Read only access to the ticket in this group/queue.' => 'Prawo jedynie do odczytu zgłoszeń w tej grupie/kolejce',
        'rw' => 'odczyt/zapis',
        'Full read and write access to the tickets in this group/queue.' =>
            'Prawa pełnego odczytu i zapisu zgłoszeń w tej grupie/kolejce',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => 'Zarządzaj relacjami Klient-Poziom Serwisu',
        'Edit default services' => 'Edytuj domyślną usługę',
        'Filter for Services' => 'Filtruj usługi',
        'Allocate Services to Customer' => '',
        'Allocate Customers to Service' => '',
        'Toggle active state for all' => '',
        'Active' => 'Aktywne',
        'Toggle active state for %s' => '',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => '',
        'Add new field for object' => '',
        'To add a new field, select the field type form one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            '',
        'Dynamic Fields List' => '',
        'Dynamic fields per page' => '',
        'Label' => '',
        'Order' => 'Porządek',
        'Object' => 'Obiekt',

        # Template: AdminDynamicFieldCheckbox
        'Dynamic Fields' => '',
        'Field' => '',
        'Go back to overview' => '',
        'General' => '',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            '',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            '',
        'Changing this value will require manual changes in the system.' =>
            '',
        'This is the name to be shown on the screens where the field is active.' =>
            '',
        'Field order' => '',
        'This field is required and must be numeric.' => '',
        'This is the order in which this field will be shown on the screens where is active.' =>
            '',
        'Field type' => '',
        'Object type' => '',
        'Field Settings' => '',
        'Default value' => 'Domyślna wartość',
        'This is the default value for this field.' => '',
        'Save' => 'Zapisz',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => '',
        'This field must be numeric.' => '',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            '',
        'Define years period' => '',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            '',
        'Years in the future' => '',
        'Years in the future to display (default: 5 years).' => '',
        'Years in the past' => '',
        'Years in the past to display (default: 5 years).' => '',
        'Show link' => '',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            '',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => '',
        'Key' => 'Klucz',
        'Value' => 'Wartość',
        'Remove value' => '',
        'Add value' => '',
        'Add Value' => '',
        'Add empty value' => '',
        'Activate this option to create an empty selectable value.' => '',
        'Translatable values' => '',
        'If you activate this option the values will be translated to the user defined language.' =>
            '',
        'Note' => 'Uwagi',
        'You need to add the translations manually into the language translation files.' =>
            '',

        # Template: AdminDynamicFieldMultiselect

        # Template: AdminDynamicFieldText
        'Number of rows' => '',
        'Specify the height (in lines) for this field in the edit mode.' =>
            '',
        'Number of cols' => '',
        'Specify the width (in characters) for this field in the edit mode.' =>
            '',

        # Template: AdminEmail
        'Admin Notification' => 'Powiadomienia administratora',
        'With this module, administrators can send messages to agents, group or role members.' =>
            '',
        'Create Administrative Message' => '',
        'Your message was sent to' => 'Twoja wiadomość została wysłana do',
        'Send message to users' => 'Wyślij wiadomość do użytkowników',
        'Send message to group members' => 'Wyślij wiadomość do członków grupy',
        'Group members need to have permission' => 'Członkowie grupy muszą posiadać uprawnienia',
        'Send message to role members' => 'Wyślij wiadomość do posiadaczy roli',
        'Also send to customers in groups' => 'Wyślij także, do klientów w grupach',
        'Body' => 'Treść',
        'Send' => 'Wyślij',

        # Template: AdminGenericAgent
        'Generic Agent' => 'Agent automatyczny',
        'Add job' => 'Dodaj zadanie',
        'Last run' => 'Ostatnie uruchomienie',
        'Run Now!' => 'Uruchom teraz',
        'Delete this task' => 'Usuń to zadanie',
        'Run this task' => 'Uruchom to zadanie',
        'Job Settings' => 'Ustawienia zadania',
        'Job name' => 'Nazwa zadania',
        'Currently this generic agent job will not run automatically.' =>
            'Zadanie nie zostanie uruchomione automatycznie.',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            '',
        'Schedule minutes' => '',
        'Schedule hours' => '',
        'Schedule days' => '',
        'Toggle this widget' => '',
        'Ticket Filter' => '',
        '(e. g. 10*5155 or 105658*)' => '(np. 10*5155 lub 105658*)',
        '(e. g. 234321)' => '(np. 3242442)',
        'Customer login' => '',
        '(e. g. U5150)' => '(np. U4543)',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => '',
        'Agent' => 'Agent',
        'Ticket lock' => '',
        'Create times' => '',
        'No create time settings.' => 'Bez czasów utworzenia.',
        'Ticket created' => 'Zgłoszenie utworzone',
        'Ticket created between' => 'Zgłoszenie utworzone między',
        'Change times' => '',
        'No change time settings.' => 'Brak zmiany ustawień czasu',
        'Ticket changed' => 'Zgłoszenie zmieniono',
        'Ticket changed between' => 'Zgłoszenie zmieniono pomiędzy',
        'Close times' => '',
        'No close time settings.' => 'Bez czasów zamkniecia.',
        'Ticket closed' => 'Zgłoszenie zamknięte',
        'Ticket closed between' => 'Zgłoszenie zamknięte między',
        'Pending times' => '',
        'No pending time settings.' => 'Bez czasów oczekiwania.',
        'Ticket pending time reached' => 'Oczekiwanie zakończone',
        'Ticket pending time reached between' => 'Oczekiwanie zakończone między',
        'Escalation times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - first response time' => '',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - update time' => '',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - solution time' => '',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'Archive search option' => '',
        'Ticket Action' => '',
        'Set new service' => '',
        'Set new Service Level Agreement' => '',
        'Set new priority' => '',
        'Set new queue' => '',
        'Set new state' => '',
        'Set new agent' => '',
        'new owner' => '',
        'new responsible' => '',
        'Set new ticket lock' => '',
        'New customer' => '',
        'New customer ID' => '',
        'New title' => '',
        'New type' => '',
        'New Dynamic Fields' => '',
        'Archive selected tickets' => '',
        'Add Note' => 'Dodaj notatkę',
        'Time units' => 'Jednostek czasu',
        ' (work units)' => ' (jednostek roboczych)',
        'Ticket Commands' => '',
        'Send agent/customer notifications on changes' => 'Wyślij powidomienia agentowi/klientowi przy zmianie ',
        'CMD' => 'linia poleceń',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'Komenda zostanie wykonana. ARG[0] to numer zgłoszenia. ARG[1] to id zgłoszenia.',
        'Delete tickets' => 'Usuń zgłoszenia',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            '',
        'Execute Custom Module' => '',
        'Param %s key' => '',
        'Param %s value' => '',
        'Save Changes' => '',
        'Results' => 'Wyniki',
        '%s Tickets affected! What do you want to do?' => '',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            '',
        'Edit job' => 'Edytuj zadanie',
        'Run job' => 'Wykonaj zadanie',
        'Affected Tickets' => '',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => '',
        'Web Services' => '',
        'Debugger' => '',
        'Go back to web service' => '',
        'Clear' => '',
        'Do you really want to clear the debug log of this web service?' =>
            '',
        'Request List' => '',
        'Time' => 'Czas',
        'Remote IP' => '',
        'Loading' => 'Ładowanie',
        'Select a single request to see its details.' => '',
        'Filter by type' => '',
        'Filter from' => '',
        'Filter to' => '',
        'Filter by remote IP' => '',
        'Refresh' => 'Odswież',
        'Request Details' => '',
        'An error occurred during communication.' => '',
        'Show or hide the content' => 'Pokaż lub ukryj treść',
        'Clear debug log' => '',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => '',
        'Change Invoker %s of Web Service %s' => '',
        'Add new invoker' => '',
        'Change invoker %s' => '',
        'Do you really want to delete this invoker?' => '',
        'All configuration data will be lost.' => '',
        'Invoker Details' => '',
        'The name is typically used to call up an operation of a remote web service.' =>
            '',
        'Please provide a unique name for this web service invoker.' => '',
        'The name you entered already exists.' => '',
        'Invoker backend' => '',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            '',
        'Mapping for outgoing request data' => '',
        'Configure' => '',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Mapping for incoming response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            '',
        'Event Triggers' => '',
        'Asynchronous' => '',
        'Delete this event' => '',
        'This invoker will be triggered by the configured events.' => '',
        'Do you really want to delete this event trigger?' => '',
        'Add Event Trigger' => '',
        'To add a new event select the event object and event name and click on the "+" button' =>
            '',
        'Asynchronous event triggers are handled by the OTRS Scheduler in background (recommended).' =>
            '',
        'Synchronous event triggers would be processed directly during the web request.' =>
            '',
        'Save and continue' => '',
        'Save and finish' => '',
        'Delete this Invoker' => '',
        'Delete this Event Trigger' => '',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => '',
        'Go back to' => '',
        'Mapping Simple' => '',
        'Default rule for unmapped keys' => '',
        'This rule will apply for all keys with no mapping rule.' => '',
        'Default rule for unmapped values' => '',
        'This rule will apply for all values with no mapping rule.' => '',
        'New key map' => '',
        'Add key mapping' => '',
        'Mapping for Key ' => '',
        'Remove key mapping' => '',
        'Key mapping' => '',
        'Map key' => '',
        'matching the' => '',
        'to new key' => '',
        'Value mapping' => '',
        'Map value' => '',
        'to new value' => '',
        'Remove value mapping' => '',
        'New value map' => '',
        'Add value mapping' => '',
        'Do you really want to delete this key mapping?' => '',
        'Delete this Key Mapping' => '',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => '',
        'Change Operation %s of Web Service %s' => '',
        'Add new operation' => '',
        'Change operation %s' => '',
        'Do you really want to delete this operation?' => '',
        'Operation Details' => '',
        'The name is typically used to call up this web service operation from a remote system.' =>
            '',
        'Please provide a unique name for this web service.' => '',
        'Mapping for incoming request data' => '',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            '',
        'Operation backend' => '',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            '',
        'Mapping for outgoing response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Delete this Operation' => '',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => '',
        'Network transport' => '',
        'Properties' => '',
        'Endpoint' => '',
        'URI to indicate a specific location for accessing a service.' =>
            '',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => '',
        'Namespace' => '',
        'URI to give SOAP methods a context, reducing ambiguities.' => '',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            '',
        'Maximum message length' => '',
        'This field should be an integer number.' => '',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            '',
        'Encoding' => '',
        'The character encoding for the SOAP message contents.' => '',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => '',
        'SOAPAction' => '',
        'Set to "Yes" to send a filled SOAPAction header.' => '',
        'Set to "No" to send an empty SOAPAction header.' => '',
        'SOAPAction separator' => '',
        'Character to use as separator between name space and SOAP method.' =>
            '',
        'Usually .Net web services uses a "/" as separator.' => '',
        'Authentication' => '',
        'The authentication mechanism to access the remote system.' => '',
        'A "-" value means no authentication.' => '',
        'The user name to be used to access the remote system.' => '',
        'The password for the privileged user.' => '',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => '',
        'Add web service' => '',
        'Clone web service' => '',
        'The name must be unique.' => '',
        'Clone' => '',
        'Export web service' => '',
        'Import web service' => '',
        'Configuration File' => '',
        'The file must be a valid web service configuration YAML file.' =>
            '',
        'Import' => 'Importuj',
        'Configuration history' => '',
        'Delete web service' => '',
        'Do you really want to delete this web service?' => '',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            '',
        'If you want to return to overview please click the "Go to overview" button.' =>
            '',
        'Web Service List' => '',
        'Remote system' => '',
        'Provider transport' => '',
        'Requester transport' => '',
        'Details' => '',
        'Debug threshold' => '',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            '',
        'In requester mode, OTRS uses web services of remote systems.' =>
            '',
        'Operations are individual system functions which remote systems can request.' =>
            '',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            '',
        'Controller' => '',
        'Inbound mapping' => '',
        'Outbound mapping' => '',
        'Delete this action' => '',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            '',
        'Delete webservice' => '',
        'Delete operation' => '',
        'Delete invoker' => '',
        'Clone webservice' => '',
        'Import webservice' => '',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => '',
        'Go back to Web Service' => '',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            '',
        'Configuration History List' => '',
        'Version' => 'Wersja',
        'Create time' => '',
        'Select a single configuration version to see its details.' => '',
        'Export web service configuration' => '',
        'Restore web service configuration' => '',
        'Do you really want to restore this version of the web service configuration?' =>
            '',
        'Your current web service configuration will be overwritten.' => '',
        'Show or hide the content.' => '',
        'Restore' => '',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            'Uwaga: Jezeli zmienisz nazwę grupy \'admin\', przed wykonaniem właściwych zmian w SysConfig, zablokujesz panel administratorów! Jeżeli to nastąpi, przywróć nazwę grupy admin z użyciem SQL.',
        'Group Management' => 'Zarządzanie grupami',
        'Add group' => 'Dodaj Grupę',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            'Grupa Admin pozwala posiada prawa Administracji systemem. Grupa Stats umożliwia przeglądanie statystyk zgłoszeń.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            '',
        'It\'s useful for ASP solutions. ' => '',
        'Add Group' => 'Dodaj grupę',
        'Edit Group' => 'Edytuj Grupę',

        # Template: AdminLog
        'System Log' => 'Log Systemu',
        'Here you will find log information about your system.' => 'Tutaj znajdziesz informacje o swoim systemie OTRS',
        'Hide this message' => '',
        'Recent Log Entries' => '',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Zarządzanie kontami e-mail',
        'Add mail account' => 'Dodaj konto pocztowe',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'Wszystkie przychodzące na jedno konto wiadomości będą umieszczone w zaznacznej kolejce!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            'Jezeli konto jest zaufane, istniejące w chwili przybycia nagłówki X-OTRS (priorytet, ...) zostaną użyte! Filtr PostMaster zostanie wykonany.',
        'Host' => 'Komputer',
        'Delete account' => 'Usuń konto',
        'Fetch mail' => 'Pobierz pocztę',
        'Add Mail Account' => 'Dodaj Konto Pocztowe',
        'Example: mail.example.com' => '',
        'IMAP Folder' => '',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            '',
        'Trusted' => 'Zaufane',
        'Dispatching' => 'Przekazanie',
        'Edit Mail Account' => 'Edytuj Konto Pocztowe',

        # Template: AdminNavigationBar
        'Admin' => 'Administracja',
        'Agent Management' => 'Zarządzanie agentami',
        'Queue Settings' => 'Ustawienia kolejki',
        'Ticket Settings' => 'Ustawienia zgłoszenia',
        'System Administration' => 'Administracja systemem',

        # Template: AdminNotification
        'Notification Management' => 'Konfiguracja Powiadomień',
        'Select a different language' => '',
        'Filter for Notification' => 'Filtr powiadomień',
        'Notifications are sent to an agent or a customer.' => 'Powiadomienia są wysyłane do agenta obsługi lub klienta',
        'Notification' => 'Powiadomienie',
        'Edit Notification' => 'Edytuj Powiadomienie',
        'e. g.' => 'np.',
        'Options of the current customer data' => '',

        # Template: AdminNotificationEvent
        'Add notification' => '',
        'Delete this notification' => '',
        'Add Notification' => '',
        'Recipient groups' => '',
        'Recipient agents' => '',
        'Recipient roles' => '',
        'Recipient email addresses' => '',
        'Article type' => 'Typ artykułu',
        'Only for ArticleCreate event' => '',
        'Subject match' => '',
        'Body match' => '',
        'Include attachments to notification' => '',
        'Notification article type' => '',
        'Only for notifications to specified email addresses' => '',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            '',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            '',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            '',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            '',

        # Template: AdminPGP
        'PGP Management' => 'Zarządzanie PGP',
        'Use this feature if you want to work with PGP keys.' => '',
        'Add PGP key' => '',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'W ten sposób mozesz bezpośrednio edytować plik kluczy skonfigurowany w SysConfig.',
        'Introduction to PGP' => '',
        'Result' => 'Wynik',
        'Identifier' => 'Identyfikator',
        'Bit' => 'Bit',
        'Fingerprint' => 'Znacznik (fingerprint)',
        'Expires' => 'Wygasa',
        'Delete this key' => '',
        'Add PGP Key' => '',
        'PGP key' => '',

        # Template: AdminPackageManager
        'Package Manager' => 'Menedżer pakietów',
        'Uninstall package' => '',
        'Do you really want to uninstall this package?' => 'Czy na pewno chcesz odinstalować ten pakiet?',
        'Reinstall package' => '',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            '',
        'Continue' => 'Kontynuuj',
        'Install' => 'Instaluj',
        'Install Package' => '',
        'Update repository information' => '',
        'Did not find a required feature? OTRS Group provides their subscription customers with exclusive Add-Ons:' =>
            '',
        'Online Repository' => 'Baza on-line',
        'Vendor' => 'Wydawca',
        'Module documentation' => 'Dokumentacja modułu',
        'Upgrade' => 'Aktualizacja',
        'Local Repository' => 'Lokalna baza',
        'Uninstall' => 'Odinstaluj',
        'Reinstall' => 'Przeinstaluj',
        'Download package' => '',
        'Rebuild package' => '',
        'Metadata' => '',
        'Change Log' => '',
        'Date' => 'Data',
        'List of Files' => '',
        'Permission' => 'Prawo dostępu',
        'Download' => 'Pobierz',
        'Download file from package!' => 'Pobierz plik z pakietu!',
        'Required' => 'Wymagany',
        'PrimaryKey' => 'Klucz podstawowy',
        'AutoIncrement' => 'Zwiększaj automatycznie',
        'SQL' => 'SQL',
        'File differences for file %s' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Log wydajnosci',
        'This feature is enabled!' => 'Ta funkcja jest włączona!',
        'Just use this feature if you want to log each request.' => 'Wybierz tą opcję jezeli chcesz logować każde żądanie.',
        'Activating this feature might affect your system performance!' =>
            '',
        'Disable it here!' => 'Wyłącz tutaj!',
        'Logfile too large!' => 'Plik log jest za duży!',
        'The logfile is too large, you need to reset it' => '',
        'Overview' => 'Podsumowanie',
        'Range' => 'Zakres',
        'Interface' => 'Interfejs',
        'Requests' => 'Żądania',
        'Min Response' => 'Min. odpowiedź',
        'Max Response' => 'Max odpowiedź',
        'Average Response' => 'Średnia odpowiedź',
        'Period' => 'Okres',
        'Min' => 'Min.',
        'Max' => 'Max.',
        'Average' => 'Średnia',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Zarządzanie filtrami poczty',
        'Add filter' => '',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            '',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'Jeżeli chcesz tylko dopasować adres e-mail użyj EMAILADDRESS:info@example.com w polach Od, Do lub Cc.',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            '',
        'Delete this filter' => '',
        'Add PostMaster Filter' => '',
        'Edit PostMaster Filter' => '',
        'Filter name' => '',
        'The name is required.' => '',
        'Stop after match' => 'Zatrzymaj po dopasowaniu',
        'Filter Condition' => '',
        'The field needs to be a valid regular expression or a literal word.' =>
            '',
        'Set Email Headers' => '',
        'The field needs to be a literal word.' => '',

        # Template: AdminPriority
        'Priority Management' => 'Zarządzanie priorytetami',
        'Add priority' => '',
        'Add Priority' => 'Dodaj priorytet',
        'Edit Priority' => '',

        # Template: AdminQueue
        'Manage Queues' => '',
        'Add queue' => '',
        'Add Queue' => '',
        'Edit Queue' => '',
        'Sub-queue of' => '',
        'Unlock timeout' => 'Limit czasowy odblokowania',
        '0 = no unlock' => '0 = bez odblokowania',
        'Only business hours are counted.' => 'Tylko godziny pracy są liczone.',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            '',
        'Notify by' => 'Powiadom wcześniej',
        '0 = no escalation' => '0 = brak eskalacji',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            '',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            '',
        'Follow up Option' => 'Opcja Follow Up',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            '',
        'Ticket lock after a follow up' => 'Zgłoszenie zablokowane po odpowiedzi (Follow Up)',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            '',
        'System address' => '',
        'Will be the sender address of this queue for email answers.' => 'Będzie adresem nadawcy odpowiedzi emailowych wysyłanych z tej kolejki.',
        'Default sign key' => '',
        'The salutation for email answers.' => 'Zwrot grzecznościowy dla odpowiedzi emailowych.',
        'The signature for email answers.' => 'Podpis dla odpowiedzi emailowych.',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => '',
        'Filter for Queues' => 'Filtrowanie kolejek',
        'Filter for Auto Responses' => 'Filtrowanie automatycznych odpowiedzi',
        'Auto Responses' => 'Automatyczna odpowiedź',
        'Change Auto Response Relations for Queue' => '',
        'settings' => 'ustawienia',

        # Template: AdminQueueResponses
        'Manage Response-Queue Relations' => '',
        'Filter' => 'Filtr',
        'Filter for Responses' => '',
        'Responses' => 'Odpowiedzi',
        'Change Queue Relations for Response' => '',
        'Change Response Relations for Queue' => '',

        # Template: AdminResponse
        'Manage Responses' => 'Zarządzaj odpowiedziami',
        'Add response' => 'Dodaj odpowiedź',
        'A response is default text to write faster answer (with default text) to customers.' =>
            'Odpowiedź to domyślny tekst wstawiany do odpowiedzi klientowi, dzięki czemu agent może szybciej odpowiedzieć na zgłoszenie.',
        'Don\'t forget to add a new response a queue!' => 'Nie zapomnij powiązać nowej odpowiedzi z jakąś kolejką!',
        'Delete this entry' => 'Usuń tę pozycję',
        'Add Response' => 'Dodaj odpowiedź',
        'Edit Response' => 'Edytuj odpowiedź',
        'The current ticket state is' => 'Aktualny status zgłoszenia to',
        'Your email address is' => 'Twój adres email to',

        # Template: AdminResponseAttachment
        'Manage Responses <-> Attachments Relations' => '',
        'Filter for Attachments' => '',
        'Change Response Relations for Attachment' => '',
        'Change Attachment Relations for Response' => '',
        'Toggle active for all' => '',
        'Link %s to selected %s' => '',

        # Template: AdminRole
        'Role Management' => 'Zarządzanie rolami',
        'Add role' => 'Dodaj rolę',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'Utwórz rolę i dodaj grupę do niej. Potem dodaj rolę do użytkownika.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            '',
        'Add Role' => 'Dodaj rolę',
        'Edit Role' => 'Edytuj rolę',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => '',
        'Filter for Roles' => '',
        'Roles' => 'Role',
        'Select the role:group permissions.' => '',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            '',
        'Change Role Relations for Group' => '',
        'Change Group Relations for Role' => '',
        'Toggle %s permission for all' => '',
        'move_into' => 'przenieś do',
        'Permissions to move tickets into this group/queue.' => 'Uprawnienia do przesuwania zgłoszeń do tej grupy/kolejki',
        'create' => 'utwórz',
        'Permissions to create tickets in this group/queue.' => 'Uprawnienia do tworzenia zgłoszeń w tej grupie/kolejce',
        'priority' => 'priorytet',
        'Permissions to change the ticket priority in this group/queue.' =>
            'Uprawnienia do zmiany priorytetu zgłoszenia w tej grupie/kolejce',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => '',
        'Filter for Agents' => 'Filtrowanie agentów',
        'Agents' => 'Agenci',
        'Manage Role-Agent Relations' => 'Zarządzaj relacjami Rola<->Agent',
        'Change Role Relations for Agent' => '',
        'Change Agent Relations for Role' => '',

        # Template: AdminSLA
        'SLA Management' => 'Konfiguracja SLA',
        'Add SLA' => 'Dodaj SLA',
        'Edit SLA' => 'Edytuj SLA',
        'Please write only numbers!' => '',

        # Template: AdminSMIME
        'S/MIME Management' => 'Konfiguracja S/MIME',
        'Add certificate' => '',
        'Add private key' => '',
        'Filter for certificates' => '',
        'Filter for SMIME certs' => '',
        'Here you can add relations to your private certificate, these will be embedded to the SMIME signature every time you use this certificate to sign an email.' =>
            '',
        'See also' => 'Zobacz także',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'W taki sposób możesz bezpośrednio edytować certyfikaty i klucze prywarne w systemie plików',
        'Hash' => 'Skrót (hash)',
        'Create' => 'Utwórz',
        'Handle related certificates' => '',
        'Delete this certificate' => '',
        'Add Certificate' => 'Dodaj certyfikat',
        'Add Private Key' => 'Dodaj klucz prywatny',
        'Secret' => 'Hasło',
        'Related Certificates for' => '',
        'Delete this relation' => '',
        'Available Certificates' => '',
        'Relate this certificate' => '',

        # Template: AdminSalutation
        'Salutation Management' => 'Konfiguracja zwrotów grzecznościowych',
        'Add salutation' => '',
        'Add Salutation' => 'Dodaj zwrot grzecznościowy',
        'Edit Salutation' => 'Edytuj zwrot',
        'Example salutation' => 'Przykładowy zwrot grzecznościowy',

        # Template: AdminScheduler
        'This option will force Scheduler to start even if the process is still registered in the database' =>
            '',
        'Start scheduler' => '',
        'Scheduler could not be started. Check if scheduler is not running and try it again with Force Start option' =>
            '',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' =>
            '',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            '',

        # Template: AdminSelectBox
        'SQL Box' => 'Konsola SQL',
        'Here you can enter SQL to send it directly to the application database.' =>
            'Wpisz zapytanie SQL, które zostanie wysłane bezpośrednio do bazy danych.',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            '',
        'There is at least one parameter missing for the binding. Please check it.' =>
            '',
        'Result format' => 'Format wyników',
        'Run Query' => 'Uruchom polecenie',

        # Template: AdminService
        'Service Management' => 'Konfiguracja usług',
        'Add service' => 'Dodaj usługę',
        'Add Service' => 'Dodaj usługę',
        'Edit Service' => 'Edytuj usługę',
        'Sub-service of' => 'Usługa podrzędna',

        # Template: AdminSession
        'Session Management' => 'Zarządzanie sesjami',
        'All sessions' => 'Wszystkie sesje',
        'Agent sessions' => 'Sesje agentów',
        'Customer sessions' => 'Sesje klientów',
        'Unique agents' => 'Unikalni agenci',
        'Unique customers' => 'Unikalni klienci',
        'Kill all sessions' => 'Zakończ wszystkie sesje',
        'Kill this session' => 'Zabij tą sesję',
        'Session' => 'Sesja',
        'Kill' => 'Zabij',
        'Detail View for SessionID' => 'Widok szczegółów sesji',

        # Template: AdminSignature
        'Signature Management' => 'Konfiguracja podpisów',
        'Add signature' => 'Dodaj podpis',
        'Add Signature' => 'Dodaj podpis',
        'Edit Signature' => 'Edytuj podpis',
        'Example signature' => 'Przykładowy podpis',

        # Template: AdminState
        'State Management' => 'Konfiguracja statusów',
        'Add state' => 'Dodaj status',
        'Please also update the states in SysConfig where needed.' => '',
        'Add State' => 'Dodaj status',
        'Edit State' => 'Edytuj status',
        'State type' => 'Typ statusu',

        # Template: AdminSysConfig
        'SysConfig' => 'Konfiguracja systemu',
        'Navigate by searching in %s settings' => '',
        'Navigate by selecting config groups' => '',
        'Download all system config changes' => '',
        'Export settings' => 'Eksportuj ustawienia',
        'Load SysConfig settings from file' => '',
        'Import settings' => 'Importuj ustawienia',
        'Import Settings' => 'Importuj ustawienia',
        'Please enter a search term to look for settings.' => '',
        'Subgroup' => 'Podgrupa',
        'Elements' => 'Elementy',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => 'Edytuj Ustawienia Konfiguracyjne',
        'This config item is only available in a higher config level!' =>
            '',
        'Reset this setting' => 'Resetuj to ustawienie',
        'Error: this file could not be found.' => '',
        'Error: this directory could not be found.' => '',
        'Error: an invalid value was entered.' => '',
        'Content' => 'Zawartość',
        'Remove this entry' => 'Usuń tę pozycję',
        'Add entry' => 'Dodaj pozycję',
        'Remove entry' => 'Usuń pozycję',
        'Add new entry' => 'Dodaj nową pozycję',
        'Create new entry' => 'Utwórz nową pozycję',
        'New group' => 'Nowa grupa',
        'Group ro' => 'Grupa ro',
        'Readonly group' => 'Grupa readonly',
        'New group ro' => 'Nowa grupa ro',
        'Loader' => '',
        'File to load for this frontend module' => 'Plik do załadowania dla tego modułu',
        'New Loader File' => '',
        'NavBarName' => 'Nazwa paska nawigacyjnego',
        'NavBar' => 'Pasek nawigacyjny',
        'LinkOption' => '',
        'Block' => 'Blok',
        'AccessKey' => 'Klawisz skrótu',
        'Add NavBar entry' => 'Dodaj pozycję paska nawigacyjnego',
        'Year' => 'Rok',
        'Month' => 'Miesiąc',
        'Day' => 'Dzień',
        'Invalid year' => 'Niewłaściwy rok',
        'Invalid month' => 'Niewłaściwy miesiąc',
        'Invalid day' => 'Niewłaściwy dzień',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'Konfiguracja adresów email Systemu',
        'Add system address' => '',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            '',
        'Email address' => '',
        'Display name' => '',
        'Add System Email Address' => '',
        'Edit System Email Address' => '',
        'The display name and email address will be shown on mail you send.' =>
            '',

        # Template: AdminType
        'Type Management' => 'Zarządzanie typami',
        'Add ticket type' => 'Dodaj typ zgłoszenia',
        'Add Type' => 'Dodaj typ',
        'Edit Type' => 'Edytuj typ zgłoszenia',

        # Template: AdminUser
        'Add agent' => '',
        'Agents will be needed to handle tickets.' => '',
        'Don\'t forget to add a new agent to groups and/or roles!' => '',
        'Please enter a search term to look for agents.' => '',
        'Last login' => '',
        'Login as' => 'Zaloguj jako',
        'Switch to agent' => '',
        'Add Agent' => '',
        'Edit Agent' => '',
        'Firstname' => 'Imię',
        'Lastname' => 'Nazwisko',
        'Password is required.' => '',
        'Start' => 'Początek',
        'End' => 'Koniec',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => '',
        'Change Group Relations for Agent' => '',
        'Change Agent Relations for Group' => '',
        'note' => '',
        'Permissions to add notes to tickets in this group/queue.' => '',
        'owner' => 'właściciel',
        'Permissions to change the owner of tickets in this group/queue.' =>
            '',

        # Template: AgentBook
        'Address Book' => 'Książka adresowa',
        'Search for a customer' => '',
        'Add email address %s to the To field' => '',
        'Add email address %s to the Cc field' => '',
        'Add email address %s to the Bcc field' => '',
        'Apply' => '',

        # Template: AgentCustomerSearch
        'Search Customer' => 'Szukaj klienta',
        'Duplicated entry' => '',
        'This address already exists on the address list.' => '',

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => 'Podsumowanie',

        # Template: AgentDashboardCalendarOverview
        'in' => 'za',

        # Template: AgentDashboardIFrame

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '',
        'Please update now.' => '',
        'Release Note' => '',
        'Level' => '',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '',

        # Template: AgentDashboardTicketGeneric

        # Template: AgentDashboardTicketStats

        # Template: AgentDashboardUserOnline

        # Template: AgentHTMLReferenceForms

        # Template: AgentHTMLReferenceOverview

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => '',
        'Undo & close window' => '',

        # Template: AgentInfo
        'Info' => 'Info',
        'To accept some news, a license or some changes.' => '',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Przypisz obiekt: %s',
        'Close window' => 'Zamknij okienko',
        'go to link delete screen' => '',
        'Select Target Object' => 'Wybierz obiekt docelowy',
        'Link Object' => 'Przypisz obiekt',
        'with' => 'z',
        'Unlink Object: %s' => 'Oddziel obiekt: %s',
        'go to link add screen' => '',

        # Template: AgentNavigationBar

        # Template: AgentPreferences
        'Edit your preferences' => 'Zmień swoje ustawienia',

        # Template: AgentSpelling
        'Spell Checker' => 'Słownik',
        'spelling error(s)' => 'błędów językowych',
        'Apply these changes' => 'Zastosuj te zmiany',

        # Template: AgentStatsDelete
        'Delete stat' => '',
        'Stat#' => 'Statystyka',
        'Do you really want to delete this stat?' => '',

        # Template: AgentStatsEditRestrictions
        'Step %s' => '',
        'General Specifications' => '',
        'Select the element that will be used at the X-axis' => '',
        'Select the elements for the value series' => 'Wybierz elementy dla serii danych',
        'Select the restrictions to characterize the stat' => '',
        'Here you can make restrictions to your stat.' => 'Tu możesz nałożyć ograniczenia na swój raport.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' =>
            'Jeżeli usuniesz znacznik  w polu "Fixed", agent będzie mógł zmienić atrybuty powiazanego elementu.',
        'Fixed' => 'Stały',
        'Please select only one element or turn off the button \'Fixed\'.' =>
            'Wybierz jeden element lub odznacz przycisk \'Stały\'',
        'Absolute Period' => '',
        'Between' => 'Pomiedzy',
        'Relative Period' => 'Wzgledny przedział',
        'The last' => 'Ostatni',
        'Finish' => 'Koniec',

        # Template: AgentStatsEditSpecification
        'Permissions' => 'Prawa',
        'You can select one or more groups to define access for different agents.' =>
            '',
        'Some result formats are disabled because at least one needed package is not installed.' =>
            '',
        'Please contact your administrator.' => '',
        'Graph size' => '',
        'If you use a graph as output format you have to select at least one graph size.' =>
            'Jeżeli używasz wykresu jako formaty wyjsciowego musisz okreslić jego rozmiar.',
        'Sum rows' => 'Suma wierszy',
        'Sum columns' => 'Suma kolumn',
        'Use cache' => '',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' =>
            'Większość raportów może być umieszczona w pamięci podręcznej. Przyspiesza to wyświetlanie tych raportów.',
        'If set to invalid end users can not generate the stat.' => '',

        # Template: AgentStatsEditValueSeries
        'Here you can define the value series.' => '',
        'You have the possibility to select one or two elements.' => '',
        'Then you can select the attributes of elements.' => '',
        'Each attribute will be shown as single value series.' => '',
        'If you don\'t select any attribute all attributes of the element will be used if you generate a stat, as well as new attributes which were added since the last configuration.' =>
            '',
        'Scale' => 'Skala',
        'minimal' => 'minimum',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' =>
            'Pamiętaj że skala wartości moze być większa od skali osi X (np. oś X => Miesiące, Wartości => Rok).',

        # Template: AgentStatsEditXaxis
        'Here you can define the x-axis. You can select one element via the radio button.' =>
            '',
        'maximal period' => 'maksymalny przedział',
        'minimal scale' => 'minimalna skala',

        # Template: AgentStatsImport
        'Import Stat' => '',
        'File is not a Stats config' => 'Plik nie jest szablonem rapoortu',
        'No File selected' => 'Nie wybrano pliku',

        # Template: AgentStatsOverview
        'Stats' => 'Statystyki',

        # Template: AgentStatsPrint
        'Print' => 'Drukuj',
        'No Element selected.' => 'Nie wybrano elementu.',

        # Template: AgentStatsView
        'Export config' => '',
        'With the input and select fields you can influence the format and contents of the statistic.' =>
            '',
        'Exactly what fields and formats you can influence is defined by the statistic administrator.' =>
            '',
        'Stat Details' => '',
        'Format' => 'Format',
        'Graphsize' => 'Wielkość wykresu',
        'Cache' => 'Pamięć podręczna',
        'Exchange Axis' => 'Zamień osie',
        'Configurable params of static stat' => 'Konfigurowalne parametry statycznego raportu',
        'No element selected.' => 'Nie wybrano elementu',
        'maximal period from' => 'maksymalny przedział od',
        'to' => 'do',

        # Template: AgentTicketActionCommon
        'Change Free Text of Ticket' => '',
        'Change Owner of Ticket' => '',
        'Close Ticket' => '',
        'Add Note to Ticket' => '',
        'Set Pending' => 'Ustaw oczekiwanie',
        'Change Priority of Ticket' => '',
        'Change Responsible of Ticket' => '',
        'Cancel & close window' => 'Anuluj i zamknij okienko',
        'Service invalid.' => '',
        'New Owner' => 'Nowy właściciel',
        'Please set a new owner!' => '',
        'Previous Owner' => 'Poprzedni właściciel',
        'Inform Agent' => 'Poinformuj agenta',
        'Optional' => 'Opcjonalny',
        'Inform involved Agents' => 'Poinformuj zaangażowanych agentów',
        'Spell check' => 'Sprawdzanie poprawności',
        'Note type' => 'Typ notatki',
        'Next state' => 'Następny status',
        'Pending date' => 'Data oczekiwania',
        'Date invalid!' => 'Niepoprawna data',

        # Template: AgentTicketActionPopupClose

        # Template: AgentTicketBounce
        'Bounce Ticket' => '',
        'Bounce to' => 'Przekaż do',
        'You need a email address.' => '',
        'Need a valid email address or don\'t use a local email address.' =>
            '',
        'Next ticket state' => 'Następny status zgłoszenia',
        'Inform sender' => 'Powiadom nadawcę',
        'Send mail!' => 'Wyślij wiadomość!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Akcja grupowa',
        'Send Email' => '',
        'Merge to' => 'Przyłącz do',
        'Invalid ticket identifier!' => '',
        'Merge to oldest' => 'Przyłącz do najstarszego',
        'Link together' => 'Połącz razem',
        'Link to parent' => '',
        'Unlock tickets' => '',

        # Template: AgentTicketClose

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Edytuj odpowiedź na zgłoszenie',
        'Remove Ticket Customer' => '',
        'Please remove this entry and enter a new one with the correct value.' =>
            '',
        'Please include at least one recipient' => '',
        'Remove Cc' => '',
        'Remove Bcc' => '',
        'Address book' => '',
        'Pending Date' => 'Termin wyznaczony',
        'for pending* states' => 'dla statusów "oczekujących" z pola powyżej',
        'Date Invalid!' => '',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Zmień klienta dla zgłoszenia',
        'Customer Data' => 'Dane klienta',
        'Customer user' => '',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => 'Utwórz nowe zgłoszenie email',
        'From queue' => 'Do kolejki',
        'To customer' => '',
        'Please include at least one customer for the ticket.' => '',
        'Get all' => 'Pobierz wszystkich',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Forward ticket: %s - %s' => '',
        'Need a valid email address or don\'t use a local email address' =>
            '',

        # Template: AgentTicketFreeText

        # Template: AgentTicketHistory
        'History of' => 'Historia',
        'History Content' => 'Zawartość historii',
        'Zoom view' => 'Widok szczegółowy',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Scal zgłoszenie',
        'You need to use a ticket number!' => 'Musisz użyć numeru zgłoszenia!',
        'A valid ticket number is required.' => 'Wymagany jest poprawny numer zgłoszenia.',
        'Need a valid email address.' => '',

        # Template: AgentTicketMove
        'Move Ticket' => 'Przenieś zgłoszenie',
        'New Queue' => 'Nowa kolejka',

        # Template: AgentTicketNote

        # Template: AgentTicketOverviewMedium
        'Select all' => 'Zaznacz wszystkie',
        'No ticket data found.' => '',
        'First Response Time' => 'Czas pozostały do pierwszej odpowiedzi',
        'Service Time' => 'W godzinach roboczych',
        'Update Time' => 'Czas pozostały do aktualizacji',
        'Solution Time' => 'Czas pozostały do rozwiazania',
        'Move ticket to a different queue' => 'Przenieś zgłoszenie do innej kolejki',
        'Change queue' => 'Zmień kolejkę',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'Zmień kryteria wyszukiwania',
        'Tickets per page' => '',

        # Template: AgentTicketOverviewPreview
        '","26' => '',

        # Template: AgentTicketOverviewSmall
        'Escalation in' => 'Eskalowane w',
        'Locked' => 'Blokada',
        '","30' => '',

        # Template: AgentTicketOwner

        # Template: AgentTicketPending

        # Template: AgentTicketPhone
        'Create New Phone Ticket' => 'Utwórz nowe zgłoszenie telefoniczne',
        'From customer' => 'Od klienta',
        'To queue' => 'Do kolejki',

        # Template: AgentTicketPhoneCommon
        'Phone call' => 'Telefon',

        # Template: AgentTicketPlain
        'Email Text Plain View' => '',
        'Plain' => 'Puste',
        'Download this email' => '',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Informacje o zgłoszeniu',
        'Accounted time' => 'Zaraportowany czas',
        'Linked-Object' => 'Powiązany obiekt',
        'by' => 'przez',

        # Template: AgentTicketPriority

        # Template: AgentTicketQueue

        # Template: AgentTicketResponsible

        # Template: AgentTicketSearch
        'Search template' => 'Szablon wyszukiwania',
        'Create Template' => 'Stwórz szablon',
        'Create New' => 'Stwórz nowy',
        'Profile link' => '',
        'Save changes in template' => '',
        'Add another attribute' => 'Dodaj kryterium wyszukiwania',
        'Output' => 'Formularz wyników',
        'Fulltext' => 'Pełnotekstowe',
        'Remove' => 'Usuń',
        'Customer User Login' => 'Login Klienta',
        'Created in Queue' => 'Utworzono w kolejce',
        'Lock state' => 'Stan blokady',
        'Watcher' => 'Obserwujący',
        'Article Create Time (before/after)' => '',
        'Article Create Time (between)' => '',
        'Ticket Create Time (before/after)' => '',
        'Ticket Create Time (between)' => '',
        'Ticket Change Time (before/after)' => '',
        'Ticket Change Time (between)' => '',
        'Ticket Close Time (before/after)' => '',
        'Ticket Close Time (between)' => '',
        'Archive Search' => 'Szukanie w archiwum',
        'Run search' => '',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Article filter' => 'Filtr wiadomości',
        'Article Type' => '',
        'Sender Type' => '',
        'Save filter settings as default' => 'Zapisz ustawienia filtru jako domyślne',
        'Ticket Information' => 'Informacje o zgłoszeniu',
        'Linked Objects' => 'Połączone elementy',
        'Article(s)' => 'Wiadomość(ci)',
        'Change Queue' => 'Zmień kolejkę',
        'Article Filter' => '',
        'Add Filter' => 'Dodaj filtr',
        'Set' => 'Ustaw',
        'Reset Filter' => 'resetuj filtr',
        'Show one article' => 'Pokaż tylko jedną wiadomość',
        'Show all articles' => 'Pokaż wszystkie wiadomości',
        'Unread articles' => 'Nieprzeczytane wiadomości',
        'No.' => '',
        'Unread Article!' => 'Nieprzeczytana wiadomość!',
        'Incoming message' => '',
        'Outgoing message' => '',
        'Internal message' => '',
        'Resize' => '',

        # Template: AttachmentBlocker
        'To protect your privacy, active or/and remote content has blocked.' =>
            '',
        'Load blocked content.' => 'Załaduj zablokowaną treść',

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerError
        'Traceback' => 'Śledź wstecz',

        # Template: CustomerFooter
        'Powered by' => 'Oparte na',
        'One or more errors occurred!' => '',
        'Close this dialog' => '',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            '',

        # Template: CustomerHeader

        # Template: CustomerLogin
        'Login' => 'Login',
        'User name' => '',
        'Your user name' => '',
        'Your password' => '',
        'Forgot password?' => 'Zapomniane hasło?',
        'Log In' => '',
        'Not yet registered?' => 'Nie jesteś jeszcze zarejetrowanym użytkownikiem?',
        'Sign up now' => 'Zarejestruj się',
        'Request new password' => 'Prośba o nowe hasło',
        'Your User Name' => 'Nazwa użytkownika',
        'A new password will be sent to your email address.' => '',
        'Create Account' => 'Utwórz konto',
        'Please fill out this form to receive login credentials.' => '',
        'How we should address you' => '',
        'Your First Name' => 'Twoje imię',
        'Please supply a first name' => '',
        'Your Last Name' => 'Twoje nazwisko',
        'Please supply a last name' => '',
        'Your email address (this will become your username)' => '',
        'Please supply a' => '',

        # Template: CustomerNavigationBar
        'Edit personal preferences' => 'Edytuj ustawienia osobiste',

        # Template: CustomerPreferences

        # Template: CustomerRichTextEditor

        # Template: CustomerTicketMessage
        'Service level agreement' => '',

        # Template: CustomerTicketOverview
        'Welcome!' => '',
        'Please click the button below to create your first ticket.' => '',
        'Create your first ticket' => '',

        # Template: CustomerTicketPrint
        'Ticket Print' => '',

        # Template: CustomerTicketSearch
        'Profile' => 'Profil',
        'e. g. 10*5155 or 105658*' => 'np. 10*5155 lub 105658*',
        'Customer ID' => 'ID klienta',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => 'Wyszukiwanie pełnotekstowe w zgłoszeniach (np. "*odyfikacj* lub Axapta*"',
        'Recipient' => 'Odbiorca',
        'Carbon Copy' => 'Ukryta kopia (CC)',
        'Time restrictions' => 'Ograniczenia czasowe',
        'No time settings' => '',
        'Only tickets created' => 'Tylko zgłoszenia utworzone',
        'Only tickets created between' => 'Tylko zgłoszenia utworzone między',
        'Ticket archive system' => '',
        'Save search as template?' => '',
        'Save as Template?' => 'Zapisz jako szablon',
        'Save as Template' => '',
        'Template Name' => 'Nazwa szablonu',
        'Pick a profile name' => '',
        'Output to' => 'Wyniki prezentuj jako',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort
        'of' => 'z',
        'Page' => 'Strona',
        'Search Results for' => '',
        '","18' => '',

        # Template: CustomerTicketZoom
        'Expand article' => '',
        'Reply' => 'Odpowiedź',

        # Template: CustomerWarning

        # Template: Datepicker
        'Invalid date (need a future date)!' => '',
        'Previous' => 'Poprzednie',
        'Sunday' => 'Niedziela',
        'Monday' => 'Poniedziałek',
        'Tuesday' => 'Wtorek',
        'Wednesday' => 'Środa',
        'Thursday' => 'Czwartek',
        'Friday' => 'Piątek',
        'Saturday' => 'Sobota',
        'Su' => 'Ndz',
        'Mo' => 'Pnd',
        'Tu' => 'Wtk',
        'We' => 'Śrd',
        'Th' => 'Czw',
        'Fr' => 'Ptk',
        'Sa' => 'Sob',
        'Open date selection' => '',

        # Template: Error
        'Oops! An Error occurred.' => 'Ciemna śrubka! Błond!',
        'Error Message' => 'Komunikat błędu',
        'You can' => 'Możesz',
        'Send a bugreport' => 'Wysłać raport na temat błędu',
        'go back to the previous page' => 'powrócić do poprzedniej strony',
        'Error Details' => 'Szczegóły błędu',

        # Template: Footer
        'Top of page' => 'Góra strony',

        # Template: FooterJS
        'If you now leave this page, all open popup windows will be closed, too!' =>
            '',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            '',

        # Template: FooterSmall

        # Template: HTMLHead

        # Template: HTMLHeadBlockEvents

        # Template: Header
        'You are logged in as' => 'Jesteś zalogowany jako',

        # Template: HeaderSmall

        # Template: Installer
        'JavaScript not available' => '',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            '',
        'Database Settings' => '',
        'General Specifications and Mail Settings' => '',
        'Registration' => '',
        'Welcome to %s' => 'Witamy w %s',
        'Web site' => '',
        'Database check successful.' => '',
        'Mail check successful.' => '',
        'Error in the mail settings. Please correct and try again.' => '',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => '',
        'Outbound mail type' => '',
        'Select outbound mail type.' => '',
        'Outbound mail port' => '',
        'Select outbound mail port.' => '',
        'SMTP host' => '',
        'SMTP host.' => '',
        'SMTP authentication' => '',
        'Does your SMTP host need authentication?' => '',
        'SMTP auth user' => '',
        'Username for SMTP auth.' => '',
        'SMTP auth password' => '',
        'Password for SMTP auth.' => '',
        'Configure Inbound Mail' => '',
        'Inbound mail type' => '',
        'Select inbound mail type.' => '',
        'Inbound mail host' => '',
        'Inbound mail host.' => '',
        'Inbound mail user' => '',
        'User for inbound mail.' => '',
        'Inbound mail password' => '',
        'Password for inbound mail.' => '',
        'Result of mail configuration check' => '',
        'Check mail configuration' => '',
        'Skip this step' => '',
        'Skipping this step will automatically skip the registration of your OTRS. Are you sure you want to continue?' =>
            '',

        # Template: InstallerDBResult
        'False' => '',

        # Template: InstallerDBStart
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' =>
            'Jeżeli masz hasło administratora bazy danych wpisz je tutaj. Jeżeli nie, zostaw pole puste. Ze wzgledów bezpieczeństwa zalecamy ustawienia hasła administratoa bazy danych. Po szczegóły sięgnij do dokumentacji bazy danych.',
        'Currently only MySQL is supported in the web installer.' => '',
        'If you want to install OTRS on another database type, please refer to the file README.database.' =>
            '',
        'Database-User' => 'Użytkownik bazy danych',
        'New' => 'Nowe',
        'A new database user with limited rights will be created for this OTRS system.' =>
            '',
        'default \'hot\'' => 'domyślne \'hot\'',
        'DB--- host' => '',
        'Check database settings' => '',
        'Result of database check' => '',

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            'Musisz wpisać następujące polecenie w linii komend (Terminal/Shell).',
        'Restart your webserver' => 'Uruchom ponownie serwer WWW',
        'After doing so your OTRS is up and running.' => 'Po zakończeniu tych czynności Twój system OTRS będzie gotowy do pracy',
        'Start page' => 'Strona startowa',
        'Your OTRS Team' => 'Twój Team OTRS',

        # Template: InstallerLicense
        'Accept license' => 'Akceptuję licencję',
        'Don\'t accept license' => 'Nie akceptuje licencji',

        # Template: InstallerLicenseText

        # Template: InstallerRegistration
        'Organization' => 'Organizacja',
        'Position' => '',
        'Complete registration and continue' => '',
        'Please fill in all fields marked as mandatory.' => '',

        # Template: InstallerSystem
        'SystemID' => 'ID Systemu',
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            '',
        'System FQDN' => 'Pełna domena systemu FQDN',
        'Fully qualified domain name of your system.' => '',
        'AdminEmail' => 'Email od Admina',
        'Email address of the system administrator.' => '',
        'Log' => 'Log',
        'LogModule' => 'Moduł logowania',
        'Log backend to use.' => '',
        'LogFile' => '',
        'Log file location is only needed for File-LogModule!' => '',
        'Webfrontend' => 'Interfejs webowy',
        'Default language' => '',
        'Default language.' => '',
        'CheckMXRecord' => 'Sprawdź rekord MX',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            '',

        # Template: LinkObject
        'Object#' => '',
        'Add links' => '',
        'Delete links' => 'Usuń linki',

        # Template: Login
        'JavaScript Not Available' => '',
        'Browser Warning' => '',
        'The browser you are using is too old.' => '',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            '',
        'Please see the documentation or ask your admin for further information.' =>
            '',
        'Lost your password?' => 'Zapomniałeś hasła?',
        'Request New Password' => '',
        'Back to login' => '',

        # Template: Motd
        'Message of the Day' => '',

        # Template: NoPermission
        'Insufficient Rights' => '',
        'Back to the previous page' => '',

        # Template: Notify

        # Template: Pagination
        'Show first page' => '',
        'Show previous pages' => '',
        'Show page %s' => '',
        'Show next pages' => '',
        'Show last page' => '',

        # Template: PictureUpload
        'Need FormID!' => '',
        'No file found!' => '',
        'The file is not an image that can be shown inline!' => '',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'wydrukowane przez',

        # Template: PublicDefault

        # Template: Redirect

        # Template: RichTextEditor

        # Template: SpellingInline

        # Template: Test
        'OTRS Test Page' => 'OTRS Strona testowa',
        'Welcome %s' => 'Witaj %s',
        'Counter' => 'Licznik',

        # Template: Warning
        'Go back to the previous page' => '',

        # SysConfig
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            '',
        'Activates lost password feature for agents, in the agent interface.' =>
            '',
        'Activates lost password feature for customers.' => '',
        'Activates support for customer groups.' => '',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            '',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            '',
        'Activates the ticket archive system search in the customer interface.' =>
            '',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            '',
        'Activates time accounting.' => '',
        'Add a note to this ticket' => '',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            '',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface.' =>
            '',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Agent Notifications' => 'Powiadomienie dla agentów',
        'Agent interface article notification module to check PGP.' => '',
        'Agent interface article notification module to check S/MIME.' =>
            '',
        'Agent interface module to access fulltext search via nav bar.' =>
            '',
        'Agent interface module to access search profiles via nav bar.' =>
            '',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            '',
        'Agent interface notification module to check the used charset.' =>
            '',
        'Agent interface notification module to see the number of tickets an agent is responsible for.' =>
            '',
        'Agent interface notification module to see the number of watched tickets.' =>
            '',
        'Agents <-> Groups' => 'Agenci <-> Grupy',
        'Agents <-> Roles' => '',
        'Allows adding notes in the close ticket screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket free text screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket note screen of the agent interface.' =>
            '',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Allows adding notes in the ticket responsible screen of the agent interface.' =>
            '',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            '',
        'Allows agents to generate individual-related stats.' => '',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            '',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            '',
        'Allows customers to change the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            '',
        'Allows customers to set the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            '',
        'Allows customers to set the ticket service in the customer interface.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            '',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            '',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            '',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            '',
        'Attachments <-> Responses' => 'Załączniki <-> Odpowiedzi',
        'Auto Responses <-> Queues' => '',
        'Automated line break in text messages after x number of chars.' =>
            '',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            '',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled).' =>
            '',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            '',
        'Balanced white skin by Felix Niklas.' => '',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            '',
        'Builds an article index right after the article\'s creation.' =>
            '',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            '',
        'Cache time in seconds for agent authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for customer authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for the web service config backend.' => '',
        'Change password' => '',
        'Change queue!' => '',
        'Change the customer for this ticket' => '',
        'Change the free fields for this ticket' => '',
        'Change the owner for this ticket' => '',
        'Change the responsible person for this ticket' => '',
        'Change the ticket priority' => '',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '',
        'Checkbox' => '',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            '',
        'Close this ticket' => '',
        'Comment for new history entries in the customer interface.' => '',
        'Companies' => '',
        'Company Tickets' => 'Zgłoszenia firmowe',
        'Company name for the customer web interface. Will also be included in emails as an X-Header.' =>
            '',
        'Configure your own log text for PGP.' => '',
        'Configures a default TicketDynmicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://doc.otrs.org/), chapter "Ticket Event Module".' =>
            '',
        'Configures the full-text index. Execute "bin/otrs.RebuildFulltextIndex.pl" in order to generate a new index.' =>
            '',
        'Controls if customers have the ability to sort their tickets.' =>
            '',
        'Converts HTML mails into text messages.' => '',
        'Create and manage Service Level Agreements (SLAs).' => 'Ustawienia Poziomów Serwisu (SLA)',
        'Create and manage agents.' => 'Zarządzanie listą agentów',
        'Create and manage attachments.' => 'Ustawienia standardowych załączników',
        'Create and manage companies.' => 'Zarządzanie listą Firm klientów',
        'Create and manage customers.' => 'Zarządzanie listą klientów',
        'Create and manage dynamic fields.' => '',
        'Create and manage event based notifications.' => '',
        'Create and manage groups.' => 'Ustawienia grup agentów',
        'Create and manage notifications that are sent to agents.' => 'Ustawienia powiadomień wysyłanych do agentów',
        'Create and manage queues.' => 'Ustawienia kolejek zgłoszeń',
        'Create and manage response templates.' => 'Ustawienia szablonów odpowiedzi',
        'Create and manage responses that are automatically sent.' => 'Ustawienia szablonów odpowiedzi automatycznych',
        'Create and manage roles.' => 'Zarządzanie rolami systemowymi',
        'Create and manage salutations.' => 'Ustawienia szablonów powitań',
        'Create and manage services.' => 'Zarządzanie usługami serwisowymi',
        'Create and manage signatures.' => 'Ustawienia szablonów podpisów',
        'Create and manage ticket priorities.' => 'Ustawianie priorytetów zgłoszeń',
        'Create and manage ticket states.' => 'Ustawienia statusów zgłoszeń',
        'Create and manage ticket types.' => 'Ustawienia typów zgłoszeń',
        'Create and manage web services.' => '',
        'Create new email ticket and send this out (outbound)' => 'Utwórz i wyślij nowe zgłoszenie mejlowe (wychodzące)',
        'Create new phone ticket (inbound)' => 'Utwórz nowe zgłoszenie telefoniczne (przychodzące)',
        'Custom text for the page shown to customers that have no tickets yet.' =>
            '',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customers <-> Groups' => 'Klienci <-> Grupy',
        'Customers <-> Services' => 'Klienci <-> Usługi',
        'DEPRECATED! This setting is not used any more and will be removed in a future version of OTRS.' =>
            '',
        'Data used to export the search result in CSV format.' => '',
        'Date / Time' => '',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            '',
        'Default ACL values for ticket actions.' => '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            '',
        'Default loop protection module.' => '',
        'Default queue ID used by the system in the agent interface.' => '',
        'Default skin for OTRS 3.0 interface.' => '',
        'Default skin for interface.' => '',
        'Default ticket ID used by the system in the agent interface.' =>
            '',
        'Default ticket ID used by the system in the customer interface.' =>
            '',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Define the start day of the week for the date picker.' => '',
        'Defines a customer item, which generates a LinkedIn icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a XING icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google maps icon at the end of a customer info block.' =>
            '',
        'Defines a default list of words, that are ignored by the spell checker.' =>
            '',
        'Defines a filter for html output to add links behind CVE numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind MSBulletin numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind bugtraq numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter to process the text in the articles, in order to highlight predefined keywords.' =>
            '',
        'Defines a regular expression that excludes some addresses from the syntax check (if "CheckEmailAddresses" is set to "Yes"). Please enter a regex in this field for email addresses, that aren\'t syntactically valid, but are necessary for the system (i.e. "root@localhost").' =>
            '',
        'Defines a regular expression that filters all email addresses that should not be used in the application.' =>
            '',
        'Defines a useful module to load specific user options or to display news.' =>
            '',
        'Defines all the X-headers that should be scanned.' => '',
        'Defines all the languages that are available to the application. The Key/Content pair links the front-end display name to the appropriate language PM file. The "Key" value should be the base-name of the PM file (i.e. de.pm is the file, then de is the "Key" value). The "Content" value should be the display name for the front-end. Specify any own-defined language here (see the developer documentation http://doc.otrs.org/ for more infomation). Please remember to use the HTML equivalents for non-ASCII characters (i.e. for the German oe = o umlaut, it is necessary to use the &ouml; symbol).' =>
            '',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for this item in the customer preferences.' =>
            '',
        'Defines all the possible stats output formats.' => '',
        'Defines an alternate URL, where the login link refers to.' => '',
        'Defines an alternate URL, where the logout link refers to.' => '',
        'Defines an alternate login URL for the customer panel..' => '',
        'Defines an alternate logout URL for the customer panel.' => '',
        'Defines an external link to the database of the customer (e.g. \'http://yourhost/customer.php?CID=$Data{"CustomerID"}\' or \'\').' =>
            '',
        'Defines how the From field from the emails (sent from answers and email tickets) should look like.' =>
            '',
        'Defines if a ticket lock is required in the close ticket screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket bounce screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket compose screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket forward screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket free text screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket merge screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket note screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket owner screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket pending screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone inbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket priority screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket responsible screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required to change the customer of a ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if composed messages have to be spell checked in the agent interface.' =>
            '',
        'Defines if time accounting is mandatory in the agent interface.' =>
            '',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            '',
        'Defines scheduler PID update time in seconds (floating point number).' =>
            '',
        'Defines scheduler sleep time in seconds after processing all available tasks (floating point number).' =>
            '',
        'Defines the =hHeight for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            '',
        'Defines the URL CSS path.' => '',
        'Defines the URL base path of icons, CSS and Java Script.' => '',
        'Defines the URL image path of icons for navigation.' => '',
        'Defines the URL java script path.' => '',
        'Defines the URL rich text editor path.' => '',
        'Defines the address of a dedicated DNS server, if necessary, for the "CheckMXRecord" look-ups.' =>
            '',
        'Defines the body text for notification mails sent to agents, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to agents, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, about new account.' =>
            '',
        'Defines the body text for notification mails sent to customers, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for rejected emails.' => '',
        'Defines the boldness of the line drawed by the graph.' => '',
        'Defines the colors for the graphs.' => '',
        'Defines the column to store the keys for the preferences table.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            '',
        'Defines the connections for http/ftp, via a proxy.' => '',
        'Defines the date input format used in forms (option or input fields).' =>
            '',
        'Defines the default CSS used in rich text editors.' => '',
        'Defines the default body of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default front-end (HTML) theme to be used by the agents and customers. The default themes are Standard and Lite. If you like, you can add your own theme. Please refer the administrator manual located at http://doc.otrs.org/.' =>
            '',
        'Defines the default front-end language. All the possible values are determined by the available language files on the system (see the next setting).' =>
            '',
        'Defines the default history type in the customer interface.' => '',
        'Defines the default maximum number of X-axis attributes for the time scale.' =>
            '',
        'Defines the default maximum number of search results shown on the overview page.' =>
            '',
        'Defines the default next state for a ticket after customer follow up in the customer interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being forwarded, in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket if it is composed / answered in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default priority of follow up customer tickets in the ticket zoom screen in the customer interface.' =>
            '',
        'Defines the default priority of new customer tickets in the customer interface.' =>
            '',
        'Defines the default priority of new tickets.' => '',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            '',
        'Defines the default selection at the drop down menu for dynamic objects (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for permissions (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for stats format (Form: Common Specification). Please insert the format key (see Stats::Format).' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for tickets in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen. Example: a text, 1, DynamicField_Field1StartYear=2002;DynamicField_Field1StartMonth=12;DynamicField_Field1StartDay=12;DynamicField_Field1StartHour=00;DynamicField_Field1StartMinute=00;DynamicField_Field1StartSecond=00;DynamicField_Field1StopYear=2009;DynamicField_Field1StopMonth=02;DynamicField_Field1StopDay=10;DynamicField_Field1StopHour=23;DynamicField_Field1StopMinute=59;DynamicField_Field1StopSecond=59;.' =>
            '',
        'Defines the default sort criteria for all queues displayed in the queue view, after sort by priority is done.' =>
            '',
        'Defines the default sort order for all queues in the queue view, after priority sort.' =>
            '',
        'Defines the default spell checker dictionary.' => '',
        'Defines the default state of new customer tickets in the customer interface.' =>
            '',
        'Defines the default state of new tickets.' => '',
        'Defines the default subject for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default subject for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default subject of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in a ticket search of the customer interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the escalation view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the locked ticket view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the responsible view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the status view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the watch view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of the agent interface.' =>
            '',
        'Defines the default ticket bounced notification for customer/sender in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default ticket order (after priority sort) in the escalation view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order (after priority sort) in the status view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the responsible view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket locked view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the watch view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order of a search result in the customer interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket priority in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default type for article in the customer interface.' =>
            '',
        'Defines the default type of forwarded message in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the agent interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the customer interface.' =>
            '',
        'Defines the default value for the action parameter for the public frontend. The action parameter is used in the scripts of the system.' =>
            '',
        'Defines the default viewable sender types of a ticket (default: customer).' =>
            '',
        'Defines the filter that processes the text in the articles, in order to highlight URLs.' =>
            '',
        'Defines the format of responses in the ticket compose screen of the agent interface ($QData{"OrigFrom"} is From 1:1, $QData{"OrigFromName"} is only realname of From).' =>
            '',
        'Defines the fully qualified domain name of the system. This setting is used as a variable, OTRS_CONFIG_FQDN which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the groups every customer user will be in (if CustomerGroupSupport is enabled and you don\'t want to manage every user for these groups).' =>
            '',
        'Defines the height of the legend.' => '',
        'Defines the history comment for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history comment for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history type for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history type for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the hours and week days of the indicated calendar, to count the working time.' =>
            '',
        'Defines the hours and week days to count the working time.' => '',
        'Defines the key to be checked with Kernel::Modules::AgentInfo module. If this user preferences key is true, the message is accepted by the system.' =>
            '',
        'Defines the key to check with CustomerAccept. If this user preferences key is true, then the message is accepted by the system.' =>
            '',
        'Defines the link type \'Normal\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type \'ParentChild\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type groups. The link types of the same group cancel one another. Example: If ticket A is linked per a \'Normal\' link with ticket B, then these tickets could not be additionally linked with link of a \'ParentChild\' relationship.' =>
            '',
        'Defines the list of online repositories. Another installations can be used as repository, for example: Key="http://example.com/otrs/public.pl?Action=PublicRepository;File=" and Content="Some Name".' =>
            '',
        'Defines the location to get online repository list for additional packages. The first available result will be used.' =>
            '',
        'Defines the log module for the system. "File" writes all messages in a given logfile, "SysLog" uses the syslog daemon of the system, e.g. syslogd.' =>
            '',
        'Defines the maximal size (in bytes) for file uploads via the browser.' =>
            '',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            '',
        'Defines the maximum number of pages per PDF file.' => '',
        'Defines the maximum size (in MB) of the log file.' => '',
        'Defines the module that shows a generic notification in the agent interface. Either "Text" - if configured - or the contents of "File" will be displayed.' =>
            '',
        'Defines the module that shows all the currently loged in customers in the agent interface.' =>
            '',
        'Defines the module that shows all the currently logged in agents in the agent interface.' =>
            '',
        'Defines the module that shows the currently loged in agents in the customer interface.' =>
            '',
        'Defines the module that shows the currently loged in customers in the customer interface.' =>
            '',
        'Defines the module to authenticate customers.' => '',
        'Defines the module to display a notification in the agent interface, (only for agents on the admin group) if the scheduler is not running.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having out-of-office active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the system is used by the admin user (normally you shouldn\'t work as admin).' =>
            '',
        'Defines the module to generate html refresh headers of html sites, in the customer interface.' =>
            '',
        'Defines the module to generate html refresh headers of html sites.' =>
            '',
        'Defines the module to send emails. "Sendmail" directly uses the sendmail binary of your operating system. Any of the "SMTP" mechanisms use a specified (external) mailserver. "DoNotSendEmail" doesn\'t send emails and it is useful for test systems.' =>
            '',
        'Defines the module used to store the session data. With "DB" the frontend server can be splitted from the db server. "FS" is faster.' =>
            '',
        'Defines the name of the application, shown in the web interface, tabs and title bar of the web browser.' =>
            '',
        'Defines the name of the column to store the data in the preferences table.' =>
            '',
        'Defines the name of the column to store the user identifier in the preferences table.' =>
            '',
        'Defines the name of the indicated calendar.' => '',
        'Defines the name of the key for customer sessions.' => '',
        'Defines the name of the session key. E.g. Session, SessionID or OTRS.' =>
            '',
        'Defines the name of the table, where the customer preferences are stored.' =>
            '',
        'Defines the next possible states after composing / answering a ticket in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the next possible states after forwarding a ticket in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the next possible states for customer tickets in the customer interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being moved to another queue, in the move ticket screen of the agent interface.' =>
            '',
        'Defines the parameters for the customer preferences table.' => '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the password to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the path and TTF-File to handle bold italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle proportional font in PDF documents.' =>
            '',
        'Defines the path for scheduler to store its console output (SchedulerOUT.log and SchedulerERR.log).' =>
            '',
        'Defines the path of the shown info file, that is located under Kernel/Output/HTML/Standard/CustomerAccept.dtl.' =>
            '',
        'Defines the path to PGP binary.' => '',
        'Defines the path to open ssl binary. It may need a HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).' =>
            '',
        'Defines the placement of the legend. This should be a two letter key of the form: \'B[LCR]|R[TCB]\'. The first letter indicates the placement (Bottom or Right), and the second letter the alignment (Left, Right, Center, Top, or Bottom).' =>
            '',
        'Defines the postmaster default queue.' => '',
        'Defines the receipent target of the phone ticket and the sender of the email ticket ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the agent interface.' =>
            '',
        'Defines the receipent target of the tickets ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the customer interface.' =>
            '',
        'Defines the search limit for the stats.' => '',
        'Defines the sender for rejected emails.' => '',
        'Defines the separator between the agents real name and the given queue email address.' =>
            '',
        'Defines the spacing of the legends.' => '',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            '',
        'Defines the standard size of PDF pages.' => '',
        'Defines the state of a ticket if it gets a follow-up and the ticket was already closed.' =>
            '',
        'Defines the state of a ticket if it gets a follow-up.' => '',
        'Defines the state type of the reminder for pending tickets.' => '',
        'Defines the subject for notification mails sent to agents, about new password.' =>
            '',
        'Defines the subject for notification mails sent to agents, with token about new requested password.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new account.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new password.' =>
            '',
        'Defines the subject for notification mails sent to customers, with token about new requested password.' =>
            '',
        'Defines the subject for rejected emails.' => '',
        'Defines the system administrator\'s email address. It will be displayed in the error screens of the application.' =>
            '',
        'Defines the system identifier. Every ticket number and http session string contain this ID. This ensures that only tickets which belong to your system will be processed as follow-ups (useful when communicating between two instances of OTRS).' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'target="cdb"\'.' =>
            '',
        'Defines the time in days to keep log backup files.' => '',
        'Defines the time in seconds after which the Scheduler performs an automatic self-restart.' =>
            '',
        'Defines the time zone of the indicated calendar, which can be assigned later to a specific queue.' =>
            '',
        'Defines the type of protocol, used by ther web server, to serve the application. If https protocol will be used instead of plain http, it must be specified it here. Since this has no affect on the web server\'s settings or behavior, it will not change the method of access to the application and, if it is wrong, it will not prevent you from logging into the application. This setting is used as a variable, OTRS_CONFIG_HttpType which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the used character for email quotes in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the user identifier for the customer panel.' => '',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the valid state types for a ticket.' => '',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.UnlockTickets.pl" can be used.' =>
            '',
        'Defines the viewable locks of a ticket. Default: unlock, tmp_lock.' =>
            '',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width of the legend.' => '',
        'Defines which article sender types should be shown in the preview of a ticket.' =>
            '',
        'Defines which states should be set automatically (Content), after the pending time of state (Key) has been reached.' =>
            '',
        'Defines wich article type should be expanded when entering the overview. If nothing defined, latest article will be expanded.' =>
            '',
        'Delay time between autocomplete queries in milliseconds.' => '',
        'Delete this ticket' => '',
        'Deletes a session if the session id is used with an invalid remote IP address.' =>
            '',
        'Deletes requested sessions if they have timed out.' => '',
        'Determines if the list of possible queues to move to ticket into should be displayed in a dropdown list or in a new window in the agent interface. If "New Window" is set you can add a move note to the ticket.' =>
            '',
        'Determines if the search results container for the autocomplete feature should adjust its width dynamically.' =>
            '',
        'Determines if the statistics module may generate ticket lists.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new email ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new phone ticket in the agent interface.' =>
            '',
        'Determines the next screen after new customer ticket in the customer interface.' =>
            '',
        'Determines the next screen after the follow up screen of a zoomed ticket in the customer interface.' =>
            '',
        'Determines the next screen after the ticket is moved. LastScreenOverview will return to search results, queueview, dashboard or the like, LastScreenView will return to TicketZoom.' =>
            '',
        'Determines the possible states for pending tickets that changed state after reaching time limit.' =>
            '',
        'Determines the strings that will be shown as receipent (To:) of the phone ticket and as sender (From:) of the email ticket in the agent interface. For Queue as NewQueueSelectionType "<Queue>" shows the names of the queues and for SystemAddress "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            '',
        'Determines the strings that will be shown as receipent (To:) of the ticket in the customer interface. For Queue as CustomerPanelSelectionType, "<Queue>" shows the names of the queues, and for SystemAddress, "<Realname> <<Email>>" shows the name and email of the receipent.' =>
            '',
        'Determines the way the linked objects are displayed in each zoom mask.' =>
            '',
        'Determines which options will be valid of the recepient (phone ticket) and the sender (email ticket) in the agent interface.' =>
            '',
        'Determines which queues will be valid for ticket\'s recepients in the customer interface.' =>
            '',
        'Disables sending reminder notifications to the responsible agent of a ticket (Ticket::Responsible needs to be activated).' =>
            '',
        'Disables the web installer (http://yourhost.example.com/otrs/installer.pl), to prevent the system from being hijacked. If set to "No", the system can be reinstalled and the current basic configuration will be used to pre-populate the questions within the installer script. If not active, it also disables the GenericAgent, PackageManager and SQL Box (to avoid the use of destructive queries, such as DROP DATABASE, and also to steal user passwords).' =>
            '',
        'Displays the accounted time for an article in the ticket zoom view.' =>
            '',
        'Dropdown' => '',
        'Dynamic Fields Checkbox Backend GUI' => '',
        'Dynamic Fields Date Time Backend GUI' => '',
        'Dynamic Fields Drop-down Backend GUI' => '',
        'Dynamic Fields GUI' => '',
        'Dynamic Fields Multiselect Backend GUI' => '',
        'Dynamic Fields Overview Limit' => '',
        'Dynamic Fields Text Backend GUI' => '',
        'Dynamic Fields used to export the search result in CSV format.' =>
            '',
        'Dynamic fields limit per page for Dynamic Fields Overview' => '',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###AttributesView.' =>
            '',
        'Dynamic fields shown in the ticket close screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket email screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket forward screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket medium format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket move screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket owner screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket pending screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone inbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket preview format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket priority screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket search overview results screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket small format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'DynamicField backend registration.' => '',
        'DynamicField object registration.' => '',
        'Email Addresses' => 'Adresy e-mail',
        'Enables PDF output. The CPAN module PDF::API2 is required, if not installed, PDF output will be disabled.' =>
            '',
        'Enables PGP support. When PGP support is enabled for signing and securing mail, it is HIGHLY recommended that the web server be run as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            '',
        'Enables S/MIME support.' => '',
        'Enables customers to create their own accounts.' => '',
        'Enables file upload in the package manager frontend.' => '',
        'Enables or disable the debug mode over frontend interface.' => '',
        'Enables or disables the autocomplete feature for the customer search in the agent interface.' =>
            '',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            '',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            '',
        'Enables spell checker support.' => '',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            '',
        'Enables ticket bulk action feature only for the listed groups.' =>
            '',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            '',
        'Enables ticket watcher feature only for the listed groups.' => '',
        'Escalation view' => 'Zgłoszenia eskalowane',
        'Event list to be displayed on GUI to trigger generic interface invokers.' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            '',
        'Example for dynamic dield' => '',
        'Example for dynamic field' => '',
        'Example for free text' => '',
        'Execute SQL statements.' => 'Wykonaj polecenia SQL',
        'Executes follow up checks on In-Reply-To or References headers for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up mail attachments checks in  mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up mail body checks in mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow up plain/raw mail checks in mails that don\'t have a ticket number in the subject.' =>
            '',
        'Experimental "Slim" skin which tries to save screen space for power users.' =>
            '',
        'Exports the whole article tree in search result (it can affect the system performance).' =>
            '',
        'Fetches packages via proxy. Overwrites "WebUserAgent::Proxy".' =>
            '',
        'File that is displayed in the Kernel::Modules::AgentInfo module, if located under Kernel/Output/HTML/Standard/AgentInfo.dtl.' =>
            '',
        'Filter incoming emails.' => '',
        'Forces encoding of outgoing emails (7bit|8bit|quoted-printable|base64).' =>
            '',
        'Forces to choose a different ticket state (from current) after lock action. Define the current state as key, and the next state after lock action as content.' =>
            '',
        'Forces to unlock tickets after being moved to another queue.' =>
            '',
        'Frontend language' => 'Język interfejsu',
        'Frontend module registration (disable company link if no company feature is used).' =>
            '',
        'Frontend module registration for the agent interface.' => '',
        'Frontend module registration for the customer interface.' => '',
        'Frontend theme' => 'Schemat graficzny',
        'GenericAgent' => 'Agent automatyczny',
        'GenericInterface Debugger GUI' => '',
        'GenericInterface Invoker GUI' => '',
        'GenericInterface Operation GUI' => '',
        'GenericInterface TransportHTTPSOAP GUI' => '',
        'GenericInterface Web Service GUI' => '',
        'GenericInterface Webservice History GUI' => '',
        'GenericInterface Webservice Mapping GUI' => '',
        'GenericInterface module registration for the invoker layer.' => '',
        'GenericInterface module registration for the mapping layer.' => '',
        'GenericInterface module registration for the operation layer.' =>
            '',
        'GenericInterface module registration for the transport layer.' =>
            '',
        'Gives end users the possibility to override the separator character for CSV files, defined in the translation files.' =>
            '',
        'Grants access, if the customer ID of the ticket matches the customer user\'s ID and the customer user has group permissions on the queue the ticket is in.' =>
            '',
        'Helps to extend your articles full-text search (From, To, Cc, Subject and Body search). Runtime will do full-text searches on live data (it works fine for up to 50.000 tickets). StaticDB will strip all articles and will build an index after article creation, increasing fulltext searches about 50%. To create an initial index use "bin/otrs.RebuildFulltextIndex.pl".' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a database driver (normally autodetection is used) can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a password to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a username to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the DSN for the connection to the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the column name for the CustomerPassword in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the crypt type of passwords must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the column for the CustomerKey in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the table where your customer data should be stored must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a column for the identifiers in session table must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a column for the values in session table must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a table in database where session data will be stored must be specified.' =>
            '',
        'If "FS" was selected for SessionModule, a directory where the session data will be stored must be specified.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify (by using a RegExp) to strip parts of REMOTE_USER (e. g. for to remove trailing domains). RegExp-Note, $1 will be the new Login.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify to strip leading parts of user names (e. g. for domains like example_domain\user to user).' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and if you want to add a suffix to every customer login name, specifiy it here, e. g. you just want to write the username user but in your LDAP directory exists user@domain.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and special paramaters are needed for the Net::LDAP perl module, you can specify them here. See "perldoc Net::LDAP" for more information about the parameters.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the password for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the username for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the BaseDN must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the LDAP host can be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the user identifier must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, user attributes can be specified. For LDAP posixGroups use UID, for non LDAP posixGroups use full user DN.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify access attributes here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "LDAP" was selected for Customer::Authmodule, you can check if the user is allowed to authenticate because he is in a posixGroup, e.g. user needs to be in a group xyz to use OTRS. Specify the group, who may access the system.' =>
            '',
        'If "LDAP" was selected, you can add a filter to each LDAP query, e.g. (mail=*), (objectclass=user) or (!objectclass=computer).' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the password to authenticate to the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "Sendmail" was selected as SendmailModule, the location of the sendmail binary and the needed options must be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log facility can be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log sock can be specified (on solaris you may need to use \'stream\').' =>
            '',
        'If "SysLog" was selected for LogModule, the charset that should be used for logging can be specified.' =>
            '',
        'If "file" was selected for LogModule, a logfile must be specified. If the file doesn\'t exist, it will be created by the system.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the close ticket screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket free text screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket note screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, a password must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, an username must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the mailhost that sends out the mails must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the port where your mailserver is listening for incoming connections must be specified.' =>
            '',
        'If enabled, OTRS will deliver all CSS files in minified form. WARNING: If you turn this off, there will likely be problems in IE 7, because it cannot load more than 32 CSS files.' =>
            '',
        'If enabled, OTRS will deliver all JavaScript files in minified form.' =>
            '',
        'If enabled, TicketPhone and TicketEmail will be open in new windows.' =>
            '',
        'If enabled, the OTRS version tag will be removed from the HTTP headers.' =>
            '',
        'If enabled, the different overviews (Dashboard, LockedView, QueueView) will automatically refresh after the specified time.' =>
            '',
        'If enabled, the first level of the main menu opens on mouse hover (instead of click only).' =>
            '',
        'If set, this address is used as envelope from header in outgoing notifications. If no address is specified, the envelope from header is empty.' =>
            '',
        'If this regex matches, no message will be send by the autoresponder.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, specify the DSN to this database.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, the password to authenticate to this database can be specified.' =>
            '',
        'If you want to use a mirror database for agent ticket fulltext search or to generate stats, the user to authenticate to this database can be specified.' =>
            '',
        'Ignore article with system sender type for new article feature (e. g. auto responses or email notifications).' =>
            '',
        'Includes article create times in the ticket search of the agent interface.' =>
            '',
        'IndexAccelerator: to choose your backend TicketViewAccelerator module. "RuntimeDB" generates each queue view on the fly from ticket table (no performance problems up to approx. 60.000 tickets in total and 6.000 open tickets in the system). "StaticDB" is the most powerful module, it uses an extra ticket-index table that works like a view (recommended if more than 80.000 and 6.000 open tickets are stored in the system). Use the script "bin/otrs.RebuildTicketIndex.pl" for initial index update.' =>
            '',
        'Install ispell or aspell on the system, if you want to use a spell checker. Please specify the path to the aspell or ispell binary on your operating system.' =>
            '',
        'Interface language' => 'Język interfejsu',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Link agents to groups.' => 'Zarządzanie relacjami Agenci <-> Grupy',
        'Link agents to roles.' => 'Zarządzanie relacjami Agenci <-> Role',
        'Link attachments to responses templates.' => 'Połączenia załączników i standardowych odpowiedzi',
        'Link customers to groups.' => 'Połączenia klientów i grup klientów',
        'Link customers to services.' => 'Zarządzanie relacjimi Klienci <-> Poziomy Serwisu',
        'Link queues to auto responses.' => '',
        'Link responses to queues.' => 'Zarządzanie relacjami Odpowiedź <-> Kolejka',
        'Link roles to groups.' => '',
        'Link this ticket to other objects' => '',
        'Links 2 tickets with a "Normal" type link.' => '',
        'Links 2 tickets with a "ParentChild" type link.' => '',
        'List of CSS files to always be loaded for the agent interface.' =>
            '',
        'List of CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE6-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE7-specific CSS files to always be loaded for the agent interface.' =>
            '',
        'List of IE7-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of IE8-specific CSS files to always be loaded for the agent interface.' =>
            '',
        'List of IE8-specific CSS files to always be loaded for the customer interface.' =>
            '',
        'List of JS files to always be loaded for the agent interface.' =>
            '',
        'List of JS files to always be loaded for the customer interface.' =>
            '',
        'List of default StandardResponses which are assigned automatically to new Queues upon creation.' =>
            '',
        'Log file for the ticket counter.' => '',
        'Mail Accounts' => '',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            '',
        'Makes the application check the syntax of email addresses.' => '',
        'Makes the picture transparent.' => '',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            '',
        'Manage PGP keys for email encryption.' => '',
        'Manage POP3 or IMAP accounts to fetch email from.' => 'Ustawienia konto pocztowych POP3 i IMAP, z których pobierana jest poczta przychodząca do systemu',
        'Manage S/MIME certificates for email encryption.' => 'Zarządzanie certyfikatami S/MIME służącymi do szyfrowania poczty wychodzącej',
        'Manage existing sessions.' => 'Zarządzanie aktywnymi sesjami agentów i klientów',
        'Manage periodic tasks.' => 'Ustawienia automatycznych zadań',
        'Max size (in characters) of the customer information table (phone and email) in the compose screen.' =>
            '',
        'Max size of the subjects in an email reply.' => '',
        'Maximal auto email responses to own email-address a day (Loop-Protection).' =>
            '',
        'Maximal size in KBytes for mails that can be fetched via POP3/POP3S/IMAP/IMAPS (KBytes).' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the agent interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the customer interface.' =>
            '',
        'Maximum size (in characters) of the customer info table in the queue view.' =>
            '',
        'Maximum size (in characters) of the customer information table in the ticket zoom view.' =>
            '',
        'Merge into a different ticket' => '',
        'Module for To-selection in new ticket screen in the customer interface.' =>
            '',
        'Module to check customer permissions.' => '',
        'Module to check if a user is in a special group. Access is granted, if the user is in the specified group and has ro and rw permissions.' =>
            '',
        'Module to check if arrived emails should be marked as email-internal (because of original forwared internal email it college). ArticleType and SenderType define the values for the arrived email/article.' =>
            '',
        'Module to check the agent responsible of a ticket.' => '',
        'Module to check the group permissions for the access to customer tickets.' =>
            '',
        'Module to check the owner of a ticket.' => '',
        'Module to check the watcher agents of a ticket.' => '',
        'Module to compose signed messages (PGP or S/MIME).' => '',
        'Module to crypt composed messages (PGP or S/MIME).' => '',
        'Module to filter and manipulate incoming messages. Block/ignore all spam email with From: noreply@ address.' =>
            '',
        'Module to filter and manipulate incoming messages. Get a 4 digit number to ticket free text, use regex in Match e. g. From => \'(.+?)@.+?\', and use () as [***] in Set =>.' =>
            '',
        'Module to generate accounted time ticket statistics.' => '',
        'Module to generate html OpenSearch profile for short ticket search in the agent interface.' =>
            '',
        'Module to generate html OpenSearch profile for short ticket search in the customer interface.' =>
            '',
        'Module to generate ticket solution and response time statistics.' =>
            '',
        'Module to generate ticket statistics.' => '',
        'Module to show notifications and escalations (ShownMax: max. shown escalations, EscalationInMinutes: Show ticket which will escalation in, CacheTime: Cache of calculated escalations in seconds).' =>
            '',
        'Module to use database filter storage.' => '',
        'Multiselect' => '',
        'My Tickets' => 'Moje zgłoszenia',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'New email ticket' => 'Nowe zgłoszenie email',
        'New phone ticket' => 'Nowe zgłoszenie telefoniczne',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Notifications (Event)' => 'Powiadomienia o zdarzeniu',
        'Number of displayed tickets' => 'Liczba wyświetlanych zgłoszeń',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets' => '',
        'Overview Refresh Time' => '',
        'Overview of all open Tickets.' => '',
        'PGP Key Management' => '',
        'PGP Key Upload' => 'Prześlij klucz PGP',
        'Parameters for the CreateNextMask object in the preference view of the agent interface.' =>
            '',
        'Parameters for the CustomQueue object in the preference view of the agent interface.' =>
            '',
        'Parameters for the FollowUpNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the LockTimeoutNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the MoveNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the NewTicketNotify object in the preferences view of the agent interface.' =>
            '',
        'Parameters for the RefreshTime object in the preference view of the agent interface.' =>
            '',
        'Parameters for the WatcherNotify object in the preference view of the agent interface.' =>
            '',
        'Parameters for the dashboard backend of the new tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket calendar of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket escalation overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket stats of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the pages (in which the dynamic fields are shown) of the dynamic fields overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the medium ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the small ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the ticket preview overview.' =>
            '',
        'Parameters of the example SLA attribute Comment2.' => '',
        'Parameters of the example queue attribute Comment2.' => '',
        'Parameters of the example service attribute Comment2.' => '',
        'Path for the log file (it only applies if "FS" was selected for LoopProtectionModule and it is mandatory).' =>
            '',
        'Path of the file that stores all the settings for the QueueObject object for the agent interface.' =>
            '',
        'Path of the file that stores all the settings for the QueueObject object for the customer interface.' =>
            '',
        'Path of the file that stores all the settings for the TicketObject for the agent interface.' =>
            '',
        'Path of the file that stores all the settings for the TicketObject for the customer interface.' =>
            '',
        'Performs the configured action for each event (as an Invoker) for each configured Webservice.' =>
            '',
        'Permitted width for compose email windows.' => '',
        'Permitted width for compose note windows.' => '',
        'Picture-Upload' => '',
        'PostMaster Filters' => 'Filtrowanie poczty przychodzącej',
        'PostMaster Mail Accounts' => 'Konta pocztowe systemu',
        'Print this ticket' => '',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            '',
        'Queue view' => 'Widok kolejek',
        'Refresh Overviews after' => '',
        'Refresh interval' => 'Interwał odświeżania',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            '',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            '',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            '',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            '',
        'Responses <-> Queues' => 'Odpowiedź <-> Kolejka',
        'Restores a ticket from the archive (only if the event is a state change, from closed to any open available state).' =>
            '',
        'Roles <-> Groups' => 'Role <-> Grupy',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'S/MIME Certificate Upload' => '',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data.' =>
            '',
        'Saves the login and password on the session table in the database, if "DB" was selected for SessionModule.' =>
            '',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Select your frontend Theme.' => 'Wybierz schemat wyglądu systemu.',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            'Wyślij mi wiadomość, gdy klient odpowie na zgłoszenie, którego ja jestem właścicielem.',
        'Send notifications to users.' => 'Wyślij powiadomienie do użytkowników',
        'Send ticket follow up notifications' => 'Wysyłaj powiadomienia o nowych wiadomościach w zgłoszeniach',
        'Sender type for new tickets from the customer inteface.' => '',
        'Sends agent follow-up notification only to the owner, if a ticket is unlocked (the default is to send the notification to all agents).' =>
            '',
        'Sends all outgoing email via bcc to the specified address. Please use this only for backup reasons.' =>
            '',
        'Sends customer notifications just to the mapped customer. Normally, if no customer is mapped, the latest customer sender gets the notification.' =>
            '',
        'Sends reminder notifications of unlocked ticket after reaching the reminder date (only sent to ticket owner).' =>
            '',
        'Sends the notifications which are configured in the admin interface under "Notfication (Event)".' =>
            '',
        'Set sender email addresses for this system.' => 'Ustaw adresa nadawcy dla tego systemu',
        'Set the default height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set the maximum height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set this ticket to pending' => '',
        'Set this to yes if you trust in all your public and private pgp keys, even if they are not certified with a trusted signature.' =>
            '',
        'Sets if ticket owner must be selected by the agent.' => '',
        'Sets the PendingTime of a ticket to 0 if the state is changed to a non-pending state.' =>
            '',
        'Sets the age in minutes (first level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the age in minutes (second level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the configuration level of the administrator. Depending on the config level, some sysconfig options will be not shown. The config levels are in in ascending order: Expert, Advanced, Beginner. The higher the config level is (e.g. Beginner is the highest), the less likely is it that the user can accidentally configure the system in a way that it is not usable any more.' =>
            '',
        'Sets the default article type for new email tickets in the agent interface.' =>
            '',
        'Sets the default article type for new phone tickets in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default link type of splitted tickets in the agent interface.' =>
            '',
        'Sets the default next state for new phone tickets in the agent interface.' =>
            '',
        'Sets the default next ticket state, after the creation of an email ticket in the agent interface.' =>
            '',
        'Sets the default note text for new telephone tickets. E.g \'New ticket via call\' in the agent interface.' =>
            '',
        'Sets the default priority for new email tickets in the agent interface.' =>
            '',
        'Sets the default priority for new phone tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new email tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new phone ticket in the agent interface.' =>
            '',
        'Sets the default subject for new email tickets (e.g. \'email Outbound\') in the agent interface.' =>
            '',
        'Sets the default subject for new phone tickets (e.g. \'Phone call\') in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default text for new email tickets in the agent interface.' =>
            '',
        'Sets the display order of the different items in the preferences view.' =>
            '',
        'Sets the inactivity time (in seconds) to pass before a session is killed and a user is loged out.' =>
            '',
        'Sets the minimal ticket counter size (if "AutoIncrement" was selected as TicketNumberGenerator). Default is 5, this means the counter starts from 10000.' =>
            '',
        'Sets the minimum number of characters before autocomplete query is sent.' =>
            '',
        'Sets the number of lines that are displayed in text messages (e.g. ticket lines in the QueueZoom).' =>
            '',
        'Sets the number of search results to be displayed for the autocomplete feature.' =>
            '',
        'Sets the options for PGP binary.' => '',
        'Sets the order of the different items in the customer preferences view.' =>
            '',
        'Sets the password for private PGP key.' => '',
        'Sets the prefered time units (e.g. work units, hours, minutes).' =>
            '',
        'Sets the prefix to the scripts folder on the server, as configured on the web server. This setting is used as a variable, OTRS_CONFIG_ScriptAlias which is found in all forms of messaging used by the application, to build links to the tickets within the system.' =>
            '',
        'Sets the responsible agent of the ticket in the close ticket screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket note screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the service in the close ticket screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket free text screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket note screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket responsible screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the size of the statistic graph.' => '',
        'Sets the stats hook.' => '',
        'Sets the system time zone (required a system with UTC as system time). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the ticket owner in the close ticket screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket note screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the ticket type in the close ticket screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket type in the ticket free text screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket note screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket responsible screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the time type which should be shown.' => '',
        'Sets the timeout (in seconds) for http/ftp downloads.' => '',
        'Sets the timeout (in seconds) for package downloads. Overwrites "WebUserAgent::Timeout".' =>
            '',
        'Sets the user time zone per user (required a system with UTC as system time and UTC under TimeZone). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the user time zone per user based on java script / browser time zone offset feature at login time.' =>
            '',
        'Show a responsible selection in phone and email tickets in the agent interface.' =>
            '',
        'Show article as rich text even if rich text writing is disabled.' =>
            '',
        'Shows a count of icons in the ticket zoom, if the article has attachments.' =>
            '',
        'Shows a link in the menu for subscribing / unsubscribing from a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu that allows linking a ticket with another object in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu that allows merging tickets in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to access the history of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a note in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to add a note to a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to delete a ticket in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to delete a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to go back in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to lock / unlock a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link in the menu to lock/unlock tickets in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to move a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to print a ticket or an article in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the customer who requested the ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the history of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to see the owner of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the priority of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to see the responsible agent of a ticket in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to set a ticket as pending in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to set a ticket as spam in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to set the priority of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to zoom a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link to access article attachments via a html online viewer in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to download article attachments in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to see a zoomed email ticket in plain text.' => '',
        'Shows a link to set a ticket as spam in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a preview of the ticket overview (CustomerInfo => 1 - shows also Customer-Info, CustomerInfoMaxSize max. size in characters of Customer-Info).' =>
            '',
        'Shows all both ro and rw queues in the queue view.' => '',
        'Shows all open tickets (even if they are locked) in the escalation view of the agent interface.' =>
            '',
        'Shows all open tickets (even if they are locked) in the status view of the agent interface.' =>
            '',
        'Shows all the articles of the ticket (expanded) in the zoom view.' =>
            '',
        'Shows all the customer identifiers in a multi-select field (not useful if you have a lot of customer identifiers).' =>
            '',
        'Shows an owner selection in phone and email tickets in the agent interface.' =>
            '',
        'Shows customer history tickets in AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.' =>
            '',
        'Shows either the last customer article\'s subject or the ticket title in the small format overview.' =>
            '',
        'Shows existing parent/child queue lists in the system in the form of a tree or a list.' =>
            '',
        'Shows the activated ticket attributes in the customer interface (0 = Disabled and 1 = Enabled).' =>
            '',
        'Shows the articles sorted normally or in reverse, under ticket zoom in the agent interface.' =>
            '',
        'Shows the customer user information (phone and email) in the compose screen.' =>
            '',
        'Shows the customer user\'s info in the ticket zoom view.' => '',
        'Shows the message of the day (MOTD) in the agent dashboard. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually.' =>
            '',
        'Shows the message of the day on login screen of the agent interface.' =>
            '',
        'Shows the ticket history' => '',
        'Shows the ticket history (reverse ordered) in the agent interface.' =>
            '',
        'Shows the ticket priority options in the close ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the move ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket bulk screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket note screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows the title fields in the close ticket screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket note screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows time in long format (days, hours, minutes), if set to "Yes"; or in short format (days, hours), if set to "No".' =>
            '',
        'Shows time use complete description (days, hours, minutes), if set to "Yes"; or just first letter (d, h, m), if set to "No".' =>
            '',
        'Skin' => 'Skórka',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the queue view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the QueueID for the key and 0 or 1 for value.' =>
            '',
        'Spam Assassin example setup. Ignores emails that are marked with SpamAssassin.' =>
            '',
        'Spam Assassin example setup. Moves marked mails to spam queue.' =>
            '',
        'Specifies if an agent should receive email notification of his own actions.' =>
            '',
        'Specifies the background color of the chart.' => '',
        'Specifies the background color of the picture.' => '',
        'Specifies the border color of the chart.' => '',
        'Specifies the border color of the legend.' => '',
        'Specifies the bottom margin of the chart.' => '',
        'Specifies the different article types that will be used in the system.' =>
            '',
        'Specifies the different note types that will be used in the system.' =>
            '',
        'Specifies the directory to store the data in, if "FS" was selected for TicketStorageModule.' =>
            '',
        'Specifies the directory where SSL certificates are stored.' => '',
        'Specifies the directory where private SSL certificates are stored.' =>
            '',
        'Specifies the email address that should be used by the application when sending notifications. The email address is used to build the complete display name for the notification master (i.e. "OTRS Notification Master" otrs@your.example.com). You can use the OTRS_CONFIG_FQDN variable as set in your configuation, or choose another email address. Notifications are messages such as en::Customer::QueueUpdate or en::Agent::Move.' =>
            '',
        'Specifies the left margin of the chart.' => '',
        'Specifies the name that should be used by the application when sending notifications. The sender name is used to build the complete display name for the notification master (i.e. "OTRS Notification Master" otrs@your.example.com). Notifications are messages such as en::Customer::QueueUpdate or en::Agent::Move.' =>
            '',
        'Specifies the path of the file for the logo in the page header (gif|jpg|png, 700 x 100 pixel).' =>
            '',
        'Specifies the path of the file for the performance log.' => '',
        'Specifies the path to the converter that allows the view of Microsoft Excel files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of Microsoft Word files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of PDF documents, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of XML files, in the web interface.' =>
            '',
        'Specifies the right margin of the chart.' => '',
        'Specifies the text color of the chart (e. g. caption).' => '',
        'Specifies the text color of the legend.' => '',
        'Specifies the text that should appear in the log file to denote a CGI script entry.' =>
            '',
        'Specifies the top margin of the chart.' => '',
        'Specifies user id of the postmaster data base.' => '',
        'Standard available permissions for agents within the application. If more permissions are needed, they can be entered here. Permissions must be defined to be effective. Some other good permissions have also been provided built-in: note, close, pending, customer, freetext, move, compose, responsible, forward, and bounce. Make sure that "rw" is always the last registered permission.' =>
            '',
        'Start number for statistics counting. Every new stat increments this number.' =>
            '',
        'Starts a wildcard search of the active object after the link object mask is started.' =>
            '',
        'Statistics' => 'Statystyki',
        'Status view' => 'Widok statusów',
        'Stores cookies after the browser has been closed.' => '',
        'Strips empty lines on the ticket preview in the queue view.' => '',
        'Textarea' => '',
        'The "bin/PostMasterMailAccount.pl" will reconnect to POP3/POP3S/IMAP/IMAPS host after the specified count of messages.' =>
            '',
        'The agent skin\'s InternalName which should be used in the agent interface. Please check the available skins in Frontend::Agent::Skins.' =>
            '',
        'The customer skin\'s InternalName which should be used in the customer interface. Please check the available skins in Frontend::Customer::Skins.' =>
            '',
        'The divider between TicketHook and ticket number. E.g \': \'.' =>
            '',
        'The duration in minutes after emitting an event, in which the new escalation notify and start events are suppressed.' =>
            '',
        'The format of the subject. \'Left\' means \'[TicketHook#:12345] Some Subject\', \'Right\' means \'Some Subject [TicketHook#:12345]\', \'None\' means \'Some Subject\' and no ticket number. In the last case you should enable PostmasterFollowupSearchInRaw or PostmasterFollowUpSearchInReferences to recognize followups based on email headers and/or body.' =>
            '',
        'The headline shown in the customer interface.' => '',
        'The identifier for a ticket, e.g. Ticket#, Call#, MyTicket#. The default is Ticket#.' =>
            '',
        'The logo shown in the header of the agent interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown in the header of the customer interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown on top of the login box of the agent interface. The URL to the image must be relative URL to the skin image directory.' =>
            '',
        'The text at the beginning of the subject in an email reply, e.g. RE, AW, or AS.' =>
            '',
        'The text at the beginning of the subject when an email is forwarded, e.g. FW, Fwd, or WG.' =>
            '',
        'This module and its PreRun() function will be executed, if defined, for every request. This module is useful to check some user options or to display news about new applications.' =>
            '',
        'This setting allows you to override the built-in country list with your own list of countries. This is particularly handy if you just want to use a small select group of countries.' =>
            '',
        'Ticket event module that triggers the escalation stop events.' =>
            '',
        'Ticket overview' => 'Lista zgłoszeń',
        'Tickets' => 'Zgłoszenia',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            '',
        'Toolbar Item for a shortcut.' => '',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            '',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            '',
        'Types' => 'Typy zgłoszeń',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            '',
        'Update and extend your system with software packages.' => '',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            '',
        'Updates the ticket index accelerator.' => '',
        'Uses Cc recipients in reply Cc list on compose an email answer in the ticket compose screen of the agent interface.' =>
            '',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard responses, auto responses and notifications.' =>
            '',
        'View performance benchmark results.' => 'Objerzyj wyniki testów wydajności systemu',
        'View system log messages.' => 'Podgląd dziennika zdarzeń systemowych',
        'Wear this frontend skin' => 'Użyj wybranej skórki interfejsu',
        'Webservice path separator.' => '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. In this text area you can define this text (This text cannot be changed by the agent).' =>
            '',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            '',
        'Your language' => 'Wybierz swój język',
        'Your queue selection of your favorite queues. You also get notified about those queues via email if enabled.' =>
            'Twój zestaw wybranych kolejek. Jeżeli włączysz opcję "Powiadomienie o nowym zgłoszeniu" to dostaniesz wiadomość email o każdym nowym zgłoszeniu, które pojawi się w tych kolejkach.',

        #
        # OBSOLETE ENTRIES FOR REFERENCE, DO NOT TRANSLATE!
        #
        '"}' => '"}',
        '%s Tickets affected! Do you really want to use this job?' => '%s zgłoszeń dotyczy! Chcesz wykonać zadanie?',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' =>
            '(Sprawdź rekord MX uzytego adresu e-mailprzy tworzeniu odpowiedzi. Nie używaj sprawdzania rekordu MX jeżeli twoja maszyna z OTRS jest na łaczu z dynamicznym IP $!)',
        '(Email of the system admin)' => '(Adres E-Mail Administratora Systemu)',
        '(Full qualified domain name of your system)' => '(Pełna nazwa domeny Twojego systemu FQDN)',
        '(Logfile just needed for File-LogModule!)' => '(Logfile jest potrzebny jedynie dla modułu File-Log!)',
        '(Note: It depends on your installation how many dynamic objects you can use)' =>
            '(Uwaga: Od instalacji zależy ile obiektów dynamicznych możesz użyć)',
        '(Note: Useful for big databases and low performance server)' => '(Uwaga: Użyteczne dla duzych baz i wolnych serwerów)',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' =>
            '(Identyfikator systemu. Wszystkie zgłoszenia oraz sesje http będą zaczynały się od tego ciągu)',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' =>
            '(Identyfikator zgłoszenia. np. \'Ticket#\', \'Call#\' lub \'MyTicket#\')',
        '(Used default language)' => '(Domyślny język)',
        '(Used log backend)' => '(Używany log backend)',
        '(Used ticket number format)' => '(Używany format numerowania zgłoszeń)',
        'A article should have a title!' => 'Artykuł musi miec tytuł!',
        'A message must be spell checked!' => 'Wiadomość musi zostać sprawdzona słownikiem!',
        'A message should have a To: recipient!' => 'Wiadomość musi zawierać wypełnione adresem polu Do: (odbiorca)!',
        'A message should have a body!' => 'Wiadomość powinna zawierać jakąś treść!',
        'A message should have a customer!' => 'Należy wskazać klienta!',
        'A message should have a subject!' => 'Wiadomosc powinna posiadać temat!',
        'A required field is:' => 'Wymagane pole to:',
        'A ticket should be associated with a queue!' => 'Zgłoszenie musi zostać powiązanie z kolejką',
        'A web calendar' => 'Kalendarz',
        'A web file manager' => 'Menedżer plików przez www ',
        'A web mail client' => 'Klient poczty przez www',
        'About OTRS' => 'O OTRS',
        'Absolut Period' => 'Bezwzględny przedział',
        'Add Customer User' => 'Dodaj klienta',
        'Add System Address' => 'Dodaj adres systemowy',
        'Add User' => 'Dodaj agenta',
        'Add a new Agent.' => 'Dodaj nowego agenta',
        'Add a new Customer Company.' => 'Dodaj nową firmę',
        'Add a new Group.' => 'Dodaj nową grupę',
        'Add a new Priority.' => 'Dodaj nowy priorytet',
        'Add a new Role.' => 'Dodaj nową rolę',
        'Add a new SLA.' => 'Dodaj nową SLA',
        'Add a new Salutation.' => 'Dodaj nowy zwrot grzecznościowy',
        'Add a new Service.' => 'Dodaj nową usługę',
        'Add a new Signature.' => 'Dodaj nowy podpis',
        'Add a new State.' => 'Dodaj nowy status',
        'Add a new System Address.' => 'Dodaj nowy adres systemowy',
        'Add a new Type.' => 'Dodaj nowy typ',
        'Add a new salutation' => 'Dodaj zwrot',
        'Add new attachment' => 'Dodaj nowy załącznik',
        'Add note to ticket' => 'Dodaj notatkę do zgłoszenia',
        'Added User "%s"' => 'Dodano użytkownika "%s"',
        'Admin-Area' => 'Administracja',
        'Admin-Email' => 'Wiadomość od Administratora',
        'Admin-Password' => 'Hasło administratora',
        'Admin-User' => 'Administrator',
        'Agent Mailbox' => 'Poczta',
        'Agent Preferences' => 'Ustawienia agenta',
        'Agent-Area' => 'Obsługa',
        'All Agents' => 'Wszyscy agenci',
        'All Customer variables like defined in config option CustomerUser.' =>
            'Wszystkie zdefiniowane zmienne klienta.',
        'All customer tickets.' => 'Wszystkie zgłoszenia klienta',
        'All email addresses get excluded on replaying on composing an email.' =>
            'Wszystkie adresy e-mail zostaną wykluczone z odpowiedzi.',
        'All email addresses get excluded on replaying on composing and email.' =>
            'Wszystkie adresy zostaną pominięte przy odpowiedzi, tworzeniu i wysyłaniu wiadomości.',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' =>
            'Wszystkie wiadomości przysłane na ten adres w polu (Do:) zostaną umieszczone w tej kolejce.',
        'All messages' => 'Wszystkie wiadomości',
        'All new tickets!' => 'Wszystkie nowe zgłoszenia!',
        'All tickets where the reminder date has reached!' => 'Wszystkie zgłoszenia z przekroczonym terminem przypomnienia!',
        'All tickets which are escalated!' => 'Wszystkie eskalowane zgłoszenia!',
        'Allocate CustomerUser to service' => 'Przypisz klienta do usługi',
        'Allocate services to CustomerUser' => 'Przypisz usługi do klienta',
        'Answer' => 'Odpowiedź',
        'Article Create Times' => 'Czasy utworzenia wiadomości',
        'Article created' => 'Wiadomość utworzona',
        'Article created between' => 'Wiadomość utworzona pomiędzy',
        'Article filter settings' => 'Ustawienie filtra artykułów',
        'ArticleID' => 'ID Artykułu',
        'Attach' => 'Wstaw',
        'Attribute' => 'Atrybut',
        'Auto Response From' => 'Automatyczna odpowiedź Od',
        'Bounce Ticket: ' => 'Przekaż zgłoszenie',
        'Bounce ticket' => 'Przekaż zgłoszenie',
        'Bulk-Action' => 'Akcja grupowa',
        'Can not create link with %s!' => 'Nie połączono z %s!',
        'Can not delete link with %s!' => 'Nie można usunąć powiązania z %s',
        'Can\'t update password, invalid characters!' => 'Nie można zmienić hasła, niedozwolone znaki!',
        'Can\'t update password, need 2 lower and 2 upper characters!' =>
            'Nie można zmienić hasła, wymagane 2 małe i 2 wielkie litery!',
        'Can\'t update password, need min. 1 digit!' => 'Nie można zmienić hasła, wymagana conajmniej 1 cyfra!',
        'Can\'t update password, need min. 2 characters!' => 'Nie można zmienić hasła, wymagane conajmniej 2 znaki!',
        'Can\'t update password, need min. 8 characters!' => 'Nie można zmienić hasła, wymagane conajmniej 8 znaków!',
        'Can\'t update password, passwords doesn\'t match! Please try it again!' =>
            'Nie można zmienić hasła, podano różne hasła! Spróbuj ponownie!',
        'Category Tree' => 'Drzewo kategorii',
        'Change %s settings' => 'Zmień %s ustawienia',
        'Change Times' => 'Zmień czasy',
        'Change free text of ticket' => 'Dodaj lub zmień dodatkowe informacje o zgłoszeniu',
        'Change owner of ticket' => 'Zmień właściciela zgłoszenia',
        'Change priority of ticket' => 'Zmień priorytet zgłoszenia',
        'Change responsible of ticket' => 'Zmień odpowiedzialnego za zgłoszenie',
        'Change user <-> group settings' => 'Zmień użytkownika <-> Ustawienia grupy',
        'ChangeLog' => 'Lista zmian',
        'Child-Object' => 'Obiekt potomny',
        'Clear From' => 'Wyczyść pole Od:',
        'Clear To' => 'Wyczyść do',
        'Click here to report a bug!' => 'Kliknij tutaj, by zgłosić błąd systemu OTRS!',
        'Close Times' => 'Czasy zamknięcia',
        'Close ticket' => 'Zamknij zgłoszenie',
        'Close type' => 'Typ zamknięcia',
        'Close!' => 'Zamknij!',
        'Collapse View' => 'Zwiń widok',
        'Comment (internal)' => 'Komentarz (wewnętrzny)',
        'CompanyTickets' => 'Zgłoszenia firmy',
        'Compose Answer' => 'Napisz odpowiedź',
        'Compose Email' => 'Nowa wiadomość',
        'Compose Follow up' => 'Napisz Odpowiedź (Follow Up)',
        'Config Options' => 'Opcje konfiguracyjne',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Parametry konfiguracyjne (np. &lt;OTRS_CONFIG_HttpType&gt;)',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Opcje konfiguracyjne (np. <OTRS_CONFIG_HttpType>)',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Własności systemu (np. <OTRS_CONFIG_HttpType>).',
        'Contact customer' => 'Skontaktuj się z klientem',
        'Create New Template' => 'Stwórz nowy szablon wyszukiwania',
        'Create Times' => 'Czasy utworzenia',
        'Create new Phone Ticket' => 'Utwórz zgłoszenie telefoniczne',
        'Create new database' => 'Stwórz nową bazę danych',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' =>
            'Stwórz nowe grupy, by móc efektywniej zarządzać dostępem do zgłoszeń róźnych grup ow (np. Serwisu, Sprzedaży itp...).',
        'Create your first Ticket' => 'Utwórz pierwsze zgłoszenie',
        'Customer Move Notify' => 'Powiadomienie klienta o przesunięciu',
        'Customer Owner Notify' => 'Powiadomienie klienta o zmianie właściciela',
        'Customer State Notify' => 'Powiadomienie klienta o zmianie statusu',
        'Customer User' => 'Klienci',
        'Customer User Management' => 'Zarzadzanie klientami',
        'Customer Users' => 'Klienci',
        'Customer Users <-> Groups' => 'Klienci <-> Grupy',
        'Customer Users <-> Groups Management' => 'Klienci <-> Grupy',
        'Customer Users <-> Services' => 'Klienci <-> Usługi',
        'Customer Users <-> Services Management' => 'Klienci <-> Usługi',
        'Customer history' => 'Historia klienta',
        'Customer history search' => 'Przeszukiwanie historii klienta',
        'Customer history search (e. g. "ID342425").' => 'Przeszukiwanie historii klienta (np. "ID342425").',
        'Customer user will be needed to have a customer history and to login via customer panel.' =>
            'Klient jest wymagany aby obejrzeć historię i zalogować się do panelu.',
        'CustomerUser' => 'Klient',
        'DB Admin Password' => 'Hasło Administratora bazy danych',
        'DB Admin User' => 'Użytkownik administrujący bazą danych',
        'DB Host' => 'Host bazy danych',
        'DB Type' => 'Typ bazy danych',
        'DB connect host' => 'komputer bazy danych',
        'Default' => 'Domyslne',
        'Default Charset' => 'Domyślne kodowanie',
        'Default Language' => 'Domyślny język',
        'Delete old database' => 'Usuń starą bazę danych',
        'Detail' => 'Szczegół',
        'Diff' => 'Różnica',
        'Discard all changes and return to the compose screen' => 'Anuluj wszystkie zmiany i powróć do ekranu edycji',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' =>
            'Dostarcz lub filtruj przychodzące wiadomości w oparciu o nagłówki X-Headers! Wyrażenia regularne (RegExp) także mogą być użyte.',
        'Do you really want to delete this Object?' => 'Na pewno chcesz usunąć ten obiekt?',
        'Do you really want to reinstall this package (all manual changes get lost)?' =>
            'Czy chcesz przeinstalować pakiet (wszystkie zmiany ręczne zostaną utracone)?',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Nie zapomnij dodać użytkownika do grup i/lub ról!',
        'Don\'t forget to add a new user to groups!' => 'Nie zapomnij dodać użytkownika do grup!',
        'Don\'t work with UserID 1 (System account)! Create new users!' =>
            'Nie używaj użytkownika z UserID 1 (Konto systemowe)! Stwórz nowych użytkowników!',
        'Download Settings' => 'Pobierz ustawienia',
        'Download all system config changes.' => 'Pobierz wszystkie ustawienia systemowe.',
        'Drop Database' => 'Usuń bazę danych',
        'Dynamic-Object' => 'Obiekt dynamiczny',
        'Edit Article' => 'Edytuj artykuł',
        'Edit Customers' => 'Edytuj klientów',
        'Edit default services.' => 'Edycja domyślnych usług.',
        'Escalation - First Response Time' => 'Eskalacja - czas pierwszej odpowiedzi',
        'Escalation - Solution Time' => 'Eskalacja - czas rozwiązania',
        'Escalation - Update Time' => 'Eskalacja - czas aktualizacji',
        'Escalation time' => 'Czas eskalacji',
        'Expand View' => 'Rozwiń widok',
        'Explanation' => 'Wyjaśnienie',
        'Export Config' => 'Eksportuj Config',
        'FileManager' => 'Menedżer plików',
        'Filelist' => 'Lista plików',
        'Filter for Language' => 'Filtr języka',
        'Filtername' => 'Nazwa filtra',
        'Follow up' => 'Odpowiedz',
        'Follow up notification' => 'Powiadomienie o odpowiedzi',
        'For very complex stats it is possible to include a hardcoded file.' =>
            'Dla bardzo skomplikowanych statystyk można użyć pliku prekompilowanego.',
        'Foward ticket: ' => 'Prześlij zgłoszenie dalej',
        'Frontend' => 'Interfejs',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Przeszukiwanie pełnotekstowe w artykule (np. "Ja*k" lub "Rumia*)',
        'Go' => 'Start',
        'Group Ro' => 'Grupa ro',
        'Group selection' => 'Wybierz grupę',
        'Have a lot of fun!' => 'Życzymy dobrej zabawy!',
        'Help' => 'Pomoc',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
            'Tu mozesz zdefiniowac wartości. Możesz wybrać jeden lub dwa elementy. Potemmozesz wybrac atrybuty elementów. Każdy atrybut zostanie pokazany jako seria wartości. Jezeli nie wybierzesz żadnego z atrybutów elementu wszystkie zostana użyte przy generowaniu raportu. Tak samo jak nowe atrybuty dodane po ostatniej konfiguracji szablonu.',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
            'Tu możesz zdefiniowac oś X. Możesz wybrać jeden element ze zdefiniowanych. Następnie musisz wybrać dwa lub więcej atrybutów wskazanego elementu. Jeżeli nie wybrałeś wszystkich atrybutów elementu użyte one zostaną przy generowaniu raportu. Tak samo jak nowe atrybuty dodane od ostatniej konfiguracji.',
        'Here you can insert a description of the stat.' => 'Tu możesz dodać opis startstyki.',
        'Here you can select the dynamic object you want to use.' => 'Tu możesz wybrać obiekt dynamiczny którego chcesz użyć.',
        'Home' => 'Początek',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' =>
            'Jeżeli nowy plik prekompilowany bedzie dostepny, ten atrybut zostanie wyświetlony i bedziesz mógł wybrać jeden.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' =>
            'Jeśli zgłoszenie było zamknięte, a klient przyśle do niego kolejną odpowiedź, wtedy zgłoszenie zostanie zablokowane w kolejce starego właściciela.',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' =>
            'Jeśli, w podanym czasie, nie zostanie udzielona odpowiedź na zgłoszenie, wtedy tylko to zgłoszenie będzie widoczne w kolejce.',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' =>
            'Jeśli agent zablokuje zgłoszenie, a następnie nie odpowie na nie w ciągu wskazanego czasu, wtedy zgłoszenie zostanie automatycznie odblokowane. Dzięki temu pozostali agenci będą mogli je zobaczyć.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' =>
            'Jeśli nic nie zaznaczono, wtedy użytkownik nie będzie miał praw w tej grupie (zgłoszenia będą niedostępne)',
        'If you need the sum of every column select yes.' => 'Jeżeli chcesz sumować kolumny wybierz tak.',
        'If you need the sum of every row select yes' => 'Jeżeli chcesz sumować wiersze wybierz tak.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' =>
            'Jeżeli używasz wzorców regularnych (RegExp), możesz także użyć dopasowanych wartości w () jako [***] w \'Set\'.',
        'Image' => 'Obraz',
        'Important' => 'Ważne',
        'In this form you can select the basic specifications.' => 'W tym formularzu możesz wybrać podstawowe parametry.',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' =>
            'W ten sposób można edytować pęk kluczy skofigurowany w Kernel/Config.pm',
        'Information about the Stat' => 'Informacja o szablonie',
        'Insert of the common specifications' => 'Wstaw podstawowe parametry',
        'Is Job Valid' => 'Zadanie jest ważne',
        'Is Job Valid?' => 'Zadanie jest ważne?',
        'It\'s useful for ASP solutions.' => 'Pomocne w rozwiązanich ASP.',
        'It\'s useful for a lot of users and groups.' => 'Użyteczne dla wielu użytkowników i grup.',
        'Job-List' => 'Lista zadań',
        'Keyword' => 'Słowo kluczowe',
        'Keywords' => 'Słowa kluczowe',
        'Last update' => 'Ostatnia aktualizacja',
        'Link Table' => 'Połącz tabelę',
        'Link auto responses to queues.' => 'Zarządzanie relacjami Automatyczna Odpowiedź <-> Kolejka',
        'Link groups to roles.' => 'Zarządzanie relacjami Grupy <-> Role',
        'Link to Parent' => 'Dołącz do rodzica',
        'Linked as' => 'Połączono jako',
        'Load Settings' => 'Załaduj ustawienia',
        'Lock it to work on it!' => 'Zablokuj w celu obsługi',
        'Logfile' => 'Plik logu',
        'Logfile too large, you need to reset it!' => 'Plik log jest za duży, należy go usunąć!',
        'Login failed! Your username or password was entered incorrectly.' =>
            'Logowanie niepoprawne! Twój login lub hasło zostały wpisane niepoprawnie.',
        'Lookup' => 'Wyszukiwanie',
        'Mail Management' => 'Zarządzanie pocztą',
        'Mailbox' => 'Skrzynka',
        'Match' => 'Odpowiada',
        'Max. displayed tickets' => 'Maksymalna ilość wyświetlanych zgłoszeń',
        'Max. shown Tickets a page' => 'Maksymalna ilość zgłoszeń na stronie',
        'Message for new Owner' => 'Wiadomość do nowego właściciela',
        'Message sent to' => 'Wiadomość wysłana do',
        'Misc' => 'Różne',
        'Modified' => 'Zmodyfikowany',
        'Move notification' => 'Powiadomienie o przesunięciu',
        'Multiple selection of the output format.' => 'Wielokrotny wybór formatu wyjsciowego.',
        'MyTickets' => 'Moje zgłoszenia',
        'Name is required!' => 'Nazwa jest wymagana!',
        'Need a valid email address or don\'t use a local address!' => 'Musisz podać poprawny adres email. Nie można używać lokalnych adresów.',
        'New Agent' => 'Nowy agent',
        'New Customer' => 'Nowy klient',
        'New Group' => 'Nowa grupa',
        'New Group Ro' => 'Nowa grupa ro',
        'New Password' => 'Nowe hasło',
        'New Priority' => 'Nowy priorytet',
        'New SLA' => 'Nowa SLA',
        'New Service' => 'Nowa usługa',
        'New State' => 'Nowy status',
        'New Ticket Lock' => 'Nowa blokada zgłoszenia',
        'New TicketFreeFields' => 'Nowe wolne pole',
        'New Title' => 'Nowy tytuł',
        'New Type' => 'Nowy typ',
        'New account created. Sent Login-Account to %s.' => 'Konto zostało utworzone. Wysłano informacje dotyczące logowania do %s.',
        'New messages' => 'Nowe wiadomości',
        'New password again' => 'Ponownie nowe hasło',
        'No * possible!' => 'Nie używaj znaku "*"!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' =>
            'Brak pakietów dla używanej wersji Frameworka w tym repozytorium, ale są pakiety dla innych wersji!',
        'No Packages or no new Packages in selected Online Repository!' =>
            'Brak pakietów lub brak nowych pakietów w wybranym repozytorium!',
        'No Permission' => 'Brak dostępu',
        'No matches found' => 'Brak rezultatów',
        'No means, send agent and customer notifications on changes.' => '\'Nie\' oznacza - wyślij agentowi i klientowi powiadomienia o zmianach.',
        'No time settings.' => 'Brak ustawień czasu',
        'Note Text' => 'Tekst notatki',
        'Notification (Customer)' => 'Powiadomienie (Klient)',
        'Notifications' => 'Powiadomienia',
        'OTRS DB Name' => 'Nazwa bazy danych OTRS',
        'OTRS DB Password' => 'Hasło dostępu do bazy dla OTRS',
        'OTRS DB User' => 'Użytkownik bazy danych OTRS',
        'OTRS DB connect host' => 'Host bazy danych',
        'OTRS sends an notification email to the customer if the ticket is moved.' =>
            'System wyśle powiadomienie do klienta, gdy zgłoszenie zostanie przesunięte do innej kolejki.',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' =>
            'System wyśle powiadomienie do klienta, gdy zmieni sie właściciel zgłoszenia.',
        'OTRS sends an notification email to the customer if the ticket state has changed.' =>
            'System wyśle powiadomienie do klienta, gdy zmieni sie status zgłoszenia.',
        'Object already linked as %s.' => 'Obiekt już przypisany jako %s',
        'Of couse this feature will take some system performance it self!' =>
            'Oczywiście ta funkcja zabiera część wydajności do obsługi samej siebie!',
        'Open Tickets' => 'Otwarte zgł.',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' =>
            'Cechy aktualnego klienta (np. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' =>
            'Opcje aktualnego klienta (np. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' =>
            'Własności aktualnego klienta(np. <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' =>
            'Opcje bieżącego użytkownika który wykonał akcję (np. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' =>
            'Opcje aktualnego agenta obsługi (np. <OTRS_CURRENT_UserFirstname>)',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' =>
            'Własności aktualnego użytkownika który wykonał akcję (np. <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' =>
            'Opcjonalne dane (np. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' =>
            'Opcje zgłoszenia (np. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' =>
            'Własności zgłoszenia (np. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' =>
            'Własności zgłoszenia (np. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Other Options' => 'Inne opcje',
        'Out Of Office' => 'Poza biurem',
        'POP3 Account Management' => 'Konfiguracja kont POP3',
        'Package' => 'Pakiet',
        'Package not correctly deployed! You should reinstall the Package again!' =>
            'Pakiet niewłaciwie zainstalowany! Należy reinstalować pakiet!',
        'Param 1' => 'Parametr 1',
        'Param 2' => 'Parametr 2',
        'Param 3' => 'Parametr 3',
        'Param 4' => 'Parametr 4',
        'Param 5' => 'Parametr 5',
        'Param 6' => 'Parametr 6',
        'Parent-Object' => 'Obiekt macierzysty',
        'Password is already in use! Please use an other password!' => 'Hasło obecnie używane! Wybierz inne hasło!',
        'Password is already used! Please use an other password!' => 'Hasło użyte! Wybierz inne hasło!',
        'Passwords doesn\'t match! Please try it again!' => 'Hasła nie są zgodne! Spróbuj ponownie!',
        'Pending Times' => 'Czasy oczekiwania',
        'Pending messages' => 'Oczekujące wiadomości',
        'Pending type' => 'Typ oczekiwania',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' =>
            'Ustawienia dostepu. Wybierz grupy mogące udostępniać przygotowane raporty dla innych agentów.',
        'Permissions to change the ticket owner in this group/queue.' => 'Uprawnienia do zmiany właściciela zgłoszenia w tej grupie/kolejce',
        'PhoneView' => 'Nowy telefon',
        'Please contact your admin' => 'Skontaktuj się z Administratorem',
        'Please enter subject.' => 'Proszę podać tytuł',
        'Please provide a name.' => 'Proszę podać nazwę',
        'Prio' => 'Priorytet',
        'Problem' => 'Problem',
        'Queue <-> Auto Responses Management' => 'Kolejka <-> Zarządzanie automatycznymi odpowiedziami',
        'Queue ID' => 'ID Kolejki',
        'Queue Management' => 'Zarzadzanie kolejkami',
        'Queue is required.' => 'Należy wskazać kolejkę!',
        'QueueView Refresh Time' => 'Interwał odświeżania widoku kolejek',
        'Queues <-> Auto Responses' => 'Kolejka <-> Automatyczna odpowiedź',
        'Realname' => 'Prawdziwe Imię i Nazwisko',
        'Rebuild' => 'Przebuduj',
        'Recipients' => 'Adresaci',
        'Reminder' => 'Przypomnienie',
        'Reminder messages' => 'Tekst przypomnienia',
        'Required Field' => 'Pole wymagane',
        'Required!' => 'Wymagane!',
        'Response Management' => 'Konfiguracja Odpowiedzi',
        'Responses <-> Attachments Management' => 'Odpowiedzi <-> Zarządzanie załącznikami',
        'Responses <-> Queue Management' => 'Odpowiedzi <-> Zarządzanie kolejkami',
        'Return to the compose screen' => 'Powróć do ekranu edycji',
        'Role' => 'Rola',
        'Roles <-> Agents' => 'Role <-> Agenci',
        'Roles <-> Groups Management' => 'Role <-> Zarządzanie grupami',
        'Roles <-> Users' => 'Role <-> Użytkownicy',
        'Roles <-> Users Management' => ' Role <-> Zarządzanie użytkownikami',
        'Run Search' => 'Wyszukaj',
        'Save Job as?' => 'Zapisz zadanie jako',
        'Save Search-Profile as Template?' => 'Zachowaj profil wyszukiwania jako szablon',
        'Schedule' => 'Harmonogram',
        'Search Result' => 'Wyniki wyszukiwania',
        'Search Ticket' => 'Szukaj zgłoszenia',
        'Search for' => 'Szukaj',
        'Search for customers (wildcards are allowed).' => 'Wyszukaj klientów (* jest dozwolona)',
        'Search-Profile as Template?' => 'Zapisać jako szablon wyszukiwania?',
        'Select Box' => 'Zapytanie SQL',
        'Select Box Result' => 'Wyniki Zapytania',
        'Select Group' => 'Wybierz grupę ustawień',
        'Select Source (for add)' => 'Wybierz źródło (dla dodania)',
        'Select group' => 'Wybierz grupę ustawień',
        'Select the customeruser:service relations.' => 'Wybierz relację klient:usługa.',
        'Select the element, which will be used at the X-axis' => 'Wybierz element który będzie uzyty jako oś X',
        'Select the restrictions to characterise the stat' => 'Wybierz ograniczenia do opisania raportu.',
        'Select the role:user relations.' => 'Wybierz role: relacje użytkowników.',
        'Select the user:group permissions.' => 'Wybierz prawa dostępu dla użytkownika:grupy',
        'Select your QueueView refresh time.' => 'Wybierz okres odświerzania Podglądu Kolejki.',
        'Select your default spelling dictionary.' => 'Wybierz domyślny słownik.',
        'Select your frontend Charset.' => 'Wybierz kodowanie.',
        'Select your frontend QueueView.' => 'Wybierz Podgląd Kolejki.',
        'Select your frontend language.' => 'Wybierz język.',
        'Select your out of office time.' => 'Wybierz czas nieobecnosci',
        'Select your screen after creating a new ticket.' => 'Wybierz ekran, który pokaże się po rejestracji nowego zgłoszenia',
        'Selection needed' => 'Wybór wymagany',
        'Send Notification' => 'Wyślij powiadomienie',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' =>
            'Wyślij mi wiadomość, gdy klient odpowie na zgłoszenie, którego ja jestem właścicielem.',
        'Send me a notification of an watched ticket like an owner of an ticket.' =>
            'Wyślij mi powiadomienie obserwowaych zgłoszeń tak jak właścicielowi zgłoszenia.',
        'Send no notifications' => 'Wyślij bez powiadomień',
        'Sent new password to: %s' => 'Wysłano nowe hasło do: %s',
        'Sent password token to: %s' => 'Wysłano token hasła do: %s',
        'Sessions' => 'Sesje',
        'Set customer user and customer id of a ticket' => 'Wskaż klienta i ID klienta dla zgłoszenia',
        'Show' => 'Pokaż',
        'Site' => 'Witryna',
        'Solution' => 'Rozwiązanie',
        'Sort by' => 'Sortuj według',
        'Source' => 'Źródło',
        'Spell Check' => 'Sprawdź poprawność',
        'Split' => 'Podziel',
        'State Type' => 'Typ statusu',
        'Static-File' => 'Plik statyczny',
        'Stats-Area' => 'Staystyki',
        'Sub-Queue of' => 'Kolejka podrzędna',
        'Sub-Service of' => 'Usługa podrzędna wobec',
        'Subscribe' => 'Obserwuj',
        'Symptom' => 'Objawy',
        'System State Management' => 'Konfiguracja statusów',
        'Systemaddress' => 'Adres systemowy',
        'Take care that you also updated the default states in you Kernel/Config.pm!' =>
            'Pamiętaj, by auktualnić również domyślne statusy w pliku Kernel/Config.pm !',
        'The Ticket was locked' => 'Zgłoszenie zostało zablokowane',
        'The customer is required.' => 'Należy wskazać klienta!',
        'The field is required.' => 'Pole jest wymagane',
        'The message being composed has been closed.  Exiting.' => 'Wiadomość edytowana została zamknięta.  Wychodzę.',
        'The subject is required!' => 'Należy podać temat!',
        'The text is required!' => 'Wiadomość musi zawierać jakąś treść!',
        'These values are read-only.' => 'Wartość tylko do odczytu.',
        'These values are required.' => 'Wartość wymagana.',
        'This account exists.' => 'Konto istnieje.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' =>
            'To jest użyteczna blokada jeżeli chcesz uniemożliwić generowanie raportu przed zakończeniem tworzenia wzorca.',
        'This window must be called from compose window' => 'To okno musi zostać wywołane z okna edycji',
        'Ticket Change Times (between)' => 'Czas aktualizacji zgłoszenia (pomiędzy)',
        'Ticket Change Times (from moment)' => 'Czas aktualizacji zgłoszenia (od momentu)',
        'Ticket Close Times (between)' => 'Czas zamknięcia zgłoszenia (pomiędzy)',
        'Ticket Close Times (from moment)' => 'Czas zamknięcia zgłoszenia (od momentu)',
        'Ticket Create Times (between)' => 'Czas utworzenia zgłoszenia (pomiędzy)',
        'Ticket Create Times (from moment)' => 'Czas utworzenia zgłoszenia (od momentu)',
        'Ticket Hook' => 'Identyfikator zgłoszenia',
        'Ticket Lock' => 'Zablokowanie zgłoszenia',
        'Ticket Number Generator' => 'Generator numerów zgłoszeń',
        'Ticket Search' => 'Wyszukiwanie zgłoszenia',
        'Ticket Status View' => 'Status zgłoszenia',
        'Ticket Type is required!' => 'Typ zgłoszenia jest wymagany!',
        'Ticket escalation!' => 'Eskalacja zgłoszenia!',
        'Ticket locked!' => 'Zgłoszenie zablokowane!',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' =>
            'Opcje właściciela zgłoszenia (np. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Opcje dotyczące właściciela zgłoszenia (np. <OTRS_OWNER_UserFirstname>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Własności własciciela zgłoszenia (np. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' =>
            'Własności odpowiedzialnego agenta (np. <OTRS_RESPONSIBLE_UserFirstname>).',
        'Ticket selected for bulk action!' => 'Zgłoszenie wybrano do akcji grupowej!',
        'Ticket unlock!' => 'Zgłoszenie odblokowane!',
        'Ticket#' => 'Zgłoszenie',
        'Ticket-Area' => 'Zgłoszenia',
        'TicketFreeFields' => 'Wolne pola zgłoszenia',
        'TicketFreeText' => 'Dodatkowe informacje o zgłoszeniu',
        'TicketID' => 'ID Zgłoszenia',
        'TicketZoom' => 'Podgląd zgłoszenia',
        'Tickets shown' => 'Pokazane zgłoszenia',
        'Tickets which need to be answered!' => 'Zgłoszenia, na które należy odpowiedzieć!',
        'Timeover' => 'Przekroczenie czasu',
        'Times' => 'Razy',
        'Title of the stat.' => 'Tytuł statystyki.',
        'To enable automatic execusion select at least one value form minutes, hours and days!' =>
            'Aby włączyć automatyczne wykonywanie ustaw dni, godziny i minuty!',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' =>
            'Atrybuty artykułu (np. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).',
        'Top of Page' => 'Góra strony',
        'Total hits' => 'Wszystkich trafień',
        'Type:' => 'Typ:',
        'U' => 'G',
        'Unable to parse Online Repository index document!' => 'Niedostępne repozytorium on-line',
        'Uniq' => 'Unikalne',
        'Unlock Tickets' => 'Odblokuj zgłoszenia',
        'Unlock to give it back to the queue!' => 'Odblokuj i skieruj do kolejki!',
        'Unsubscribe' => 'Zakończ obserwowanie',
        'Use utf-8 it your database supports it!' => 'Używaj kodowania UTF-8 jeśli pozwala Ci na to baza danych!',
        'Useable options' => 'Użyteczne opcje',
        'User Management' => 'Zarządzanie użytkownikami',
        'User will be needed to handle tickets.' => 'Użytkownik będzie niezbędny do obsługi zgłoszenia.',
        'Users' => 'Użytkownicy',
        'Users <-> Groups' => 'Użytkownicy <-> Grupy',
        'Users <-> Groups Management' => 'Użytkownicy <-> Zarządzanie grupami',
        'Verify New Password' => 'Powtórz nowe hasło',
        'Warning! This tickets will be removed from the database! This tickets are lost!' =>
            'Uwaga! Zgłoszenia zostaną usuniete z bazy danych! Zgłoszenia zostaną utracone!',
        'Watch notification' => 'Obserwuj powiadomienia',
        'Web-Installer' => 'Instalator Web',
        'WebMail' => 'Poczta przez www',
        'WebWatcher' => 'Obserwator Web',
        'Welcome to OTRS' => 'Witamy w OTRS',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Nieważny raport nie może zostać wygenerowany.',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' =>
            'Możesz utworzyć szablony z wykorzystaniem pól wyboru i wprowadzania danych według własnych potrzeb. Które elementy możesz edytować określił administrator statystyk który konfigurował moduł statystyk.',
        'Yes means, send no agent and customer notifications on changes.' =>
            '\'Tak\' oznacza - nie wysyłaj powiadomień agentowi i klientowpi przy zmianach.',
        'Yes, save it with name' => 'Tak, zapisz to pod nazwą',
        'You got new message!' => 'Masz nową wiadomość!',
        'You have to select two or more attributes from the select field!' =>
            'Musisz wybrać dwa lub więcej atrybutów z pola wyboru!',
        'You need a email address (e. g. customer@example.com) in To:!' =>
            'W polu Do: musi znaleźć się adres email (np. klient@przyklad.pl)!',
        'You need a to: recipient!.' => 'Musisz wskazać odbiorcę',
        'You need min. one selected Ticket!' => 'Musisz wybrać conajmniej jedno zgłoszenie!',
        'You need to account time!' => 'Musisz zaraportować czas!',
        'You need to activate %s first to use it!' => 'Musisz aktywować %s przed użyciem!',
        'Your Password' => 'Hasło',
        'Your email address is new' => 'Ustawiono nowy adres e-mail',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' =>
            'Twoja wiadomość o numerze zgłoszenia: "<OTRS_TICKET>" została przekazana na adres "<OTRS_BOUNCE_TO>" . Prosimy kontaktować się pod tym adresem we wszystkich sprawach dotyczących tego zgłoszenia.',
        'Your own Ticket' => 'Twoje własne zgłoszenie',
        'accept license' => 'akceptuję Licencję',
        'customer realname' => 'Prawdziwe dane klienta',
        'delete' => 'kasuj',
        'delete links' => 'usuń linki',
        'don\'t accept license' => 'nie akceptuję Licencji',
        'down' => 'dół',
        'false' => 'fałsz',
        'for agent firstname' => 'dla imienia agenta',
        'for agent lastname' => 'dla nazwiska agenta',
        'for agent login' => 'dla loginu agenta',
        'for agent user id' => 'dla ID agenta',
        'go back' => 'powrót',
        'kill all sessions' => 'Zamknij wszystkie sesje',
        'kill session' => 'Zamknij sesję',
        'maximal period form' => 'maksymalny okres formularza',
        'modified' => 'zmieniony',
        'new ticket' => 'Nowe zgłoszenie',
        'next step' => 'Następny krok',
        'send' => 'wyślij',
        'sort downward' => 'sortuj malejąco',
        'sort upward' => 'sortuj rosnąco',
        'to get the first 20 character of the subject' => 'by wstawić pierwsze 20 znaków tematu',
        'to get the first 5 lines of the email' => 'by wstawić 5 pierwszych linii wiadomości',
        'to get the from line of the email' => 'by wstawić pole Od wiadomości',
        'to get the realname of the sender (if given)' => 'by wstawić prawdziwe imię i nazwisko klienta (jeśli podano)',
        'up' => 'góra',
        'utf8' => 'UTF8',

    };
    # $$STOP$$
    return;
}

1;
