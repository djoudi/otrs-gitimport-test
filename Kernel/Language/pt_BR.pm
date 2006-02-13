# --
# Kernel/Language/pt_BR.pm - provides pt_BR language translation
# Copyright (C) 2003 Gilberto Cezar de Almeida <gibalmeida at hotmail.com>
# --
# $Id: pt_BR.pm,v 1.30.2.1 2006-02-13 01:37:54 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
# Alterado por Glaucia C. Messina (glauglauu@yahoo.com)
# Updated on 02/10/2006, by Fabricio Luiz Machado (soprobr@gmail.com)

package Kernel::Language::pt_BR;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.30.2.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Jul 28 22:14:43 2005

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
      'Reset' => 'Reiniciar',
      'last' => '�ltimo',
      'before' => 'antes',
      'day' => 'dia',
      'days' => 'dias',
      'day(s)' => 'dia(s)',
      'hour' => 'hora',
      'hours' => 'horas',
      'hour(s)' => 'hora(s)',
      'minute' => 'minuto',
      'minutes' => 'minutos',
      'minute(s)' => 'minuto(s)',
      'month' => 'm�s',
      'months' => 'meses',
      'month(s)' => 'm�s(s)',
      'week' => 'semana',
      'week(s)' => 'semana(s)',
      'year' => 'ano',
      'years' => 'anos',
      'year(s)' => 'ano(s)',
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
      'valid' => 'v�lido',
      'invalid' => 'inv�lido',
      'invalid-temporarily' => 'inv�lido-temporariamente',
      ' 2 minutes' => ' 2 minutos',
      ' 5 minutes' => ' 5 minutos',
      ' 7 minutes' => ' 7 minutos',
      '10 minutes' => '10 minutos',
      '15 minutes' => '15 minutos',
      'Mr.' => 'Sr.',
      'Mrs.' => 'Sra.',
      'Next' => 'Pr�ximo',
      'Back' => 'Voltar',
      'Next...' => 'Pr�ximo',
      '...Back' => '...Voltar',
      '-none-' => 'vazio',
      'none' => 'vazio',
      'none!' => 'vazio!',
      'none - answered' => 'vazio  - respondido',
      'please do not edit!' => 'Por favor, n�o edite!',
      'AddLink' => 'Adicionar link',
      'Link' => '',
      'Linked' => '',
      'Link (Normal)' => '',
      'Link (Parent)' => 'Link (Pai)',
      'Link (Child)' => 'Link (Filho)',
      'Normal' => '',
      'Parent' => 'Pai',
      'Child' => 'Filho',
      'Hit' => '',
      'Hits' => '',
      'Text' => 'Texto',
      'Lite' => 'Simples',
      'User' => 'Usu�rio',
      'Username' => 'Login',
      'Language' => 'Idioma',
      'Languages' => 'Idiomas',
      'Password' => 'Senha',
      'Salutation' => 'Tratamento (Sr./Sra)',
      'Signature' => 'Assinatura',
      'Customer' => 'Cliente',
      'CustomerID' => 'ID.do Cliente',
      'CustomerIDs' => 'IDs do Cliente',
      'customer' => 'cliente',
      'agent' => 'Atendente',
      'system' => 'sistema',
      'Customer Info' => 'Informa��o do Cliente',
      'go!' => 'ir!',
      'go' => 'ir',
      'All' => 'Todos',
      'all' => 'todos',
      'Sorry' => 'Desculpe',
      'update!' => 'atualizar!',
      'update' => 'atualizar',
      'Update' => 'Atualizar',
      'submit!' => 'Enviar!',
      'submit' => 'enviar',
      'Submit' => 'Enviar',
      'change!' => 'alterar!',
      'Change' => 'Alterar',
      'change' => 'alterar',
      'click here' => 'clique aqui',
      'Comment' => 'Coment�rio',
      'Valid' => 'V�lido',
      'Invalid Option!' => 'Op��o Inv�lida',
      'Invalid time!' => 'Hora Inv�lida',
      'Invalid date!' => 'Data Inv�lida',
      'Name' => 'Nome',
      'Group' => 'Grupo',
      'Description' => 'Descri��o',
      'description' => 'descri��o',
      'Theme' => 'Tema',
      'Created' => 'Criado',
      'Created by' => 'Criado por',
      'Changed' => 'Alterado',
      'Changed by' => 'Alterado por',
      'Search' => 'Buscar',
      'and' => 'e',
      'between' => 'entre',
      'Fulltext Search' => 'Busca por texto completo',
      'Data' => 'Dado',
      'Options' => 'Op��es',
      'Title' => 'T�tulo',
      'Item' => '',
      'Delete' => 'Excluir',
      'Edit' => 'Editar',
      'View' => 'Ver',
      'Number' => 'N�mero',
      'System' => 'Sistema',
      'Contact' => 'Contato',
      'Contacts' => 'Contatos',
      'Export' => 'Exportar',
      'Up' => 'Acima',
      'Down' => 'Abaixo',
      'Add' => 'Adicionar',
      'Category' => 'Categoria',
      'Viewer' => 'Visualiza��o',
      'New message' => 'Nova mensagem',
      'New message!' => 'Nova mensagem!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Por favor, responda este(s) chamado(s) para retornar a fila!',
      'You got new message!' => 'Voc� recebeu uma nova mensagem',
      'You have %s new message(s)!' => 'Voc� tem %s nova(s) mensagem(s)!',
      'You have %s reminder ticket(s)!' => 'Voc� tem %s chamado(s) remanescente(s)',
      'The recommended charset for your language is %s!' => 'O conjunto de caracteres recomendado para o seu idioma � %s!',
      'Passwords dosn\'t match! Please try it again!' => 'Senha incorreta! Tente novamente!',
      'Password is already in use! Please use an other password!' => 'Senha em uso! Tente outra senha!',
      'Password is already used! Please use an other password!' => 'Senha est� sendo utilizada! Tente outra senha!',
      'You need to activate %s first to use it!' => 'Primeiramente ative %s, para uso!',
      'No suggestions' => 'Sem sugest�es',
      'Word' => 'Palavra',
      'Ignore' => 'Ignorar',
      'replace with' => 'substituir com',
      'Welcome to OTRS' => 'Bem-vindo ao OTRS',
      'There is no account with that login name.' => 'N�o existe conta com este nome de usu�rio',
      'Login failed! Your username or password was entered incorrectly.' => 'Login incorreto! Seu Login  ou senha foram informados incorretamente.',
      'Please contact your admin' => 'Por favor, contate administrador do sistema!',
      'Logout successful. Thank you for using OTRS!' => 'Encerrado com sucesso. Obrigado por utilizar o OTRS!',
      'Invalid SessionID!' => 'Identifica��o de Sess�o Inv�lida',
      'Feature not active!' => 'Fun��o n�o ativada!',
      'Take this Customer' => 'Atenda este Cliente',
      'Take this User' => 'Atenda este Usu�rio',
      'possible' => 'poss�vel',
      'reject' => 'rejeitar',
      'Facility' => 'Facilidade',
      'Timeover' => 'Tempo esgotado',
      'Pending till' => 'Gaveta pendente',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'N�o trabalhe com o UserID 1(Conta do Sistema)! Crie novos usu�rios!',
      'Dispatching by email To: field.' => 'Despachar pelo PARA:  email',
      'Dispatching by selected Queue.' => 'Despachar pela fila selecionada',
      'No entry found!' => 'N�o h� entradas!',
      'Session has timed out. Please log in again.' => 'Tempo esgotado de sess�o. Entre novamente.',
      'No Permission!' => 'Sem permiss�o!',
      'To: (%s) replaced with database email!' => 'PARA: (%s)  alterado!',
      'Cc: (%s) added database email!' => 'CC: (%s) adicionado! ',
      '(Click here to add)' => '(Clique aqui para adicionar)',
      'Preview' => 'Visualizar',
      'Added User "%s"' => 'Usu�rio Adicionado "%s"',
      'Contract' => 'Contrato',
      'Online Customer: %s' => 'Clientes Online: %s',
      'Online Agent: %s' => 'Atendentes Online: %s',
      'Calendar' => 'Calend�rio',
      'File' => 'Arquivo',
      'Filename' => 'Nome Arquivo',
      'Type' => 'Tipo',
      'Size' => 'Tam',
      'Upload' => '',
      'Directory' => 'Diret�rio',
      'Signed' => 'Assinado',
      'Sign' => 'Assinar',
      'Crypted' => 'Criptografado',
      'Crypt' => 'Criptografar',

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
      'Dec' => 'Dez',

      # Template: AAANavBar
      'Admin-Area' => '�rea-Administra��o',
      'Agent-Area' => '�rea-Atendente',
      'Ticket-Area' => '�rea-Chamado',
      'Logout' => 'Sair',
      'Agent Preferences' => 'Prefer�ncias Atendente',
      'Preferences' => 'Prefer�ncias',
      'Agent Mailbox' => 'Mailbox Atendente',
      'Stats' => 'Estat�sticas',
      'Stats-Area' => '�rea-Estat�sticas',
      'FAQ-Area' => 'Base Conhecimento',
      'FAQ' => 'Base Conhecimento',
      'FAQ-Search' => 'Busca Base Conhecimento',
      'FAQ-Article' => 'Artigos Base Conhecimento',
      'New Article' => 'Novo Artigo',
      'FAQ-State' => 'Estado Base Conhecimento',
      'Admin' => '',
      'A web calendar' => 'Calend�rio',
      'WebMail' => '',
      'A web mail client' => 'Webmail Cliente',
      'FileManager' => 'Adm Arquivo',
      'A web file manager' => 'Adm Arquivo Web',
      'Artefact' => '',
      'Incident' => 'Incidente',
      'Advisory' => 'Aviso',
      'WebWatcher' => '',
      'Customer Users' => 'Clientes',
      'Customer Users <-> Groups' => 'Clientes <-> Grupos',
      'Users <-> Groups' => 'Usu�rios <-> Grupos',
      'Roles' => 'Regras',
      'Roles <-> Users' => 'Regras <-> Usu�rios',
      'Roles <-> Groups' => 'Regras <-> Grupos',
      'Salutations' => 'Tratamentos (Sr./Sra.)',
      'Signatures' => 'Assinaturas',
      'Email Addresses' => 'E-mail',
      'Notifications' => 'Notifica��es',
      'Category Tree' => 'Categorias',
      'Admin Notification' => 'Notifica��o Admin',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Prefer�ncias atualizadas com sucesso!',
      'Mail Management' => 'Gerenciamento Mail',
      'Frontend' => 'Interface',
      'Other Options' => 'Outras Op��es',
      'Change Password' => 'Trocar senha',
      'New password' => 'Nova senha',
      'New password again' => 'Repita sua nova senha',
      'Select your QueueView refresh time.' => 'Selecione o tempo de atualiza��o das Filas',
      'Select your frontend language.' => 'Selecione o Idioma.',
      'Select your frontend Charset.' => 'Selecione o Conjunto de Caracteres.',
      'Select your frontend Theme.' => 'Selecione o Tema.',
      'Select your frontend QueueView.' => 'Selecione a Vis�o da Fila.',
      'Spelling Dictionary' => 'Dicion�rio (L�ngua)',
      'Select your default spelling dictionary.' => 'Escolha o seu corretor ortogr�fico padr�o.',
      'Max. shown Tickets a page in Overview.' => 'Max. Chamados em uma tela.',
      'Can\'t update password, passwords dosn\'t match! Please try it again!' => 'Senha n�o atualizada, por que est�o diferentes! Tente novamente!',
      'Can\'t update password, invalid characters!' => 'Senha n�o atualizada, caracteres inv�lidos!',
      'Can\'t update password, need min. 8 characters!' => 'Senha n�o atualizada, digite no m�nimo 8 caracteres!',
      'Can\'t update password, need 2 lower and 2 upper characters!' => 'Senha n�o atualizada, digite no m�nimo 2 caracteres min�sculos e 2 mai�sculos',
      'Can\'t update password, need min. 1 digit!' => 'Senha n�o atualizada, digite no m�nimo 1 n�mero',
      'Can\'t update password, need min. 2 characters!' => 'Senha n�o atualizada, digite no m�nimo 2 caracteres',
      'Password is needed!' => 'Senha � obrigat�ria!',

      # Template: AAATicket
      'Lock' => 'Bloquear',
      'Unlock' => 'Desbloquear',
      'History' => 'Hist�rico',
      'Zoom' => 'Detalhes',
      'Age' => 'Tempo',
      'Bounce' => 'Devolver',
      'Forward' => 'Encaminhar',
      'From' => 'De',
      'To' => 'Para',
      'Cc' => 'C�pia ',
      'Bcc' => 'C�pia Oculta',
      'Subject' => 'Assunto',
      'Move' => 'Mover',
      'Queue' => 'Fila',
      'Priority' => 'Prioridade',
      'State' => 'Estado',
      'Compose' => 'Comp�r',
      'Pending' => 'Pendentes',
      'Owner' => 'Propriet�rio',
      'Owner Update' => 'Atualiza��o Propriet�rio',
      'Sender' => 'Remetente',
      'Article' => 'Artigo',
      'Ticket' => 'Chamado',
      'Createtime' => 'Hora de cria��o',
      'plain' => 'texto',
      'eMail' => 'Mail',
      'email' => 'mail',
      'Close' => 'Fechar',
      'Action' => 'A��o',
      'Attachment' => 'Anexo',
      'Attachments' => 'Anexos',
      'This message was written in a character set other than your own.' => 'Esta mensagem foi escrita utilizando um conjunto de caracteres diferente do seu.',
      'If it is not displayed correctly,' => 'Se ele n�o for exibido corretamente,',
      'This is a' => 'Este � um',
      'to open it in a new window.' => 'para abri-lo em uma nova janela.',
      'This is a HTML email. Click here to show it.' => 'Este e-mail est� em formato HTML. Clique aqui para exibi-lo.',
      'Free Fields' => 'Campos Livres',
      'Merge' => 'Mesclar',
      'closed successful' => 'fechado com �xito',
      'closed unsuccessful' => 'fechado sem �xito',
      'new' => 'novo',
      'open' => 'aberto',
      'closed' => 'fechado',
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
      'lock' => 'bloqueado',
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
      'Ticket "%s" created!' => 'Chamado "%s" criado!',
      'Ticket Number' => 'N� Chamado',
      'Ticket Object' => 'Objeto Chamado',
      'No such Ticket Number "%s"! Can\'t link it!' => 'N�o existe o Chamado "%s"! N�o foi poss�vel "link�-lo"',
      'Don\'t show closed Tickets' => 'N�o mostrar chamados fechados',
      'Show closed Tickets' => 'Mostrar chamados fechados',
      'Email-Ticket' => 'Chamado-Mail',
      'Create new Email Ticket' => 'Criar novo Mail Chamado',
      'Phone-Ticket' => 'Chamado-Fone',
      'Create new Phone Ticket' => 'Criar novo Fone Chamado',
      'Search Tickets' => 'Pesquisar Chamados',
      'Edit Customer Users' => 'Editar Clientes(Usu�rios)',
      'Bulk-Action' => 'Executar A��o',
      'Bulk Actions on Tickets' => 'Executar A��o nos Chamados',
      'Send Email and create a new Ticket' => 'Enviar mail e criar novo Chamado',
      'Overview of all open Tickets' => 'Vis�o geral de todos Chamados abertos',
      'Locked Tickets' => 'Chamados Bloqueados',
      'Lock it to work on it!' => 'Bloquear para trabalhar com o Chamado!',
      'Unlock to give it back to the queue!' => 'Desbloqueie para envi�-lo devolta � fila!',
      'Shows the ticket history!' => 'Apresentar hist�rico de Chamados',
      'Print this ticket!' => 'Imprimir este Chamado!',
      'Change the ticket priority!' => 'Alterar a prioridade do Chamado!',
      'Change the ticket free fields!' => 'Alterar os campos em branco no Chamado!',
      'Link this ticket to an other objects!' => '"Linkar" este Chamado com outros objetos!',
      'Change the ticket owner!' => 'Mudar propriet�rio do Chamado!',
      'Change the ticket customer!' => 'Mudar o Cliente do Chamado',
      'Add a note to this ticket!' => 'Adicionar um Note neste Chamado!',
      'Merge this ticket!' => 'Agrupar este chamado!',
      'Set this ticket to pending!' => 'Marcar este Chamado como Pendente!',
      'Close this ticket!' => 'Feche este chamado!',
      'Look into a ticket!' => 'Olhe conte�do de um chamado!',
      'Delete this ticket!' => 'Apague este Chamado',
      'Mark as Spam!' => 'Marque como Spam',
      'My Queues' => 'Minhas Filas',
      'Shown Tickets' => 'Mostrar Chamados',
      'New ticket notification' => 'Notifica��o de novo Chamado',
      'Send me a notification if there is a new ticket in "My Queues".' => 'Envie-me uma notifica��o se h� um Novo Chamado em "Minhas Filas".',
      'Follow up notification' => 'Notifica��o de continua��o',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notifique me se um cliente enviar uma continua��o e sou o propriet�rio do Chamado.',
      'Ticket lock timeout notification' => 'Notifica��o de bloqueio por tempo expirado',
      'Send me a notification if a ticket is unlocked by the system.' => 'Notifique me se um Chamado � desbloqueado pelo sistema.',
      'Move notification' => 'Notifica��o de movimentos',
      'Send me a notification if a ticket is moved into one of "My Queues".' => 'Notifique-me se  Chamados foram movimentados para "Minhas Filas"',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => 'Suas filas favoritas. Voc� tamb�m ser� notificado sobre estas filas via e-mail se habilitado.',
      'Custom Queue' => 'Fila Personalizada',
      'QueueView refresh time' => 'Tempo de atualiza��o das Filas',
      'Screen after new ticket' => 'Tela ap�s novo chamado',
      'Select your screen after creating a new ticket.' => 'Selecione a tela seguinte ap�s a cria��o de um novo chamado.',
      'Closed Tickets' => 'Chamados Fechados',
      'Show closed tickets.' => 'Apresentar chamados fechados.',
      'Max. shown Tickets a page in QueueView.' => 'N� m�ximo de chamados apresentados por p�gina.',
      'Responses' => 'Respostas',
      'Responses <-> Queue' => 'Respostas <-> Fila',
      'Auto Responses' => 'Auto respostas',
      'Auto Responses <-> Queue' => 'Auto respostas <-> Fila',
      'Attachments <-> Responses' => 'Anexos <-> respostas',
      'History::Move' => 'Chamado foi movido para a Fila "%s" (%s) vinda da Fila "%s" (%s).',
      'History::NewTicket' => 'Novo Chamado  [%s] foi criado (Q=%s;P=%s;S=%s).',
      'History::FollowUp' => 'FollowUp for [%s]. %s',
      'History::SendAutoReject' => 'Rejei��o autom�tica enviada para "%s".',
      'History::SendAutoReply' => 'Auto Resposta enviada para "%s".',
      'History::SendAutoFollowUp' => 'AutoFollowUp sent to "%s".',
      'History::Forward' => 'Forwarded to "%s".',
      'History::Bounce' => 'Bounced to "%s".',
      'History::SendAnswer' => 'Email enviado para "%s".',
      'History::SendAgentNotification' => '"%s"-notifica��o enviada para "%s".',
      'History::SendCustomerNotification' => 'Notifica��o enviada para "%s".',
      'History::EmailAgent' => 'Email enviado para Cliente.',
      'History::EmailCustomer' => 'Email adicionado. %s',
      'History::PhoneCallAgent' => 'Atendente telefonou para Cliente.',
      'History::PhoneCallCustomer' => 'Cliente telefonou para Service Desk SAP.',
      'History::AddNote' => 'Nota adicionada (%s)',
      'History::Lock' => 'Chamado Bloqueado.',
      'History::Unlock' => 'Chamado Desbloqueado.',
      'History::TimeAccounting' => '%s time unit(s) accounted. Now total %s time unit(s).',
      'History::Remove' => '%s',
      'History::CustomerUpdate' => 'Atualizado: %s',
      'History::PriorityUpdate' => 'Prioridade atualizada por "%s" (%s) to "%s" (%s).',
      'History::OwnerUpdate' => 'Novo propriet�rio � "%s" (ID=%s).',
      'History::LoopProtection' => 'Prote��o de Loop! Auto resposta enviada para "%s".',
      'History::Misc' => '%s',
      'History::SetPendingTime' => 'Atualizado: %s',
      'History::StateUpdate' => 'Old: "%s" Novo: "%s"',
      'History::TicketFreeTextUpdate' => 'Atualizado: %s=%s;%s=%s;',
      'History::WebRequestCustomer' => 'Requisi��o do Cliente via web.',
      'History::TicketLinkAdd' => 'Adicionados links ao Chamado "%s".',
      'History::TicketLinkDelete' => 'Links do Chamado Exclu�dos "%s".',

      # Template: AAAWeekDay
      'Sun' => 'Dom',
      'Mon' => 'Seg',
      'Tue' => 'Ter',
      'Wed' => 'Qua',
      'Thu' => 'Qui',
      'Fri' => 'Sex',
      'Sat' => 'Sab',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Administra��o de Anexos',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Administra��o de Auto-Respostas',
      'Response' => 'Resposta',
      'Auto Response From' => 'Auto-Resposta De',
      'Note' => 'Nota',
      'Useable options' => 'Op��es acess�veis',
      'to get the first 20 character of the subject' => 'para obter os 20 primeiros caracteres do assunto',
      'to get the first 5 lines of the email' => 'para obter as 5 primeiras linhas do email',
      'to get the from line of the email' => 'para obter a linha "From" do email',
      'to get the realname of the sender (if given)' => 'para obter o nome do remetente (se possuir no email)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Op��es de dados do chamado (ex.: &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'A mensagem sendo composta foi fechada. Saindo.',
      'This window must be called from compose window' => 'Esta janela deve ser chamada da janela de composi��o',
      'Customer User Management' => 'Administra��o de Clientes',
      'Search for' => 'Pesquisar por',
      'Result' => 'Resultado',
      'Select Source (for add)' => 'Selecione Origem (para adi��o)',
      'Source' => 'Origem',
      'This values are read only.' => 'Estes valores s�o apenas para leitura.',
      'This values are required.' => 'Estes valores s�o obrigat�rios.',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => 'O usu�rio do cliente ser� necess�rio para que exista um hist�rico do cliente e para login na �rea de clientes.',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => 'Clientes <-> Admin Grupos',
      'Change %s settings' => 'Modificar %s configura��es',
      'Select the user:group permissions.' => 'Selecionar as permiss�es de  usu�rio:grupo.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Se nada estiver selecionado, ent�o n�o h� nenhuma permiss�o neste grupo (os chamados n�o estar�o dispon�veis para o usu�rio).',
      'Permission' => 'Permiss�es',
      'ro' => 'somente leitura',
      'Read only access to the ticket in this group/queue.' => 'Acesso Somente com Leitura de chamados neste grupo/fila',
      'rw' => 'leitura/escrita',
      'Full read and write access to the tickets in this group/queue.' => 'Acesso leitura e escrita  de chamados neste grupo/fila',

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => 'Mensagem enviada para',
      'Recipents' => 'Destinat�rios',
      'Body' => 'Corpo',
      'send' => 'enviar',

      # Template: AdminGenericAgent
      'GenericAgent' => 'Atendente Gen�rico',
      'Job-List' => 'Lista de jobs',
      'Last run' => '�ltima execu��o',
      'Run Now!' => 'Executar Agora',
      'x' => '',
      'Save Job as?' => 'Salvar job como',
      'Is Job Valid?' => 'O job � v�lido?',
      'Is Job Valid' => 'O job � v�lido.',
      'Schedule' => 'Agenda',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Busca por texto completo no Artigo (ex.: "Mar*in" or "Baue*")',
      '(e. g. 10*5155 or 105658*)' => '(ex.: 10*5155 or 105658*)',
      '(e. g. 234321)' => '(ex.: 234321)',
      'Customer User Login' => 'Cliente Login',
      '(e. g. U5150)' => '(ex.: U5150)',
      'Agent' => 'Atendente',
      'TicketFreeText' => 'Texto livre Chamado',
      'Ticket Lock' => 'Chamado bloqueado',
      'Times' => 'Hora',
      'No time settings.' => 'Sem configura��es de hora.',
      'Ticket created' => 'Chamado criado',
      'Ticket created between' => 'Chamado criado entre',
      'New Priority' => 'Nova Prioridade',
      'New Queue' => 'Nova Fila',
      'New State' => 'Novo Estado',
      'New Agent' => 'Novo Atendente',
      'New Owner' => 'Novo Propriet�rio',
      'New Customer' => 'Novo Cliente',
      'New Ticket Lock' => 'Chamado novo bloqueado',
      'CustomerUser' => 'Usu�rio Cliente',
      'Add Note' => 'Adicionar Nota',
      'CMD' => 'Comando',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Este comando ser� executado. ARG[0] ser� o n�mero do chamado. ARG[1] o id do chamado.',
      'Delete tickets' => 'Excluir Chamados',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Alerta! Este Chamado ser� removido da base de dados! Este Chamado esr� perdido permanentemente!',
      'Modules' => 'Modulos',
      'Param 1' => 'Par�metro 1',
      'Param 2' => 'Par�metro 2',
      'Param 3' => 'Par�metro 3',
      'Param 4' => 'Par�matro 4',
      'Param 5' => 'Par�metro 5',
      'Param 6' => 'Par�metro 6',
      'Save' => 'Salvar',

      # Template: AdminGroupForm
      'Group Management' => 'Admin de Grupos',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'O grupo admin � para uso na �rea de administra��o e o grupo stats � para uso na �rea de estat�sticas.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crie novos grupos para manipular as permiss�es de acesso para diferentes grupos de agentes (exemplos: departamento de compras, departamento de suporte, departamento de vendas, etc...).',
      'It\'s useful for ASP solutions.' => 'Isto � �til para solu��es ASP.',

      # Template: AdminLog
      'System Log' => 'Registro do Sistema',
      'Time' => 'Hora',

      # Template: AdminNavigationBar
      'Users' => 'Usu�rios',
      'Groups' => 'Grupos',
      'Misc' => 'Variedades',

      # Template: AdminNotificationForm
      'Notification Management' => 'Admin de Notifica��es',
      'Notification' => 'Notifica��es',
      'Notifications are sent to an agent or a customer.' => 'Notifica��es ser�o enviadas a um Agent ou a um Cliente.',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Op��es de configura��o (ex.: &lt;OTRS_CONFIG_HttpType&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Op��es de dono do chamado (ex.: &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Op��es do usu�rio atual que requisitou esta a��o (ex.: &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Op��es de dados do usu�rio do cliente atual (ex.: &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',

      # Template: AdminPackageManager
      'Package Manager' => 'Admin Pacotes',
      'Uninstall' => 'Desinstalar',
      'Verion' => 'Vers�o',
      'Do you really want to uninstall this package?' => 'Voc� quer realmente desinstalar este pacote?',
      'Install' => 'Instalar',
      'Package' => 'Pacotes',
      'Online Repository' => 'Reposit�rio OnLine',
      'Version' => 'Vers�o',
      'Vendor' => 'Vendedor',
      'Upgrade' => 'Atualizar Vers�o',
      'Local Repository' => 'Reposit�rio Local',
      'Status' => '',
      'Overview' => '',
      'Download' => '',
      'Rebuild' => 'Reconstruir',
      'Reinstall' => 'Reinstalar',

      # Template: AdminPGPForm
      'PGP Management' => 'Gerenciamento do PGP',
      'Identifier' => 'Identificador',
      'Bit' => '',
      'Key' => 'Chave',
      'Fingerprint' => '',
      'Expires' => 'Expira',
      'In this way you can directly edit the keyring configured in SysConfig.' => 'Neste caso, voc� pode editar diretamente o "keyring" configurado no "SysConfig".',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'Gerenciamento de Contas POP3',
      'Host' => 'Servidor',
      'Trusted' => 'Confi�vel',
      'Dispatching' => 'Despachando',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Todos os emails de entrada com uma conta ser� despachado na fila selecionada!',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Se a sua conta for "trusted", os headers "x-otrs" existentes na recep��o (para prioridade, ...) ser�o utilizados! O filtro ser� utilizado mesmo assim.',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => 'Adm Filtros Postmaster',
      'Filtername' => 'Nome Filtro',
      'Match' => 'Busca',
      'Header' => 'Cabe�alho',
      'Value' => 'Valor',
      'Set' => 'Configurar',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Para despachar ou filtrar os e-mails entrantes baseados em "X-Headers". Express�es regularos tamb�m podem ser utilizadas.',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Se utilizar express�es regulares, voc� pode usar o valor encontrado no () como [***] em \'Set\'.',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => 'Fila <-> Adm de Auto respostas',

      # Template: AdminQueueAutoResponseTable

      # Template: AdminQueueForm
      'Queue Management' => 'Admin de Filas',
      'Sub-Queue of' => 'Sub-Fila de',
      'Unlock timeout' => 'Tempo de expira��o de desbloqueio',
      '0 = no unlock' => '0 = sem desbloqueio',
      'Escalation time' => 'Tempo de escala��o',
      '0 = no escalation' => '0 = sem escala��o',
      'Follow up Option' => 'Op��o de continua��o',
      'Ticket lock after a follow up' => 'Bloqueio do chamado ap�s as continua��es',
      'Systemaddress' => 'Endere�o do Sistema',
      'Customer Move Notify' => 'Cliente Notificar Altera��o',
      'Customer State Notify' => 'Cliente Notificar Estado',
      'Customer Owner Notify' => 'Cliente Notificar Propriet�rio',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se um Atendente bloquear um chamado e ele n�o enviar uma resposta dentro deste tempo, o Chamado ser� desbloqueado automaticamente. Ent�o o Chamado ser� vis�vel para todos Atendentes.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Se um Chamado, n�o for respondido dentro do prazo, ser�o apresentados.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Se um chamado est� fechado e um cliente envia uma continua��o, este mesmo chamado ser� bloqueado para o antigo propriet�rio.',
      'Will be the sender address of this queue for email answers.' => 'Ser� o endere�o de email de respostas desta fila.',
      'The salutation for email answers.' => 'A sauda��o para as respostas de emails.',
      'The signature for email answers.' => 'A assinatura para as respostas de emails.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'O OTRS envia uma notifica��o por e-mail ao cliente, caso o chamado seja movido.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'O OTRS envia uma notifica��o por e-mail ao cliente, caso o status do chamado seja alterado.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'O OTRS envia uma notifica��o por e-mail ao cliente, caso o dono do chamado seja alterado.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => 'Respostas <-> Adm Fila',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Resposta',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => 'Respostas <-> Admin Anexos',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Admin Respostas',
      'A response is default text to write faster answer (with default text) to customers.' => 'Uma resposta padr�o foi composta, para respostas r�pidas (com texto padr�o) para clientes.',
      'Don\'t forget to add a new response a queue!' => 'N�o se esque�a de adicionar a nova resposta a uma fila!',
      'Next state' => 'Novo Estado',
      'All Customer variables like defined in config option CustomerUser.' => 'Todas as vari�veis do cliente como foram definidas nas op��es de configura��o de "usu�rio"',
      'The current ticket state is' => 'O Estado do Chamado � ',
      'Your email address is new' => 'Seu  mail � novo',

      # Template: AdminRoleForm
      'Role Management' => 'Regras Admin',
      'Create a role and put groups in it. Then add the role to the users.' => 'Crie uma regra e relacione grupos a ele. Ent�o adicione regras aos usu�rios. ',
      'It\'s useful for a lot of users and groups.' => 'Isto � muito �til para uma grande quantidade de usu�rios e grupos.',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => 'Regras <-> Admin Grupos',
      'move_into' => 'mova_para',
      'Permissions to move tickets into this group/queue.' => 'Permiss�es para movimento de Chamados neste grupo/fila.',
      'create' => 'criar',
      'Permissions to create tickets in this group/queue.' => 'Permiss�es para criar Chamados neste grupo/fila. ',
      'owner' => 'propriet�rio',
      'Permissions to change the ticket owner in this group/queue.' => 'Permiss�es para alterar o Chamado neste grupo/fila.  ',
      'priority' => 'prioridade',
      'Permissions to change the ticket priority in this group/queue.' => 'Permiss�es para alterar o propriet�rio neste grupo/fila.',

      # Template: AdminRoleGroupForm
      'Role' => 'Papel',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => 'Papel <-> Gerenciamento de Usu�rios',
      'Active' => 'Ativo',
      'Select the role:user relations.' => 'Selecione a rela��o entre o papel/usu�rio.',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Gerenciamento de Tratamento (Sr./Sra.)',
      'customer realname' => 'Nome do cliente',
      'for agent firstname' => 'Nome do Atendente',
      'for agent lastname' => 'Sobrenome do Atendente',
      'for agent user id' => 'Id do Atendente',
      'for agent login' => 'Login do Atendente',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Caixa de Sele��o',
      'SQL' => '',
      'Limit' => 'Limite',
      'Select Box Result' => 'Selecione a Caixa de Resultado',

      # Template: AdminSession
      'Session Management' => 'Gerenciamento de Sess�es',
      'Sessions' => 'Sess�es',
      'Uniq' => '',
      'kill all sessions' => 'Finalizar todas as sess�es',
      'Session' => 'Sess�o',
      'kill session' => 'Finalizar sess�o',

      # Template: AdminSignatureForm
      'Signature Management' => 'Gerenciamento de Assinaturas',

      # Template: AdminSMIMEForm
      'SMIME Management' => 'Gerenciamento SMIME',
      'Add Certificate' => 'Adicionar Certificado',
      'Add Private Key' => 'Adicionar Chave Privada',
      'Secret' => 'Senha',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => 'Neste caso, voc� pode editar diretamente a certifica��o e chaves privadas no sistema de arquivos.',

      # Template: AdminStateForm
      'System State Management' => 'Gerenciamento de Estados do Sistema',
      'State Type' => 'Tipo de Estado',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Tenha cuidado se voc� tamb�m atualizou os estados padr�o no Kernel/Config.pm!',
      'See also' => 'Veja tamb�m',

      # Template: AdminSysConfig
      'SysConfig' => 'Configura��o do Sistema',
      'Group selection' => 'Sele��o de Grupo',
      'Show' => 'Visualizar',
      'Download Settings' => 'Baixar Configura��es',
      'Download all system config changes.' => 'Baixar todas as configura��es do sistema que foram alteradas.',
      'Load Settings' => 'Carregar Configura��es',
      'Subgroup' => 'Subgrupo',
      'Elements' => 'Elementos',

      # Template: AdminSysConfigEdit
      'Config Options' => 'Op��es de Configura��o',
      'Default' => 'Padr�o',
      'Content' => 'Conte�do',
      'New' => 'Novo',
      'New Group' => 'Novo Grupo',
      'Group Ro' => 'Grupo Somente Leitura',
      'New Group Ro' => 'Novo Grupo Somente Leitura',
      'NavBarName' => 'Nome da Barra de Navega��o',
      'Image' => 'Imagem',
      'Prio' => 'Prioridade',
      'Block' => 'Bloquear',
      'NavBar' => 'Barra de Navega��o',
      'AccessKey' => 'Chave de Acesso',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Gerenciamento dos Endere�os de E-mail do Sistema',
      'Email' => 'E-mail',
      'Realname' => 'Nome',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todos os emails entrantes com este Email(To:) ser�o despachados na fila selecionada!',

      # Template: AdminUserForm
      'User Management' => 'Gerenciamento de Usu�rios',
      'Firstname' => 'Nome',
      'Lastname' => 'Sobrenome',
      'User will be needed to handle tickets.' => 'Ser� necess�rio um usu�rio para manipular os chamados.',
      'Don\'t forget to add a new user to groups and/or roles!' => 'N�o se esque�a de adicionar o novo usu�rio em grupos e/ou pap�is!',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => 'Usu�rios <-> Gerenciamento de Grupos',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'Cat�logo de Endere�os',
      'Return to the compose screen' => 'Retornar para a tela de composi��o',
      'Discard all changes and return to the compose screen' => 'Descartar todas as modifica��es e retornar para a tela de composi��o',

      # Template: AgentCalendarSmall

      # Template: AgentCalendarSmallIcon

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => 'Informa��o',

      # Template: AgentLinkObject
      'Link Object' => '"Linkar" Objeto',
      'Select' => 'Selecionar',
      'Results' => 'Resultados',
      'Total hits' => 'Total de acertos',
      'Site' => '',
      'Detail' => 'Detalhe',

      # Template: AgentLookup
      'Lookup' => 'Buscar',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => 'Chamado selecionado para execu��o de a��o!',
      'You need min. one selected Ticket!' => 'Voc� deve selecionar ao menos  1(um) chamado!',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Checar a Ortografica',
      'spelling error(s)' => 'erro(s) ortogr�ficos',
      'or' => 'ou',
      'Apply these changes' => 'Aplicar estas modifica��es',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Uma mensagem deve possuir um To: destinat�rio!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Voc� precisa de um endere�o de email (exemplo: cliente@exemplo.com.br) no To:!',
      'Bounce ticket' => 'Devolver chamado',
      'Bounce to' => 'Devolver para',
      'Next ticket state' => 'Pr�ximo estado do chamado',
      'Inform sender' => 'Informe o remetente',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Seu email com o n�mero de chamado "<OTRS_TICKET>" foi devolvido para "<OTRS_BOUNCE_TO>". Contate este endere�o para mais informa��es.',
      'Send mail!' => 'Enviar email!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Uma mensagem deve conter um assunto!',
      'Ticket Bulk Action' => 'Executar A��o no Chamado',
      'Spell Check' => 'Checar Ortografia',
      'Note type' => 'Tipo de nota',
      'Unlock Tickets' => 'Desbloquear Chamados',

      # Template: AgentTicketClose
      'A message should have a body!' => 'A mensagem deve conter um texto!',
      'You need to account time!' => 'Voc� deve contabilizar o tempo!',
      'Close ticket' => 'Fechar o chamado',
      'Note Text' => 'Nota',
      'Close type' => 'Tipo de fechamento',
      'Time units' => 'Unidades de tempo',
      ' (work units)' => ' (unidades de trabalho)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'A mensagem necessita ser verificada ortograficamente!',
      'Compose answer for ticket' => 'Comp�r uma resposta para o chamado',
      'Attach' => 'Anexo',
      'Pending Date' => 'Data de Pend�ncia',
      'for pending* states' => 'em estado pendente*',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Modificar o cliente do chamado',
      'Set customer user and customer id of a ticket' => 'Configurar usu�rio e id do cliente no chamado',
      'Customer User' => 'Cliente',
      'Search Customer' => 'Busca do cliente',
      'Customer Data' => 'Dados do Cliente',
      'Customer history' => 'Hist�rico do cliente',
      'All customer tickets.' => 'Todos os chamados do cliente',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Continua��o',

      # Template: AgentTicketEmail
      'Compose Email' => 'Compor Email',
      'new ticket' => 'Novo Chamado',
      'Clear To' => 'Limpar',
      'All Agents' => 'Todos os Atendentes',
      'Termin1' => '',

      # Template: AgentTicketForward
      'Article type' => 'Tipo de artigo',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Alterar os campos em branco no chamado',

      # Template: AgentTicketHistory
      'History of' => 'Hist�rico de',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'Chamado bloqueado!',
      'Ticket unlock!' => 'Chamado desbloqueado!',

      # Template: AgentTicketMailbox
      'Mailbox' => 'Caixa de Entrada',
      'Tickets' => 'Chamado',
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
      'You need to use a ticket number!' => 'Voc� deve utilizar um n�mero de chamado!',
      'Ticket Merge' => 'Unir Chamado',
      'Merge to' => 'Unir com',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'A sua mensagem com o chamado n�mero "<OTRS_TICKET>" foi unido com o chamado n�mero "<OTRS_MERGE_TO_TICKET>".',

      # Template: AgentTicketMove
      'Queue ID' => 'ID da Fila',
      'Move Ticket' => 'Mover Chamado',
      'Previous Owner' => 'Dono Anterior',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Adicionar nota ao chamado',
      'Inform Agent' => 'Informar Atendente',
      'Optional' => 'Opcional',
      'Inform involved Agents' => 'Informar os Atendentes Envolvidos',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Modificar o propriet�rio do chamado',
      'Message for new Owner' => 'Mensagem para um novo Propriet�rio',

      # Template: AgentTicketPending
      'Set Pending' => 'Marcar Pendente',
      'Pending type' => 'Tipo de pend�ncia',
      'Pending date' => 'Data da pend�ncia',

      # Template: AgentTicketPhone
      'Phone call' => 'Chamada telef�nica',

      # Template: AgentTicketPhoneNew
      'Clear From' => 'Limpar',

      # Template: AgentTicketPlain
      'Plain' => 'Texto',
      'TicketID' => 'Id.do Chamado',
      'ArticleID' => 'Id.do artigo',

      # Template: AgentTicketPrint
      'Ticket-Info' => 'Informa��o do Chamado',
      'Accounted time' => 'Tempo contabilizado',
      'Escalation in' => 'Escalado em',
      'Linked-Object' => 'Objeto "Linkado"',
      'Parent-Object' => 'Objeto Pai',
      'Child-Object' => 'Objeto Filho',
      'by' => 'por',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Modificar a prioridade do chamado',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Chamados mostrados',
      'Page' => 'P�gina',
      'Tickets available' => 'Chamados dispon�veis',
      'All tickets' => 'Todos chamados',
      'Queues' => 'Filas',
      'Ticket escalation!' => 'Escala��o de chamados!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'Seu pr�prio Chamado',
      'Compose Follow up' => 'Compor Continua��o',
      'Compose Answer' => 'Comp�r resposta',
      'Contact customer' => 'Contatar cliente',
      'Change queue' => 'Modificar Fila',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => 'Busca de Chamado',
      'Profile' => 'Perfil',
      'Search-Template' => 'Modelo de Busca',
      'Created in Queue' => 'Criado na Fila',
      'Result Form' => 'Resultado',
      'Save Search-Profile as Template?' => 'Salvar o Perfil de Busca como Modelo?',
      'Yes, save it with name' => 'Sim, salve-o com o nome',
      'Customer history search' => 'Busca no Hist�rico do cliente',
      'Customer history search (e. g. "ID342425").' => 'Busca no Hist�rico do cliente (exemplo: "ID342425")',
      'No * possible!' => 'N�o s�o poss�veis *!',

      # Template: AgentTicketSearchResult
      'Search Result' => 'Resultado da Busca',
      'Change search options' => 'Alterar as o��es de busca',

      # Template: AgentTicketSearchResultPrint
      '"}' => '',

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'ordem crescente',
      'U' => 'C',
      'sort downward' => 'ordem decrescente',
      'D' => '',

      # Template: AgentTicketStatusView
      'Ticket Status View' => 'Visualiza��o do Status do Chamado',
      'Open Tickets' => 'Chamados Abertos',

      # Template: AgentTicketZoom
      'Split' => 'Dividir',

      # Template: AgentTicketZoomStatus
      'Locked' => 'Bloqueado',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerCalendarSmallIcon

      # Template: CustomerError
      'Traceback' => '',

      # Template: CustomerFAQ
      'Print' => 'Imprimir',
      'Keywords' => 'Palavras-Chave',
      'Symptom' => 'Sintoma',
      'Problem' => 'Problema',
      'Solution' => 'Solu��o',
      'Modified' => 'Modificado',
      'Last update' => '�ltima Atualiza��o',
      'FAQ System History' => 'Hist�rico de FAQs',
      'modified' => 'modificado',
      'FAQ Search' => 'Busca nas FAQs',
      'Fulltext' => 'Texto Completo',
      'Keyword' => 'Palavra-Chave',
      'FAQ Search Result' => 'Resultado de Busca nas FAQs',
      'FAQ Overview' => '',

      # Template: CustomerFooter
      'Powered by' => 'Movido �',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin
      'Login' => 'Login',
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
      'Comment (internal)' => 'Coment�rio (interno)',
      'A article should have a title!' => 'O Artigo dever� ter um T�tulo!',
      'New FAQ Article' => 'Novo Artigo Base de Conhecimento',
      'Do you really want to delete this Object?' => 'Voc� quer realmente remover este objeto?',
      'System History' => 'Hist�rico do Sistema',

      # Template: FAQCategoryForm
      'Name is required!' => 'O Nome � requerido',
      'FAQ Category' => 'Categoria da FAQ',

      # Template: FAQLanguageForm
      'FAQ Language' => 'Idioma da FAQ',

      # Template: Footer
      'QueueView' => 'Fila',
      'PhoneView' => 'Chamada',
      'Top of Page' => 'Topo da P�gina',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'In�cio',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Instalador Web',
      'accept license' => 'aceitar licen�a',
      'don\'t accept license' => 'n�o acentiar a licen�a',
      'Admin-User' => 'Usu�rio do Administrador',
      'Admin-Password' => 'Senha do Administrador',
      'your MySQL DB should have a root password! Default is empty!' => 'O seu MySQL deve ter uma senha de "root"! O padr�o � em branco!',
      'Database-User' => 'Usu�rio da Base',
      'default \'hot\'' => 'padr�o \'hot\'',
      'DB connect host' => 'Servidor da Base',
      'Database' => 'Base de Dados',
      'Create' => 'Criar',
      'false' => 'falso',
      'SystemID' => 'ID do sistema',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(A identidade do sistema. Cada n�mero de chamado e cada id. da sess�o http, inicia com este n�mero)',
      'System FQDN' => 'FQDN do sistema',
      '(Full qualified domain name of your system)' => '(Nome completo do dom�nio de seu sistema)',
      'AdminEmail' => 'Email do Administrador',
      '(Email of the system admin)' => '(Email do administrador do sistema)',
      'Organization' => 'Organiza��o',
      'Log' => '',
      'LogModule' => 'LOG Modulo',
      '(Used log backend)' => '(Utilizado LOG como base)',
      'Logfile' => 'Arquivo de registro',
      '(Logfile just needed for File-LogModule!)' => '(Arquivo de registro para File-LogModule)',
      'Webfrontend' => 'Interface Web',

      'Default Charset' => 'Conjunto de Caracteres Padr�o',
      'Use utf-8 it your database supports it!' => 'A sua Base de dados suporta utf-8!',
      'Default Language' => 'Idioma Padr�o',
      '(Used default language)' => '(Idioma padr�o utilizado)',
      'CheckMXRecord' => 'Averiguar MX',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => 'Checar os registros do MX de endere�os de e-mail utilizados na composi��o de uma resposta. N�o utilizar checagem de registros do MX se o seu servidor OTRS estiver sib um acesso discado $!',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Para poder utilizar o OTRS voc� deve',
      'Restart your webserver' => 'Reiniciar o Webserver',
      'After doing so your OTRS is up and running.' => 'Ap�s isto, ent�o seu OTRS est� funcionando.',
      'Start page' => 'Iniciar p�gina',
      'Have a lot of fun!' => 'Divirta-se!',
      'Your OTRS Team' => 'Equipe Service Desk SAP',

      # Template: Login

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Sem Permiss�o',

      # Template: Notify
      'Important' => 'Importante',

      # Template: PrintFooter
      'URL' => '',

      # Template: PrintHeader
      'printed by' => 'impresso por',

      # Template: Redirect

      # Template: SystemStats
      'Format' => 'Formato',

      # Template: Test
      'OTRS Test Page' => 'P�gina de Teste Service Desk SAP',
      'Counter' => 'Contador',

      # Template: Warning
      # Misc
      'Change roles <-> groups settings' => 'Alterar configura��es Regras <-> Grupos',
      'Ticket Number Generator' => 'Gerador de N�meros de Chamados',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificador Chamado. Algumas pessoas gostam de usar por exemplo \'Chamado#\, \'Chamado#\' ou \'MeuChamado#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Neste caso, voc� pode editar diretamente a "keyring" configurada no Kernel/Config.pm.',
      'Close!' => 'Fechar!',
      'Don\'t forget to add a new user to groups!' => 'N�o esque�a de adicionar um novo usu�rio nos grupos!',
      'License' => 'Licen�a',
      'System Settings' => 'Configura��es Sistema',
      'Finished' => 'Finalizado',
      'Locked tickets' => 'Chamados Bloqueados',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Op��es de dados do Chamado (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
      'Change user <-> group settings' => 'Modificar configura��es de usu�rios <-> grupos',
      'next step' => 'pr�ximo passo',
      'Admin-Email' => 'Email Admin.',
      'Options ' => 'Op��es',
      '(Used ticket number format)' => '(Formato de Chamado utilizado)',
      'Package not correctly deployed, you need to deploy it again!' => 'O pacote n�o foi instalado corretamente, faz-se necess�ria a reinstala��o!',
      'Customer called' => 'O Cliente Telefonou',
      'Phone' => 'Telefone',
      'Office' => 'Escrit�rio',
      'CompanyTickets' => 'Chamados da Empresa',
      'MyTickets' => 'Meus Chamados',
      'New Ticket' => 'Novo Chamado',
      'Create new Ticket' => 'Criar novo Chamado',
      'installed' => 'instalado',
      'uninstalled' => 'desinstalado',
    };
    # $$STOP$$
}
# --
1;
