# --
# Kernel/Language/pt.pm - provides pt language translation
# Copyright (C) 2004 CAT <filipehenriques at ip.pt>
# --
# $Id: pt.pm,v 1.5 2004-02-02 23:56:39 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::pt;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.5 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Tue Feb  3 00:43:42 2004 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 minutos',
      ' 5 minutes' => ' 5 minutos',
      ' 7 minutes' => ' 7 minutos',
      '(Click here to add)' => '',
      '10 minutes' => '10 minutos',
      '15 minutes' => '15 minutos',
      'AddLink' => 'Adicionar link',
      'Admin-Area' => '�rea de Administra��o',
      'agent' => 'Agente',
      'Agent-Area' => '�rea de Agente',
      'all' => 'todos',
      'All' => 'Todos',
      'Attention' => 'Aten��o',
      'before' => '',
      'Bug Report' => 'Relat�rio de Erros',
      'Cancel' => 'Cancelar',
      'change' => 'alterar',
      'Change' => 'Alterar',
      'change!' => 'alterar!',
      'click here' => 'clique aqui',
      'Comment' => 'Coment�rio',
      'Customer' => 'Cliente',
      'customer' => 'cliente',
      'Customer Info' => 'Informa��o do Cliente',
      'day' => 'dia',
      'day(s)' => '',
      'days' => 'dias',
      'description' => 'descri��o',
      'Description' => 'Descri��o',
      'Dispatching by email To: field.' => 'Despachado pelo campo de email Para:',
      'Dispatching by selected Queue.' => 'Despachado pela Queue seleccionada',
      'Don\'t show closed Tickets' => 'N�o mostrar Tickets fechados',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'N�o trabalhe com o UserID 1(Conta de Sistema)! Criar novos utilizadores!',
      'Done' => 'Feito',
      'end' => 'fim',
      'Error' => 'Erro',
      'Example' => 'Exemplo',
      'Examples' => 'Exemplos',
      'Facility' => 'Facilidade',
      'FAQ-Area' => '�rea FAQ',
      'Feature not active!' => 'Caracter�stica n�o activa!',
      'go' => 'ir',
      'go!' => 'ir!',
      'Group' => 'Grupo',
      'Hit' => 'Hit',
      'Hits' => 'Hits',
      'hour' => 'hora',
      'hours' => 'horas',
      'Ignore' => 'Ignorar',
      'invalid' => 'inv�lido',
      'Invalid SessionID!' => 'Identificador de Sess�o Inv�lido',
      'Language' => 'Idioma',
      'Languages' => 'Idiomas',
      'last' => '',
      'Line' => 'Linha',
      'Lite' => 'Lite',
      'Login failed! Your username or password was entered incorrectly.' => 'Login inv�lido! O utilizador ou password foram introduzidos incorrectamente.',
      'Logout successful. Thank you for using OTRS!' => 'Saiu com sucesso. Obrigado por utilizar o OTRS!',
      'Message' => 'Mensagem',
      'minute' => 'minuto',
      'minutes' => 'minutos',
      'Module' => 'M�dulo',
      'Modulefile' => 'Ficheiro de M�dulo',
      'month(s)' => '',
      'Name' => 'Nome',
      'New Article' => 'Novo Artigo',
      'New message' => 'Nova mensagem',
      'New message!' => 'Nova mensagem!',
      'No' => 'N�o',
      'no' => 'n�o',
      'No entry found!' => 'Sem resultados',
      'No suggestions' => 'Sem sugest�es',
      'none' => 'Nada',
      'none - answered' => 'nada  - respondido',
      'none!' => 'Nada!',
      'Normal' => '',
      'Off' => 'Desligado',
      'off' => 'desligado',
      'On' => 'Ligado',
      'on' => 'ligado',
      'Password' => 'Senha de Acesso',
      'Pending till' => 'Pendente at�',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Por favor, responda a este(s) ticket(s) para retornar � vista normal da Queue!',
      'Please contact your admin' => 'Por Favor contactar o administrador',
      'please do not edit!' => 'por favor n�o editar!',
      'Please go away!' => 'Sair, por favor',
      'possible' => 'poss�vel',
      'Preview' => '',
      'QueueView' => 'QueueView',
      'reject' => 'rejeitar',
      'replace with' => 'substituir por',
      'Reset' => 'Reset',
      'Salutation' => 'Sauda��o',
      'Session has timed out. Please log in again.' => 'A sess�o expirou. Por favor autentique-se novamente',
      'Show closed Tickets' => 'Mostrar Tickets fechados',
      'Signature' => 'Assinatura',
      'Sorry' => 'Desculpe',
      'Stats' => 'Estat�sticas',
      'Subfunction' => 'Sub-fun��o',
      'submit' => 'Submeter',
      'submit!' => 'Submeter!',
      'system' => 'Sistema',
      'Take this User' => 'Utilize este utilizador',
      'Text' => 'Texto',
      'The recommended charset for your language is %s!' => 'O conjunto de caracteres recomendado para o seu idioma � %s!',
      'Theme' => 'Tema',
      'There is no account with that login name.' => 'N�o existe conta com esse utilizador',
      'Timeover' => 'Tempo esgotado',
      'To: (%s) replaced with database email!' => 'Para: (%s) substituido pelo email da base de dados',
      'top' => 'in�cio',
      'update' => 'actualizar',
      'Update' => '',
      'update!' => 'actualizar!',
      'User' => 'Utilizador',
      'Username' => 'Nome de Utilizador',
      'Valid' => 'V�lido',
      'Warning' => 'Aviso',
      'week(s)' => '',
      'Welcome to OTRS' => 'Bem-vindo ao OTRS',
      'Word' => 'Palavra',
      'wrote' => 'escreveu',
      'year(s)' => '',
      'yes' => 'sim',
      'Yes' => 'Sim',
      'You got new message!' => 'Recebeu uma mensagem nova',
      'You have %s new message(s)!' => 'Tem %s mensagem(s) nova(s)!',
      'You have %s reminder ticket(s)!' => 'Tem %s lembrete(s)',

    # Template: AAAMonth
      'Apr' => 'Abr',
      'Aug' => 'Ago',
      'Dec' => 'Dec',
      'Feb' => 'Fev',
      'Jan' => 'Jan',
      'Jul' => 'Jul',
      'Jun' => 'Jun',
      'Mar' => 'Mar',
      'May' => 'Mai',
      'Nov' => 'Nov',
      'Oct' => 'Out',
      'Sep' => 'Set',

    # Template: AAAPreferences
      'Closed Tickets' => 'Tickets Fechados',
      'Custom Queue' => 'Queue Personalizada',
      'Follow up notification' => 'Notifica��o de Follow up',
      'Frontend' => 'Interface',
      'Mail Management' => 'Gest�o de Mails',
      'Max. shown Tickets a page in Overview.' => 'N� m�ximo de tickets por p�gina em OverView ',
      'Max. shown Tickets a page in QueueView.' => 'N� m�ximo de tickets por p�gina em QueueView',
      'Move notification' => 'Notifica��o de movimentos',
      'New ticket notification' => 'Notifica��o de novo ticket',
      'Other Options' => 'Outras Op��es',
      'PhoneView' => 'Chamada',
      'Preferences updated successfully!' => 'Prefer�ncias actualizadas com sucesso!',
      'QueueView refresh time' => 'Tempo de refresh da QueueView',
      'Screen after new phone ticket' => 'Ecr� ap�s novo ticket',
      'Select your default spelling dictionary.' => 'Seleccionar o seu corrector ortogr�fico',
      'Select your frontend Charset.' => 'Selecionar o Conjunto de Caracteres da sua Interface .',
      'Select your frontend language.' => 'Selecionar o Idioma da sua Interface.',
      'Select your frontend QueueView.' => 'Selecionar o seu Interface da QueueView.',
      'Select your frontend Theme.' => 'Selecionar o Tema do seu Interface.',
      'Select your QueueView refresh time.' => 'Selecionar o tempo de refresh da QueueView',
      'Select your screen after creating a new ticket via PhoneView.' => 'Seleccionar ecr� ap�s cria��o de novo ticket via Chamada.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notificar se um cliente enviar um follow up e sou o owner desse ticket.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Notificar se um ticket for movido para uma Queue personalizada',
      'Send me a notification if a ticket is unlocked by the system.' => 'Notificar se um ticket for desbloqueado pelo sistema.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Notificar se h� um novo ticket nas minhas Queues personalizadas.',
      'Show closed tickets.' => 'Mostrar tickets fechados',
      'Spelling Dictionary' => 'Corrector Ortogr�fico',
      'Ticket lock timeout notification' => 'Notifica��o de bloqueio por tempo expirado',
      'TicketZoom' => 'Detalhes do ticket',

    # Template: AAATicket
      '1 very low' => '1 muito baixo',
      '2 low' => '2 baixo',
      '3 normal' => '3 normal',
      '4 high' => '4 alto',
      '5 very high' => '5 muito alto',
      'Action' => 'Ac��o',
      'Age' => 'Idade',
      'Article' => 'Artigo',
      'Attachment' => 'Anexo',
      'Attachments' => 'Anexos',
      'Bcc' => 'Copia Invis�vel',
      'Bounce' => 'Devolver',
      'Cc' => 'C�pia ',
      'Close' => 'Fechar',
      'closed successful' => 'fechado com �xito',
      'closed unsuccessful' => 'fechado sem �xito',
      'Compose' => 'Comp�r',
      'Created' => 'Criado',
      'Createtime' => 'Hora de cria��o',
      'email' => 'email',
      'eMail' => 'eMail',
      'email-external' => 'email-externo',
      'email-internal' => 'email-interno',
      'Forward' => 'Encaminhar',
      'From' => 'De',
      'high' => 'alto',
      'History' => 'Hist�rico',
      'If it is not displayed correctly,' => 'Se ele n�o for exibido correctamente,',
      'lock' => 'bloquear',
      'Lock' => 'Bloquear',
      'low' => 'baixo',
      'Move' => 'Mover',
      'new' => 'novo',
      'normal' => 'normal',
      'note-external' => 'nota-externa',
      'note-internal' => 'nota-interna',
      'note-report' => 'nota-relat�rio',
      'open' => 'aberto',
      'Owner' => 'Propriet�rio',
      'Pending' => 'Pendentes',
      'pending auto close+' => 'pendente fecho autom�tico+',
      'pending auto close-' => 'pendente fecho autom�tico-',
      'pending reminder' => 'post-it de pendente',
      'phone' => 'telefone',
      'plain' => 'texto',
      'Priority' => 'Prioridade',
      'Queue' => 'Queue',
      'removed' => 'removido',
      'Sender' => 'Remetente',
      'sms' => 'sms',
      'State' => 'Estado',
      'Subject' => 'Assunto',
      'This is a' => 'Este � um',
      'This is a HTML email. Click here to show it.' => 'Este � um email HTML. Clicar aqui para mostrar.',
      'This message was written in a character set other than your own.' => 'Esta mensagem foi escrita utilizando um conjunto de caracteres diferente do seu.',
      'Ticket' => 'Ticket',
      'Ticket "%s" created!' => 'Ticket "%s" criados!',
      'To' => 'Para',
      'to open it in a new window.' => 'para abrir em nova janela.',
      'unlock' => 'desbloquear',
      'Unlock' => 'Desbloquear',
      'very high' => 'muito alto',
      'very low' => 'muito baixo',
      'View' => 'Ver',
      'webrequest' => 'Solicitar via web',
      'Zoom' => 'Detalhes',

    # Template: AAAWeekDay
      'Fri' => 'Sex',
      'Mon' => 'Seg',
      'Sat' => 'Sab',
      'Sun' => 'Dom',
      'Thu' => 'Qui',
      'Tue' => 'Ter',
      'Wed' => 'Qua',

    # Template: AdminAttachmentForm
      'Add' => 'Adicionar',
      'Attachment Management' => 'Ger�nciamento de Anexos',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'Adicionar uma auto-resposta',
      'Auto Response From' => 'Auto-Resposta De',
      'Auto Response Management' => 'Ger�nciamento de Auto-Respostas',
      'Change auto response settings' => 'Modificar as configura��es da auto-resposta',
      'Note' => 'Nota',
      'Response' => 'Resposta',
      'to get the first 20 character of the subject' => 'para obter os 20 primeiros caracteres do assunto',
      'to get the first 5 lines of the email' => 'para obter as 5 primeiras linhas do email',
      'to get the from line of the email' => 'para obter a linha "De" do email',
      'to get the realname of the sender (if given)' => 'para obter o nome do remetente (se possuir no email)',
      'to get the ticket id of the ticket' => 'para obter o ID do ticket',
      'to get the ticket number of the ticket' => 'para obter o n�mero do ticket',
      'Type' => 'Tipo',
      'Useable options' => 'Op��es acess�veis',

    # Template: AdminCustomerUserForm
      'Customer User Management' => 'Gest�o de Users de Clientes',
      'Customer user will be needed to to login via customer panels.' => 'Um user de cliente � necess�rio para se logar pelo painel de clientes',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserGroupChangeForm
      'Change %s settings' => 'Modificar %s configura��es',
      'Customer User <-> Group Management' => 'Personalizar Utilizador <-> Grupo de Gest�o',
      'Full read and write access to the tickets in this group/queue.' => 'Acesso total de leitura e escrita para os tickets neste grupo/Queue.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Se nada for seleccionado, ent�o n�o h� permiss�es neste grupo (tickets n�o estaram dispon�veis para o utilizador).',
      'Permission' => 'Permiss�o',
      'Read only access to the ticket in this group/queue.' => 'Acesso apenas de leitura para o ticket neste grupo/Queue.',
      'ro' => 'ro',
      'rw' => 'rw',
      'Select the user:group permissions.' => 'Seleccionar o utilizador:permiss�es de grupo.',

    # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Modificar users <-> configura��es de grupos',

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Email do Admin.',
      'Body' => 'Corpo',
      'OTRS-Admin Info!' => 'Informa��o do Administrador do OTRS!',
      'Recipents' => 'Destinat�rios',
      'send' => 'enviar',

    # Template: AdminEmailSent
      'Message sent to' => 'Mensagem enviada para',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crie novos grupos para manipular as permiss�es de acesso para diferentes grupos de agentes (exemplos: departamento de compras, departamento de suporte, departamento de vendas, etc...).',
      'Group Management' => 'Gest�o de Grupos',
      'It\'s useful for ASP solutions.' => 'Isto � �til para solu��es ASP.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'O grupo admin � para uso na �rea de administra��o e o grupo estat�sticas � para uso na �rea de estat�sticas.',

    # Template: AdminLog
      'System Log' => 'Registro do Sistema',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Email do Administrador',
      'Attachment <-> Response' => 'Anexo <-> Resposta',
      'Auto Response <-> Queue' => 'Auto-Respostas <-> Queue',
      'Auto Responses' => 'Auto-Respostas',
      'Customer User' => 'Utilizador de Cliente',
      'Customer User <-> Groups' => 'Utilizador de Cliente <-> Grupos',
      'Email Addresses' => 'Endere�os de Emails',
      'Groups' => 'Grupos',
      'Logout' => 'Sair',
      'Misc' => 'Variedades',
      'Notifications' => 'Notifica��es',
      'PostMaster Filter' => '',
      'PostMaster POP3 Account' => '',
      'Responses' => 'Respostas',
      'Responses <-> Queue' => 'Respostas <-> Queues',
      'Select Box' => 'Caixa de Sele��o',
      'Session Management' => 'Gest�o de Sess�es',
      'Status' => 'Status',
      'System' => 'Sistema',
      'User <-> Groups' => 'Utilizador <-> Grupos',

    # Template: AdminNotificationForm
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
      'Notification Management' => 'Gest�o de Notifica��o',
      'Notifications are sent to an agent or a customer.' => '',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Todos os emails de entrada com uma conta ser� despachado na Queue selecionada!',
      'Dispatching' => 'Despachando',
      'Host' => 'Anfitri�o',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Se sua conta � confi�vel, os cabe�alhos x-otrs (para prioridade, ...) ser�o utilizados!',
      'Login' => 'Login',
      'POP3 Account Management' => 'Gest�o de Contas POP3',
      'Trusted' => 'Confi�vel',

    # Template: AdminPostMasterFilterForm
      'Match' => '',
      'PostMasterFilter Management' => '',
      'Set' => '',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Gest�o de Queues <-> Auto-Resposta',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = sem escalamento',
      '0 = no unlock' => '0 = sem desbloqueio',
      'Customer Move Notify' => 'Movimento de Cliente Notificado',
      'Customer Owner Notify' => 'Owner de Cliente Notificado',
      'Customer State Notify' => 'Estado de Cliente Notificado',
      'Escalation time' => 'Tempo de escalamento',
      'Follow up Option' => 'Op��o de follow up',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Se um ticket est� fechado e um cliente envia um follow up, este mesmo ticket ser� bloqueado para o antigo propriet�rio.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Se um ticket n�o foi respondido dentro deste tempo, apenas os tickets com este tempo vencido ser�o exibidos.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se um agente bloqueia um ticket e ele n�o envia uma resposta dentro deste tempo, o ticket ser� desbloqueado automaticamente. Ent�o o ticket ser� vis�vel para todos os outros agentes.',
      'Key' => 'Chave',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS envia um email de  notifica��o para o cliente se ticket for movido.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS envia um email de notifica��o se o owner do ticket for alterado.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS envia um email de notifica��o se o estado do ticket for alterado.',
      'Queue Management' => 'Gest�o de Queues',
      'Sub-Queue of' => 'Sub-Queue de',
      'Systemaddress' => 'Endere�o do Sistema',
      'The salutation for email answers.' => 'A sauda��o para as respostas de emails.',
      'The signature for email answers.' => 'A assinatura para as respostas de emails.',
      'Ticket lock after a follow up' => 'Bloqueio do bilhete ap�s os follow ups',
      'Unlock timeout' => 'Tempo de desbloqueio',
      'Will be the sender address of this queue for email answers.' => 'Ser� o endere�o de email de respostas desta Queue.',

    # Template: AdminQueueResponsesChangeForm
      'Std. Responses <-> Queue Management' => 'Respostas Padr�o <-> Gest�o de Queues',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Resposta',
      'Change answer <-> queue settings' => 'Modificar respostas <-> configura��es de Queues',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Respostas Padr�o <-> Gest�o Anexos Padr�o',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'Modificar Resposta <-> Configura��es de Anexos',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Uma resposta � um texto padr�o para comp�r respostas r�pidas (com texto padr�o) para clientes.',
      'Don\'t forget to add a new response a queue!' => 'N�o se esque�a de adicionar a nova resposta a uma Queue!',
      'Next state' => 'Pr�ximo estado',
      'Response Management' => 'Gest�o de Respostas',
      'The current ticket state is' => 'O estado corrento do ticket �',

    # Template: AdminSalutationForm
      'customer realname' => 'Nome do cliente',
      'for agent firstname' => 'Nome do Agente',
      'for agent lastname' => 'Sobrenome do Agente',
      'for agent login' => 'para login de agente',
      'for agent user id' => 'para ID de utilizador de agente',
      'Salutation Management' => 'Gest�o de Sauda��es',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'N�mero m�ximo de linhas',

    # Template: AdminSelectBoxResult
      'Limit' => 'Limite',
      'Select Box Result' => 'Selecione a Caixa de Resultado',
      'SQL' => 'SQL',

    # Template: AdminSession
      'Agent' => '',
      'kill all sessions' => 'Finalizar todas as sess�es',
      'Overview' => 'Overview',
      'Sessions' => 'Sess�es',
      'Uniq' => '�nico',

    # Template: AdminSessionTable
      'kill session' => 'Finalizar sess�o',
      'SessionID' => 'Identifica��o da sess�o',

    # Template: AdminSignatureForm
      'Signature Management' => 'Gest�o de Assinaturas',

    # Template: AdminStateForm
      'See also' => 'Ver tamb�m',
      'State Type' => 'Estado Tipo',
      'System State Management' => 'Gest�o de Estados do Sistema',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Ter em conta que tamb�m actualizaste',

    # Template: AdminSystemAddressForm
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todos os emails de entrada com este Email(Para:) ser�o despachados na Queue selecionada!',
      'Email' => '',
      'Realname' => 'Nome',
      'System Email Addresses Management' => 'Gest�o dos Endere�os de Emails do Sistema',

    # Template: AdminUserForm
      'Don\'t forget to add a new user to groups!' => 'N�o esque�a de adicionar um novo user nos grupos!',
      'Firstname' => 'Nome',
      'Lastname' => 'Sobrenome',
      'User Management' => 'Gest�o de Users',
      'User will be needed to handle tickets.' => 'Ser� necess�rio um user para manipular os tickets.',

    # Template: AdminUserGroupChangeForm
      'create' => 'Criar',
      'move_into' => 'Mover para',
      'owner' => 'Dono',
      'Permissions to change the ticket owner in this group/queue.' => '',
      'Permissions to change the ticket priority in this group/queue.' => '',
      'Permissions to create tickets in this group/queue.' => '',
      'Permissions to move tickets into this group/queue.' => '',
      'priority' => '',
      'User <-> Group Management' => 'Users <-> Gest�o de Grupos',

    # Template: AdminUserGroupForm

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBook
      'Address Book' => '',
      'Discard all changes and return to the compose screen' => 'Descartar todas as modifica��es e retornar para o ecr� de composi��o',
      'Return to the compose screen' => 'Retornar para o ecr� de composi��o',
      'Search' => '',
      'The message being composed has been closed.  Exiting.' => 'A mensagem sendo composta foi fechada. Saindo.',
      'This window must be called from compose window' => 'Esta janela deve ser chamada da janela de composi��o',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Uma mensagem deve possuir um Para: destinat�rio!',
      'Bounce ticket' => 'Devolver bilhete',
      'Bounce to' => 'Devolver para',
      'Inform sender' => 'Informe o remetente',
      'Next ticket state' => 'Pr�ximo estado do ticket',
      'Send mail!' => 'Enviar email!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Precisa de um endere�o de email (exemplo: cliente@exemplo.pt) no Para:!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Seu email com o n�mero de ticket "<OTRS_TICKET>" foi devolvido para "<OTRS_BOUNCE_TO>". Contate este endere�o para mais informa��es.',

    # Template: AgentClose
      ' (work units)' => ' (unidades de trabalho)',
      'A message should have a body!' => '',
      'A message should have a subject!' => 'Uma mensagem deve conter um assunto!',
      'Close ticket' => 'Fechar ticket',
      'Close type' => 'Tipo de fecho',
      'Close!' => 'Fechar!',
      'Note Text' => 'Nota',
      'Note type' => 'Tipo de nota',
      'Options' => 'Op��es',
      'Spell Check' => 'Checar Ortografia',
      'Time units' => 'Unidades de tempo',
      'You need to account time!' => '',

    # Template: AgentCompose
      'A message must be spell checked!' => '',
      'Attach' => 'Anexo',
      'Compose answer for ticket' => 'Comp�r uma resposta para o ticket',
      'for pending* states' => 'em estado pendente*',
      'Is the ticket answered' => 'O ticket foi respondido',
      'Pending Date' => 'Data de Pend�ncia',

    # Template: AgentCustomer
      'Back' => 'Retornar',
      'Change customer of ticket' => 'Modificar o cliente do ticket',
      'CustomerID' => 'Id.do Cliente',
      'Search Customer' => 'Procurar cliente',
      'Set customer user and customer id of a ticket' => '',

    # Template: AgentCustomerHistory
      'All customer tickets.' => 'Todos os Tickets do utilizador',
      'Customer history' => 'Hist�rico do cliente',

    # Template: AgentCustomerMessage
      'Follow up' => 'Follow up',

    # Template: AgentCustomerView
      'Customer Data' => 'Dados do Cliente',

    # Template: AgentForward
      'Article type' => 'Tipo de artigo',
      'Date' => 'Data',
      'End forwarded message' => 'Terminar mensagem encaminhada',
      'Forward article of ticket' => 'Encaminhar o artigo do Ticket',
      'Forwarded message from' => 'Mensagem encaminhada de',
      'Reply-To' => 'Responder-Para',

    # Template: AgentFreeText
      'Change free text of ticket' => 'Alterar Texto livre do Ticket',
      'Value' => '',

    # Template: AgentHistoryForm
      'History of' => 'Hist�rico de',

    # Template: AgentMailboxNavBar
      'All messages' => 'Todas as mensagens',
      'down' => 'inversa',
      'Mailbox' => 'Caixa de Entrada',
      'New' => 'Novos',
      'New messages' => 'Mensagens novas',
      'Open' => 'Abertos',
      'Open messages' => 'Mensagens abertas',
      'Order' => 'Ordem',
      'Pending messages' => 'Mensagens pendentes',
      'Reminder' => 'Lembretes',
      'Reminder messages' => 'Mensagens com lembretes',
      'Sort by' => 'Ordenado pela',
      'Tickets' => 'Tickets',
      'up' => 'normal',

    # Template: AgentMailboxTicket
      '"}' => '',
      '"}","14' => '',

    # Template: AgentMove
      'All Agents' => 'Todos os Agentes',
      'Move Ticket' => 'Mover Ticket',
      'New Owner' => 'Novo Propriet�rio',
      'New Queue' => 'Nova Queue',
      'Previous Owner' => 'Pro+riet�rio Anterior',
      'Queue ID' => 'ID da Queue',

    # Template: AgentNavigationBar
      'Locked tickets' => 'Tickets bloqueados',
      'new message' => 'Nova mensagem',
      'Preferences' => 'Prefer�ncias',
      'Utilities' => 'Utilit�rios',

    # Template: AgentNote
      'Add note to ticket' => 'Adicionar nota ao Ticket',
      'Note!' => 'Nota!',

    # Template: AgentOwner
      'Change owner of ticket' => 'Modificar o propriet�rio do Ticket',
      'Message for new Owner' => 'Mensagem para um novo Propriet�rio',

    # Template: AgentPending
      'Pending date' => 'Data da pend�ncia',
      'Pending type' => 'Tipo de pend�ncia',
      'Pending!' => 'Pendente!',
      'Set Pending' => 'Definir como Pendente',

    # Template: AgentPhone
      'Customer called' => 'Cliente contactado',
      'Phone call' => 'Chamada telef�nica',
      'Phone call at %s' => 'Chamada telef�nica �s %s',

    # Template: AgentPhoneNew
      'Clear From' => 'Limpar "De:"',
      'Lock Ticket' => 'Bloquear Ticket',
      'new ticket' => 'novo ticket',

    # Template: AgentPlain
      'ArticleID' => 'Id.do artigo',
      'Plain' => 'Texto',
      'TicketID' => 'TicketID',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'Seleccione a sua Queue personalizada',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Modificar Password',
      'New password' => 'Nova password',
      'New password again' => 'Re-introduza a nova password',

    # Template: AgentPriority
      'Change priority of ticket' => 'Modificar a prioridade do ticket',

    # Template: AgentSpelling
      'Apply these changes' => 'Aplicar estas modifica��es',
      'Spell Checker' => 'Verificar a Ortografica',
      'spelling error(s)' => 'erro(s) ortogr�ficos',

    # Template: AgentStatusView
      'D' => 'D',
      'of' => 'de',
      'Site' => 'Site',
      'sort downward' => 'ordem decrescente',
      'sort upward' => 'ordem crescente',
      'Ticket Status' => 'Estado do ticket',
      'U' => 'C',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLink
      'Link' => '',
      'Link to' => '',

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket bloqueado!',
      'Ticket unlock!' => 'Ticket desbloqueado!',

    # Template: AgentTicketPrint
      'by' => 'por',

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Tempo contabilizado',
      'Escalation in' => 'Escalado em',

    # Template: AgentUtilSearch
      '(e. g. 10*5155 or 105658*)' => '(ex: 10*5155 ou 105658*)',
      '(e. g. 234321)' => '(ex: 234321)',
      '(e. g. U5150)' => '(ex: U5150)',
      'and' => 'e',
      'Customer User Login' => 'Login de Cliente',
      'Delete' => 'Eliminar',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Procura de texto-completo no artigo (ex: "Mar*in" ou "Baue*")',
      'No time settings.' => 'Sem defini��es de tempo',
      'Profile' => 'Perfil',
      'Result Form' => 'Formul�rio de resultado',
      'Save Search-Profile as Template?' => 'Guardar Perfil de Procura como Template',
      'Search-Template' => 'Template de procura',
      'Select' => 'Seleccionar',
      'Ticket created' => 'Ticket criado',
      'Ticket created between' => 'Ticket criado entre',
      'Ticket Search' => 'Procura de Tickets',
      'TicketFreeText' => 'Texto liver do Ticket',
      'Times' => 'Vezes',
      'Yes, save it with name' => 'Sim, guardar com o nome',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Procura no Hist�rico do cliente',
      'Customer history search (e. g. "ID342425").' => 'Procura no Hist�rico do cliente (exemplo: "ID342425")',
      'No * possible!' => 'N�o s�o poss�veis *!',

    # Template: AgentUtilSearchNavBar
      'Change search options' => 'Alterar op��es de procura',
      'Results' => 'Resultados',
      'Search Result' => 'Resultado de Procura',
      'Total hits' => 'Total de acertos',

    # Template: AgentUtilSearchResult
      '"}","15' => '',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultPrintTable
      '"}","30' => '',

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilSearchResultShortTable

    # Template: AgentUtilSearchResultShortTableNotAnswered

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'Todos os Tickets fechados',
      'All open tickets' => 'Todos os tickets abertos',
      'closed tickets' => 'Tickets fechados',
      'open tickets' => 'Tickets abertos',
      'or' => 'ou',
      'Provides an overview of all' => 'D� uma vis�o geral de todos os',
      'So you see what is going on in your system.' => 'Ent�o, voc� v� o que est� a acontecer no seu sistema.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'Compor Follow up',
      'Your own Ticket' => 'O seu Ticket',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'Comp�r resposta',
      'Contact customer' => 'Contactar cliente',
      'phone call' => 'chamada telef�nica',

    # Template: AgentZoomArticle
      'Split' => 'Dividir',

    # Template: AgentZoomBody
      'Change queue' => 'Modificar Queue',

    # Template: AgentZoomHead
      'Free Fields' => 'Campos Livres',
      'Print' => 'Imprimir',

    # Template: AgentZoomStatus
      '"}","18' => '',

    # Template: CustomerCreateAccount
      'Create Account' => 'Criar Conta',

    # Template: CustomerError
      'Traceback' => 'Retroceder',

    # Template: CustomerFAQArticleHistory
      'Edit' => 'Editar',
      'FAQ History' => 'Hist�rico da FAQ',

    # Template: CustomerFAQArticlePrint
      'Category' => 'Categorias',
      'Keywords' => 'Palavras Chave',
      'Last update' => '�ltima Actualiza��o',
      'Problem' => 'Problema',
      'Solution' => 'Solu��o',
      'Symptom' => 'Sintoma',

    # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => 'Sistema de Hist�rico da FAQ',

    # Template: CustomerFAQArticleView
      'FAQ Article' => 'Artigo da FAQ',
      'Modified' => 'Modificado',

    # Template: CustomerFAQOverview
      'FAQ Overview' => 'Resumo da FAQ',

    # Template: CustomerFAQSearch
      'FAQ Search' => 'Procura na FAQ',
      'Fulltext' => 'Texto completo',
      'Keyword' => 'Palavra chave',

    # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'Resultado da Procura na FAQ',

    # Template: CustomerFooter
      'Powered by' => 'Produzido por',

    # Template: CustomerHeader
      'Contact' => 'Contacto',
      'Home' => 'In�cio',
      'Online-Support' => 'Suporte-Online',
      'Products' => 'Produtos',
      'Support' => 'Suporte',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Esqueceu-se da password?',
      'Request new password' => 'Solicitar nova password',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => 'Criar um novo Ticket',
      'FAQ' => 'FAQ',
      'New Ticket' => 'Novo Tickets',
      'Ticket-Overview' => 'Resumo do Ticket',
      'Welcome %s' => 'Bem-vindo %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView
      'My Tickets' => 'Meus Tickets',

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Clicar para reportar um erro!',

    # Template: FAQArticleDelete
      'FAQ Delete' => 'Eliminar FAQ',
      'You really want to delete this article?' => 'Deseja mesmo eliminar este artigo?',

    # Template: FAQArticleForm
      'Comment (internal)' => '',
      'Filename' => 'Nome do Ficheiro',
      'Short Description' => 'Pequena Descri��o',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQCategoryForm
      'FAQ Category' => 'Categoria da FAQ',

    # Template: FAQLanguageForm
      'FAQ Language' => 'Idioma da FAQ',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: FAQStateForm
      'FAQ State' => '',

    # Template: Footer
      'Top of Page' => 'Topo da P�gina',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => 'Criar Base de Dados',
      'Drop Database' => 'Apagar Base de Dados',
      'Finished' => 'Terminado',
      'System Settings' => 'Propriedades de Sistema',
      'Web-Installer' => 'Instalador Web',

    # Template: InstallerFinish
      'Admin-User' => 'Utilizador de Admin',
      'After doing so your OTRS is up and running.' => 'Depois disto o seu OTRS estar� completamente funcional',
      'Have a lot of fun!' => 'Divirta-se!',
      'Restart your webserver' => 'Reinicie o seu servidor Web',
      'Start page' => 'P�gina Inicial',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '',
      'Your OTRS Team' => 'A sua Equipa OTRS',

    # Template: InstallerLicense
      'accept license' => 'Aceitar licen�a',
      'don\'t accept license' => 'N�o Aceitar licen�a',
      'License' => 'Licen�a',

    # Template: InstallerStart
      'Create new database' => 'Criar nova Base de Dados',
      'DB Admin Password' => 'Password Admin da Base de Dados',
      'DB Admin User' => 'Utilizador Admin da Base de Dados',
      'DB Host' => 'Servidor Base de Dados',
      'DB Type' => 'Tipo da Base de Dados',
      'default \'hot\'' => 'por defeito \'hot\'',
      'Delete old database' => 'Eliminar Base de Dados Antiga',
      'next step' => 'pr�ximo passo',
      'OTRS DB connect host' => 'Servidor de liga��o da Base de Dados OTRS',
      'OTRS DB Name' => 'Nome da Base de Dados OTRS',
      'OTRS DB Password' => 'Password da Base de Dados OTRS',
      'OTRS DB User' => 'Utilizador Base de Dados OTRS',
      'your MySQL DB should have a root password! Default is empty!' => 'A sua Base de Dados MySQL deve ter uma password de root! Por defeito n�o tem password!',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '
(Verifica os apontadores de MX quando compoe uma resposta. N�o usar caso esteja a usar uma liga��o dial-up!)',
      '(Email of the system admin)' => '(Email do administrador do sistema)',
      '(Full qualified domain name of your system)' => '(Nome completo do dom�nio do seu sistema)',
      '(Logfile just needed for File-LogModule!)' => '(Ficheiro de registo para File-LogModule)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(A identidade do sistema. Cada n�mero de Ticket e cada id. da sess�o http, inicia com este n�mero)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '',
      '(Used default language)' => '(Idioma padr�o utilizado)',
      '(Used log backend)' => '()',
      '(Used ticket number format)' => '(Formato de Ticket utilizado)',
      'CheckMXRecord' => 'Verificar apontador de MX',
      'Default Charset' => 'Conjunto de Caracteres Padr�o',
      'Default Language' => 'Idioma Padr�o',
      'Logfile' => 'Ficheiro de Log',
      'LogModule' => 'M�dulo de Logs',
      'Organization' => 'Organiza��o',
      'System FQDN' => 'FQDN do sistema',
      'SystemID' => 'ID do sistema',
      'Ticket Hook' => 'Identificador do Ticket',
      'Ticket Number Generator' => 'Gerador de N�meros de Tickets',
      'Use utf-8 it your database supports it!' => '',
      'Webfrontend' => 'Interface Web',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Sem Permiss�o',

    # Template: Notify
      'Info' => 'Informa��o',

    # Template: PrintFooter
      'URL' => 'URL',

    # Template: PrintHeader
      'printed by' => 'impresso por',

    # Template: QueueView
      'All tickets' => 'Todos Tickets',
      'Page' => 'P�gina',
      'Queues' => 'Queues',
      'Tickets available' => 'Tickets dispon�veis',
      'Tickets shown' => 'Tickets mostrados',

    # Template: SystemStats
      'Graphs' => 'Gr�ficos',

    # Template: Test
      'OTRS Test Page' => 'P�gina de Teste do OTRS',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Escalamento de Tickets!',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => 'Adicionar Nota',

    # Template: Warning

    # Misc
      '(Ticket identifier. Some people want to set this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificador do Ticket. Algumas pessoas gostam de usar por exemplo \'Ticket#\, \'Chamada#\' ou \'MeuTicket#\')',
      'A message should have a From: recipient!' => 'Uma mensagem deve conter um De: remetente!',
      'AdminArea' => '�rea de Administra��o',
      'AgentFrontend' => 'Interface do Agente',
      'Article free text' => 'Texto livre do artigo',
      'Charset' => 'Conjunto de Caracteres',
      'Charsets' => 'Conjunto de Caracteres',
      'Create' => 'Criar',
      'CustomerUser' => 'Utilizador do Cliente',
      'Fulltext search' => 'Procura completa de texto',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Procura completa em todo texto (exemplo: "Fil*e" ou "Henr*" ou "filipe+henriques")',
      'Handle' => 'Manipular',
      'New state' => 'Novo estado',
      'New ticket via call.' => 'Novo Ticket via chamada telef�nica.',
      'New user' => 'Novo Utilizador',
      'POP3 Account' => 'Conta POP3',
      'Search in' => 'Procurar em',
      'Set customer id of a ticket' => 'Definir a identifica��o do cliente de um ticket',
      'Show all' => 'Mostrar todos os',
      'Status defs' => 'Estados',
      'Sympthom' => 'Sintoma',
      'System Charset Management' => 'Ger�nciamento de Conjunto de Caracteres do Sistema',
      'System Language Management' => 'Gest�o de Idiomas do Sistema',
      'Ticket free text' => 'Texto livre do ticket',
      'Ticket limit:' => 'Limite do Ticket:',
      'Time till escalation' => 'Tempo para escala��o',
      'With State' => 'Com Estado',
      'You have to be in the admin group!' => 'Tem que estar no grupo admin!',
      'You have to be in the stats group!' => 'Tem que estar no grupo stats!',
      'You need a email address (e. g. customer@example.com) in From:!' => 'Precisa de um endere�o de email (ex:cliente@exemplo.pt) no campo De:!',
      'auto responses set' => 'respostas autom�ticas activas',
      'search' => 'procurar',
      'search (e. g. 10*5155 or 105658*)' => 'procurar (exemplo: 1055155 ou 105658*)',
      'store' => 'armazenar',
      'tickets' => 'tickets',
      'valid' => 'v�lido',
      'view' => 'Vista',
    );

    # $$STOP$$

    $Self->{Translation} = \%Hash;
}
# --
1;

