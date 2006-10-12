# --
# Kernel/Language/pt.pm - provides pt language translation
# Copyright (C) 2004 CAT <filipehenriques at ip.pt>
# --
# $Id: pt.pm,v 1.33 2006-10-12 09:23:30 mh Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::pt;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.33 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Thu Oct  5 06:05:04 2006

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%Y-%M-%D %T';
    $Self->{DateFormatLong} = '%A, %D de %B de %Y, %T';
    $Self->{DateFormatShort} = '';
    $Self->{DateInputFormat} = '%Y-%M-%D';
    $Self->{DateInputFormatLong} = '%Y-%M-%D - %T';

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
      'Reset' => 'Limpar',
      'last' => 'nos �ltimos',
      'before' => 'h� mais de',
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
      'month(s)' => 'mes(ses)',
      'week' => 'semana',
      'week(s)' => 'semana(s)',
      'year' => 'ano',
      'years' => 'anos',
      'year(s)' => 'ano(s)',
      'second(s)' => '',
      'seconds' => '',
      'second' => '',
      'wrote' => 'escreveu',
      'Message' => 'Mensagem',
      'Error' => 'Erro',
      'Bug Report' => 'Relat�rio de Erros',
      'Attention' => 'Aten��o',
      'Warning' => 'Aviso',
      'Module' => 'M�dulo',
      'Modulefile' => 'Ficheiro de M�dulo',
      'Subfunction' => 'Subfun��o',
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
      'Mrs.' => 'Sr.�',
      'Next' => 'Pr�ximo',
      'Back' => 'Voltar',
      'Next...' => 'Pr�ximo...',
      '...Back' => '...Voltar',
      '-none-' => '-nenhum(a)-',
      'none' => 'nenhum(a)',
      'none!' => 'nenhum(a)!',
      'none - answered' => 'nenhum - respondido',
      'please do not edit!' => 'por favor n�o editar!',
      'AddLink' => 'Adicionar Liga��o',
      'Link' => 'Ligar',
      'Linked' => 'Ligado',
      'Link (Normal)' => 'Ligar (Normal)',
      'Link (Parent)' => 'Ligar (Ascendente)',
      'Link (Child)' => 'Ligar (Descendente)',
      'Normal' => '',
      'Parent' => 'Ascendente',
      'Child' => 'Descendente',
      'Hit' => 'Acerto',
      'Hits' => 'Acertos',
      'Text' => 'Texto',
      'Lite' => 'Leve',
      'User' => 'Utilizador',
      'Username' => 'Nome de utilizador',
      'Language' => 'Idioma',
      'Languages' => 'Idiomas',
      'Password' => 'Palavra-passe',
      'Salutation' => 'Sauda��o',
      'Signature' => 'Assinatura',
      'Customer' => 'Cliente',
      'CustomerID' => 'ID de Cliente',
      'CustomerIDs' => 'ID de Cliente',
      'customer' => 'cliente',
      'agent' => 'agente',
      'system' => 'sistema',
      'Customer Info' => 'Informa��o de Cliente',
      'go!' => 'ir!',
      'go' => 'ir',
      'All' => 'Todos',
      'all' => 'todos',
      'Sorry' => 'Desculpe',
      'update!' => 'actualizar!',
      'update' => 'actualizar',
      'Update' => 'Actualizar',
      'submit!' => 'submeter!',
      'submit' => 'Submeter',
      'Submit' => 'Submeter',
      'change!' => 'alterar!',
      'Change' => 'Alterar',
      'change' => 'alterar',
      'click here' => 'clique aqui',
      'Comment' => 'Coment�rio',
      'Valid' => 'V�lido',
      'Invalid Option!' => 'Op��o Inv�lida!',
      'Invalid time!' => 'Hora inv�lida!',
      'Invalid date!' => 'Data inv�lida!',
      'Name' => 'Nome',
      'Group' => 'Grupo',
      'Description' => 'Descri��o',
      'description' => 'descri��o',
      'Theme' => 'Tema',
      'Created' => 'Criado',
      'Created by' => 'Criado por',
      'Changed' => 'Modificado',
      'Changed by' => 'Modificado por',
      'Search' => 'Procurar',
      'and' => 'e',
      'between' => 'entre',
      'Fulltext Search' => 'Procura Exaustiva no Texto',
      'Data' => '',
      'Options' => 'Op��es',
      'Title' => 'T�tulo',
      'Item' => '',
      'Delete' => 'Eliminar',
      'Edit' => 'Editar',
      'View' => 'Ver',
      'Number' => 'N�mero',
      'System' => 'Sistema',
      'Contact' => 'Contacto',
      'Contacts' => 'Contactos',
      'Export' => 'Exportar',
      'Up' => 'Subir',
      'Down' => 'Descer',
      'Add' => 'Adicionar',
      'Category' => 'Categoria',
      'Viewer' => 'Visualizador',
      'New message' => 'Nova mensagem',
      'New message!' => 'Nova mensagem!',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Por favor, responda a este(s) bilhete(s) para regressar � visualiza��o de filas!',
      'You got new message!' => 'Tem uma mensagem nova!',
      'You have %s new message(s)!' => 'Tem %s mensagem(s) nova(s)!',
      'You have %s reminder ticket(s)!' => 'Tem %s lembrete(s)!',
      'The recommended charset for your language is %s!' => 'O c�digo recomendado para o seu idioma � %s!',
      'Passwords doesn\'t match! Please try it again!' => 'As palavras-passe n�o correspondem! Tente de novo!',
      'Password is already in use! Please use an other password!' => 'A palavra-passe est� j� em uso! Por favor use outra!',
      'Password is already used! Please use an other password!' => 'A palavra-passe j� foi usada! Por favor use outra!',
      'You need to activate %s first to use it!' => 'Tem de activar %s antes de o usar!',
      'No suggestions' => 'Sem sugest�es',
      'Word' => 'Palavra',
      'Ignore' => 'Ignorar',
      'replace with' => 'substituir por',
      'Welcome to OTRS' => 'Bem-vindo ao OTRS',
      'There is no account with that login name.' => 'N�o existe nenhuma conta com esse nome de utilizador',
      'Login failed! Your username or password was entered incorrectly.' => 'Entrada falhou! Ou o nome de utilizador ou a palavra-passe foram introduzidos incorrectamente.',
      'Please contact your admin' => 'Por favor contactar o seu administrador de sistemas',
      'Logout successful. Thank you for using OTRS!' => 'Saiu com sucesso. Obrigado por utilizar o Sistema de Ajuda do ISCTE!',
      'Invalid SessionID!' => 'ID de Sess�o Inv�lido',
      'Feature not active!' => 'Caracter�stica n�o activa!',
      'License' => 'Licen�a',
      'Take this Customer' => 'Fique com este Cliente',
      'Take this User' => 'Fique com este Utilizador',
      'possible' => 'poss�vel',
      'reject' => 'rejeitar',
      'reverse' => '',
      'Facility' => 'Instala��o',
      'Timeover' => 'Tempo a mais',
      'Pending till' => 'Pendente at�',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'N�o trabalhe com o UserID 1 (Conta de sistema)! Crie novos utilizadores!',
      'Dispatching by email To: field.' => 'Despachado atrav�s do campo Para:',
      'Dispatching by selected Queue.' => 'Despachado pela Fila escolhida',
      'No entry found!' => 'N�o se encontrou nada!',
      'Session has timed out. Please log in again.' => 'A sess�o expirou. Por favor autentique-se novamente',
      'No Permission!' => 'Sem Permiss�o!',
      'To: (%s) replaced with database email!' => 'Para: (%s) substitu�do pelo endere�o na base de dados!',
      'Cc: (%s) added database email!' => 'Cc: (%s) acrescentado endere�o na base de dados!',
      '(Click here to add)' => '(Clique aqui para adicionar)',
      'Preview' => 'Prever',
      'Package not correctly deployed! You should reinstall the Package again!' => '',
      'Added User "%s"' => 'Acrescentado Utilizador "%s"',
      'Contract' => 'Contrato',
      'Online Customer: %s' => 'Cliente em-linha: %s',
      'Online Agent: %s' => 'Agente em-linha: %s',
      'Calendar' => 'Calend�rio',
      'File' => 'Ficheiro',
      'Filename' => 'Nome de ficheiro',
      'Type' => 'Tipo',
      'Size' => 'Tamanho',
      'Upload' => 'Carregar',
      'Directory' => 'Pasta',
      'Signed' => 'Assinado',
      'Sign' => 'Assinar',
      'Crypted' => 'Cifrado',
      'Crypt' => 'Cifrar',
      'Office' => 'Gabinete',
      'Phone' => 'Telefone',
      'Fax' => '',
      'Mobile' => '',
      'Zip' => '',
      'City' => '',
      'Country' => '',
      'installed' => 'instalado',
      'uninstalled' => 'desinstalado',
      'printed at' => '',

      # Template: AAAMonth
      'Jan' => 'Janeiro',
      'Feb' => 'Feveveiro',
      'Mar' => 'Mar�o',
      'Apr' => 'Abril',
      'May' => 'Maio',
      'Jun' => 'Junho',
      'Jul' => 'Julho',
      'Aug' => 'Agosto',
      'Sep' => 'Setembro',
      'Oct' => 'Outubro',
      'Nov' => 'Novembro',
      'Dec' => 'Dezembro',
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
      'Admin-Area' => '�rea de Administra��o',
      'Agent-Area' => '�rea de Agente',
      'Ticket-Area' => '�rea de Bilhetes',
      'Logout' => 'Sair',
      'Agent Preferences' => 'Prefer�ncias de Agente',
      'Preferences' => 'Prefer�ncias',
      'Agent Mailbox' => 'Caixa do Correio do Agente',
      'Stats' => 'Estat�sticas',
      'Stats-Area' => '�rea de Estat�sticas',
      'New Article' => 'Novo Artigo',
      'Admin' => 'Administra��o',
      'A web calendar' => 'Um calend�rio na Web',
      'WebMail' => 'Correio electr�nico na Web',
      'A web mail client' => 'Um cliente de correio electr�nico na Web',
      'FileManager' => 'Gestor de Ficheiros',
      'A web file manager' => 'Um gestor de ficheiros na Web',
      'Artefact' => 'Artefacto',
      'Incident' => 'Incidente',
      'Advisory' => 'Recomenda��o',
      'WebWatcher' => 'Observador da Web',
      'Customer Users' => 'Utilizadores Clientes',
      'Customer Users <-> Groups' => 'Utilizadores Clientes <-> Grupos',
      'Users <-> Groups' => 'Utilizadores <-> Grupos',
      'Roles' => 'Papeis',
      'Roles <-> Users' => 'Papeis <-> Utilizadores',
      'Roles <-> Groups' => 'Papeis <-> Grupos',
      'Salutations' => 'Sauda��es',
      'Signatures' => 'Assinaturas',
      'Email Addresses' => 'Endere�os de Correio Electr�nico',
      'Notifications' => 'Notifica��es',
      'Category Tree' => '�rvore de Categorias',
      'Admin Notification' => 'Notifica��es de Administra��o',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Prefer�ncias actualizadas com sucesso!',
      'Mail Management' => 'Gest�o de Correio Electr�nico',
      'Frontend' => 'Interface',
      'Other Options' => 'Outras Op��es',
      'Change Password' => 'Mudar a Palavra-passe',
      'New password' => 'Nova palavra-passe',
      'New password again' => 'De novo',
      'Select your QueueView refresh time.' => 'Selecione o tempo de refrescamento da Visualiza��o de Filas.',
      'Select your frontend language.' => 'Selecione o idioma da interface.',
      'Select your frontend Charset.' => 'Selecione a codifica��o da interface.',
      'Select your frontend Theme.' => 'Selecione o tema da sua interface.',
      'Select your frontend QueueView.' => 'Selecione a Visualiza��o de Filas da Interface.',
      'Spelling Dictionary' => 'Dicion�rio Ortogr�fico',
      'Select your default spelling dictionary.' => 'Seleccione o dicion�rio ortogr�fico por omiss�o.',
      'Max. shown Tickets a page in Overview.' => 'N�mero m�ximo de bilhetes por p�gina em Vis�o Geral.',
      'Can\'t update password, passwords doesn\'t match! Please try it again!' => 'Imposs�vel actualizar a palavra-passe: as palavras-passe n�o correspondem! Tente de novo!',
      'Can\'t update password, invalid characters!' => 'Imposs�vel actualizar palavra-passe: caracteres inv�lidos!',
      'Can\'t update password, need min. 8 characters!' => 'Imposs�vel actualizar palavra-passe: necess�rios pelo menos oito caracteres!',
      'Can\'t update password, need 2 lower and 2 upper characters!' => 'Imposs�vel actualizar palavra-passe: pelo menos duas min�sculas e duas mai�sculas!',
      'Can\'t update password, need min. 1 digit!' => 'Imposs�vel actualizar palavra-passe: pelo menos um d�gito!',
      'Can\'t update password, need min. 2 characters!' => 'Imposs�vel actualizar palavra-passe: pelo menos um caractere!',
      'Password is needed!' => 'Palavra-passe indispens�vel!',

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
      'History' => 'Hist�rico',
      'Zoom' => 'Pormenores',
      'Age' => 'Idade',
      'Bounce' => 'Devolver',
      'Forward' => 'Encaminhar',
      'From' => 'De',
      'To' => 'Para',
      'Cc' => '',
      'Bcc' => '',
      'Subject' => 'Assunto',
      'Move' => 'Mover',
      'Queue' => 'Fila',
      'Priority' => 'Prioridade',
      'State' => 'Estado',
      'Compose' => 'Comp�r',
      'Pending' => 'Pend�ncias',
      'Owner' => 'Propriet�rio',
      'Owner Update' => 'Actualizar Propriet�rio',
      'Responsible' => '',
      'Responsible Update' => '',
      'Sender' => 'Remetente',
      'Article' => 'Artigo',
      'Ticket' => 'Bilhete',
      'Createtime' => 'Hora de cria��o',
      'plain' => 'verbatim',
      'Email' => 'Correio Electr�nico',
      'email' => 'correio electr�nico',
      'Close' => 'Fechar',
      'Action' => 'Ac��o',
      'Attachment' => 'Anexo',
      'Attachments' => 'Anexos',
      'This message was written in a character set other than your own.' => 'Esta mensagem foi escrita usando uma codifica��o diferente da sua.',
      'If it is not displayed correctly,' => 'Se n�o for exibida correctamente,',
      'This is a' => 'Este � um',
      'to open it in a new window.' => 'para a abrir em nova janela.',
      'This is a HTML email. Click here to show it.' => 'Esta � uma mensagem HTML. Clicar aqui para a mostrar.',
      'Free Fields' => 'Campos Livres',
      'Merge' => 'Juntar',
      'closed successful' => 'fechado com sucesso',
      'closed unsuccessful' => 'fechado sem sucesso',
      'new' => 'novo',
      'open' => 'aberto',
      'closed' => 'fechado',
      'removed' => 'removido',
      'pending reminder' => 'pendente com lembrete',
      'pending auto close+' => 'pendente com fecho autom�tico positivo',
      'pending auto close-' => 'pendente com fecho autom�tico negativo',
      'email-external' => 'mensagem de correio electr�nico externa',
      'email-internal' => 'mensagem de correio electr�nico externa',
      'note-external' => 'nota externa',
      'note-internal' => 'nota interna',
      'note-report' => 'relat�rio de nota',
      'phone' => 'telefone',
      'sms' => '',
      'webrequest' => 'pedido via Web',
      'lock' => 'bloquear',
      'unlock' => 'desbloquear',
      'very low' => 'muito baixa',
      'low' => 'baixa',
      'normal' => '',
      'high' => 'alta',
      'very high' => 'muito alta',
      '1 very low' => '1 muito baixa',
      '2 low' => '2 baixa',
      '3 normal' => '',
      '4 high' => '4 alta',
      '5 very high' => '5 muito alta',
      'Ticket "%s" created!' => 'Bilhete "%s" criado!',
      'Ticket Number' => 'N�mero do Bilhete',
      'Ticket Object' => 'Objecto Bilhete',
      'No such Ticket Number "%s"! Can\'t link it!' => 'N�o existe N�mero de Bilhete "%s"! N�o posso ligar a ele!',
      'Don\'t show closed Tickets' => 'N�o mostrar bilhetes fechados',
      'Show closed Tickets' => 'Mostrar bilhetes fechados',
      'Email-Ticket' => 'Mensagem',
      'Create new Email Ticket' => 'Criar novo Bilhete via Correio Electr�nico',
      'Phone-Ticket' => 'Telefonema',
      'Create new Phone Ticket' => 'Criar novo Bilhete via Telefone',
      'Search Tickets' => 'Procurar Bilhetes',
      'Edit Customer Users' => 'Editar Utilizadores Clientes',
      'Bulk-Action' => 'Em Lote',
      'Bulk Actions on Tickets' => 'Ac��es em Lote sobre Bilhetes',
      'Send Email and create a new Ticket' => 'Enviar mensagem e criar novo Bilhete',
      'Overview of all open Tickets' => 'Vis�o geral de todos os Bilhetes abertos',
      'Locked Tickets' => 'Bilhetes Bloqueados',
      'Lock it to work on it!' => 'Bloqueie-o para trabalhar nele!',
      'Unlock to give it back to the queue!' => 'Desbloqueie-o para o devolver � fila!',
      'Shows the ticket history!' => 'Mostra o hist�rico do bilhete!',
      'Print this ticket!' => 'Imprime o bilhete!',
      'Change the ticket priority!' => 'Muda a prioridade do bilhete!',
      'Change the ticket free fields!' => 'Alterar os campos livres do bilhete!',
      'Link this ticket to an other objects!' => 'Liga este bilhete a outros objectos!',
      'Change the ticket owner!' => 'Muda o propriet�rio do bilhete!',
      'Change the ticket customer!' => 'Muda o cliente do bilhete!',
      'Add a note to this ticket!' => 'Acrescentar uma nota ao bilhete!',
      'Merge this ticket!' => 'Juntar este bilhete a outro!',
      'Set this ticket to pending!' => 'Tornar o bilhete pendente!',
      'Close this ticket!' => 'Fechar este bilhete!',
      'Look into a ticket!' => 'Ver um bilhete!',
      'Delete this ticket!' => 'Remover este bilhete!',
      'Mark as Spam!' => 'Marcar como Spam!',
      'My Queues' => 'As Minhas Filas',
      'Shown Tickets' => 'Mostrar Bilhetes',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'A sua mensagem com o n�mero de bilhete "<OTRS_TICKET>" foi junta a "<OTRS_MERGE_TO_TICKET>".',
      'New ticket notification' => 'Notifica��o de novo bilhete',
      'Send me a notification if there is a new ticket in "My Queues".' => 'Envie-me uma notifica��o se houver um novo bilhete nas "Minhas Filas".',
      'Follow up notification' => 'Notifica��o de seguimento',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notifique-me se um cliente enviar um seguimento e eu for propriet�rio deste bilhete.',
      'Ticket lock timeout notification' => 'Notifica��o por expira��o do tempo de bloqueio',
      'Send me a notification if a ticket is unlocked by the system.' => 'Notifique-me se um bilhete for desbloqueado pelo sistema.',
      'Move notification' => 'Notifica��o de movimentos',
      'Send me a notification if a ticket is moved into one of "My Queues".' => 'Notifique-me se um bilhete for movido para uma das "Minhas Filas".',
      'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Selec��o das suas filas favoritas. Ser� notificado acerca destas filas via correio electr�nico se o servi�o estiver activo.',
      'Custom Queue' => 'Fila Personalizada',
      'QueueView refresh time' => 'Tempo de refrescamento da Visualiza��o  de Filas',
      'Screen after new ticket' => 'Ecr� ap�s novo bilhete',
      'Select your screen after creating a new ticket.' => 'Seleccionar ecr� ap�s cria��o de novo bilhete.',
      'Closed Tickets' => 'Bilhetes Fechados',
      'Show closed tickets.' => 'Mostrar bilhetes fechados',
      'Max. shown Tickets a page in QueueView.' => 'N�mero m�ximo de bilhetes por p�gina em Visuali��o de Filas',
      'CompanyTickets' => 'Bilhetes da Institui��o',
      'MyTickets' => 'Meus Bilhetes',
      'New Ticket' => 'Novo Bilhete',
      'Create new Ticket' => 'Criar novo Bilhete',
      'Customer called' => 'O cliente telefonou',
      'phone call' => '',
      'Responses' => 'Respostas',
      'Responses <-> Queue' => 'Respostas <-> Filas',
      'Auto Responses' => 'Respostas Autom�ticas',
      'Auto Responses <-> Queue' => 'Respostas Autom�ticas <-> Filas',
      'Attachments <-> Responses' => 'Anexos <-> Respostas',
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
      'Sun' => 'domingo',
      'Mon' => 'segunda-feira',
      'Tue' => 'ter�a-feira',
      'Wed' => 'quarta-feira',
      'Thu' => 'quinta-feira',
      'Fri' => 'sexta-feira',
      'Sat' => 's�bado',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Gest�o de Anexos',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Gest�o de Respostas Autom�ticas',
      'Response' => 'Resposta',
      'Auto Response From' => 'Resposta Autom�tica De',
      'Note' => 'Nota',
      'Useable options' => 'Op��es acess�veis',
      'to get the first 20 character of the subject' => 'para obter os 20 primeiros caracteres do assunto',
      'to get the first 5 lines of the email' => 'para obter as 5 primeiras linhas da mensagem de correio electr�nico',
      'to get the from line of the email' => 'para obter a linha "De:" da mensagem',
      'to get the realname of the sender (if given)' => 'para obter o nome do remetente (se indicado na mensagem)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Op��es dos dados do bilhete (e.g., &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Op��es de Configura��o (Ex. &lt;OTRS_CONFIG_HttpType&gt;)',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'A mensagem sendo composta foi fechada. Saindo.',
      'This window must be called from compose window' => 'Esta janela deve ser chamada da janela de composi��o',
      'Customer User Management' => 'Gest�o de Utilizadores Clientes',
      'Search for' => 'Procurar por',
      'Result' => 'Resultado',
      'Select Source (for add)' => 'Seleccionar fonte (para a adi��o)',
      'Source' => 'Fonte',
      'This values are read only.' => 'Estes valores s�o apenas de leitura.',
      'This values are required.' => 'Estes valores s�o obrigat�rios.',
      'Customer user will be needed to have a customer history and to login via customer panel.' => 'Utilizador cliente ter� de ter um historial como cliente e de se autenticar via os paineis de cliente.',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => '',
      'Change %s settings' => 'Modificar %s configura��es',
      'Select the user:group permissions.' => 'Seleccionar o utilizador:permiss�es de grupo.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Se nada for seleccionado, ent�o n�o h� permiss�es neste grupo (bilhetes n�o estaram dispon�veis para o utilizador).',
      'Permission' => 'Permiss�o',
      'ro' => 'leitura',
      'Read only access to the ticket in this group/queue.' => 'Acesso apenas de leitura para o bilhete neste grupo/fila.',
      'rw' => 'escrita',
      'Full read and write access to the tickets in this group/queue.' => 'Acesso total de leitura e escrita para os bilhetes neste grupo/queue.',

      # Template: AdminCustomerUserGroupForm

      # Template: AdminEmail
      'Message sent to' => 'Mensagem enviada para',
      'Recipents' => 'Destinat�rios',
      'Body' => 'Corpo',
      'send' => 'enviar',

      # Template: AdminGenericAgent
      'GenericAgent' => 'Agente Gen�rico',
      'Job-List' => 'Lista de Tarefas',
      'Last run' => '�ltima execu��o',
      'Run Now!' => 'Excutar Agora!',
      'x' => '',
      'Save Job as?' => 'Guardar Tarefa como?',
      'Is Job Valid?' => 'A Tarefa � V�lida?',
      'Is Job Valid' => 'A Tarefa � V�lida',
      'Schedule' => 'Agendamento',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Procura exaustiva no texto no artigo (ex: "autentic*" ou "*vido")',
      '(e. g. 10*5155 or 105658*)' => '(e.g., 10*5155 ou 105658*)',
      '(e. g. 234321)' => '(e.g., 234321)',
      'Customer User Login' => 'Nome de Utilizador de Cliente',
      '(e. g. U5150)' => '(e.g., mms ou jpps)',
      'Agent' => 'Agente',
      'Ticket Lock' => 'Bloqueio de Bilhete',
      'TicketFreeFields' => '',
      'Times' => 'Tempos',
      'No time settings.' => 'Sem defini��es de tempo.',
      'Ticket created' => 'Bilhete criado',
      'Ticket created between' => 'Bilhete criado entre',
      'New Priority' => 'Nova Prioridade',
      'New Queue' => 'Nova Fila',
      'New State' => 'Novo Estado',
      'New Agent' => 'Novo Agente',
      'New Owner' => 'Novo Propriet�rio',
      'New Customer' => 'Novo Cliente',
      'New Ticket Lock' => 'Novo Bloqueio do Bilhete',
      'CustomerUser' => 'Utilizador Cliente',
      'New TicketFreeFields' => '',
      'Add Note' => 'Adicionar Nota',
      'CMD' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Este comando ser� executado. ARG[0] ser� o n�mero do bilhete e ARG[1] o seu ID.',
      'Delete tickets' => 'Remover bilhetes',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Aviso! Estes bilhetes ser�o removidos da base de dados! Ser�o perdidos!',
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
      'Group Management' => 'Gest�o de Grupos',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'O grupo admin � para uso na �rea de administra��o e o grupo stats � para uso na �rea de estat�sticas.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crie novos grupos para manipular as permiss�es de acesso para diferentes grupos de agentes (e.g., departamento de compras, departamento de suporte, departamento de vendas, etc.).',
      'It\'s useful for ASP solutions.' => 'Isto � �til para solu��es ASP.',

      # Template: AdminLog
      'System Log' => 'Registo do Sistema',
      'Time' => 'Tempo',

      # Template: AdminNavigationBar
      'Users' => 'Utilizadores',
      'Groups' => 'Grupos',
      'Misc' => 'V�rios',

      # Template: AdminNotificationForm
      'Notification Management' => 'Gest�o de Notifica��o',
      'Notification' => 'Notifica��es',
      'Notifications are sent to an agent or a customer.' => 'As notifica��es s�o enviadas para um agente ou um cliente.',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Op��es do dono do bilhete',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Op��es do utilizador que requereu a ac��o (Ex. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Op�oes do Cliente corrente (Ex. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminPackageManager
      'Package Manager' => 'Gestor de Pacotes',
      'Uninstall' => 'Desinstalar',
      'Version' => 'Vers�o',
      'Do you really want to uninstall this package?' => 'Deseja mesmo desinstalar este pacote?',
      'Reinstall' => 'Reinstalar',
      'Do you really want to reinstall this package (all manual changes get lost)?' => '',
      'Install' => 'Instalar',
      'Package' => 'Pacote',
      'Online Repository' => 'Reposit�rio Em-linha',
      'Vendor' => 'Vendedor',
      'Upgrade' => 'Melhoria de Vers�o',
      'Local Repository' => 'Reposit�rio Local',
      'Status' => 'Estado',
      'Package not correctly deployed, you need to deploy it again!' => '',
      'Overview' => 'Vis�o Geral',
      'Download' => 'Descarregar',
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
      'PGP Management' => 'Gest�o de PGP',
      'Identifier' => 'Identificador',
      'Bit' => '',
      'Key' => 'Chave',
      'Fingerprint' => 'Impress�o Digital',
      'Expires' => 'Expira',
      'In this way you can directly edit the keyring configured in SysConfig.' => 'Desta forma pode editar directamente o anel de chaves configurado no SysConfig',

      # Template: AdminPOP3
      'POP3 Account Management' => 'Gest�o de Contas POP3',
      'Host' => 'Anfitri�o',
      'List' => '',
      'Trusted' => 'Confi�vel',
      'Dispatching' => 'Despachando',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Todas as mensagens recebidas correspondentes a uma com uma conta ser�o despachados para a fila selecionada!',
      'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => '',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => 'Gest�o de Filtros do Chefe do Correio',
      'Filtername' => 'Nome do Filtro',
      'Match' => 'Corresponde',
      'Header' => 'Cabe�alho',
      'Value' => 'Valor',
      'Set' => 'Coloca',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Despachar ou filtrar mensagens recebidas de acordo com os seus Cabe�alhos-X! Pode-se usar express�es regulares.',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Se usar express�es regulares, pode aceder ao valor emparelhado em () como [***] em \'Coloca\'.',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => 'Fila <-> Gest�o de Respostas Autom�ticas',

      # Template: AdminQueueForm
      'Queue Management' => 'Gest�o de Filas',
      'Sub-Queue of' => 'Subfila de',
      'Unlock timeout' => 'Tempo de desbloqueio',
      '0 = no unlock' => '0 = sem desbloqueio',
      'Escalation time' => 'Tempo de escalamento',
      '0 = no escalation' => '0 = sem escalamento',
      'Follow up Option' => 'Op��o de Seguimento',
      'Ticket lock after a follow up' => 'Bloqueio do bilhete ap�s seguimento',
      'Systemaddress' => 'Endere�o do Sistema',
      'Customer Move Notify' => 'Movimento de Cliente Notificado',
      'Customer State Notify' => 'Estado de Cliente Notificado',
      'Customer Owner Notify' => 'Propriet�rio de Cliente Notificado',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se um agente bloqueia um bilhete e n�o enviar uma resposta dentro deste tempo, o bilhete ser� desbloqueado automaticamente, ficando vis�vel para todos os outros agentes.',
      'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Se um bilhete n�o for respondido dentro deste tempo, apenas os bilhetes com este tempo vencido ser�o exibidos.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Se um bilhete estiver fechado e um cliente enviar um seguimento, ser� bloqueado em nome do seu propriet�rio.',
      'Will be the sender address of this queue for email answers.' => 'Ser� o endere�o de correio electr�nico usado para respostas nesta fila.',
      'The salutation for email answers.' => 'A sauda��o das respostas de correio electr�nico.',
      'The signature for email answers.' => 'A assinatura das respostas de correio electr�nico.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'O OTRS envia uma mensagem de notifica��o ao cliente se o bilhete for movido.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'O OTRS envia uma mensagem de notifica��o ao cliente se o estado do bilhete for alterado.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'O OTRS envia uma mensagem de notifica��o ao cliente se o propriet�rio do bilhete for alterado.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => 'Respostas <-> Gest�o de Filas',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Resposta',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => 'Respostas <-> Gest�o de Anexos',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Gest�o de Respostas',
      'A response is default text to write faster answer (with default text) to customers.' => 'Uma resposta � um texto padr�o para comp�r respostas r�pidas (com texto padr�o) para clientes.',
      'Don\'t forget to add a new response a queue!' => 'N�o se esque�a de adicionar a nova resposta a uma fila!',
      'Next state' => 'Pr�ximo estado',
      'All Customer variables like defined in config option CustomerUser.' => 'todas as vari�veis de Cliente tais como definidas na op��o de configura��o CustomerUser',
      'The current ticket state is' => 'O estado corrente do bilhete �',
      'Your email address is new' => 'O seu endere�o de correio electr�nico � novo',

      # Template: AdminRoleForm
      'Role Management' => 'Gest�o de Papeis',
      'Create a role and put groups in it. Then add the role to the users.' => 'Criar um papel e atribuir-lhe grupos. Depois acrescentar o papel aos utilizadores.',
      'It\'s useful for a lot of users and groups.' => '�til para muitos utilizadores e grupos.',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => 'Papeis <-> Gest�o de Grupos',
      'move_into' => 'mover para',
      'Permissions to move tickets into this group/queue.' => 'Permiss�es para mover bilhetes neste grupo/queue',
      'create' => 'criar',
      'Permissions to create tickets in this group/queue.' => 'Permisses para criar bilhetes neste grupo/queue',
      'owner' => 'dono',
      'Permissions to change the ticket owner in this group/queue.' => 'Permiss�es para modificar o dono do bilhete neste grupo/queue',
      'priority' => 'prioridade',
      'Permissions to change the ticket priority in this group/queue.' => 'Permiss�es para modificar a prioridade do bilhete neste grupo/queue',

      # Template: AdminRoleGroupForm
      'Role' => 'Papel',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => 'Papeis <-> Gest�o de Utilizadores',
      'Active' => 'Activo',
      'Select the role:user relations.' => 'Seleccione as rela��es papel:utilizador',

      # Template: AdminRoleUserForm

      # Template: AdminSalutationForm
      'Salutation Management' => 'Gest�o de Sauda��es',
      'customer realname' => 'nome do cliente',
      'All Agent variables.' => '',
      'for agent firstname' => 'para o nome pr�prio do agente',
      'for agent lastname' => 'para o apelido do agente',
      'for agent user id' => 'para o ID de utilizador do agente',
      'for agent login' => 'para o nome de utilizador do agente',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Caixa de Selec��o',
      'Limit' => 'Limite',
      'Select Box Result' => 'Selecione a Caixa de Resultado',

      # Template: AdminSession
      'Session Management' => 'Gest�o de Sess�es',
      'Sessions' => 'Sess�es',
      'Uniq' => '�nico',
      'kill all sessions' => 'Finalizar todas as sess�es',
      'Session' => 'Sess�o',
      'Content' => 'Conte�do',
      'kill session' => 'finalizar sess�o',

      # Template: AdminSignatureForm
      'Signature Management' => 'Gest�o de Assinaturas',

      # Template: AdminSMIMEForm
      'S/MIME Management' => '',
      'Add Certificate' => 'Adicionar Certificado',
      'Add Private Key' => 'Adicionar Chave Privada',
      'Secret' => 'Segredo',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => 'Aqui pode editar directamente os certificados e chaves privadas presentes no sistema de ficheiros.',

      # Template: AdminStateForm
      'System State Management' => 'Gest�o de Estados do Sistema',
      'State Type' => 'Estado Tipo',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Garanta que tamb�m actualisou os estados por omiss�o no seu Kernel/Config.pm!',
      'See also' => 'Ver tamb�m',

      # Template: AdminSysConfig
      'SysConfig' => 'Configura��o do Sistema',
      'Group selection' => 'Selec��o do grupo',
      'Show' => 'Mostrar',
      'Download Settings' => 'Descarregar Configura��o',
      'Download all system config changes.' => 'Descarregar todas as altera��es da configura��o do sistema.',
      'Load Settings' => 'Carregar Configura��o',
      'Subgroup' => 'Subgrupo',
      'Elements' => 'Elementos',

      # Template: AdminSysConfigEdit
      'Config Options' => 'Op��es de Configura��o',
      'Default' => 'Por Omiss�o',
      'New' => 'Novo',
      'New Group' => 'Novo Grupo',
      'Group Ro' => '',
      'New Group Ro' => '',
      'NavBarName' => '',
      'NavBar' => '',
      'Image' => 'Imagem',
      'Prio' => '',
      'Block' => '',
      'AccessKey' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Gest�o dos Endere�os de Correio Electr�nico do Sistema',
      'Realname' => 'Nome',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todas mensagens recebidas com este destinat�rio (Para:) ser�o despachados para a fila selecionada!',

      # Template: AdminUserForm
      'User Management' => 'Gest�o de Utilizadores',
      'Login as' => 'Entrar como',
      'Firstname' => 'Nome',
      'Lastname' => 'Apelido',
      'User will be needed to handle tickets.' => '� necess�rio um utilizador para manipular os bilhetes.',
      'Don\'t forget to add a new user to groups and/or roles!' => 'N�o se esque�a de adicionar um novo utilizador a grupos e/ou papeis!',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => 'Utilizadores <-> Gest�o de Grupos',

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
      'Link Object' => 'Ligar Objecto',
      'Select' => 'Seleccionar',
      'Results' => 'Resultados',
      'Total hits' => 'Total de acertos',
      'Page' => 'P�gina',
      'Detail' => 'Pormenor',

      # Template: AgentLookup
      'Lookup' => 'Procura',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => 'Bilhete seleccionado para ac��o em lote!',
      'You need min. one selected Ticket!' => 'Precisa de seleccionar pelo menos um Bilhete!',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Verificador Ortogr�fico',
      'spelling error(s)' => 'erro(s) ortogr�fico(s)',
      'or' => 'ou',
      'Apply these changes' => 'Aplicar estas modifica��es',

      # Template: AgentStatsDelete
      'Do you really want to delete this Object?' => 'Deseja realmente remover este Objecto?',

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
      'Start' => 'In�cio',
      'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Uma mensagem deve possuir um Para: destinat�rio!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Precisa de um endere�o de correio electr�nico (e.g., cliente@exemplo.pt) no Para:!',
      'Bounce ticket' => 'Devolver bilhete',
      'Bounce to' => 'Devolver para',
      'Next ticket state' => 'Pr�ximo estado do bilhete',
      'Inform sender' => 'Informe o remetente',
      'Send mail!' => 'Enviar mensagem de correio electr�nico!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'A mensagem deve conter um assunto!',
      'Ticket Bulk Action' => 'Ac��o sobre Lote de Bilhetes',
      'Spell Check' => 'Verificar Ortografia',
      'Note type' => 'Tipo de nota',
      'Unlock Tickets' => 'Desbloquear Bilhetes',

      # Template: AgentTicketClose
      'A message should have a body!' => 'A mensagem deve conter um texto!',
      'You need to account time!' => '� necess�rio o tempo dispendido',
      'Close ticket' => 'Fechar bilhete',
      'Ticket locked!' => 'Bilhete bloqueado!',
      'Ticket unlock!' => 'Bilhete desbloqueado!',
      'Previous Owner' => 'Propriet�rio Anterior',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',
      'Attach' => 'Anexo',
      'Pending date' => 'Data da pend�ncia',
      'Time units' => 'Unidades de tempo',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Tem de verificar a ortografia da mensagem!',
      'Compose answer for ticket' => 'Compor uma resposta para o bilhete',
      'Pending Date' => 'Prazo de pend�ncia',
      'for pending* states' => 'para os estados "pendente ..."',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Modificar o cliente do bilhete',
      'Set customer user and customer id of a ticket' => 'Atribua o nome de utilizador e o ID do cliente do bilhete',
      'Customer User' => 'Nome de Utilizador do Cliente',
      'Search Customer' => 'Procurar Cliente',
      'Customer Data' => 'Dados do Cliente',
      'Customer history' => 'Hist�rico do cliente',
      'All customer tickets.' => 'Todos os bilhetes do cliente.',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Seguimento',

      # Template: AgentTicketEmail
      'Compose Email' => 'Compor Mensagem de Correio Electr�nico',
      'new ticket' => 'novo bilhete',
      'Refresh' => '',
      'Clear To' => '',
      'All Agents' => 'Todos os Agentes',

      # Template: AgentTicketForward
      'Article type' => 'Tipo de artigo',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Alterar Texto livre do bilhete',

      # Template: AgentTicketHistory
      'History of' => 'Hist�rico de',

      # Template: AgentTicketLocked

      # Template: AgentTicketMailbox
      'Mailbox' => 'Caixa de Entrada',
      'Tickets' => 'Bilhetes',
      'of' => 'de',
      'Filter' => '',
      'All messages' => 'Todas as mensagens',
      'New messages' => 'Mensagens novas',
      'Pending messages' => 'Mensagens pendentes',
      'Reminder messages' => 'Mensagens com lembretes',
      'Reminder' => 'Lembretes',
      'Sort by' => 'Ordenado pela',
      'Order' => 'Ordem',
      'up' => 'crescente',
      'down' => 'decrescente',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => '',
      'Ticket Merge' => 'Juntar Bilhete',
      'Merge to' => 'Juntar a',

      # Template: AgentTicketMove
      'Move Ticket' => 'Mover Bilhete',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Adicionar nota ao bilhete',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Modificar o propriet�rio do bilhete',

      # Template: AgentTicketPending
      'Set Pending' => 'Definir como Pendente',

      # Template: AgentTicketPhone
      'Phone call' => 'Chamada telef�nica',
      'Clear From' => 'Limpar De',
      'Create' => 'Criar',

      # Template: AgentTicketPhoneOutbound

      # Template: AgentTicketPlain
      'Plain' => 'Verbatim',
      'TicketID' => 'ID de Bilhete',
      'ArticleID' => 'ID de Artigo',

      # Template: AgentTicketPrint
      'Ticket-Info' => 'Informa��o de Bilhete',
      'Accounted time' => 'Tempo contabilizado',
      'Escalation in' => 'Escalado em',
      'Linked-Object' => 'Objecto-Ligado',
      'Parent-Object' => 'Objecto-Ascendente',
      'Child-Object' => 'Objecto-Descendente',
      'by' => 'por',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Modificar a prioridade do bilhete',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Bilhetes mostrados',
      'Tickets available' => 'Bilhetes dispon�veis',
      'All tickets' => 'Todos os bilhetes',
      'Queues' => 'Filas',
      'Ticket escalation!' => 'Escalamento de bilhetes!',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'O seu Bilhete',
      'Compose Follow up' => 'Compor Seguimento',
      'Compose Answer' => 'Compor resposta',
      'Contact customer' => 'Contactar o cliente',
      'Change queue' => 'Modificar a fila',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketResponsible
      'Change responsible of ticket' => '',

      # Template: AgentTicketSearch
      'Ticket Search' => 'Procura de Bilhetes',
      'Profile' => 'Perfil',
      'Search-Template' => 'Modelo de procura',
      'TicketFreeText' => 'Texto Livre do Bilhete',
      'Created in Queue' => 'Criado na Fila',
      'Result Form' => 'Formato do resultado',
      'Save Search-Profile as Template?' => 'Guardar Perfil de Procura como Modelo?',
      'Yes, save it with name' => 'Sim, guardar com o nome',

      # Template: AgentTicketSearchResult
      'Search Result' => 'Resultado de Procura',
      'Change search options' => 'Alterar op��es de procura',

      # Template: AgentTicketSearchResultPrint

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'ordenar crescentemente',
      'U' => 'C',
      'sort downward' => 'ordenar decrescentemente',
      'D' => '',

      # Template: AgentTicketStatusView
      'Ticket Status View' => 'Visualiza��o do Estado dos Bilhetes',
      'Open Tickets' => 'Bilhetes Abertos',

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
      'Traceback' => 'Retroceder',

      # Template: CustomerFooter
      'Powered by' => 'Produzido por',

      # Template: CustomerFooterSmall

      # Template: CustomerHeader

      # Template: CustomerHeaderSmall

      # Template: CustomerLogin
      'Login' => 'Autentica��o',
      'Lost your password?' => 'Esqueceu a palavra-passe?',
      'Request new password' => 'Solicitar nova palavra-passe',
      'Create Account' => 'Criar Conta',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Bem-vindo, %s',

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
      'Click here to report a bug!' => 'Clique aqui para reportar um erro!',

      # Template: Footer
      'Top of Page' => 'Topo da P�gina',

      # Template: FooterSmall

      # Template: Header
      'Home' => 'In�cio',

      # Template: HeaderSmall

      # Template: Installer
      'Web-Installer' => 'Instalador Web',
      'accept license' => 'aceitar licen�a',
      'don\'t accept license' => 'n�o aceitar licen�a',
      'Admin-User' => 'Utilizador de Admin',
      'Admin-Password' => '',
      'your MySQL DB should have a root password! Default is empty!' => 'a sua Base de Dados MySQL deve ter uma palavra-passe de administra��o! Por omiss�o ela est� vazia!',
      'Database-User' => 'Utilizador da Base de Dados',
      'default \'hot\'' => 'por omiss�o \'hot\'',
      'DB connect host' => 'Anfitri�o para liga��es � Base de Dados',
      'Database' => 'Base de dados',
      'false' => 'falso',
      'SystemID' => 'ID do sistema',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(A identidade do sistema. Cada n�mero de bilhete e cada id. da sess�o http, inicia com este n�mero)',
      'System FQDN' => 'FQDN do sistema',
      '(Full qualified domain name of your system)' => '(Nome de dom�nio totalmente qualificado do seu sistema)',
      'AdminEmail' => 'Correio Electr�nico do Administrador',
      '(Email of the system admin)' => '(Endere�o de correio electr�nico do administrador do sistema)',
      'Organization' => 'Organiza��o',
      'Log' => 'Registo',
      'LogModule' => 'M�dulo de Registos',
      '(Used log backend)' => '(Usei o sistema de registos)',
      'Logfile' => 'Ficheiro de Log',
      '(Logfile just needed for File-LogModule!)' => '(Ficheiro de registo para File-LogModule)',
      'Webfrontend' => 'Interface Web',
      'Default Charset' => 'Codifica��o por Omiss�o',
      'Use utf-8 it your database supports it!' => 'Usar UTF-8 se a base de dados o suportar',
      'Default Language' => 'Idioma por Omiss�o',
      '(Used default language)' => '(Idioma por omiss�o utilizado)',
      'CheckMXRecord' => 'Verificar registo MX',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Verifica os registos MX dos endere�os de correio electr�nico usados quando comp�e uma resposta. N�o usar caso esteja a usar uma liga��o telef�nica!)',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Para usar o OTRS tem de dar o seguinte comando no seu Terminal/Consola, como administrador.',
      'Restart your webserver' => 'Reinicie o seu servidor Web',
      'After doing so your OTRS is up and running.' => 'Depois de o fazer, o seu OTRS estar� funcional.',
      'Start page' => 'P�gina inicial',
      'Have a lot of fun!' => 'Divirta-se!',
      'Your OTRS Team' => 'A sua Equipa OTRS',

      # Template: Login
      'Welcome to %s' => '',

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Sem Autoriza��o',

      # Template: Notify
      'Important' => 'Importante',

      # Template: PrintFooter
      'URL' => '',

      # Template: PrintHeader
      'printed by' => 'impresso por',

      # Template: Redirect

      # Template: Test
      'OTRS Test Page' => 'P�gina de Teste do OTRS',
      'Counter' => 'Contador',

      # Template: Warning
      # Misc
      'OTRS DB connect host' => 'Servidor de liga��o da Base de Dados OTRS',
      'Create Database' => 'Criar Base de Dados',
      'End' => 'Fim',
      ' (work units)' => ' (unidades de trabalho)',
      'DB Host' => 'Servidor Base de Dados',
      'Multiplier:' => 'Multiplicador:',
      'Ticket Number Generator' => 'Gerador de N�meros de Bilhetes',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identifica��o do bilhete. Algumas pessoas usam \'Bilhete#\', \'Chamada#\' or \'MeuBilhete#\')',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => '',
      'Symptom' => 'Sintoma',
      'Site' => 'P�gina',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Se a sua conta for acreditada, cabe�alhos X-OTRS existentes � chegada (para prioridade, etc.) ser�o usados! O filtro do Chefe do Correio ser� sempre usado, no entanto.',
      'Customer history search (e. g. "ID342425").' => 'Procura no hist�rico do cliente (e.g., "ID342425")',
      'Ticket Hook' => 'Identificador do Bilhete',
      'Close!' => 'Fechar!',
      'TicketZoom' => 'DetalhesDoBilhete',
      'Don\'t forget to add a new user to groups!' => 'N�o esque�a de adicionar um novo user nos grupos!',
      'OTRS DB Name' => 'Nome da Base de Dados OTRS',
      'PGP Key' => 'Chave PGP',
      'System Settings' => 'Propriedades de Sistema',
      'Finished' => 'Terminado',
      'System Status' => 'Estado do Sistema',
      'Queue ID' => 'ID da Queue',
      'A article should have a title!' => 'Um artigo tem de ter um t�tulo!',
      'System History' => 'Hist�rico do Sistema',
      'Benchmark' => 'Desempenho',
      'Update:' => 'Actualizar:',
      'Modules' => 'M�dulos',
      'PGP Key Upload' => 'Carregamento de Chave PGP',
      'Keyword' => 'Palavra-chave',
      'with' => 'a',
      'Close type' => 'Tipo de fecho',
      'DB Admin User' => 'Utilizador Admin da Base de Dados',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',
      'Change user <-> group settings' => 'Modificar users <-> configura��es de grupos',
      'Name is required!' => '� necess�rio um nome!',
      'Problem' => 'Problema',
      'DB Type' => 'Tipo da Base de Dados',
      'next step' => 'pr�ximo passo',
      'Termin1' => '',
      'Customer history search' => 'Procura no hist�rico do cliente',
      'Solution' => 'Solu��o',
      'Admin-Email' => 'Endere�o de Correio Electr�nico do Administrador',
      'OTRS-Admin Info!' => 'Informa��o do Administrador OTRS!',
      'Requests:' => 'Pedidos:',
      'QueueView' => 'Filas',
      'SMIME Certificate Upload' => 'Carregamento de Certificado SMIME',
      'Create new database' => 'Criar nova base de dados',
      'SMIME Certificate' => 'Certificado SMIME',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Seu email com o n�mero de bilhete "<OTRS_TICKET>" foi devolvido para "<OTRS_BOUNCE_TO>". Contate este endere�o para mais informa��es.',
      'Delete old database' => 'Eliminar base de dados antiga',
      'Ticket %s locked.' => 'Bilhete %s bloqueado.',
      'Keywords' => 'Palavras-chave',
      'Note Text' => 'Nota',
      'Select:' => 'Seleccionar:',
      'No * possible!' => 'N�o s�o poss�veis *!',
      'Insert:' => 'Inserir:',
      'Security Note: You should activate %s because applications is already running!' => 'Nota de Seguran�a: Deve activar o %s, pois a aplica��o est� j� em produ��o!',
      'PostMaster Filter' => 'Filtros do Chefe do Correio',
      'OTRS DB User' => 'Utilizador de Base de Dados OTRS',
      'PhoneView' => 'Visualiza��o de Chamada',
      'PostMaster POP3 Account' => 'Conta do Chefe do Correio',
      'Verion' => 'Vers�o',
      'Message for new Owner' => 'Mensagem para o novo Propriet�rio',
      'merged' => 'junto',
      'OTRS DB Password' => 'Palavra-passe da Base de Dados OTRS',
      'Last update' => '�ltima actualiza��o',
      'Sorry, feature not active!' => 'Lamentamos, caracter�stica n�o activa!',
      'DB Admin Password' => 'Palavra-passe de Administrador da Base de Dados',
      'Drop Database' => 'Apagar Base de Dados',
      'Pending type' => 'Tipo de pend�ncia',
      'Comment (internal)' => 'Coment�rio (interno)',
      'SMIME Management' => 'Gest�o de SMIME',
      'Note!' => 'Nota!',
      '(Used ticket number format)' => '(Formato de n�mero de bilhete utilizado)',
      'Fulltext' => 'Texto completo',
      'Modified' => 'Modificado',
      'Ticket\#' => 'N� de Bilhete',
      'Watched Tickets' => '',
      'Watched' => '',
    };
    # $$STOP$$
}

1;
