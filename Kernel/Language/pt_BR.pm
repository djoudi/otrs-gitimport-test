# --
# Kernel/Language/pt_BR.pm - provides pt_BR language translation
# Copyright (C) 2003 Gilberto Cezar de Almeida <gibalmeida at hotmail.com>
# --
# $Id: pt_BR.pm,v 1.8 2003-04-12 22:36:35 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::pt_BR;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.8 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Sun Apr 13 00:32:36 2003 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 minutos',
      ' 5 minutes' => ' 5 minutos',
      ' 7 minutes' => ' 7 minutos',
      '10 minutes' => '10 minutos',
      '15 minutes' => '15 minutos',
      'AddLink' => 'Adicionar link',
      'AdminArea' => '�rea de Administra��o',
      'agent' => '',
      'all' => 'todos',
      'All' => 'Todos',
      'Attention' => 'Aten��o',
      'Bug Report' => 'Relat�rio de Erros',
      'Cancel' => 'Cancelar',
      'change' => 'alterar',
      'Change' => 'Alterar',
      'change!' => 'alterar!',
      'click here' => 'clique aqui',
      'Comment' => 'Coment�rio',
      'Customer' => 'Cliente',
      'customer' => '',
      'Customer Info' => 'Inform���o do Cliente',
      'day' => 'dia',
      'days' => 'dias',
      'description' => 'descri��o',
      'Description' => 'Descri��o',
      'Dispatching by email To: field.' => 'Despachar pelo campo de email To:',
      'Dispatching by selected Queue.' => 'Despachar pela fila selecionada',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'N�o trabalhe com o Identificador de Usu�rio 1(Conta do Sistema)! Crie novos usu�rios!',
      'Done' => 'Feito',
      'end' => 'fim',
      'Error' => 'Erro',
      'Example' => 'Exemplo',
      'Examples' => 'Exemplos',
      'Facility' => 'Facilidade',
      'Feature not active!' => 'Caracter�stica n�o ativada!',
      'go' => 'ir',
      'go!' => 'ir!',
      'Group' => 'Grupo',
      'Hit' => 'Hit',
      'Hits' => 'Hits',
      'hour' => 'hora',
      'hours' => 'horas',
      'Ignore' => 'Ignorar',
      'invalid' => 'inv�lido',
      'Invalid SessionID!' => 'Identifica��o de Sess�o Inv�lida',
      'Language' => 'Idioma',
      'Languages' => 'Idiomas',
      'Line' => 'Linha',
      'Lite' => 'Lite',
      'Login failed! Your username or password was entered incorrectly.' => 'Identifica��o incorreta! Seu nome de usu�rio ou senha foram informadas incorretamentes.',
      'Logout successful. Thank you for using OTRS!' => 'Desconex�o com sucesso. Obrigado por utilizar o OTRS!',
      'Message' => 'Mensagem',
      'minute' => 'minuto',
      'minutes' => 'minutos',
      'Module' => 'M�dulo',
      'Modulefile' => 'Arquivo de M�dulo',
      'Name' => 'Nome',
      'New message' => 'Nova mensagem',
      'New message!' => 'Nova mensagem!',
      'No' => 'N�o',
      'no' => 'nenhuma',
      'No entry found!' => '',
      'No suggestions' => 'Sem sugest�es',
      'none' => 'nada',
      'none - answered' => 'nada  - respondido',
      'none!' => 'nada!',
      'Off' => 'Desligado',
      'off' => 'desligado',
      'On' => 'Ligado',
      'on' => 'ligado',
      'Password' => 'Senha',
      'Pending till' => 'Gaveta pendente',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Por favor, responda este(s) bilhete(s) para retornar para vis�o normal da fila!',
      'Please contact your admin' => 'Por favor, contate seu administrador',
      'please do not edit!' => 'Por favor, n�o edite!',
      'possible' => 'poss�vel',
      'QueueView' => 'Fila',
      'reject' => 'rejeitar',
      'replace with' => 'substituir com',
      'Reset' => 'Re-iniciar',
      'Salutation' => 'Sauda��o',
      'Session has timed out. Please log in again.' => '',
      'Signature' => 'Assinatura',
      'Sorry' => 'Desculpe',
      'Stats' => 'Estat�sticas',
      'Subfunction' => 'Sub-fun��o',
      'submit' => 'Enviar',
      'submit!' => 'Enviar!',
      'system' => '',
      'Take this User' => '',
      'Text' => 'Texto',
      'The recommended charset for your language is %s!' => 'O conjunto de caracteres recomendado para o seu idioma � %s!',
      'Theme' => 'Tema',
      'There is no account with that login name.' => 'N�o existe conta com este nome de usu�rio',
      'Timeover' => 'Tempo esgotado',
      'top' => 'in�cio',
      'update' => 'atualizar',
      'update!' => 'atualizar!',
      'User' => 'Usu�rio',
      'Username' => 'Nome de Usu�rio',
      'Valid' => 'V�lido',
      'Warning' => 'Aviso',
      'Welcome to OTRS' => 'Bem-vindo ao OTRS',
      'Word' => 'Palavra',
      'wrote' => 'escreveu',
      'yes' => 'sim',
      'Yes' => 'Sim',
      'You got new message!' => 'Voc� recebeu uma nova mensagem',
      'You have %s new message(s)!' => 'Voc� tem %s nova(s) mensagem(s)!',
      'You have %s reminder ticket(s)!' => 'Voc� tem %s bilhete(s) remanescente(s)',

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
      'Closed Tickets' => '',
      'Custom Queue' => 'Fila Personalizada',
      'Follow up notification' => 'Notifica��o de continua��o',
      'Frontend' => 'Interface',
      'Mail Management' => 'Ger�nciamento de Correios',
      'Move notification' => 'Notifica��o de movimentos',
      'New ticket notification' => 'Notifica��o de novo bilhete',
      'Other Options' => 'Outras Op��es',
      'Preferences updated successfully!' => 'Prefer�ncias atualizadas com sucesso!',
      'QueueView refresh time' => 'Tempo de atualiza��o das Filas',
      'Select your default spelling dictionary.' => '',
      'Select your frontend Charset.' => 'Selecione o Conjunto de Caracteres da sua Interface .',
      'Select your frontend language.' => 'Selecione o Idioma da sua Interface.',
      'Select your frontend QueueView.' => 'Selecione a Vis�o da Fila da sua Interface.',
      'Select your frontend Theme.' => 'Selecione o Tema da sua Interface.',
      'Select your QueueView refresh time.' => 'Selecione o tempo de atualiza��o das Filas',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notifique me se um cliente enviar uma continua��o e sou o dono do bilhete.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Notifique me se um bilhete � movido para uma fila personalizada',
      'Send me a notification if a ticket is unlocked by the system.' => 'Notifique me se um bilhete � desbloqueado pelo sistema.',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Notifique me se h� um novo bilhete em minhas filas personalizadas.',
      'Show closed tickets.' => '',
      'Spelling Dictionary' => '',
      'Ticket lock timeout notification' => 'Notifica��o de bloqueio por tempo expirado',

    # Template: AAATicket
      '1 very low' => '1 muito baixo',
      '2 low' => '2 baixo',
      '3 normal' => '3 normal',
      '4 high' => '4 alto',
      '5 very high' => '5 muito alto',
      'Action' => 'A��o',
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
      'If it is not displayed correctly,' => 'Se ele n�o for exibido corretamente,',
      'lock' => '',
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
      'pending auto close+' => 'pendente auto fechamento+',
      'pending auto close-' => 'pendente auto fechamento-',
      'pending reminder' => 'lembrete de pendente',
      'phone' => 'telefone',
      'plain' => 'texto',
      'Priority' => 'Prioridade',
      'Queue' => 'Fila',
      'removed' => 'removido',
      'Sender' => 'Remetente',
      'sms' => 'sms',
      'State' => 'Estado',
      'Subject' => 'Assunto',
      'This is a' => 'Este � um',
      'This is a HTML email. Click here to show it.' => 'Esta � um email HTML. Clique aqui para exibi-lo.',
      'This message was written in a character set other than your own.' => 'Esta mensagem foi escrita utilizando um conjunto de caracteres diferente do seu.',
      'Ticket' => 'Bilhete',
      'To' => 'Para',
      'to open it in a new window.' => 'para abri-lo em uma nova janela.',
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
      'Add attachment' => 'Adicionar anexo',
      'Attachment Management' => 'Ger�nciamento de Anexos',
      'Change attachment settings' => 'Modificar as configura��es do anexo',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'Adicionar uma auto-resposta',
      'Auto Response From' => 'Auto-Resposta De',
      'Auto Response Management' => 'Ger�nciamento de Auto-Respostas',
      'Change auto response settings' => 'Modificar as configura��es da auto-resposta',
      'Charset' => 'Conjunto de Caracteres',
      'Note' => 'Nota',
      'Response' => 'Resposta',
      'to get the first 20 character of the subject' => 'para obter os 20 primeiros caracteres do assunto',
      'to get the first 5 lines of the email' => 'para obter as 5 primeiras linhas do email',
      'to get the from line of the email' => 'para obter a linha "From" do email',
      'to get the realname of the sender (if given)' => 'para obter o nome do remetente (se possuir no email)',
      'to get the ticket id of the ticket' => '',
      'to get the ticket number of the ticket' => 'para obter o n�mero do bilhete',
      'Type' => 'Tipo',
      'Useable options' => 'Op��es acess�veis',

    # Template: AdminCharsetForm
      'Add charset' => 'Adicionar conjunto de caracteres',
      'Change system charset setting' => 'Modificar as configura��es do conjunto de caracteres do sistema',
      'System Charset Management' => 'Ger�nciamento de Conjunto de Caracteres do Sistema',

    # Template: AdminCustomerUserForm
      'Add customer user' => 'Adicionar cliente',
      'Change customer user settings' => 'Modificar as configura��es do cliente',
      'Customer User Management' => 'Ger�nciamento de Clientes',
      'Customer user will be needed to to login via customer panels.' => 'Um cliente � necess�rio para se conectar pelo painel de clientes',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Email do Admin.',
      'Body' => 'Corpo',
      'OTRS-Admin Info!' => 'Informa��o do Administrador do OTRS!',
      'Permission' => '',
      'Recipents' => 'Destinat�rios',
      'send' => '',

    # Template: AdminEmailSent
      'Message sent to' => 'Mensagem enviada para',

    # Template: AdminGroupForm
      'Add group' => 'Adicionar grupo',
      'Change group settings' => 'Modificar as configura��es do grupo',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crie novos grupos para manipular as permiss�es de acesso para diferentes grupos de agentes (exemplos: departamento de compras, departamento de suporte, departamento de vendas, etc...).',
      'Group Management' => 'Ger�nciamento de Grupos',
      'It\'s useful for ASP solutions.' => 'Isto � �til para solu��es ASP.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'O grupo admin � para uso na �rea de administra��o e o grupo stats � para uso na �rea de estat�sticas.',

    # Template: AdminLog
      'System Log' => 'Registro do Sistema',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Email do Administrador',
      'AgentFrontend' => 'Interface do Agente',
      'Attachment <-> Response' => '',
      'Auto Response <-> Queue' => 'Auto-Respostas <-> Filas',
      'Auto Responses' => 'Auto-Respostas',
      'Charsets' => 'Conjunto de Caracteres',
      'Customer User' => 'Cliente',
      'Email Addresses' => 'Endere�os de Emails',
      'Groups' => 'Grupos',
      'Logout' => 'Desconectar-se',
      'Misc' => 'Variedades',
      'POP3 Account' => 'Conta POP3',
      'Responses' => 'Respostas',
      'Responses <-> Queue' => 'Respostas <-> Filas',
      'Select Box' => 'Caixa de Sele��o',
      'Session Management' => 'Ger�nciamento de Sess�es',
      'Status' => '',
      'System' => 'Sistema',
      'User <-> Groups' => 'Usu�rios <-> Grupos',

    # Template: AdminPOP3Form
      'Add POP3 Account' => 'Adicionar Conta POP3',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Todos os emails de entrada com uma conta ser� despachado na fila selecionada!',
      'Change POP3 Account setting' => 'Modificar as configura��es da conta POP3',
      'Dispatching' => 'Despachando',
      'Host' => '',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Se sua conta � confi�vel, os cabe�alhos x-otrs (para prioridade, ...) ser�o utilizados!',
      'Login' => '',
      'POP3 Account Management' => 'Ger�nciamento de Contas POP3',
      'Trusted' => 'Confi�vel',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Ger�nciamento de Filas <-> Auto-Resposta',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = sem escala��o',
      '0 = no unlock' => '0 = sem desbloqueio',
      'Add queue' => 'Adicionar fila',
      'Change queue settings' => 'Modificar as configura��es da fila',
      'Customer Move Notify' => '',
      'Customer Owner Notify' => '',
      'Customer State Notify' => '',
      'Escalation time' => 'Tempo de escala��o',
      'Follow up Option' => 'Op��o de continua��o',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Se um bilhete est� fechado e um cliente envia uma continua��o, este mesmo bilhete ser� bloqueado para o antigo propriet�rio.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Se um bilhete n�o foi respondido dentro deste tempo, apenas os bilhetes com este tempo vencido ser�o exibidos.',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se um agente bloqueia um bilhete e ele n�o envia uma resposta dentro deste tempo, o bilhete ser� desbloqueado automaticamente. Ent�o o bilhete ser� vis�vel para todos os outros agentes.',
      'Key' => 'Chave',
      'OTRS sends an notification email to the customer if the ticket is moved.' => '',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => '',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => '',
      'Queue Management' => 'Ger�nciamento de Filas',
      'Sub-Queue of' => '',
      'Systemaddress' => 'Endere�o do Sistema',
      'The salutation for email answers.' => 'A sauda��o para as respostas de emails.',
      'The signature for email answers.' => 'A assinatura para as respostas de emails.',
      'Ticket lock after a follow up' => 'Bloqueio do bilhete ap�s as continua��es',
      'Unlock timeout' => 'Tempo de expira��o de desbloqueio',
      'Will be the sender address of this queue for email answers.' => 'Ser� o endere�o de email de respostas desta fila.',

    # Template: AdminQueueResponsesChangeForm
      'Change %s settings' => 'Modificar %s configura��es',
      'Std. Responses <-> Queue Management' => 'Ger�nciamento de Respostas Padr�es <-> Filas',

    # Template: AdminQueueResponsesForm
      'Answer' => 'Resposta',
      'Change answer <-> queue settings' => 'Modificar as configura��es de respostas <-> filas',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'Ger�nciamento de Respostas Padr�es <-> Anexos',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'Modificar as configura��es de Respostas <-> Anexos',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Uma resposta � um texto padr�o para comp�r respostas r�pidas (com texto padr�o) para clientes.',
      'Add response' => 'Adicionar resposta',
      'Change response settings' => 'Modificar as configura��es da resposta',
      'Don\'t forget to add a new response a queue!' => 'N�o se esque�a de adicionar a nova resposta a uma fila!',
      'Response Management' => 'Ger�nciamento de Respostas',

    # Template: AdminSalutationForm
      'Add salutation' => 'Adicionar sauda��o',
      'Change salutation settings' => 'Modificar as configura��es da sauda��o',
      'customer realname' => 'Nome do cliente',
      'for agent firstname' => 'Nome do Agente',
      'for agent lastname' => 'Sobrenome do Agente',
      'for agent login' => '',
      'for agent user id' => '',
      'Salutation Management' => 'Ger�nciamento de Sauda��es',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'N�mero m�ximo de linhas',

    # Template: AdminSelectBoxResult
      'Limit' => 'Limite',
      'Select Box Result' => 'Selecione a Caixa de Resultado',
      'SQL' => 'SQL',

    # Template: AdminSession
      'kill all sessions' => 'Finalizar todas as sess�es',

    # Template: AdminSessionTable
      'kill session' => 'Finalizar sess�o',
      'SessionID' => 'Identifica��o da sess�o',

    # Template: AdminSignatureForm
      'Add signature' => 'Adicionar assinatura',
      'Change signature settings' => 'Modificar as configura��es da assinatura',
      'Signature Management' => 'Ger�nciamento de Assinaturas',

    # Template: AdminStateForm
      'Add state' => 'Adicionar estado',
      'Change system state setting' => 'Modificar as configura��es do estado do sistema',
      'State Type' => '',
      'System State Management' => 'Ger�nciamento de Estados do Sistema',

    # Template: AdminSystemAddressForm
      'Add system address' => 'Adicionar um endere�o do sistema',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todos os emails entrantes com este Email(To:) ser�o despachados na fila selecionada!',
      'Change system address setting' => 'Modificar o endere�o do sistema',
      'Email' => '',
      'Realname' => 'Nome',
      'System Email Addresses Management' => 'Ger�nciamento dos Endere�os de Emails do Sistema',

    # Template: AdminUserForm
      'Add user' => 'Adicionar usu�rio',
      'Change user settings' => 'Modificar as configura��es do usu�rio',
      'Don\'t forget to add a new user to groups!' => 'N�o esque�a de adicionar um novo usu�rio nos grupos!',
      'Firstname' => 'Nome',
      'Lastname' => 'Sobrenome',
      'User Management' => 'Ger�nciamento de Usu�rios',
      'User will be needed to handle tickets.' => 'Ser� necess�rio um usu�rio para manipular os bilhetes.',

    # Template: AdminUserGroupChangeForm
      'Change  settings' => 'Modificar as configura��es',
      'User <-> Group Management' => 'Ger�nciamento de Usu�rios <-> Grupos',

    # Template: AdminUserGroupForm
      'Change user <-> group settings' => 'Modificar as configura��es de usu�rios <-> grupos',

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Uma mensagem deve possuir um To: destinat�rio!',
      'Bounce ticket' => 'Devolver bilhete',
      'Bounce to' => 'Devolver para',
      'Inform sender' => 'Informe o remetente',
      'Next ticket state' => 'Pr�ximo estado do bilhete',
      'Send mail!' => 'Enviar email!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Voc� precisa de um endere�o de email (exemplo: cliente@exemplo.com.br) no To:!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Seu email com o n�mero de bilhete "<OTRS_TICKET>" foi devolvido para "<OTRS_BOUNCE_TO>". Contate este endere�o para mais informa��es.',

    # Template: AgentClose
      ' (work units)' => ' (unidades de trabalho)',
      'A message should have a subject!' => 'Uma mensagem deve conter um assunto!',
      'Close ticket' => 'Fechar o bilhete',
      'Close type' => 'Tipo de fechamento',
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
      'Compose answer for ticket' => 'Comp�r uma resposta para o bilhete',
      'for pending* states' => 'em estado pendente*',
      'Is the ticket answered' => 'O bilhete foi respondido',
      'Pending Date' => 'Data de Pend�ncia',

    # Template: AgentCustomer
      'Back' => 'Retornar',
      'Change customer of ticket' => 'Modificar o cliente do bilhete',
      'CustomerID' => 'Id.do Cliente',
      'Search Customer' => 'Busca do cliente',
      'Set customer user and customer id of a ticket' => '',

    # Template: AgentCustomerHistory
      'Customer history' => 'Hist�rico do cliente',

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerMessage
      'Follow up' => 'Continua��o',
      'Next state' => '',

    # Template: AgentCustomerView
      'Customer Data' => 'Dados do Cliente',

    # Template: AgentForward
      'Article type' => 'Tipo de artigo',
      'Date' => 'Data',
      'End forwarded message' => 'Final da mensagem encaminhada',
      'Forward article of ticket' => 'Encaminhar o artigo do bilhete',
      'Forwarded message from' => 'Mensagem encaminhada de',
      'Reply-To' => 'Responder-Para',

    # Template: AgentFreeText
      'Change free text of ticket' => '',
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
      'Tickets' => 'Bilhetes',
      'up' => 'normal',

    # Template: AgentMailboxTicket

    # Template: AgentMove
      'Move Ticket' => '',
      'New Queue' => '',
      'New user' => 'Novo usu�rio',

    # Template: AgentNavigationBar
      'Locked tickets' => 'Bilhetes bloqueados',
      'new message' => 'Nova mensagem',
      'PhoneView' => 'Chamada',
      'Preferences' => 'Prefer�ncias',
      'Utilities' => 'Utilit�rios',

    # Template: AgentNote
      'Add note to ticket' => 'Adicionar nota ao bilhete',
      'Note!' => 'Nota!',

    # Template: AgentOwner
      'Change owner of ticket' => 'Modificar o propriet�rio do bilhete',
      'Message for new Owner' => 'Mensagem para um novo Propriet�rio',

    # Template: AgentPending
      'Pending date' => 'Data da pend�ncia',
      'Pending type' => 'Tipo de pend�ncia',
      'Pending!' => '',
      'Set Pending' => 'Marcar Pendente',

    # Template: AgentPhone
      'Customer called' => 'Cliente chamado',
      'Phone call' => 'Chamada telef�nica',
      'Phone call at %s' => 'Chamada telef�nica em %s',

    # Template: AgentPhoneNew
      'Clear From' => '',
      'create' => '',
      'new ticket' => 'novo bilhete',

    # Template: AgentPlain
      'ArticleID' => 'Id.do artigo',
      'Plain' => 'Texto',
      'TicketID' => 'Id.do Bilhete',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'Seleciona sua fila personalizada',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Modificar Senha',
      'New password' => 'Nova senha',
      'New password again' => 'Re-digite a nova senha',

    # Template: AgentPriority
      'Change priority of ticket' => 'Modificar a prioridade do bilhete',
      'New state' => 'Novo estado',

    # Template: AgentSpelling
      'Apply these changes' => 'Aplicar estas modifica��es',
      'Discard all changes and return to the compose screen' => 'Descartar todas as modifica��es e retornar para a tela de composi��o',
      'Return to the compose screen' => 'Retornar para a tela de composi��o',
      'Spell Checker' => 'Checar a Ortografica',
      'spelling error(s)' => 'erro(s) ortogr�ficos',
      'The message being composed has been closed.  Exiting.' => 'A mensagem sendo composta foi fechada. Saindo.',
      'This window must be called from compose window' => 'Esta janela deve ser chamada da janela de composi��o',

    # Template: AgentStatusView
      'D' => 'D',
      'of' => 'de',
      'Site' => '',
      'sort downward' => 'ordem decrescente',
      'sort upward' => 'ordem crescente',
      'Ticket Status' => 'Estado do Bilhete',
      'U' => 'C',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Bilhete bloqueado!',
      'Ticket unlock!' => '',

    # Template: AgentTicketPrint
      'by' => 'por',

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Tempo contabilizado',
      'Escalation in' => 'Escalado em',
      'printed by' => 'impresso por',

    # Template: AgentUtilSearch
      'Article free text' => 'Texto livre do artigo',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Busca completa em todo texto (exemplo: "Mar*in" ou "Constru*" ou "martin+bonjour")',
      'search' => 'buscar',
      'search (e. g. 10*5155 or 105658*)' => 'buscar (exemplo: 1055155 ou 105658*)',
      'Ticket free text' => 'Texto livre do bilhete',
      'Ticket Search' => '',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Busca no Hist�rico do cliente',
      'Customer history search (e. g. "ID342425").' => 'Busca no Hist�rico do cliente (exemplo: "ID342425")',
      'No * possible!' => 'N�o s�o poss�veis *!',

    # Template: AgentUtilSearchNavBar
      'Results' => 'Resultados',
      'Total hits' => 'Total de acertos',

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
      'All closed tickets' => '',
      'All open tickets' => 'Todos os bilhetes abertos',
      'closed tickets' => '',
      'open tickets' => 'bilhetes abertos',
      'or' => '',
      'Provides an overview of all' => 'D� uma vis�o geral de todos os',
      'So you see what is going on in your system.' => 'Ent�o, voc� v� o que est� acontecendo no seu sistema.',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => '',
      'Your own Ticket' => '',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'Comp�r resposta',
      'Contact customer' => 'Contatar cliente',
      'phone call' => 'chamada telef�nica',

    # Template: AgentZoomArticle
      'Split' => '',

    # Template: AgentZoomBody
      'Change queue' => 'Modificar Fila',

    # Template: AgentZoomHead
      'Free Fields' => '',
      'Print' => 'Imprimir',

    # Template: AgentZoomStatus

    # Template: CustomerCreateAccount
      'Create Account' => 'Criar Conta',

    # Template: CustomerError
      'Traceback' => '',

    # Template: CustomerFooter
      'Powered by' => 'Movido �',

    # Template: CustomerHeader
      'Contact' => 'Contato',
      'Home' => 'In�cio',
      'Online-Support' => 'Suporte-Online',
      'Products' => 'Produtos',
      'Support' => 'Suporte',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Esqueceu sua senha?',
      'Request new password' => 'Solicitar uma nova senha',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => 'Criar um novo bilhete',
      'My Tickets' => 'Meus Bilhetes',
      'New Ticket' => 'Novo Bilhete',
      'Ticket-Overview' => 'Resumo do Bilhete',
      'Welcome %s' => 'Bem-vindo %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Clique aqui para relatar um erro!',

    # Template: Footer
      'Top of Page' => '',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => '',
      'Drop Database' => '',
      'Finished' => '',
      'System Settings' => '',

    # Template: InstallerLicense
      'accept license' => '',
      'don\'t accept license' => '',
      'License' => '',

    # Template: InstallerStart
      'next step' => 'pr�ximo passo',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '',
      '(Email of the system admin)' => '(Email do administrador do sistema)',
      '(Full qualified domain name of your system)' => '(Nome completo do dom�nio de seu sistema)',
      '(Logfile just needed for File-LogModule!)' => '(Arquivo de registro para File-LogModule)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(A identidade do sistema. Cada n�mero de bilhete e cada id. da sess�o http, inicia com este n�mero)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificador do Bilhete. Algumas pessoas gostam de usar por exemplo \'Bilhete#\, \'Chamada#\' ou \'MeuBilhete#\')',
      '(Used default language)' => '(Idioma padr�o utilizado)',
      '(Used log backend)' => '()',
      '(Used ticket number format)' => '(Formato de bilhete utilizado)',
      'CheckMXRecord' => '',
      'Default Charset' => 'Conjunto de Caracteres Padr�o',
      'Default Language' => 'Idioma Padr�o',
      'Logfile' => 'Arquivo de registro',
      'LogModule' => '',
      'Organization' => 'Organiza��o',
      'System FQDN' => 'FQDN do sistema',
      'SystemID' => 'ID do sistema',
      'Ticket Hook' => '',
      'Ticket Number Generator' => 'Gerador de N�meros de Bilhetes',
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

    # Template: QueueView
      'All tickets' => 'Todos bilhetes',
      'Queues' => 'Filas',
      'Tickets available' => 'Bilhetes dispon�veis',
      'Tickets shown' => 'Bilhetes mostrados',

    # Template: SystemStats
      'Graphs' => 'Gr�ficos',

    # Template: Test
      'OTRS Test Page' => 'P�gina de Teste do OTRS',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Escala��o de bilhetes!',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => 'Adicionar Nota',

    # Template: Warning

    # Misc
      '(Click here to add a group)' => '(Clique aqui para adicionar um grupo)',
      '(Click here to add a queue)' => '(Clique aqui para adicionar uma fila)',
      '(Click here to add a response)' => '(Clique aqui para adicionar uma resposta)',
      '(Click here to add a salutation)' => '(Clique aqui para adicionar uma sauda��o)',
      '(Click here to add a signature)' => '(Clique aqui para adicionar uma assinatura)',
      '(Click here to add a system email address)' => '(Clique aqui para adicionar um endere�o de email do sistema)',
      '(Click here to add a user)' => '(Clique aqui para adicionar um usu�rio)',
      '(Click here to add an auto response)' => '(Clique aqui para adicionar uma auto-resposta)',
      '(Click here to add charset)' => '(Clique aqui para adicionar um conjunto de caracteres)',
      '(Click here to add language)' => '(Clique aqui para adicionar um idioma)',
      '(Click here to add state)' => '(Clique aqui para adicionar um estado)',
      'A message should have a From: recipient!' => 'Uma mensagem deve conter um From: remetente!',
      'Add language' => 'Adicionar idioma',
      'Backend' => '',
      'BackendMessage' => '',
      'Change Group settings' => 'Modificar as configura��es do grupo',
      'Change User settings' => 'Modificar as configura��es do usu�rio',
      'Change system language setting' => 'Modificar as configura��es de idioma',
      'Create' => 'Criar',
      'CustomerUser' => 'Usu�rio Cliente',
      'FAQ' => 'FAQ',
      'Fulltext search' => 'Busca completa de texto',
      'Handle' => 'Manipular',
      'New ticket via call.' => 'Novo bilhete via chamada telef�nica.',
      'Search in' => 'Buscar em',
      'Set customer id of a ticket' => 'Definir a identifica��o do cliente de um bilhete',
      'Show all' => 'Mostrar todos os',
      'Status defs' => 'Estados',
      'System Language Management' => 'Ger�nciamento de Idiomas do Sistema',
      'Ticket limit:' => 'Limite do Bilhete:',
      'Time till escalation' => 'Tempo para escala��o',
      'Update auto response' => 'Atualizar a auto-resposta',
      'Update charset' => 'Atualizar o conjunto de caracteres',
      'Update group' => 'Atualizar o grupo',
      'Update language' => 'Atualizar o idioma',
      'Update queue' => 'Atualizar a fila',
      'Update response' => 'Atualizar a resposta',
      'Update salutation' => 'Atualizar a sauda��o',
      'Update signature' => 'Atualizar a assinatura',
      'Update state' => 'Atualizar o estado',
      'Update system address' => 'Atualizar o endere�o do sistema',
      'Update user' => 'Atualizar o usu�rio',
      'With State' => 'Com Estado',
      'You have to be in the admin group!' => 'Voc� tem que estar no grupo admin!',
      'You have to be in the stats group!' => 'Voc� tem que estar no grupo stats!',
      'You need a email address (e. g. customer@example.com) in From:!' => 'Voc� precisa de um endere�o de email (ex:cliente@exemplo.com.br) no From:!',
      'auto responses set' => 'auto-respostas ativadas',
      'store' => 'armazenar',
      'tickets' => 'bilhetes',
      'valid' => 'v�lido',
    );

    # $$STOP$$

    $Self->{Translation} = \%Hash;
}
# --
1;
