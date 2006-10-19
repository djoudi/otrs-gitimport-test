# --
# Kernel/Language/es.pm - provides es language translation
# Copyright (C) 2003-2004 Jorge Becerra <jorge at icc-cuba.com>
# --
# $Id: es.pm,v 1.47 2006-10-19 16:56:51 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --

package Kernel::Language::es;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.47 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Oct  5 06:04:05 2006

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateFormatShort} = '%D.%M.%Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => 'Si',
      'No' => '',
      'yes' => 'si',
      'no' => '',
      'Off' => '',
      'off' => '',
      'On' => '',
      'on' => '',
      'top' => 'inicio',
      'end' => 'fin',
      'Done' => 'Hecho',
      'Cancel' => 'Cancelar',
      'Reset' => 'Resetear',
      'last' => '�ltimo',
      'before' => 'antes',
      'day' => 'dia',
      'days' => 'dias',
      'day(s)' => 'dias(s)',
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
      'second(s)' => '',
      'seconds' => '',
      'second' => '',
      'wrote' => 'escribi�',
      'Message' => 'Mensaje',
      'Error' => '',
      'Bug Report' => 'Reporte de errores',
      'Attention' => 'Atenci�n',
      'Warning' => 'Atenci�n',
      'Module' => 'M�dulo',
      'Modulefile' => 'Archivo de m�dulo',
      'Subfunction' => 'Subfunciones',
      'Line' => 'Linea',
      'Example' => 'Ejemplo',
      'Examples' => 'Ejemplos',
      'valid' => 'valido',
      'invalid' => 'inv�lido',
      'invalid-temporarily' => 'invalido-temporalmente',
      ' 2 minutes' => ' 2 minutos',
      ' 5 minutes' => ' 5 minutos',
      ' 7 minutes' => ' 7 minutos',
      '10 minutes' => '10 minutos',
      '15 minutes' => '15 minutos',
      'Mr.' => 'Sr.',
      'Mrs.' => 'Sra.',
      'Next' => 'Siguiente',
      'Back' => 'Regresar',
      'Next...' => 'Siguiente...',
      '...Back' => '..Regresar',
      '-none-' => '-nada-',
      'none' => 'nada',
      'none!' => 'nada!',
      'none - answered' => 'nada  - respondido',
      'please do not edit!' => 'Por favor no lo edite!',
      'AddLink' => 'Adicionar enlace',
      'Link' => 'Vinculo',
      'Linked' => 'Enlazado',
      'Link (Normal)' => 'Enlace (Normal)',
      'Link (Parent)' => 'Enlace (Padre)',
      'Link (Child)' => 'Enlace (Hijo)',
      'Normal' => '',
      'Parent' => 'Padre',
      'Child' => 'Hijo',
      'Hit' => '',
      'Hits' => '',
      'Text' => 'Texto',
      'Lite' => 'Chica',
      'User' => 'Usuario',
      'Username' => 'Nombre de Usuario',
      'Language' => 'Idioma',
      'Languages' => 'Idiomas',
      'Password' => 'Contrase�a',
      'Salutation' => 'Saludo',
      'Signature' => 'Firmas',
      'Customer' => 'Cliente',
      'CustomerID' => 'N�mero de cliente',
      'CustomerIDs' => '',
      'customer' => 'cliente',
      'agent' => 'agente',
      'system' => 'Sistema',
      'Customer Info' => 'Informaci�n del cliente',
      'go!' => 'ir!',
      'go' => 'ir',
      'All' => 'Todo',
      'all' => 'todo',
      'Sorry' => 'Disculpe',
      'update!' => 'Actualizar!',
      'update' => 'actualizar',
      'Update' => 'Actualizar',
      'submit!' => 'enviar!',
      'submit' => 'enviar',
      'Submit' => 'Enviar',
      'change!' => 'cambiar!',
      'Change' => 'Cambiar',
      'change' => 'cambiar',
      'click here' => 'haga click aqu�',
      'Comment' => 'Comentario',
      'Valid' => 'V�lido',
      'Invalid Option!' => 'Opcion no valida',
      'Invalid time!' => 'Hora no valida',
      'Invalid date!' => 'Fecha no valida',
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
      'Fulltext Search' => 'Busqueda de texto completo',
      'Data' => 'Datos',
      'Options' => 'Opciones',
      'Title' => 'Titulo',
      'Item' => 'Articulo',
      'Delete' => 'Borrar',
      'Edit' => 'Editar',
      'View' => 'Ver',
      'Number' => 'Numero',
      'System' => 'Sistema',
      'Contact' => 'Contacto',
      'Contacts' => 'Contactos',
      'Export' => 'Exportar',
      'Up' => 'Arriba',
      'Down' => 'Abajo',
      'Add' => 'Adicionar',
      'Category' => 'Categoria',
      'Viewer' => 'Visor',
      'New message' => 'Nuevo mensaje',
      'New message!' => 'Nuevo mensaje!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Por favor responda el ticket para regresar a la vista normal de la cola.',
      'You got new message!' => 'Ud tiene un nuevo mensaje',
      'You have %s new message(s)!' => 'Ud tiene %s nuevos mensaje(s)!',
      'You have %s reminder ticket(s)!' => 'Ud tiene %s tickets recordatorios',
      'The recommended charset for your language is %s!' => 'EL juego de caracteres recomendado para su idioma es %s!',
      'Passwords doesn\'t match! Please try it again!' => 'Las contrase�as no coinciden. Por favor Reintente!',
      'Password is already in use! Please use an other password!' => 'La contrase�a ya se esta utilizando! Por Favor utilice otra!',
      'Password is already used! Please use an other password!' => 'La contrase�a ya fue usada! Por favor use otra!',
      'You need to activate %s first to use it!' => 'Necesita activar %s primero para usarlo!',
      'No suggestions' => 'Sin sugerencias',
      'Word' => 'Palabra',
      'Ignore' => 'Ignorar',
      'replace with' => 'reemplazar con',
      'Welcome to OTRS' => '',
      'There is no account with that login name.' => 'No existe una cuenta con ese login',
      'Login failed! Your username or password was entered incorrectly.' => 'Identificaci�n incorrecta. Su nombre de usuario o contrase�a fue introducido incorrectamente',
      'Please contact your admin' => 'Por favor contace su administrador',
      'Logout successful. Thank you for using OTRS!' => 'Desconexi�n exitosa. Gracias por utilizar OTRS!',
      'Invalid SessionID!' => 'Sesi�n no v�lida',
      'Feature not active!' => 'Caracter�stica no activa',
      'License' => 'Licencia',
      'Take this Customer' => 'Tomar este cliente',
      'Take this User' => 'Tomar este usuario',
      'possible' => 'posible',
      'reject' => 'rechazar',
      'reverse' => '',
      'Facility' => 'Instalaci�n',
      'Timeover' => '',
      'Pending till' => 'Pendiente hasta',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'No trabaje con el Identificador 1 (cuenta de sistema)! Cree nuevos usuarios! ',
      'Dispatching by email To: field.' => 'Despachar por correo del campo To:',
      'Dispatching by selected Queue.' => 'Despachar por la cola seleccionada',
      'No entry found!' => 'No se encontr�!',
      'Session has timed out. Please log in again.' => 'La sesi�n ha expirado. Por favor conectese nuevamente.',
      'No Permission!' => 'No tiene Permiso!',
      'To: (%s) replaced with database email!' => 'To: (%s) sustituido con email de la base de datos!',
      'Cc: (%s) added database email!' => 'Cc: (%s) A�adido a la base de correo!',
      '(Click here to add)' => '(Haga click aqui para agregar)',
      'Preview' => 'Vista Previa',
      'Package not correctly deployed! You should reinstall the Package again!' => '',
      'Added User "%s"' => 'A�adido Usuario "%s"',
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
      'Jan' => 'Ene',
      'Feb' => '',
      'Mar' => '',
      'Apr' => 'Abr',
      'May' => '',
      'Jun' => '',
      'Jul' => '',
      'Aug' => 'Ago',
      'Sep' => '',
      'Oct' => '',
      'Nov' => '',
      'Dec' => 'Dic',
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
      'Admin-Area' => 'Area de administraci�n',
      'Agent-Area' => 'Area-Agente',
      'Ticket-Area' => 'Area-Ticket',
      'Logout' => 'Desconectarse',
      'Agent Preferences' => 'Preferencias de Agente',
      'Preferences' => 'Preferencias',
      'Agent Mailbox' => 'Buz�n de Agente',
      'Stats' => 'Estadisticas',
      'Stats-Area' => 'Area-Estadisticas',
      'New Article' => 'Nuevo Articulo',
      'Admin' => '',
      'A web calendar' => 'Calendario Web',
      'WebMail' => '',
      'A web mail client' => 'Un cliente de correo Web',
      'FileManager' => 'Administrador de Archivos',
      'A web file manager' => 'Administrador web de archivos',
      'Artefact' => 'Artefacto',
      'Incident' => 'Incidente',
      'Advisory' => 'Advertencia',
      'WebWatcher' => '',
      'Customer Users' => 'Clientes',
      'Customer Users <-> Groups' => 'Clientes <-> Grupos',
      'Users <-> Groups' => 'Usuarios <-> Grupos',
      'Roles' => '',
      'Roles <-> Users' => 'Roles <-> Usuarios',
      'Roles <-> Groups' => 'Roles <-> Grupos',
      'Salutations' => 'Saludos',
      'Signatures' => 'Firmas',
      'Email Addresses' => 'Direcciones de Correo',
      'Notifications' => 'Notificaciones',
      'Category Tree' => 'Arbol de categorias',
      'Admin Notification' => 'Notificacion al Administrador',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Las preferencia fueron actualizadas!',
      'Mail Management' => 'Gesti�n de Correos',
      'Frontend' => 'Frontal',
      'Other Options' => 'Otras Opciones',
      'Change Password' => 'Cambiar contrase�a',
      'New password' => 'Nueva contrase�a',
      'New password again' => 'Repetir Contrase�a',
      'Select your QueueView refresh time.' => 'Seleccione su tiempo de actualizaci�n de la vista de colas',
      'Select your frontend language.' => 'Seleccione su idioma de trabajo',
      'Select your frontend Charset.' => 'Seleccione su juego de caracteres',
      'Select your frontend Theme.' => 'Seleccione su tema',
      'Select your frontend QueueView.' => 'Seleccione su Vista de cola de trabajo',
      'Spelling Dictionary' => 'Diccionario Ortogr�fico',
      'Select your default spelling dictionary.' => 'Seleccione su diccionario por defecto',
      'Max. shown Tickets a page in Overview.' => 'Cantidad de Tickets a mostrar en Resumen',
      'Can\'t update password, passwords doesn\'t match! Please try it again!' => 'No se puede actualizar la contrase�a, no coinciden! Por favor reintentelo!',
      'Can\'t update password, invalid characters!' => 'No se puede actualizar la contrase�a, caracteres no validos!',
      'Can\'t update password, need min. 8 characters!' => 'No se puede actualizar la contrase�a, se necesitan al menos 8 caracteres',
      'Can\'t update password, need 2 lower and 2 upper characters!' => 'No se puede actualizar la contrase�a, se necesitan al menos 2 en minuscula y 2 en mayuscula!',
      'Can\'t update password, need min. 1 digit!' => 'No se puede actualizar la contrase�a, se necesita al menos 1 digito!',
      'Can\'t update password, need min. 2 characters!' => 'No se puede actualizar la contrase�a, se necesitan al menos 2 caracteres!',
      'Password is needed!' => 'Falta la contrase�a!',

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
      'Lock' => 'Bloquear',
      'Unlock' => 'Desbloquear',
      'History' => 'Historia',
      'Zoom' => 'Detalle',
      'Age' => 'Antiguedad',
      'Bounce' => 'Rebotar',
      'Forward' => 'Reenviar',
      'From' => 'De',
      'To' => 'Para',
      'Cc' => 'Copia ',
      'Bcc' => 'Copia Invisible',
      'Subject' => 'Asunto',
      'Move' => 'Mover',
      'Queue' => 'Colas',
      'Priority' => 'Prioridad',
      'State' => 'Estado',
      'Compose' => 'Redactar',
      'Pending' => 'Pendiente',
      'Owner' => 'Propietario',
      'Owner Update' => 'Actualizar Propietario',
      'Responsible' => '',
      'Responsible Update' => '',
      'Sender' => 'Emisor',
      'Article' => 'Art�culo',
      'Ticket' => '',
      'Createtime' => 'Fecha de creaci�n ',
      'plain' => 'texto',
      'Email' => 'Correo',
      'email' => 'correo',
      'Close' => 'Cerrar',
      'Action' => 'Acci�n',
      'Attachment' => 'Anexo',
      'Attachments' => 'Anexos',
      'This message was written in a character set other than your own.' => 'Este mensaje fue escrito usando un juego de caracteres distinto al suyo',
      'If it is not displayed correctly,' => 'Si no se muestra correctamente',
      'This is a' => 'Este es un',
      'to open it in a new window.' => 'Para abrir en una nueva ventana',
      'This is a HTML email. Click here to show it.' => 'Este es un mensaje HTML. Haga click aqu� para mostrarlo.',
      'Free Fields' => 'Campos Libres',
      'Merge' => 'Mezclar',
      'closed successful' => 'cerrado exitosamente',
      'closed unsuccessful' => 'cerrado sin �xito',
      'new' => 'nuevo',
      'open' => 'abierto',
      'closed' => 'cerrado',
      'removed' => 'eliminado',
      'pending reminder' => 'recordatorio pendiente',
      'pending auto close+' => 'pendiente auto close+',
      'pending auto close-' => 'pendiente auto close-',
      'email-external' => 'correo-externo',
      'email-internal' => 'correo-interno',
      'note-external' => 'nota-externa',
      'note-internal' => 'nota-interna',
      'note-report' => 'nota-reporte',
      'phone' => 'tel�fono',
      'sms' => '',
      'webrequest' => 'Solicitud via web',
      'lock' => 'bloqueado',
      'unlock' => 'desbloqueado',
      'very low' => 'muy bajo',
      'low' => 'bajo',
      'normal' => '',
      'high' => 'alto',
      'very high' => 'muy alto',
      '1 very low' => '1 muy bajo',
      '2 low' => '2 bajo',
      '3 normal' => '',
      '4 high' => '4 alto',
      '5 very high' => '5 muy alto',
      'Ticket "%s" created!' => 'Ticket "%s" creado!',
      'Ticket Number' => 'Ticket N�mero',
      'Ticket Object' => 'Objeto Ticket',
      'No such Ticket Number "%s"! Can\'t link it!' => 'No existe el Ticket Numero "%s"! No puede vincularlo!',
      'Don\'t show closed Tickets' => 'No mostrar los tickets cerrados',
      'Show closed Tickets' => 'Mostrar Tickets cerrados',
      'Email-Ticket' => 'Ticket-Correo',
      'Create new Email Ticket' => '',
      'Phone-Ticket' => 'Ticket-Telefonico',
      'Create new Phone Ticket' => 'Crear un nuevo Ticket Telefonico',
      'Search Tickets' => 'Buscar Tickets',
      'Edit Customer Users' => 'Editar Clientes',
      'Bulk-Action' => 'Accion Multiple',
      'Bulk Actions on Tickets' => 'Accion Multiple en Tickets',
      'Send Email and create a new Ticket' => 'Enviar un correo y crear un nuevo ticket',
      'Overview of all open Tickets' => 'Resumen de todos los tickets abiertos',
      'Locked Tickets' => 'Tickets Bloqueados',
      'Lock it to work on it!' => 'Bloquearlo para trabajar en el!',
      'Unlock to give it back to the queue!' => 'Desbloquearlo para regresarlo a la cola!',
      'Shows the ticket history!' => 'Mostrar la historia del ticket!',
      'Print this ticket!' => 'Imprimir este ticket!',
      'Change the ticket priority!' => 'Cambiar la prioridad del ticket!',
      'Change the ticket free fields!' => 'Cambiar los campos libres del ticket!',
      'Link this ticket to an other objects!' => 'Enlazar este ticket a otros objetos',
      'Change the ticket owner!' => 'Cambiar el propietario del ticket!',
      'Change the ticket customer!' => 'Cambiar el cliente del ticket!',
      'Add a note to this ticket!' => 'Adicionar una nota a este ticket!',
      'Merge this ticket!' => 'Unir este ticket!',
      'Set this ticket to pending!' => 'Colocar este ticket como pendiente!',
      'Close this ticket!' => 'Cerrar este ticket!',
      'Look into a ticket!' => 'Revisar un ticket',
      'Delete this ticket!' => 'Eliminar este ticket!',
      'Mark as Spam!' => 'Parcar como correo no deseado!',
      'My Queues' => 'Mis Colas',
      'Shown Tickets' => 'Mostrar Tickets',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Su correo con numero de ticket "<OTRS_TICKET>" se unio a "<OTRS_MERGE_TO_TICKET>".',
      'New ticket notification' => 'Notificaci�n de nuevos tickets',
      'Send me a notification if there is a new ticket in "My Queues".' => 'Notif�queme si hay un nuevo ticket en "Mis Colas".',
      'Follow up notification' => 'Seguimiento a notificaciones',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notif�queme si un cliente env� un seguimiento y yo soy el due�o del ticket.',
      'Ticket lock timeout notification' => 'Notificaci�n de bloqueo de tickets por tiempo',
      'Send me a notification if a ticket is unlocked by the system.' => 'Notif�queme si un ticket es desbloqueado por el sistema',
      'Move notification' => 'Notificaci�n de movimientos',
      'Send me a notification if a ticket is moved into one of "My Queues".' => 'Notif�queme si un ticket es colocado en una de "Mis Colas".',
      'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => '',
      'Custom Queue' => 'Cola personal',
      'QueueView refresh time' => 'Tiempo de actualizaci�n de la vista de colas',
      'Screen after new ticket' => 'Pantalla posterior a nuevo ticket',
      'Select your screen after creating a new ticket.' => 'Seleccione la pantalla a mostrar despues de crear un ticket',
      'Closed Tickets' => 'Tickets Cerrados',
      'Show closed tickets.' => 'Mostrar Tickets cerrados',
      'Max. shown Tickets a page in QueueView.' => 'Cantidad de Tickets a mostrar en la Vista de Cola',
      'CompanyTickets' => '',
      'MyTickets' => '',
      'New Ticket' => '',
      'Create new Ticket' => '',
      'Customer called' => '',
      'phone call' => '',
      'Responses' => 'Respuestas',
      'Responses <-> Queue' => 'Respuestas <-> Colas',
      'Auto Responses' => 'Respuestas Automaticas',
      'Auto Responses <-> Queue' => 'Respuestas Automaticas <-> Colas',
      'Attachments <-> Responses' => 'Anexos <-> Respuestas',
      'History::Move' => 'Ticket movido a la cola "%s" (%s) de la cola "%s" (%s).',
      'History::NewTicket' => 'Nuevo Ticket [%s] createdo (Q=%s;P=%s;S=%s).',
      'History::FollowUp' => 'Seguimiento para [%s]. %s',
      'History::SendAutoReject' => 'Rechazo autom�tico enviado a "%s".',
      'History::SendAutoReply' => 'Respuesta autom�tica enviada a "%s".',
      'History::SendAutoFollowUp' => 'Seguimiento autom�tico enviado a "%s".',
      'History::Forward' => 'Reenviado a "%s".',
      'History::Bounce' => 'Reenviado a "%s".',
      'History::SendAnswer' => 'Correo enviado a "%s".',
      'History::SendAgentNotification' => '"%s"-notificaci�n enviada a "%s".',
      'History::SendCustomerNotification' => 'Notificaci&oacuten; enviada a "%s".',
      'History::EmailAgent' => 'Correo enviado al cliente.',
      'History::EmailCustomer' => 'Adicionado correo. %s',
      'History::PhoneCallAgent' => 'El agente llam� al cliente.',
      'History::PhoneCallCustomer' => 'El cliente llam�.',
      'History::AddNote' => 'Adicionada nota (%s)',
      'History::Lock' => 'Ticket bloqueado.',
      'History::Unlock' => 'Ticket desbloqueado.',
      'History::TimeAccounting' => '%s unidad(es) de tiempo contabilizadas. Nuevo total : %s uniodad(es) de tiempo.',
      'History::Remove' => '%s',
      'History::CustomerUpdate' => 'Actualizado: %s',
      'History::PriorityUpdate' => 'Cambiar prioridad de "%s" (%s) a "%s" (%s).',
      'History::OwnerUpdate' => 'El nuevo propietario es "%s" (ID=%s).',
      'History::LoopProtection' => 'Protecci�n de lazo! NO se envio auto-respuesta a "%s".',
      'History::Misc' => '%s',
      'History::SetPendingTime' => 'Actualizado: %s',
      'History::StateUpdate' => 'Antiguo: "%s" Nuevo: "%s"',
      'History::TicketFreeTextUpdate' => 'Actualizado: %s=%s;%s=%s;',
      'History::WebRequestCustomer' => 'Solicitud de cliente via web.',
      'History::TicketLinkAdd' => 'Adicionado enlace al ticket "%s".',
      'History::TicketLinkDelete' => 'Eliminado enlace al ticket "%s".',

      # Template: AAAWeekDay
      'Sun' => 'Dom',
      'Mon' => 'Lun',
      'Tue' => 'Mar',
      'Wed' => 'Mie',
      'Thu' => 'Jue',
      'Fri' => 'Vie',
      'Sat' => 'Sab',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Gesti�n de Anexos',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Gesti�n de respuestas autom�ticas',
      'Response' => 'Respuesta',
      'Auto Response From' => 'Respuesta autom�tica de ',
      'Note' => 'Nota',
      'Useable options' => 'Opciones accesibles',
      'to get the first 20 character of the subject' => 'para obtener los primeros 20 caracteres del asunto ',
      'to get the first 5 lines of the email' => 'para obtener las primeras 5 l�neas del correo',
      'to get the from line of the email' => 'para obtener la linea from del correo',
      'to get the realname of the sender (if given)' => 'para obtener el nombre del emisor (si lo proporcion�)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Opciones de configuraci�n (ej: &lt;OTRS_CONFIG_HttpType&gt;)',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'El mensaje que se estaba redactando ha sido cerrado. Saliendo.!',
      'This window must be called from compose window' => 'Esta ventana debe ser llamada desde la ventana de redacci�n',
      'Customer User Management' => 'Gesti�n de clientes',
      'Search for' => 'Buscar por',
      'Result' => 'Resultado',
      'Select Source (for add)' => 'Seleccionar Fuente (para adicionar)',
      'Source' => 'Origen',
      'This values are read only.' => 'Estos valores son solo-lectura',
      'This values are required.' => 'Estos valores son obligatorios',
      'Customer user will be needed to have a customer history and to login via customer panel.' => 'El cliente necesita tener una historia y conectarse via panel de clientes',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => 'Clientes <-> Gestion de Grupos',
      'Change %s settings' => 'Cambiar %s especificaciones',
      'Select the user:group permissions.' => 'Seleccionar los permisos de usuario:grupo',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Si no se selecciona algo, no habr�n permisos en este grupo (Los tickets no estar�n disponibles para este cliente).',
      'Permission' => 'Permisos',
      'ro' => '',
      'Read only access to the ticket in this group/queue.' => 'Acceso de solo lectura a los tickets en este grupo/cola.',
      'rw' => '',
      'Full read and write access to the tickets in this group/queue.' => 'Acceso completo de lectura y escritura a los tickets en este grupo/cola.',

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => 'Mensaje enviado a',
      'Recipents' => 'Destinatarios',
      'Body' => 'Cuerpo',
      'send' => 'enviar',

      # Template: AdminGenericAgent
      'GenericAgent' => '',
      'Job-List' => 'Lista de Tareas',
      'Last run' => '�ltima corrida',
      'Run Now!' => 'Ejecutar ahora',
      'x' => '',
      'Save Job as?' => 'Guardar Tarea como?',
      'Is Job Valid?' => 'Es la tarea Valida?',
      'Is Job Valid' => 'Es una tarea valida',
      'Schedule' => 'Horario',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'B�squeda de texto en Articulo (ej. "Mar*in" or "Baue*")',
      '(e. g. 10*5155 or 105658*)' => '',
      '(e. g. 234321)' => '',
      'Customer User Login' => 'Identificador del cliente',
      '(e. g. U5150)' => '',
      'Agent' => 'Agente',
      'Ticket Lock' => 'Ticket Bloqueado',
      'TicketFreeFields' => '',
      'Times' => 'Veces',
      'No time settings.' => 'Sin especificaci�n de fecha',
      'Ticket created' => 'Ticket creado',
      'Ticket created between' => 'Ticket creado entre',
      'New Priority' => 'Nueva prioridad',
      'New Queue' => 'Nueva Cola',
      'New State' => 'Nuevo estado',
      'New Agent' => 'Nuevo Agente',
      'New Owner' => 'Nuevo Propietario',
      'New Customer' => 'Nuevo Cliente',
      'New Ticket Lock' => 'Nuevo bloqueo de ticket!',
      'CustomerUser' => 'Usuario Cliente',
      'New TicketFreeFields' => '',
      'Add Note' => 'Adicionar Nota',
      'CMD' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Se ejecutar� el comando. ARG[0] el n�mero del ticket. ARG[0] el id del ticket.',
      'Delete tickets' => 'Eliminar tickets',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Aviso! Estos tickets ser�n eliminados de la base de datos! Los mismos se perder�n!',
      'Send Notification' => '',
      'Param 1' => 'Par�metro 1',
      'Param 2' => 'Par�metro 2',
      'Param 3' => 'Par�metro 3',
      'Param 4' => 'Par�metro 4',
      'Param 5' => 'Par�metro 5',
      'Param 6' => 'Par�metro 6',
      'Send no notifications' => '',
      'Yes means, send no agent and customer notifications on changes.' => '',
      'No means, send agent and customer notifications on changes.' => '',
      'Save' => 'Guardar',
      '%s Tickets affected! Do you really want to use this job?' => '',

      # Template: AdminGroupForm
      'Group Management' => 'Administraci�n de grupos',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'El grupo admin es para usar el �rea de administraci�n y el grupo stats para usar el �rea estadisticas.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crear nuevos grupos para manipular los permisos de acceso por distintos grupos de agente (ejemplo: departamento de compra, departamento de soporte, departamento de ventas,...).',
      'It\'s useful for ASP solutions.' => 'Esto es �til para soluciones ASP.',

      # Template: AdminLog
      'System Log' => 'Trazas del Sistema',
      'Time' => 'Tiempo',

      # Template: AdminNavigationBar
      'Users' => 'Usuarios',
      'Groups' => 'Grupos',
      'Misc' => 'Miscelaneas',

      # Template: AdminNotificationForm
      'Notification Management' => 'Gesti�n de Notificaciones',
      'Notification' => 'Notificacion',
      'Notifications are sent to an agent or a customer.' => 'Las notificaci�n se le envian a un agente o cliente',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Opciones de propietario del ticket (ej. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Opciones del usuario activo que solicita esta acci�n (ej. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Opciones del usuario activo',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminPackageManager
      'Package Manager' => 'Gestor de paquete',
      'Uninstall' => 'Desinstalar',
      'Version' => '',
      'Do you really want to uninstall this package?' => 'Seguro que desea desinstalar este paquete?',
      'Reinstall' => 'Reinstalar',
      'Do you really want to reinstall this package (all manual changes get lost)?' => '',
      'Install' => 'Instalar',
      'Package' => 'Paquete',
      'Online Repository' => 'Reporsitorio Online',
      'Vendor' => 'Vendedor',
      'Upgrade' => 'Actualizar',
      'Local Repository' => 'Repositorio Local',
      'Status' => 'Estado',
      'Overview' => 'Resumen',
      'Download' => 'Descargar',
      'Rebuild' => 'Reconstruir',
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
      'PGP Management' => 'Administracion PGP',
      'Identifier' => 'Identificador',
      'Bit' => '',
      'Key' => 'Llave',
      'Fingerprint' => '',
      'Expires' => 'Expira',
      'In this way you can directly edit the keyring configured in SysConfig.' => 'De esta forma puede editar directamente el anillo de Llaves configurado en Sysconfig',

      # Template: AdminPOP3
      'POP3 Account Management' => 'Gesti�n de cuenta POP3',
      'Host' => '',
      'List' => '',
      'Trusted' => 'Confiable',
      'Dispatching' => 'Remitiendo',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Todos los correos de entrada ser�n enviados a la cola seleccionada',
      'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Si su cuenta es confiable, los headers ya existentes X-OTRS en la llegada se utilizar�n para la prioridad! El filtro Postmaster se usa de todas formas.',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => 'Gesti�n del filtro maestro',
      'Filtername' => '',
      'Match' => 'Coincidir',
      'Header' => 'Encabezado',
      'Value' => 'Valor',
      'Set' => '',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Clasificar o filtrar correos entrantes basado en el encabezamiento X-Headers del correo! Puede utilizar expresiones regulares.',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Si utilza expresion regular, puede tambien usar el valor encontrado en () as [***] en \'Set\'.',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => 'Cola <-> Gestion de respuestas automaticas',

      # Template: AdminQueueForm
      'Queue Management' => 'Gesti�n de Colas',
      'Sub-Queue of' => 'Subcola de',
      'Unlock timeout' => 'Tiempo para desbloqueo autom�tico',
      '0 = no unlock' => '0 = sin bloqueo',
      'Escalation time' => 'Tiempo de escalado',
      '0 = no escalation' => '0 = sin escalado',
      'Follow up Option' => 'Opci�n de seguimiento',
      'Ticket lock after a follow up' => 'Bloquear un ticket despu�s del seguimiento',
      'Systemaddress' => 'Direcciones de correo del sistema',
      'Customer Move Notify' => 'Notificar al Cliente al Mover',
      'Customer State Notify' => 'Notificaci�n de estado al Cliente',
      'Customer Owner Notify' => 'Notificar al Due�o al Mover',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Si un agente bloquea un ticket y el/ella no env� una respuesta en este tiempo, el ticket sera desbloqueado autom�ticamente',
      'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Si un ticket no ha sido respondido es este tiempo, solo este ticket se mostrar�',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Si el tickes esta cerrado y el cliente env� un seguimiento al mismo este ser� bloqueado para el antiguo propietario',
      'Will be the sender address of this queue for email answers.' => 'Ser� la direcci�n del emisor en esta cola para respuestas por correo.',
      'The salutation for email answers.' => 'Saludo para las respuestas por correo.',
      'The signature for email answers.' => 'Firma para respuestas por correo.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS env�a una notificaci�n por correo si el ticket se mueve',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS env�a una notificaci�n por correo al cliente si el estado del ticket cambia',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS env�a una notificaci�n por correo al cliente si el due&ntildeo; del ticket cambia',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => 'Respuestas <-> Gestion de Colas',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Responder',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => 'respuestas <-> Gestion de Anexos',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Gesti�n de respuestas',
      'A response is default text to write faster answer (with default text) to customers.' => 'Una respuesta es el texto por defecto para escribir respuestas m�s rapido (con el texto por defecto) a los clientes.',
      'Don\'t forget to add a new response a queue!' => 'No olvide incluir una nueva respuesta en la cola!',
      'Next state' => 'Siguiente estado',
      'All Customer variables like defined in config option CustomerUser.' => 'Todas las variables de cliente como aparecen declaradas en la opcion de configuracion del cliente',
      'The current ticket state is' => 'El estado actual del ticket es',
      'Your email address is new' => 'Su direcci�n de correo es nueva',

      # Template: AdminRoleForm
      'Role Management' => 'Gesti�n de Roles',
      'Create a role and put groups in it. Then add the role to the users.' => 'Crea un rol y coloca grupos en el mismo. Luego adiciona el rol a los usuarios.',
      'It\'s useful for a lot of users and groups.' => 'Es �til para gestionar muchos usuarios y grupos.',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => 'Roles <-> Gestion de grupos',
      'move_into' => 'mover_a',
      'Permissions to move tickets into this group/queue.' => 'Permiso para mover tickets a este grupo/cola',
      'create' => 'crear',
      'Permissions to create tickets in this group/queue.' => 'Permiso para crear tickets en este grupo/cola',
      'owner' => 'propietario',
      'Permissions to change the ticket owner in this group/queue.' => 'Permiso para cambiar el propietario del ticket en este grupo/cola',
      'priority' => 'prioridad',
      'Permissions to change the ticket priority in this group/queue.' => 'Permiso para cambiar la prioridad del ticket en este grupo/cola',

      # Template: AdminRoleGroupForm
      'Role' => 'Rol',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => 'Roles <-> Gestion de Usuarios',
      'Active' => 'Activo',
      'Select the role:user relations.' => 'Seleccionar las relaciones Rol-Cliente',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Gesti�n de saludos',
      'customer realname' => 'Nombre del cliente',
      'All Agent variables.' => '',
      'for agent firstname' => 'nombre del agente',
      'for agent lastname' => 'apellido del agente',
      'for agent user id' => 'id del agente',
      'for agent login' => 'login del agente',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Ventana de selecci�n',
      'Limit' => 'L�mite',
      'Select Box Result' => 'Seleccione tipo de resultado',

      # Template: AdminSession
      'Session Management' => 'Gesti�n de sesiones',
      'Sessions' => 'Sesiones',
      'Uniq' => '',
      'kill all sessions' => 'Finalizar todas las sesiones',
      'Session' => 'Sesi�n',
      'Content' => 'Contenido',
      'kill session' => 'Finalizar una sesi�n',

      # Template: AdminSignatureForm
      'Signature Management' => 'Gesti�n de firmas',

      # Template: AdminSMIMEForm
      'S/MIME Management' => 'Gestion S/MIME',
      'Add Certificate' => 'Adicionar un certificado',
      'Add Private Key' => 'Adicionar una Llave privada',
      'Secret' => 'Secreto',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => 'De esta fomra Ud puede editar directamente la certificacion y llaves privadas el el sistema de archivos.',

      # Template: AdminStateForm
      'System State Management' => 'Gesti�n de estados del Sistema',
      'State Type' => 'Tipo de estado',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Recuerde tambien actualizar los estados en su archivo Kernel/Config.pm! ',
      'See also' => 'Vea tambien',

      # Template: AdminSysConfig
      'SysConfig' => '',
      'Group selection' => 'Seleccion de Grupo',
      'Show' => 'Mostrar',
      'Download Settings' => 'Descargar Configuracion',
      'Download all system config changes.' => 'Descargar todos los cambios de configuracion',
      'Load Settings' => 'Cargar Configuracion',
      'Subgroup' => 'Subgrupo',
      'Elements' => 'Elementos',

      # Template: AdminSysConfigEdit
      'Config Options' => 'Opciones de Configuracion',
      'Default' => '',
      'New' => 'Nuevo',
      'New Group' => 'Nuevo grupo',
      'Group Ro' => 'Grupo Ro',
      'New Group Ro' => 'Nuevo Grupo Ro',
      'NavBarName' => '',
      'NavBar' => '',
      'Image' => 'Imagen',
      'Prio' => '',
      'Block' => '',
      'AccessKey' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Gesti�n de direcciones de correo del sistema',
      'Realname' => 'Nombre real',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todos los mensajes entrantes con este correo(To:) ser�n enviados a la cola seleccionada!',

      # Template: AdminUserForm
      'User Management' => 'Administraci�n de usuarios',
      'Login as' => '',
      'Firstname' => 'Nombre',
      'Lastname' => 'Apellido',
      'User will be needed to handle tickets.' => 'Se necesita un usuario para manipular los tickets.',
      'Don\'t forget to add a new user to groups and/or roles!' => 'No olvide adicionar los nuevos usuario a los grupos y/o roles',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => 'Usuarios <-> Gestion de Grupos',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'Libreta de Direcciones',
      'Return to the compose screen' => 'Regresar a la pantalla de redacci�n',
      'Discard all changes and return to the compose screen' => 'Descartar todos los cambios y regresar a la pantalla de redacci�n',

      # Template: AgentCalendarSmall

      # Template: AgentCalendarSmallIcon

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => 'Informaci�n',

      # Template: AgentLinkObject
      'Link Object' => 'Enlazar Objeto',
      'Select' => 'Seleccionar',
      'Results' => 'Resultados',
      'Total hits' => 'Total de coincidencias',
      'Page' => 'P�gina',
      'Detail' => 'Detalle',

      # Template: AgentLookup
      'Lookup' => '',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => 'Ticket seleccionado para acci�n m�ltiple!',
      'You need min. one selected Ticket!' => 'Necesita al menos seleccionar un Ticket!',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Chequeo Ortogr�fico',
      'spelling error(s)' => 'errores gramaticales',
      'or' => 'o',
      'Apply these changes' => 'Aplicar los cambios',

      # Template: AgentStatsDelete
      'Do you really want to delete this Object?' => 'VErdaderamente desea eliminar esre objeto?',

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
      'Format' => 'Formato',
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
      'Print' => 'Imprimir',
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
      'A message should have a To: recipient!' => 'El mensaje debe tenes el destinatario To: !',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Necesita una direcci�n de correo (ejemplo: cliente@ejemplo.com) en To:!',
      'Bounce ticket' => 'Ticket rebotado',
      'Bounce to' => 'Rebotar a',
      'Next ticket state' => 'Nuevo estado del ticket',
      'Inform sender' => 'Informar al emisor',
      'Send mail!' => 'Enviar correo!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Los mensajes deben tener asunto!',
      'Ticket Bulk Action' => 'Acci�n m�ltiple con Tickets',
      'Spell Check' => 'Chequeo Ortogr�fico',
      'Note type' => 'Tipo de nota',
      'Unlock Tickets' => 'Desbloquear Tickets',

      # Template: AgentTicketClose
      'A message should have a body!' => 'Los mensajes deben tener contenido',
      'You need to account time!' => 'Necesita contabilizar el tiempo!',
      'Close ticket' => 'Cerrar el ticket',
      'Ticket locked!' => 'Ticket bloqueado!',
      'Ticket unlock!' => 'Ticket desbloqueado!',
      'Previous Owner' => 'Propietario Anterior',
      'Inform Agent' => 'Notificar Agente',
      'Optional' => 'Opcional',
      'Inform involved Agents' => 'Notificar Agentes involucrados',
      'Attach' => 'Anexo',
      'Pending date' => 'Fecha pendiente',
      'Time units' => 'Unidades de tiempo',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'El mensaje debe ser chequeado ortograficamente!',
      'Compose answer for ticket' => 'Redacte una respuesta al ticket',
      'Pending Date' => 'Fecha pendiente',
      'for pending* states' => 'en estado pendiente*',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Cambiar cliente del ticket',
      'Set customer user and customer id of a ticket' => 'Asignar agente y cliente de un ticket',
      'Customer User' => 'Cliente',
      'Search Customer' => 'B�squedas del cliente',
      'Customer Data' => 'Informaci�n del cliente',
      'Customer history' => 'Historia del cliente',
      'All customer tickets.' => 'Todos los tickets de un cliente',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Seguimiento',

      # Template: AgentTicketEmail
      'Compose Email' => 'Redactar Correo',
      'new ticket' => 'nuevo ticket',
      'Refresh' => '',
      'Clear To' => 'Copia Oculta a',
      'All Agents' => 'Todos los Agentes',

      # Template: AgentTicketForward
      'Article type' => 'Tipo de art�culo',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Cambiar el texto libre del ticket',

      # Template: AgentTicketHistory
      'History of' => 'Historia de',

      # Template: AgentTicketLocked

      # Template: AgentTicketMailbox
      'Mailbox' => 'Buz�n',
      'Tickets' => '',
      'of' => 'de',
      'Filter' => '',
      'All messages' => 'Todos los mensajes',
      'New messages' => 'Nuevo mensaje',
      'Pending messages' => 'Mensajes pendientes',
      'Reminder messages' => 'Mensajes recordatorios',
      'Reminder' => 'Recordatorio',
      'Sort by' => 'Ordenado por',
      'Order' => 'Orden',
      'up' => 'arriba',
      'down' => 'abajo',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => 'Necesita user un numero de ticket!',
      'Ticket Merge' => 'Unir Ticket',
      'Merge to' => 'Unir a',

      # Template: AgentTicketMove
      'Move Ticket' => 'Mover Ticket',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Adicionar nota al ticket',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Cambiar el propietario del ticket',

      # Template: AgentTicketPending
      'Set Pending' => 'Indicar pendiente',

      # Template: AgentTicketPhone
      'Phone call' => 'Llamada telef�nica',
      'Clear From' => 'Borrar de',
      'Create' => 'Crear',

      # Template: AgentTicketPhoneOutbound

      # Template: AgentTicketPlain
      'Plain' => 'Texto plano',
      'TicketID' => 'Identificador de Ticket',
      'ArticleID' => 'Identificador de articulo',

      # Template: AgentTicketPrint
      'Ticket-Info' => 'Informacion-Ticket',
      'Accounted time' => 'Tiempo contabilizado',
      'Escalation in' => 'Escalado en',
      'Linked-Object' => 'Objeta-vincular',
      'Parent-Object' => 'Objeto-Padre',
      'Child-Object' => 'Objeto-Hijo',
      'by' => 'por',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Cambiar la prioridad al ticket',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Tickets mostrados',
      'Tickets available' => 'Tickets disponibles',
      'All tickets' => 'Todos los tickets',
      'Queues' => 'Colas',
      'Ticket escalation!' => 'Escalado de ticket',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'Sus tickets',
      'Compose Follow up' => 'Redactar seguimiento',
      'Compose Answer' => 'Responder',
      'Contact customer' => 'Contactar el cliente',
      'Change queue' => 'Cambiar cola',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketResponsible
      'Change responsible of ticket' => '',

      # Template: AgentTicketSearch
      'Ticket Search' => 'Buscar ticket',
      'Profile' => 'Perfil',
      'Search-Template' => 'Buscar-Modelo',
      'TicketFreeText' => '',
      'Created in Queue' => 'Creado en Cola',
      'Result Form' => 'Modelo de Resultados',
      'Save Search-Profile as Template?' => 'Guardar perfil de b�squeda como patr�n?',
      'Yes, save it with name' => 'Si, guardarlo con nombre',

      # Template: AgentTicketSearchResult
      'Search Result' => 'Buscar resultados',
      'Change search options' => 'Cambiar opciones de b�squeda',

      # Template: AgentTicketSearchResultPrint

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'ordenar ascendente',
      'U' => 'A',
      'sort downward' => 'ordenar descendente',
      'D' => '',

      # Template: AgentTicketStatusView
      'Ticket Status View' => 'Ver Estado de Ticket',
      'Open Tickets' => 'Tickets Abiertos',

      # Template: AgentTicketZoom
      'Locked' => 'Bloqueado',
      'Split' => 'Dividir',

      # Template: AgentWindowTab

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => '',

      # Template: CustomerFooter
      'Powered by' => '',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin
      'Login' => 'Identificador',
      'Lost your password?' => 'Perdi� su contrase�a',
      'Request new password' => 'Solicitar una nueva contrase�a',
      'Create Account' => 'Crear Cuenta',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Bienvenido %s',

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
      'Click here to report a bug!' => 'Haga click aqui para reportar un error!',

      # Template: Footer
      'Top of Page' => 'Inicio de p�gina',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'Inicio',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Instalador Web',
      'accept license' => 'aceptar licencia',
      'don\'t accept license' => 'no acepto la licencia',
      'Admin-User' => 'Usuario-Admin',
      'Admin-Password' => 'Contrase�a-Administrador',
      'your MySQL DB should have a root password! Default is empty!' => 'Su BD MySQL debe tener una contrase&ntiulde; de root! Por defecto es va&itilde;a!',
      'Database-User' => '',
      'default \'hot\'' => 'por defecto \'hot\'',
      'DB connect host' => '',
      'Database' => 'Base de Datos',
      'false' => 'falso',
      'SystemID' => 'ID de sistema',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(La identidad del sistema. Cada n�mero de ticket y cada id de sesi&oacuten http comienza con este n�mero)',
      'System FQDN' => 'FQDN del sistema',
      '(Full qualified domain name of your system)' => '(Nombre completo del dominio de su sistema)',
      'AdminEmail' => 'Correo del administrador.',
      '(Email of the system admin)' => '(email del administrador del sistema)',
      'Organization' => 'Organizaci�n',
      'Log' => 'Traza',
      'LogModule' => 'Modulo de trazas',
      '(Used log backend)' => '(Interface de trazas Utilizada)',
      'Logfile' => 'Archivo de trazas',
      '(Logfile just needed for File-LogModule!)' => '(Archivo de trazas necesario para File-LogModule)',
      'Webfrontend' => 'Interface Web',
      'Default Charset' => 'Juego de caracteres por defecto',
      'Use utf-8 it your database supports it!' => 'Usar utf-8 si su base de datos lo soporta!',
      'Default Language' => 'Lenguaje por defecto',
      '(Used default language)' => '(Lenguaje por defecto)',
      'CheckMXRecord' => 'Revisar record MX',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Chequear record MX de direcciones utilizadas al responder. No usarlo si la PC con el Otrs esta detr�s de una linea conmutada $!)',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Para poder utilizar el OTRS debe escribir la siguiente linea de comandos (Terminal/Shell) como root',
      'Restart your webserver' => 'Reinicie su servidor web',
      'After doing so your OTRS is up and running.' => 'Despu�s de hacer esto su OTRS estar� activo y ejecutandose',
      'Start page' => 'P�gina de inicio',
      'Have a lot of fun!' => 'Disfrutelo!',
      'Your OTRS Team' => 'Su equipo OTRS',

      # Template: Login
      'Welcome to %s' => 'Bienvenido a %s',

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'No tiene autorizaci�n',

      # Template: Notify
      'Important' => 'Importante',

      # Template: PrintFooter
      'URL' => '',

      # Template: PrintHeader
      'printed by' => 'impreso por',

      # Template: Redirect

      # Template: Test
      'OTRS Test Page' => 'P�gina de Prueba de OTRS',
      'Counter' => 'Contador',

      # Template: Warning
      # Misc
      'Create Database' => 'Crear Base de Datos',
      ' (work units)' => ' (unidades de trabajo)',
      'Ticket Number Generator' => 'Generador de n�meros de Tickets',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificador de Ticker. Algunas personas gustan de usar por ejemplo \'Ticket#\', \'Call#\' or \'MyTicket#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'De esta forma Ud puede editar directamente las llaves configuradas en Kernel/Config.pm.',
      'Symptom' => 'Sintoma',
      'Site' => 'Sitio',
      'Change users <-> roles settings' => '',
      'Customer history search (e. g. "ID342425").' => 'Historia de b�squedas del cliente (ejemplo: "ID342425"',
      'Close!' => 'Cerrar!',
      'TicketZoom' => 'Detalle de Ticket',
      'Don\'t forget to add a new user to groups!' => 'No olvide incluir el usuario en grupos!',
      'CreateTicket' => 'CrearTicket',
      'OTRS DB Name' => 'Nombre de la BD OTRS',
      'System Settings' => 'Configuraci�n del sistema',
      'Hours' => 'Horas',
      'Finished' => 'Finalizado',
      'Days' => 'Dias',
      'Queue ID' => 'Id de la Cola',
      'A article should have a title!' => 'Los articulos deben tener t�tulo',
      'System History' => 'Historia del Sistema',
      'Modules' => 'M�dulos',
      'Keyword' => 'palabra clave',
      'Close type' => 'Tipo de cierre',
      'DB Admin User' => 'Usuario Admin de la BD',
      'Name is required!' => 'Debe especificar nombre!',
      'Problem' => 'Problema',
      'DB Type' => 'Tipo de BD',
      'next step' => 'pr�ximo paso',
      'Termin1' => '',
      'Customer history search' => 'Historia de b�squedas del cliente',
      'Solution' => 'Soluci�n',
      'Admin-Email' => 'Correo Administrativo',
      'QueueView' => 'Ver la cola',
      'Create new database' => 'Crear nueva base de datos',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Su correo con el ticket n�mero "<OTRS_TICKET>"  fue rebotado a "<OTRS_BOUNCE_TO>". Contacte dicha direcci�n para mas informaci�n',
      'modified' => 'modificado',
      'Delete old database' => 'Eliminar BD antigua',
      'Keywords' => 'palabras clave',
      'Note Text' => 'Nota!',
      'No * possible!' => 'No * posible!',
      'OTRS DB User' => 'Usuario de BD OTRS',
      'Options ' => 'Opciones',
      'PhoneView' => 'Vista telef�nica',
      'Verion' => '',
      'Message for new Owner' => 'Mensaje para el nuevo propietario',
      'OTRS DB Password' => 'Contrase�a para BD del usuario OTRS',
      'Last update' => 'Ultima Actualizaci�n',
      'DB Admin Password' => 'Contrase�a del Admin de la BD',
      'Drop Database' => 'Eliminar Base de Datos',
      'Pending type' => 'Tipo pendiente',
      'Comment (internal)' => 'Comentario (interno)',
      'Minutes' => 'Minutos',
      '(Used ticket number format)' => '(Formato de ticket usado)',
      'Fulltext' => 'Texto Completo',
      'Modified' => 'Modificado',
      'Watched Tickets' => '',
      'Watched' => '',
      'Subscribe' => '',
      'Unsubscribe' => '',
    };
    # $$STOP$$
}

1;
