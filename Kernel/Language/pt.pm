# --
# Kernel/Language/pt.pm - provides pt language translation
# Copyright (C) 2004 CAT <filipehenriques at ip.pt>
# --
# $Id: pt.pm,v 1.21 2005-10-15 12:08:12 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::pt;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.21 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Jul 28 22:14:48 2005

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => 'Sim',
      'No' => 'N�o',
      'yes' => 'sim',
      'no' => 'n�o',
      'Off' => 'Desligado',
      'off' => 'desligado',
      'On' => 'Ligado',
      'on' => 'ligado',
      'top' => 'in�cio',
      'end' => 'fim',
      'Done' => 'Feito',
      'Cancel' => 'Cancelar',
      'Reset' => '',
      'last' => 'ultimo',
      'before' => 'antes',
      'day' => 'dia',
      'days' => 'dias',
      'day(s)' => 'dia(s)',
      'hour' => 'hora',
      'hours' => 'horas',
      'hour(s)' => '',
      'minute' => 'minuto',
      'minutes' => 'minutos',
      'minute(s)' => '',
      'month' => '',
      'months' => '',
      'month(s)' => 'mes(ses)',
      'week' => '',
      'week(s)' => 'semana(s)',
      'year' => '',
      'years' => '',
      'year(s)' => 'ano(s)',
      'wrote' => 'escreveu',
      'Message' => 'Mensagem',
      'Error' => 'Erro',
      'Bug Report' => 'Relat�rio de Erros',
      'Attention' => 'Aten��o',
      'Warning' => 'Aviso',
      'Module' => 'M�dulo',
      'Modulefile' => 'Ficheiro de M�dulo',
      'Subfunction' => 'Sub-fun��o',
      'Line' => 'Linha',
      'Example' => 'Exemplo',
      'Examples' => 'Exemplos',
      'valid' => 'v�lido',
      'invalid' => 'inv�lido',
      'invalid-temporarily' => '',
      ' 2 minutes' => ' 2 minutos',
      ' 5 minutes' => ' 5 minutos',
      ' 7 minutes' => ' 7 minutos',
      '10 minutes' => '10 minutos',
      '15 minutes' => '15 minutos',
      'Mr.' => '',
      'Mrs.' => '',
      'Next' => '',
      'Back' => 'Retornar',
      'Next...' => '',
      '...Back' => '',
      '-none-' => '',
      'none' => 'Nada',
      'none!' => 'Nada!',
      'none - answered' => 'nada  - respondido',
      'please do not edit!' => 'por favor n�o editar!',
      'AddLink' => 'Adicionar link',
      'Link' => '',
      'Linked' => '',
      'Link (Normal)' => '',
      'Link (Parent)' => '',
      'Link (Child)' => '',
      'Normal' => '',
      'Parent' => '',
      'Child' => '',
      'Hit' => '',
      'Hits' => '',
      'Text' => 'Texto',
      'Lite' => '',
      'User' => 'Utilizador',
      'Username' => 'Nome de Utilizador',
      'Language' => 'Idioma',
      'Languages' => 'Idiomas',
      'Password' => 'Senha de Acesso',
      'Salutation' => 'Sauda��o',
      'Signature' => 'Assinatura',
      'Customer' => 'Cliente',
      'CustomerID' => 'Id.do Cliente',
      'CustomerIDs' => '',
      'customer' => 'cliente',
      'agent' => 'Agente',
      'system' => 'Sistema',
      'Customer Info' => 'Informa��o do Cliente',
      'go!' => 'ir!',
      'go' => 'ir',
      'All' => 'Todos',
      'all' => 'todos',
      'Sorry' => 'Desculpe',
      'update!' => 'actualizar!',
      'update' => 'actualizar',
      'Update' => 'Actualizar',
      'submit!' => 'Submeter!',
      'submit' => 'Submeter',
      'Submit' => '',
      'change!' => 'alterar!',
      'Change' => 'Alterar',
      'change' => 'alterar',
      'click here' => 'clique aqui',
      'Comment' => 'Coment�rio',
      'Valid' => 'V�lido',
      'Invalid Option!' => '',
      'Invalid time!' => '',
      'Invalid date!' => '',
      'Name' => 'Nome',
      'Group' => 'Grupo',
      'Description' => 'Descri��o',
      'description' => 'descri��o',
      'Theme' => 'Tema',
      'Created' => 'Criado',
      'Created by' => '',
      'Changed' => '',
      'Changed by' => '',
      'Search' => 'Procura',
      'and' => 'e',
      'between' => '',
      'Fulltext Search' => '',
      'Data' => '',
      'Options' => 'Op��es',
      'Title' => '',
      'Item' => '',
      'Delete' => 'Eliminar',
      'Edit' => 'Editar',
      'View' => 'Ver',
      'Number' => '',
      'System' => 'Sistema',
      'Contact' => 'Contacto',
      'Contacts' => '',
      'Export' => '',
      'Up' => '',
      'Down' => '',
      'Add' => 'Adicionar',
      'Category' => 'Categorias',
      'Viewer' => '',
      'New message' => 'Nova mensagem',
      'New message!' => 'Nova mensagem!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Por favor, responda a este(s) ticket(s) para retornar � vista normal da Queue!',
      'You got new message!' => 'Recebeu uma mensagem nova',
      'You have %s new message(s)!' => 'Tem %s mensagem(s) nova(s)!',
      'You have %s reminder ticket(s)!' => 'Tem %s lembrete(s)',
      'The recommended charset for your language is %s!' => 'O conjunto de caracteres recomendado para o seu idioma � %s!',
      'Passwords dosn\'t match! Please try it again!' => '',
      'Password is already in use! Please use an other password!' => '',
      'Password is already used! Please use an other password!' => '',
      'You need to activate %s first to use it!' => '',
      'No suggestions' => 'Sem sugest�es',
      'Word' => 'Palavra',
      'Ignore' => 'Ignorar',
      'replace with' => 'substituir por',
      'Welcome to OTRS' => 'Bem-vindo ao OTRS',
      'There is no account with that login name.' => 'N�o existe conta com esse utilizador',
      'Login failed! Your username or password was entered incorrectly.' => 'Login inv�lido! O utilizador ou password foram introduzidos incorrectamente.',
      'Please contact your admin' => 'Por Favor contactar o administrador',
      'Logout successful. Thank you for using OTRS!' => 'Saiu com sucesso. Obrigado por utilizar o OTRS!',
      'Invalid SessionID!' => 'Identificador de Sess�o Inv�lido',
      'Feature not active!' => 'Caracter�stica n�o activa!',
      'Take this Customer' => '',
      'Take this User' => 'Utilize este utilizador',
      'possible' => 'poss�vel',
      'reject' => 'rejeitar',
      'Facility' => 'Facilidade',
      'Timeover' => 'Tempo esgotado',
      'Pending till' => 'Pendente at�',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'N�o trabalhe com o UserID 1(Conta de Sistema)! Criar novos utilizadores!',
      'Dispatching by email To: field.' => 'Despachado pelo campo de email Para:',
      'Dispatching by selected Queue.' => 'Despachado pela Queue seleccionada',
      'No entry found!' => 'Sem resultados',
      'Session has timed out. Please log in again.' => 'A sess�o expirou. Por favor autentique-se novamente',
      'No Permission!' => '',
      'To: (%s) replaced with database email!' => 'Para: (%s) substituido pelo email da base de dados',
      'Cc: (%s) added database email!' => '',
      '(Click here to add)' => '(Clique aqui para adicionar)',
      'Preview' => 'Ver antes',
      'Added User "%s"' => '',
      'Contract' => '',
      'Online Customer: %s' => '',
      'Online Agent: %s' => '',
      'Calendar' => '',
      'File' => '',
      'Filename' => 'Nome do Ficheiro',
      'Type' => 'Tipo',
      'Size' => '',
      'Upload' => '',
      'Directory' => '',
      'Signed' => '',
      'Sign' => '',
      'Crypted' => '',
      'Crypt' => '',

      # Template: AAAMonth
      'Jan' => '',
      'Feb' => 'Fev',
      'Mar' => '',
      'Apr' => 'Abr',
      'May' => 'Mai',
      'Jun' => '',
      'Jul' => '',
      'Aug' => 'Ago',
      'Sep' => 'Set',
      'Oct' => 'Out',
      'Nov' => '',
      'Dec' => '',

      # Template: AAANavBar
      'Admin-Area' => '�rea de Administra��o',
      'Agent-Area' => '�rea de Agente',
      'Ticket-Area' => '',
      'Logout' => 'Sair',
      'Agent Preferences' => '',
      'Preferences' => 'Prefer�ncias',
      'Agent Mailbox' => '',
      'Stats' => 'Estat�sticas',
      'Stats-Area' => '',
      'FAQ-Area' => '�rea FAQ',
      'FAQ' => '',
      'FAQ-Search' => '',
      'FAQ-Article' => '',
      'New Article' => 'Novo Artigo',
      'FAQ-State' => '',
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
      'Preferences updated successfully!' => 'Prefer�ncias actualizadas com sucesso!',
      'Mail Management' => 'Gest�o de Mails',
      'Frontend' => 'Interface',
      'Other Options' => 'Outras Op��es',
      'Change Password' => '',
      'New password' => '',
      'New password again' => '',
      'Select your QueueView refresh time.' => 'Selecionar o tempo de refresh da QueueView',
      'Select your frontend language.' => 'Selecionar o Idioma da sua Interface.',
      'Select your frontend Charset.' => 'Selecionar o Conjunto de Caracteres da sua Interface .',
      'Select your frontend Theme.' => 'Selecionar o Tema do seu Interface.',
      'Select your frontend QueueView.' => 'Selecionar o seu Interface da QueueView.',
      'Spelling Dictionary' => 'Corrector Ortogr�fico',
      'Select your default spelling dictionary.' => 'Seleccionar o seu corrector ortogr�fico',
      'Max. shown Tickets a page in Overview.' => 'N� m�ximo de tickets por p�gina em OverView ',
      'Can\'t update password, passwords dosn\'t match! Please try it again!' => '',
      'Can\'t update password, invalid characters!' => '',
      'Can\'t update password, need min. 8 characters!' => '',
      'Can\'t update password, need 2 lower and 2 upper characters!' => '',
      'Can\'t update password, need min. 1 digit!' => '',
      'Can\'t update password, need min. 2 characters!' => '',
      'Password is needed!' => '',

      # Template: AAATicket
      'Lock' => 'Bloquear',
      'Unlock' => 'Desbloquear',
      'History' => 'Hist�rico',
      'Zoom' => 'Detalhes',
      'Age' => 'Idade',
      'Bounce' => 'Devolver',
      'Forward' => 'Encaminhar',
      'From' => 'De',
      'To' => 'Para',
      'Cc' => 'C�pia ',
      'Bcc' => 'Copia Invis�vel',
      'Subject' => 'Assunto',
      'Move' => 'Mover',
      'Queue' => '',
      'Priority' => 'Prioridade',
      'State' => 'Estado',
      'Compose' => 'Comp�r',
      'Pending' => 'Pendentes',
      'Owner' => 'Propriet�rio',
      'Owner Update' => '',
      'Sender' => 'Remetente',
      'Article' => 'Artigo',
      'Ticket' => '',
      'Createtime' => 'Hora de cria��o',
      'plain' => 'texto',
      'eMail' => '',
      'email' => '',
      'Close' => 'Fechar',
      'Action' => 'Ac��o',
      'Attachment' => 'Anexo',
      'Attachments' => 'Anexos',
      'This message was written in a character set other than your own.' => 'Esta mensagem foi escrita utilizando um conjunto de caracteres diferente do seu.',
      'If it is not displayed correctly,' => 'Se ele n�o for exibido correctamente,',
      'This is a' => 'Este � um',
      'to open it in a new window.' => 'para abrir em nova janela.',
      'This is a HTML email. Click here to show it.' => 'Este � um email HTML. Clicar aqui para mostrar.',
      'Free Fields' => '',
      'Merge' => '',
      'closed successful' => 'fechado com �xito',
      'closed unsuccessful' => 'fechado sem �xito',
      'new' => 'novo',
      'open' => 'aberto',
      'closed' => '',
      'removed' => 'removido',
      'pending reminder' => 'post-it de pendente',
      'pending auto close+' => 'pendente fecho autom�tico+',
      'pending auto close-' => 'pendente fecho autom�tico-',
      'email-external' => 'email-externo',
      'email-internal' => 'email-interno',
      'note-external' => 'nota-externa',
      'note-internal' => 'nota-interna',
      'note-report' => 'nota-relat�rio',
      'phone' => 'telefone',
      'sms' => '',
      'webrequest' => 'Solicitar via web',
      'lock' => 'bloquear',
      'unlock' => 'desbloquear',
      'very low' => 'muito baixo',
      'low' => 'baixo',
      'normal' => '',
      'high' => 'alto',
      'very high' => 'muito alto',
      '1 very low' => '1 muito baixo',
      '2 low' => '2 baixo',
      '3 normal' => '',
      '4 high' => '4 alto',
      '5 very high' => '5 muito alto',
      'Ticket "%s" created!' => 'Ticket "%s" criados!',
      'Ticket Number' => '',
      'Ticket Object' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'Don\'t show closed Tickets' => 'N�o mostrar Tickets fechados',
      'Show closed Tickets' => 'Mostrar Tickets fechados',
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
      'New ticket notification' => 'Notifica��o de novo ticket',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Follow up notification' => 'Notifica��o de Follow up',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notificar se um cliente enviar um follow up e sou o owner desse ticket.',
      'Ticket lock timeout notification' => 'Notifica��o de bloqueio por tempo expirado',
      'Send me a notification if a ticket is unlocked by the system.' => 'Notificar se um ticket for desbloqueado pelo sistema.',
      'Move notification' => 'Notifica��o de movimentos',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => '',
      'Custom Queue' => 'Queue Personalizada',
      'QueueView refresh time' => 'Tempo de refresh da QueueView',
      'Screen after new ticket' => 'Ecr� ap�s novo ticket',
      'Select your screen after creating a new ticket.' => 'Seleccionar ecr� ap�s cria��o de novo ticket.',
      'Closed Tickets' => 'Tickets Fechados',
      'Show closed tickets.' => 'Mostrar tickets fechados',
      'Max. shown Tickets a page in QueueView.' => 'N� m�ximo de tickets por p�gina em QueueView',
      'Responses' => 'Respostas',
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
      'Sun' => 'Dom',
      'Mon' => 'Seg',
      'Tue' => 'Ter',
      'Wed' => 'Qua',
      'Thu' => 'Qui',
      'Fri' => 'Sex',
      'Sat' => 'Sab',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Ger�nciamento de Anexos',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Ger�nciamento de Auto-Respostas',
      'Response' => 'Resposta',
      'Auto Response From' => 'Auto-Resposta De',
      'Note' => 'Nota',
      'Useable options' => 'Op��es acess�veis',
      'to get the first 20 character of the subject' => 'para obter os 20 primeiros caracteres do assunto',
      'to get the first 5 lines of the email' => 'para obter as 5 primeiras linhas do email',
      'to get the from line of the email' => 'para obter a linha "De" do email',
      'to get the realname of the sender (if given)' => 'para obter o nome do remetente (se possuir no email)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'A mensagem sendo composta foi fechada. Saindo.',
      'This window must be called from compose window' => 'Esta janela deve ser chamada da janela de composi��o',
      'Customer User Management' => 'Gest�o de Users de Clientes',
      'Search for' => '',
      'Result' => '',
      'Select Source (for add)' => '',
      'Source' => '',
      'This values are read only.' => '',
      'This values are required.' => '',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => '',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => '',
      'Change %s settings' => 'Modificar %s configura��es',
      'Select the user:group permissions.' => 'Seleccionar o utilizador:permiss�es de grupo.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Se nada for seleccionado, ent�o n�o h� permiss�es neste grupo (tickets n�o estaram dispon�veis para o utilizador).',
      'Permission' => 'Permiss�o',
      'ro' => '',
      'Read only access to the ticket in this group/queue.' => 'Acesso apenas de leitura para o ticket neste grupo/Queue.',
      'rw' => '',
      'Full read and write access to the tickets in this group/queue.' => 'Acesso total de leitura e escrita para os tickets neste grupo/Queue.',

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => 'Mensagem enviada para',
      'Recipents' => 'Destinat�rios',
      'Body' => 'Corpo',
      'send' => 'enviar',

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
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Procura de texto-completo no artigo (ex: "Mar*in" ou "Baue*")',
      '(e. g. 10*5155 or 105658*)' => '(ex: 10*5155 ou 105658*)',
      '(e. g. 234321)' => '(ex: 234321)',
      'Customer User Login' => 'Login de Cliente',
      '(e. g. U5150)' => '(ex: U5150)',
      'Agent' => 'Agente',
      'TicketFreeText' => 'Texto livre do Ticket',
      'Ticket Lock' => '',
      'Times' => 'Vezes',
      'No time settings.' => 'Sem defini��es de tempo',
      'Ticket created' => 'Ticket criado',
      'Ticket created between' => 'Ticket criado entre',
      'New Priority' => '',
      'New Queue' => 'Nova Queue',
      'New State' => '',
      'New Agent' => '',
      'New Owner' => 'Novo Propriet�rio',
      'New Customer' => '',
      'New Ticket Lock' => '',
      'CustomerUser' => 'Utilizador do Cliente',
      'Add Note' => 'Adicionar Nota',
      'CMD' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => '',
      'Delete tickets' => '',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => '',
      'Modules' => '',
      'Param 1' => '',
      'Param 2' => '',
      'Param 3' => '',
      'Param 4' => '',
      'Param 5' => '',
      'Param 6' => '',
      'Save' => '',

      # Template: AdminGroupForm
      'Group Management' => 'Gest�o de Grupos',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'O grupo admin � para uso na �rea de administra��o e o grupo estat�sticas � para uso na �rea de estat�sticas.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crie novos grupos para manipular as permiss�es de acesso para diferentes grupos de agentes (exemplos: departamento de compras, departamento de suporte, departamento de vendas, etc...).',
      'It\'s useful for ASP solutions.' => 'Isto � �til para solu��es ASP.',

      # Template: AdminLog
      'System Log' => 'Registro do Sistema',
      'Time' => '',

      # Template: AdminNavigationBar
      'Users' => '',
      'Groups' => 'Grupos',
      'Misc' => 'Variedades',

      # Template: AdminNotificationForm
      'Notification Management' => 'Gest�o de Notifica��o',
      'Notification' => '',
      'Notifications are sent to an agent or a customer.' => 'Notifica��es s�o enviadas para o agente ou o cliente',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Op��es de Configura��o (Ex. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Op��es do dono do Ticket',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Op��es do utilizador que requereu a ac��o (Ex. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Op�oes do Cliente corrente (Ex. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',

      # Template: AdminPackageManager
      'Package Manager' => '',
      'Uninstall' => '',
      'Verion' => '',
      'Do you really want to uninstall this package?' => '',
      'Install' => '',
      'Package' => '',
      'Online Repository' => '',
      'Version' => '',
      'Vendor' => '',
      'Upgrade' => '',
      'Local Repository' => '',
      'Status' => '',
      'Overview' => '',
      'Download' => '',
      'Rebuild' => '',
      'Reinstall' => '',

      # Template: AdminPGPForm
      'PGP Management' => '',
      'Identifier' => '',
      'Bit' => '',
      'Key' => 'Chave',
      'Fingerprint' => '',
      'Expires' => '',
      'In this way you can directly edit the keyring configured in SysConfig.' => '',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'Gest�o de Contas POP3',
      'Host' => 'Anfitri�o',
      'Trusted' => 'Confi�vel',
      'Dispatching' => 'Despachando',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Todos os emails de entrada com uma conta ser� despachado na Queue selecionada!',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => '',
      'Filtername' => '',
      'Match' => 'Igual',
      'Header' => '',
      'Value' => 'Valor',
      'Set' => 'Selecciona',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => '',

      # Template: AdminQueueAutoResponseTable

      # Template: AdminQueueForm
      'Queue Management' => 'Gest�o de Queues',
      'Sub-Queue of' => 'Sub-Queue de',
      'Unlock timeout' => 'Tempo de desbloqueio',
      '0 = no unlock' => '0 = sem desbloqueio',
      'Escalation time' => 'Tempo de escalamento',
      '0 = no escalation' => '0 = sem escalamento',
      'Follow up Option' => 'Op��o de follow up',
      'Ticket lock after a follow up' => 'Bloqueio do bilhete ap�s os follow ups',
      'Systemaddress' => 'Endere�o do Sistema',
      'Customer Move Notify' => 'Movimento de Cliente Notificado',
      'Customer State Notify' => 'Estado de Cliente Notificado',
      'Customer Owner Notify' => 'Owner de Cliente Notificado',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se um agente bloqueia um ticket e ele n�o envia uma resposta dentro deste tempo, o ticket ser� desbloqueado automaticamente. Ent�o o ticket ser� vis�vel para todos os outros agentes.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Se um ticket n�o foi respondido dentro deste tempo, apenas os tickets com este tempo vencido ser�o exibidos.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Se um ticket est� fechado e um cliente envia um follow up, este mesmo ticket ser� bloqueado para o antigo propriet�rio.',
      'Will be the sender address of this queue for email answers.' => 'Ser� o endere�o de email de respostas desta Queue.',
      'The salutation for email answers.' => 'A sauda��o para as respostas de emails.',
      'The signature for email answers.' => 'A assinatura para as respostas de emails.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS envia um email de  notifica��o para o cliente se ticket for movido.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS envia um email de notifica��o se o estado do ticket for alterado.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS envia um email de notifica��o se o owner do ticket for alterado.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => '',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Resposta',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => '',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Gest�o de Respostas',
      'A response is default text to write faster answer (with default text) to customers.' => 'Uma resposta � um texto padr�o para comp�r respostas r�pidas (com texto padr�o) para clientes.',
      'Don\'t forget to add a new response a queue!' => 'N�o se esque�a de adicionar a nova resposta a uma Queue!',
      'Next state' => 'Pr�ximo estado',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'The current ticket state is' => 'O estado corrento do ticket �',
      'Your email address is new' => '',

      # Template: AdminRoleForm
      'Role Management' => '',
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => '',
      'move_into' => 'mover para',
      'Permissions to move tickets into this group/queue.' => 'Permiss�es para mover Tickets neste grupo/queue',
      'create' => 'criar',
      'Permissions to create tickets in this group/queue.' => 'Permisses para criar Tickets neste grupo/queue',
      'owner' => 'dono',
      'Permissions to change the ticket owner in this group/queue.' => 'Permiss�es para modificar o dono do Ticket neste grupo/queue',
      'priority' => 'prioridade',
      'Permissions to change the ticket priority in this group/queue.' => 'Permiss�es para modificar a prioridade do Ticket neste grupo/queue',

      # Template: AdminRoleGroupForm
      'Role' => '',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => '',
      'Active' => '',
      'Select the role:user relations.' => '',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Gest�o de Sauda��es',
      'customer realname' => 'Nome do cliente',
      'for agent firstname' => 'Nome do Agente',
      'for agent lastname' => 'Sobrenome do Agente',
      'for agent user id' => 'para ID de utilizador de agente',
      'for agent login' => 'para login de agente',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Caixa de Sele��o',
      'SQL' => '',
      'Limit' => 'Limite',
      'Select Box Result' => 'Selecione a Caixa de Resultado',

      # Template: AdminSession
      'Session Management' => 'Gest�o de Sess�es',
      'Sessions' => 'Sess�es',
      'Uniq' => '�nico',
      'kill all sessions' => 'Finalizar todas as sess�es',
      'Session' => '',
      'kill session' => 'Finalizar sess�o',

      # Template: AdminSignatureForm
      'Signature Management' => 'Gest�o de Assinaturas',

      # Template: AdminSMIMEForm
      'SMIME Management' => '',
      'Add Certificate' => '',
      'Add Private Key' => '',
      'Secret' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',

      # Template: AdminStateForm
      'System State Management' => 'Gest�o de Estados do Sistema',
      'State Type' => 'Estado Tipo',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Ter em conta que tamb�m actualizaste',
      'See also' => 'Ver tamb�m',

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
      'Content' => '',
      'New' => 'Novos',
      'New Group' => '',
      'Group Ro' => '',
      'New Group Ro' => '',
      'NavBarName' => '',
      'Image' => '',
      'Prio' => '',
      'Block' => '',
      'NavBar' => '',
      'AccessKey' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Gest�o dos Endere�os de Emails do Sistema',
      'Email' => '',
      'Realname' => 'Nome',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todos os emails de entrada com este Email(Para:) ser�o despachados na Queue selecionada!',

      # Template: AdminUserForm
      'User Management' => 'Gest�o de Users',
      'Firstname' => 'Nome',
      'Lastname' => 'Sobrenome',
      'User will be needed to handle tickets.' => 'Ser� necess�rio um user para manipular os tickets.',
      'Don\'t forget to add a new user to groups and/or roles!' => '',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => '',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'Lista de Endere�os',
      'Return to the compose screen' => 'Retornar para o ecr� de composi��o',
      'Discard all changes and return to the compose screen' => 'Descartar todas as modifica��es e retornar para o ecr� de composi��o',

      # Template: AgentCalendarSmall

      # Template: AgentCalendarSmallIcon

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => 'Informa��o',

      # Template: AgentLinkObject
      'Link Object' => '',
      'Select' => 'Seleccionar',
      'Results' => 'Resultados',
      'Total hits' => 'Total de acertos',
      'Site' => '',
      'Detail' => '',

      # Template: AgentLookup
      'Lookup' => '',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Verificar a Ortografica',
      'spelling error(s)' => 'erro(s) ortogr�ficos',
      'or' => 'ou',
      'Apply these changes' => 'Aplicar estas modifica��es',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Uma mensagem deve possuir um Para: destinat�rio!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Precisa de um endere�o de email (exemplo: cliente@exemplo.pt) no Para:!',
      'Bounce ticket' => 'Devolver bilhete',
      'Bounce to' => 'Devolver para',
      'Next ticket state' => 'Pr�ximo estado do ticket',
      'Inform sender' => 'Informe o remetente',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Seu email com o n�mero de ticket "<OTRS_TICKET>" foi devolvido para "<OTRS_BOUNCE_TO>". Contate este endere�o para mais informa��es.',
      'Send mail!' => 'Enviar email!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'A mensagem deve conter um assunto!',
      'Ticket Bulk Action' => '',
      'Spell Check' => 'Checar Ortografia',
      'Note type' => 'Tipo de nota',
      'Unlock Tickets' => '',

      # Template: AgentTicketClose
      'A message should have a body!' => 'A mensagem deve conter um texto!',
      'You need to account time!' => '� necess�rio o tempo dispendido',
      'Close ticket' => 'Fechar ticket',
      'Note Text' => 'Nota',
      'Close type' => 'Tipo de fecho',
      'Time units' => 'Unidades de tempo',
      ' (work units)' => ' (unidades de trabalho)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Tem de verificar a ortografia da mensagem',
      'Compose answer for ticket' => 'Comp�r uma resposta para o ticket',
      'Attach' => 'Anexo',
      'Pending Date' => 'Data de Pend�ncia',
      'for pending* states' => 'em estado pendente*',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Modificar o cliente do ticket',
      'Set customer user and customer id of a ticket' => '� necess�rio o utilizador e o ID do cliente do Ticket',
      'Customer User' => 'Utilizador de Cliente',
      'Search Customer' => 'Procurar cliente',
      'Customer Data' => 'Dados do Cliente',
      'Customer history' => 'Hist�rico do cliente',
      'All customer tickets.' => 'Todos os Tickets do utilizador',

      # Template: AgentTicketCustomerMessage
      'Follow up' => '',

      # Template: AgentTicketEmail
      'Compose Email' => '',
      'new ticket' => 'novo ticket',
      'Clear To' => '',
      'All Agents' => 'Todos os Agentes',
      'Termin1' => '',

      # Template: AgentTicketForward
      'Article type' => 'Tipo de artigo',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Alterar Texto livre do Ticket',

      # Template: AgentTicketHistory
      'History of' => 'Hist�rico de',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket bloqueado!',
      'Ticket unlock!' => 'Ticket desbloqueado!',

      # Template: AgentTicketMailbox
      'Mailbox' => 'Caixa de Entrada',
      'Tickets' => '',
      'All messages' => 'Todas as mensagens',
      'New messages' => 'Mensagens novas',
      'Pending messages' => 'Mensagens pendentes',
      'Reminder messages' => 'Mensagens com lembretes',
      'Reminder' => 'Lembretes',
      'Sort by' => 'Ordenado pela',
      'Order' => 'Ordem',
      'up' => 'normal',
      'down' => 'inversa',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => '',
      'Ticket Merge' => '',
      'Merge to' => '',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '',

      # Template: AgentTicketMove
      'Queue ID' => 'ID da Queue',
      'Move Ticket' => 'Mover Ticket',
      'Previous Owner' => 'Propriet�rio Anterior',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Adicionar nota ao Ticket',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Modificar o propriet�rio do Ticket',
      'Message for new Owner' => 'Mensagem para um novo Propriet�rio',

      # Template: AgentTicketPending
      'Set Pending' => 'Definir como Pendente',
      'Pending type' => 'Tipo de pend�ncia',
      'Pending date' => 'Data da pend�ncia',

      # Template: AgentTicketPhone
      'Phone call' => 'Chamada telef�nica',

      # Template: AgentTicketPhoneNew
      'Clear From' => 'Limpar "De:"',

      # Template: AgentTicketPlain
      'Plain' => 'Texto',
      'TicketID' => '',
      'ArticleID' => 'Id.do artigo',

      # Template: AgentTicketPrint
      'Ticket-Info' => '',
      'Accounted time' => 'Tempo contabilizado',
      'Escalation in' => 'Escalado em',
      'Linked-Object' => '',
      'Parent-Object' => '',
      'Child-Object' => '',
      'by' => 'por',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Modificar a prioridade do ticket',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Tickets mostrados',
      'Page' => 'P�gina',
      'Tickets available' => 'Tickets dispon�veis',
      'All tickets' => 'Todos Tickets',
      'Queues' => '',
      'Ticket escalation!' => 'Escalamento de Tickets!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'O seu Ticket',
      'Compose Follow up' => 'Compor Follow up',
      'Compose Answer' => 'Comp�r resposta',
      'Contact customer' => 'Contactar cliente',
      'Change queue' => 'Modificar Queue',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => 'Procura de Tickets',
      'Profile' => 'Perfil',
      'Search-Template' => 'Template de procura',
      'Created in Queue' => '',
      'Result Form' => 'Formul�rio de resultado',
      'Save Search-Profile as Template?' => 'Guardar Perfil de Procura como Template',
      'Yes, save it with name' => 'Sim, guardar com o nome',
      'Customer history search' => 'Procura no Hist�rico do cliente',
      'Customer history search (e. g. "ID342425").' => 'Procura no Hist�rico do cliente (exemplo: "ID342425")',
      'No * possible!' => 'N�o s�o poss�veis *!',

      # Template: AgentTicketSearchResult
      'Search Result' => 'Resultado de Procura',
      'Change search options' => 'Alterar op��es de procura',

      # Template: AgentTicketSearchResultPrint
      '"}' => '',

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'ordem crescente',
      'U' => 'C',
      'sort downward' => 'ordem decrescente',
      'D' => '',

      # Template: AgentTicketStatusView
      'Ticket Status View' => '',
      'Open Tickets' => '',

      # Template: AgentTicketZoom
      'Split' => 'Dividir',

      # Template: AgentTicketZoomStatus
      'Locked' => '',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => 'Retroceder',

      # Template: CustomerFAQ
      'Print' => 'Imprimir',
      'Keywords' => 'Palavras Chave',
      'Symptom' => 'Sintoma',
      'Problem' => 'Problema',
      'Solution' => 'Solu��o',
      'Modified' => 'Modificado',
      'Last update' => '�ltima Actualiza��o',
      'FAQ System History' => 'Sistema de Hist�rico da FAQ',
      'modified' => '',
      'FAQ Search' => 'Procura na FAQ',
      'Fulltext' => 'Texto completo',
      'Keyword' => 'Palavra chave',
      'FAQ Search Result' => 'Resultado da Procura na FAQ',
      'FAQ Overview' => 'Resumo da FAQ',

      # Template: CustomerFooter
      'Powered by' => 'Produzido por',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin
      'Login' => '',
      'Lost your password?' => 'Esqueceu-se da password?',
      'Request new password' => 'Solicitar nova password',
      'Create Account' => 'Criar Conta',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Bem-vindo %s',

      # Template: CustomerPreferencesForm

      # Template: CustomerStatusView
      'of' => 'de',

      # Template: CustomerTicketMessage

      # Template: CustomerTicketMessageNew

      # Template: CustomerTicketSearch

      # Template: CustomerTicketSearchResultCSV

      # Template: CustomerTicketSearchResultPrint

      # Template: CustomerTicketSearchResultShort

      # Template: CustomerTicketZoom

      # Template: CustomerWarning

      # Template: Error
      'Click here to report a bug!' => 'Clicar para reportar um erro!',

      # Template: FAQ
      'Comment (internal)' => 'Coment�rio (interno)',
      'A article should have a title!' => '',
      'New FAQ Article' => '',
      'Do you really want to delete this Object?' => '',
      'System History' => '',

      # Template: FAQCategoryForm
      'Name is required!' => '',
      'FAQ Category' => 'Categoria da FAQ',

      # Template: FAQLanguageForm
      'FAQ Language' => 'Idioma da FAQ',

      # Template: Footer
      'QueueView' => '',
      'PhoneView' => 'Chamada',
      'Top of Page' => 'Topo da P�gina',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'In�cio',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Instalador Web',
      'accept license' => 'Aceitar licen�a',
      'don\'t accept license' => 'N�o Aceitar licen�a',
      'Admin-User' => 'Utilizador de Admin',
      'Admin-Password' => '',
      'your MySQL DB should have a root password! Default is empty!' => 'A sua Base de Dados MySQL deve ter uma password de root! Por defeito n�o tem password!',
      'Database-User' => '',
      'default \'hot\'' => 'por defeito \'hot\'',
      'DB connect host' => '',
      'Database' => '',
      'Create' => '',
      'false' => '',
      'SystemID' => 'ID do sistema',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(A identidade do sistema. Cada n�mero de Ticket e cada id. da sess�o http, inicia com este n�mero)',
      'System FQDN' => 'FQDN do sistema',
      '(Full qualified domain name of your system)' => '(Nome completo do dom�nio do seu sistema)',
      'AdminEmail' => 'Email do Administrador',
      '(Email of the system admin)' => '(Email do administrador do sistema)',
      'Organization' => 'Organiza��o',
      'Log' => '',
      'LogModule' => 'M�dulo de Logs',
      '(Used log backend)' => '()',
      'Logfile' => 'Ficheiro de Log',
      '(Logfile just needed for File-LogModule!)' => '(Ficheiro de registo para File-LogModule)',
      'Webfrontend' => 'Interface Web',
      'Default Charset' => 'Conjunto de Caracteres Padr�o',
      'Use utf-8 it your database supports it!' => 'Usar utf-8 se a base de dados suportar',
      'Default Language' => 'Idioma Padr�o',
      '(Used default language)' => '(Idioma padr�o utilizado)',
      'CheckMXRecord' => 'Verificar apontador de MX',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '
(Verifica os apontadores de MX quando compoe uma resposta. N�o usar caso esteja a usar uma liga��o dial-up!)',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Para usar o OTRS tem de introduzir o seguinte comando na linha de comandos (Terminal/Shell) como root',
      'Restart your webserver' => 'Reinicie o seu servidor Web',
      'After doing so your OTRS is up and running.' => 'Depois disto o seu OTRS estar� completamente funcional',
      'Start page' => 'P�gina Inicial',
      'Have a lot of fun!' => 'Divirta-se!',
      'Your OTRS Team' => 'A sua Equipa OTRS',

      # Template: Login

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Sem Permiss�o',

      # Template: Notify
      'Important' => '',

      # Template: PrintFooter
      'URL' => '',

      # Template: PrintHeader
      'printed by' => 'impresso por',

      # Template: Redirect

      # Template: SystemStats
      'Format' => '',

      # Template: Test
      'OTRS Test Page' => 'P�gina de Teste do OTRS',
      'Counter' => '',

      # Template: Warning
      # Misc
      'OTRS DB connect host' => 'Servidor de liga��o da Base de Dados OTRS',
      'Create Database' => 'Criar Base de Dados',
      'DB Host' => 'Servidor Base de Dados',
      'Ticket Number Generator' => 'Gerador de N�meros de Tickets',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identifica��o do Ticket. Algumas pessoas usam \'Ticket#\', \'Chamada#\' or \'MeuTicket#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Ticket Hook' => 'Identificador do Ticket',
      'Close!' => 'Fechar!',
      'TicketZoom' => 'Detalhes do ticket',
      'Don\'t forget to add a new user to groups!' => 'N�o esque�a de adicionar um novo user nos grupos!',
      'License' => 'Licen�a',
      'OTRS DB Name' => 'Nome da Base de Dados OTRS',
      'System Settings' => 'Propriedades de Sistema',
      'Finished' => 'Terminado',
      'DB Admin User' => 'Utilizador Admin da Base de Dados',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',
      'Change user <-> group settings' => 'Modificar users <-> configura��es de grupos',
      'DB Type' => 'Tipo da Base de Dados',
      'next step' => 'pr�ximo passo',
      'Admin-Email' => 'Email do Admin.',
      'Create new database' => 'Criar nova Base de Dados',
      'Delete old database' => 'Eliminar Base de Dados Antiga',
      'OTRS DB User' => 'Utilizador Base de Dados OTRS',
      'OTRS DB Password' => 'Password da Base de Dados OTRS',
      'DB Admin Password' => 'Password Admin da Base de Dados',
      'Drop Database' => 'Apagar Base de Dados',
      '(Used ticket number format)' => '(Formato de Ticket utilizado)',
      'FAQ History' => 'Hist�rico da FAQ',
      'Package not correctly deployed, you need to deploy it again!' => '',
      'Customer called' => '',
      'Phone' => '',
      'Office' => '',
      'CompanyTickets' => '',
      'MyTickets' => '',
      'New Ticket' => '',
      'Create new Ticket' => '',
      'installed' => '',
      'uninstalled' => '',
    };
    # $$STOP$$
}
# --
1;

