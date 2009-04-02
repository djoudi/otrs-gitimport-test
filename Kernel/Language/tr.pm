# --
# Kernel/Language/tr.pm - provides tr language translation
# Copyright (C) 2001-2009 OTRS AG, http://otrs.org/
# --
# $Id: tr.pm,v 1.17 2009-04-02 16:15:18 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
package Kernel::Language::tr;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.17 $)[1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Fri May 16 14:09:04 2008

    # possible charsets
    $Self->{Charset} = ['iso-8859-9', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%T - %D.%M.%Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => 'Evet',
        'No' => 'Hay�r',
        'yes' => 'evet',
        'no' => 'hay�r',
        'Off' => 'Kapal�',
        'off' => 'kapal�',
        'On' => 'A��k',
        'on' => 'a��k',
        'top' => '�st',
        'end' => 'son',
        'Done' => 'Tamam',
        'Cancel' => '�pt�l',
        'Reset' => 'S�f�rla',
        'last' => 'son',
        'before' => '�nce',
        'day' => 'g�n',
        'days' => 'g�n',
        'day(s)' => 'g�n',
        'hour' => 'saat',
        'hours' => 'saat',
        'hour(s)' => 'saat',
        'minute' => 'dakika',
        'minutes' => 'dakika',
        'minute(s)' => 'dakika',
        'month' => 'ay',
        'months' => 'ay',
        'month(s)' => 'ay',
        'week' => 'hafta',
        'week(s)' => 'hafta',
        'year' => 'y�l',
        'years' => 'y�l',
        'year(s)' => 'y�l',
        'second(s)' => 'saniye',
        'seconds' => 'saniye',
        'second' => 'saniye',
        'wrote' => 'yazd�',
        'Message' => 'Mesaj',
        'Error' => 'Hata',
        'Bug Report' => 'Hata Kayd�',
        'Attention' => 'Dikkat',
        'Warning' => 'Uyar�',
        'Module' => 'mod�l',
        'Modulefile' => 'mod�l dosyas�',
        'Subfunction' => 'Altfonksiyon',
        'Line' => 'Hat',
        'Example' => '�rnek',
        'Examples' => 'Beispiele',
        'valid' => 'ge�erli',
        'invalid' => 'ge�ersiz',
        '* invalid' => '* ge�ersiz',
        'invalid-temporarily' => 'ge�ici olarak ge�ersiz',
        ' 2 minutes' => ' 2 dakika',
        ' 5 minutes' => ' 5 dakika',
        ' 7 minutes' => ' 7 dakika',
        '10 minutes' => '10 dakika',
        '15 minutes' => '15 dakika',
        'Mr.' => 'Bay',
        'Mrs.' => 'Bayan',
        'Next' => 'Sonraki',
        'Back' => 'Geri',
        'Next...' => 'Sonraki...',
        '...Back' => '...Geri',
        '-none-' => '-hi�biri-',
        'none' => 'hi�biri',
        'none!' => 'hi�biri!',
        'none - answered' => 'hi�biri - cevapland�',
        'please do not edit!' => 'L�tfen de�i�tirmeyiniz!',
        'AddLink' => 'Ba� Ekle',
        'Link' => 'Ba�',
        'Unlink' => '',
        'Linked' => 'Ba�land�',
        'Link (Normal)' => 'Ba� (Normal)',
        'Link (Parent)' => 'Ba� (Ebeveyn)',
        'Link (Child)' => 'Ba� (Alt)',
        'Normal' => 'Normal',
        'Parent' => 'Ebeveyn',
        'Child' => 'Alt',
        'Hit' => '�sabet',
        'Hits' => '�sabet',
        'Text' => 'Metin',
        'Lite' => 'Hafif',
        'User' => 'Kullan�c�',
        'Username' => 'Kullan�c� ad�',
        'Language' => 'Dil',
        'Languages' => 'Diller',
        'Password' => 'Parola',
        'Salutation' => 'Selam',
        'Signature' => '�mza',
        'Customer' => 'M��teri',
        'CustomerID' => 'M��teri kimli�i',
        'CustomerIDs' => 'M��teri kimlikleri',
        'customer' => 'm��teri',
        'agent' => 'arac�',
        'system' => 'sistem',
        'Customer Info' => 'M��teri Bilgisi',
        'Customer Company' => 'M��teri �irket',
        'Company' => '�irket',
        'go!' => 'Ba�la!',
        'go' => 'ba�la',
        'All' => 'T�m�',
        'all' => 't�m�',
        'Sorry' => '�zg�n�m',
        'update!' => 'g�ncelle!',
        'update' => 'g�ncelle',
        'Update' => 'G�ncelle',
        'submit!' => 'g�nder!',
        'submit' => 'g�nder',
        'Submit' => 'G�nder',
        'change!' => 'de�i�tir!',
        'Change' => 'De�i�tir',
        'change' => 'de�i�tir',
        'click here' => 'buraya t�klay�n',
        'Comment' => 'Yorum',
        'Valid' => 'Ge�erli',
        'Invalid Option!' => 'Ge�ersiz Se�enek!',
        'Invalid time!' => 'Ge�ersiz saat!',
        'Invalid date!' => 'Ge�ersiz tarih!',
        'Name' => 'Ad',
        'Group' => 'Grup',
        'Description' => 'A��klama',
        'description' => 'a��klama',
        'Theme' => 'Tema',
        'Created' => 'Olu�turma',
        'Created by' => 'Olu�turan',
        'Changed' => 'De�i�im',
        'Changed by' => 'De�i�tiren',
        'Search' => 'Ara',
        'and' => 've',
        'between' => 'aras�nda',
        'Fulltext Search' => 'T�mmetin Aramas�',
        'Data' => 'Veri',
        'Options' => 'Se�enekler',
        'Title' => 'Ba�l�k',
        'Item' => 'Madde',
        'Delete' => 'Sil',
        'Edit' => 'D�zenle',
        'View' => 'G�r�n�m',
        'Number' => 'Say�',
        'System' => 'Sistem',
        'Contact' => 'Ba�lant�',
        'Contacts' => 'Ba�lant�lar',
        'Export' => 'D��ar�ya aktar',
        'Up' => 'Yukar�',
        'Down' => 'A�a��',
        'Add' => 'Ekle',
        'Category' => 'Kategori',
        'Viewer' => 'G�r�nt�leyen',
        'New message' => 'Yeni mesaj',
        'New message!' => 'Yeni mesaj!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'L�tfen normal kuyruk g�r�n�m�ne d�nmek i�in bu bilet(ler)i cevaplay�n!',
        'You got new message!' => 'Yeni mesaj�n�z var!',
        'You have %s new message(s)!' => '%s yeni mesaj�n�z var!',
        'You have %s reminder ticket(s)!' => '%s hat�rlat�c� biletiniz var!',
        'The recommended charset for your language is %s!' => 'Kulland���n�z dil i�in tavsiye edilen karakter k�mesi %s!',
        'Passwords doesn\'t match! Please try it again!' => 'Parolalar uyu�muyor! L�tfen tekrar denetin!',
        'Password is already in use! Please use an other password!' => 'Parola zaten kullan�mda! L�tfen ba�ka bir parola kullan�n!',
        'Password is already used! Please use an other password!' => 'Parola zaten kullan�ld�! L�tfen ba�ka bir parola kullan�n!',
        'You need to activate %s first to use it!' => 'Kullanabilmek i�in %s �nce etkinle�tirilmeli!',
        'No suggestions' => '�neri yok',
        'Word' => 'Kelime',
        'Ignore' => 'Yoksay',
        'replace with' => 'ile de�i�tir',
        'There is no account with that login name.' => 'Bu kullan�c� ad�nda bir hesap yok.',
        'Login failed! Your username or password was entered incorrectly.' => 'Oturum a��lamad�! Kullan�c� ad�n�z veya parolan�z yanl�� girildi.',
        'Please contact your admin' => 'L�tfen y�neticiyle ileti�ime ge�in',
        'Logout successful. Thank you for using OTRS!' => 'Oturum kapatma ba�ar�l�! OTRS\'yi kulland���n�z i�in te�ekk�r ederiz!',
        'Invalid SessionID!' => 'Ge�ersiz oturum kimli�i!',
        'Feature not active!' => '�zellik etkin de�il!',
        'Login is needed!' => 'Oturum a�man�z gerekli!',
        'Password is needed!' => 'Parola gerekli!',
        'License' => 'Lisans',
        'Take this Customer' => 'Bu M��teriyi al',
        'Take this User' => 'Bu Kullan�c�y� al',
        'possible' => 'm�mk�n',
        'reject' => 'reddet',
        'reverse' => 'ters',
        'Facility' => 'Tesis',
        'Timeover' => 'S�re bitimi',
        'Pending till' => '�u zamana kadar ask�da',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'Kullan�c� kimli�i 1 (Sistem hesab�) ile �al��may�n! Yeni kullan�c�lar olu�turun!',
        'Dispatching by email To: field.' => 'Elektronik posta Kime: alan�na g�re g�nderiliyor.',
        'Dispatching by selected Queue.' => 'Se�ili Kuyru�a g�re g�nderiliyor.',
        'No entry found!' => 'Kay�t bulunamad�!',
        'Session has timed out. Please log in again.' => 'Oturum s�resi doldu. L�tfen tekrar oturum a��n.',
        'No Permission!' => '�zin yok!',
        'To: (%s) replaced with database email!' => 'Kime: (%s) veritaban� elektronik postas�yla de�i�tirilir!',
        'Cc: (%s) added database email!' => 'Karbon kopya: (%s) veritaban� elektronik postas� eklendi!',
        '(Click here to add)' => '(Eklemek i�in buraya t�klay�n)',
        'Preview' => '�nizleme',
        'Package not correctly deployed! You should reinstall the Package again!' => 'Paket do�ru �ekilde y�klenmemi�! Paketi yeniden y�klemelisiniz!',
        'Added User "%s"' => '"%s" kullan�c�s� eklendi.',
        'Contract' => 'Kontrat',
        'Online Customer: %s' => '�evrimi�i M��teri: %s',
        'Online Agent: %s' => '�evirimi Arac�: %s',
        'Calendar' => 'Takvim',
        'File' => 'Dosya',
        'Filename' => 'Dosya ad�',
        'Type' => 'Tip',
        'Size' => 'Boyut',
        'Upload' => 'Y�kle',
        'Directory' => 'Dizin',
        'Signed' => '�mzal�',
        'Sign' => '�mza',
        'Crypted' => '�ifrelenmi�',
        'Crypt' => '�ifre',
        'Office' => 'B�ro',
        'Phone' => 'Telefon',
        'Fax' => 'Faks',
        'Mobile' => 'Cep',
        'Zip' => 'PK',
        'City' => '�ehir',
        'Location' => '',
        'Street' => '',
        'Country' => '�lke',
        'installed' => 'y�klenmi�',
        'uninstalled' => 'kald�r�lm��',
        'Security Note: You should activate %s because application is already running!' => 'G�venlik notu: %s etkinle�tirilmeli ��nk� uygulama halihaz�rda �al���yor!',
        'Unable to parse Online Repository index document!' => '�evrimi�i Depo endeks belgesi ayr��t�r�lamad�!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'Bu �evrimi�i Depoda �stenen �at� i�in Paket bulunamad�, ama ba�ka �at�lar i�in var!',
        'No Packages or no new Packages in selected Online Repository!' => 'Se�ili �evrimi�i Depoda hi� Paket yok veya hi� yeni Paket yok!',
        'printed at' => 'yazd�r�ld�',
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
        'Jan' => 'Oca',
        'Feb' => '�ub',
        'Mar' => 'Mar',
        'Apr' => 'Nis',
        'May' => 'May',
        'Jun' => 'Haz',
        'Jul' => 'Tem',
        'Aug' => 'A�u',
        'Sep' => 'Eyl',
        'Oct' => 'Eki',
        'Nov' => 'Kas',
        'Dec' => 'Ara',
        'January' => 'Ocak',
        'February' => '�ubat',
        'March' => 'Mart',
        'April' => 'Nisan',
        'June' => 'Haziran',
        'July' => 'Temmuz',
        'August' => 'A�ustos',
        'September' => 'Eyl�l',
        'October' => 'Ekim',
        'November' => 'Kas�m',
        'December' => 'Aral�k',

        # Template: AAANavBar
        'Admin-Area' => 'Y�netim Alan�',
        'Agent-Area' => 'Arac� Alan�',
        'Ticket-Area' => 'Bilet Alan�',
        'Logout' => 'Oturumu kapat',
        'Agent Preferences' => 'Arac� Tercihleri',
        'Preferences' => 'Tercihler',
        'Agent Mailbox' => 'Arac� Posta Kutusu',
        'Stats' => '�statistikler',
        'Stats-Area' => '�statistikler Alan�',
        'Admin' => 'Y�netici',
        'Customer Users' => 'M��teri Kullan�c�lar',
        'Customer Users <-> Groups' => 'M��teri Kullan�c�lar <-> Gruplar',
        'Users <-> Groups' => 'Kullan�c�lar <-> Gruplar',
        'Roles' => 'Roller',
        'Roles <-> Users' => 'Roller <-> Kullan�c�lar',
        'Roles <-> Groups' => 'Roller <-> Gruplar',
        'Salutations' => 'Sel�mlamalar',
        'Signatures' => '�mzalar',
        'Email Addresses' => 'E-Posta Adresleri',
        'Notifications' => 'Bildirimler',
        'Category Tree' => 'Kategori A�ac�',
        'Admin Notification' => 'Y�netim Bilgilendirme',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Tercihler ba�ar�l� bir �ekilde g�ncellendi!',
        'Mail Management' => 'Posta Y�netimi',
        'Frontend' => '�ny�z',
        'Other Options' => 'Di�er Se�enekler',
        'Change Password' => 'Parola De�i�tir',
        'New password' => 'Yeni parola',
        'New password again' => 'Yeni parola (tekrar)',
        'Select your QueueView refresh time.' => 'Kuyruk G�r�n�m� tazeleme s�kl���n� se�in.',
        'Select your frontend language.' => '�ny�z Dilini se�in.',
        'Select your frontend Charset.' => '�ny�z Karakter K�mesini se�in.',
        'Select your frontend Theme.' => '�ny�z Temas�n� se�in.',
        'Select your frontend QueueView.' => '�ny�z Kuyruk G�r�n�m�n�z� se�in.',
        'Spelling Dictionary' => 'S�zdizim S�zl���',
        'Select your default spelling dictionary.' => '�ntan�ml� s�zdizim s�zl���n�z� se�in.',
        'Max. shown Tickets a page in Overview.' => 'Genel bak��ta bir sayfada g�sterilecek en fazla Bilet say�s�.',
        'Can\'t update password, passwords doesn\'t match! Please try it again!' => 'Parola g�ncellenemiyor, parolalar birbirleriyle uyu�muyor! L�tfen tekrar deneyin!',
        'Can\'t update password, invalid characters!' => 'Parola g�ncellenemiyor, ge�ersiz karakterler var!',
        'Can\'t update password, need min. 8 characters!' => 'Parola g�ncellenemiyor, en az 8 karakter girmelisiniz!',
        'Can\'t update password, need 2 lower and 2 upper characters!' => 'Parola g�ncellenemiyor, 2 k���k harf ve 2 b�y�k harf girmelisiniz!',
        'Can\'t update password, need min. 1 digit!' => 'Parola g�ncellenemiyor, en az 1 say� girmelisiniz!',
        'Can\'t update password, need min. 2 characters!' => 'Parola g�ncellenemiyor, en az 2 karakter girmelisiniz!',

        # Template: AAAStats
        'Stat' => '�statistikler',
        'Please fill out the required fields!' => 'L�tfen zorunlu alanlar� doldurun!',
        'Please select a file!' => 'L�tfen bir dosya se�in!',
        'Please select an object!' => 'L�tfen bir nesne se�in!',
        'Please select a graph size!' => 'L�tfen bir grafik boyutu se�in!',
        'Please select one element for the X-axis!' => 'L�tfen X ekseni i�in bir eleman se�in!',
        'You have to select two or more attributes from the select field!' => 'Se�im alan�ndan iki veya daha fazla nitelik se�melisiniz!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'L�tfen sadece bir eleman se�in veya se�im alan�n�n i�aretli oldu�u yerden \'Sabit\' d��mesini kapat�n!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'E�er bir i�aretleme kutusu kullan�rsan�z se�im alan�ndan baz� nitelikleri se�melisiniz!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'L�tfen se�ili giri� alan�na bir de�er girin veya \'Sabit\' i�aretleme kutusunu kapat�n!',
        'The selected end time is before the start time!' => 'Se�ilen biti� zaman� ba�lama zaman�ndan �nce!',
        'You have to select one or more attributes from the select field!' => 'Se�im alan�ndan bir veya daha fazla nitelik se�melisiniz!',
        'The selected Date isn\'t valid!' => 'Se�ilen Tarih ge�erli de�il!',
        'Please select only one or two elements via the checkbox!' => 'L�tfen i�aretleme kutusu vas�tas�yla sadece bir veya iki eleman se�in!',
        'If you use a time scale element you can only select one element!' => 'E�er bir zaman oran eleman� kullan�rsan�z sadece bir eleman se�ebilirsiniz!',
        'You have an error in your time selection!' => 'Zaman se�iminizde bir hata var!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'Raporlama zaman s�kl���n�z �ok k���k, l�tfen daha b�y�k bir zaman oran� se�in!',
        'The selected start time is before the allowed start time!' => 'Se�ilen ba�lang�� zaman� izin verilen ba�lang�� zaman�ndan �nce!',
        'The selected end time is after the allowed end time!' => 'Se�ilen biti� zaman� izin verilen biti� zaman�ndan sonra!',
        'The selected time period is larger than the allowed time period!' => 'Se�ilen zaman d�nemi izin verilen zaman d�neminden daha b�y�k!',
        'Common Specification' => 'Genel Belirtim',
        'Xaxis' => 'X ekseni',
        'Value Series' => 'De�er Serileri',
        'Restrictions' => 'K�s�tlamalar',
        'graph-lines' => 'grafik-�izgiler',
        'graph-bars' => 'grafik-�ubuklar',
        'graph-hbars' => 'grafik-yatay �ubuklar',
        'graph-points' => 'grafik-noktalar',
        'graph-lines-points' => 'grafik-�izgiler-noktalar',
        'graph-area' => 'grafik-alan',
        'graph-pie' => 'grafik-pasta',
        'extended' => 'geni�letilmi�',
        'Agent/Owner' => 'Arac�/Sahip',
        'Created by Agent/Owner' => 'Arac�/Sahip Taraf�ndan Olu�turulmu�',
        'Created Priority' => 'Olu�turulma �nceli�i',
        'Created State' => 'Olu�turulma Durumu',
        'Create Time' => 'Olu�turulma Zaman�',
        'CustomerUserLogin' => 'M��teri Kullan�c� Oturumu',
        'Close Time' => 'Kapanma Zaman�',

        # Template: AAATicket
        'Lock' => 'Kilitle',
        'Unlock' => 'Kilidi A�',
        'History' => 'Ge�mi�',
        'Zoom' => 'Yak�nla�ma',
        'Age' => 'Ya�',
        'Bounce' => 'Yans�t',
        'Forward' => '�leri',
        'From' => 'Kimden',
        'To' => 'Kime',
        'Cc' => 'Karbon Kopya',
        'Bcc' => 'Gizli Karbon Kopya',
        'Subject' => 'Konu',
        'Move' => 'Ta��',
        'Queue' => 'Kuyru�a koy',
        'Priority' => '�ncelik',
        'Priority Update' => '',
        'State' => 'Durum',
        'Compose' => 'Yeni Olu�tur',
        'Pending' => 'Bekliyor',
        'Owner' => 'Sahip',
        'Owner Update' => 'Sahip G�ncellemesi',
        'Responsible' => 'Sorumlu',
        'Responsible Update' => 'Sorumlu G�ncellemesi',
        'Sender' => 'G�nderen',
        'Article' => 'Yaz�',
        'Ticket' => 'Bilet',
        'Createtime' => 'Olu�turulma zaman�',
        'plain' => 'd�z',
        'Email' => 'E-Posta',
        'email' => 'e-posta',
        'Close' => 'Kapat',
        'Action' => 'Eylem',
        'Attachment' => 'Ek',
        'Attachments' => 'Ekler',
        'This message was written in a character set other than your own.' => 'Bu mesaj sizinkinin d���nda bir karakter k�mesinde yaz�lm��.',
        'If it is not displayed correctly,' => 'E�er do�ru g�r�nt�lenmezse,',
        'This is a' => 'Bu bir',
        'to open it in a new window.' => 'yeni pencerede a�mak i�in',
        'This is a HTML email. Click here to show it.' => 'Bu HTML bi�imli bir e-posta. G�stermek i�in buraya t�klay�n.',
        'Free Fields' => 'Serbest Alanlar',
        'Merge' => 'birle�tir',
        'merged' => 'birle�tirildi',
        'closed successful' => 'kapatma ba�ar�l�',
        'closed unsuccessful' => 'kapatma ba�ar�s�z',
        'new' => 'yeni',
        'open' => 'a�',
        'closed' => 'kapal�',
        'removed' => 'kald�r�ld�',
        'pending reminder' => 'bekleyen hat�rlat�c�',
        'pending auto' => 'bekleyen otomatik',
        'pending auto close+' => 'bekleyen otomatik kapat+',
        'pending auto close-' => 'bekleyen otomatik kapat-',
        'email-external' => 'e-posta-haric�',
        'email-internal' => 'e-posta-dahil�',
        'note-external' => 'not-haric�',
        'note-internal' => 'not-dahil�',
        'note-report' => 'not-rapor',
        'phone' => 'telefon',
        'sms' => 'k�sa mesaj',
        'webrequest' => 'web iste�i',
        'lock' => 'kilitle',
        'unlock' => 'kilidi a�',
        'very low' => '�ok d���k',
        'low' => 'd���k',
        'normal' => 'normal',
        'high' => 'y�ksek',
        'very high' => '�ok y�ksek',
        '1 very low' => '1 �ok d���k',
        '2 low' => '2 d���k',
        '3 normal' => '3 normal',
        '4 high' => '4 y�ksek',
        '5 very high' => '5 �ok y�ksek',
        'Ticket "%s" created!' => '"%s" bileti olu�turuldu!',
        'Ticket Number' => 'Bilet Numaras�',
        'Ticket Object' => 'Bilet Nesnesi',
        'No such Ticket Number "%s"! Can\'t link it!' => '"%s" Bilet Numaras� yok! Ona ba�lanamaz!',
        'Don\'t show closed Tickets' => 'Kapal� Biletleri g�sterme',
        'Show closed Tickets' => 'Kapal� Biletleri g�ster',
        'New Article' => 'Yeni Yaz�',
        'Email-Ticket' => 'E-Posta-Bilet',
        'Create new Email Ticket' => 'Yeni E-Posta-Bilet olu�tur',
        'Phone-Ticket' => 'Telefon-Bilet',
        'Search Tickets' => 'Biletleri Ara',
        'Edit Customer Users' => 'M��teri Kullan�c�lar� Belirle',
        'Edit Customer Company' => '',
        'Bulk Action' => 'Toplu ��lem',
        'Bulk Actions on Tickets' => 'Biletler �zerinde Toplu ��lem',
        'Send Email and create a new Ticket' => 'E-Postay� g�nder ve yeni Bilet olu�tur',
        'Create new Email Ticket and send this out (Outbound)' => 'Yeni E-Posta-Bilet olu�tur ve bunu g�nder (d��ar�)',
        'Create new Phone Ticket (Inbound)' => 'Yeni Telefon-Bilet',
        'Overview of all open Tickets' => 'T�m a��k Biletlere genel bak��',
        'Locked Tickets' => 'Kilitli Biletler',
        'Watched Tickets' => '�zlenen Biletler',
        'Watched' => '�zlenen',
        'Subscribe' => 'Abone ol',
        'Unsubscribe' => 'Abonelikten ��k',
        'Lock it to work on it!' => '�zerinde �al��mak i�in kilitle!',
        'Unlock to give it back to the queue!' => 'Kilidini kald�r ve kuyru�a geri ver!',
        'Shows the ticket history!' => 'Bilet ge�mi�ini g�sterir!',
        'Print this ticket!' => 'Bu bileti yazd�r!',
        'Change the ticket priority!' => 'Bilet �nceli�ini de�i�tir!',
        'Change the ticket free fields!' => 'Biletteki serbest alanlar� de�i�tir!',
        'Link this ticket to an other objects!' => 'Bu bileti ba�ka nesnelere ba�la!',
        'Change the ticket owner!' => 'Bilet sahibini de�i�tir!',
        'Change the ticket customer!' => 'Bilet m��terisini de�i�tir!',
        'Add a note to this ticket!' => 'Bu bilete bir not ekle!',
        'Merge this ticket!' => 'Bu bileti birle�tir!',
        'Set this ticket to pending!' => 'Bu bileti beklemeye al!',
        'Close this ticket!' => 'Bu bileti kapat!',
        'Look into a ticket!' => 'Bir bilete bak!',
        'Delete this ticket!' => 'Bu bileti sil!',
        'Mark as Spam!' => 'Spam (��p) olarak i�aretle!',
        'My Queues' => 'Kuyruklar�m',
        'Shown Tickets' => 'G�sterilen Biletler',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '"<OTRS_TICKET>" bilet numaral� e-postan�z "<OTRS_MERGE_TO_TICKET>" ile birle�tirildi.',
        'Ticket %s: first response time is over (%s)!' => 'Bilet %s: ilk yan�t zaman� a��ld� (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Bilet %s: %s i�inde ilk yan�t zaman� a��lacak!',
        'Ticket %s: update time is over (%s)!' => 'Bilet %s: g�ncelleme zaman� a��ld� (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Bilet %s: %s i�inde g�ncelleme zaman� a��lacak!',
        'Ticket %s: solution time is over (%s)!' => 'Bilet %s: ��zme zaman� a��ld� (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Bilet %s: %s i�inde ��zme zaman� a��lacak!',
        'There are more escalated tickets!' => 'Ba�ka y�kseltilmi� biletler var!',
        'New ticket notification' => 'Yeni bilet bildirimi',
        'Send me a notification if there is a new ticket in "My Queues".' => '"Kuyruklar�m"da yeni bir bilet oldu�unda bana bildirim g�nder.',
        'Follow up notification' => 'Takip bildirimi',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'E�er bu biletin sahibi bensem ve bir m��teri takip eden mesaj g�nderirse bana bildirim g�nder.',
        'Ticket lock timeout notification' => 'Bilet kilidi zaman a��m� bildirimi',
        'Send me a notification if a ticket is unlocked by the system.' => 'Bir biletin kilidi sistem taraf�ndan kald�r�ld���nda bana bildirim g�nder.',
        'Move notification' => 'Ta��ma bildirimi',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Bilet "Kuyruklar�m"dan birine ta��nd���nda bana bildirim g�nder',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Favori kuyruklar�n�z�n se�im kuyru�u. Bu kuyruklar hakk�nda da e-posta yoluyla (e�er a��ksa) bildirim al�rs�n�z.',
        'Custom Queue' => '�zel Kuyruk',
        'QueueView refresh time' => 'Kuyruk G�r�n�m� tazeleme zaman�',
        'Screen after new ticket' => 'Yeni Biletten sonraki ekran',
        'Select your screen after creating a new ticket.' => 'Yeni bir bilet olu�turduktan sonra g�rmek istedi�iniz ekran� se�in.',
        'Closed Tickets' => 'Kapanm�� Biletler',
        'Show closed tickets.' => 'Kapanm�� biletleri g�ster.',
        'Max. shown Tickets a page in QueueView.' => 'Kuyruk G�r�n�m�nde bir sayfada g�sterilecek en fazla Bilet say�s�.',
        'CompanyTickets' => '�irket Biletleri',
        'MyTickets' => 'Biletlerim',
        'New Ticket' => 'Yeni Bilet',
        'Create new Ticket' => 'Yeni Bilet olu�tur',
        'Customer called' => 'Aranan m��teri',
        'phone call' => 'telefon aramas�',
        'Responses' => 'Yan�tlar',
        'Responses <-> Queue' => 'Yan�tlar <-> Kuyruk',
        'Auto Responses' => 'Otomatik Yan�tlar',
        'Auto Responses <-> Queue' => 'Otomatik Yan�tlar <-> Kuyruk',
        'Attachments <-> Responses' => 'Ekler <-> Yan�tlar',
        'History::Move' => 'Bilet "%s" (%s) kuyru�una ta��nd�, "%s" (%s) kuyru�undan.',
        'History::TypeUpdate' => '"%s" (Kimlik=%s) tipi g�ncellendi.',
        'History::ServiceUpdate' => '"%s" (Kimlik=%s) servisi g�ncellendi.',
        'History::SLAUpdate' => '"%s" (Kimlik=%s) SLA g�ncellendi.',
        'History::NewTicket' => 'Yeni [%s] Bileti olu�turuldu (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => '[%s] i�in takip. %s',
        'History::SendAutoReject' => '"%s" i�in Otomatik Red g�nderildi.',
        'History::SendAutoReply' => '"%s" i�in Otomatik Yan�t g�nderildi.',
        'History::SendAutoFollowUp' => '"%s" i�in Otomatik Takip g�nderildi.',
        'History::Forward' => '"%s" iletildi.',
        'History::Bounce' => '"%s" �telendi.',
        'History::SendAnswer' => '"%s" i�in e-posta g�nderildi.',
        'History::SendAgentNotification' => '"%s"- "%s" i�in arac�ya bildirim g�nderildi.',
        'History::SendCustomerNotification' => '"%s" i�in m��teriye bildirim g�nderildi .',
        'History::EmailAgent' => 'Arac�ya e-posta g�nderildi.',
        'History::EmailCustomer' => 'M��teriye e-posta g�nderildi. %s',
        'History::PhoneCallAgent' => 'Arac� telefonla arand�.',
        'History::PhoneCallCustomer' => 'M��teri telefonla arand�.',
        'History::AddNote' => 'Not eklendi (%s)',
        'History::Lock' => 'Bilet kilitlendi.',
        'History::Unlock' => 'Bilet kilidi ��z�ld�.',
        'History::TimeAccounting' => '%s zaman birimi hesapland�. Toplam %s zaman birimi.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'G�ncellendi: %s',
        'History::PriorityUpdate' => '�ncelik de�i�tirildi. Eski: "%s" (%s), Yeni: "%s" (%s).',
        'History::OwnerUpdate' => 'Yeni sahip "%s" (Kimlik=%s).',
        'History::LoopProtection' => 'D�ng� Korumas�! "%s" i�in otomatik yan�t g�nderilmedi.',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'G�ncellendi: %s',
        'History::StateUpdate' => 'Eski: "%s" Yeni: "%s"',
        'History::TicketFreeTextUpdate' => 'G�ncellendi: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Web �zerinden M��teri �ste�i.',
        'History::TicketLinkAdd' => '"%s" biletine k�pr� eklendi.',
        'History::TicketLinkDelete' => '"%s" biletine k�pr� silinde.',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

        # Template: AAAWeekDay
        'Sun' => 'Paz',
        'Mon' => 'Pzt',
        'Tue' => 'Sal',
        'Wed' => '�ar',
        'Thu' => 'Per',
        'Fri' => 'Cum',
        'Sat' => 'Cts',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Eklenti y�netimi',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Otomatik Yan�t Y�netimi',
        'Response' => 'Yan�t',
        'Auto Response From' => 'Otomatik Yan�tlayan',
        'Note' => 'Not',
        'Useable options' => 'Kullan�labilir se�enekler',
        'To get the first 20 character of the subject.' => 'Konunun ilk 20 karakterini al',
        'To get the first 5 lines of the email.' => 'Elektronik postan�n ilk 5 sat�r�n� al',
        'To get the realname of the sender (if given).' => 'G�nderenin ger�ek ad�n� al (verilmi�se)',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'Yaz� niteliklerini al (�rne�in (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> ve <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Mevcut m��teri kullan�c� verisi se�enekleri (�rne�in <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Bilet sahibi se�enekleri (�rne�in <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Bilet sorumlusu se�enekleri (�rne�in <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'Bu eyleme isteyen etkin kullan�c� se�enekleri (�rne�in <OTRS_CURRENT_UserFirstname).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'Bilet verisi se�enekleri (�rne�in <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Yap�land�rma se�enekleri (�rne�in <OTRS_CONFIG_HttpType).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'M��teri �irket Y�netimi',
        'Search for' => 'Ara',
        'Add Customer Company' => 'M��teri Sirket Ekle',
        'Add a new Customer Company.' => 'Yeni bir M��teri �irket ekle.',
        'List' => 'Liste',
        'This values are required.' => 'Bu de�erler gereklidir.',
        'This values are read only.' => 'Bu de�erler salt-okunurdur.',

        # Template: AdminCustomerUserForm
        'Customer User Management' => 'M��teri Kullan�c� Y�netimi',
        'Add Customer User' => 'M��teri Kullan�c� Ekle',
        'Source' => 'Kaynak',
        'Create' => 'Olu�tur',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'M��teri kullan�c� bir m��teri ge�mi�i ve m��teri panelinden oturum a�mak i�in gereklidir.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'M��teri Kullan�c�lar <-> Grup Y�netimi',
        'Change %s settings' => '%s ayarlar�n� de�i�tir',
        'Select the user:group permissions.' => 'Kullan�c�:grup izinlerini de�i�tir.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'E�er hi�bir�ey se�ilmemi�se, bu grupta hi� izin yoktu (biletler kullan�c�ya a��k olmayacakt�r).',
        'Permission' => '�zin',
        'ro' => 'so',
        'Read only access to the ticket in this group/queue.' => 'Bu grup/kuyruktaki bilete salt okunur eri�im.',
        'rw' => 'oy',
        'Full read and write access to the tickets in this group/queue.' => 'Bu grup/kuyruktaki biletlere tam okuma ve yazma eri�imi.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Kullan�c� M��teriler <-> Servis Y�netimi',
        'CustomerUser' => 'M��teriKullan�c�',
        'Service' => 'Servis',
        'Edit default services.' => 'Varsay�lan servisleri belirle.',
        'Search Result' => 'Arama Sonu�',
        'Allocate services to CustomerUser' => 'Servisleri M��teriKullan�c�ya ata',
        'Active' => 'Etkin',
        'Allocate CustomerUser to service' => 'M��teriKullan�c�y� servise ata',

        # Template: AdminEmail
        'Message sent to' => 'Mesaj g�nderildi',
        'Recipents' => 'Al�c�lar',
        'Body' => 'G�vde',
        'Send' => 'G�nder',

        # Template: AdminGenericAgent
        'GenericAgent' => 'GenelArac�',
        'Job-List' => '�� Listesi',
        'Last run' => 'Son �al��t�rma',
        'Run Now!' => '�imdi �al��t�r!',
        'x' => 'x',
        'Save Job as?' => '��i ne olarak kaydedeyim?',
        'Is Job Valid?' => '�� ge�erli mi?',
        'Is Job Valid' => '��in ge�erli olup olmad���',
        'Schedule' => 'Takvim',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Mesajda tam metin aramas� (�rne�in "Ay*eg�l" veya "�ak*r")',
        '(e. g. 10*5155 or 105658*)' => '(�rne�in 105155 veya 105658*)',
        '(e. g. 234321)' => '(�rne�in 234321)',
        'Customer User Login' => 'M��teri Kullan�c� Oturum A�ma',
        '(e. g. U5150)' => '(�rne�in U5150)',
        'SLA' => 'SLA',
        'Agent' => 'Arac�',
        'Ticket Lock' => 'Bilet Kilidi',
        'TicketFreeFields' => 'BiletSerbestAlanlar�',
        'Create Times' => 'Olu�turma Zamanlar�',
        'No create time settings.' => 'Olu�turma zaman� ayar� yok.',
        'Ticket created' => 'Bilet olu�turuldu',
        'Ticket created between' => 'Bilet ikisi aras�nda olu�turuldu:',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending Times' => 'Bekleme Zamanlar�',
        'No pending time settings.' => 'Bekleme zaman� ayar� yok.',
        'Ticket pending time reached' => 'Bilet bekleme zaman�na ula��ld�',
        'Ticket pending time reached between' => 'Bilet bekleme zaman�na ikisi aras�nda ula��ld�:',
        'New Service' => '',
        'New SLA' => '',
        'New Priority' => 'Yeni �ncelik',
        'New Queue' => 'Yeni Kuyruk',
        'New State' => 'Yeni Durum',
        'New Agent' => 'Yeni Arac�',
        'New Owner' => 'Yeni Sahip',
        'New Customer' => 'Yeni M��teri',
        'New Ticket Lock' => 'Yeni Bilet Kilidi',
        'New Type' => '',
        'New Title' => '',
        'New Type' => '',
        'New TicketFreeFields' => 'Yeni BiletSerbestAlanlar�',
        'Add Note' => 'Not Ekle',
        'CMD' => 'Komut',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Bu komut �al��t�r�lacak. Par[0] bilet bilet numaras� olacak. Par[1] bilet kimli�i.',
        'Delete tickets' => 'Biletleri sil',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Uyar�! Bu biletler veritaban�ndan silinecek! Geri d�n��� yoktur!',
        'Send Notification' => 'Bildirim G�nder',
        'Param 1' => 'Param 1',
        'Param 2' => 'Param 2',
        'Param 3' => 'Param 3',
        'Param 4' => 'Param 4',
        'Param 5' => 'Param 5',
        'Param 6' => 'Param 6',
        'Send no notifications' => 'Bildirim g�nderme',
        'Yes means, send no agent and customer notifications on changes.' => 'Evet, de�i�iklik durumunda arac�lar ve m��terilere bildirim g�nderme demektir.',
        'No means, send agent and customer notifications on changes.' => 'Hay�r, de�i�ikliklerde arac�lara ve m��terilere bildirim g�nder demektir.',
        'Save' => 'Kaydet',
        '%s Tickets affected! Do you really want to use this job?' => '%s Bilet etkilendi! Ger�ekten bu i�i kullanmak istiyor musunuz?',
        '"}' => '',

        # Template: AdminGroupForm
        'Group Management' => 'Grup Y�netimi',
        'Add Group' => 'Grup Ekle',
        'Add a new Group.' => 'Yeni bir Grup ekle.',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Y�netim grubu y�netim alan�na ve istatistikler grubu istatistik alan�na girmek i�indir.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Farkl� arac� gruplar�n�n (�rne�in sat�nalma b�l�m�, destek b�l�m�, sat�� b�l�m�, ...) eri�im izinlerini d�zenlemek i�in yeni gruplar� olu�tur.',
        'It\'s useful for ASP solutions.' => 'ASP ��z�mleri i�in kullan��l�d�r.',

        # Template: AdminLog
        'System Log' => 'Sistem G�nl���',
        'Time' => 'Zaman',

        # Template: AdminMailAccount
        'Mail Account Management' => '',
        'Host' => 'Sunucu',
        'Trusted' => 'G�venilir',
        'Dispatching' => 'G�nderiliyor',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Tek hesapl� t�m gelen elektronik postalar se�ili kuyru�a g�nderilecek!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'E�er hesap g�venilir ise, var�� zaman�nda (�ncelik, ... i�in) varolan X-OTRS ba�l��� kullan�lacak! PostMaster s�zgeci her hal�k�rda kullan�l�r.',

        # Template: AdminNavigationBar
        'Users' => 'Kullan�c�lar',
        'Groups' => 'Gruplar',
        'Misc' => '�e�itli',

        # Template: AdminNotificationForm
        'Notification Management' => 'Bildirim Y�netimi',
        'Notification' => 'Bildirimler',
        'Notifications are sent to an agent or a customer.' => 'Bildirimler bir arac�ya veya m��teriye g�nderilirler.',

        # Template: AdminPackageManager
        'Package Manager' => 'Paket Y�neticisi',
        'Uninstall' => 'Kald�r',
        'Version' => 'S�r�m',
        'Do you really want to uninstall this package?' => 'Ger�ekten bu paketi kald�rmak istiyor musunuz?',
        'Reinstall' => 'Yeniden y�kle',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Ger�ekten bu paketi yeniden y�klemek istiyor musunuz (elle yapt���n�z t�m de�i�iklikler gider)?',
        'Continue' => 'Devam et',
        'Install' => 'Y�kle',
        'Package' => 'Paket',
        'Online Repository' => '�evrimi�i Depo',
        'Vendor' => 'Sa�lay�c�',
        'Upgrade' => 'Y�kselt',
        'Local Repository' => 'Yerel Depo',
        'Status' => 'Durum',
        'Overview' => 'Genel Bak��',
        'Download' => '�ndir',
        'Rebuild' => 'Yeniden �n�a Et',
        'ChangeLog' => 'De�i�iklik G�nl���',
        'Date' => 'Tarih',
        'Filelist' => 'Dosya listesi',
        'Download file from package!' => 'Paketten dosya indir!',
        'Required' => 'Gerektirir',
        'PrimaryKey' => 'Ana Anahtar',
        'AutoIncrement' => 'Otomatik Artt�r',
        'SQL' => 'SQL',
        'Diff' => 'Fark',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Performans G�nl���',
        'This feature is enabled!' => 'Bu �zellik a��k!',
        'Just use this feature if you want to log each request.' => 'Bu �zelli�i sadece her iste�i g�nl��e kaydetmek istiyorsan�z kullan�n.',
        'Of couse this feature will take some system performance it self!' => 'Elbette bu �zellik sistem performans�ndan biraz al�r.',
        'Disable it here!' => 'Burada kapat!',
        'This feature is disabled!' => 'Bu �zellik kapal�!',
        'Enable it here!' => 'Burada a�!',
        'Logfile too large!' => 'G�nl�k dosyas� �ok b�y�k!',
        'Logfile too large, you need to reset it!' => 'G�nl�k dosyas� �ok b�y�k, bo�altmal�s�n�z!',
        'Range' => 'Aral�k',
        'Interface' => 'Aray�z',
        'Requests' => '�stekler',
        'Min Response' => 'En Az Yan�t',
        'Max Response' => 'En �ok Yan�t',
        'Average Response' => 'Ortalama Yan�t',
        'Period' => '',
        'Min' => '',
        'Max' => '',
        'Average' => '',

        # Template: AdminPGPForm
        'PGP Management' => 'PGP Y�netimi',
        'Result' => 'Sonu�',
        'Identifier' => 'Tan�mlay�c�',
        'Bit' => 'Bit',
        'Key' => 'Anahtar',
        'Fingerprint' => 'Parmak izi',
        'Expires' => 'Ge�erlili�ini yitirme zaman�',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'Bu �ekilde Sistem Yap�land�rmas�nda yap�land�r�lm�� olan anahtar halkas�n� (keyring) direkt olarak d�zenleyebilirsiniz.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'PostMaster S�zge� Y�netimi',
        'Filtername' => 'S�zge� ad�',
        'Match' => 'E�le�en',
        'Header' => 'Ba�l�k',
        'Value' => 'De�er',
        'Set' => 'K�me',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Gelen elektronik postalar� g�nderme veya s�zme i�lemini elektronik postadaki X-Ba�l�klar�na g�re yap! D�zenli ifadeler (RegExp) de kullan�labilir.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Sadece elektronik posta adresine g�re e�le�tirmek istiyorsan�z Kimden, Kime veya Karbon Kopya alanlar�nda EMAILADDRESS:bilgi@ornek.com kullan�n.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'D�zenli ifadeler (RegExp) kullan�rsan�z, \'K�me\' k�sm�nda e�le�en de�er i�in () yerine [***]da kullanabilirsiniz. ',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'Kuyruk <-> Otomatik Yan�t Y�netimi',

        # Template: AdminQueueForm
        'Queue Management' => 'Kuyruk Y�netimi',
        'Sub-Queue of' => '�unun Alt Kuyru�u:',
        'Unlock timeout' => 'Kilidi kald�rmak i�in zaman a��m�',
        '0 = no unlock' => '0 = kilit kald�rma yok',
        'Only business hours are counted.' => '',
        'Escalation - First Response Time' => 'Y�kseltme - ilk Yan�t Zaman�',
        '0 = no escalation' => '0 = y�kseltme yok',
        'Only business hours are counted.' => '',
        'Notify by' => '',
        'Escalation - Update Time' => 'Y�kseltme - G�ncelleme Zaman�',
        'Notify by' => '',
        'Escalation - Solution Time' => 'Y�kseltme - ��z�mleme Zaman�',
        'Follow up Option' => 'Takip eden Se�ene�i',
        'Ticket lock after a follow up' => 'Takip eden bir mesajdan sonra bileti kilitle',
        'Systemaddress' => 'Sistem adresi',
        'Customer Move Notify' => 'M��teri Ta��ma Bildirimi',
        'Customer State Notify' => 'M��teri Durum Bildirimi',
        'Customer Owner Notify' => 'M��teri Sahip Bildirimi',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'E�er bir arac� bir bileti kilitler ve bu s�rede bir yan�t g�ndermezse, biletin kilidi otomatik olarak kald�r�l�r. Dolay�s�yla bilet di�er t�m arac�lara g�r�n�r hale gelir.',
        'Escalation time' => 'Y�kseltme zaman�',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'E�er bir bilet bu s�re zarf�nda yan�tlanmazsa, sadece bu bilet g�sterilir.',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'E�er bir bilet kapat�l�rsa ve ard�ndan m��teri bir mesaj g�nderirse, bilet eski sahibi i�in kilitlenir.',
        'Will be the sender address of this queue for email answers.' => 'Elektronik posta yan�tlar� i�in bu kuyru�un g�nderen adresi olur.',
        'The salutation for email answers.' => 'Elektronik posta yan�tlar� i�in selamlama.',
        'The signature for email answers.' => 'Elektronik posta yan�tlar� i�in imza.',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'E�er bilet ta��n�rsa OTRS m��teriye bir bildirim e-postas� g�nderir.',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'E�er bilet durumu de�i�irse OTRS m��teriye bir bildirim e-postas� g�nderir.',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'E�er bilet sahibi de�i�irse OTRS m��teriye bir bildirim e-postas� g�nderir.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'Yan�tlar <-> Kuyruk Y�netimi',

        # Template: AdminQueueResponsesForm
        'Answer' => 'Cevapla',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'Yan�tlar <-> Ekler Y�netimi',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Yan�t Y�netimi',
        'A response is default text to write faster answer (with default text) to customers.' => 'Bir yan�t, m��terilere daha h�zl� cevap yazabilmek i�in �nceden haz�rlanan metindir.',
        'Don\'t forget to add a new response a queue!' => 'Yeni bir yan�t� bir kuyru�a eklemeyi unutmay�n!',
        'The current ticket state is' => 'Bilet durumu',
        'Your email address is new' => 'E-posta adresiniz yeni',

        # Template: AdminRoleForm
        'Role Management' => 'Rol Y�netimi',
        'Add Role' => 'Rol Ekle',
        'Add a new Role.' => 'Yeni bir Rol ekle.',
        'Create a role and put groups in it. Then add the role to the users.' => 'Bir rol olu�turun ve i�ine gruplardan koyun. Sonra rolu kullan�c�lara atay�n.',
        'It\'s useful for a lot of users and groups.' => '�ok say�da kullan�c� ve grup i�in kullan��l�d�r.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'Roller <-> Gruplar Y�netimi',
        'move_into' => 'ta��',
        'Permissions to move tickets into this group/queue.' => 'Biletleri bu gruba/kuyru�a ta��ma izni.',
        'create' => 'yarat',
        'Permissions to create tickets in this group/queue.' => 'Bu grupta/kuyrukta bilet olu�turma izni.',
        'owner' => 'sahip',
        'Permissions to change the ticket owner in this group/queue.' => 'Bu grupta/kuyrukta bilet sahibini de�i�tirme izni.',
        'priority' => '�ncelik',
        'Permissions to change the ticket priority in this group/queue.' => 'Bu grupta/kuyrukta bilet �nceli�ini de�i�tirme izni.',

        # Template: AdminRoleGroupForm
        'Role' => 'Rol',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'Roller <-> Kullan�c�lar Y�netimi',
        'Select the role:user relations.' => 'Rol:kullan�c� ili�kilerini se�in.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Selamlama Y�netimi',
        'Add Salutation' => 'Selamlama Ekle',
        'Add a new Salutation.' => 'Yeni bir Selamlama ekle.',

        # Template: AdminSelectBoxForm
        'SQL Box' => '',
        'Limit' => 'S�n�r',
        'Go' => 'Devam',
        'Select Box Result' => 'Se�in Kutusu Sonucu',

        # Template: AdminService
        'Service Management' => 'Servis Y�netimi',
        'Add Service' => 'Servis Ekle',
        'Add a new Service.' => 'Yeni bir Servis ekle.',
        'Sub-Service of' => '�unun Alt Servisi:',

        # Template: AdminSession
        'Session Management' => 'Oturum Y�netimi',
        'Sessions' => 'Oturumlar',
        'Uniq' => 'Tekil',
        'Kill all sessions' => 'T�m oturumlar� �ld�r',
        'Session' => 'Oturum',
        'Content' => 'I�erik',
        'kill session' => 'oturumu �ld�r',

        # Template: AdminSignatureForm
        'Signature Management' => '�mza Y�netimi',
        'Add Signature' => '�mza Ekle',
        'Add a new Signature.' => 'Yeni bir �mza ekle.',

        # Template: AdminSLA
        'SLA Management' => 'SLA Y�netimi',
        'Add SLA' => 'SLA ekle',
        'Add a new SLA.' => 'Yeni bir SLA ekle.',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'S/MIME Y�netimi',
        'Add Certificate' => 'Sertifika Ekle',
        'Add Private Key' => 'Ki�isel Anahtar Ekle',
        'Secret' => 'Gizli',
        'Hash' => '�zel katar (hash)',
        'In this way you can directly edit the certification and private keys in file system.' => 'Buradan dosya sistemindeki sertifikalar� ve ki�isel anahtarlar� u�ra�madan d�zenleyebilirsiniz.',

        # Template: AdminStateForm
        'State Management' => 'Durum Y�netimi',
        'Add State' => 'Durum Ekle',
        'Add a new State.' => 'Yeni bir Durum ekle.',
        'State Type' => 'Durum Tipi',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Kernel/Config.pm i�indeki �ntan�ml� durumlar� da de�i�tirdi�inizi unutmay�n',
        'See also' => 'Ayr�ca bak�n�z',

        # Template: AdminSysConfig
        'SysConfig' => 'Sistem Yap�land�rmas�',
        'Group selection' => 'Grup se�imi',
        'Show' => 'G�ster',
        'Download Settings' => '�ndirme Ayarlar�',
        'Download all system config changes.' => 'T�m sistem yap�land�rma de�i�ikliklerini indir.',
        'Load Settings' => 'Ayarlar� Y�kle',
        'Subgroup' => 'Alt grup',
        'Elements' => '��eler',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Yap�land�rma Se�enekleri',
        'Default' => '�ntan�ml�',
        'New' => 'Yeni',
        'New Group' => 'Yeni Grup',
        'Group Ro' => 'Grup Ro',
        'New Group Ro' => 'Yeni Grup Ro',
        'NavBarName' => 'Dola�ma �ubu�u Ad�',
        'NavBar' => 'Dola�ma �ubu�u',
        'Image' => 'Resim',
        'Prio' => '�ncelik',
        'Block' => 'Blok',
        'AccessKey' => 'Eri�im Tu�u',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Sistem E-Posta Adresleri Y�netimi',
        'Add System Address' => 'Sistem Adresi Ekle',
        'Add a new System Address.' => 'Yeni bir Sistem Adresi ekle.',
        'Realname' => 'Ger�ek ad',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Bu e-posta adresinden gelen t�m e-postalar se�ili kuyru�a y�nlendirilir.',

        # Template: AdminTypeForm
        'Type Management' => 'Tip Y�netimi',
        'Add Type' => 'Tip Ekle',
        'Add a new Type.' => 'Yeni bir Tip ekle.',

        # Template: AdminUserForm
        'User Management' => 'Kullan�c� Y�netimi',
        'Add User' => 'Kullan�c� Ekle',
        'Add a new Agent.' => 'Yeni bir Arac� ekle.',
        'Login as' => 'Oturum a�ma kimli�i',
        'Firstname' => 'Ad�',
        'Lastname' => 'Soyad�',
        'User will be needed to handle tickets.' => 'Biletlerle ilgilenmek i�in kullan�c� gerekir.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'Yeni kullan�c�lar� gruplara ve/veya rollere eklemeyi unutmay�n!',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'Kullan�c�lar <-> Gruplar Y�netimi',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Adres Defteri',
        'Return to the compose screen' => 'Olu�turma ekran�na geri d�n',
        'Discard all changes and return to the compose screen' => 'T�m de�i�iklikleri geri al ve olu�turma ekran�na geri d�n',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerTableView

        # Template: AgentInfo
        'Info' => 'Bilgi',

        # Template: AgentLinkObject
        'Link Object' => 'Ba� Nesnesi',
        'Select' => 'Se�',
        'Results' => 'Sonu�lar',
        'Total hits' => 'Toplam isabet',
        'Page' => 'Sayfa',
        'Detail' => 'Detay',

        # Template: AgentLookup
        'Lookup' => 'Ara',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'S�zdizim Denetleyicisi',
        'spelling error(s)' => 's�zdizim hatas�',
        'or' => 'veya',
        'Apply these changes' => 'Bu de�i�iklikleri uygula',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Ger�ekten bu nesneyi silmek istiyor musunuz?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => '�statisti�i ki�iselle�tirmek i�in k�s�tlamalar� se�in',
        'Fixed' => 'Sabit',
        'Please select only one element or turn off the button \'Fixed\'.' => 'L�tfen sadece bir ��e se�in veya \'Sabit\' d��mesini kapat�n.',
        'Absolut Period' => 'Belirli S�re',
        'Between' => 'Aras�nda',
        'Relative Period' => 'De�i�ken S�re',
        'The last' => 'Son',
        'Finish' => 'Bitir',
        'Here you can make restrictions to your stat.' => 'Burada istatistiklerinize k�s�tlamalar yapabilirsiniz.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => '"Sabit" kutusunun i�aretini kald�r�rsan�z, istatisti�i olu�turan arac� kar��l�k gelen ��enin niteliklerini de�i�tirebilir.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Sadece ortak belirtimleri gir',
        'Permissions' => '�zinler',
        'Format' => 'Bi�im',
        'Graphsize' => 'Grafik boyutu',
        'Sum rows' => 'Toplam sat�rlar�',
        'Sum columns' => 'Toplam s�tunlar�',
        'Cache' => 'Tampon',
        'Required Field' => 'Gerekli alan',
        'Selection needed' => 'Se�im gerekli',
        'Explanation' => 'A��klama',
        'In this form you can select the basic specifications.' => 'Bu formda temel belirtimleri se�ebilirsiniz.',
        'Attribute' => 'Nitelik',
        'Title of the stat.' => '�statisti�in ba�l���.',
        'Here you can insert a description of the stat.' => 'Buraya istatisti�e bir a��klama girebilirsiniz.',
        'Dynamic-Object' => 'Dinamik Nesne',
        'Here you can select the dynamic object you want to use.' => 'Burada kullanmak istedi�iniz dinamik nesneyi se�ebilirsiniz.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(Not: Ka� dinamik nesne kullanabilece�iniz kurulumunuza ba�l�d�r)',
        'Static-File' => 'Sabit Dosya',
        'For very complex stats it is possible to include a hardcoded file.' => '�ok karma��k istatistikler s�z konusu oldu�unda �nceden haz�rlanm�� bir dosyay� da dahil etmek m�mk�nd�r.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'E�er �nceden haz�rlanm�� bir dosya bulunursa bu nitelik g�sterilir ve birini se�ebilirsiniz.',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => '�zin ayarlar�. Ayarlanan istatisti�in farkl� arac�lara g�r�n�r olmas� i�in bir veya daha fazla grup se�ebilirsiniz.',
        'Multiple selection of the output format.' => '��kt� bi�imi i�in birden fazla se�im.',
        'If you use a graph as output format you have to select at least one graph size.' => 'E�er ��kt� bi�imi olana bir grafik se�erseniz en az�ndan bir grafik boyutu se�melisiniz.',
        'If you need the sum of every row select yes' => 'Her sat�r�n toplanmas�n� istiyorsan�z \'Evet\'i se�in',
        'If you need the sum of every column select yes.' => 'Her s�tunun toplanmas�n� istiyorsan�z \'Evet\'i se�in.',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => '�statistiklerin �o�unlu�u �nbelleklenebilir. Bu, bu istatisti�in sunulmas�n� h�zland�r�r.',
        '(Note: Useful for big databases and low performance server)' => '(Not: B�y�k veritaban� ve d���k performansl� sunucularda kullan��l�d�r)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Ge�ersiz bir istatistikle, istatistik olu�turmak m�mk�n olmaz.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'E�er istatistik sonu�lar�n�n kimseye a��k olmamas�n� veya istatisti�in yap�land�r�lmam�� olmamas�n� istiyorsan�z bu se�enek kullan��l�d�r.',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'De�er serileri i�in ��eleri se�in',
        'Scale' => '�l�ek',
        'minimal' => 'm�mk�n olan en d���k',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Unutmay�n de�er serilerinin �l�e�i X-ekseninin �l�e�inden daha y�ksek olmal�d�r (�rne�in X-ekseni => Ay, De�er Serileri => Y�l).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Burada de�er serilerini se�ebilirsiniz. Bir veya iki ��e se�ebilirsiniz. Sonra ��elerin niteliklerini se�ebilirsiniz. Her nitelik tek de�er serileri olarak g�sterilir. E�er herhangi bir nitelik se�meden istatistik olu�turursan�z ��enin t�m nitelikleri kullan�l�r.  Son yap�land�rmadan sonra yeni bir nitelik eklendi�inde de.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'X-ekseni olarak kullan�lacak ��eyi se�in.',
        'maximal period' => 'en y�ksek s�re',
        'minimal scale' => 'en d���k �l�ek',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Burada X eksenini belirleyebilirsiniz. Radyo d��mesiyle bir ��e se�ebilirsiniz. Sonra ��enin iki veya daha fazla niteli�ini se�melisiniz. Herhangi bir se�im yapmadan bir istatistik olu�turursan�z ��enin t�m nitelikleri kullan�l�r. Son yap�land�rmadan sonra bir nitelik eklendi�inde de.',

        # Template: AgentStatsImport
        'Import' => '��eri aktar',
        'File is not a Stats config' => 'Dosya bir �statistik yap�land�rmas� de�il',
        'No File selected' => 'Dosya se�ilmedi',

        # Template: AgentStatsOverview
        'Object' => 'Nesne',

        # Template: AgentStatsPrint
        'Print' => 'Yazd�r',
        'No Element selected.' => '��e se�ilmedi.',

        # Template: AgentStatsView
        'Export Config' => 'Yap�land�rmay� D��ar� Aktar',
        'Information about the Stat' => '�statistik hakk�nda bilgi',
        'Exchange Axis' => 'Eksenlerin Yerini De�i�tir',
        'Configurable params of static stat' => 'De�i�mez istatisti�in ayarlanabilir parametreleri',
        'No element selected.' => '��e se�ilmedi.',
        'maximal period from' => 'en y�ksek s�re �undan:',
        'to' => '�una:',
        'Start' => 'Ba�la',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'Giri� ve se�me alanlar�yla istatisti�i istedi�iniz gibi ayarlayabilirsiniz. �statisti�in hangi ��elerini de�i�trebilece�iniz istatisti�i ayarlayan istatistik y�neticisine ba�l�d�r',

        # Template: AgentTicketBounce
        'Bounce ticket' => 'Bileti �tele',
        'Ticket locked!' => 'Bilet kilitlendi!',
        'Ticket unlock!' => 'Biletin kilidi a��ld�!',
        'Bounce to' => '�una �tele:',
        'Next ticket state' => 'Biletin sonraki durumu',
        'Inform sender' => 'G�ndereni bilgilendir',
        'Send mail!' => 'Postay� g�nder!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Bilet Toplu ��lemi',
        'Spell Check' => 'S�zdizim Kontrol�',
        'Note type' => 'Not tipi',
        'Unlock Tickets' => 'Biletlerin kilidini a�',

        # Template: AgentTicketClose
        'Close ticket' => 'Bileti kapat',
        'Previous Owner' => '�nceki sahip',
        'Inform Agent' => 'Arac�y� bilgilendir',
        'Optional' => 'Se�imlik',
        'Inform involved Agents' => '�lgili arac�lar� bilgilendir',
        'Attach' => 'Ekle',
        'Next state' => 'Sonraki durum',
        'Pending date' => 'Bekleme tarihi',
        'Time units' => 'Zaman birimleri',

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Bilete cevap yaz',
        'Pending Date' => 'Bekleme tarihi',
        'for pending* states' => 'Bekleme* durumlar� i�in',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Biletin m��terisini de�i�tir',
        'Set customer user and customer id of a ticket' => 'Bir biletin m��teri kullan�c�s�n� ve m��teri kimli�ini belirle',
        'Customer User' => 'M��teri Kullan�c�',
        'Search Customer' => 'Kullan�c� Ara',
        'Customer Data' => 'M��teri Verisi',
        'Customer history' => 'M��teri tarih�esi',
        'All customer tickets.' => 'T�m m��teri biletleri.',

        # Template: AgentTicketCustomerMessage
        'Follow up' => 'Takip',

        # Template: AgentTicketEmail
        'Compose Email' => 'E-Posta Yaz',
        'new ticket' => 'yeni bilet',
        'Refresh' => 'Tazele',
        'Clear To' => 'Kime alan�n� temizle',

        # Template: AgentTicketEscalationView
        'Ticket Escalation View' => '',
        'Escalation' => '',
        'Today' => '',
        'Tomorrow' => '',
        'Next Week' => '',
        'up' => 'yukar�',
        'down' => 'a�a��',
        'Escalation' => '',
        'Locked' => 'Kilitli',

        # Template: AgentTicketForward
        'Article type' => 'Metin tipi',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Biletin serbest metnini de�i�tir',

        # Template: AgentTicketHistory
        'History of' => '�unun tarih�esi:',

        # Template: AgentTicketLocked

        # Template: AgentTicketMailbox
        'Mailbox' => 'Posta kutusu',
        'Tickets' => 'Biletler',
        'of' => '..n�n',
        'Filter' => 'S�zge�',
        'New messages' => 'Yeni mesajlar',
        'Reminder' => 'Hat�rlat�c�',
        'Sort by' => '�una g�re s�rala:',
        'Order' => 'S�ralama',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Bilet Birle�tir',
        'Merge to' => '�una birle�tir:',

        # Template: AgentTicketMove
        'Move Ticket' => 'Bileti Ta��',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Bilete not ekle',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Biletin sahibini de�i�tir',

        # Template: AgentTicketPending
        'Set Pending' => 'Beklemeyi Ayarla',

        # Template: AgentTicketPhone
        'Phone call' => 'Telefon aras�',
        'Clear From' => 'G�nderen k�sm�n� temizle',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'D�z',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Bilet Bilgisi',
        'Accounted time' => 'Hesaplanan zaman',
        'First Response Time' => '�lk Yan�t Zaman�',
        'Update Time' => 'G�ncelleme Zaman�',
        'Solution Time' => '��z�m Zaman�',
        'Linked-Object' => 'Ba�l� Nesne',
        'Parent-Object' => 'Ebeveyn Nesne',
        'Child-Object' => 'Alt Nesne',
        'by' => 'taraf�ndan',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Biletin �nceli�ini de�i�tir',

        # Template: AgentTicketQueue
        'Tickets shown' => 'G�sterilen biletler',
        'Tickets available' => 'Uygun biletler',
        'All tickets' => 'T�m biletler',
        'Queues' => 'Kuyruklar',
        'Ticket escalation!' => 'Bilet Y�kseltme!',

        # Template: AgentTicketQueueTicketView
        'Service Time' => 'Servis Zaman�',
        'Your own Ticket' => 'Kendi Biletiniz',
        'Compose Follow up' => 'Takip mesaj� yaz',
        'Compose Answer' => 'Cevap yaz',
        'Contact customer' => 'M��teriyle ba�lant� kur',
        'Change queue' => 'Kuyru�u de�i�tir',

        # Template: AgentTicketQueueTicketViewLite

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Biletin sorumlusunu de�i�tir',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Bilet ara',
        'Profile' => 'Profil',
        'Search-Template' => 'Arama �ablonu',
        'TicketFreeText' => 'BiletSerbestMetni',
        'Created in Queue' => 'Olu�turuldu Kuyruk',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Result Form' => 'Sonu� Formu',
        'Save Search-Profile as Template?' => 'Arama Profili �ablon olarak kaydedilsin mi?',
        'Yes, save it with name' => 'Evet, �u adla kaydet',

        # Template: AgentTicketSearchOpenSearchDescription

        # Template: AgentTicketSearchResult
        'Change search options' => 'Arama se�eneklerini de�i�tir',

        # Template: AgentTicketSearchResultPrint
        '"}' => '',

        # Template: AgentTicketSearchResultShort

        # Template: AgentTicketStatusView
        'Ticket Status View' => 'Bilet Durumu G�r�n�m�',
        'Open Tickets' => 'A��k Biletler',

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
        'Traceback' => 'Geriiz',

        # Template: CustomerFooter
        'Powered by' => '',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => 'Oturum a�',
        'Lost your password?' => 'Parolan�z� m� kaybettiniz?',
        'Request new password' => 'Yeni parola iste',
        'Create Account' => 'Hesap olu�tur',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Ho�geldin %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Zaman',
        'No time settings.' => 'Zaman ayar� yok.',

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Hata raporlamak i�in buraya t�klay�n!',

        # Template: Footer
        'Top of Page' => 'Yukar�',

        # Template: FooterSmall

        # Template: Header

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Webden Y�kleme',
        'Welcome to %s' => '%s sistemine ho�geldiniz',
        'Accept license' => 'Lisans� kabul et',
        'Don\'t accept license' => 'Lisans� kabul etme',
        'Admin-User' => 'Y�netici Kullan�c�',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '',
        'Admin-Password' => 'Y�netici Parolas�',
        'Database-User' => 'Veritaban� kullan�c�s�',
        'default \'hot\'' => 'varsay�lan \'host\'',
        'DB connect host' => 'Veritaban�na ba�lanan sunucu',
        'Database' => 'Veritaban�',
        'Default Charset' => '�ntan�ml� karakter k�mesi',
        'utf8' => '',
        'false' => 'false',
        'SystemID' => 'Sistem Kimli�i',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(Sistemin kimli�i. Her bilet numaras� ve her http oturum kimli�i bu numarayla ba�lar)',
        'System FQDN' => 'Sistem tam adresi (FQDN)',
        '(Full qualified domain name of your system)' => '(Sisteminizin eksiksiz sunucu adresi (FQDN))',
        'AdminEmail' => 'Y�netici E-Posta Adresi',
        '(Email of the system admin)' => '(Sistem y�neticisinin e-posta adresi)',
        'Organization' => 'Kurulu�',
        'Log' => 'G�nl�k',
        'LogModule' => 'G�nl�k Bile�eni',
        '(Used log backend)' => '(Kullan�lan g�nl�k arkaucu)',
        'Logfile' => 'G�nl�k dosyas�',
        '(Logfile just needed for File-LogModule!)' => '(G�nl�k dosyas� sadece g�nl�k bile�eni Dosya oldu�unda gereklidir!)',
        'Webfrontend' => 'Web �ny�z�',
        'Use utf-8 it your database supports it!' => 'E�er veritaban�n�z destekliyorsa utf-8 kullan�n!',
        'Default Language' => '�ntan�ml� dil',
        '(Used default language)' => '(Kullan�lan �ntan�ml� dil)',
        'CheckMXRecord' => 'MX Kay�tlar�n� Kontrol Et',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Kullan�lan e-posta adreslerinin MX kay�tlar�n� bir cevap yazarak kontrol eder. E�er OTRS sisteminiz �evirmeli bir a��n arkas�ndaysa kullanmay�n!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'OTRS\'yi kullanabilmek i�in komut sat�r�nda (konsol/kabuk/terminal) root kullan�c�s� olarak �u sat�r� girmelisiniz.',
        'Restart your webserver' => 'Web sunucunuzu yeniden ba�lat�n.',
        'After doing so your OTRS is up and running.' => 'Bunu yapt�ktan sonra OTRS �al���yor olacak.',
        'Start page' => 'Ba�lang�� sayfas�',
        'Your OTRS Team' => 'OTRS Tak�m�n�z',

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => '�zin yok',

        # Template: Notify
        'Important' => '�nemli',

        # Template: PrintFooter
        'URL' => 'Adres (URL)',

        # Template: PrintHeader
        'printed by' => 'yazd�ran',

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'OTRS Test Sayfas�',
        'Counter' => 'Saya�',

        # Template: Warning
        # Misc
        'Create Database' => 'Veritaban�n� Olu�tur',
        'verified' => 'onayland�',
        'File-Name' => 'Dosya ad�',
        'Ticket Number Generator' => 'Bilet Numaras� �reteci',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Bilet tan�mlay�c�s�. \'Bilet#\', \'Arama#\' oder \'Biletim#\' gibi olabilir)',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Bu �ekilde Kernel/Config.pm dosyas�nda yap�land�r�lm�� olan anahtar halkas�n� (keyring) de�i�tirebilirsiniz',
        'Create new Phone Ticket' => 'Yeni Telefon Bileti olu�tur',
        'U' => 'U',
        'A message should have a To: recipient!' => 'Bir mesaj�n al�c�s� olmal�d�r!',
        'Site' => 'Site',
        'Customer history search (e. g. "ID342425").' => 'M��teri tarih�e aramas� (�rn. "ID342425").',
        'your MySQL DB should have a root password! Default is empty!' => 'MySQL veritaban�n�z�n root kullan�c�s�n�n bir parolas� olmal�d�r. �ntan�ml� olarak bo�tur!',
        'Close!' => 'Kapat!',
        'for agent firstname' => 'arac� ad� i�in',
        'Reporter' => 'Bildiren',
        'The message being composed has been closed.  Exiting.' => 'Olu�turulan mesaj kapat�ld�. ��k�l�yor.',
        'Process-Path' => '��lem Yolu',
        'to get the realname of the sender (if given)' => 'g�ndericinin ger�ek ad�n� (e�er verilmi�se) almak i�in',
        'FAQ Search Result' => 'SSS Arama Sonucu',
        'Notification (Customer)' => 'Bildirim (m��teri)',
        'CSV' => 'CSV',
        'Select Source (for add)' => 'Kayna�� Se�in (eklemek i�in)',
        'Node-Name' => 'D���m Ad�',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Bilet verisinin se�enekleri (�rn. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Home' => 'Ana sayfa',
        'Workflow Groups' => '�al��ma ak��� Gruplar�',
        'Current Impact Rating' => '�u Andaki Etki Oran�',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Yap�land�rma se�enekleri (�rn. <OTRS_CONFIG_HttpType>)',
        'FAQ System History' => 'SSS Sistemi Tarih�esi',
        'customer realname' => 'm��terinin ger�ek ad�',
        'Pending messages' => 'Bekleyen mesajlar',
        'Modules' => 'Bile�enler',
        'for agent login' => 'arac� oturumu i�in',
        'Keyword' => 'Anahtar kelime',
        'Reference' => 'Referans',
        'with' => 'ile',
        'Close type' => 'Tipi kapat',
        'DB Admin User' => 'Veritaban� Y�neticisi Kullan�c�',
        'for agent user id' => 'arac� kullan�c� kimli�i i�in',
        'sort upward' => 'yukar� do�ru s�rala',
        'Classification' => 'S�ralama',
        'Change user <-> group settings' => 'Kullan�c� <-> grup se�eneklerini de�i�tir',
        'next step' => 'sonraki ad�m',
        'Customer history search' => 'M��teri tarih�e aramas�',
        'not verified' => 'onaylanmad�',
        'Stat#' => '�statistik numaras�',
        'Create new database' => 'Yeni veritaban� olu�tur',
        'Year' => 'Y�l',
        'A message must be spell checked!' => 'Mesaj�n s�zyaz�m kontrol�nden ge�mesi gereki!',
        'X-axis' => 'X-Ekseni',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => '"<OTRS_TICKET>" bilet numaral� e-postan�z "<OTRS_BOUNCE_TO>" adresine g�nderildi. Daha fazla bilgi i�in bu adresle ba�lant�ya ge�in.',
        'A message should have a body!' => 'Mesaj�n bir g�vdesi olmal�d�r!',
        'All Agents' => 'T�m Arac�lar',
        'Keywords' => 'Anahtar Kelimeler',
        'No * possible!' => '"*" kullan�lamaz!',
        'Load' => 'Y�kle',
        'Change Time' => 'De�i�iklik Zaman�',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Bu eylemi isteyen kulan�c�n�n (�rn. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;) se�enekleri',
        'Message for new Owner' => 'Yeni Sahibine mesaj',
        'to get the first 5 lines of the email' => 'e-postan�n ilk be� sat�r�n� almak i�in',
        'OTRS DB Password' => 'OTRS Veritaban� Parolas�',
        'Last update' => 'Son g�ncelleme',
        'not rated' => 'puan verilmedi',
        'to get the first 20 character of the subject' => 'konunun ilk 20 karakterini almak i�in',
        'Select the customeruser:service relations.' => 'M��terikullan�c�:servis ili�kilerini belirle.',
        'DB Admin Password' => 'Veritaban� Y�neticisi Parolas�',
        'Drop Database' => 'Veritaban�n� Sil',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'Mevcut m��teri kullan�c� verileri (�rn. <OTRS_CUSTOMER_DATA_UserFirstname>) se�enekleri',
        'Pending type' => 'Bekleme tipi',
        'Comment (internal)' => 'Yorum (i�)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Bilet sahibi se�enekleri (�rn. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'This window must be called from compose window' => 'Bu pencere \'yeni mesaj\' penceresinden a��lmal�d�r',
        'User-Number' => 'Kullan�c� Numaras�',
        'You need min. one selected Ticket!' => 'En az bir Bilet se�ili olmal�d�r!',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Bilet verisi se�enekleri (�rn. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(Kullan�lan bilet numaras� bi�imi)',
        'Fulltext' => 'T�mmetin',
        'Month' => 'Ay',
        'Node-Address' => 'D���m Adresi',
        'All Agent variables.' => 'T�m Arac� de�i�kenleri',
        ' (work units)' => ' (i� birimi)',
        'You use the DELETE option! Take care, all deleted Tickets are lost!!!' => 'S�L se�ene�ini kulland�n�z! Silinen Biletlerin kurtar�lamayaca��n� unutmay�n!!!',
        'All Customer variables like defined in config option CustomerUser.' => 'M��teri Kullan�c� yap�land�rma se�ene�inde tan�mland��� �ekliyle t�m M��teri de�i�kenleri.',
        'for agent lastname' => 'arac� soyad� i�in',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Bu eylem i�in istekte bulunan kullan�c�n�n se�enekleri (�rn. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Hat�rlat�c� mesajlar',
        'A message should have a subject!' => 'Bir mesaj�n bir konusu olmal�d�r!',
        'TicketZoom' => 'Bilet Detaylar�',
        'Don\'t forget to add a new user to groups!' => 'Yeni kullan�c�y� gruplara atamay� unutmay�n!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Kime k�sm�nda bir e-posta adresi (�rn. musteri@ornek.com) olmal�d�r!',
        'CreateTicket' => 'Bilet Olu�tur',
        'unknown' => 'bilinmiyor',
        'You need to account time!' => 'Zaman� hesaba katmal�s�n�z!',
        'System Settings' => 'Sistem Ayarlar�',
        'Finished' => 'Tamamland�',
        'Imported' => '��eri aktar�ld�',
        'unread' => 'okunmad�',
        'Split' => 'Ay�r',
        'D' => 'D',
        'System Status' => 'Sistem Durumu',
        'All messages' => 'T�m mesajlar',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Bilet verisi se�enekleri (�rn. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'A article should have a title!' => 'Metnin bir ba�l��� olmal�d�r!',
        'Customer Users <-> Services' => 'M��teri Kullan�c�lar <-> Servisler',
        'This account exists' => 'Bu hesap zaten var',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Yap�land�rma se�enekleri (�rn. &lt;OTRS_CONFIG_HttpType&gt;)',
        'Event' => 'Olay',
        'Imported by' => '��eri aktaran',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Bilet sahibi se�enekleri (�rn. <OTRS_OWNER_UserFirstname>)',
        'read' => 'okunmu�',
        'Product' => '�r�n',
        'Name is required!' => 'Ad gerekli!',
        'kill all sessions' => 't�m oturumlar� sonland�r',
        'to get the from line of the email' => 'e-postan�n \'kime\' alan�n� almak i�in',
        'Solution' => '��z�m',
        'QueueView' => 'Kuyruk G�r�n�m�',
        'My Queue' => 'Kuyru�un',
        'Select Box' => 'Se�im Kutusu',
        'Instance' => 'Kopya',
        'Day' => 'G�n',
        'Service-Name' => 'Servis Ad�',
        'Welcome to OTRS' => 'OTRS\'ye ho�geldiniz',
        'tmp_lock' => 'ge�ici kilit',
        'modified' => 'de�i�tirilmi�',
        'Escalation in' => 'Y�kselme',
        'Delete old database' => 'Eski veritaban�n� sil',
        'sort downward' => 'a�a��ya do�ru s�rala',
        'You need to use a ticket number!' => 'Bilet numaras� kullanmal�s�n�z!',
        'Watcher' => '�zleyici',
        'Have a lot of fun!' => '�yi e�lenceler!',
        'send' => 'g�nder',
        'Note Text' => 'Not Metni',
        'POP3 Account Management' => 'POP3 Hesap Y�netimi',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Mu�teri kullan�c� verisi se�enekleri (�rn. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;).',
        'System State Management' => 'Sistem Durumu Y�netimi',
        'PhoneView' => 'Telefon G�r�n���',
        'User-Name' => 'Kullan�c� Ad�',
        'File-Path' => 'Dosya Yolu',
        'Modified' => 'De�i�tirildi',
        'Ticket selected for bulk action!' => 'Bilet toplu i�lem i�in se�ildi',

        'Link Object: %s' => '',
        'Unlink Object: %s' => '',
        'Linked as' => '',
        'Can not create link with %s!' => '',
        'Can not delete link with %s!' => '',
        'Object already linked as %s.' => '',
        'Priority Management' => '',
        'Add a new Priority.' => '',
        'Add Priority' => '',
        'Ticket Type is required!' => '',
        'Module documentation' => '',
        'Added!' => '',
        'Updated!' => '',
    };
    # $$STOP$$
    return;
}

1;
