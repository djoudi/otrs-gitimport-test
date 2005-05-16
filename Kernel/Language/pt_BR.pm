# --
# Kernel/Language/pt_BR.pm - provides pt_BR language translation
# Copyright (C) 2003 Gilberto Cezar de Almeida <gibalmeida at hotmail.com>
# --
# $Id: pt_BR.pm,v 1.24 2005-05-16 12:46:35 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::pt_BR;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.24 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Sun May  8 23:20:12 2005

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
      'no' => 'nenhuma',
      'Off' => 'Desligado',
      'off' => 'desligado',
      'On' => 'Ligado',
      'on' => 'ligado',
      'top' => 'in�cio',
      'end' => 'fim',
      'Done' => 'Feito',
      'Cancel' => 'Cancelar',
      'Reset' => 'Re-iniciar',
      'day' => 'dia',
      'days' => 'dias',
      'hour' => 'hora',
      'hours' => 'horas',
      'minute' => 'minuto',
      'minutes' => 'minutos',
      'wrote' => 'escreveu',
      'Message' => 'Mensagem',
      'Error' => 'Erro',
      'Bug Report' => 'Relat�rio de Erros',
      'Attention' => 'Aten��o',
      'Warning' => 'Aviso',
      'Module' => 'M�dulo',
      'Modulefile' => 'Arquivo de M�dulo',
      'Subfunction' => 'Sub-fun��o',
      'Line' => 'Linha',
      'Example' => 'Exemplo',
      'Examples' => 'Exemplos',
      'invalid' => 'inv�lido',
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
      'none' => 'nada',
      'none!' => 'nada!',
      'none - answered' => 'nada  - respondido',
      'please do not edit!' => 'Por favor, n�o edite!',
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
      'User' => 'Usu�rio',
      'Username' => 'Nome de Usu�rio',
      'Language' => 'Idioma',
      'Languages' => 'Idiomas',
      'Password' => 'Senha',
      'Salutation' => 'Sauda��o',
      'Signature' => 'Assinatura',
      'Customer' => 'Cliente',
      'CustomerID' => 'Id.do Cliente',
      'CustomerIDs' => '',
      'customer' => '',
      'agent' => '',
      'system' => '',
      'Customer Info' => 'Inform���o do Cliente',
      'go!' => 'ir!',
      'go' => 'ir',
      'All' => 'Todos',
      'all' => 'todos',
      'Sorry' => 'Desculpe',
      'update!' => 'atualizar!',
      'update' => 'atualizar',
      'Update' => '',
      'submit!' => 'Enviar!',
      'submit' => 'Enviar',
      'Submit' => '',
      'change!' => 'alterar!',
      'Change' => 'Alterar',
      'change' => 'alterar',
      'click here' => 'clique aqui',
      'Comment' => 'Coment�rio',
      'Valid' => 'V�lido',
      'Name' => 'Nome',
      'Group' => 'Grupo',
      'Description' => 'Descri��o',
      'description' => 'descri��o',
      'Theme' => 'Tema',
      'Created' => 'Criado',
      'Created by' => '',
      'Changed' => '',
      'Changed by' => '',
      'Search' => '',
      'and' => '',
      'between' => '',
      'Fulltext Search' => '',
      'Data' => '',
      'Options' => 'Op��es',
      'Title' => '',
      'Item' => '',
      'Delete' => '',
      'Edit' => '',
      'View' => 'Ver',
      'Number' => '',
      'System' => 'Sistema',
      'Contact' => 'Contato',
      'Contacts' => '',
      'Export' => '',
      'Up' => '',
      'Down' => '',
      'Add' => '',
      'Category' => '',
      'New message' => 'Nova mensagem',
      'New message!' => 'Nova mensagem!',
      'Admin-Area' => '�rea de Administra��o',
      'Agent-Area' => '',
      'FAQ-Area' => '',
      'QueueView' => 'Fila',
      'Stats' => 'Estat�sticas',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Por favor, responda este(s) bilhete(s) para retornar para vis�o normal da fila!',
      'You got new message!' => 'Voc� recebeu uma nova mensagem',
      'You have %s new message(s)!' => 'Voc� tem %s nova(s) mensagem(s)!',
      'You have %s reminder ticket(s)!' => 'Voc� tem %s bilhete(s) remanescente(s)',
      'The recommended charset for your language is %s!' => 'O conjunto de caracteres recomendado para o seu idioma � %s!',
      'Passwords dosn\'t match! Please try it again!' => '',
      'Password is already in use! Please use an other password!' => '',
      'Password is already used! Please use an other password!' => '',
      'No suggestions' => 'Sem sugest�es',
      'Word' => 'Palavra',
      'Ignore' => 'Ignorar',
      'replace with' => 'substituir com',
      'Welcome to OTRS' => 'Bem-vindo ao OTRS',
      'There is no account with that login name.' => 'N�o existe conta com este nome de usu�rio',
      'Login failed! Your username or password was entered incorrectly.' => 'Identifica��o incorreta! Seu nome de usu�rio ou senha foram informadas incorretamentes.',
      'Please contact your admin' => 'Por favor, contate seu administrador',
      'Logout successful. Thank you for using OTRS!' => 'Desconex�o com sucesso. Obrigado por utilizar o OTRS!',
      'Invalid SessionID!' => 'Identifica��o de Sess�o Inv�lida',
      'Feature not active!' => 'Caracter�stica n�o ativada!',
      'Ticket Number' => '',
      'Ticket Object' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'Take this Customer' => '',
      'Take this User' => '',
      'possible' => 'poss�vel',
      'reject' => 'rejeitar',
      'Facility' => 'Facilidade',
      'Timeover' => 'Tempo esgotado',
      'Pending till' => 'Gaveta pendente',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'N�o trabalhe com o Identificador de Usu�rio 1(Conta do Sistema)! Crie novos usu�rios!',
      'Dispatching by email To: field.' => 'Despachar pelo campo de email To:',
      'Dispatching by selected Queue.' => 'Despachar pela fila selecionada',
      'No entry found!' => '',
      'Session has timed out. Please log in again.' => '',
      'No Permission!' => '',
      'To: (%s) replaced with database email!' => '',
      'Cc: (%s) added database email!' => '',
      'Don\'t show closed Tickets' => '',
      'Show closed Tickets' => '',
      'New Article' => '',
      '(Click here to add)' => '',
      'last' => '',
      'before' => '',
      'day(s)' => '',
      'month(s)' => '',
      'week(s)' => '',
      'year(s)' => '',
      'Preview' => '',
      'Added User "%s"' => '',
      'Contract' => '',
      'Online Customer: %s' => '',
      'Online Agent: %s' => '',
      'Calendar' => '',
      'File' => '',
      'Filename' => '',
      'Type' => 'Tipo',
      'Size' => '',
      'Upload' => '',
      'Directory' => '',
      'Signed' => '',
      'Sign' => '',
      'Crypted' => '',
      'Crypt' => '',
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
      'Ticket-Area' => '',
      'Logout' => 'Desconectar-se',
      'Agent Preferences' => '',
      'Preferences' => 'Prefer�ncias',
      'Agent Mailbox' => '',
      'Stats-Area' => '',
      'FAQ' => '',
      'FAQ-Search' => '',
      'FAQ-Article' => '',
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

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Prefer�ncias atualizadas com sucesso!',
      'Mail Management' => 'Ger�nciamento de Correios',
      'Frontend' => 'Interface',
      'Other Options' => 'Outras Op��es',
      'New ticket notification' => 'Notifica��o de novo bilhete',
      'Send me a notification if there is a new ticket in "My Queues".' => '',
      'Follow up notification' => 'Notifica��o de continua��o',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notifique me se um cliente enviar uma continua��o e sou o dono do bilhete.',
      'Ticket lock timeout notification' => 'Notifica��o de bloqueio por tempo expirado',
      'Send me a notification if a ticket is unlocked by the system.' => 'Notifique me se um bilhete � desbloqueado pelo sistema.',
      'Move notification' => 'Notifica��o de movimentos',
      'Send me a notification if a ticket is moved into one of "My Queues".' => '',
      'Custom Queue' => 'Fila Personalizada',
      'QueueView refresh time' => 'Tempo de atualiza��o das Filas',
      'Select your QueueView refresh time.' => 'Selecione o tempo de atualiza��o das Filas',
      'Select your frontend language.' => 'Selecione o Idioma da sua Interface.',
      'Select your frontend Charset.' => 'Selecione o Conjunto de Caracteres da sua Interface .',
      'Select your frontend Theme.' => 'Selecione o Tema da sua Interface.',
      'Select your frontend QueueView.' => 'Selecione a Vis�o da Fila da sua Interface.',
      'Spelling Dictionary' => '',
      'Select your default spelling dictionary.' => '',
      'PhoneView' => 'Chamada',
      'TicketZoom' => '',
      'CreateTicket' => '',
      'Screen after new ticket' => '',
      'Select your screen after creating a new ticket.' => '',
      'Closed Tickets' => '',
      'Show closed tickets.' => '',
      'Max. shown Tickets a page in QueueView.' => '',
      'Max. shown Tickets a page in Overview.' => '',
      'Can\'t update password, passwords dosn\'t match! Please try it again!' => '',
      'Can\'t update password, invalid characters!' => '',
      'Can\'t update password, need min. 8 characters!' => '',
      'Can\'t update password, need 2 lower and 2 upper characters!' => '',
      'Can\'t update password, need min. 1 digit!' => '',
      'Can\'t update password, need min. 2 characters!' => '',

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
      'Queue' => 'Fila',
      'Priority' => 'Prioridade',
      'State' => 'Estado',
      'Compose' => 'Comp�r',
      'Pending' => 'Pendentes',
      'Owner' => 'Propriet�rio',
      'Sender' => 'Remetente',
      'Article' => 'Artigo',
      'Ticket' => 'Bilhete',
      'Createtime' => 'Hora de cria��o',
      'plain' => 'texto',
      'eMail' => '',
      'email' => '',
      'Close' => 'Fechar',
      'Action' => 'A��o',
      'Attachment' => 'Anexo',
      'Attachments' => 'Anexos',
      'This message was written in a character set other than your own.' => 'Esta mensagem foi escrita utilizando um conjunto de caracteres diferente do seu.',
      'If it is not displayed correctly,' => 'Se ele n�o for exibido corretamente,',
      'This is a' => 'Este � um',
      'to open it in a new window.' => 'para abri-lo em uma nova janela.',
      'This is a HTML email. Click here to show it.' => 'Esta � um email HTML. Clique aqui para exibi-lo.',
      'closed successful' => 'fechado com �xito',
      'closed unsuccessful' => 'fechado sem �xito',
      'new' => 'novo',
      'open' => 'aberto',
      'closed' => '',
      'removed' => 'removido',
      'pending reminder' => 'lembrete de pendente',
      'pending auto close+' => 'pendente auto fechamento+',
      'pending auto close-' => 'pendente auto fechamento-',
      'email-external' => 'email-externo',
      'email-internal' => 'email-interno',
      'note-external' => 'nota-externa',
      'note-internal' => 'nota-interna',
      'note-report' => 'nota-relat�rio',
      'phone' => 'telefone',
      'sms' => '',
      'webrequest' => 'Solicitar via web',
      'lock' => '',
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
      'Ticket "%s" created!' => '',
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
      'Locked tickets' => '',
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
      'to get the from line of the email' => 'para obter a linha "From" do email',
      'to get the realname of the sender (if given)' => 'para obter o nome do remetente (se possuir no email)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'A mensagem sendo composta foi fechada. Saindo.',
      'This window must be called from compose window' => 'Esta janela deve ser chamada da janela de composi��o',
      'Customer User Management' => 'Ger�nciamento de Clientes',
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
      'Select the user:group permissions.' => '',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '',
      'Permission' => '',
      'ro' => '',
      'Read only access to the ticket in this group/queue.' => '',
      'rw' => '',
      'Full read and write access to the tickets in this group/queue.' => '',

      # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Modificar as configura��es de usu�rios <-> grupos',

      # Template: AdminEmail
      'Admin-Email' => 'Email do Admin.',
      'Message sent to' => 'Mensagem enviada para',
      'Recipents' => 'Destinat�rios',
      'Body' => 'Corpo',
      'send' => '',

      # Template: AdminGenericAgent
      'GenericAgent' => '',
      'Job-List' => '',
      'Last run' => '',
      'valid' => 'v�lido',
      'Run Now!' => '',
      'x' => '',
      'Save Job as?' => '',
      'Is Job Valid?' => '',
      'Is Job Valid' => '',
      'Schedule' => '',
      'Minutes' => '',
      'Hours' => '',
      'Days' => '',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '',
      '(e. g. 10*5155 or 105658*)' => '',
      '(e. g. 234321)' => '',
      'Customer User Login' => '',
      '(e. g. U5150)' => '',
      'Agent' => '',
      'TicketFreeText' => '',
      'Ticket Lock' => '',
      'Times' => '',
      'No time settings.' => '',
      'Ticket created' => '',
      'Ticket created between' => '',
      'New Priority' => '',
      'New Queue' => '',
      'New State' => '',
      'New Agent' => '',
      'New Owner' => '',
      'New Customer' => '',
      'New Ticket Lock' => '',
      'CustomerUser' => 'Usu�rio Cliente',
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
      'Group Management' => 'Ger�nciamento de Grupos',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'O grupo admin � para uso na �rea de administra��o e o grupo stats � para uso na �rea de estat�sticas.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crie novos grupos para manipular as permiss�es de acesso para diferentes grupos de agentes (exemplos: departamento de compras, departamento de suporte, departamento de vendas, etc...).',
      'It\'s useful for ASP solutions.' => 'Isto � �til para solu��es ASP.',

      # Template: AdminLog
      'System Log' => 'Registro do Sistema',
      'Time' => '',

      # Template: AdminNavigationBar
      'Users' => '',
      'Groups' => 'Grupos',
      'Roles' => '',
      'Responses' => 'Respostas',
      'Misc' => 'Variedades',

      # Template: AdminNotificationForm
      'Notification Management' => '',
      'Notification' => '',
      'Notifications are sent to an agent or a customer.' => '',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',

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
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'FIXME: WHAT IS PGP?' => '',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'Ger�nciamento de Contas POP3',
      'Host' => '',
      'Trusted' => 'Confi�vel',
      'Dispatching' => 'Despachando',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Todos os emails de entrada com uma conta ser� despachado na fila selecionada!',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => '',
      'Filtername' => '',
      'Match' => '',
      'Header' => '',
      'Value' => '',
      'Set' => '',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => '',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => '',

      # Template: AdminQueueAutoResponseTable

      # Template: AdminQueueForm
      'Queue Management' => 'Ger�nciamento de Filas',
      'Sub-Queue of' => '',
      'Unlock timeout' => 'Tempo de expira��o de desbloqueio',
      '0 = no unlock' => '0 = sem desbloqueio',
      'Escalation time' => 'Tempo de escala��o',
      '0 = no escalation' => '0 = sem escala��o',
      'Follow up Option' => 'Op��o de continua��o',
      'Ticket lock after a follow up' => 'Bloqueio do bilhete ap�s as continua��es',
      'Systemaddress' => 'Endere�o do Sistema',
      'Customer Move Notify' => '',
      'Customer State Notify' => '',
      'Customer Owner Notify' => '',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se um agente bloqueia um bilhete e ele n�o envia uma resposta dentro deste tempo, o bilhete ser� desbloqueado automaticamente. Ent�o o bilhete ser� vis�vel para todos os outros agentes.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Se um bilhete n�o foi respondido dentro deste tempo, apenas os bilhetes com este tempo vencido ser�o exibidos.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Se um bilhete est� fechado e um cliente envia uma continua��o, este mesmo bilhete ser� bloqueado para o antigo propriet�rio.',
      'Will be the sender address of this queue for email answers.' => 'Ser� o endere�o de email de respostas desta fila.',
      'The salutation for email answers.' => 'A sauda��o para as respostas de emails.',
      'The signature for email answers.' => 'A assinatura para as respostas de emails.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => '',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => '',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => '',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => '',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Resposta',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => '',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Ger�nciamento de Respostas',
      'A response is default text to write faster answer (with default text) to customers.' => 'Uma resposta � um texto padr�o para comp�r respostas r�pidas (com texto padr�o) para clientes.',
      'Don\'t forget to add a new response a queue!' => 'N�o se esque�a de adicionar a nova resposta a uma fila!',
      'Next state' => '',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'The current ticket state is' => '',
      'Your email address is new' => '',

      # Template: AdminRoleForm
      'Role Management' => '',
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => '',
      'move_into' => '',
      'Permissions to move tickets into this group/queue.' => '',
      'create' => '',
      'Permissions to create tickets in this group/queue.' => '',
      'owner' => '',
      'Permissions to change the ticket owner in this group/queue.' => '',
      'priority' => '',
      'Permissions to change the ticket priority in this group/queue.' => '',

      # Template: AdminRoleGroupForm
      'Change roles <-> groups settings' => '',
      'Role' => '',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => '',
      'Active' => '',
      'Select the role:user relations.' => '',

      # Template: AdminRoleUserForm
      'Change users <-> roles settings' => '',

      # Template: AdminSalutationForm
      'Salutation Management' => 'Ger�nciamento de Sauda��es',
      'customer realname' => 'Nome do cliente',
      'for agent firstname' => 'Nome do Agente',
      'for agent lastname' => 'Sobrenome do Agente',
      'for agent user id' => '',
      'for agent login' => '',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Caixa de Sele��o',
      'SQL' => '',
      'Limit' => 'Limite',
      'Select Box Result' => 'Selecione a Caixa de Resultado',

      # Template: AdminSession
      'Session Management' => 'Ger�nciamento de Sess�es',
      'Sessions' => '',
      'Uniq' => '',
      'kill all sessions' => 'Finalizar todas as sess�es',
      'Session' => '',
      'kill session' => 'Finalizar sess�o',

      # Template: AdminSignatureForm
      'Signature Management' => 'Ger�nciamento de Assinaturas',

      # Template: AdminSMIMEForm
      'SMIME Management' => '',
      'Add Certificate' => '',
      'Add Private Key' => '',
      'Secret' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',
      'FIXME: WHAT IS SMIME?' => '',

      # Template: AdminStateForm
      'System State Management' => 'Ger�nciamento de Estados do Sistema',
      'State Type' => '',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => '',
      'See also' => '',

      # Template: AdminSysConfig
      'SysConfig' => '',
      'Group selection' => '',
      'Show' => '',
      'Subgroup' => '',

      # Template: AdminSysConfigEdit
      'Options ' => '',
      'for ' => '',
      'Subgroup \'' => '',
      '\' ' => '',
      'Content' => '',
      'New' => 'Novos',
      'Group Ro' => '',
      'NavBarName' => '',
      'Image' => '',
      'Typ' => '',
      'Prio' => '',
      'Block' => '',
      'NavBar' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Ger�nciamento dos Endere�os de Emails do Sistema',
      'Email' => '',
      'Realname' => 'Nome',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todos os emails entrantes com este Email(To:) ser�o despachados na fila selecionada!',

      # Template: AdminUserForm
      'User Management' => 'Ger�nciamento de Usu�rios',
      'Firstname' => 'Nome',
      'Lastname' => 'Sobrenome',
      'User will be needed to handle tickets.' => 'Ser� necess�rio um usu�rio para manipular os bilhetes.',
      'Don\'t forget to add a new user to groups!' => 'N�o esque�a de adicionar um novo usu�rio nos grupos!',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => '',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => '',
      'Return to the compose screen' => 'Retornar para a tela de composi��o',
      'Discard all changes and return to the compose screen' => 'Descartar todas as modifica��es e retornar para a tela de composi��o',

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => 'Informa��o',

      # Template: AgentLinkObject
      'Link Object' => '',
      '"}" $Text{"with' => '',
      'Select' => '',
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
      'Spell Checker' => 'Checar a Ortografica',
      'spelling error(s)' => 'erro(s) ortogr�ficos',
      'or' => '',
      'Apply these changes' => 'Aplicar estas modifica��es',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Uma mensagem deve possuir um To: destinat�rio!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Voc� precisa de um endere�o de email (exemplo: cliente@exemplo.com.br) no To:!',
      'Bounce ticket' => 'Devolver bilhete',
      'Bounce to' => 'Devolver para',
      'Next ticket state' => 'Pr�ximo estado do bilhete',
      'Inform sender' => 'Informe o remetente',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Seu email com o n�mero de bilhete "<OTRS_TICKET>" foi devolvido para "<OTRS_BOUNCE_TO>". Contate este endere�o para mais informa��es.',
      'Send mail!' => 'Enviar email!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Uma mensagem deve conter um assunto!',
      'Ticket Bulk Action' => '',
      '$Text{"Note!' => '',
      'Spell Check' => 'Checar Ortografia',
      'Note type' => 'Tipo de nota',
      'Unlock Tickets' => '',

      # Template: AgentTicketClose
      'A message should have a body!' => '',
      'You need to account time!' => '',
      'Close ticket' => 'Fechar o bilhete',
      'Close!' => 'Fechar!',
      'Note Text' => 'Nota',
      'Close type' => 'Tipo de fechamento',
      'Time units' => 'Unidades de tempo',
      ' (work units)' => ' (unidades de trabalho)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => '',
      'Compose answer for ticket' => 'Comp�r uma resposta para o bilhete',
      'Attach' => 'Anexo',
      'Pending Date' => 'Data de Pend�ncia',
      'for pending* states' => 'em estado pendente*',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Modificar o cliente do bilhete',
      'Set customer user and customer id of a ticket' => '',
      'Customer User' => 'Cliente',
      'Search Customer' => 'Busca do cliente',
      'Customer Data' => 'Dados do Cliente',
      'Customer history' => 'Hist�rico do cliente',
      'All customer tickets.' => '',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Continua��o',

      # Template: AgentTicketEmail
      'Compose Email' => '',
      'new ticket' => 'novo bilhete',
      'Clear To' => '',
      'All Agents' => '',

      # Template: AgentTicketForward
      'Article type' => 'Tipo de artigo',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => '',

      # Template: AgentTicketHistory
      'History of' => 'Hist�rico de',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'Bilhete bloqueado!',
      'Ticket unlock!' => '',

      # Template: AgentTicketMailbox
      'Mailbox' => 'Caixa de Entrada',
      'Tickets' => 'Bilhetes',
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
      'Queue ID' => '',
      'Move Ticket' => '',
      'Previous Owner' => '',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Adicionar nota ao bilhete',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Modificar o propriet�rio do bilhete',
      'Message for new Owner' => 'Mensagem para um novo Propriet�rio',

      # Template: AgentTicketPending
      'Set Pending' => 'Marcar Pendente',
      'Pending type' => 'Tipo de pend�ncia',
      'Pending date' => 'Data da pend�ncia',

      # Template: AgentTicketPhone
      'Phone call' => 'Chamada telef�nica',

      # Template: AgentTicketPhoneNew
      'Clear From' => '',

      # Template: AgentTicketPlain
      'Plain' => 'Texto',
      'TicketID' => 'Id.do Bilhete',
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
      'Change priority of ticket' => 'Modificar a prioridade do bilhete',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Bilhetes mostrados',
      'Page' => '',
      'Tickets available' => 'Bilhetes dispon�veis',
      'All tickets' => 'Todos bilhetes',
      'Queues' => 'Filas',
      'Ticket escalation!' => 'Escala��o de bilhetes!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => '',
      'Compose Follow up' => '',
      'Compose Answer' => 'Comp�r resposta',
      'Contact customer' => 'Contatar cliente',
      'Change queue' => 'Modificar Fila',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => '',
      'Profile' => '',
      'Search-Template' => '',
      'Created in Queue' => '',
      'Result Form' => '',
      'Save Search-Profile as Template?' => '',
      'Yes, save it with name' => '',
      'Customer history search' => 'Busca no Hist�rico do cliente',
      'Customer history search (e. g. "ID342425").' => 'Busca no Hist�rico do cliente (exemplo: "ID342425")',
      'No * possible!' => 'N�o s�o poss�veis *!',

      # Template: AgentTicketSearchResult
      'Search Result' => '',
      'Change search options' => '',

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
      'Split' => '',

      # Template: AgentTicketZoomStatus
      'Locked' => '',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerError
      'Traceback' => '',

      # Template: CustomerFAQArticleHistory
      'FAQ History' => '',
      'Print' => 'Imprimir',

      # Template: CustomerFAQArticlePrint
      'Keywords' => '',
      'Last update' => '',
      'Symptom' => '',
      'Problem' => '',
      'Solution' => '',

      # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => '',

      # Template: CustomerFAQArticleView
      'Modified' => '',

      # Template: CustomerFAQOverview
      'FAQ Overview' => '',

      # Template: CustomerFAQSearch
      'FAQ Search' => '',
      'Fulltext' => '',
      'Keyword' => '',

      # Template: CustomerFAQSearchResult
      'FAQ Search Result' => '',

      # Template: CustomerFooter
      'Powered by' => 'Movido �',

      # Template: CustomerHeader

      # Template: CustomerLogin
      'Login' => '',
      'Lost your password?' => 'Esqueceu sua senha?',
      'Request new password' => 'Solicitar uma nova senha',
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
      'Click here to report a bug!' => 'Clique aqui para relatar um erro!',

      # Template: FAQ
      'Comment (internal)' => '',
      'A article should have a title!' => '',
      'New FAQ Article' => '',
      'Do you really want to delete this Object?' => '',
      'System History' => '',

      # Template: FAQCategoryForm
      'Name is required!' => '',
      'FAQ Category' => '',

      # Template: FAQLanguageForm
      'FAQ Language' => '',

      # Template: Footer
      'Top of Page' => '',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'In�cio',

      # Template: HeaderSmall

      # Template: InstallerBody
      'Web-Installer' => '',
      'Create Database' => '',
      'Drop Database' => '',
      'System Settings' => '',
      'Finished' => '',

      # Template: InstallerFinish
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '',
      'Restart your webserver' => '',
      'After doing so your OTRS is up and running.' => '',
      'Start page' => '',
      'Admin-User' => '',
      'Have a lot of fun!' => '',
      'Your OTRS Team' => '',

      # Template: InstallerLicense
      'License' => '',
      'accept license' => '',
      'don\'t accept license' => '',

      # Template: InstallerStart
      'DB Admin User' => '',
      'DB Admin Password' => '',
      'your MySQL DB should have a root password! Default is empty!' => '',
      'DB Host' => '',
      'DB Type' => '',
      'OTRS DB Name' => '',
      'OTRS DB User' => '',
      'OTRS DB Password' => '',
      'default \'hot\'' => '',
      'OTRS DB connect host' => '',
      'Create new database' => '',
      'Delete old database' => '',
      'next step' => 'pr�ximo passo',

      # Template: InstallerSystem
      'SystemID' => 'ID do sistema',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(A identidade do sistema. Cada n�mero de bilhete e cada id. da sess�o http, inicia com este n�mero)',
      'System FQDN' => 'FQDN do sistema',
      '(Full qualified domain name of your system)' => '(Nome completo do dom�nio de seu sistema)',
      'AdminEmail' => 'Email do Administrador',
      '(Email of the system admin)' => '(Email do administrador do sistema)',
      'Organization' => 'Organiza��o',
      'LogModule' => '',
      '(Used log backend)' => '()',
      'Logfile' => 'Arquivo de registro',
      '(Logfile just needed for File-LogModule!)' => '(Arquivo de registro para File-LogModule)',
      'CheckMXRecord' => '',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '',
      'Ticket Hook' => '',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificador do Bilhete. Algumas pessoas gostam de usar por exemplo \'Bilhete#\, \'Chamada#\' ou \'MeuBilhete#\')',
      'Ticket Number Generator' => 'Gerador de N�meros de Bilhetes',
      '(Used ticket number format)' => '(Formato de bilhete utilizado)',
      'Webfrontend' => 'Interface Web',
      'Default Charset' => 'Conjunto de Caracteres Padr�o',
      'Use utf-8 it your database supports it!' => '',
      'Default Language' => 'Idioma Padr�o',
      '(Used default language)' => '(Idioma padr�o utilizado)',

      # Template: Login

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Sem Permiss�o',

      # Template: Notify

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
      'Mark as Spam!' => '',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => '',
      'New password' => '',
      'New password again' => '',
      'Change Password' => '',
      'My Queues' => '',

      # Template: Warning
    };
    # $$STOP$$
}
# --
1;
