# --
# Kernel/Language/ct.pm - provides ct language translation
# Copyright (C) 2008 Sistemes OTIC (ibsalut) - Antonio Linde
# --
# $Id: ct.pm,v 1.27 2009-07-13 09:49:46 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::ct;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.27 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sat Jun 27 13:54:52 2009

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat}          = '%D.%M.%Y %T';
    $Self->{DateFormatLong}      = '%A %D %B %T %Y';
    $Self->{DateFormatShort}     = '%D.%M.%Y';
    $Self->{DateInputFormat}     = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => 'Si',
        'No' => 'No',
        'yes' => 'si',
        'no' => 'no',
        'Off' => 'Off',
        'off' => 'off',
        'On' => 'On',
        'on' => 'on',
        'top' => 'inici',
        'end' => 'fi',
        'Done' => 'Fet',
        'Cancel' => 'Cancel�lar',
        'Reset' => 'Reiniciar',
        'last' => 'darrer',
        'before' => 'abans',
        'day' => 'dia',
        'days' => 'dias',
        'day(s)' => 'dia(s)',
        'hour' => 'hora',
        'hours' => 'hores',
        'hour(s)' => 'hora(es)',
        'minute' => 'minut',
        'minutes' => 'minuts',
        'minute(s)' => 'minut(s)',
        'month' => 'mes',
        'months' => 'mesos',
        'month(s)' => 'mes(os)',
        'week' => 'setmana',
        'week(s)' => 'setmana(es)',
        'year' => 'any',
        'years' => 'anys',
        'year(s)' => 'any(s)',
        'second(s)' => 'segon(s)',
        'seconds' => 'segons',
        'second' => 'segon',
        'wrote' => 'va escriure',
        'Message' => 'Missatje',
        'Error' => 'Error',
        'Bug Report' => 'Informe d\'errors',
        'Attention' => 'Atenci�',
        'Warning' => 'Atenci�',
        'Module' => 'M�dul',
        'Modulefile' => 'Arxiu de m�dul',
        'Subfunction' => 'Subfuncions',
        'Line' => 'L�nia',
        'Setting' => '',
        'Settings' => '',
        'Example' => 'Exemple',
        'Examples' => 'Exemples',
        'valid' => 'v�lid',
        'invalid' => 'inv�lid',
        '* invalid' => '* inv�lid',
        'invalid-temporarily' => 'inv�lid-temporalment',
        ' 2 minutes' => ' 2 minuts',
        ' 5 minutes' => ' 5 minuts',
        ' 7 minutes' => ' 7 minuts',
        '10 minutes' => '10 minuts',
        '15 minutes' => '15 minuts',
        'Mr.' => 'Sr.',
        'Mrs.' => 'Sra.',
        'Next' => 'Seg�ent',
        'Back' => 'Tornar',
        'Next...' => 'Seg�ent...',
        '...Back' => '..Tornar',
        '-none-' => '-no res-',
        'none' => 'no res',
        'none!' => 'no res!',
        'none - answered' => 'no res  - respost',
        'please do not edit!' => 'Per favor no ho editi!',
        'AddLink' => 'Afegir enlla�',
        'Link' => 'Enlla�',
        'Unlink' => 'Llevar enlla�',
        'Linked' => 'Enlla�at',
        'Link (Normal)' => 'Enlla� (Normal)',
        'Link (Parent)' => 'Enlla� (Pare)',
        'Link (Child)' => 'Enlla� (Fill)',
        'Normal' => 'Normal',
        'Parent' => 'Pare',
        'Child' => 'Fill',
        'Hit' => 'Resultat',
        'Hits' => 'Resultats',
        'Text' => 'Text',
        'Lite' => 'Petit',
        'User' => 'Usuari',
        'Username' => 'Nom d\'Usuari',
        'Language' => 'Idioma',
        'Languages' => 'Idiomes',
        'Password' => 'Contrasenya',
        'Salutation' => 'Saludo',
        'Signature' => 'Signaturas',
        'Customer' => 'Client',
        'CustomerID' => 'Nombre de client',
        'CustomerIDs' => 'Nombres de client',
        'customer' => 'client',
        'agent' => 'agent',
        'system' => 'Sistema',
        'Customer Info' => 'Informaci� del client',
        'Customer Company' => 'Client Companyia',
        'Company' => 'Companyia',
        'go!' => 'anar!',
        'go' => 'anar',
        'All' => 'Tot',
        'all' => 'tot',
        'Sorry' => 'Disculpi',
        'update!' => 'Actualitzar!',
        'update' => 'actualitzar',
        'Update' => 'Actualitzar',
        'Updated!' => '',
        'submit!' => 'enviar!',
        'submit' => 'enviar',
        'Submit' => 'Enviar',
        'change!' => 'camviar!',
        'Change' => 'Camviar',
        'change' => 'camviar',
        'click here' => 'faci clic aqu�',
        'Comment' => 'Comentari',
        'Valid' => 'V�lid',
        'Invalid Option!' => 'Opci� no valida',
        'Invalid time!' => 'Hora no valida',
        'Invalid date!' => 'Data no valida',
        'Name' => 'Nombre',
        'Group' => 'Grup',
        'Description' => 'Descripci�',
        'description' => 'descripci�',
        'Theme' => 'Tema',
        'Created' => 'Creat',
        'Created by' => 'Creat per',
        'Changed' => 'Modificat',
        'Changed by' => 'Modificat per',
        'Search' => 'Cercar',
        'and' => 'i',
        'between' => 'entre',
        'Fulltext Search' => 'Recerca de text complet',
        'Data' => 'Dades',
        'Options' => 'Opcions',
        'Title' => 'T�tol',
        'Item' => 'Article',
        'Delete' => 'Esborrar',
        'Edit' => 'Editar',
        'View' => 'Veure',
        'Number' => 'Nombre',
        'System' => 'Sistema',
        'Contact' => 'Contacte',
        'Contacts' => 'Contactes',
        'Export' => 'Exportar',
        'Up' => 'Amunt',
        'Down' => 'Avall',
        'Add' => 'Afegir',
        'Added!' => '',
        'Category' => 'Categoria',
        'Viewer' => 'Visualitzador',
        'Expand' => '',
        'New message' => 'Nou missatge',
        'New message!' => 'Nou missatge!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'Per favor respongui al tiquet per a regressar a la vista normal de la cua.',
        'You got new message!' => 'Vost� t� un nou missatge',
        'You have %s new message(s)!' => 'Vost� t� %s un nou(s) missatge(s)!',
        'You have %s reminder ticket(s)!' => 'Vost� t� %s tiquets recordatoris',
        'The recommended charset for your language is %s!' => 'El joc de car�cters recomanat per al seu idioma �s %s!',
        'Passwords doesn\'t match! Please try it again!' => 'Les contrasenyes no coincideixen. Per favor intenti\'l de nou !',
        'Password is already in use! Please use an other password!' => 'La contrasenya ja s\'est� utilitzant! Per Favor utilitzi altra!',
        'Password is already used! Please use an other password!' => 'La contrasenya ja va ser usada! Per Favor utilitzi altra!',
        'You need to activate %s first to use it!' => 'Necessita activar %s primer per a usar-lo!',
        'No suggestions' => 'Sense suggeriments',
        'Word' => 'Paraula',
        'Ignore' => 'Ignorar',
        'replace with' => 'reempla�ar amb',
        'There is no account with that login name.' => 'No existeix un compte amb aquest login',
        'Login failed! Your username or password was entered incorrectly.' => 'Identificaci� incorrecta. El seu nom d\'usuari o contrasenya ha estat introdu�t incorrectament',
        'Please contact your admin' => 'Per favor contacti amb ladministrador',
        'Logout successful. Thank you for using OTRS!' => 'Desconnexi� reeixida. Gr�cies per utilitzar OTRS!',
        'Invalid SessionID!' => 'Sessi� no v�lida',
        'Feature not active!' => 'Caracter�stica no activa',
        'Notification (Event)' => 'Notificacions (Event)',
        'Login is needed!' => 'Es requereix login',
        'Password is needed!' => 'Falta la contrasenya!',
        'License' => 'Llic�ncia',
        'Take this Customer' => 'Utilitzar aquest client',
        'Take this User' => 'Utilitzar aquest usuari',
        'possible' => 'possible',
        'reject' => 'rebutjar',
        'reverse' => 'capgirar',
        'Facility' => 'Facilitat',
        'Timeover' => 'Vencimient',
        'Pending till' => 'Pendent fins a',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'No treballi amb l\'Identificador 1 (compte de sistema)! Cre� nous usuaris!',
        'Dispatching by email To: field.' => 'Despatxar pel camp To: del correu',
        'Dispatching by selected Queue.' => 'Despatxar per la cua seleccionada',
        'No entry found!' => 'No es va trobar!',
        'Session has timed out. Please log in again.' => 'La sessi� ha expirat. Per favor inici� una sessi� novament.',
        'No Permission!' => 'No t� Perm�s!',
        'To: (%s) replaced with database email!' => 'To: (%s) substitu�t amb email de la base de dades!',
        'Cc: (%s) added database email!' => 'Cc: (%s) Afegit a la base de correu!',
        '(Click here to add)' => '(Faci clic aqui per a afegir)',
        'Preview' => 'Vista Pr�via',
        'Package not correctly deployed! You should reinstall the Package again!' => 'Paquet no instal�lat correctament! Vost� ha de reinstal�lar el paquet novament!',
        'Added User "%s"' => 'Afegit Usuari "%s"',
        'Contract' => 'Contracte',
        'Online Customer: %s' => 'Client connectat: %s',
        'Online Agent: %s' => 'Agent connectat: %s',
        'Calendar' => 'Calendari',
        'File' => 'Arxiu',
        'Filename' => 'Nom de l\'arxiu',
        'Type' => 'Tipus',
        'Size' => 'Tamany',
        'Upload' => 'Penjar',
        'Directory' => 'Directori',
        'Signed' => 'Signat',
        'Sign' => 'Signatura',
        'Crypted' => 'Encriptat',
        'Crypt' => 'Encriptar',
        'Office' => 'Oficina',
        'Phone' => 'Tel�fono',
        'Fax' => 'Fax',
        'Mobile' => 'M�bil',
        'Zip' => 'CP',
        'City' => 'Ciutat',
        'Street' => 'Carrer',
        'Country' => 'Pais',
        'Location' => '',
        'installed' => 'instal�lat',
        'uninstalled' => 'desinstal�lat',
        'Security Note: You should activate %s because application is already running!' => 'Nota de seguretat: Vost� ha d\'activar %s perqu� l\'aplicaci� ja est� corrent!',
        'Unable to parse Online Repository index document!' => 'Incapa� d\'interpretar el document �ndex del Repositorio en L�nia!',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'No hi ha paquets per al Framework sol�licitat en aquest repositori en l�nia, per� si hi ha per a altres Frameworks',
        'No Packages or no new Packages in selected Online Repository!' => 'No hi ha paquets o no hi ha paquets nous en el repositori en l�nia seleccionat',
        'printed at' => 'impr�s en',
        'Dear Mr. %s,' => 'Benvolgut Sr. %s',
        'Dear Mrs. %s,' => 'Benvolguda Sra. %s',
        'Dear %s,' => 'Benvolgut %s',
        'Hello %s,' => 'Hola %s,',
        'This account exists.' => 'Aquest compte existeix',
        'New account created. Sent Login-Account to %s.' => 'Nou compte creat. Dades d\'inici de sessi� enviats a %s.',
        'Please press Back and try again.' => 'Per favor premi Tornar i provi de nou.',
        'Sent password token to: %s' => 'Enviar el \'token\' de la contrasenya a: %s ',
        'Sent new password to: %s' => 'Enviar nova contrasenya a: %s',
        'Upcoming Events' => '',
        'Event' => 'Esdeveniment',
        'Events' => '',
        'Invalid Token!' => '\'Token\' inv�lid!',
        'more' => '',
        'For more info see:' => '',
        'Package verification failed!' => '',
        'Collapse' => '',
        'News' => '',
        'Product News' => '',
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
        'Header' => 'Cap�alera',
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
        'Jan' => 'Gen',
        'Feb' => 'Feb',
        'Mar' => 'Mar',
        'Apr' => 'Abr',
        'May' => 'Maig',
        'Jun' => 'Jun',
        'Jul' => 'Jul',
        'Aug' => 'Ago',
        'Sep' => 'Set',
        'Oct' => 'Oct',
        'Nov' => 'Nov',
        'Dec' => 'Des',
        'January' => 'Gener',
        'February' => 'Febrer',
        'March' => 'Mar�',
        'April' => 'Abril',
        'June' => 'Juny',
        'July' => 'Juliol',
        'August' => 'Agost',
        'September' => 'Setembre',
        'October' => 'Octubre',
        'November' => 'Novembre',
        'December' => 'Desembre',

        # Template: AAANavBar
        'Admin-Area' => 'Area d\'administraci�',
        'Agent-Area' => 'Area-Agent',
        'Ticket-Area' => 'Area-Tiquet',
        'Logout' => 'Desconnectar-se',
        'Agent Preferences' => 'Prefer�ncies d\'Agent',
        'Preferences' => 'Prefer�ncies',
        'Agent Mailbox' => 'B�stia d\'Agent',
        'Stats' => 'Estad�stiques',
        'Stats-Area' => 'Area-Estad�stiques',
        'Admin' => 'Admin',
        'Customer Users' => 'Clients',
        'Customer Users <-> Groups' => 'Clients <-> Grups',
        'Users <-> Groups' => 'Usuaris <-> Grups',
        'Roles' => 'Rols',
        'Roles <-> Users' => 'Rols <-> Usuaris',
        'Roles <-> Groups' => 'Rols <-> Grups',
        'Salutations' => 'Salutacions',
        'Signatures' => 'Signatures',
        'Email Addresses' => 'Adreces de Correu',
        'Notifications' => 'Notificacions',
        'Category Tree' => 'Arbre de categories',
        'Admin Notification' => 'Notificaci� a l\'administrador',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Les prefer�ncies van ser actualitzades!',
        'Mail Management' => 'Gesti� de Correus',
        'Frontend' => 'Frontal',
        'Other Options' => 'Altres Opcions',
        'Change Password' => 'Canviar contrasenya',
        'New password' => 'Nova contrasenya',
        'New password again' => 'Repetir Contrasenya',
        'Select your QueueView refresh time.' => 'Seleccioni el temps d\'actualitzaci� de la vista de cues',
        'Select your frontend language.' => 'Seleccioni el seu idioma de treball',
        'Select your frontend Charset.' => 'Seleccioni el seu joc de car�cters',
        'Select your frontend Theme.' => 'Seleccioni el seu tema',
        'Select your frontend QueueView.' => 'Seleccioni la seva Vista de cua de treball',
        'Spelling Dictionary' => 'Diccionari Ortogr�fic',
        'Select your default spelling dictionary.' => 'Seleccioni el seu diccionari per defecte',
        'Max. shown Tickets a page in Overview.' => 'Quantitat de Tiquets a mostrar en Resum',
        'Can\'t update password, your new passwords do not match! Please try again!' => 'No es pot actualitzar la contrasenya, no coincideixen! Per favor intenti\'l de nou!',
        'Can\'t update password, invalid characters!' => 'No es pot actualitzar la contrasenya, car�cters inv�lids!',
        'Can\'t update password, must be at least %s characters!' => 'No es pot actualitzar la contrasenya, es necessiten almenys %s car�cters',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => 'No es pot actualitzar la contrasenya, es necessiten almenys 2 en min�scula i 2 en maj�scula!',
        'Can\'t update password, needs at least 1 digit!' => 'No es pot actualitzar la contrasenya, es necessita almenys 1 d�git!',
        'Can\'t update password, needs at least 2 characters!' => 'No es pot actualitzar la contrasenya, es necessiten almenys 2 car�cters!',

        # Template: AAAStats
        'Stat' => 'Estad�stiques',
        'Please fill out the required fields!' => 'Per favor empleni els camps requerits',
        'Please select a file!' => 'Per favor seleccioni un arxiu',
        'Please select an object!' => 'Per favor seleccioni un objecte',
        'Please select a graph size!' => 'Per favor, seleccioni una grand�ria de gr�fic',
        'Please select one element for the X-axis!' => 'Per favor, seleccioni un element per a l\'eix X',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Per favor, seleccioni un sol element o desactivi el bot� \'Fix\' on el camp seleccionat est� marcat!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Si usa una casella de selecci�, ha de seleccionar alguns atributs del camp seleccionat',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Per favor introdueixi un valor en el camp d\'entrada o desactivi la selecci� \'Fixa\'',
        'The selected end time is before the start time!' => 'La data de final �s pr�via a la inicial!',
        'You have to select one or more attributes from the select field!' => 'Ha de seleccionar un o m�s atributs del camp seleccionat!',
        'The selected Date isn\'t valid!' => 'La data seleccionada no �s v�lida',
        'Please select only one or two elements via the checkbox!' => 'Per favor seleccioni nom�s un o dos elements usant la casella de selecci�!',
        'If you use a time scale element you can only select one element!' => 'Si utilitza l\'escala de temps nom�s pot seleccionar un element!',
        'You have an error in your time selection!' => 'T� un error en la selecci� de temps!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'L\'interval de temps per a informes �s massa petit, per favor utilitzi una escala de temps major!',
        'The selected start time is before the allowed start time!' => 'El per�ode de temps inicial �s anterior al perm�s!',
        'The selected end time is after the allowed end time!' => 'El per�ode de temps final �s posterior al perm�s!',
        'The selected time period is larger than the allowed time period!' => 'El per�ode de temps �s major que el perm�s!',
        'Common Specification' => 'Especificaci� comuna',
        'Xaxis' => 'EixX',
        'Value Series' => 'S�rie de Valors',
        'Restrictions' => 'Restriccions',
        'graph-lines' => 'gr�fica-de-l�nies',
        'graph-bars' => 'gr�fica-de-barres',
        'graph-hbars' => 'gr�fica-de-barreshor',
        'graph-points' => 'gr�fica-de-punts',
        'graph-lines-points' => 'gr�fica-de-l�nies-punts',
        'graph-area' => 'gr�fica-de-�rea',
        'graph-pie' => 'gr�fica-de-past�s',
        'extended' => 'est�s',
        'Agent/Owner' => 'Agent/Propietari',
        'Created by Agent/Owner' => 'Creat per Agent/Propietari',
        'Created Priority' => 'Prioritat de Creaci�',
        'Created State' => 'Estat al Crear-se',
        'Create Time' => 'Data de Creaci�',
        'CustomerUserLogin' => 'Login de Client',
        'Close Time' => 'Data de Tancament',
        'TicketAccumulation' => '',
        'Attributes to be printed' => '',
        'Sort sequence' => '',
        'Order by' => '',
        'Limit' => 'L�mit',
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
        'Lock' => 'Bloquejar',
        'Unlock' => 'Desbloquejar',
        'History' => 'Hist�ria',
        'Zoom' => 'Detall',
        'Age' => 'Antiguitat',
        'Bounce' => 'Rebotar',
        'Forward' => 'Reenviar',
        'From' => 'De',
        'To' => 'A',
        'Cc' => 'C�pia ',
        'Bcc' => 'C�pia Invisible',
        'Subject' => 'Assumpte',
        'Move' => 'Moure',
        'Queue' => 'Cues',
        'Priority' => 'Prioritat',
        'Priority Update' => 'Actualitzar la prioritat',
        'State' => 'Estat',
        'Compose' => 'Redactar',
        'Pending' => 'Pendent',
        'Owner' => 'Propietari',
        'Owner Update' => 'Actualitzar Propietari',
        'Responsible' => 'Responsable',
        'Responsible Update' => 'Actualitzar Responsable',
        'Sender' => 'Remitent',
        'Article' => 'Article',
        'Ticket' => 'Tiquet',
        'Createtime' => 'Data de creaci�',
        'plain' => 'text',
        'Email' => 'Correu',
        'email' => 'correu',
        'Close' => 'Tancar',
        'Action' => 'Acci�',
        'Attachment' => 'Adjunt',
        'Attachments' => 'Adjunts',
        'This message was written in a character set other than your own.' => 'Aquest missatge va ser escrit usant un joc de car�cters distint al seu',
        'If it is not displayed correctly,' => 'Si no es mostra correctament',
        'This is a' => 'Aquest �s un',
        'to open it in a new window.' => 'Per a obrir en una nova finestra',
        'This is a HTML email. Click here to show it.' => 'Aquest �s un missatge HTML. Faci clic aqu� per a mostrar-lo.',
        'Free Fields' => 'Camps lliures',
        'Merge' => 'Fusionar',
        'merged' => 'fusionat',
        'closed successful' => 'tancat amb �xit',
        'closed unsuccessful' => 'tancat sense �xit ',
        'new' => 'nou',
        'open' => 'obert',
        'Open' => '',
        'closed' => 'tancat',
        'Closed' => '',
        'removed' => 'eliminat',
        'pending reminder' => 'recordatori pendent',
        'pending auto' => 'pendent auto',
        'pending auto close+' => 'pendent auto close+',
        'pending auto close-' => 'pendent auto close-',
        'email-external' => 'correu-extern',
        'email-internal' => 'correu-intern',
        'note-external' => 'nota-externa',
        'note-internal' => 'nota-interna',
        'note-report' => 'nota-informe',
        'phone' => 'tel�fon',
        'sms' => 'sms',
        'webrequest' => 'Sol�licitud via web',
        'lock' => 'bloquejat',
        'unlock' => 'desbloquejat',
        'very low' => 'molt baix',
        'low' => 'baix',
        'normal' => 'normal',
        'high' => 'alt',
        'very high' => 'molt alt',
        '1 very low' => '1 molt baix',
        '2 low' => '2 baix',
        '3 normal' => '3 normal',
        '4 high' => '4 alt',
        '5 very high' => '5 molt alt',
        'Ticket "%s" created!' => 'Tiquet "%s" creat!',
        'Ticket Number' => 'Nombre tiquet',
        'Ticket Object' => 'Objecte tiquet',
        'No such Ticket Number "%s"! Can\'t link it!' => 'No existeix el tiquet Nombre "%s"! No pot vincular-lo!',
        'Don\'t show closed Tickets' => 'No mostrar els tiquets tancats',
        'Show closed Tickets' => 'Mostrar Tiquets tancats',
        'New Article' => 'Nou article',
        'Email-Ticket' => 'Tiquet-Correu',
        'Create new Email Ticket' => 'Crea nou tiquet de correu',
        'Phone-Ticket' => 'Tiquet-Telef�nic',
        'Search Tickets' => 'Cercar tiquets',
        'Edit Customer Users' => 'Editar els usuaris del client',
        'Edit Customer Company' => 'Editar la companyia del client',
        'Bulk Action' => 'Acci� m�ltiple',
        'Bulk Actions on Tickets' => 'Acci� m�ltiple en tiquets',
        'Send Email and create a new Ticket' => 'Enviar un correu i crear un nou tiquet',
        'Create new Email Ticket and send this out (Outbound)' => 'Crea nou tiquet de correu i ho envia (sortida)',
        'Create new Phone Ticket (Inbound)' => 'Crea nou tiquet telef�nic (entrada)',
        'Overview of all open Tickets' => 'Resum de tots els tiquets oberts',
        'Locked Tickets' => 'Tiquets bloquejats',
        'Watched Tickets' => 'Tiquets observats',
        'Watched' => 'Observat',
        'Subscribe' => 'Subscriure',
        'Unsubscribe' => 'Cancel�lar subscripci�',
        'Lock it to work on it!' => 'Bloquejar-lo per a treballar en ell!',
        'Unlock to give it back to the queue!' => 'Desbloquejar-lo per a regressar-lo a la cua!',
        'Shows the ticket history!' => 'Mostrar la hist�ria del tiquet!',
        'Print this ticket!' => 'Imprimir aquest tiquet!',
        'Change the ticket priority!' => 'Canviar la prioritat del tiquet!',
        'Change the ticket free fields!' => 'Canviar els camps lliures del tiquet!',
        'Link this ticket to an other objects!' => 'Enlla�ar aquest tiquet a altres objectes',
        'Change the ticket owner!' => 'Canviar el propietari del tiquet!',
        'Change the ticket customer!' => 'Canviar el client del tiquet!',
        'Add a note to this ticket!' => 'Afegir una nota a aquest tiquet!',
        'Merge this ticket!' => 'Unir aquest tiquet!',
        'Set this ticket to pending!' => 'Col�locar aquest tiquet com pendent!',
        'Close this ticket!' => 'Tancar aquest tiquet!',
        'Look into a ticket!' => 'Revisar un tiquet',
        'Delete this ticket!' => 'Eliminar aquest tiquet!',
        'Mark as Spam!' => 'Marcar com correu no desitjat!',
        'My Queues' => 'Les meves Cues',
        'Shown Tickets' => 'Mostrar tiquets',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'El seu correu amb nombre de tiquet "<OTRS_TICKET>" es va unir a "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Tiquet %s: Temps per a primera resposta ha ven�ut (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Tiquet %s: Temps per a primera resposta est� per v�ncer en %s!',
        'Ticket %s: update time is over (%s)!' => 'Tiquet %s: Temps per a actualitzaci� ha ven�ut (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Tiquet %s: Temps per a actualitzaci� est� per v�ncer en %s!',
        'Ticket %s: solution time is over (%s)!' => 'Tiquet %s: Temps per a soluci� ha ven�ut (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Tiquet %s: Temps per a soluci� est� per v�ncer en %s!',
        'There are more escalated tickets!' => 'No hi ha m�s tiquets escalats',
        'New ticket notification' => 'Notificaci� de nous tiquets',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Notifiqui\'m si hi ha un nou tiquet en "Les meves Cues".',
        'Follow up notification' => 'Seguir notificaci�',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notifiqui\'m si un client envia un seguiment i jo s�c el propietari del tiquet.',
        'Ticket lock timeout notification' => 'Notificaci� de bloqueig de tiquets per temps',
        'Send me a notification if a ticket is unlocked by the system.' => 'Notifiqui\'m si un tiquet �s desbloquejat pel sistema',
        'Move notification' => 'Notificaci� de moviments',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Notifiqui\'m si un tiquet �s mogut en una de "Les meves Cues". ',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Cua de selecci� de cues favorites. Vost� tamb� pot ser notificat d\'aquestes cues per correu si est� habilitat',
        'Custom Queue' => 'Cua personal',
        'QueueView refresh time' => 'Temps d\'actualitzaci� de la vista de cues',
        'Screen after new ticket' => 'Pantalla posterior a nou tiquet',
        'Select your screen after creating a new ticket.' => 'Seleccioni la pantalla a mostrar despr�s de crear un tiquet ',
        'Closed Tickets' => 'Tiquets tancats',
        'Show closed tickets.' => 'Mostrar tiquets tancats',
        'Max. shown Tickets a page in QueueView.' => 'Quantitat de Tiquets a mostrar en la Vista de Cua',
        'Watch notification' => '',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '',
        'Out Of Office' => '',
        'Select your out of office time.' => '',
        'CompanyTickets' => 'TiquetsCompanyia',
        'MyTickets' => 'ElsMeusTiquets',
        'New Ticket' => 'NouTiquet',
        'Create new Ticket' => 'Crear un nou tiquet',
        'Customer called' => 'Client cridat ',
        'phone call' => 'Cridada telef�nica',
        'Reminder Reached' => '',
        'Reminder Tickets' => '',
        'Escalated Tickets' => '',
        'New Tickets' => '',
        'Open Tickets / Need to be answered' => '',
        'Tickets which need to be answered!' => '',
        'All new tickets!' => '',
        'All tickets which are escalated!' => '',
        'All tickets where the reminder date has reached!' => '',
        'Responses' => 'Respostes',
        'Responses <-> Queue' => 'Respostes <-> Cues',
        'Auto Responses' => 'Respostes Autom�tiques',
        'Auto Responses <-> Queue' => 'Respostes Autom�tiques <-> Cues',
        'Attachments <-> Responses' => 'Adjunts <-> Respostes',
        'History::Move' => 'Tiquet mogut a la cua "%s" (%s) de la cua "%s" (%s).',
        'History::TypeUpdate' => 'Tipus actualitzat a %s (ANEU=%s).',
        'History::ServiceUpdate' => 'Servei actualitzat a %s (ANEU=%s).',
        'History::SLAUpdate' => 'SLA actualitzada a %s (ANEU=%s).',
        'History::NewTicket' => 'Nou tiquet [s] creat (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'Seguiment per a [s]. %s',
        'History::SendAutoReject' => 'Rebuig autom�tic enviat a "%s".',
        'History::SendAutoReply' => 'Resposta autom�tica enviada a "%s".',
        'History::SendAutoFollowUp' => 'Seguiment autom�tic enviat a "%s".',
        'History::Forward' => 'Reexpedit a "%s".',
        'History::Bounce' => 'Reexpedit a "%s".',
        'History::SendAnswer' => 'Correu enviat a "%s".',
        'History::SendAgentNotification' => '"%s"-notificaci� enviada a "%s".',
        'History::SendCustomerNotification' => 'Notificaci�; enviada a "%s".',
        'History::EmailAgent' => 'Correu enviat al agent.',
        'History::EmailCustomer' => 'Afegit correu. %s',
        'History::PhoneCallAgent' => 'El agent va cridar al client.',
        'History::PhoneCallCustomer' => 'El client va cridar.',
        'History::AddNote' => 'Anota afegida (%s)',
        'History::Lock' => 'Tiquet bloquejat.',
        'History::Unlock' => 'Tiquet desbloquejat.',
        'History::TimeAccounting' => '%s unitat(s) de temps comptabilitzades. Nou total : %s unitat(s) de temps.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Actualitzat: %s',
        'History::PriorityUpdate' => 'Canviar prioritat de "%s" (%s) a "%s" (%s).',
        'History::OwnerUpdate' => 'El nou propietari �s "%s" (ID=%s).',
        'History::LoopProtection' => 'Protecci� de lla�! NO es va enviar auto-resposta a "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Actualitzat: %s',
        'History::StateUpdate' => 'Antic: "%s" Nou: "%s"',
        'History::TicketFreeTextUpdate' => 'Actualitzat: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Sol�licitud de client per web.',
        'History::TicketLinkAdd' => 'Afegit enlla� al tiquet "%s".',
        'History::TicketLinkDelete' => 'Eliminat enlla� al tiquet "%s".',
        'History::Subscribe' => 'Subscriure\'s',
        'History::Unsubscribe' => 'Cancel�lar subscripci�',

        # Template: AAAWeekDay
        'Sun' => 'Diu',
        'Mon' => 'Dil',
        'Tue' => 'Dim',
        'Wed' => 'DiM',
        'Thu' => 'Dij',
        'Fri' => 'Div',
        'Sat' => 'Dis',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'gesti� d\'adjunts',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Gesti� de respostes autom�tiques',
        'Response' => 'Resposta',
        'Auto Response From' => 'Resposta autom�tica de ',
        'Note' => 'Nota',
        'Useable options' => 'Opcions accessibles',
        'To get the first 20 character of the subject.' => 'Per a obtenir els primers 20 car�cters de l\'assumpte.',
        'To get the first 5 lines of the email.' => 'Per a obtenir les primeres 5 l�nies del correu.',
        'To get the realname of the sender (if given).' => 'Per a obtenir el nom real del remitent (si existeix).',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'Per a obtenir l\'atribut de l\'article (p.e.,
(<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> i <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Opcions de dades de l\'actual usuari client (p.e., <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Opcions del propietari del tiquet (p.e., <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Opcions del responsable del tiquet (p.e., <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'Opcions de l\'actual usuari qui va requerir aquesta acci� (p.e., <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'Opcions de dades del tiquet (p.e., <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Opcions de configuraci� (p.e., <OTRS_CONFIG_HttpType>).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Administraci� de Client Companyia',
        'Search for' => 'Cercar per',
        'Add Customer Company' => 'Agregar Client Companyia',
        'Add a new Customer Company.' => 'Agregar un nou Client Companyia',
        'List' => 'Llista',
        'This values are required.' => 'Aquests valors s�n obligatoris',
        'This values are read only.' => 'Aquests valors s�n nom�s de lectura',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => 'El missatge que s\'estava redactant ha estat tancat.  Sortint.',
        'This window must be called from compose window' => 'Aquesta finestra ha de ser cridada des de la finestra de redacci�',
        'Customer User Management' => 'Gesti� de clients',
        'Add Customer User' => 'Agregar Client Usuari',
        'Source' => 'Origen',
        'Create' => 'Crear',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'El client necessita tenir una hist�ria i connectar-se via panell de clients',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'Clients <-> Gesti� de Grups',
        'Change %s settings' => 'Canviar %s especificacions',
        'Select the user:group permissions.' => 'Seleccionar els permisos d\'usuari:grup',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Si no se selecciona alguna cosa, no haur� permisos en aquest grup (Els tiquets no estaran disponibles per a aquest client).',
        'Permission' => 'Permisos',
        'ro' => 'ro',
        'Read only access to the ticket in this group/queue.' => 'Acc�s de nom�s lectura als tiquets en aquest grup/cua.',
        'rw' => 'rw',
        'Full read and write access to the tickets in this group/queue.' => 'Acc�s complet de lectura i escriptura als tiquets en aquest grup/cua.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Clients <-> Gesti� de serveis',
        'CustomerUser' => 'UsuariClient',
        'Service' => 'Servei',
        'Edit default services.' => 'Editar serveis predeterminats',
        'Search Result' => 'Resultat de la recerca',
        'Allocate services to CustomerUser' => 'Assignar serveis a clients',
        'Active' => 'Actiu',
        'Allocate CustomerUser to service' => 'Assignar clients a serveis',

        # Template: AdminEmail
        'Message sent to' => 'Missatge enviat a',
        'A message should have a subject!' => 'Els missatges han de tenir assumpte!',
        'Recipents' => 'Destinataris',
        'Recipients' => 'Destinataris',
        'Body' => 'Cos',
        'Send' => 'Enviar',

        # Template: AdminGenericAgent
        'GenericAgent' => 'AgentGen�ric',
        'Job-List' => 'Llista de Tasques',
        'Last run' => '�ltima execuci�',
        'Run Now!' => 'Executar ara',
        'x' => 'x',
        'Save Job as?' => 'Guardar Tasca com?',
        'Is Job Valid?' => '�s una tasca V�lida?',
        'Is Job Valid' => '�s una tasca V�lida',
        'Schedule' => 'Horari',
        'Currently this generic agent job will not run automatically.' => '',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Recerca de text en Article (ex. "Mar*in" or "Baue*") ',
        '(e. g. 10*5155 or 105658*)' => '(ex: 10*5155 o 105658*)',
        '(e. g. 234321)' => '(ex: 234321)',
        'Customer User Login' => 'Identificador del client',
        '(e. g. U5150)' => '(ex: U5150)',
        'SLA' => 'SLA',
        'Agent' => 'Agent',
        'Ticket Lock' => 'Tiquet Bloquejat',
        'TicketFreeFields' => 'CampsLliuresDeTiquet',
        'Create Times' => 'Temps de Creaci�',
        'No create time settings.' => 'No hi ha valors per a temps de creaci�',
        'Ticket created' => 'Tiquet creat',
        'Ticket created between' => 'Tiquet creat entre',
        'Close Times' => 'Temps tancats',
        'No close time settings.' => 'Sense configuraci� de temps tancat',
        'Ticket closed' => 'Tiquet tancat',
        'Ticket closed between' => 'Tiquet tancat entre',
        'Pending Times' => 'Temps Pendents',
        'No pending time settings.' => 'No hi ha valors per a temps de pendent',
        'Ticket pending time reached' => 'Temps de Pendent del Tiquet arribat',
        'Ticket pending time reached between' => 'Temps de Pendent del Tiquet arribat entre',
        'Escalation Times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - First Response Time' => 'Escalat - Temps per a Primera Resposta',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - Update Time' => 'Escalat - Temps per a Actualitzaci�',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - Solution Time' => 'Escalat - Temps per a Soluci�',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'New Service' => 'Nou servei',
        'New SLA' => 'Nova SLA',
        'New Priority' => 'Nova prioritat',
        'New Queue' => 'Nova cua',
        'New State' => 'Nou estat',
        'New Agent' => 'Nou Agent',
        'New Owner' => 'Nou Propietari',
        'New Customer' => 'Nou Client',
        'New Ticket Lock' => 'Nou bloqueig de tiquet',
        'New Type' => 'Nou tipus',
        'New Title' => 'Nou t�tol',
        'New TicketFreeFields' => 'Nou CampsLliuresDeTiquet',
        'Add Note' => 'Afegir Nota',
        'Time units' => 'Unitats de temps',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'S\'executar� el comandament. ARG%[0] el nombre del tiquet. ARG%[0] l\'id del tiquet.',
        'Delete tickets' => 'Eliminar tiquets',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Av�s! Aquests tiquets seran eliminats de la base de dades! Aquests tiquets es perdran!',
        'Send Notification' => 'Enviar Notificaci�',
        'Param 1' => 'Par�metre 1',
        'Param 2' => 'Par�metre 2',
        'Param 3' => 'Par�metre 3',
        'Param 4' => 'Par�metre 4',
        'Param 5' => 'Par�metre 5',
        'Param 6' => 'Par�metre 6',
        'Send agent/customer notifications on changes' => '',
        'Save' => 'Guardar',
        '%s Tickets affected! Do you really want to use this job?' => '%s Tiquets Modificats! Realment desitja utilitzar aquesta tasca?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '',
        'Group Management' => 'Administraci� de grups',
        'Add Group' => 'Afegir Grup',
        'Add a new Group.' => 'Afegir nou grup',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'El grup admin �s per a usar l\'�rea d\'administraci� i el grup stats per a usar l\'�rea estadisticas.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crear nous grups per a manipular els permisos d\'acc�s per diferents grups d\'agent (exemple: departament de compra, departament de suport, departament de vendes,...).',
        'It\'s useful for ASP solutions.' => 'Aix� �s �til per a solucions ASP.',

        # Template: AdminLog
        'System Log' => 'Traces del Sistema',
        'Time' => 'Temps',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Gesti� de comptes de correu',
        'Host' => 'Amfitri�',
        'Trusted' => 'Es pot confiar',
        'Dispatching' => 'Remetent',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Tots els correus d\'entrada seran enviats a la cua seleccionada',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Si es pot confiar en el seu compte, els camps X-OTRS ja existents en la cap�alera en el moment de l\'arribada (per a prioritat, ...) s\'utilitzaran! El filtre PostMaster s\'utilitzar� de totes maneres.',

        # Template: AdminNavigationBar
        'Users' => 'Usuaris',
        'Groups' => 'Grups',
        'Misc' => 'Miscel�l�nies',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Gesti� de Notificacions',
        'Add Notification' => '',
        'Add a new Notification.' => '',
        'Name is required!' => 'Ha d\'especificar nom!',
        'Event is required!' => '',
        'A message should have a body!' => 'Els missatges han de tenir contingut',
        'Recipient' => '',
        'Group based' => '',
        'Agent based' => '',
        'Email based' => '',
        'Article Type' => '',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '',
        'Body match' => '',
        'Notifications are sent to an agent or a customer.' => 'Les notificacions se li envian a un agent o client',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => 'Notificacions',

        # Template: AdminPackageManager
        'Package Manager' => 'Gestor de paquets',
        'Uninstall' => 'Desinstal�lar',
        'Version' => 'Version',
        'Do you really want to uninstall this package?' => 'Segur que desitja desinstal�lar aquest paquet?',
        'Reinstall' => 'Reinstal�lar',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Realment desitja reinstal�lar aquest paquet (tots els canvis manuals es perdran)?',
        'Continue' => 'Continua',
        'Install' => 'Instal�lar',
        'Package' => 'Paquet',
        'Online Repository' => 'Repositori en l�nia',
        'Vendor' => 'Venedor',
        'Module documentation' => '',
        'Upgrade' => 'Actualitzer',
        'Local Repository' => 'Repositori Local',
        'Status' => 'Estat',
        'Overview' => 'Resum',
        'Download' => 'Descarregar',
        'Rebuild' => 'Reconstruir',
        'ChangeLog' => 'CanviLog',
        'Date' => 'Data',
        'Filelist' => 'LlistaFitxer',
        'Download file from package!' => 'Descarregar arxiu del paquet!',
        'Required' => 'Requerit',
        'PrimaryKey' => 'ClauPrim�ria',
        'AutoIncrement' => 'AutoIncrementar',
        'SQL' => 'SQL',
        'Diff' => 'Diff',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Registre de rendiment',
        'This feature is enabled!' => 'Aquesta caracter�stica est� habilitada',
        'Just use this feature if you want to log each request.' => 'Usi aquesta caracter�stica nom�s si desitja registrar cada petici�.',
        'Activating this feature might affect your system performance!' => '',
        'Disable it here!' => 'Desactivar aqu�!',
        'This feature is disabled!' => 'Aquesta caracter�stica est� desactivada!',
        'Enable it here!' => 'Activar aqu�',
        'Logfile too large!' => 'Registre molt gran',
        'Logfile too large, you need to reset it!' => 'Registre molt gran, necessita reinicialitzar-lo!',
        'Range' => 'Rang',
        'Interface' => 'Interf�cie',
        'Requests' => 'Sol�licituds',
        'Min Response' => 'Resposta M�nima',
        'Max Response' => 'Resposta M�xima',
        'Average Response' => 'Resposta Promig',
        'Period' => 'Per�ode',
        'Min' => 'M�n',
        'Max' => 'M�x',
        'Average' => 'Promig',

        # Template: AdminPGPForm
        'PGP Management' => 'Administraci� PGP',
        'Result' => 'Resultat',
        'Identifier' => 'Identificador',
        'Bit' => 'Bit',
        'Key' => 'Clau',
        'Fingerprint' => 'Empremta digital',
        'Expires' => 'Expira',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'D\'aquesta forma pot editar directament l\'anell de Claus configurat en SysConfig',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Gesti� del filtre PostMaster',
        'Filtername' => 'NombreFiltre',
        'Stop after match' => '',
        'Match' => 'Coincidir',
        'Value' => 'Valor',
        'Set' => 'Ajustar',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Classificar o filtrar correus entrants basat en el camp X-Headers del correu! Pot utilitzar expressions regulars.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Si vol fer coincidir nom�s l\'adre�a de correu, usi EMAILADDRESS:info@example.com en el camp From, To o Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Si utilitza una expressi� regular, pot tamb� usar el valor trobat en () com [***] en \'Set\'.',

        # Template: AdminPriority
        'Priority Management' => 'Gesti� de prioritat',
        'Add Priority' => 'Afegir prioritat',
        'Add a new Priority.' => 'Afegir una nova prioritat',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'Cua <-> Gesti� de respostes autom�tiques',
        'settings' => '',

        # Template: AdminQueueForm
        'Queue Management' => 'Gesti� de Cues',
        'Sub-Queue of' => 'Sub-cua de',
        'Unlock timeout' => 'Temps per a desbloqueig autom�tic',
        '0 = no unlock' => '0 = sense bloqueig',
        'Only business hours are counted.' => 'Nom�s es conta l\'horari laboral',
        '0 = no escalation' => '0 = sense escalat',
        'Notify by' => 'Notificat per',
        'Follow up Option' => 'Opci� de seguiment',
        'Ticket lock after a follow up' => 'Bloquejar un tiquet despr�s del seguiment',
        'Systemaddress' => 'Adreces de correu del sistema ',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Si un agent bloqueja un tiquet i ell/ella no envia una resposta en aquest temps, el tiquet ser� desbloquejat autom�ticament',
        'Escalation time' => 'Temps d\'escalat',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Si un tiquet no ha estat respost en aquest temps, nom�s aquest tiquet es mostrar�',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Si el tiquet est� tancat i el client envia un seguiment al mateix, aquest ser� bloquejat per a l\'antic propietari',
        'Will be the sender address of this queue for email answers.' => 'Ser� l\'adre�a de l\'emissor en aquesta cua per a respostes per correu.',
        'The salutation for email answers.' => 'Salutaci� per a les respostes per correu.',
        'The signature for email answers.' => 'Signatura per a respostes per correu.',
        'Customer Move Notify' => 'Notificar al Client al Moure',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS envia una notificaci� per correu si el tiquet es mou',
        'Customer State Notify' => 'Notificaci� d\'estat al Client',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS envia una notificaci� per correu al client si l\'estat del tiquet canvia',
        'Customer Owner Notify' => 'Notificar al propietari al Moure',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS envia una notificaci� per correu al client si el propietari del tiquet canvia',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'Respostes <-> Gesti� de Cues',

        # Template: AdminQueueResponsesForm
        'Answer' => 'Respondre',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'Respostes <-> Gesti� d\'Annexos',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Gesti� de Respostes',
        'A response is default text to write faster answer (with default text) to customers.' => 'Una resposta �s el text per defecte per a escriure respostes m�s r�pid (amb el text per defecte) als clients.',
        'Don\'t forget to add a new response a queue!' => 'No oblidi incloure una nova resposta en la cua!',
        'The current ticket state is' => 'L\'estat actual del tiquet �s',
        'Your email address is new' => 'La seva adre�a de correu �s nova',

        # Template: AdminRoleForm
        'Role Management' => 'Gesti� de Rols',
        'Add Role' => 'Afegir rol',
        'Add a new Role.' => 'Afegir un rol nou',
        'Create a role and put groups in it. Then add the role to the users.' => 'Crea un rol i col�loca grups en el mateix. Despr�s afegix el rol als usuaris.',
        'It\'s useful for a lot of users and groups.' => '�s �til per a gestionar molts usuaris i grups.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'Rols <-> Gesti� de Grups',
        'move_into' => 'moure_a',
        'Permissions to move tickets into this group/queue.' => 'Perm�s per a moure tiquets a aquest grup/cua',
        'create' => 'crear',
        'Permissions to create tickets in this group/queue.' => 'Perm�s per a crear tiquets en aquest grup/cua',
        'owner' => 'propietari',
        'Permissions to change the ticket owner in this group/queue.' => 'Perm�s per a canviar el propietari del tiquet en aquest grup/cua',
        'priority' => 'prioritat',
        'Permissions to change the ticket priority in this group/queue.' => 'Perm�s per a canviar la prioritat del tiquet en aquest grup/cua',

        # Template: AdminRoleGroupForm
        'Role' => 'Rol',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'Rols <-> Gesti� d\'Usuaris',
        'Select the role:user relations.' => 'Seleccionar les relacions Rol:Client',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Gesti� de salutacions',
        'Add Salutation' => 'Afegir salutaci�',
        'Add a new Salutation.' => 'Afegir una salutaci� nova',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' => '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'SQL',
        'Go' => 'Anar',
        'Select Box Result' => 'Seleccioni tipus de resultat',

        # Template: AdminService
        'Service Management' => 'Gesti� de serveis',
        'Add Service' => 'Afegir servei',
        'Add a new Service.' => 'Afegir un servei nou',
        'Sub-Service of' => 'Sub-Servei de',

        # Template: AdminSession
        'Session Management' => 'Gesti� de sessions',
        'Sessions' => 'Sessions',
        'Uniq' => '�nic',
        'Kill all sessions' => 'Finalitzar totes les sessions',
        'Session' => 'Sessi�',
        'Content' => 'Contingut',
        'kill session' => 'Finalitzar una sessi�',

        # Template: AdminSignatureForm
        'Signature Management' => 'Gesti� de signatures',
        'Add Signature' => 'Afegir signatura',
        'Add a new Signature.' => 'Afegir una signatura nova',

        # Template: AdminSLA
        'SLA Management' => 'Gesti� de SLA',
        'Add SLA' => 'Afegir SLA',
        'Add a new SLA.' => 'Afegir una SLA nova',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'Gesti� S/MIME',
        'Add Certificate' => 'Afegir certificat',
        'Add Private Key' => 'Afegir clau privada',
        'Secret' => 'Secret',
        'Hash' => 'Hash',
        'In this way you can directly edit the certification and private keys in file system.' => 'D\'aquesta forma pot editar directament la certificaci� i claus privades en el sistema de fitxers.',

        # Template: AdminStateForm
        'State Management' => 'Gesti� d\'estat',
        'Add State' => 'Afegir estat',
        'Add a new State.' => 'Afegir un estat nou',
        'State Type' => 'Tipus d\'estat',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Recordi tamb� actualitzar els estats en el seu arxiu Kernel/Config.pm!',
        'See also' => 'Vegi tamb�',

        # Template: AdminSysConfig
        'SysConfig' => 'SysConfig',
        'Group selection' => 'Selecci� de Grup',
        'Show' => 'Mostrar',
        'Download Settings' => 'Descarregar Configuraci�',
        'Download all system config changes.' => 'Descarregar tots els canvis de configuraci�',
        'Load Settings' => 'Carregar Configuraci�',
        'Subgroup' => 'Subgrup',
        'Elements' => 'Elements',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Opcions de Configuraci�',
        'Default' => 'Predeterminat',
        'New' => 'Nou',
        'New Group' => 'Nou grup',
        'Group Ro' => 'Grup Ro',
        'New Group Ro' => 'Nou Grup Ro',
        'NavBarName' => 'NomBarNav',
        'NavBar' => 'BarNav',
        'Image' => 'Imatge',
        'Prio' => 'Prio',
        'Block' => 'Bloquejar',
        'AccessKey' => 'ClauAcc�s',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Gesti� d\'adreces de correu del sistema',
        'Add System Address' => 'Afegir adre�a del sistema',
        'Add a new System Address.' => 'Afegir una adre�a del sistema nova',
        'Realname' => 'Nom',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Tots els missatges entrants amb aquest "correu" (To:) seran enviats a la cua seleccionada!',

        # Template: AdminTypeForm
        'Type Management' => 'Gesti� de tipus',
        'Add Type' => 'Afegir tipus',
        'Add a new Type.' => 'Afegir un tipus nou',

        # Template: AdminUserForm
        'User Management' => 'Gesti� d\'usuaris',
        'Add User' => 'Afegir usuari',
        'Add a new Agent.' => 'Afegir un usuari nou',
        'Login as' => 'Connectar-se com',
        'Firstname' => 'Nom',
        'Lastname' => 'Cognom',
        'Start' => 'Comen�ar',
        'End' => '',
        'User will be needed to handle tickets.' => 'Es necessita un usuari per a manipular els tiquets.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'No oblidi afegir els nous usuaris als grups i/o rols',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'Usuaris <-> Gesti� de Grups',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Llibreta d\'Adreces',
        'Return to the compose screen' => 'Tornar a la pantalla de redacci�',
        'Discard all changes and return to the compose screen' => 'Descartar tots els canvis i tornar a la pantalla de redacci�',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerSearch

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => '',

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

        # Template: AgentInfo
        'Info' => 'Informaci�',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Enlla�ar l\'objecte: %s',
        'Object' => 'Objecte',
        'Link Object' => 'Enlla�ar Objecte',
        'with' => '',
        'Select' => 'Seleccionar',
        'Unlink Object: %s' => 'Llevar enlla� de l\'objecte: %s',

        # Template: AgentLookup
        'Lookup' => 'Cercar',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Verificaci� Ortogr�fica',
        'spelling error(s)' => 'errors gramaticals',
        'or' => 'o',
        'Apply these changes' => 'Aplicar aquests canvis',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Segur que desitja eliminar aquest objecte?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'Seleccioni les restriccions per a caracteritzar l\'estad�stica',
        'Fixed' => 'Fix',
        'Please select only one element or turn off the button \'Fixed\'.' => 'Per favor seleccioni un element de desactivi el bot� \'Fix\'',
        'Absolut Period' => 'Per�ode Absolut',
        'Between' => 'Entre',
        'Relative Period' => 'Per�ode Relatiu',
        'The last' => 'L\'�ltim',
        'Finish' => 'Finalitzar',
        'Here you can make restrictions to your stat.' => 'Aqu� pot declarar restriccions a les seves estad�stiques.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Si elimina la marca en la casella "Fix", l\'agent que genera l\'estad�stica pot canviar els atributs de l\'element corresponent',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Insereixi les especificacions ordin�ries',
        'Permissions' => 'Permisos',
        'Format' => 'Format',
        'Graphsize' => 'TamanyGr�fic',
        'Sum rows' => 'Sumar files',
        'Sum columns' => 'Sumar columnes',
        'Cache' => 'Mem�ria cau',
        'Required Field' => 'Camps obligatoris',
        'Selection needed' => 'Selecci� necess�ria',
        'Explanation' => 'Explicaci�',
        'In this form you can select the basic specifications.' => 'En aquesta pantalla pot seleccionar les especificacions b�siques',
        'Attribute' => 'Atribut',
        'Title of the stat.' => 'T�tol de l\'estad�stica',
        'Here you can insert a description of the stat.' => 'Aqu� pot inserir una descripci� de l\'estad�stica.',
        'Dynamic-Object' => 'Objecte-Din�mic',
        'Here you can select the dynamic object you want to use.' => 'Aqu� pot seleccionar l\'element din�mic que desitgi utilitzar',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(Nota: Dep�n de la seva instal�laci� quants objectes din�mics pot utilitzar)',
        'Static-File' => 'Arxiu-Est�tic',
        'For very complex stats it is possible to include a hardcoded file.' => 'Per a una estad�stica molt complexa �s possible incloure un arxiu prefixat',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'Si un nou arxiu prefixat est� disponible, aquest atribut se li mostrar� i pot seleccionar un',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Configuraci� de permisos. Pot seleccionar un o m�s grups per a fer visible les estad�stiques configurades a agents distints',
        'Multiple selection of the output format.' => 'Selecci� m�ltiple del format de sortida',
        'If you use a graph as output format you have to select at least one graph size.' => 'Si utilitza un gr�fic com format de sortida ha de seleccionar almenys una tamany de gr�fic.',
        'If you need the sum of every row select yes' => 'Si necessita la suma de cada fila seleccioni Si',
        'If you need the sum of every column select yes.' => 'Si necessita la suma de cada columna seleccioni Si',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'La majoria de les estad�stiques poden ser conservades en mem�ria cau. Aix� accelera la presentaci� d\'aquesta estad�stica.',
        '(Note: Useful for big databases and low performance server)' => '(Nota: �til per a bases de dades grans i servidors de baix rendiment)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Amb una estad�stica inv�lida, no �s possible generar estad�stiques.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'Aix� �s �til si desitja que ning� pugui obtenir el resultat d\'una estad�stica o la mateixa encara no est� configurada ',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'Seleccioni els elements per als valors de la s�rie',
        'Scale' => 'Escala',
        'minimal' => 'm�nim',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Recordi, que l\'escala per als valors de la s�rie necessita ser major que l\'escala per a l\'eix-X (ej: eix-X => Mes, ValorSeries => Any).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Aqu� pot seleccionar el valor de la s�rie. T� la possibilitat de seleccionar un o m�s elements. Despr�s pot seleccionar els atributs dels elements. Cada atribut ser� mostrat com un element de la s�rie. Si no selecciona cap atribut, tots els atributs de l\'element seran utilitzats si genera una estad�stica.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'Seleccioni l\'element, que ser� utilitzat en l\'eix-X',
        'maximal period' => 'per�ode m�xim',
        'minimal scale' => 'escala m�nima',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsImport
        'Import' => 'Importar',
        'File is not a Stats config' => 'L\'arxiu no �s una configuraci� d\'estad�stiques',
        'No File selected' => 'No hi ha arxiu seleccionat',

        # Template: AgentStatsOverview
        'Results' => 'Resultats',
        'Total hits' => 'Total de coincid�ncies',
        'Page' => 'P�gina',

        # Template: AgentStatsPrint
        'Print' => 'Imprimir',
        'No Element selected.' => 'No hi ha element seleccionat',

        # Template: AgentStatsView
        'Export Config' => 'Exportar Configuraci�',
        'Information about the Stat' => 'Informacions sobre l\'estad�stica',
        'Exchange Axis' => 'Intercanviar Eixos',
        'Configurable params of static stat' => 'Par�metre configurable d\'estad�stica est�tica',
        'No element selected.' => 'No hi ha element seleccionat',
        'maximal period from' => 'per�ode m�xim de',
        'to' => 'a',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'Amb l\'entrada i camps seleccionats pot configurar les estad�stiques a les seves necessitats. Que elements d\'estad�stiques pot editar dep�n de com hagi estat configurat per l\'administrador.',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => 'El missatge ha de tenes el destinatari To: !',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Necessita una adre�a de correu (exemple: client@exemple.com) en To:!',
        'Bounce ticket' => 'Tiquet retornat',
        'Ticket locked!' => 'Tiquet bloquejat!',
        'Ticket unlock!' => 'Tiquet desbloquejat!',
        'Bounce to' => 'Retornar a',
        'Next ticket state' => 'Nou estat del tiquet',
        'Inform sender' => 'Informar a l\'emissor',
        'Send mail!' => 'Enviar correu!',

        # Template: AgentTicketBulk
        'You need to account time!' => 'Necessita comptabilitzar el temps!',
        'Ticket Bulk Action' => 'Acci� m�ltiple amb Tiquets',
        'Spell Check' => 'Verificaci� ortogr�fica',
        'Note type' => 'Tipus de nota',
        'Next state' => 'Seg�ent estat',
        'Pending date' => 'Data pendent',
        'Merge to' => 'Fusionar a',
        'Merge to oldest' => '',
        'Link together' => '',
        'Link to Parent' => '',
        'Unlock Tickets' => 'Desbloquejar Tiquets',

        # Template: AgentTicketClose
        'Ticket Type is required!' => '',
        'A required field is:' => '',
        'Close ticket' => 'Tancar el tiquet',
        'Previous Owner' => 'Propietari Anterior',
        'Inform Agent' => 'Notificar Agent',
        'Optional' => 'Opcional',
        'Inform involved Agents' => 'Notificar Agents involucrats',
        'Attach' => 'Annex',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => 'El missatge ha de ser verificat ortograficamente!',
        'Compose answer for ticket' => 'Redacti una resposta al tiquet',
        'Pending Date' => 'Data pendent',
        'for pending* states' => 'per a estats pendents*',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Canviar client del tiquet',
        'Set customer user and customer id of a ticket' => 'Assignar agent i client d\'un tiquet',
        'Customer User' => 'Client',
        'Search Customer' => 'Recerques del client',
        'Customer Data' => 'Informaci� del client',
        'Customer history' => 'Hist�ria del client',
        'All customer tickets.' => 'Tots els tiquets d\'un client',

        # Template: AgentTicketEmail
        'Compose Email' => 'Redactar Correu',
        'new ticket' => 'nou tiquet',
        'Refresh' => 'Actualitzar',
        'Clear To' => 'C�pia Oculta a',
        'All Agents' => 'Tots els Agents',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Tipus d\'article',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Canviar el text lliure del tiquet',

        # Template: AgentTicketHistory
        'History of' => 'Hist�ria de',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => 'Necessita usar un nombre de tiquet! ',
        'Ticket Merge' => 'Fusionar tiquet',

        # Template: AgentTicketMove
        'Move Ticket' => 'Moure tiquet',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Afegir nota al tiquet',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => 'Temps de resposta',
        'Service Time' => 'Temps de servei',
        'Update Time' => 'Temps d\'actualitzaci�',
        'Solution Time' => 'Temps de resoluci�',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => 'Necessita almenys seleccionar un Tiquet!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => 'Filtre',
        'Change search options' => 'Canviar opcions de recerca',
        'Tickets' => 'Tiquets',
        'of' => 'de',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'Respondre',
        'Contact customer' => 'Contactar amb el client',
        'Change queue' => 'Canviar cua',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 'ordenar ascendent',
        'up' => 'amunt',
        'sort downward' => 'ordenar descendent',
        'down' => 'avall',
        'Escalation in' => 'Escalat en',
        'Locked' => 'Bloquejat',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Canviar el propietari del tiquet',

        # Template: AgentTicketPending
        'Set Pending' => 'Fixar pendent',

        # Template: AgentTicketPhone
        'Phone call' => 'Cridada telef�nica',
        'Clear From' => 'Esborrar de',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Text pla',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Informaci�-Tiquet',
        'Accounted time' => 'Temps comptabilitzat',
        'Linked-Object' => 'Objecte-enlla�at',
        'by' => 'per',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Canviar la prioritat del tiquet',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Tiquets mostrats',
        'Tickets available' => 'Tiquets disponibles',
        'All tickets' => 'Tots els tiquets',
        'Queues' => 'Cues',
        'Ticket escalation!' => 'Escalat de tiquet!',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Canviar responsable del tiquet',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Buscar tiquet',
        'Profile' => 'Perfil',
        'Search-Template' => 'Buscar-Plantilla',
        'TicketFreeText' => 'TextLliureTiquet',
        'Created in Queue' => 'Creat en Cua',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '',
        'No change time settings.' => '',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => 'Formulari de resultats',
        'Save Search-Profile as Template?' => 'Guardar perfil de recerca com plantilla?',
        'Yes, save it with name' => 'Si, guardar-lo amb nom',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'Text Complet',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => 'Expandir vista',
        'Collapse View' => 'Reduir vista',
        'Split' => 'Dividir',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => '',
        'Save filter settings as default' => '',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'Rastrejar',

        # Template: CustomerFooter
        'Powered by' => 'Funciona con',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => 'Identificador',
        'Lost your password?' => 'Va perdre la seva contrasenya',
        'Request new password' => 'Sol�licitar una nova contrasenya',
        'Create Account' => 'Crear Compte',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Benvingut %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Vegades',
        'No time settings.' => 'Sense especificaci� de data',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Faci clic aqui per a reportar un error!',

        # Template: Footer
        'Top of Page' => 'Inici de p�gina',

        # Template: FooterSmall

        # Template: Header
        'Home' => 'Inici',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Instal�lador-Web',
        'Welcome to %s' => 'Benvingut a %s',
        'Accept license' => 'Acceptar llic�ncia',
        'Don\'t accept license' => 'No acceptar llic�ncia',
        'Admin-User' => 'Usuari-Admin',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => 'Si la seva base de dades t� una contrasenya per a root, ha d\'introduir-la aqu�. Si no, deixi aquest camp en blanc. Per raons de seguretat �s recomanable posar una contrasenya a l\'usuari root. Per a m�s informaci� per favor refereixi\'s a la documentaci� de la seva base de dades.',
        'Admin-Password' => 'Contrasenya-Admin',
        'Database-User' => 'Usuari-Base de dades',
        'default \'hot\'' => 'per defecte \'hot\'',
        'DB connect host' => 'Amfitri� BD',
        'Database' => 'Base de dades',
        'Default Charset' => 'Joc de car�cters per defecte',
        'utf8' => 'utf8',
        'false' => 'fals',
        'SystemID' => 'ID de sistema',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(La identitat del sistema. Cada nombre de tiquet i cada id de sessi� http comen�a amb aquest nombre)',
        'System FQDN' => 'FQDN del sistema',
        '(Full qualified domain name of your system)' => '(Nom complet del domini del seu sistema)',
        'AdminEmail' => 'Correu de l\'administrador',
        '(Email of the system admin)' => '(correu de l\'administrador del sistema)',
        'Organization' => 'Organizaci�',
        'Log' => 'Tra�a',
        'LogModule' => 'M�dul de traces',
        '(Used log backend)' => '(Interf�cie de traces utilitzada)',
        'Logfile' => 'Arxiu de traces',
        '(Logfile just needed for File-LogModule!)' => '(Arxiu de traces nom�s necessari para File-LogModule)',
        'Webfrontend' => 'Interf�cie web',
        'Use utf-8 it your database supports it!' => 'Usar utf-8 si la seva base de dades ho permet!',
        'Default Language' => 'Idioma per defecte',
        '(Used default language)' => '(Idioma per defecte)',
        'CheckMXRecord' => 'Revisar registre MX',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Chequear registre MX d\'adreces utilitzades al respondre. No usar-lo si la m�quina amb OTRS est� darrere d\'una linea commutada $!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Per a poder utilitzar OTRS ha d\'escriure la seg�ent linea de comandos (Terminal/Shell) com root',
        'Restart your webserver' => 'Reinici� el seu servidor web',
        'After doing so your OTRS is up and running.' => 'Despr�s de fer aix� el seu OTRS estar� actiu i executant-se',
        'Start page' => 'P�gina d\'inici',
        'Your OTRS Team' => 'El seu equip OTRS',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'No t� autoritzaci�',

        # Template: Notify
        'Important' => 'Important',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'impr�s per',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'P�gina de prova de OTRS ',
        'Counter' => 'Comptador',

        # Template: Warning

        # Template: YUI

        # Misc
        'Edit Article' => 'Editar article',
        'Create Database' => 'Crear Base de dades',
        'Ticket Number Generator' => 'Generador de nombres de Tiquets',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificador de Ticker. Algunes persones agraden d\'usar per exemple \'Tiquet#\', \'Cridada#\' o \'ElMeuTiquet#\')',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'D\'aquesta forma pot editar directament les claus configurades en Kernel/Config.pm.',
        'Create new Phone Ticket' => 'Crear un nou Tiquet Telef�nic',
        'Symptom' => 'S�mptoma',
        'U' => 'A',
        'Site' => 'Ubicaci�',
        'Customer history search (e. g. "ID342425").' => 'Hist�ria de recerques del client (exemple: "ID342425").',
        'Can not delete link with %s!' => 'No es pot suprimir enlla� amb %s! ',
        'Close!' => 'Tancar!',
        'for agent firstname' => 'nom de l\'agent',
        'No means, send agent and customer notifications on changes.' => 'No, significa enviar als agents i clients notificacions al realitzar canvis.',
        'A web calendar' => 'Calendari Web',
        'to get the realname of the sender (if given)' => 'per a obtenir el nom de l\'emissor (si ho va proporcionar)',
        'OTRS DB Name' => 'Nom de la BD OTRS',
        'Notification (Customer)' => 'Notificaci� (Client)',
        'Select Source (for add)' => 'Seleccionar Font (per a afegir)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Opcions de la data del tiquet (ex. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => 'Objecte-fill',
        'Days' => 'Dies',
        'Queue ID' => 'ID de la Cua',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Opcions de configuraci� (ej: <OTRS_CONFIG_HttpType>)',
        'System History' => 'Hist�ria del Sistema',
        'customer realname' => 'Nom del client',
        'Pending messages' => 'Missatges pendents',
        'Modules' => 'M�duls',
        'for agent login' => 'login de l\'agent',
        'Keyword' => 'paraula clau',
        'Close type' => 'Tipus de tancament',
        'DB Admin User' => 'Usuari Admin de la BD',
        'for agent user id' => 'id de l\'agent',
        'Problem' => 'Problema',
        'Escalation' => 'Escalat',
        '"}' => '"}',
        'Order' => 'Ordenar',
        'next step' => 'pr�xim pas',
        'Follow up' => 'Seguiment',
        'Customer history search' => 'Hist�ria de recerques del client',
        'Admin-Email' => 'Correu-Admin',
        'Stat#' => '',
        'Incident Management (OTIC)' => 'Gesti� D\'Incid�ncies (OTIC)',
        'Create new database' => 'Crear nova base de dades',
        'ArticleID' => 'Identificador d\'article',
        'Keywords' => 'Paraules clau',
        'Ticket Escalation View' => 'Vista escalat de tiquet',
        'Today' => 'Avui',
        'No * possible!' => 'No * possible!',
        'Options ' => 'Opcions',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Opcions de l\'usuari actual qui ha sol�licitat aquesta acci� (ex.: &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => 'Missatge per al nou propietari',
        'to get the first 5 lines of the email' => 'per a obtenir les primeres 5 l�nies del correu',
        'Sort by' => 'Ordenat per',
        'OTRS DB Password' => 'Contrasenya per a BD de l\'usuari OTRS',
        'Last update' => 'Darrera actualitzaci�',
        'Tomorrow' => 'Dem�',
        'to get the first 20 character of the subject' => 'per a obtenir els primers 20 car�cters de l\'assumpte',
        'Select the customeruser:service relations.' => 'Seleccioni el client:relacions de serveis',
        'DB Admin Password' => 'Contrasenya de l\'administrador de la BD',
        'Drop Database' => 'Eliminar Base de dades',
        'Advisory' => 'Advertiment',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Aqu� pot definir l\'eix-x. Pot seleccionar un element usant la casella de selecci�. Despr�s ha de seleccionar dos o m�s atributs de l\'element. Si no selecciona cap, tots els atributs de l\'element s\'utilitzaran per a generar una estad�stica. Aix� com un nou atribut �s afegit des de l\'�ltima configuraci�',
        'FileManager' => 'Administrador d\'Arxius',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'Opcions de dades d\'usuari de l\'usuari actual (ex.: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'Tipus pendent',
        'Comment (internal)' => 'Comentari (intern)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Opcions del propietari del tiquet (ex.: &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'Minutes' => 'Minuts',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Opcions per a la informaci� de tiquet (ex.: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(Format de tiquet usat)',
        'Reminder' => 'Recordatori',
        'Incident' => 'Incident',
        'All Agent variables.' => 'Totes les variables d\'agent',
        ' (work units)' => ' (unitats de treball)',
        'Next Week' => 'Pr�xima setmana',
        'All Customer variables like defined in config option CustomerUser.' => 'Totes les variables de client com apareixen declarades en l\'opci� de configuraci� del client',
        'accept license' => 'acceptar llic�ncia',
        'for agent lastname' => 'cognom de l\'agent',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Opcions de l\'usuari actiu que sol�licita aquesta acci� (ex. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Missatges recordatoris',
        'Change users <-> roles settings' => 'Canviar Usuaris <-> Configuraci� de Rols',
        'Parent-Object' => 'Objecte-pare',
        'Of couse this feature will take some system performance it self!' => 'Evidentment aquesta caracter�stica afectar� al rendiment del sistema per si mateixa!',
        'Detail' => 'Detall',
        'Your own Ticket' => 'Els seus tiquets',
        'TicketZoom' => 'Detall del Tiquet',
        'Don\'t forget to add a new user to groups!' => 'No oblidi incloure l\'usuari en grups!',
        'Open Tickets' => 'Tiquets Oberts',
        'CreateTicket' => 'CrearTiquet',
        'You have to select two or more attributes from the select field!' => 'Ha de seleccionar dos o m�s atributs del camp seleccionat',
        'System Settings' => 'Configuraci� del sistema',
        'WebWatcher' => 'ObservadorWeb',
        'Hours' => 'Hores',
        'Finished' => 'Finalitzat',
        'Account Type' => 'Tipus compte',
        'D' => 'D',
        'All messages' => 'Tots els missatges',
        'System Status' => 'Estat del sistema',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Opcions per a la informaci� el tiquet (ex. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Artefact' => 'Artefacte',
        'Object already linked as %s.' => 'Objecte ja enlla�at com %s.',
        'A article should have a title!' => 'Els articles han de tenir t�tol',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Opcions de configuraci� (ex. &lt;OTRS_CONFIG_HttpType&gt;)',
        'All email addresses get excluded on replaying on composing and email.' => '',
        'don\'t accept license' => 'no accepto la llic�ncia',
        'A web mail client' => 'Un client de correu web',
        'Compose Follow up' => 'Redactar seguiment',
        'WebMail' => 'Correu web',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Opcions del propietari del tiquet (ex. <OTRS_OWNER_UserFirstname>)',
        'DB Type' => 'Tipus de BD',
        'kill all sessions' => 'Finalitzar totes les sessions',
        'to get the from line of the email' => 'per a obtenir la l�nia del registre from: del correu',
        'Solution' => 'Soluci�',
        'Package not correctly deployed, you need to deploy it again!' => 'El paquet no ha estat correctament instal�lat, necessita instal�lar-lo novament!',
        'QueueView' => 'Veure la cua',
        'Select Box' => 'Finestra de selecci� ',
        'New messages' => 'Nou missatge',
        'Can not create link with %s!' => 'No es pot crear enlla� amb %s! ',
        'Linked as' => 'Enlla�at com',
        'Welcome to OTRS' => 'Benvingut a OTRS',
        'modified' => 'modificat',
        'Delete old database' => 'Eliminar la base de dades antiga',
        'A web file manager' => 'Administrador web d\'arxius',
        'Have a lot of fun!' => 'Gaudeixi\'l!',
        'send' => 'enviar',
        'Send no notifications' => 'No enviar notificacions',
        'Note Text' => 'Nota!',
        'POP3 Account Management' => 'Gesti� de compte POP3',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Opcions de dades d\'usuari del client actual (ex. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'System State Management' => 'Gesti� d\'estats del Sistema',
        'OTRS DB User' => 'Usuari de BD OTRS',
        'Mailbox' => 'B�stia',
        'PhoneView' => 'Vista telef�nica',
        'maximal period form' => 'm�xim per�ode del formulari',
        'TicketID' => 'Identificador de Tiquet',
        'Escaladed Tickets' => '',
        'closed with workaround' => 'tancat amb soluci� temporal',
        'Yes means, send no agent and customer notifications on changes.' => 'Si, significa no enviar notificacions als agents i clients al realitzar-se canvis.',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'El seu correu amb el tiquet nombre "<OTRS_TICKET>" va ser retornat a "<OTRS_BOUNCE_TO>". Contacti aquesta adre�a para mes informaci�',
        'Ticket Status View' => 'Veure l\'estat del tiquet ',
        'Modified' => 'Modificat',
        'Ticket selected for bulk action!' => 'Tiquet seleccionat per a acci� m�ltiple!',
    };
    # $$STOP$$
    return;
}

1;
