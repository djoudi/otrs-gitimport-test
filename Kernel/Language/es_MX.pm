# --
# Kernel/Language/es_MX.pm - provides Spanish language translation for Mexico
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: es_MX.pm,v 1.21 2010-10-13 13:24:33 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::es_MX;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.21 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Sat Jun 27 14:02:34 2009

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%D/%M/%Y - %T';
    $Self->{DateFormatLong}      = '%A, %D %B %Y - %T';
    $Self->{DateFormatShort}     = '%D/%M/%Y';
    $Self->{DateInputFormat}     = '%D/%M/%Y';
    $Self->{DateInputFormatLong} = '%D/%M/%Y - %T';
    $Self->{Separator}           = ';';

    $Self->{Translation} = {
        # Template: AAABase
        'Yes' => 'S�',
        'No' => 'No',
        'yes' => 's�',
        'no' => 'no',
        'Off' => 'Apagado',
        'off' => 'apagado',
        'On' => 'Encendido',
        'on' => 'encendido',
        'top' => 'inicio',
        'end' => 'fin',
        'Done' => 'Hecho',
        'Cancel' => 'Cancelar',
        'Reset' => 'Resetear',
        'last' => '�ltimo',
        'before' => 'antes',
        'day' => 'd�a',
        'days' => 'd�as',
        'day(s)' => 'd�a(s)',
        'hour' => 'hora',
        'hours' => 'horas',
        'hour(s)' => 'hora(s)',
        'minute' => 'minuto',
        'minutes' => 'minutos',
        'minute(s)' => 'minuto(s)',
        'month' => 'mes',
        'months' => 'meses',
        'month(s)' => 'mes(es)',
        'week' => 'semana',
        'week(s)' => 'semana(s)',
        'year' => 'a�o',
        'years' => 'a�os',
        'year(s)' => 'a�o(s)',
        'second(s)' => 'segundo(s)',
        'seconds' => 'segundos',
        'second' => 'segundo',
        'wrote' => 'escribi�',
        'Message' => 'Mensaje',
        'Error' => 'Error',
        'Bug Report' => 'Informe de errores',
        'Attention' => 'Atenci�n',
        'Warning' => 'Advertencia',
        'Module' => 'M�dulo',
        'Modulefile' => 'Archivo de m�dulo',
        'Subfunction' => 'Subfunci�n',
        'Line' => 'L�nea',
        'Setting' => 'Configuraci�n',
        'Settings' => 'Configuraciones',
        'Example' => 'Ejemplo',
        'Examples' => 'Ejemplos',
        'valid' => 'v�lido',
        'invalid' => 'inv�lido',
        '* invalid' => '* inv�lido',
        'invalid-temporarily' => 'temporalmente-inv�lido',
        ' 2 minutes' => ' 2 minutos',
        ' 5 minutes' => ' 5 minutos',
        ' 7 minutes' => ' 7 minutos',
        '10 minutes' => '10 minutos',
        '15 minutes' => '15 minutos',
        'Mr.' => 'Sr.',
        'Mrs.' => 'Sra.',
        'Next' => 'Siguiente',
        'Back' => 'Atr�s',
        'Next...' => 'Siguiente...',
        '...Back' => '...Regresar',
        '-none-' => '-ninguno-',
        'none' => 'ninguno',
        'none!' => 'ninguno',
        'none - answered' => 'ninguno - respondido',
        'please do not edit!' => 'Por favor, no lo modifique',
        'AddLink' => 'A�adir enlace',
        'Link' => 'Enlazar',
        'Unlink' => 'Desenlazar',
        'Linked' => 'Enlazado',
        'Link (Normal)' => 'Enlazar (Normal)',
        'Link (Parent)' => 'Enlazar (Padre)',
        'Link (Child)' => 'Enlazar (Hijo)',
        'Normal' => 'Normal',
        'Parent' => 'Padre',
        'Child' => 'Hijo',
        'Hit' => 'Acierto',
        'Hits' => 'Aciertos',
        'Text' => 'Texto',
        'Lite' => 'Reducida',
        'User' => 'Usuario',
        'Username' => 'Nombre de Usuario',
        'Language' => 'Idioma',
        'Languages' => 'Idiomas',
        'Password' => 'Contrase�a',
        'Salutation' => 'Saludo',
        'Signature' => 'Firma',
        'Customer' => 'Cliente',
        'CustomerID' => 'Identificador del cliente',
        'CustomerIDs' => 'Identificadores del cliente',
        'customer' => 'cliente',
        'agent' => 'agente',
        'system' => 'sistema',
        'Customer Info' => 'Informaci�n del Cliente',
        'Customer Company' => 'Compa��a del Cliente',
        'Company' => 'Compa��a',
        'go!' => 'ir',
        'go' => 'ir',
        'All' => 'Todo',
        'all' => 'todo',
        'Sorry' => 'Disculpe',
        'update!' => 'actualizar',
        'update' => 'actualizar',
        'Update' => 'Actualizar',
        'Updated!' => 'Actualizado',
        'submit!' => 'enviar',
        'submit' => 'enviar',
        'Submit' => 'Enviar',
        'change!' => 'modificar',
        'Change' => 'Modificar',
        'change' => 'modificar',
        'click here' => 'haga click aqu�',
        'Comment' => 'Comentario',
        'Valid' => 'V�lido',
        'Invalid Option!' => 'Opci�n Inv�lida',
        'Invalid time!' => 'Hora inv�lida.',
        'Invalid date!' => 'Fecha inv�lida.',
        'Name' => 'Nombre',
        'Group' => 'Grupo',
        'Description' => 'Descripci�n',
        'description' => 'descripci�n',
        'Theme' => 'Tema',
        'Created' => 'Creado',
        'Created by' => 'Creado por',
        'Changed' => 'Modificado',
        'Changed by' => 'Modificado por',
        'Search' => 'Buscar',
        'and' => 'y',
        'between' => 'entre',
        'Fulltext Search' => 'B�squeda de texto completo',
        'Data' => 'Datos',
        'Options' => 'Opciones',
        'Title' => 'T�tulo',
        'Item' => 'Art�culo',
        'Delete' => 'Borrar',
        'Edit' => 'Editar',
        'View' => 'Ver',
        'Number' => 'N�mero',
        'System' => 'Sistema',
        'Contact' => 'Contacto',
        'Contacts' => 'Contactos',
        'Export' => 'Exportar',
        'Up' => 'Arriba',
        'Down' => 'Abajo',
        'Add' => 'A�adir',
        'Added!' => 'Agregado.',
        'Category' => 'Categor�a',
        'Viewer' => 'Visor',
        'Expand' => 'Expandir',
        'Small' => 'Peque�o',
        'Medium' => 'Mediano',
        'Large' => 'Grande',
        'New message' => 'Mensaje nuevo',
        'New message!' => '�Mensaje nuevo!',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'Por favor, responda a este(os) ticket(s) para regresar a la vista normal de la fila.',
        'You got new message!' => 'Tiene un mensaje nuevo.',
        'You have %s new message(s)!' => 'Tiene %s mensaje(s) nuevo(s)',
        'You have %s reminder ticket(s)!' => 'Tiene %s recordatorio(s) de ticket',
        'The recommended charset for your language is %s!' => 'El juego de caracteres recomendado para su idioma es %s.',
        'Passwords doesn\'t match! Please try it again!' => 'Las contrase�as no coinciden. Por favor, intente nuevamente.',
        'Password is already in use! Please use an other password!' => 'La contrase�a ya se est� utilizando. Por favor, utilice otra.',
        'Password is already used! Please use an other password!' => 'La contrase�a ya fue usada. Por favor, utilice otra.',
        'You need to activate %s first to use it!' => 'Necesita activar %s primero para utilizarlo.',
        'No suggestions' => 'Sin sugerencias.',
        'Word' => 'Palabra',
        'Ignore' => 'Ignorar',
        'replace with' => 'reemplazar con',
        'There is no account with that login name.' => 'No existe una cuenta para ese nombre de usuario.',
        'Login failed! Your username or password was entered incorrectly.' => 'Inicio de sesi�n fallido. El nombre de usuario o contrase�a fue introducido incorrectamente.',
        'Please contact your admin' => 'Por favor, contacte a su administrador.',
        'Logout successful. Thank you for using OTRS!' => 'Sesi�n terminada satisfactoriamente. �Gracias por utilizar OTRS!',
        'Invalid SessionID!' => 'Identificador de sesi�n inv�lido.',
        'Feature not active!' => 'Funcionalidad inactiva.',
        'Notifications (Event)' => 'Notificaciones (Evento)',
        'Login is needed!' => 'Inicio de sesi�n requerido.',
        'Password is needed!' => 'Contrase�a requerida.',
        'License' => 'Licencia',
        'Take this Customer' => 'Utilizar este cliente',
        'Take this User' => 'Utilizar este usuario',
        'possible' => 'posible',
        'reject' => 'rechazar',
        'reverse' => 'revertir',
        'Facility' => 'Instalaci�n',
        'Pending till' => 'Pendiente hasta',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'No trabaje con el usuario 1 (cuenta del sistema). Cree usuarios nuevos.',
        'Dispatching by email To: field.' => 'Despachar por el campo Para: del correo electr�nico.',
        'Dispatching by selected Queue.' => 'Despachar por la fila seleccionada.',
        'No entry found!' => 'No se encontr� entrada alguna.',
        'Session has timed out. Please log in again.' => 'La sesi�n ha caducado. Por favor, con�ctese nuevamente.',
        'No Permission!' => 'No tiene Permiso.',
        'To: (%s) replaced with database email' => 'Para: (%s) sustituido con el correo electr�nico de la base de datos',
        'Cc: (%s) added database email' => 'Cc: (%s) a�adido a la base de datos de correo electr�nico',
        '(Click here to add)' => '(Haga click aqu� para a�adir)',
        'Preview' => 'Vista Previa',
        'Package not correctly deployed! You should reinstall the Package again!' => 'Paquete instalado incorrectamente. Debe reinstalar el paquete.',
        'Added User "%s"' => 'Usuario "%s a�adido"',
        'Contract' => 'Contrato',
        'Online Customer: %s' => 'Cliente Conectado: %s',
        'Online Agent: %s' => 'Agente Conectado: %s',
        'Calendar' => 'Calendario',
        'File' => 'Archivo',
        'Filename' => 'Nombre del archivo',
        'Type' => 'Tipo',
        'Size' => 'Tama�o',
        'Upload' => 'Subir',
        'Directory' => 'Directorio',
        'Signed' => 'Firmado',
        'Sign' => 'Firma',
        'Crypted' => 'Encriptado',
        'Crypt' => 'Encriptar',
        'Office' => 'Oficina',
        'Phone' => 'Tel�fono',
        'Fax' => 'Fax',
        'Mobile' => 'M�vil',
        'Zip' => 'CP',
        'City' => 'Ciudad',
        'Street' => 'Calle',
        'Country' => 'Pa�s',
        'Location' => 'Localidad',
        'installed' => 'instalado',
        'uninstalled' => 'desinstalado',
        'Security Note: You should activate %s because application is already running!' => 'Nota de seguridad: Debe activar %s porque la aplicaci�n ya est� ejecut�ndose',
        'Unable to parse Online Repository index document!' => 'Incapaz de interpretar el documento �ndice del Repositorio en L�nea',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'No hay paquetes para el Framework solicitado en este Repositorio en L�nea, pero hay paquetes para otros Frameworks',
        'No Packages or no new Packages in selected Online Repository!' => 'No hay paquetes o no hay paquetes nuevos en el Repositorio en L�nea seleccionado',
        'printed at' => 'impreso en',
        'Dear Mr. %s,' => 'Apreciable Sr. %s,',
        'Dear Mrs. %s,' => 'Apreciable Sra. %s,',
        'Dear %s,' => 'Apreciable %s,',
        'Hello %s,' => 'Hola %s,',
        'This account exists.' => 'Esta cuenta existe.',
        'New account created. Sent Login-Account to %s.' => 'Cuenta nueva creada. Cuenta de inicio de sesi�n enviada a %s.',
        'Please press Back and try again.' => 'Por favor, presione Atr�s e int�ntelo de nuevo.',
        'Sent password token to: %s' => 'Informaci�n de contrase�a enviada a: %s',
        'Sent new password to: %s' => 'Contrase�a nueva enviada a: %s',
        'Upcoming Events' => 'Eventos Pr�ximos',
        'Event' => 'Evento',
        'Events' => 'Eventos',
        'Invalid Token!' => 'Informaci�n inv�lida.',
        'more' => 'm�s',
        'For more info see:' => 'Para mas informaci�n vea:',
        'Package verification failed' => 'Fall� la verificaci�n del paquete',
        'Collapse' => 'Colapso',
        'News' => 'Noticias',
        'Product News' => 'Noticias de Productos',
        'Bold' => 'Negritas',
        'Italic' => 'Cursiva',
        'Underline' => 'Subrallado',
        'Font Color' => 'Color de la letra',
        'Background Color' => 'Color del fondo',
        'Remove Formatting' => 'Eliminar formato',
        'Show/Hide Hidden Elements' => 'Mostrar/Ocultar Elementos Ocultos',
        'Align Left' => 'Alinear a la izquierda',
        'Align Center' => 'Alinear al centro',
        'Align Right' => 'Alinear a la derecha',
        'Justify' => 'Justificar',
        'Header' => 'Encabezado',
        'Indent' => 'Aumentar sagr�a',
        'Outdent' => 'Reducir sangr�a',
        'Create an Unordered List' => 'Crear una Lista Desordenada',
        'Create an Ordered List' => 'Crear una Lista Ordenada',
        'HTML Link' => 'Enlace HTML',
        'Insert Image' => 'Insertar imagen',
        'CTRL' => 'CTRL',
        'SHIFT' => 'SHIFT',
        'Undo' => 'Deshacer',
        'Redo' => 'Rehacer',
        '7 Day Stats' => 'Estad�sticas Semanales',
        'Online' => 'En l�nea',
        'OTRS News' => 'Novedades de OTRS',
        'Database Backend' => 'Base de Datos',
        'This values are required.' => 'Estos valores son necesarios.',
        'This values are read only.' => 'Estos valores son de s�lo lectura.',
        'Customer Users <-> Services' => 'Clientes <-> Servicios',
        'PostMaster Mail Account' => 'Cuenta del Administrador del Correo',
        'PostMaster Filter' => 'Filtro del Administrador del Correo',

        # Template: AAAMonth
        'Jan' => 'Ene',
        'Feb' => 'Feb',
        'Mar' => 'Mar',
        'Apr' => 'Abr',
        'May' => 'May',
        'Jun' => 'Jun',
        'Jul' => 'Jul',
        'Aug' => 'Ago',
        'Sep' => 'Sep',
        'Oct' => 'Oct',
        'Nov' => 'Nov',
        'Dec' => 'Dic',
        'January' => 'Enero',
        'February' => 'Febrero',
        'March' => 'Marzo',
        'April' => 'Abril',
        'May_long' => 'Mayo',
        'June' => 'Junio',
        'July' => 'Julio',
        'August' => 'Agosto',
        'September' => 'Septiembre',
        'October' => 'Octubre',
        'November' => 'Noviembre',
        'December' => 'Diciembre',

        # Template: AAANavBar
        'Admin-Area' => '�rea-Admin',
        'Agent-Area' => '�rea-Agente',
        'Ticket-Area' => '�rea-Ticket',
        'Logout' => 'Cerrar Sesi�n',
        'Agent Preferences' => 'Preferencias del Agente',
        'Preferences' => 'Preferencias',
        'Agent Mailbox' => 'Buz�n del Agente',
        'Stats' => 'Estad�sticas',
        'Stats-Area' => 'Area de Estad�sticas',
        'Admin' => 'Administraci�n',
        'Customer Users' => 'Clientes',
        'Customer Users <-> Groups' => 'Clientes <-> Grupos',
        'Users <-> Groups' => 'Usuarios <-> Grupos',
        'Roles' => 'Roles',
        'Roles <-> Users' => 'Roles <-> Usuarios',
        'Roles <-> Groups' => 'Roles <-> Grupos',
        'Salutations' => 'Saludos',
        'Signatures' => 'Firmas',
        'Email Addresses' => 'Direcciones de Correo',
        'Notifications' => 'Notificaciones',
        'Category Tree' => 'Arbol de Categor�as',
        'Admin Notification' => 'Notificaci�n del Administrador',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Las preferencias se actualizaron satisfactoriamente.',
        'Mail Management' => 'Administraci�n de Correo',
        'Frontend' => 'Interfaz de usuario',
        'Other Options' => 'Otras Opciones',
        'Change Password' => 'Cambiar Contrase�a',
        'New password' => 'Nueva contrase�a',
        'New password again' => 'Repetir Contrase�a',
        'Select your QueueView refresh time.' => 'Seleccione su tiempo de actualizaci�n de la vista de filas.',
        'Select your frontend language.' => 'Seleccione su idioma de trabajo.',
        'Select your frontend Charset.' => 'Seleccione su juego de caracteres.',
        'Select your frontend Theme.' => 'Seleccione su tema.',
        'Select your frontend QueueView.' => 'Seleccione su Vista de Filas.',
        'Spelling Dictionary' => 'Diccionario Ortogr�fico',
        'Select your default spelling dictionary.' => 'Seleccione su diccionario por defecto.',
        'Max. shown Tickets a page in Overview.' => 'Cantidad m�xima de Tickets a mostrar en vista Resumen.',
        'Can\'t update password, your new passwords do not match! Please try again!' => 'No se puede actualizar la contrase�a, su nueva contrase�a no coincide. Por favor reint�ntelo.',
        'Can\'t update password, invalid characters!' => 'No se puede actualizar la contrase�a, caracteres inv�lidos',
        'Can\'t update password, must be at least %s characters!' => 'No se puede actualizar la contrase�a, se necesitan al menos %s caracteres',
        'Can\'t update password, must contain 2 lower and 2 upper characters!' => 'No se puede actualizar la contrase�a, se necesitan al menos 2 caracteres en min�sculas y 2 en may�sculas.',
        'Can\'t update password, needs at least 1 digit!' => 'No se puede actualizar la contrase�a, se necesita al menos 1 d�gito.',
        'Can\'t update password, needs at least 2 characters!' => 'No se puede actualizar la contrase�a, se necesitan al menos 2 caracteres.',

        # Template: AAAStats
        'Stat' => 'Estad�sticas',
        'Please fill out the required fields!' => 'Por favor, proporcione los campos requeridos.',
        'Please select a file!' => 'Por favor, seleccione un archivo.',
        'Please select an object!' => 'Por favor, seleccione un objeto.',
        'Please select a graph size!' => 'Por favor, seleccione un tama�o de gr�fica.',
        'Please select one element for the X-axis!' => 'Por favor, seleccione un elemento para el eje X.',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Por favor, seleccione �nicamente un elemento o desactive el bot�n \'Fijo\' donde el campo est� se�alado.',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Si usa una casilla de selecci�n, debe seleccionar algunos atributos de dicho campo.',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Por favor, inserte un valor en la caja de texto o desactive la opci�n \'Fijo\'',
        'The selected end time is before the start time!' => 'La fecha de finalizaci�n seleccionada es previa a la de inicio.',
        'You have to select one or more attributes from the select field!' => 'Debe elegir uno o m�s atributos de la lista de selecci�n.',
        'The selected Date isn\'t valid!' => 'La fecha seleccionada es inv�lida.',
        'Please select only one or two elements via the checkbox!' => 'Por favor, elija s�lo uno o dos elementos de la casilla de selecci�n.',
        'If you use a time scale element you can only select one element!' => 'Si utiliza una escala de tiempo, s�lo puede seleccionar un elemento.',
        'You have an error in your time selection!' => 'Tiene un error en la selecci�n del tiempo.',
        'Your reporting time interval is too small, please use a larger time scale!' => 'Su intervalo de tiempo para el reporte es demasiado peque�o, por favor utilice una escala mayor.',
        'The selected start time is before the allowed start time!' => 'El tiempo de inicio seleccionado es previo al permitido.',
        'The selected end time is after the allowed end time!' => 'El tiempo de finalizaci�n seleccionado es posterior al permitido.',
        'The selected time period is larger than the allowed time period!' => 'El periodo de tiempo seleccionado es mayor al permitido.',
        'Common Specification' => 'Especificaci�n com�n',
        'Xaxis' => 'EjeX',
        'Value Series' => 'Serie de Valores',
        'Restrictions' => 'Restricciones',
        'graph-lines' => 'gr�fica-l�neas',
        'graph-bars' => 'gr�fica-barras ',
        'graph-hbars' => 'gr�fica-barras-horiz',
        'graph-points' => 'gr�fica-puntos',
        'graph-lines-points' => 'gr�fica-punteada',
        'graph-area' => 'gr�fica-�rea',
        'graph-pie' => 'gr�fica-pastel',
        'extended' => 'extendido',
        'Agent/Owner' => 'Agente/Propietario',
        'Created by Agent/Owner' => 'Creado por Agente/Propietario',
        'Created Priority' => 'Prioridad de Creaci�n',
        'Created State' => 'Estado de Creaci�n',
        'Create Time' => 'Tiempo de Creaci�n',
        'CustomerUserLogin' => 'Cuenta de inicio de sesi�n del Cliente',
        'Close Time' => 'Fecha de Cierre',
        'TicketAccumulation' => 'Acumulaci�n de Tickets',
        'Attributes to be printed' => 'Atributos a imprimir',
        'Sort sequence' => 'Secuencia de ordenamiento',
        'Order by' => 'Ordenar por',
        'Limit' => 'L�mite',
        'Ticketlist' => 'Lista de tickets',
        'ascending' => 'ascendente',
        'descending' => 'descendente',
        'First Lock' => 'Primer bloqueo',
        'Evaluation by' => 'Evaluaci�n por',
        'Total Time' => 'Tiempo Total',
        'Ticket Average' => 'Ticket-Promedio',
        'Ticket Min Time' => 'Ticket-Tiempo M�n',
        'Ticket Max Time' => 'Ticket-Tiempo M�x',
        'Number of Tickets' => 'N�mero de tickets',
        'Article Average' => 'Art�culo-Promedio',
        'Article Min Time' => 'Art�culo-Tiempo M�n',
        'Article Max Time' => 'Art�culo-Tiempo M�x',
        'Number of Articles' => 'N�mero de art�culos',
        'Accounted time by Agent' => 'Tiempo utilizado por el Agente',
        'Ticket/Article Accounted Time' => 'Tiempo utilizado por el Ticket/Articulo',
        'TicketAccountedTime' => 'Tiempo Utilizado por el Ticket',
        'Ticket Create Time' => 'Tiempo de creaci�n del ticket',
        'Ticket Close Time' => 'Tiempo de cierre del ticket',

        # Template: AAATicket
        'Lock' => 'Bloquear',
        'Unlock' => 'Desbloquear',
        'History' => 'Historia',
        'Zoom' => 'Detalle',
        'Age' => 'Antig�edad',
        'Bounce' => 'Rebotar',
        'Forward' => 'Reenviar',
        'From' => 'De',
        'To' => 'Para',
        'Cc' => 'Copia ',
        'Bcc' => 'Copia Invisible',
        'Subject' => 'Asunto',
        'Move' => 'Mover',
        'Queue' => 'Fila',
        'Priority' => 'Prioridad',
        'Priority Update' => 'Modificar prioridad',
        'State' => 'Estado',
        'Compose' => 'Redactar',
        'Pending' => 'Pendiente',
        'Owner' => 'Propietario',
        'Owner Update' => 'Modificar Propietario',
        'Responsible' => 'Responsable',
        'Responsible Update' => 'Modificar Responsable',
        'Sender' => 'Emisor',
        'Article' => 'Art�culo',
        'Ticket' => 'Ticket',
        'Createtime' => 'Fecha de creaci�n ',
        'plain' => 'texto plano',
        'Email' => 'Correo',
        'email' => 'correo',
        'Close' => 'Cerrar',
        'Action' => 'Acci�n',
        'Attachment' => 'Anexo',
        'Attachments' => 'Anexos',
        'This message was written in a character set other than your own.' => 'Este mensaje fue escrito usando un juego de caracteres distinto al suyo',
        'If it is not displayed correctly,' => 'Si no se muestra correctamente',
        'This is a' => 'Este es un',
        'to open it in a new window.' => 'para abrir en una nueva ventana',
        'This is a HTML email. Click here to show it.' => 'Este es un mensaje HTML. Haga click aqu� para mostrarlo.',
        'Free Fields' => 'Campos Libres',
        'Merge' => 'Mezclar',
        'merged' => 'mezclado',
        'closed successful' => 'cerrado exitosamente',
        'closed unsuccessful' => 'cerrado sin �xito',
        'new' => 'nuevo',
        'open' => 'abierto',
        'Open' => 'Abierto',
        'closed' => 'cerrado',
        'Closed' => 'Cerrado',
        'removed' => 'eliminado',
        'pending reminder' => 'recordatorio pendiente',
        'pending auto' => 'pendiente autom�tico',
        'pending auto close+' => 'pendiente auto close+',
        'pending auto close-' => 'pendiente auto close-',
        'email-external' => 'correo-externo',
        'email-internal' => 'correo-interno',
        'note-external' => 'nota-externa',
        'note-internal' => 'nota-interna',
        'note-report' => 'nota-informe',
        'phone' => 'tel�fono',
        'sms' => 'sms',
        'webrequest' => 'solicitud v�a web',
        'lock' => 'bloquear',
        'unlock' => 'desbloquear',
        'very low' => 'muy bajo',
        'low' => 'bajo',
        'normal' => 'normal',
        'high' => 'alto',
        'very high' => 'muy alto',
        '1 very low' => '1 - muy bajo',
        '2 low' => '2 - bajo',
        '3 normal' => '3 - normal',
        '4 high' => '4 - alto',
        '5 very high' => '5 - muy alto',
        'Ticket "%s" created!' => 'Ticket "%s" creado',
        'Ticket Number' => 'Ticket N�mero',
        'Ticket Object' => 'Objeto Ticket',
        'No such Ticket Number "%s"! Can\'t link it!' => 'No existe el Ticket N�mero "%s", no se puede vincular',
        'Don\'t show closed Tickets' => 'No mostrar los tickets cerrados',
        'Show closed Tickets' => 'Mostrar Tickets cerrados',
        'New Article' => 'Nuevo Art�culo',
        'Email-Ticket' => 'Ticket de Email',
        'Create new Email Ticket' => 'Crea nuevo Ticket de Email',
        'Phone-Ticket' => 'Ticket Telef�nico',
        'Search Tickets' => 'Buscar Tickets',
        'Edit Customer Users' => 'Editar Clientes',
        'Edit Customer Company' => 'Editar Compa��a de Clientes',
        'Bulk Action' => 'Acci�n M�ltiple',
        'Bulk Actions on Tickets' => 'Acci�n M�ltiple sobre Tickets',
        'Send Email and create a new Ticket' => 'Enviar un correo y crear un nuevo ticket',
        'Create new Email Ticket and send this out (Outbound)' => 'Crea nuevo Ticket de Email y descartar este (saliente)',
        'Create new Phone Ticket (Inbound)' => 'Crea nuevo Ticket Telef�nico (entrante)',
        'Overview of all open Tickets' => 'Resumen de todos los tickets abiertos',
        'Locked Tickets' => 'Tickets Bloqueados',
        'Watched Tickets' => 'Ticket Monitoreados',
        'Watched' => 'Monitoreado',
        'Subscribe' => 'Subscribir',
        'Unsubscribe' => 'Desubscribir',
        'Lock it to work on it!' => 'Bloquearlo para trabajar en �l',
        'Unlock to give it back to the queue' => 'Desbloquearlo para devolverlo a la fila',
        'Shows the ticket history!' => 'Mostrar la historia del ticket',
        'Print this ticket!' => 'Imprimir este ticket',
        'Change the ticket priority!' => 'Cambiar la prioridad del ticket',
        'Change the ticket free fields!' => 'Cambiar los campos libres del ticket',
        'Link this ticket to an other objects!' => 'Enlazar este ticket a otros objetos',
        'Change the ticket owner!' => 'Cambiar el propietario del ticket',
        'Change the ticket customer!' => 'Cambiar el cliente del ticket',
        'Add a note to this ticket!' => 'A�adir una nota a este ticket',
        'Merge this ticket!' => 'Fusionar este ticket',
        'Set this ticket to pending!' => 'Poner este ticket como pendiente',
        'Close this ticket!' => 'Cerrar este ticket',
        'Look into a ticket!' => 'Revisar un ticket',
        'Delete this ticket!' => 'Eliminar este ticket',
        'Mark as Spam!' => 'Marcar como correo no deseado',
        'My Queues' => 'Mis Filas',
        'Shown Tickets' => 'Tickets Mostrados',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Su correo con n�mero de ticket "<OTRS_TICKET>" se uni� a "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Ticket %s: Tiempo para primera respuesta ha vencido (%s)',
        'Ticket %s: first response time will be over in %s!' => 'Ticket %s: Tiempo para primera respuesta vencer� en %s',
        'Ticket %s: update time is over (%s)!' => 'Ticket %s: Tiempo para actualizaci�n ha vencido (%s)',
        'Ticket %s: update time will be over in %s!' => 'Ticket %s: Tiempo para actualizaci�n vencer� en %s',
        'Ticket %s: solution time is over (%s)!' => 'Ticket %s: Tiempo para soluci�n ha vencido (%s)',
        'Ticket %s: solution time will be over in %s!' => 'Ticket %s: Tiempo para soluci�n vencer� en %s',
        'There are more escalated tickets!' => 'No hay m�s tickets escalados',
        'New ticket notification' => 'Notificaci�n de nuevos tickets',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Notif�queme si hay un nuevo ticket en "Mis Filas".',
        'Follow up notification' => 'Notificaci�n de seguimiento',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notif�queme si un cliente solicita un seguimiento y yo soy el due�o del ticket.',
        'Ticket lock timeout notification' => 'Notificaci�n de bloqueo de tickets por tiempo',
        'Send me a notification if a ticket is unlocked by the system.' => 'Notif�queme si un ticket es desbloqueado por el sistema',
        'Move notification' => 'Notificaci�n de movimientos',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Notif�queme si un ticket es colocado en una de "Mis Filas".',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Fila de selecci�n de filas favoritas. Ud. tambi�n puede ser notificado de estas filas v�a correo si est� habilitado',
        'Custom Queue' => 'Fila personal',
        'QueueView refresh time' => 'Tiempo de actualizaci�n de la vista de filas',
        'Screen after new ticket' => 'Pantalla posterior a nuevo ticket',
        'Select your screen after creating a new ticket.' => 'Seleccione la pantalla a mostrar despu�s de crear un ticket',
        'Closed Tickets' => 'Tickets Cerrados',
        'Show closed tickets.' => 'Mostrar Tickets cerrados',
        'Max. shown Tickets a page in QueueView.' => 'Cantidad de Tickets a mostrar en la Vista de Fila',
        'Watch notification' => 'Vigilar notificaci�n',
        'Send me a notification of an watched ticket like an owner of an ticket.' => 'Enviarme notificaci�n de un ticket vigilado como si fuera un ticket del que soy due�o.',
        'Out Of Office' => 'Fuera de la oficina',
        'Select your out of office time.' => 'Elija el tiempo fuera de la oficina.',
        'CompanyTickets' => 'TicketsCompa��a',
        'MyTickets' => 'MisTickets',
        'New Ticket' => 'Nuevo Ticket',
        'Create new Ticket' => 'Crear un nuevo Ticket',
        'Customer called' => 'Llamada de Cliente',
        'phone call' => 'llamada telef�nica',
        'Reminder Reached' => 'Recordatorios alcanzados',
        'Reminder Tickets' => 'Tickets de recordatorios',
        'Escalated Tickets' => 'Tickets escalados',
        'New Tickets' => 'Nuevos tickets',
        'Open Tickets / Need to be answered' => 'Tickets Abiertos / Que necesitan de una respuesta',
        'Tickets which need to be answered!' => 'Tickets que necesitan ser respondidos',
        'All new tickets!' => 'Todos los nuevos tickets',
        'All tickets which are escalated!' => 'Todos los tickets que estan escalados',
        'All tickets where the reminder date has reached!' => 'Todos los tickes que han alcanzado la fecha de recordatorio',
        'Responses' => 'Respuestas',
        'Responses <-> Queues' => 'Respuestas <-> Filas',
        'Auto Responses' => 'Respuestas Autom�ticas',
        'Auto Responses <-> Queues' => 'Respuestas Autom�ticas <-> Filas',
        'Attachments <-> Responses' => 'Anexos <-> Respuestas',
        'History::Move' => 'Ticket movido a la fila "%s" (%s) de la fila "%s" (%s).',
        'History::TypeUpdate' => 'Tipo actualizado a %s (ID=%s).',
        'History::ServiceUpdate' => 'Servicio actualizado a %s (ID=%s).',
        'History::SLAUpdate' => 'SLA actualizado a %s (ID=%s).',
        'History::NewTicket' => 'Nuevo Ticket [%s] creado (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'Seguimiento para [%s]. %s',
        'History::SendAutoReject' => 'Rechazo autom�tico enviado a "%s".',
        'History::SendAutoReply' => 'Respuesta autom�tica enviada a "%s".',
        'History::SendAutoFollowUp' => 'Seguimiento autom�tico enviado a "%s".',
        'History::Forward' => 'Reenviado a "%s".',
        'History::Bounce' => 'Reenviado a "%s".',
        'History::SendAnswer' => 'Correo enviado a "%s".',
        'History::SendAgentNotification' => '"%s"-notificaci�n enviada a "%s".',
        'History::SendCustomerNotification' => 'Notificaci�n; enviada a "%s".',
        'History::EmailAgent' => 'Correo enviado al cliente.',
        'History::EmailCustomer' => 'Correo a�adido. %s',
        'History::PhoneCallAgent' => 'El agente llam� al cliente.',
        'History::PhoneCallCustomer' => 'El cliente llam�.',
        'History::AddNote' => 'Nota a�adida (%s)',
        'History::Lock' => 'Ticket bloqueado.',
        'History::Unlock' => 'Ticket desbloqueado.',
        'History::TimeAccounting' => '%s unidad(es) de tiempo contabilizadas. Nuevo total : %s unidad(es) de tiempo.',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Actualizado: %s',
        'History::PriorityUpdate' => 'Cambiar prioridad de "%s" (%s) a "%s" (%s).',
        'History::OwnerUpdate' => 'El nuevo propietario es "%s" (ID=%s).',
        'History::LoopProtection' => 'Protecci�n de bucle! NO se envi� auto-respuesta a "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Actualizado: %s',
        'History::StateUpdate' => 'Antiguo: "%s". Nuevo: "%s"',
        'History::TicketFreeTextUpdate' => 'Actualizado: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Solicitud de cliente v�a web.',
        'History::TicketLinkAdd' => 'A�adido enlace al ticket "%s".',
        'History::TicketLinkDelete' => 'Eliminado enlace al ticket "%s".',
        'History::Subscribe' => 'A�adida subscripci�n para el usuario "%s".',
        'History::Unsubscribe' => 'Eliminada subscripci�n para el usuario "%s".',

        # Template: AAAWeekDay
        'Sun' => 'Dom',
        'Mon' => 'Lun',
        'Tue' => 'Mar',
        'Wed' => 'Mi�',
        'Thu' => 'Jue',
        'Fri' => 'Vie',
        'Sat' => 'S�b',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Administraci�n de Anexos',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Administraci�n de Respuestas Autom�ticas',
        'Response' => 'Respuesta',
        'Auto Response From' => 'Respuesta Autom�tica De',
        'Note' => 'Nota',
        'Useable options' => 'Opciones disponibles',
        'To get the first 20 character of the subject.' => 'Para obtener los primeros 20 caracteres del asunto.',
        'To get the first 5 lines of the email.' => 'Para obtener las primeras 5 l�neas del correo.',
        'To get the realname of the sender (if given).' => 'Para obtener el nombre real del remitente (si se proporcion�).',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'Para obtener el atributo del art�culo (ej. <OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> y <OTRS_CUSTOMER_Body>).',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Opciones de los datos del cliente actual (ej. <OTRS_CUSTOMER_DATA_UserFirstname>).',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Opciones del propietario del Ticket (ej. <OTRS_OWNER_UserFirstname>).',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Opciones del responsable del Ticket (ej. <OTRS_RESPONSIBLE_UserFirstname>).',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'Opciones del usuario actual que solicit� �sta acci�n (ej. <OTRS_CURRENT_UserFirstname>).',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'Opciones de los datos del Ticket (ej. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Opciones de configuraci�n (ej. <OTRS_CONFIG_HttpType>).',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Administraci�n de Compa��as del Cliente',
        'Search for' => 'Buscar por',
        'Add Customer Company' => 'A�adir Compa��a del Cliente',
        'Add a new Customer Company.' => 'A�adir una nueva Compa��a del Cliente.',
        'List' => 'Listar',
        'These values are required.' => 'Estos valores son obligatorios.',
        'These values are read-only.' => 'Estos valores son de s�lo-lectura.',

        # Template: AdminCustomerUserForm
        'Title{CustomerUser}' => 'Saludo',
        'Firstname{CustomerUser}' => 'Nombre',
        'Lastname{CustomerUser}' => 'Apellido',
        'Username{CustomerUser}' => 'Nombre de Usuario',
        'Email{CustomerUser}' => 'Correo electr�nico',
        'CustomerID{CustomerUser}' => 'Identificador del cliente',
        'Phone{CustomerUser}' => 'Tel�fono',
        'Fax{CustomerUser}' => 'Fax',
        'Mobile{CustomerUser}' => 'M�vil',
        'Street{CustomerUser}' => 'Calle',
        'Zip{CustomerUser}' => 'C�digo Postal',
        'City{CustomerUser}' => 'Ciudad',
        'Country{CustomerUser}' => 'Pa�s',
        'Comment{CustomerUser}' => 'Comentario',
        'The message being composed has been closed.  Exiting.' => 'El mensaje que se estaba redactando ha sido cerrado. Saliendo...',
        'This window must be called from compose window' => 'Esta ventana debe ser llamada desde la ventana de redacci�n',
        'Customer User Management' => 'Administraci�n de Clientes',
        'Add Customer User' => 'A�adir Cliente',
        'Source' => 'Origen',
        'Create' => 'Crear',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'El cliente se necesita para tener un historial e iniciar sesi�n a trav�s del panel de clientes.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'Administraci�n de Clientes <-> Grupos',
        'Change %s settings' => 'Cambiar las configuraciones %s',
        'Select the user:group permissions.' => 'Seleccionar los permisos del usuario:grupo',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Si no se selecciona algo, no habr� permisos en este grupo (los tickets no estar�n disponibles para el cliente).',
        'Permission' => 'Permiso',
        'ro' => 'ro',
        'Read only access to the ticket in this group/queue.' => 'Acceso de s�lo lectura a los tickets de este grupo/fila.',
        'rw' => 'rw',
        'Full read and write access to the tickets in this group/queue.' => 'Acceso completo de lectura y escritura a los tickets de este grupo/fila.',

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Administraci�n de Clientes <-> Servicios',
        'CustomerUser' => 'Cliente',
        'Service' => 'Servicio',
        'Edit default services.' => 'Modificar los servicios por defecto.',
        'Search Result' => 'Buscar resultados',
        'Allocate services to CustomerUser' => 'Relacionar Servicios con Clientes',
        'Active' => 'Activo',
        'Allocate CustomerUser to service' => 'Relacionar Clientes con Servicios',

        # Template: AdminEmail
        'Message sent to' => 'Mensaje enviado a',
        'A message should have a subject!' => 'Los mensajes deben tener asunto.',
        'Recipients' => 'Destinatarios',
        'Body' => 'Cuerpo',
        'Send' => 'Enviar',

        # Template: AdminGenericAgent
        'GenericAgent' => 'GenericAgent',
        'Job-List' => 'Lista de Tareas',
        'Last run' => '�ltima ejecuci�n',
        'Run Now!' => 'Ejecutar ahora',
        'x' => 'x',
        'Save Job as?' => '�Guardar Tarea como?',
        'Is Job Valid?' => '�La tarea es v�lida?',
        'Is Job Valid' => 'La tarea es v�lida',
        'Schedule' => 'Horario',
        'Currently this generic agent job will not run automatically.' => 'Actualmente esta tarea del agente gen�rico no se ejecutar� autom�ticamente',
        'To enable automatic execution select at least one value from minutes, hours and days!' => 'Para habilitar la ejecuci�n autom�tica, seleccione al menos un valor de minutos, horas y d�as.',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'B�squeda de texto en Art�culo (ej. "Mar*in" o "Baue*")',
        '(e. g. 10*5155 or 105658*)' => '(ej: 10*5155 o 105658*)',
        '(e. g. 234321)' => '(ej: 234321)',
        'Customer User Login' => 'Nombre de inicio de sesi�n del cliente',
        '(e. g. U5150)' => '(ej: U5150)',
        'SLA' => 'SLA',
        'Agent' => 'Agente',
        'Ticket Lock' => 'Ticket Bloqueado',
        'TicketFreeFields' => 'CamposLibresDeTicket',
        'Create Times' => 'Tiempos de Creaci�n',
        'No create time settings.' => 'No existen configuraciones para tiempo de creaci�n.',
        'Ticket created' => 'Ticket creado',
        'Ticket created between' => 'Ticket creado entre',
        'Close Times' => 'Tiempos de Cierre',
        'No close time settings.' => 'No existen configuraciones para tiempo de cierre.',
        'Ticket closed' => 'Ticket cerrado',
        'Ticket closed between' => 'Ticket cerrado entre',
        'Pending Times' => 'Tiempos en espera',
        'No pending time settings.' => 'No existen configuraciones para tiempo en espera',
        'Ticket pending time reached' => 'El tiempo en espera del Ticket ha sido alcanzado',
        'Ticket pending time reached between' => 'El tiempo en espera del Ticket ha sido alcanzado entre',
        'Escalation Times' => 'Tiempos de escalado',
        'No escalation time settings.' => 'No existen configuraciones para tiempo de escalado',
        'Ticket escalation time reached' => 'El tiempo de escalado del Ticket ha sido alcanzado',
        'Ticket escalation time reached between' => 'El tiempo de escalado del Ticket ha sido alcanzado entre',
        'Escalation - First Response Time' => 'Escalado - Tiempo Primer Respuesta',
        'Ticket first response time reached' => 'El tiempo para la primer respuesta del Ticket ha sido alcanzado',
        'Ticket first response time reached between' => 'El tiempo para la primer respuesta del Ticket ha sido alcanzado entre',
        'Escalation - Update Time' => 'Escalado - Tiempo Actualizaci�n',
        'Ticket update time reached' => 'El tiempo para la actualizaci�n del Ticket ha sido alcanzado',
        'Ticket update time reached between' => 'El tiempo para la actualizaci�n del Ticket ha sido alcanzado entre',
        'Escalation - Solution Time' => 'Escalado - Tiempo Soluci�n',
        'Ticket solution time reached' => 'El tiempo para la soluci�n del Ticket ha sido alcanzado',
        'Ticket solution time reached between' => 'El tiempo para la soluci�n del Ticket ha sido alcanzado entre',
        'New Service' => 'Servicio nuevo',
        'New SLA' => 'SLA nuevo',
        'New Priority' => 'Prioridad nueva',
        'New Queue' => 'Fila nueva',
        'New State' => 'Estado nuevo',
        'New Agent' => 'Agente nuevo',
        'New Owner' => 'Propietario nuevo',
        'New Customer' => 'Cliente nuevo',
        'New Ticket Lock' => 'Bloqueo de ticket nuevo',
        'New Type' => 'Tipo nuevo',
        'New Title' => 'T�tulo nuevo',
        'New TicketFreeFields' => 'CamposLibresDeTicket nuevos',
        'Add Note' => 'A�adir Nota',
        'Time units' => 'Unidades de tiempo',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Este comando se ejecutar�. ARG[0] ser� el n�mero del ticket y ARG[0] el identificador del ticket.',
        'Delete tickets' => 'Eliminar tickets',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Advertencia: Estos tickets se eliminar�n de la base de datos y ser�n inaccesibles',
        'Send Notification' => 'Enviar Notificaci�n',
        'Param 1' => 'Par�metro 1',
        'Param 2' => 'Par�metro 2',
        'Param 3' => 'Par�metro 3',
        'Param 4' => 'Par�metro 4',
        'Param 5' => 'Par�metro 5',
        'Param 6' => 'Par�metro 6',
        'Send agent/customer notifications on changes' => 'Enviar notificaci�n de cambios al agente/cliente',
        'Save' => 'Guardar',
        '%s Tickets affected! Do you really want to use this job?' => '%s Tickets afectados. �Realmente desea utilizar esta tarea?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => 'ATENCI�N: Cuando cambia el nombre del grupo \'admin\', antes de realizar los cambios apropiados en SysConfig, bloquear� el panel de administraci�n! Si esto sucediera, por favor vuelva a renombrar el grupo para administrar por declaraci�n SQL.',
        'Group Management' => 'Administraci�n de grupos',
        'Add Group' => 'A�adir Grupo',
        'Add a new Group.' => 'A�adir nuevo Grupo',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'El grupo admin es para usar el �rea de administraci�n y el grupo stats para usar el �rea estadisticas.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crear nuevos grupos para manipular los permisos de acceso por distintos grupos de agente (ej: departamento de compra, departamento de soporte, departamento de ventas,...).',
        'It\'s useful for ASP solutions.' => 'Esto es �til para soluciones ASP.',

        # Template: AdminLog
        'System Log' => 'Log del Sistema',
        'Time' => 'Tiempo',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Administraci�n de Cuentas de Correo',
        'Host' => 'Host',
        'Trusted' => 'Confiable',
        'Dispatching' => 'Remitiendo',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Todos los correos entrantes con una cuenta ser�n enviados a la fila seleccionada',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Si su cuenta est� validada, las cabeceras X-OTRS ya existentes en la llegada se utilizar�n para la prioridad. El filtro Postmaster se usa de todas formas.',

        # Template: AdminNavigationBar
        'Users' => 'Usuarios',
        'Groups' => 'Grupos',
        'Misc' => 'Miscel�neo',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Administraci�n de Notificaciones',
        'Add Notification' => 'Agregar Notificaci�n',
        'Add a new Notification.' => 'Agregar una nueva Notificaci�n',
        'Name is required!' => 'Debe especificar Nombre',
        'Event is required!' => 'Debe especificar Evento',
        'A message should have a body!' => 'Los mensajes deben tener contenido',
        'Recipient' => 'Recipiente',
        'Group based' => 'Basado en grupo',
        'Agent based' => 'Basado en agente',
        'Email based' => 'Basado en e-mail',
        'Article Type' => 'Tipo de art�culo',
        'Only for ArticleCreate Event.' => 'Solo para el Evento CrearArt�culo',
        'Subject match' => 'Coincidencia de asunto',
        'Body match' => 'Coincidencia del cuerpo',
        'Notifications are sent to an agent or a customer.' => 'Las notificaciones se env�an a un agente o cliente',
        'To get the first 20 character of the subject (of the latest agent article).' => 'Para obtener los primeros 20 caracters del Sujeto (del �ltimo art�culo del agente).',
        'To get the first 5 lines of the body (of the latest agent article).' => 'Para obtener las primeras 5 l�neas del cuerpo (del �ltimo art�culo del agente).',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => 'Para obtener los atributos (ej. <OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>)',
        'To get the first 20 character of the subject (of the latest customer article).' => 'Para obtener los primeros 20 caracters del Sujeto (del �ltimo art�culo del cliente).',
        'To get the first 5 lines of the body (of the latest customer article).' => 'Para obtener las primeras 5 l�neas del cuerpo (del �ltimo art�culo del cliente).',

        # Template: AdminNotificationForm
        'Notification' => 'Notificaciones',

        # Template: AdminPackageManager
        'Package Manager' => 'Gestor de paquetes',
        'Uninstall' => 'Desinstalar',
        'Version' => 'Versi�n',
        'Do you really want to uninstall this package?' => 'Est� seguro de que desea desinstalar este paquete?',
        'Reinstall' => 'Reinstalar',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Realmente desea reinstalar este paquete (todos los cambios manuales se perder�n)?',
        'Continue' => 'Continuar',
        'Install' => 'Instalar',
        'Package' => 'Paquete',
        'Online Repository' => 'Repositorio Online',
        'Vendor' => 'Vendedor',
        'Module documentation' => 'M�dulo de Documentaci�n',
        'Upgrade' => 'Actualizar',
        'Local Repository' => 'Repositorio Local',
        'Status' => 'Estados',
        'Overview' => 'Resumen',
        'Download' => 'Descargar',
        'Rebuild' => 'Reconstruir',
        'ChangeLog' => 'Log de Cambios',
        'Date' => 'Fecha',
        'Filelist' => 'Lista de Archivos',
        'Download file from package!' => 'Descargar archivo del paquete!',
        'Required' => 'Obligatorio',
        'PrimaryKey' => 'ClavePrimaria',
        'AutoIncrement' => 'AutoIncrementar',
        'SQL' => '',
        'Diff' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Log de rendimiento',
        'This feature is enabled!' => 'Esta caracter�stica est� habilitada',
        'Just use this feature if you want to log each request.' => 'Use esta caracter�stica s�lo si desea registrar cada petici�n.',
        'Activating this feature might affect your system performance!' => 'Activar esta opci�n podr�a afectar el rendimiento de su sistema!',
        'Disable it here!' => 'Deshabil�telo aqu�',
        'This feature is disabled!' => 'Esta caracter�stica est� deshabilitada',
        'Enable it here!' => 'Habil�telo aqu�',
        'Logfile too large!' => 'Archivo de log muy grande',
        'Logfile too large, you need to reset it!' => 'Archivo de log muy grande, necesita reinicializarlo',
        'Range' => 'Rango',
        'Interface' => 'Interfase',
        'Requests' => 'Solicitudes',
        'Min Response' => 'Respuesta M�nima',
        'Max Response' => 'Respuesta M�xima',
        'Average Response' => 'Respuesta Promedio',
        'Period' => 'Periodo',
        'Min' => 'Min',
        'Max' => 'Max',
        'Average' => 'Promedio',

        # Template: AdminPGPForm
        'PGP Management' => 'Administraci�n PGP',
        'Result' => 'Resultado',
        'Identifier' => 'Identificador',
        'Bit' => '',
        'Key' => 'Clave',
        'Fingerprint' => 'Huella',
        'Expires' => 'Expira',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'De esta forma puede editar directamente el anillo de Claves configurado en Sysconfig',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Administraci�n del filtro maestro',
        'Filtername' => 'Nombre del filtro',
        'Stop after match' => 'Parar al coincidir',
        'Match' => 'Coincidir',
        'Value' => 'Valor',
        'Set' => 'Ajustar',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Clasificar o filtrar correos entrantes basado en encabezamientos X-Headers! Puede utilizar expresiones regulares.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Si desea chequear s�lo la direcci�n del email, use EMAILADDRESS:info@example.com en De, Para o Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Si utiliza expresiones regulares, puede tambi�n usar el valor encontrado en () as [***] en \'Set\'.',

        # Template: AdminPriority
        'Priority Management' => 'Administraci�n de Prioridades',
        'Add Priority' => 'A�adir Prioridad',
        'Add a new Priority.' => 'A�adir una nueva Prioridad.',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'Administraci�n de Fila <-> Respuestas Autom�ticas',
        'settings' => 'configuraci�n',

        # Template: AdminQueueForm
        'Queue Management' => 'Administraci�n de Filas',
        'Sub-Queue of' => 'Subfila de',
        'Unlock timeout' => 'Tiempo para desbloqueo autom�tico',
        '0 = no unlock' => '0 = sin desbloqueo',
        'Only business hours are counted.' => 'S�lo se contar�n las horas de trabajo',
        '0 = no escalation' => '0 = sin escalado',
        'Notify by' => 'Notificado por',
        'Follow up Option' => 'Opci�n de seguimiento',
        'Ticket lock after a follow up' => 'Bloquear un ticket despu�s del seguimiento',
        'Systemaddress' => 'Direcciones de correo del sistema',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Si un agente bloquea un ticket y no env�a una respuesta en este tiempo, el ticket ser� desbloqueado autom�ticamente. El Ticket ser� visible por todos los dem�s agentes.',
        'Escalation time' => 'Tiempo de escalado',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Si un ticket no ha sido respondido es este tiempo, s�lo este ticket se mostrar�',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Si el ticket est� cerrado y el cliente env�a un seguimiento al mismo, �ste ser� bloqueado para el antiguo propietario',
        'Will be the sender address of this queue for email answers.' => 'Ser� la direcci�n del emisor en esta fila para respuestas por correo.',
        'The salutation for email answers.' => 'Saludo para respuestas por correo.',
        'The signature for email answers.' => 'Firma para respuestas por correo.',
        'Customer Move Notify' => 'Notificar al Cliente al Mover',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS env�a una notificaci�n por correo al cliente si el ticket se mueve',
        'Customer State Notify' => 'Notificaci�n de estado al Cliente',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS env�a una notificaci�n por correo al cliente si el estado del ticket cambia',
        'Customer Owner Notify' => 'Notificar al Propietario al Mover',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS env�a una notificaci�n por correo al cliente si el propietario del ticket cambia',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'Administraci�n de Respuestas <-> Filas',

        # Template: AdminQueueResponsesForm
        'Answer' => 'Responder',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'Administraci�n de Respuestas <-> Anexos',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Administraci�n de Respuestas',
        'A response is default text to write faster answer (with default text) to customers.' => 'Una respuesta es el texto por defecto para responder m�s r�pido (con el texto por defecto) a los clientes.',
        'Don\'t forget to add a new response a queue!' => 'No olvide incluir una nueva respuesta en la fila',
        'The current ticket state is' => 'El estado actual del ticket es',
        'Your email address is new' => 'Su direcci�n de correo es nueva',

        # Template: AdminRoleForm
        'Role Management' => 'Administraci�n de Roles',
        'Add Role' => 'A�adir Rol',
        'Add a new Role.' => 'A�adir un nuevo Rol',
        'Create a role and put groups in it. Then add the role to the users.' => 'Cree un rol y coloque grupos en el mismo. Luego a�ada el rol a los usuarios.',
        'It\'s useful for a lot of users and groups.' => 'Es �til para gestionar muchos usuarios y grupos.',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'Administraci�n de Roles <-> Grupos',
        'move_into' => 'mover_a',
        'Permissions to move tickets into this group/queue.' => 'Permiso para mover tickets a este grupo/fila',
        'create' => 'crear',
        'Permissions to create tickets in this group/queue.' => 'Permiso para crear tickets en este grupo/fila',
        'owner' => 'propietario',
        'Permissions to change the ticket owner in this group/queue.' => 'Permiso para cambiar el propietario del ticket en este grupo/fila',
        'priority' => 'prioridad',
        'Permissions to change the ticket priority in this group/queue.' => 'Permiso para cambiar la prioridad del ticket en este grupo/fila',

        # Template: AdminRoleGroupForm
        'Role' => 'Rol',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'Administraci�n de Roles <-> Usuarios',
        'Select the role:user relations.' => 'Seleccionar las relaciones Rol-Cliente',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Administraci�n de Saludos',
        'Add Salutation' => 'A�adir Saludo',
        'Add a new Salutation.' => 'A�adir un nuevo Saludo',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '�El Modo Seguro debe estar habilitado!',
        'Secure mode will (normally) be set after the initial installation is completed.' => 'El Modo Seguro (normalmente) queda habilitado cuando la instalaci�n inicial se completa.',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => 'El Modo Seguro debe estar deshabilitado para poder reinstalar usado el instalador web.',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => 'Si el Modo Seguro no est� activado act�velo con SysConfig ya que su aplicaci�n est� en funcionamiento.',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'Consola SQL',
        'Go' => 'Ir',
        'Select Box Result' => 'Seleccione tipo de resultado',

        # Template: AdminService
        'Service Management' => 'Administraci�n de Servicios',
        'Add Service' => 'A�adir Servicio',
        'Add a new Service.' => 'A�adir un nuevo Servicio',
        'Sub-Service of' => 'Sub-Servicio de',

        # Template: AdminSession
        'Session Management' => 'Administraci�n de Sesiones',
        'Sessions' => 'Sesiones',
        'Uniq' => '�nico',
        'Kill all sessions' => 'Finalizar todas las sesiones',
        'Session' => 'Sesi�n',
        'Content' => 'Contenido',
        'kill session' => 'finalizar la sesi�n',

        # Template: AdminSignatureForm
        'Signature Management' => 'Administraci�n de Firmas',
        'Add Signature' => 'A�adir Firma',
        'Add a new Signature.' => 'A�adir una nueva Firma',

        # Template: AdminSLA
        'SLA Management' => 'Administraci�n de SLA',
        'Add SLA' => 'A�adir SLA',
        'Add a new SLA.' => 'A�adir un nuevo SLA',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'Gestion S/MIME',
        'Add Certificate' => 'A�adir Certificado',
        'Add Private Key' => 'A�adir Clave Privada',
        'Secret' => 'Secreto',
        'Hash' => '',
        'In this way you can directly edit the certification and private keys in file system.' => 'De esta forma Ud. puede editar directamente la certificaci�n y claves privadas en el sistema de archivos.',

        # Template: AdminStateForm
        'State Management' => 'Administraci�n de Estados',
        'Add State' => 'A�adir Estado',
        'Add a new State.' => 'A�adir un nuevo Estado',
        'State Type' => 'Tipo de Estado',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Recuerde tambi�n actualizar los estados en su archivo Kernel/Config.pm! ',
        'See also' => 'Vea tambi�n',

        # Template: AdminSysConfig
        'SysConfig' => 'Configuraci�n del sistema',
        'Group selection' => 'Selecci�n de Grupo',
        'Show' => 'Mostrar',
        'Download Settings' => 'Descargar Configuraci�n',
        'Download all system config changes.' => 'Descargar todos los cambios de configuraci�n',
        'Load Settings' => 'Cargar Configuraci�n',
        'Subgroup' => 'Subgrupo',
        'Elements' => 'Elementos',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Opciones de Configuraci�n',
        'Default' => 'Por Defecto',
        'New' => 'Nuevo',
        'New Group' => 'Nuevo grupo',
        'Group Ro' => 'Grupo Ro',
        'New Group Ro' => 'Nuevo Grupo Ro',
        'NavBarName' => 'NombreBarraNavegaci�n',
        'NavBar' => 'BarraNavegaci�n',
        'Image' => 'Imagen',
        'Prio' => 'Prio',
        'Block' => 'Bloquear',
        'AccessKey' => 'TeclaAcceso',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Administraci�n de Direcciones de Correo del sistema',
        'Add System Address' => 'A�adir Direcci�n de Sistema',
        'Add a new System Address.' => 'A�adir una Direcci�n de Sistema',
        'Realname' => 'Nombre real',
        'All email addresses get excluded on replaying on composing an email.' => 'Toda direcci�n de correo electr�nico ser� omitida mientras se compone la respuesta de un correo.',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todos los mensajes entrantes con esta direcci�n (Para:) ser�n enviados a la fila seleccionada',

        # Template: AdminTypeForm
        'Type Management' => 'Administraci�n de Tipos',
        'Add Type' => 'A�adir Tipo',
        'Add a new Type.' => 'A�adir un nuevo Tipo',

        # Template: AdminUserForm
        'User Management' => 'Administraci�n de usuarios',
        'Add User' => 'A�adir Usuario',
        'Add a new Agent.' => 'A�adir un nuevo Agente',
        'Login as' => 'Conectarse como',
        'Title{user}' => 'T�tulo',
        'Firstname' => 'Nombre',
        'Lastname' => 'Apellido',
        'Start' => 'Iniciar',
        'End' => 'Fin',
        'User will be needed to handle tickets.' => 'Se necesita un usuario para manipular los tickets.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'No olvide a�adir los nuevos usuarios a grupos y/o roles',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'Administraci�n de Usuarios <-> Grupos',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Libreta de Direcciones',
        'Return to the compose screen' => 'Volver a la pantalla de redacci�n',
        'Discard all changes and return to the compose screen' => 'Descartar todos los cambios y volver a la pantalla de redacci�n',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerSearch

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => 'Panel principal',

        # Template: AgentDashboardCalendarOverview
        'in' => 'en',

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s est� disponible!',
        'Please update now.' => 'Por fav�r, actualize ahora',
        'Release Note' => 'Notas de versi�n',
        'Level' => 'Nivel',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Enviado hace %s.',

        # Template: AgentDashboardTicketOverview

        # Template: AgentDashboardTicketStats

        # Template: AgentInfo
        'Info' => 'Informaci�n',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Objeto Vinculado: %s',
        'Object' => 'Objeto',
        'Link Object' => 'Enlazar Objeto',
        'with' => 'con',
        'Select' => 'Seleccionar',
        'Unlink Object: %s' => 'Objecto desvinculado: %s',

        # Template: AgentLookup
        'Lookup' => 'Observar',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Chequeo Ortogr�fico',
        'spelling error(s)' => 'errores ortogr�ficos',
        'or' => 'o',
        'Apply these changes' => 'Aplicar los cambios',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Seguro que desea eliminar este objeto?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'Seleccione las restricciones para caracterizar la estad�stica',
        'Fixed' => 'Fijo',
        'Please select only one element or turn off the button \'Fixed\'.' => 'Por favor seleccione s�lo un elemento o desactive el bot�n \'Fijo\.',
        'Absolut Period' => 'Periodo Absoluto',
        'Between' => 'Entre',
        'Relative Period' => 'Periodo Relativo',
        'The last' => 'El �ltimo',
        'Finish' => 'Finalizar',
        'Here you can make restrictions to your stat.' => 'Aqu� puede declarar restricciones para sus estad�sticas.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Si elimina el candado en la casilla "Fijo", el agente que genera la estad�stica puede cambiar los atributos del elemento correspondiente',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Inserte las especificaciones comunes',
        'Permissions' => 'Permisos',
        'Format' => 'Formato',
        'Graphsize' => 'Tama�o de la Gr�fica',
        'Sum rows' => 'Sumar filas',
        'Sum columns' => 'Sumar columnas',
        'Cache' => '',
        'Required Field' => 'Campos obligatorios',
        'Selection needed' => 'Selecci�n obligatoria',
        'Explanation' => 'Explicaci�n',
        'In this form you can select the basic specifications.' => 'En esta pantalla puede seleccionar las especificaciones b�sicas',
        'Attribute' => 'Atributo',
        'Title of the stat.' => 'T�tulo de la estad�stica',
        'Here you can insert a description of the stat.' => 'Aqu� puede insertar una descripci�n de la estad�stica.',
        'Dynamic-Object' => 'Objeto-Din�mico',
        'Here you can select the dynamic object you want to use.' => 'Aqu� puede seleccionar el elemento din�mico que desea utilizar',
        '(Note: It depends on your installation how many dynamic objects you can use)' => '(Nota: Depende de su instalaci�n cu�ntos objetos din�micos puede utilizar',
        'Static-File' => 'Archivo-Est�tico',
        'For very complex stats it is possible to include a hardcoded file.' => 'Para una estad�stica muy compleja es posible incluir un archivo preconfigurado',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'Si un nuevo archivo preconfigurado est� disponible, este atributo se le mostrar� y podr� seleccionar uno',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Configuraci�n de permisos. Puede seleccionar uno o m�s grupos para hacer visibles las estad�sticas configuradas a distintos agentes',
        'Multiple selection of the output format.' => 'Selecci�n m�ltiple del formato de salida',
        'If you use a graph as output format you have to select at least one graph size.' => 'Si utiliza un gr�fico como formato de salida debe seleccionar al menos un tama�o de gr�fico.',
        'If you need the sum of every row select yes' => 'Si necesita la suma de cada fila seleccione S�',
        'If you need the sum of every column select yes.' => 'Si necesita las suma de cada columna seleccione S�',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'La mayor�a de las estadisticas pueden ser conservadas en cache. Esto acelera la presentaci�n de esta estad�stica.',
        '(Note: Useful for big databases and low performance server)' => '(Nota: Util para bases de datos grandes y servidores de bajo rendimiento)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Con una estadistica inv�lida, no es posible generar estad�sticas.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'Esto es �til si desea que nadie pueda obtener el resultado de una estad�stica o la misma a�n no est� configurada',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'Seleccione los elementos para los valores de la serie',
        'Scale' => 'Escala',
        'minimal' => 'm�nimo',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Recuerde, la escala para los valores de la serie debe ser mayor que la escala para el eje-X (ej: eje-X => Mes, ValorSeries => A�o).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Aqu� puede definir la serie de valores. Tiene la posibilidad de seleccionar uno o m�s elementos. Luego, puede seleccionar los atributos de los elementos. Cada atributo ser� mostrado como un elemento de la serie. Si no selecciona ning�n atributo, todos los atributos del elemento ser�n utilizados si genera una estad�stica. Asimismo un nuevo atributo es a�adido desde la �ltima configuraci�n.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'Seleccione el elemento, que ser� utilizado en el eje-X',
        'maximal period' => 'periodo m�ximo',
        'minimal scale' => 'escala m�nima',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection, all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' =>
        'Aqu� Ud. puede definir el eje x. Puede seleccionar un elemento con un boton circular (radio button). Si no selecciona un atributo, todos los atributos del elemento ser�n usados si genera una estad�stica, apenas se agrega un nuevo atributo desde la �tima configuraci�n',

        # Template: AgentStatsImport
        'Import' => 'Importar',
        'File is not a Stats config' => 'El archivo no es una configuraci�n de estad�sticas',
        'No File selected' => 'No hay archivo seleccionado',

        # Template: AgentStatsOverview
        'Results' => 'Resultados',
        'Total hits' => 'Total de coincidencias',
        'Page' => 'P�gina',

        # Template: AgentStatsPrint
        'Print' => 'Imprimir',
        'No Element selected.' => 'No hay elemento seleccionado',

        # Template: AgentStatsView
        'Export Config' => 'Exportar Configuraci�n',
        'Information about the Stat' => 'Informaci�n sobre la estad�stica',
        'Exchange Axis' => 'Intercambiar Ejes',
        'Configurable params of static stat' => 'Par�metro configurable de estad�stica est�tica',
        'No element selected.' => 'No hay elemento seleccionado',
        'maximal period from' => 'periodo m�ximo desde',
        'to' => 'a',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => 'Con los campos de entrada y selecci�n, puede configurar las estad�sticas a sus necesidades. Los elementos de estad�sticas que puede editar dependen de c�mo haya sido configurado por el administrador',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => 'El mensaje debe tener el destinatario Para: !',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Necesita una direcci�n de correo (ej: cliente@ejemplo.com) en Para:!',
        'Bounce ticket' => 'Ticket rebotado',
        'Ticket locked!' => 'Ticket bloqueado',
        'Ticket unlock!' => 'Ticket desbloqueado',
        'Bounce to' => 'Rebotar a',
        'Next ticket state' => 'Nuevo estado del ticket',
        'Inform sender' => 'Informar al emisor',
        'Send mail!' => 'Enviar correo',

        # Template: AgentTicketBulk
        'You need to account time!' => 'Necesita contabilizar el tiempo',
        'Ticket Bulk Action' => 'Acci�n m�ltiple con Tickets',
        'Spell Check' => 'Chequeo Ortogr�fico',
        'Note type' => 'Tipo de nota',
        'Next state' => 'Siguiente estado',
        'Pending date' => 'Fecha pendiente',
        'Merge to' => 'Fusionar con',
        'Merge to oldest' => 'Combinar con el mas viejo',
        'Link together' => 'Enlazar juntos',
        'Link to Parent' => 'Enlazar con el padre',
        'Unlock Tickets' => 'Desbloquear Tickets',

        # Template: AgentTicketClose
        'Ticket Type is required!' => 'Se necesita el tipo de Ticket',
        'A required field is:' => 'Un campo requerido es:',
        'Close ticket' => 'Cerrar el ticket',
        'Previous Owner' => 'Propietario Anterior',
        'Inform Agent' => 'Notificar a Agente',
        'Optional' => 'Opcional',
        'Inform involved Agents' => 'Notificar a Agentes involucrados',
        'Attach' => 'Anexo',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => 'El mensaje debe ser verificado ortogr�ficamente!',
        'Compose answer for ticket' => 'Redacte una respuesta para el ticket',
        'Pending Date' => 'Fecha pendiente',
        'for pending* states' => 'en estado pendiente*',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Cambiar cliente del ticket',
        'Set customer user and customer id of a ticket' => 'Asignar agente y cliente de un ticket',
        'Customer User' => 'Cliente',
        'Search Customer' => 'B�squeda de cliente',
        'Customer Data' => 'Informaci�n del cliente',
        'Customer history' => 'Historia del cliente',
        'All customer tickets.' => 'Todos los tickets de un cliente',

        # Template: AgentTicketEmail
        'Compose Email' => 'Redactar Correo',
        'new ticket' => 'nuevo ticket',
        'Refresh' => 'Refrescar',
        'Clear To' => 'Vaciar Para',
        'All Agents' => 'Todos los Agentes',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Tipo de art�culo',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Cambiar el texto libre del ticket',

        # Template: AgentTicketHistory
        'History of' => 'Historia de',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => 'Necesita usar un n�mero de ticket!',
        'Ticket Merge' => 'Fusionar Ticket',

        # Template: AgentTicketMove
        'If you want to account time, please provide Subject and Text!' => 'Si desea contabilizar el tiempo, porfavor ingrese Sujeto y Texto',
        'Move Ticket' => 'Mover Ticket',

        # Template: AgentTicketNote
        'Add note to ticket' => 'A�adir nota al ticket',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => 'Tiempo para Primera Respuesta',
        'Service Time' => 'Tiempo de Servicio',
        'Update Time' => 'Tiempo para Actualizaci�n',
        'Solution Time' => 'Tiempo para Soluci�n',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => 'Necesita al menos seleccionar un Ticket!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => 'Filtro',
        'Change search options' => 'Cambiar opciones de b�squeda',
        'Tickets' => '',
        'of' => 'de',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'Responder',
        'Contact customer' => 'Contactar con el cliente',
        'Change queue' => 'Modificar fila',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 'ordenar ascendente',
        'up' => 'arriba',
        'sort downward' => 'ordenar descendente',
        'down' => 'abajo',
        'Escalation in' => 'Escalado en',
        'Locked' => 'Bloqueado',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Cambiar el propietario del ticket',

        # Template: AgentTicketPending
        'Set Pending' => 'Establecer como pendiente',

        # Template: AgentTicketPhone
        'Phone call' => 'Llamada telef�nica',
        'Clear From' => 'Vaciar De',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Texto plano',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Informacion-Ticket',
        'Accounted time' => 'Tiempo contabilizado',
        'Linked-Object' => 'Objeto-vinculado',
        'by' => 'por',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Cambiar la prioridad del ticket',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Tickets mostrados',
        'Tickets available' => 'Tickets disponibles',
        'All tickets' => 'Todos los tickets',
        'Queues' => 'Filas',
        'Ticket escalation!' => 'Escalado de ticket',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Cambiar responsable del ticket',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Buscar ticket',
        'Profile' => 'Perfil',
        'Search-Template' => 'Buscar-Modelo',
        'TicketFreeText' => 'TextoLibreTicket',
        'Created in Queue' => 'Creado en Fila',
        'Article Create Times' => 'Tiempo de Creaci�n de Art�culo',
        'Article created' => 'Art�culo Creado',
        'Article created between' => 'Art�culo creado entre',
        'Change Times' => 'Cambio de Tiempo',
        'No change time settings.' => 'Sin cambio de marca de tiempo',
        'Ticket changed' => 'Ticket modificado',
        'Ticket changed between' => 'Ticket modificado entre',
        'Result Form' => 'Modelo de Resultados',
        'Save Search-Profile as Template?' => 'Guardar perfil de b�squeda como patr�n?',
        'Yes, save it with name' => 'S�, guardarlo con nombre',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'Texto Completo',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => 'Vista ampliada',
        'Collapse View' => 'Vista reducida',
        'Split' => 'Dividir',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => 'Configuraci�n de filtro de art�culos',
        'Save filter settings as default' => 'Grabar configuraci�n de filtros como defecto',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'Determinar el origen',

        # Template: CustomerFooter
        'Powered by' => '',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => 'Identificador',
        'Lost your password?' => '�Perdi� su contrase�a?',
        'Request new password' => 'Solicitar una nueva contrase�a',
        'Create Account' => 'Crear Cuenta',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Bienvenido %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Veces',
        'No time settings.' => 'Sin especificaci�n de tiempo',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Haga click aqu� para informar de un error',

        # Template: Footer
        'Top of Page' => 'Inicio de p�gina',

        # Template: FooterSmall

        # Template: Header
        'Home' => 'Inicio',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Instalador Web',
        'Welcome to %s' => 'Bienvenido a %s',
        'Accept license' => 'Aceptar licencia',
        'Don\'t accept license' => 'No aceptar licencia',
        'Admin-User' => 'Usuario-Admin',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => 'Si ha fijado una clave para su base de datos, debe especificarla aqu�. Si no, d�jelo en blanco. Por razones de seguridad, recomendamos establecer una clave para root. PAra m�s informaci�n, consulte la documentaci�n de su base de datos.',
        'Admin-Password' => 'Contrase�a-Administrador',
        'Database-User' => 'Usuario-Base de datos',
        'default \'hot\'' => 'por defecto \'hot\'',
        'DB connect host' => 'Host de conexi�n a la Base de datos',
        'Database' => 'Base de Datos',
        'Default Charset' => 'Juego de caracteres por defecto',
        'utf8' => 'utf8',
        'false' => 'falso',
        'SystemID' => 'ID de sistema',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(La identidad del sistema. Cada n�mero de ticket y cada id de sesi�n http comienza con este n�mero)',
        'System FQDN' => 'FQDN del sistema',
        '(Full qualified domain name of your system)' => '(Nombre completo del dominio de su sistema)',
        'AdminEmail' => 'Correo del Administrador.',
        '(Email of the system admin)' => '(email del administrador del sistema)',
        'Organization' => 'Organizaci�n',
        'Log' => 'Log',
        'LogModule' => 'M�dulo de logs',
        '(Used log backend)' => '(Interface de log Utilizada)',
        'Logfile' => 'Archivo de log',
        '(Logfile just needed for File-LogModule!)' => '(Archivo de log necesario para File-LogModule)',
        'Webfrontend' => 'Interface Web',
        'Use utf-8 it your database supports it!' => 'Use utf-8 si su base de datos lo permite!',
        'Default Language' => 'Lenguaje por defecto',
        '(Used default language)' => '(Use el lenguaje por defecto)',
        'CheckMXRecord' => 'Revisar record MX',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Chequear registro MX de direcciones utilizadas al responder. � No usarlo si su PC con OTRS est� detr�s de una l�nea telefonica $!)',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Para poder utilizar OTRS debe escribir la siguiente l�nea en la consola de sistema (Terminal/Shell) como usuario root',
        'Restart your webserver' => 'Reinicie su servidor web',
        'After doing so your OTRS is up and running.' => 'Despu�s de hacer esto, su OTRS estar� activo y ejecut�ndose',
        'Start page' => 'P�gina de inicio',
        'Your OTRS Team' => 'Su equipo OTRS',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'No tiene autorizaci�n',

        # Template: Notify
        'Important' => 'Importante',

        # Template: PrintFooter
        'URL' => '',

        # Template: PrintHeader
        'printed by' => 'impreso por',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'P�gina de Prueba de OTRS',
        'Counter' => 'Contador',

        # Template: Warning

        # Template: YUI

        # Misc
        'Edit Article' => 'Editar Art�culo',
        'Create Database' => 'Crear Base de Datos',
        'Ticket Number Generator' => 'Generador de n�meros de Tickets',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificador de Ticket. Algunas personas quieren usar por ejemplo \'Ticket#\', \'Call#\' o \'MyTicket#\')',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'De esta forma, Ud. puede editar directamente las claves configuradas en Kernel/Config.pm.',
        'Create new Phone Ticket' => 'Crear un nuevo Ticket Telef�nico',
        'Symptom' => 'S�ntoma',
        'U' => 'A',
        'Site' => 'Sitio',
        'Customer history search (e. g. "ID342425").' => 'Historia de b�squedas del cliente (ej: "ID342425")',
        'Can not delete link with %s' => 'No se puede eliminar v�nculo con %s',
        'Close!' => 'Cerrar',
        'for agent firstname' => 'nombre del agente',
        'No means, send agent and customer notifications on changes.' => '"No" significa enviar a los agentes y clientes notificaciones al realizar cambios.',
        'A web calendar' => 'Calendario Web',
        'to get the realname of the sender (if given)' => 'para obtener el nombre del emisor (si lo proporcion�)',
        'OTRS DB Name' => 'Nombre de la BD OTRS',
        'Notification (Customer)' => 'Notificaci�n (Cliente)',
        'Select Source (for add)' => 'Seleccionar Fuente (para a�adir)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Opcciones de los datos del ticket (ej. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => 'Objeto-Hijo',
        'Days' => 'D�as',
        'Queue ID' => 'Id de la Fila',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Opciones de configuraci�n (ej: <OTRS_CONFIG_HttpType>)',
        'System History' => 'Historia del Sistema',
        'customer realname' => 'Nombre del cliente',
        'Pending messages' => 'Mensajes pendientes',
        'Modules' => 'M�dulos',
        'for agent login' => 'login del agente',
        'Keyword' => 'Palabra clave',
        'Close type' => 'Tipo de cierre',
        'DB Admin User' => 'Usuario Admin de la BD',
        'for agent user id' => 'id del agente',
        'Problem' => 'Problema',
        'Escalation' => 'Escalado',
        'Order' => 'Orden',
        'next step' => 'pr�ximo paso',
        'Follow up' => 'Seguimiento',
        'Customer history search' => 'Historia de b�squedas del cliente',
        'Admin-Email' => 'Correo del Administrador',
        'Stat#' => 'Estad�stica#',
        'Create new database' => 'Crear nueva base de datos',
        'ArticleID' => 'Identificador de art�culo',
        'Keywords' => 'Palabras clave',
        'Ticket Escalation View' => 'Ver Escalado del Ticket',
        'Today' => 'Hoy',
        'No * possible!' => 'No * posible!',
        'Options ' => 'Opciones',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Opciones del usuario que solicit� la acci�n (ej. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
        'Message for new Owner' => 'Mensaje para el nuevo propietario',
        'to get the first 5 lines of the email' => 'para obtener las primeras 5 l�neas del correo',
        'Sort by' => 'Ordenado por',
        'OTRS DB Password' => 'Contrase�a para BD del usuario OTRS',
        'Last update' => 'Ultima Actualizaci�n',
        'Tomorrow' => 'Ma�ana',
        'to get the first 20 character of the subject' => 'para obtener los primeros 20 caracteres del asunto ',
        'Select the customeruser:service relations.' => 'Seleccione las relaciones cliente:servicio.',
        'DB Admin Password' => 'Contrase�a del Administrador de la BD',
        'Drop Database' => 'Eliminar Base de Datos',
        'Advisory' => 'Advertencia',
        'Here you can define the x-axis. You can select one element via the radio button. Then you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Aqui puede definir el eje-x. Puede seleccionar un elemento usando la casilla de selecci�n. Luego debe seleccionar dos o m�s atributos del elemento. Si Ud. no selecciona ninguno, todos los atributos del elemento se utilizar�n para generar una estad�stica. Asimismo un nuevo atributo es a�adido desde la �ltima configuraci�n.',
        'FileManager' => 'Administrador de Archivos',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'Opciones del usuario activo  (ej. <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'Tipo pendiente',
        'Comment (internal)' => 'Comentario (interno)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Opciones del propietario del Ticket (ej. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'Minutes' => 'Minutos',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Opciones de la informaci�n del ticket (ej: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(Formato de n�mero de ticket utilizado)',
        'Reminder' => 'Recordatorio',
        'Incident' => 'Incidente',
        'All Agent variables.' => 'Todas las variables de Agente',
        ' (work units)' => ' (unidades de trabajo)',
        'Next Week' => 'Pr�xima semana',
        'All Customer variables like defined in config option CustomerUser.' => 'Todas las variables de cliente, como las declaradas en la opci�n de configuracion del cliente',
        'accept license' => 'aceptar licencia',
        'for agent lastname' => 'apellido del agente',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Opciones del usuario activo que solicit� esta acci�n (ej. <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Mensajes recordatorios',
        'Change users <-> roles settings' => 'Modificar Configuraci�n de Usuarios <-> Roles',
        'Parent-Object' => 'Objeto-Padre',
        'Of couse this feature will take some system performance it self!' => 'De acuerdo a esta caracter�stica se efectuar�n ciertas mejoras en el sistema por s� mismo.',
        'Detail' => 'Detalle',
        'Your own Ticket' => 'Sus tickets',
        'TicketZoom' => 'Detalle del Ticket',
        'Don\'t forget to add a new user to groups!' => 'No olvide incluir un nuevo usuario a los grupos',
        'Open Tickets' => 'Tickets Abiertos',
        'CreateTicket' => 'CrearTicket',
        'You have to select two or more attributes from the select field!' => 'Debe seleccionar dos o m�s atributos del campo seleccionado',
        'System Settings' => 'Configuraci�n del sistema',
        'WebWatcher' => 'ObservadorWeb',
        'Hours' => 'Horas',
        'Finished' => 'Finalizado',
        'Account Type' => 'Tipo de cuenta',
        'D' => '',
        'All messages' => 'Todos los mensajes',
        'System Status' => 'Estado del Sistema',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Opciones de la informaci�n del ticket (ej. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Artefact' => 'Artefacto',
        'Object already linked as %s.' => 'Objecto ya vinculado como %s.',
        'A article should have a title!' => 'Los art�culos deben tener t�tulo',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Opciones de configuraci�n (ej. &lt;OTRS_CONFIG_HttpType&gt;)',
        'All email addresses get excluded on replaying on composing and email.' => 'Todas las direcciones de correo electr�nico ser� omitidas al componer la respuesta a un correo',
        'don\'t accept license' => 'no aceptar la licencia',
        'A web mail client' => 'Un cliente de correo Web',
        'Compose Follow up' => 'Redactar seguimiento',
        'WebMail' => 'CorreoWeb',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Opciones del propietario del ticket (ej. <OTRS_OWNER_UserFirstname>)',
        'DB Type' => 'Tipo de BD',
        'kill all sessions' => 'finalizar todas las sesiones',
        'to get the from line of the email' => 'para obtener la l�nea Para del correo',
        'Solution' => 'Soluci�n',
        'Package not correctly deployed, you need to deploy it again!' => 'El paquete no ha sido correctamente instalado, necesita instalarlo nuevamente!',
        'QueueView' => 'Ver la fila',
        'Select Box' => 'Ventana de selecci�n',
        'New messages' => 'Nuevos mensajes',
        'Can not create link with %s!' => 'No se puede vincular con %s!',
        'Linked as' => 'Vinculado como',
        'Welcome to OTRS' => 'Bienvenido a OTRS',
        'modified' => 'modificado',
        'Delete old database' => 'Eliminar BD antigua',
        'A web file manager' => 'Administrador web de archivos',
        'Have a lot of fun!' => 'Disfr�telo!',
        'send' => 'enviar',
        'Send no notifications' => 'No enviar notificaciones',
        'Note Text' => 'Nota!',
        'POP3 Account Management' => 'Administraci�n de cuenta POP3',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Opciones de los datos del cliente activo (ej. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'System State Management' => 'Administraci�n de Estados del Sistema',
        'OTRS DB User' => 'Usuario de BD OTRS',
        'Mailbox' => 'Buz�n',
        'PhoneView' => 'Vista telef�nica',
        'maximal period form' => 'periodo m�ximo del formulario',
        'TicketID' => 'Identificador de Ticket',
        'Escaladed Tickets' => 'Tickets Escalados',
        'Yes means, send no agent and customer notifications on changes.' => '"S�" significa no enviar notificaci�n a los agentes y clientes al realizarse cambios.',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'Su correo con n�mero de ticket "<OTRS_TICKET>"  fue rebotado a "<OTRS_BOUNCE_TO>". Contacte con dicha direcci�n para m�s informaci�n.',
        'Ticket Status View' => 'Ver Estado del Ticket',
        'Modified' => 'Modificado',
        'Ticket selected for bulk action!' => 'Ticket seleccionado para acci�n m�ltiple!',
        '%s is not writable!' => '%s no es modificable!',
        'Cannot create %s!' => 'No se puede crear %s!',
    };
    # $$STOP$$
    return;
}

1;
