# --
# Kernel/Language/it.pm - provides it language translation
# Copyright (C) 2003 Remo Catelotti <Remo.Catelotti at bull.it>
#               2003 Gabriele Santilli <gsantilli at omnibus.net>
# --
# $Id: it.pm,v 1.3 2003-05-17 12:03:43 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::it;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.3 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Wed May 14 01:01:35 2003 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D/%M/%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %Y %T';
    $Self->{DateInputFormat} = '%D/%M/%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 minuti',
      ' 5 minutes' => ' 5 minuti',
      ' 7 minutes' => ' 7 minuti',
      '10 minutes' => '10 minuti',
      '15 minutes' => '15 minuti',
      'AddLink' => 'Aggiungi link',
      'AdminArea' => 'Area Amministrazione',
      'agent' => 'operatore',
      'all' => 'tutti',
      'All' => 'Tutti',
      'Attention' => 'Attenzione',
      'Bug Report' => 'Segnala anomalie',
      'Cancel' => 'Annulla',
      'change' => 'modifica',
      'Change' => 'Modifica',
      'change!' => 'Modifica!',
      'click here' => 'clicca qui',
      'Comment' => 'Commento',
      'Customer' => 'Cliente',
      'customer' => 'cliente',
      'Customer Info' => 'Informazioni Cliente',
      'day' => 'giorno',
      'days' => 'giorni',
      'description' => 'descrizione',
      'Description' => 'Descrizione',
      'Dispatching by email To: field.' => 'Smistamento in base al campo To:.',
      'Dispatching by selected Queue.' => 'Smistamento in base alla coda selezionata.',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Non lavorare con l\'operatore con ID 1 (System account)! Crea dei nuovi utenti!',
      'Done' => 'Fatto',
      'end' => 'fine pagina',
      'Error' => 'Errore',
      'Example' => 'Esempio',
      'Examples' => 'Esempi',
      'Facility' => 'Funzione',
      'Feature not active!' => 'Funzione non attiva!',
      'go' => 'vai',
      'go!' => 'vai!',
      'Group' => 'Gruppo',
      'Hit' => 'Accesso',
      'Hits' => 'Accessi',
      'hour' => 'ora',
      'hours' => 'ore',
      'Ignore' => 'Ignora',
      'invalid' => 'non valido',
      'Invalid SessionID!' => 'ID di sessione non valido!',
      'Language' => 'Lingua',
      'Languages' => 'Lingue',
      'Line' => 'Linea',
      'Lite' => '',
      'Login failed! Your username or password was entered incorrectly.' => 'Accesso fallito! Nome utente o password non corretti.',
      'Logout successful. Thank you for using OTRS!' => 'Disconnessione avvenuta con successo. Grazie per aver usato OTRS!',
      'Message' => 'Messaggio',
      'minute' => 'minuto',
      'minutes' => 'minuti',
      'Module' => 'Modulo',
      'Modulefile' => 'Archivio del modulo',
      'Name' => 'Nome',
      'New message' => 'Nuovo messaggio',
      'New message!' => 'Nuovo messaggio!',
      'No' => 'No',
      'no' => 'no',
      'No entry found!' => 'Vuoto!',
      'No suggestions' => 'Non ci sono suggerimenti',
      'none' => 'nessuno',
      'none - answered' => 'nessuno - risposto',
      'none!' => 'nessuno!',
      'Off' => 'Spento',
      'off' => 'spento',
      'On' => 'Acceso',
      'on' => 'acceso',
      'Password' => 'Password',
      'Pending till' => 'In attesa per',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Per favore rispondi a questi ticket prima di tornare alla lista dei ticket!',
      'Please contact your admin' => 'Per favore contatta il tuo amministratore',
      'please do not edit!' => 'per favore non modificare!',
      'possible' => 'possibile',
      'QueueView' => 'Lista ticket',
      'reject' => 'respinto',
      'replace with' => 'sostituisci con',
      'Reset' => 'Ripristina',
      'Salutation' => 'Titolo',
      'Session has timed out. Please log in again.' => 'Sessione scaduta. Per favore, effettua di nuovo l\'accesso.',
      'Signature' => 'Firme',
      'Sorry' => 'Spiacente',
      'Stats' => 'Statistiche',
      'Subfunction' => 'Sotto-funzione',
      'submit' => 'Accetta',
      'submit!' => 'accetta!',
      'system' => 'sistema',
      'Take this User' => 'Prendi questo Utente',
      'Text' => 'Testo',
      'The recommended charset for your language is %s!' => 'Il set di caratteri raccomandato per la tua lingua � %s!',
      'Theme' => 'Tema',
      'There is no account with that login name.' => 'Nome utente non valido.',
      'Timeover' => 'Tempo scaduto',
      'top' => 'inizio pagina',
      'update' => 'aggiorna',
      'update!' => 'aggiorna!',
      'User' => 'Utenti',
      'Username' => 'Nome utente',
      'Valid' => 'Valido',
      'Warning' => 'Attenzione',
      'Welcome to OTRS' => 'Benvenuto in OTRS',
      'Word' => 'Parola',
      'wrote' => 'ha scritto',
      'yes' => 's�',
      'Yes' => 'S�',
      'You got new message!' => 'Hai un nuovo messaggio!',
      'You have %s new message(s)!' => 'Hai %s nuovi messaggi!',
      'You have %s reminder ticket(s)!' => 'Hai %s ticket(s) memorizzati',

    # Template: AAAMonth
      'Apr' => 'Apr',
      'Aug' => 'Ago',
      'Dec' => 'Dic',
      'Feb' => 'Feb',
      'Jan' => 'Gen',
      'Jul' => 'Lug',
      'Jun' => 'Giu',
      'Mar' => 'Mar',
      'May' => 'Mag',
      'Nov' => 'Nov',
      'Oct' => 'Ott',
      'Sep' => 'Set',

    # Template: AAAPreferences
      'Closed Tickets' => 'Ticket chiusi',
      'Custom Queue' => 'Coda personale',
      'Follow up notification' => 'Notifica di risposta',
      'Frontend' => 'Interfaccia',
      'Mail Management' => 'Gestione posta',
      'Move notification' => 'Notifica spostamento',
      'New ticket notification' => 'Notifica nuovo ticket',
      'Other Options' => 'Altre opzioni',
      'Preferences updated successfully!' => 'Preferenze modificate con successo!',
      'QueueView refresh time' => 'Tempo di aggiornamento lista ticket',
      'Select your default spelling dictionary.' => 'Seleziona il dizionario',
      'Select your frontend Charset.' => 'Seleziona il set di caratteri da usare.',
      'Select your frontend language.' => 'Scegli la lingua per la tua interfaccia.',
      'Select your frontend QueueView.' => 'Scegli l\'interfaccia per la lista messaggi.',
      'Select your frontend Theme.' => 'Scegli il tema per la tua interfaccia.',
      'Select your QueueView refresh time.' => 'Scegli il tempo di aggiornamento della lista ticket.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Mandami una notifica se un cliente risponde ad un ticket che ho io in gestione.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Mandami una notifica se un ticket viene spostato in una delle code visualizzate nella mia coda personale.',
      'Send me a notification if a ticket is unlocked by the system.' => 'Mandami una notifica se un ticket viene sbloccato dal sistema.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Mandami una notifica se c\'� un nuovo ticket in una delle code visualizzate nella mia coda personale.',
      'Show closed tickets.' => 'Mostra i ticket chiusi.',
      'Spelling Dictionary' => 'Dizionario',
      'Ticket lock timeout notification' => 'Notifica scadenza gestione ticket',

    # Template: AAATicket
      '1 very low' => '1 molto bassa',
      '2 low' => '2 bassa',
      '3 normal' => '3 normale',
      '4 high' => '4 alta',
      '5 very high' => '5 molto alta',
      'Action' => 'Azione',
      'Age' => 'Tempo trascorso',
      'Article' => 'Articolo',
      'Attachment' => 'Allegato',
      'Attachments' => 'Allegati',
      'Bcc' => 'Ccn',
      'Bounce' => 'Rispedisci al mittente',
      'Cc' => 'Cc',
      'Close' => 'Chiudi',
      'closed successful' => 'chiuso',
      'closed unsuccessful' => 'non risolto',
      'Compose' => 'Componi',
      'Created' => 'Creato',
      'Createtime' => 'Creato alle',
      'email' => 'eMail',
      'eMail' => '',
      'email-external' => 'eMail esterna',
      'email-internal' => 'eMail interna',
      'Forward' => 'Inoltra',
      'From' => 'Da',
      'high' => 'alto',
      'History' => 'Storico',
      'If it is not displayed correctly,' => 'Se non � visualizzato correttamente,',
      'lock' => 'prendi in gestione',
      'Lock' => 'Prendi in gestione',
      'low' => 'basso',
      'Move' => 'Sposta',
      'new' => 'nuovo',
      'normal' => 'normale',
      'note-external' => 'Nota esterna',
      'note-internal' => 'Nota interna',
      'note-report' => 'Nota report',
      'open' => 'aperto',
      'Owner' => 'Operatore',
      'Pending' => 'In attesa',
      'pending auto close+' => 'in attesa di chiusura automatica+',
      'pending auto close-' => 'in attesa di chiusura automatica-',
      'pending reminder' => 'in attesa di risposta',
      'phone' => 'Telefono',
      'plain' => '',
      'Priority' => 'Priorit�',
      'Queue' => 'Coda',
      'removed' => 'rimosso',
      'Sender' => 'Mittente',
      'sms' => '',
      'State' => 'Stato',
      'Subject' => 'Oggetto',
      'This is a' => 'Questo � un',
      'This is a HTML email. Click here to show it.' => 'Questa � una email in HTML. Clicca qui per visualizzarla.',
      'This message was written in a character set other than your own.' => 'Questo messaggio � stato scritto in un set di caratteri diverso dal tuo.',
      'Ticket' => '',
      'To' => 'A',
      'to open it in a new window.' => 'per aprirlo in una nuova finestra.',
      'unlock' => 'abbandona gestione',
      'Unlock' => 'Abbandona gestione',
      'very high' => 'molto alto',
      'very low' => 'molto basso',
      'View' => 'Vista',
      'webrequest' => 'richiesta da web',
      'Zoom' => 'Dettagli',

    # Template: AAAWeekDay
      'Fri' => 'Ven',
      'Mon' => 'Lun',
      'Sat' => 'Sab',
      'Sun' => 'Dom',
      'Thu' => 'Mar',
      'Tue' => 'Gio',
      'Wed' => 'Mer',

    # Template: AdminAttachmentForm
      'Add attachment' => 'Aggiungi allegato',
      'Attachment Management' => 'Gestione allegati',
      'Change attachment settings' => 'Modifica impostazioni allegati',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'Aggiungi risposta automatica',
      'Auto Response From' => 'Risposta automatica da',
      'Auto Response Management' => 'Gestione risposte automatiche',
      'Change auto response settings' => 'Modifica impostazioni risposta automatica',
      'Charset' => 'Set di caratteri',
      'Note' => 'Nota',
      'Response' => 'Risposta',
      'to get the first 20 character of the subject' => 'per avere i primi 20 caratteri dell\'oggetto',
      'to get the first 5 lines of the email' => 'per avere le prime 5 linee del messaggio',
      'to get the from line of the email' => 'per avere il mittente del messaggio',
      'to get the realname of the sender (if given)' => 'per avere il nome del mittente (se indicato)',
      'to get the ticket id of the ticket' => 'per avere l\'id del ticket',
      'to get the ticket number of the ticket' => 'per avere il numero del ticket',
      'Type' => 'Tipo',
      'Useable options' => 'Opzioni utilizzabili',

    # Template: AdminCharsetForm
      'Add charset' => 'Aggiungi set di caratteri',
      'Change system charset setting' => 'Modifica le impostazioni del set di caratteri di sistema',
      'System Charset Management' => 'Gestione del set di caratteri di sistema',

    # Template: AdminCustomerUserForm
      'Add customer user' => 'Aggiungi cliente',
      'Change customer user settings' => 'Modifica dati cliente',
      'Customer User Management' => 'Gestione clienti',
      'Customer user will be needed to to login via customer panels.' => 'Qui � possibile inserire gli utenti che possono fare il login nel pannello clienti.',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Invia messaggio agli operatori',
      'Body' => 'Testo',
      'OTRS-Admin Info!' => 'Informazioni dall\'amministratore di OTRS',
      'Permission' => 'Permessi',
      'Recipents' => 'Destinatari',
      'send' => 'Invia',

    # Template: AdminEmailSent
      'Message sent to' => 'Messaggio inviato a',

    # Template: AdminGroupForm
      'Add group' => 'Aggiungi gruppo',
      'Change group settings' => 'Modifica impostazioni gruppo',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Creare nuovi gruppi per gestire i permessi di accesso per diversi gruppi di agenti (p.es. sezione vendite, supporto tecnico, ecc.)',
      'Group Management' => 'Gestione gruppo',
      'It\'s useful for ASP solutions.' => '� utile per soluzioni ASP',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Il gruppo admin ha accesso all\'area amministrazione mentre il gruppo stats ha accesso alle statistiche.',

    # Template: AdminLog
      'System Log' => 'Log di sistema',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Messaggio agli operatori',
      'AgentFrontend' => 'Area Tecnici',
      'Attachment <-> Response' => 'Allegati <-> Risposte',
      'Auto Response <-> Queue' => 'Risposte automatiche <-> Code',
      'Auto Responses' => 'Risposte automatiche',
      'Charsets' => 'Set di caratteri',
      'Customer User' => 'Clienti',
      'Email Addresses' => 'Indirizzi Email',
      'Groups' => 'Gruppi',
      'Logout' => 'Esci',
      'Misc' => 'Varie',
      'POP3 Account' => 'Impostazioni POP3',
      'Responses' => 'Risposte',
      'Responses <-> Queue' => 'Risposte <-> Code',
      'Select Box' => 'Selezionare una funzione',
      'Session Management' => 'Gestione sessioni',
      'Status' => 'Stato',
      'System' => 'Sistema',
      'User <-> Groups' => 'Utenti <-> Gruppi',

    # Template: AdminPOP3Form
      'Add POP3 Account' => 'Aggiungi accesso POP3',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Tutti i messaggi in arrivo saranno smistati nella coda selezionata!',
      'Change POP3 Account setting' => 'Modifica impostazioni accesso POP3',
      'Dispatching' => 'Smistamento',
      'Host' => '',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Se si tratta di un account fidato, verranno usati gli header X-OTRS per la gestione dei ticket!',
      'Login' => '',
      'POP3 Account Management' => 'Gestione accessi POP3',
      'Trusted' => 'Fidato',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Gestione Code <-> Risposte automatiche',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = nessuna escalation',
      '0 = no unlock' => '0 = nessuno sblocco automatico',
      'Add queue' => 'Aggiungi una coda',
      'Change queue settings' => 'Modifica impostazioni coda',
      'Customer Move Notify' => 'Notifica il cliente degli spostamenti',
      'Customer Owner Notify' => 'Notifica il cliente del cambio operatore',
      'Customer State Notify' => 'Notifica il cliente del cambio di stato',
      'Escalation time' => 'Tempo di escalation',
      'Follow up Option' => 'Opzioni per le risposte',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Se un ticket � chiuso e il cliente invia una risposta, il ticket viene assegnato al vecchio operatore.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Se un ticket non viene risposto entro questo limite di tempo, sar� l\'unico ticket ad essere mostrato.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se un operatore prende in gestione un ticket ma non risponde entro il tempo specificato, il ticket viene sbloccato in modo da essere accessibile agli altri operatori.',
      'Key' => 'Etichetta',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS invia una notifica via email al cliente se il ticket viene spostato.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS invia una notifica via email al cliente se l\'operatore assegnato al ticket cambia.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS invia una notifica via email al cliente se lo stato del ticket cambia.',
      'Queue Management' => 'Gestione delle code',
      'Sub-Queue of' => 'Sottocoda di',
      'Systemaddress' => 'Indirizzo di sistema',
      'The salutation for email answers.' => 'Il saluto generato automaticamente per le risposte via email.',
      'The signature for email answers.' => 'La firma generata automaticamente per le risposte via email.',
      'Ticket lock after a follow up' => 'Assegnazione ticket dopo una risposta',
      'Unlock timeout' => 'Tempo di sblocco automatico',
      'Will be the sender address of this queue for email answers.' => 'Sar� l\'indirizzo email usato come mittente per le risposte inviate via email.',

    # Template: AdminQueueResponsesChangeForm
      'Change %s settings' => 'Modifica impostazioni di %s',
      'Std. Responses <-> Queue Management' => 'Gestione Risposte standard <-> Code',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Risposta',
      'Change answer <-> queue settings' => 'Modifica impostazioni Risposta <-> Coda',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Gestione Risposte standard <-> Allegati standard',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'Modifica impostazioni Risposte <-> Allegati',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Una risposta � un testo predefinito usato per compilare pi� rapidamente le risposte per i clienti.',
      'Add response' => 'Aggiungi risposta',
      'Change response settings' => 'Modifica impostazioni risposta',
      'Don\'t forget to add a new response a queue!' => 'Non dimenticare di aggiungere una risposta per ogni coda!',
      'Response Management' => 'Gestione risposte',

    # Template: AdminSalutationForm
      'Add salutation' => 'Aggiungi saluto',
      'Change salutation settings' => 'Modifica impostazioni saluto',
      'customer realname' => 'nome del cliente',
      'for agent firstname' => 'per il nome dell\'operatore',
      'for agent lastname' => 'per il cognome dell\'operatore',
      'for agent login' => 'per il nome utente dell\'operatore',
      'for agent user id' => 'per l\'id utente dell\'operatore',
      'Salutation Management' => 'Gestione saluti',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Numero massimo di linee',

    # Template: AdminSelectBoxResult
      'Limit' => 'Limite',
      'Select Box Result' => 'Seleziona il risultato',
      'SQL' => '',

    # Template: AdminSession
      'kill all sessions' => 'Termina tutte le sessioni',

    # Template: AdminSessionTable
      'kill session' => 'Termina sessione',
      'SessionID' => 'ID sessione',

    # Template: AdminSignatureForm
      'Add signature' => 'Aggiungi firma',
      'Change signature settings' => 'Modifica impostazioni firma',
      'Signature Management' => 'Gestione firme',

    # Template: AdminStateForm
      'Add state' => 'Aggiungi stato',
      'Change system state setting' => 'Modifica parametri di uno stato',
      'State Type' => 'Tipologia',
      'System State Management' => 'Gestione stati ticket',

    # Template: AdminSystemAddressForm
      'Add system address' => 'Aggiungi indirizzo email di sistema',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Tutte le email in arrivo indirizzate a questo indirizzo (campo To:) saranno smistate nella coda selezionata!',
      'Change system address setting' => 'Modifica impostazioni indirizzo di sistema',
      'Email' => 'eMail',
      'Realname' => 'Nome',
      'System Email Addresses Management' => 'Gestione indirizzi di sistema',

    # Template: AdminUserForm
      'Add user' => 'Aggiungi operatore',
      'Change user settings' => 'Modifica impostazioni operatore',
      'Don\'t forget to add a new user to groups!' => 'Non dimenticare di aggiungere i nuovi operatori ad un gruppo!',
      'Firstname' => 'Nome',
      'Lastname' => 'Cognome',
      'User Management' => 'Gestione operatori',
      'User will be needed to handle tickets.' => 'Gli operatori sono necessari per gestire i ticket.',

    # Template: AdminUserGroupChangeForm
      'Change  settings' => 'Modifica impostazioni',
      'User <-> Group Management' => 'Gestione Utenti <-> Gruppi',

    # Template: AdminUserGroupForm
      'Change user <-> group settings' => 'Modifica impostazioni Utente <-> Gruppo',

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Manca il destinatario del messaggio!',
      'Bounce ticket' => 'Rispedisci al mittente',
      'Bounce to' => 'Rispedisci a',
      'Inform sender' => 'Informa il mittente',
      'Next ticket state' => 'Stato successivo del ticket',
      'Send mail!' => 'Invia messaggio!',
      'You need a email address (e. g. customer@example.com) in To:!' => '� necessario inserire un indirizzo email (p.es. cliente@esempio.it) come destinatario!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'La tua email con il numero di ticket "<OTRS_TICKET>" assegnato a "<OTRS_BOUNCE_TO>". Contattare questo indirizzo per ulteriori informazioni.',

    # Template: AgentClose
      ' (work units)' => ' (unit� di lavoro)',
      'A message should have a subject!' => 'Il messaggio deve avere un oggetto!',
      'Close ticket' => 'Ticket chiuso',
      'Close type' => 'Tipologia chiusura',
      'Close!' => 'Ticket Chiuso!',
      'Note Text' => 'Nota',
      'Note type' => 'Tipologia della nota',
      'Options' => 'Opzioni',
      'Spell Check' => 'Verifica ortografica',
      'Time units' => 'Tempo',
      'You need to account time!' => 'Devi inserire il tempo speso per la risposta!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'Il messaggio deve subire il controllo ortografico!',
      'Attach' => 'Allega',
      'Compose answer for ticket' => 'Componi la risposta per il ticket',
      'for pending* states' => 'per gli stati di attesa*',
      'Is the ticket answered' => 'Il ticket � stato risposto?',
      'Pending Date' => 'Attesa fino a',

    # Template: AgentCustomer
      'Back' => 'Indietro',
      'Change customer of ticket' => 'Modifica il cliente del ticket',
      'CustomerID' => 'Codice cliente',
      'Search Customer' => 'Ricerca cliente',
      'Set customer user and customer id of a ticket' => 'Imposta l\'id cliente di un ticket',

    # Template: AgentCustomerHistory
      'Customer history' => 'Storico del cliente',

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerMessage
      'Follow up' => 'Risposta',
      'Next state' => 'Stato successivo',

    # Template: AgentCustomerView
      'Customer Data' => 'Dati del cliente',

    # Template: AgentForward
      'Article type' => 'Tipo articolo',
      'Date' => 'Data',
      'End forwarded message' => 'Fine del messaggio inoltrato',
      'Forward article of ticket' => 'Inoltro articolo del ticket',
      'Forwarded message from' => 'Messaggio inoltrato da',
      'Reply-To' => 'Rispondi a',

    # Template: AgentFreeText
      'Change free text of ticket' => 'Cambia il testo del ticket',
      'Value' => 'Valore',

    # Template: AgentHistoryForm
      'History of' => 'Storico di',

    # Template: AgentMailboxNavBar
      'All messages' => 'Tutti i messaggi',
      'down' => 'decrescente',
      'Mailbox' => '',
      'New' => 'Nuovi',
      'New messages' => 'Nuovi messaggi',
      'Open' => 'Aperti',
      'Open messages' => 'Messaggi aperti',
      'Order' => 'Ordine',
      'Pending messages' => 'Messaggi in attesa',
      'Reminder' => 'Richiamo',
      'Reminder messages' => 'Messaggio di richiamo',
      'Sort by' => 'Ordina per',
      'Tickets' => 'Ticket',
      'up' => 'crescente',

    # Template: AgentMailboxTicket

    # Template: AgentMove
      'Move Ticket' => 'Sposta il ticket',
      'New Queue' => 'Nuova coda ',
      'New user' => 'Nuovo operatore',

    # Template: AgentNavigationBar
      'Locked tickets' => 'Ticket in gestione',
      'new message' => 'Nuovi messaggi',
      'PhoneView' => 'Inserisci ticket',
      'Preferences' => 'Preferenze',
      'Utilities' => 'Utilit�',

    # Template: AgentNote
      'Add note to ticket' => 'Aggiungi una nota al ticket',
      'Note!' => 'Nota!',

    # Template: AgentOwner
      'Change owner of ticket' => 'Assegna il ticket ad un altro operatore',
      'Message for new Owner' => 'Messaggio per l\'operatore',

    # Template: AgentPending
      'Pending date' => 'In attesa fino a',
      'Pending type' => 'Tipo di attesa',
      'Pending!' => 'In attesa!',
      'Set Pending' => 'Imposta attesa',

    # Template: AgentPhone
      'Customer called' => 'Il cliente ha chiamato',
      'Phone call' => 'Chiamata telefonica',
      'Phone call at %s' => 'Chiamata telefonica di %s',

    # Template: AgentPhoneNew
      'Clear From' => 'Cancella il campo mittente',
      'create' => 'crea',
      'new ticket' => 'Nuovo Ticket',

    # Template: AgentPlain
      'ArticleID' => 'Codice articolo',
      'Plain' => '',
      'TicketID' => 'Codice ticket',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'Scegli le code da visualizzare nella tua coda personale',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Cambia password',
      'New password' => 'Nuova password',
      'New password again' => 'Nuova password (conferma)',

    # Template: AgentPriority
      'Change priority of ticket' => 'Modifica la priorit� del ticket',

    # Template: AgentSpelling
      'Apply these changes' => 'Applica le modifiche',
      'Discard all changes and return to the compose screen' => 'Annulla tutte le modifiche e torna alla composizione del messaggio',
      'Return to the compose screen' => 'Torna alla composizione del messaggio',
      'Spell Checker' => 'Verifica ortografica',
      'spelling error(s)' => 'Errori di ortografia',
      'The message being composed has been closed.  Exiting.' => 'La finestra con il messaggio che si stava componendo � stata chiusa. Sto uscendo.',
      'This window must be called from compose window' => 'Questa finestra deve essere aperta dalla finestra di composizione dei mesaggi',

    # Template: AgentStatusView
      'D' => 'D',
      'of' => 'di',
      'Site' => 'Pagina',
      'sort downward' => 'ordine decrescente',
      'sort upward' => 'ordine crescente',
      'Ticket Status' => 'Stato ticket',
      'U' => 'C',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket gi� preso in gestione!',
      'Ticket unlock!' => 'Ticket libero!',

    # Template: AgentTicketPrint
      'by' => 'da',

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Tempo addebitato',
      'Escalation in' => '',
      'printed by' => 'stampato da',

    # Template: AgentUtilSearch
      'Article free text' => 'Testo libero articolo',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Ricerca integrale sul testo (es: "Mar*in" oppure "Baue*" oppure "martin+ciao")',
      'search' => 'Cerca',
      'search (e. g. 10*5155 or 105658*)' => 'Cerca (es: 10*5155 oppure 105658*)',
      'Ticket free text' => 'Testo del ticket',
      'Ticket Search' => 'Ricerca Ticket',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Ricerca storico cliente',
      'Customer history search (e. g. "ID342425").' => 'Ricerca storico cliente (es: "ID342425")',
      'No * possible!' => 'Qui non � possibile usare l\'asterisco (*)!',

    # Template: AgentUtilSearchNavBar
      'Results' => 'Risultati',
      'Total hits' => 'Totale risultati',

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'Tutti i ticket chiusi',
      'All open tickets' => 'Tutti i ticket aperti',
      'closed tickets' => 'ticket chiusi',
      'open tickets' => 'ticket aperti',
      'or' => 'oppure',
      'Provides an overview of all' => 'Visione generale di tutti i',
      'So you see what is going on in your system.' => 'Per vedere come vanno le cose nel sistema.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'Componi risposta',
      'Your own Ticket' => 'I tuoi ticket',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'Componi risposta',
      'Contact customer' => 'Contatta il cliente',
      'phone call' => 'chiamata telefonica',

    # Template: AgentZoomArticle
      'Split' => 'Spezza',

    # Template: AgentZoomBody
      'Change queue' => 'Cambia coda',

    # Template: AgentZoomHead
      'Free Fields' => 'Campi liberi',
      'Print' => 'Stampa',

    # Template: AgentZoomStatus

    # Template: CustomerCreateAccount
      'Create Account' => 'Registrati',

    # Template: CustomerError
      'Traceback' => '',

    # Template: CustomerFooter
      'Powered by' => '',

    # Template: CustomerHeader
      'Contact' => 'Contatti',
      'Home' => '',
      'Online-Support' => 'Supporto in linea',
      'Products' => 'Prodotti',
      'Support' => 'Supporto',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Hai dimenticato la tua password?',
      'Request new password' => 'Richiedi password',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => 'Crea nuovo Ticket',
      'My Tickets' => 'Lista Ticket',
      'New Ticket' => 'Nuovo Ticket',
      'Ticket-Overview' => 'Sommario Ticket',
      'Welcome %s' => 'Benvenuto %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Clicca qui per segnalare un bug!',

    # Template: Footer
      'Top of Page' => 'Inizio Pagina',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => 'Crea database ',
      'Drop Database' => 'Cancella database',
      'Finished' => 'Operazione terminata',
      'System Settings' => 'Impostazioni di sistema',
      'Web-Installer' => 'Web-Installer',

    # Template: InstallerFinish
      'Admin-User' => 'Utente amministratore',
      'After doing so your OTRS is up and running.' => 'Dopo di ci� OTRS sar� pronto all\'uso.',
      'Have a lot of fun!' => 'Divertiti con OTRS!',
      'Restart your webserver' => 'Riavvia il tuo server web',
      'Start page' => 'Pagina iniziale',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Per poter usare OTRS devi inserire questa riga di comando in una shell come utente root.',
      'Your OTRS Team' => 'Il team OTRS',

    # Template: InstallerLicense
      'accept license' => 'accetto la licenza',
      'don\'t accept license' => 'non accetto la licenza',
      'License' => 'Licenza',

    # Template: InstallerStart
      'Create new database' => 'Crea un nuovo database',
      'DB Admin Password' => 'Password del DB Admin',
      'DB Admin User' => 'Nome utente DB Admin',
      'DB Host' => '',
      'DB Type' => 'Tipo di DBMS',
      'default \'hot\'' => '\'hot\' predefinito',
      'Delete old database' => 'Cancella il vecchio database',
      'next step' => 'Fase successiva',
      'OTRS DB connect host' => '',
      'OTRS DB Name' => '',
      'OTRS DB Password' => '',
      'OTRS DB User' => '',
      'your MySQL DB should have a root password! Default is empty!' => 'dovresti impostare una password di root per il tuo server MySQL!',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Controlla il record MX per i domini degli indirizzi email quando si compone un messaggio. Non usare se il vostro server con OTRS ha una connessione dial-up!)',
      '(Email of the system admin)' => '(Indirizzo email dell\'amministratore di sistema)',
      '(Full qualified domain name of your system)' => '(Nome di dominio completo (FQDN) del sistema)',
      '(Logfile just needed for File-LogModule!)' => '(File di log --- necessario solo per il log su file (File-LogModule))',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(ID del sistema. Ogni ID di sessione e numero di ticket inizia con questo numero)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Prefisso per il numero di ticket --- es. "N.ro Ticket:" o "Ticket#" ecc.)',
      '(Used default language)' => '(Lingua predefinita)',
      '(Used log backend)' => '(Modulo da usare per il log)',
      '(Used ticket number format)' => '(Formato del numero dei ticket)',
      'CheckMXRecord' => 'Verifica record MX',
      'Default Charset' => 'Set di caratteri predefinito',
      'Default Language' => 'Lingua predefinita',
      'Logfile' => 'File di log',
      'LogModule' => 'Modulo di log',
      'Organization' => 'Azienda',
      'System FQDN' => 'FQDN del sistema',
      'SystemID' => 'ID del sistema',
      'Ticket Hook' => 'Prefisso ticket',
      'Ticket Number Generator' => 'Generatore numero ticket',
      'Webfrontend' => 'Interfaccia web',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Autorizzazione negata',

    # Template: Notify
      'Info' => 'Informazioni',

    # Template: PrintFooter
      'URL' => '',

    # Template: PrintHeader

    # Template: QueueView
      'All tickets' => 'Ticket totali',
      'Queues' => 'Code',
      'Tickets available' => 'Ticket disponibili',
      'Tickets shown' => 'Ticket mostrati',

    # Template: SystemStats
      'Graphs' => 'Grafici',

    # Template: Test
      'OTRS Test Page' => 'Pagina di test OTRS',

    # Template: TicketEscalation
      'Ticket escalation!' => '',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => 'Aggiungi nota',

    # Template: Warning

    # Misc
      '(Click here to add a group)' => '(Clicca qui per aggiungere un gruppo)',
      '(Click here to add a queue)' => '(Clicca qui per aggiungere una coda)',
      '(Click here to add a response)' => '(Clicca qui per aggiungere una risposta)',
      '(Click here to add a salutation)' => '(Clicca qui per aggiungere un saluto)',
      '(Click here to add a signature)' => '(Clicca qui per aggiungere una firma)',
      '(Click here to add a system email address)' => '(Clicca qui per aggiungere un indirizzo email di sistema)',
      '(Click here to add a user)' => '(Clicca qui per aggiungere un operatore)',
      '(Click here to add an auto response)' => '(Clicca qui per aggiungere una risposta automatica)',
      '(Click here to add charset)' => '(Clicca qui per aggiungere un set di caratteri)',
      '(Click here to add language)' => '(Clicca qui per aggiungere una lingua)',
      '(Click here to add state)' => '(Clicca qui per aggiungere un nuovo stato)',
      '(E-Mail of the system admin)' => '(Indirizzo email dell\'amministratore di sistema)',
      'A message should have a From: recipient!' => 'Un messaggio dovrebbe avere un mittente!',
      'Create' => 'Crea',
      'Customer info' => 'Informazioni sul cliente',
      'CustomerUser' => 'Cliente',
      'FAQ' => 'FAQ',
      'Fulltext search' => 'Ricerca integrale sul testo',
      'Handle' => 'Manipolare',
      'In Queue' => 'Nella Coda',
      'New state' => 'Nuovo stato',
      'New ticket via call.' => 'Nuovo ticket via telefono.',
      'Search in' => 'Cerca in',
      'Set customer id of a ticket' => 'Imposta il cliente associato al ticket',
      'Show all' => 'Mostra tutti i',
      'System Language Management' => 'Gestione lingua del sistema',
      'Update auto response' => 'Aggiorna risposta automatica',
      'Update charset' => 'Aggiorna set di caratteri',
      'Update group' => 'Aggiorna gruppo',
      'Update language' => 'Aggiorna lingua',
      'Update queue' => 'Aggiorna coda',
      'Update response' => 'Aggiorna risposta',
      'Update salutation' => 'Aggiorna saluto',
      'Update signature' => 'Aggiorna firma',
      'Update state' => 'Aggiorna stato',
      'Update system address' => 'Aggiorna indirizzo',
      'Update user' => 'Aggiorna operatore',
      'With Priority' => 'Con priorit�',
      'With State' => 'Con stato',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further inforamtions.' => 'La tua email a cui � stato assegnato il numero di ticket "<OTRS_TICKET>" � stata rispedita a "<OTRS_BOUNCE_TO>". Contatta questo indirizzo per ulteriori informazioni.',
      'auto responses set' => 'Risposta automatica inserita',
      'invalid-temporarily' => 'temporaneamente invalido',
      'store' => 'salva',
      'tickets' => 'ticket',
      'valid' => 'valido',
    );

    # $$STOP$$
    $Self->{Translation} = \%Hash;
}
# --
1;
