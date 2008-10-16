# --
# Kernel/Language/pt_BR.pm - provides pt_BR language translation
# Copyright (C) 2003 Gilberto Cezar de Almeida <gibalmeida at hotmail.com>
# Copyright (C) 2005 Alterado por Glaucia C. Messina (glauglauu@yahoo.com)
# Copyright (C) 2007 Fabricio Luiz Machado <soprobr gmail.com>
# --
# $Id: pt_BR.pm,v 1.76 2008-10-16 14:43:40 ub Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::Language::pt_BR;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.76 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Fri May 16 14:08:53 2008

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
        'second(s)' => 'segundo(s)',
        'seconds' => 'segundos',
        'second' => 'segundo',
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
        '* invalid' => '',
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
        'Unlink' => '',
        'Linked' => '',
        'Link (Normal)' => '',
        'Link (Parent)' => 'Link (Pai)',
        'Link (Child)' => 'Link (Filho)',
        'Normal' => '',
        'Parent' => 'Pai',
        'Child' => 'Filho',
        'Hit' => 'Acesso',
        'Hits' => 'Acessos',
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
        'Customer Company' => '',
        'Company' => '',
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
        'Passwords doesn\'t match! Please try it again!' => 'Senha incorreta! Tente novamente!',
        'Password is already in use! Please use an other password!' => 'Senha em uso! Tente outra senha!',
        'Password is already used! Please use an other password!' => 'Senha est� sendo utilizada! Tente outra senha!',
        'You need to activate %s first to use it!' => 'Primeiramente ative %s, para uso!',
        'No suggestions' => 'Sem sugest�es',
        'Word' => 'Palavra',
        'Ignore' => 'Ignorar',
        'replace with' => 'substituir com',
        'There is no account with that login name.' => 'N�o existe conta com este nome de usu�rio',
        'Login failed! Your username or password was entered incorrectly.' => 'Login incorreto! Seu Login  ou senha foram informados incorretamente.',
        'Please contact your admin' => 'Por favor, contate administrador do sistema!',
        'Logout successful. Thank you for using OTRS!' => 'Encerrado com sucesso. Obrigado por utilizar o OTRS!',
        'Invalid SessionID!' => 'Identifica��o de Sess�o Inv�lida',
        'Feature not active!' => 'Fun��o n�o ativada!',
        'Login is needed!' => '',
        'Password is needed!' => 'Senha � obrigat�ria!',
        'License' => 'Licen�a',
        'Take this Customer' => 'Atenda este Cliente',
        'Take this User' => 'Atenda este Usu�rio',
        'possible' => 'poss�vel',
        'reject' => 'rejeitar',
        'reverse' => 'reverso',
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
        'Package not correctly deployed! You should reinstall the Package again!' => 'O pacote n�o foi instalado coretamente! Voc� deve reinstal�-lo!',
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
        'Office' => 'Escrit�rio',
        'Phone' => 'Telefone',
        'Fax' => '',
        'Mobile' => 'Celular',
        'Zip' => 'CEP',
        'City' => 'Cidade',
        'Location' => 'Loca��o',
        'Street' => 'Rua',
        'Country' => 'Pa�s',
        'installed' => 'instalado',
        'uninstalled' => 'desinstalado',
        'Security Note: You should activate %s because application is already running!' => '',
        'Unable to parse Online Repository index document!' => '',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => '',
        'No Packages or no new Packages in selected Online Repository!' => '',
        'printed at' => 'impresso em',
        'Dear Mr. %s,' => '',
        'Dear Mrs. %s,' => '',
        'Dear %s,' => '',
        'Hello %s,' => '',
        'This account exists.' => '',
        'New account created. Sent Login-Account to %s.' => '',
        'Please press Back and try again.' => '',
        'Sent password token to: %s' => '',
        'Sent new password to: %s' => '',
        'Invalid Token!' => '',

        # Template: AAAMonth
        'Jan' => '',
        'Feb' => 'Fev',
        'Mar' => '',
        'Apr' => 'Abr',
        'May' => 'Maio',
        'Jun' => '',
        'Jul' => '',
        'Aug' => 'Ago',
        'Sep' => 'Set',
        'Oct' => 'Out',
        'Nov' => '',
        'Dec' => 'Dez',
        'January' => 'Janeiro',
        'February' => 'Fevereiro',
        'March' => 'Mar�o',
        'April' => 'Abril',
        'June' => 'Junho',
        'July' => 'Julho',
        'August' => 'Agosto',
        'September' => 'Setembro',
        'October' => 'Outubro',
        'November' => 'Novembro',
        'December' => 'Dezembro',

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
        'Admin' => '',
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
        'Can\'t update password, passwords doesn\'t match! Please try it again!' => 'Senha n�o atualizada, por que est�o diferentes! Tente novamente!',
        'Can\'t update password, invalid characters!' => 'Senha n�o atualizada, caracteres inv�lidos!',
        'Can\'t update password, need min. 8 characters!' => 'Senha n�o atualizada, digite no m�nimo 8 caracteres!',
        'Can\'t update password, need 2 lower and 2 upper characters!' => 'Senha n�o atualizada, digite no m�nimo 2 caracteres min�sculos e 2 mai�sculos',
        'Can\'t update password, need min. 1 digit!' => 'Senha n�o atualizada, digite no m�nimo 1 n�mero',
        'Can\'t update password, need min. 2 characters!' => 'Senha n�o atualizada, digite no m�nimo 2 caracteres',

        # Template: AAAStats
        'Stat' => 'Status',
        'Please fill out the required fields!' => 'Por favor, preencha os campos obrigat�rios!',
        'Please select a file!' => 'Por favor, selecione um arquivo!',
        'Please select an object!' => 'Por favor, selecione um objeto!',
        'Please select a graph size!' => 'Por favor, selecione o tamanho do gr�fico!',
        'Please select one element for the X-axis!' => 'Por favor, selecione um elemento do eixo X!',
        'You have to select two or more attributes from the select field!' => 'Voc� deve selecionar dois ou mais atributos no campo \'selecionar\'!',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Por favor, selecione somente um elemento ou desmarque o bot�o \'Fixo\' onde o campo selecionado est� marcado!',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Se voc� utiliza um checkbox, deves selecionar alguns atributos no campo \'selecionar\'!',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Por favor, insira um valor no campo selecionado ou desmarque a checkbox \'Fixo\'!',
        'The selected end time is before the start time!' => 'A data final � anterior � data inicial!',
        'You have to select one or more attributes from the select field!' => 'Voc� deve selecionar ao menos um atributo no campo \'selecionar\'!',
        'The selected Date isn\'t valid!' => 'A data selecionada � inv�lida!',
        'Please select only one or two elements via the checkbox!' => 'Por favor, selecione apenas um ou dois elementos atrav�s da checkbox!',
        'If you use a time scale element you can only select one element!' => 'Se voc� usa um elemento como par�metro de tempo, deves selecionar apenas um elemento!',
        'You have an error in your time selection!' => 'Voc� tem um erro na hora selecionada!',
        'Your reporting time interval is too small, please use a larger time scale!' => 'O intervalo de tempo para o aviso � muito pequeno, por favor, utilize um per�odo maior!',
        'The selected start time is before the allowed start time!' => 'A data inicial selecionada � anterior � permitida!',
        'The selected end time is after the allowed end time!' => 'A data final selecionada � posterior � permitida!',
        'The selected time period is larger than the allowed time period!' => 'O per�odo de tempo selecionado � maior do que o permitido!',
        'Common Specification' => 'Especifica��o Comum',
        'Xaxis' => 'Eixo X',
        'Value Series' => 'Sequ�ncia de Valores',
        'Restrictions' => 'Restri��es',
        'graph-lines' => 'gr�fico de linhas',
        'graph-bars' => 'gr�fico de barras',
        'graph-hbars' => 'gr�fico de barras\(2\)',
        'graph-points' => 'gr�fico de pontos',
        'graph-lines-points' => 'gr�fico de linhas e pontos',
        'graph-area' => 'gr�fico de �rea',
        'graph-pie' => 'gr�fico de pizza',
        'extended' => 'extendido',
        'Agent/Owner' => 'Atendente/Propriet�rio',
        'Created by Agent/Owner' => 'Criado pelo Atendente/Propriet�rio',
        'Created Priority' => 'Prioridade',
        'Created State' => 'Status',
        'Create Time' => 'Data/Hora',
        'CustomerUserLogin' => 'Usu�rio do Cliente',
        'Close Time' => 'Data/Hora de Fechamento',

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
        'Priority Update' => '',
        'State' => 'Estado',
        'Compose' => 'Comp�r',
        'Pending' => 'Pendentes',
        'Owner' => 'Propriet�rio',
        'Owner Update' => 'Atualiza��o Propriet�rio',
        'Responsible' => 'Respons�vel',
        'Responsible Update' => 'Atualiza��o do Respons�vel',
        'Sender' => 'Remetente',
        'Article' => 'Artigo',
        'Ticket' => 'Chamado',
        'Createtime' => 'Hora de cria��o',
        'plain' => 'texto',
        'Email' => 'E-mail',
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
        'merged' => '',
        'closed successful' => 'fechado com �xito',
        'closed unsuccessful' => 'fechado sem �xito',
        'new' => 'novo',
        'open' => 'aberto',
        'closed' => 'fechado',
        'removed' => 'removido',
        'pending reminder' => 'lembrete de pendente',
        'pending auto' => '',
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
        'New Article' => 'Novo Artigo',
        'Email-Ticket' => 'Chamado-Mail',
        'Create new Email Ticket' => 'Criar novo Mail Chamado',
        'Phone-Ticket' => 'Chamado-Fone',
        'Search Tickets' => 'Pesquisar Chamados',
        'Edit Customer Users' => 'Editar Clientes(Usu�rios)',
        'Edit Customer Company' => '',
        'Bulk-Action' => 'Executar A��o',
        'Bulk Actions on Tickets' => 'Executar A��o nos Chamados',
        'Send Email and create a new Ticket' => 'Enviar mail e criar novo Chamado',
        'Create new Email Ticket and send this out (Outbound)' => '',
        'Create new Phone Ticket (Inbound)' => '',
        'Overview of all open Tickets' => 'Vis�o geral de todos Chamados abertos',
        'Locked Tickets' => 'Chamados Bloqueados',
        'Watched Tickets' => 'Chamados Monitorados',
        'Watched' => 'Monitorados',
        'Subscribe' => 'Cadastrar',
        'Unsubscribe' => 'Descadastrar',
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
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'A sua mensagem com o chamado n�mero "<OTRS_TICKET>" foi unido com o chamado n�mero "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => '',
        'Ticket %s: first response time will be over in %s!' => '',
        'Ticket %s: update time is over (%s)!' => '',
        'Ticket %s: update time will be over in %s!' => '',
        'Ticket %s: solution time is over (%s)!' => '',
        'Ticket %s: solution time will be over in %s!' => '',
        'There are more escalated tickets!' => '',
        'New ticket notification' => 'Notifica��o de novo Chamado',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Envie-me uma notifica��o se h� um Novo Chamado em "Minhas Filas".',
        'Follow up notification' => 'Notifica��o de continua��o',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Notifique me se um cliente enviar uma continua��o e sou o propriet�rio do Chamado.',
        'Ticket lock timeout notification' => 'Notifica��o de bloqueio por tempo expirado',
        'Send me a notification if a ticket is unlocked by the system.' => 'Notifique me se um Chamado � desbloqueado pelo sistema.',
        'Move notification' => 'Notifica��o de movimentos',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Notifique-me se  Chamados foram movimentados para "Minhas Filas"',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Suas filas favoritas. Voc� tamb�m ser� notificado sobre estas filas via e-mail se habilitado.',
        'Custom Queue' => 'Fila Personalizada',
        'QueueView refresh time' => 'Tempo de atualiza��o das Filas',
        'Screen after new ticket' => 'Tela ap�s novo chamado',
        'Select your screen after creating a new ticket.' => 'Selecione a tela seguinte ap�s a cria��o de um novo chamado.',
        'Closed Tickets' => 'Chamados Fechados',
        'Show closed tickets.' => 'Apresentar chamados fechados.',
        'Max. shown Tickets a page in QueueView.' => 'N� m�ximo de chamados apresentados por p�gina.',
        'CompanyTickets' => 'Chamados da Empresa',
        'MyTickets' => 'Meus Chamados',
        'New Ticket' => 'Novo Chamado',
        'Create new Ticket' => 'Criar novo Chamado',
        'Customer called' => 'O Cliente Telefonou',
        'phone call' => 'Chamada Telef�nica',
        'Responses' => 'Respostas',
        'Responses <-> Queue' => 'Respostas <-> Fila',
        'Auto Responses' => 'Auto respostas',
        'Auto Responses <-> Queue' => 'Auto respostas <-> Fila',
        'Attachments <-> Responses' => 'Anexos <-> respostas',
        'History::Move' => 'Chamado foi movido para a Fila "%s" (%s) vinda da Fila "%s" (%s).',
        'History::TypeUpdate' => 'Updated Type to %s (ID=%s).',
        'History::ServiceUpdate' => 'Updated Service to %s (ID=%s).',
        'History::SLAUpdate' => 'Updated SLA to %s (ID=%s).',
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
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

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
        'To get the first 20 character of the subject.' => '',
        'To get the first 5 lines of the email.' => '',
        'To get the realname of the sender (if given).' => '',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => '',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => '',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => '',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => '',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => '',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => '',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => '',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => '',
        'Search for' => 'Pesquisar por',
        'Add Customer Company' => '',
        'Add a new Customer Company.' => '',
        'List' => 'Lista',
        'This values are required.' => 'Estes valores s�o obrigat�rios.',
        'This values are read only.' => 'Estes valores s�o apenas para leitura.',

        # Template: AdminCustomerUserForm
        'Customer User Management' => 'Administra��o de Clientes',
        'Add Customer User' => '',
        'Source' => 'Origem',
        'Create' => 'Criar',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'O usu�rio do cliente ser� necess�rio para que exista um hist�rico do cliente e para login na �rea de clientes.',

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

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => '',
        'CustomerUser' => 'Usu�rio Cliente',
        'Service' => '',
        'Edit default services.' => '',
        'Search Result' => 'Resultado da Busca',
        'Allocate services to CustomerUser' => '',
        'Active' => 'Ativo',
        'Allocate CustomerUser to service' => '',

        # Template: AdminEmail
        'Message sent to' => 'Mensagem enviada para',
        'Recipents' => 'Destinat�rios',
        'Body' => 'Corpo',
        'Send' => '',

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
        'SLA' => '',
        'Agent' => 'Atendente',
        'Ticket Lock' => 'Chamado bloqueado',
        'TicketFreeFields' => 'Campos livres do Chamado',
        'Create Times' => '',
        'No create time settings.' => '',
        'Ticket created' => 'Chamado criado',
        'Ticket created between' => 'Chamado criado entre',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Pending Times' => '',
        'No pending time settings.' => '',
        'Ticket pending time reached' => '',
        'Ticket pending time reached between' => '',
        'New Service' => '',
        'New SLA' => '',
        'New Priority' => 'Nova Prioridade',
        'New Queue' => 'Nova Fila',
        'New State' => 'Novo Estado',
        'New Agent' => 'Novo Atendente',
        'New Owner' => 'Novo Propriet�rio',
        'New Customer' => 'Novo Cliente',
        'New Ticket Lock' => 'Chamado novo bloqueado',
        'New Type' => '',
        'New Title' => '',
        'New Type' => '',
        'New TicketFreeFields' => 'Novos campos livres do Chamado',
        'Add Note' => 'Adicionar Nota',
        'CMD' => 'Comando',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Este comando ser� executado. ARG[0] ser� o n�mero do chamado. ARG[1] o id do chamado.',
        'Delete tickets' => 'Excluir Chamados',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Alerta! Este Chamado ser� removido da base de dados! Este Chamado esr� perdido permanentemente!',
        'Send Notification' => 'Enviar Notifica��o',
        'Param 1' => 'Par�metro 1',
        'Param 2' => 'Par�metro 2',
        'Param 3' => 'Par�metro 3',
        'Param 4' => 'Par�matro 4',
        'Param 5' => 'Par�metro 5',
        'Param 6' => 'Par�metro 6',
        'Send no notifications' => 'N�o enviar notifica��es',
        'Yes means, send no agent and customer notifications on changes.' => 'Sim significa \'n�o envie notifica��es ao atendente e ao cliente nas altera��es\'.',
        'No means, send agent and customer notifications on changes.' => 'N�o siginifica \'envie notifica��es ao atendente e ao cliente nas altera��es\'.',
        'Save' => 'Salvar',
        '%s Tickets affected! Do you really want to use this job?' => '%s Chamados afetados! Voc� quer realmente utilizar este processo?',
        '"}' => '',

        # Template: AdminGroupForm
        'Group Management' => 'Admin de Grupos',
        'Add Group' => '',
        'Add a new Group.' => '',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'O grupo admin � para uso na �rea de administra��o e o grupo stats � para uso na �rea de estat�sticas.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Crie novos grupos para manipular as permiss�es de acesso para diferentes grupos de agentes (exemplos: departamento de compras, departamento de suporte, departamento de vendas, etc...).',
        'It\'s useful for ASP solutions.' => 'Isto � �til para solu��es ASP.',

        # Template: AdminLog
        'System Log' => 'Registro do Sistema',
        'Time' => 'Hora',

        # Template: AdminMailAccount
        'Mail Account Management' => '',
        'Host' => 'Servidor',
        'Trusted' => 'Confi�vel',
        'Dispatching' => 'Despachando',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Todos os emails de entrada com uma conta ser� despachado na fila selecionada!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Se a sua conta for "trusted", os headers "X-OTRS" existentes na recep��o (para prioridade, ...) ser�o utilizados! O filtro ser� utilizado mesmo assim.',

        # Template: AdminNavigationBar
        'Users' => 'Usu�rios',
        'Groups' => 'Grupos',
        'Misc' => 'Variedades',

        # Template: AdminNotificationForm
        'Notification Management' => 'Admin de Notifica��es',
        'Notification' => 'Notifica��es',
        'Notifications are sent to an agent or a customer.' => 'Notifica��es ser�o enviadas a um Agent ou a um Cliente.',

        # Template: AdminPackageManager
        'Package Manager' => 'Admin Pacotes',
        'Uninstall' => 'Desinstalar',
        'Version' => 'Vers�o',
        'Do you really want to uninstall this package?' => 'Voc� quer realmente desinstalar este pacote?',
        'Reinstall' => 'Reinstalar',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Voc� quer realmente reinstalar este pacote?',
        'Continue' => '',
        'Install' => 'Instalar',
        'Package' => 'Pacotes',
        'Online Repository' => 'Reposit�rio OnLine',
        'Vendor' => 'Vendedor',
        'Upgrade' => 'Atualizar Vers�o',
        'Local Repository' => 'Reposit�rio Local',
        'Status' => '',
        'Overview' => 'Vis�o Geral',
        'Download' => '',
        'Rebuild' => 'Reconstruir',
        'ChangeLog' => '',
        'Date' => '',
        'Filelist' => '',
        'Download file from package!' => 'Baixar arquivo do pacote!',
        'Required' => 'Requerido',
        'PrimaryKey' => 'Chave Prim�ria',
        'AutoIncrement' => '',
        'SQL' => '',
        'Diff' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Log de Performance',
        'This feature is enabled!' => '',
        'Just use this feature if you want to log each request.' => '',
        'Of couse this feature will take some system performance it self!' => '',
        'Disable it here!' => '',
        'This feature is disabled!' => '',
        'Enable it here!' => '',
        'Logfile too large!' => 'Arquivo de log muito grande!',
        'Logfile too large, you need to reset it!' => 'Arquivo de log muito grande, voc� deve reinici�-lo!',
        'Range' => 'Intervalo',
        'Interface' => '',
        'Requests' => 'Requisi��es',
        'Min Response' => 'Tempo m�nimo de resposta',
        'Max Response' => 'Tempo m�ximo de resposta',
        'Average Response' => 'M�dia de tempo de resposta',
        'Period' => '',
        'Min' => '',
        'Max' => '',
        'Average' => '',

        # Template: AdminPGPForm
        'PGP Management' => 'Gerenciamento do PGP',
        'Result' => 'Resultado',
        'Identifier' => 'Identificador',
        'Bit' => '',
        'Key' => 'Chave',
        'Fingerprint' => '',
        'Expires' => 'Expira',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'Neste caso, voc� pode editar diretamente o "keyring" configurado no "SysConfig".',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Adm Filtros Postmaster',
        'Filtername' => 'Nome Filtro',
        'Match' => 'Busca',
        'Header' => 'Cabe�alho',
        'Value' => 'Valor',
        'Set' => 'Configurar',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Para despachar ou filtrar os e-mails entrantes baseados em "X-Headers". Express�es regularos tamb�m podem ser utilizadas.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => '',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Se utilizar express�es regulares, voc� pode usar o valor encontrado no () como [***] em \'Set\'.',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'Fila <-> Adm de Auto respostas',

        # Template: AdminQueueForm
        'Queue Management' => 'Admin de Filas',
        'Sub-Queue of' => 'Sub-Fila de',
        'Unlock timeout' => 'Tempo de expira��o de desbloqueio',
        '0 = no unlock' => '0 = sem desbloqueio',
        'Only business hours are counted.' => '',
        'Escalation - First Response Time' => '',
        '0 = no escalation' => '0 = sem escala��o',
        'Only business hours are counted.' => '',
        'Notify by' => '',
        'Escalation - Update Time' => '',
        'Notify by' => '',
        'Escalation - Solution Time' => '',
        'Follow up Option' => 'Op��o de continua��o',
        'Ticket lock after a follow up' => 'Bloqueio do chamado ap�s as continua��es',
        'Systemaddress' => 'Endere�o do Sistema',
        'Customer Move Notify' => 'Cliente Notificar Altera��o',
        'Customer State Notify' => 'Cliente Notificar Estado',
        'Customer Owner Notify' => 'Cliente Notificar Propriet�rio',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se um Atendente bloquear um chamado e ele n�o enviar uma resposta dentro deste tempo, o Chamado ser� desbloqueado automaticamente. Ent�o o Chamado ser� vis�vel para todos Atendentes.',
        'Escalation time' => 'Tempo de escala��o',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Se um Chamado, n�o for respondido dentro do prazo, ser�o apresentados.',
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
        'The current ticket state is' => 'O Estado do Chamado � ',
        'Your email address is new' => 'Seu  mail � novo',

        # Template: AdminRoleForm
        'Role Management' => 'Regras Admin',
        'Add Role' => '',
        'Add a new Role.' => '',
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
        'Select the role:user relations.' => 'Selecione a rela��o entre o papel/usu�rio.',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Gerenciamento de Tratamento (Sr./Sra.)',
        'Add Salutation' => '',
        'Add a new Salutation.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => '',
        'Limit' => 'Limite',
        'Go' => '',
        'Select Box Result' => 'Selecione a Caixa de Resultado',

        # Template: AdminService
        'Service Management' => '',
        'Add Service' => '',
        'Add a new Service.' => '',
        'Sub-Service of' => '',

        # Template: AdminSession
        'Session Management' => 'Gerenciamento de Sess�es',
        'Sessions' => 'Sess�es',
        'Uniq' => '�nico',
        'Kill all sessions' => '',
        'Session' => 'Sess�o',
        'Content' => 'Conte�do',
        'kill session' => 'Finalizar sess�o',

        # Template: AdminSignatureForm
        'Signature Management' => 'Gerenciamento de Assinaturas',
        'Add Signature' => '',
        'Add a new Signature.' => '',

        # Template: AdminSLA
        'SLA Management' => '',
        'Add SLA' => '',
        'Add a new SLA.' => '',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'Gerenciamento S/MIME',
        'Add Certificate' => 'Adicionar Certificado',
        'Add Private Key' => 'Adicionar Chave Privada',
        'Secret' => 'Senha',
        'Hash' => '',
        'In this way you can directly edit the certification and private keys in file system.' => 'Neste caso, voc� pode editar diretamente a certifica��o e chaves privadas no sistema de arquivos.',

        # Template: AdminStateForm
        'State Management' => '',
        'Add State' => '',
        'Add a new State.' => '',
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
        'New' => 'Novo',
        'New Group' => 'Novo Grupo',
        'Group Ro' => 'Grupo Somente Leitura',
        'New Group Ro' => 'Novo Grupo Somente Leitura',
        'NavBarName' => 'Nome da Barra de Navega��o',
        'NavBar' => 'Barra de Navega��o',
        'Image' => 'Imagem',
        'Prio' => 'Prioridade',
        'Block' => 'Bloquear',
        'AccessKey' => 'Chave de Acesso',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Gerenciamento dos Endere�os de E-mail do Sistema',
        'Add System Address' => '',
        'Add a new System Address.' => '',
        'Realname' => 'Nome',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Todos os emails entrantes com este Email(To:) ser�o despachados na fila selecionada!',

        # Template: AdminTypeForm
        'Type Management' => '',
        'Add Type' => '',
        'Add a new Type.' => '',

        # Template: AdminUserForm
        'User Management' => 'Gerenciamento de Usu�rios',
        'Add User' => '',
        'Add a new Agent.' => '',
        'Login as' => 'Logar-se como',
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
        'Page' => 'P�gina',
        'Detail' => 'Detalhe',

        # Template: AgentLookup
        'Lookup' => 'Buscar',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'Checar a Ortografia',
        'spelling error(s)' => 'erro(s) ortogr�ficos',
        'or' => 'ou',
        'Apply these changes' => 'Aplicar estas modifica��es',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Voc� quer realmente remover este objeto?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'Selecione as restri��es para caracterizar o status',
        'Fixed' => 'Fixado',
        'Please select only one element or turn off the button \'Fixed\'.' => 'Por favor, selecione apenas um elemento ou desmarque o bot�o \'Fixado\'.',
        'Absolut Period' => 'Per�odo Absoluto',
        'Between' => 'Entre',
        'Relative Period' => 'Per�odo Relativo',
        'The last' => 'O �ltimo',
        'Finish' => 'Finalizar',
        'Here you can make restrictions to your stat.' => 'Aqui voc� pode criar as restri��es do seu status',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Se voc� remover a sele��o da caixa \'Fixado\', o atendente que gerar o status pode alterar os atributos do elemento correspondente.',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Inser��o das especifica��es comuns',
        'Permissions' => 'Permiss�es',
        'Format' => 'Formato',
        'Graphsize' => 'Tamanho do Gr�fico',
        'Sum rows' => 'Somar linhas',
        'Sum columns' => 'Somar colunas',
        'Cache' => '',
        'Required Field' => 'Campo Requerido',
        'Selection needed' => '� necess�rio a sele��o',
        'Explanation' => 'Explana��o',
        'In this form you can select the basic specifications.' => 'Neste formul�rio voc� pode selecionar as especifica��es b�sicas.',
        'Attribute' => 'Atributo',
        'Title of the stat.' => 'T�tulo da estat�stica.',
        'Here you can insert a description of the stat.' => 'Aqui voc� pode inserir uma descri��o da estat�stica.',
        'Dynamic-Object' => 'Objeto-Din�mico',
        'Here you can select the dynamic object you want to use.' => 'Aqui voc� pode selecionar o objeto din�mico que voc� quer usar.',
        '(Note: It depends on your installation how many dynamic objects you can use)' => 'A quantidade de objetos din�micos depende da sua instala��o',
        'Static-File' => 'Arquivo-Est�tico',
        'For very complex stats it is possible to include a hardcoded file.' => 'Para estat�sticas muito complexas � poss�vel incluir um c�digo fonte.',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'Se um novo c�digo estiver dispon�vel ele pode ser� exibido e voc� poder� escolh�-lo. ',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Configura��es de permiss�o. Voc� pode selecionar um ou mais grupos para que as estat�sticas configuradas sejam exibidas para agentes diferentes.',
        'Multiple selection of the output format.' => 'M�ltiplas escolhas de formato de sa�da.',
        'If you use a graph as output format you have to select at least one graph size.' => 'Se voc� utiliza um gr�fico como formato de sa�da, voc� deve selecionar ao menos um tamanho de gr�fico.',
        'If you need the sum of every row select yes' => 'Se voc� necessita da soma de todos as linhas selecione SIM',
        'If you need the sum of every column select yes.' => 'Se voc� necessita da soma de todas as colunas seleciona SIM',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'A maioria das estat�sticas podem ser mantidas em cache. Isto tornar� sua visualiza��o mais r�pida.',
        '(Note: Useful for big databases and low performance server)' => '(Nota: �til para base de dados grandes e servidores de baixa performance)',
        'With an invalid stat it isn\'t feasible to generate a stat.' => '',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => '',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'Selecione os elementos para cada conjunto de valores',
        'Scale' => 'Escala',
        'minimal' => 'm�nimo',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'Lembre que a escala para o conjunto de valores deve ser mair que o eixo X (ex.: Eixo X => M�s, Conjunto de Valores => Ano).',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '� poss�vel escolher um ou dois elementos. Ent�o voc� pode selecionar os atributos dos elementos. Cada atributo ser� mostrado como um conjunto �nico de valores. Se voc� n�o selecionar nenhum atributo todos os atributos do elemento ser�o utilizados para gerar a estat�stica. Assim como um novo atributo � adicionado desde a �ltima configura��o.',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'Selecione o elemento que ser� usado no eixo X',
        'maximal period' => 'per�odo m�ximo',
        'minimal scale' => 'per�odo m�nimo',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => 'Aqui voc� pode definir o eixo X. Voc� pode selecionar um elemento atrav�s do \'radio button\'. Ent�o voc� deve selecionar dois ou mais atributos do elemento. Se n�o efetuou nenhum sele��o, todos os atributos do elemento ser�o utilizados se voc� gerar uma estat�stica. Assim como um novo atributo � adicionado desde a �ltima configura��o. ',

        # Template: AgentStatsImport
        'Import' => 'Importar',
        'File is not a Stats config' => 'Este n�o � um arquivo de configura��o',
        'No File selected' => 'Nenhum arquivo selecionado',

        # Template: AgentStatsOverview
        'Object' => 'Objeto',

        # Template: AgentStatsPrint
        'Print' => 'Imprimir',
        'No Element selected.' => 'Nenhum elemento selecionado.',

        # Template: AgentStatsView
        'Export Config' => 'Exportar Configura��o',
        'Information about the Stat' => 'Informa��es sobre a Estat�stica',
        'Exchange Axis' => 'Trocar Eixo',
        'Configurable params of static stat' => 'Par�metros configur�veis da estat�stica est�tica',
        'No element selected.' => 'Nenhum elemento selecionado.',
        'maximal period from' => '',
        'to' => 'para',
        'Start' => 'In�cio',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '',

        # Template: AgentTicketBounce
        'Bounce ticket' => 'Devolver chamado',
        'Ticket locked!' => 'Chamado bloqueado!',
        'Ticket unlock!' => 'Chamado desbloqueado!',
        'Bounce to' => 'Devolver para',
        'Next ticket state' => 'Pr�ximo estado do chamado',
        'Inform sender' => 'Informe o remetente',
        'Send mail!' => 'Enviar email!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Executar A��o no Chamado',
        'Spell Check' => 'Checar Ortografia',
        'Note type' => 'Tipo de nota',
        'Unlock Tickets' => 'Desbloquear Chamados',

        # Template: AgentTicketClose
        'Close ticket' => 'Fechar o chamado',
        'Previous Owner' => 'Dono Anterior',
        'Inform Agent' => 'Informar Atendente',
        'Optional' => 'Opcional',
        'Inform involved Agents' => 'Informar os Atendentes Envolvidos',
        'Attach' => 'Anexo',
        'Next state' => 'Novo Estado',
        'Pending date' => 'Data da pend�ncia',
        'Time units' => 'Unidades de tempo',

        # Template: AgentTicketCompose
        'Compose answer for ticket' => 'Comp�r uma resposta para o chamado',
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
        'Refresh' => 'Atualizar',
        'Clear To' => 'Limpar',

        # Template: AgentTicketEscalationView
        'Ticket Escalation View' => '',
        'Escalation' => '',
        'Today' => '',
        'Tomorrow' => '',
        'Next Week' => '',
        'up' => 'normal',
        'down' => 'inversa',
        'Escalation' => '',
        'Locked' => 'Bloqueado',

        # Template: AgentTicketForward
        'Article type' => 'Tipo de artigo',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Alterar os campos em branco no chamado',

        # Template: AgentTicketHistory
        'History of' => 'Hist�rico de',

        # Template: AgentTicketLocked

        # Template: AgentTicketMailbox
        'Mailbox' => 'Caixa de Entrada',
        'Tickets' => 'Chamado',
        'of' => 'de',
        'Filter' => 'Filtro',
        'New messages' => 'Mensagens novas',
        'Reminder' => 'Lembretes',
        'Sort by' => 'Ordenado pela',
        'Order' => 'Ordem',

        # Template: AgentTicketMerge
        'Ticket Merge' => 'Unir Chamado',
        'Merge to' => 'Unir com',

        # Template: AgentTicketMove
        'Move Ticket' => 'Mover Chamado',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Adicionar nota ao chamado',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Modificar o propriet�rio do chamado',

        # Template: AgentTicketPending
        'Set Pending' => 'Marcar Pendente',

        # Template: AgentTicketPhone
        'Phone call' => 'Chamada telef�nica',
        'Clear From' => 'Limpar',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Texto',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Informa��o do Chamado',
        'Accounted time' => 'Tempo contabilizado',
        'First Response Time' => '',
        'Update Time' => '',
        'Solution Time' => '',
        'Linked-Object' => 'Objeto "Linkado"',
        'Parent-Object' => 'Objeto Pai',
        'Child-Object' => 'Objeto Filho',
        'by' => 'por',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Modificar a prioridade do chamado',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Chamados mostrados',
        'Tickets available' => 'Chamados dispon�veis',
        'All tickets' => 'Todos chamados',
        'Queues' => 'Filas',
        'Ticket escalation!' => 'Escala��o de chamados!',

        # Template: AgentTicketQueueTicketView
        'Service Time' => '',
        'Your own Ticket' => 'Seu pr�prio Chamado',
        'Compose Follow up' => 'Compor Continua��o',
        'Compose Answer' => 'Comp�r resposta',
        'Contact customer' => 'Contatar cliente',
        'Change queue' => 'Modificar Fila',

        # Template: AgentTicketQueueTicketViewLite

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => '',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Busca de Chamado',
        'Profile' => 'Perfil',
        'Search-Template' => 'Modelo de Busca',
        'TicketFreeText' => 'Texto livre Chamado',
        'Created in Queue' => 'Criado na Fila',
        'Close Times' => '',
        'No close time settings.' => '',
        'Ticket closed' => '',
        'Ticket closed between' => '',
        'Result Form' => 'Resultado',
        'Save Search-Profile as Template?' => 'Salvar o Perfil de Busca como Modelo?',
        'Yes, save it with name' => 'Sim, salve-o com o nome',

        # Template: AgentTicketSearchOpenSearchDescription

        # Template: AgentTicketSearchResult
        'Change search options' => 'Alterar as o��es de busca',

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketSearchResultShort

        # Template: AgentTicketStatusView
        'Ticket Status View' => 'Visualiza��o do Status do Chamado',
        'Open Tickets' => 'Chamados Abertos',

        # Template: AgentTicketZoom
        'Expand View' => '',
        'Collapse View' => '',

        # Template: AgentWindowTab

        # Template: AJAX

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
        'Login' => '',
        'Lost your password?' => 'Esqueceu sua senha?',
        'Request new password' => 'Solicitar uma nova senha',
        'Create Account' => 'Criar Conta',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Bem-vindo %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Hora',
        'No time settings.' => 'Sem configura��es de hora.',

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Clique aqui para relatar um erro!',

        # Template: Footer
        'Top of Page' => 'Topo da P�gina',

        # Template: FooterSmall

        # Template: Header

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Instalador Web',
        'Welcome to %s' => '',
        'Accept license' => '',
        'Don\'t accept license' => '',
        'Admin-User' => 'Usu�rio do Administrador',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '',
        'Admin-Password' => 'Senha do Administrador',
        'Database-User' => 'Usu�rio da Base',
        'default \'hot\'' => 'padr�o \'hot\'',
        'DB connect host' => 'Servidor da Base',
        'Database' => 'Base de Dados',
        'Default Charset' => 'Conjunto de Caracteres Padr�o',
        'utf8' => '',
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
        'Use utf-8 it your database supports it!' => 'A sua Base de dados suporta utf-8!',
        'Default Language' => 'Idioma Padr�o',
        '(Used default language)' => '(Idioma padr�o utilizado)',
        'CheckMXRecord' => 'Averiguar MX',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => 'Checar os registros do MX de endere�os de e-mail utilizados na composi��o de uma resposta. N�o utilizar checagem de registros do MX se o seu servidor OTRS estiver sib um acesso discado $!',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Para poder utilizar o OTRS voc� deve',
        'Restart your webserver' => 'Reiniciar o Webserver',
        'After doing so your OTRS is up and running.' => 'Ap�s isto, ent�o seu OTRS est� funcionando.',
        'Start page' => 'Iniciar p�gina',
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

        # Template: Test
        'OTRS Test Page' => 'P�gina de Teste Service Desk SAP',
        'Counter' => 'Contador',

        # Template: Warning
        # Misc
        'Edit Article' => '',
        'Change roles <-> groups settings' => 'Alterar configura��es Regras <-> Grupos',
        'Ticket Number Generator' => 'Gerador de N�meros de Chamados',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificador Chamado. Algumas pessoas gostam de usar por exemplo \'Chamado#\, \'Chamado#\' ou \'MeuChamado#\')',
        'Create new Phone Ticket' => 'Criar novo Fone Chamado',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Neste caso, voc� pode editar diretamente a "keyring" configurada no Kernel/Config.pm.',
        'Symptom' => 'Sintoma',
        'U' => 'C',
        'A message should have a To: recipient!' => 'Uma mensagem deve possuir um To: destinat�rio!',
        'Options of the current user who requested this action (e. g. OTRS_CURRENT_USERFIRSTNAME)' => 'Op��es do usu�rio atual que requisitou esta a��o (ex.: OTRS_CURRENT_USERFIRSTNAME)',
        'Customer history search (e. g. "ID342425").' => 'Busca no Hist�rico do cliente (exemplo: "ID342425")',
        'for agent firstname' => 'Nome do Atendente',
        'Close!' => 'Fechar!',
        'The message being composed has been closed.  Exiting.' => 'A mensagem sendo composta foi fechada. Saindo.',
        'A web calendar' => 'Calend�rio',
        'to get the realname of the sender (if given)' => 'para obter o nome do remetente (se possuir no email)',
        'Notification (Customer)' => '',
        'Select Source (for add)' => 'Selecione Origem (para adi��o)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',
        'Config options (e. g. OTRS_CONFIG_HttpType)' => 'Op��es de configura��o (ex.: OTRS_CONFIG_HttpType)',
        'Locked tickets' => 'Chamados Bloqueados',
        'Queue ID' => 'ID da Fila',
        'Home' => 'In�cio',
        'System History' => 'Hist�rico do Sistema',
        'customer realname' => 'Nome do cliente',
        'Pending messages' => 'Mensagens pendentes',
        'Modules' => 'Modulos',
        'for agent login' => 'Login do Atendente',
        'Keyword' => 'Palavra-Chave',
        'Close type' => 'Tipo de fechamento',
        'for agent user id' => 'Id do Atendente',
        'sort upward' => 'ordem crescente',
        'Change user <-> group settings' => 'Modificar configura��es de usu�rios <-> grupos',
        'Problem' => 'Problema',
        'next step' => 'pr�ximo passo',
        'Customer history search' => 'Busca no Hist�rico do cliente',
        'Options of the ticket data (e. g. OTRS_TICKET_TicketNumber, OTRS_TICKET_TicketID, OTRS_TICKET_Queue, OTRS_TICKET_State)' => 'Op��es de dados do Chamado (e. g. OTRS_TICKET_TicketNumber, OTRS_TICKET_TicketID, OTRS_TICKET_Queue, OTRS_TICKET_State)',
        'Admin-Email' => 'Email Admin.',
        'Options of the ticket data (e. g. OTRS_TICKET_Number, OTRS_TICKET_ID, OTRS_TICKET_Queue, OTRS_TICKET_State)' => 'Op��es de dados do chamado (ex.: OTRS_TICKET_Number, OTRS_TICKET_ID, OTRS_TICKET_Queue, OTRS_TICKET_State;)',
        'A message must be spell checked!' => 'A mensagem necessita ser verificada ortograficamente!',
        'Options of the current customer user data (e. g. OTRS_CUSTOMER_DATA_USERFIRSTNAME)' => 'Op��es de dados do usu�rio do cliente atual (ex.: OTRS_CUSTOMER_DATA_USERFIRSTNAME)',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'Seu email com o n�mero de chamado "<OTRS_TICKET>" foi devolvido para "<OTRS_BOUNCE_TO>". Contate este endere�o para mais informa��es.',
        'ArticleID' => 'Id.do artigo',
        'A message should have a body!' => 'A mensagem deve conter um texto!',
        'All Agents' => 'Todos os Atendentes',
        'Keywords' => 'Palavras-Chave',
        'No * possible!' => 'N�o s�o poss�veis *!',
        'Options ' => 'Op��es',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
        'Message for new Owner' => 'Mensagem para um novo Propriet�rio',
        'to get the first 5 lines of the email' => 'para obter as 5 primeiras linhas do email',
        'Last update' => '�ltima Atualiza��o',
        'to get the first 20 character of the subject' => 'para obter os 20 primeiros caracteres do assunto',
        'Select the customeruser:service relations.' => '',
        'Advisory' => 'Aviso',
        'FileManager' => 'Adm Arquivo',
        'Pending type' => 'Tipo de pend�ncia',
        'Comment (internal)' => 'Coment�rio (interno)',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Op��es de dono do chamado (ex.: &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'This window must be called from compose window' => 'Esta janela deve ser chamada da janela de composi��o',
        'You need min. one selected Ticket!' => 'Voc� deve selecionar ao menos  1(um) chamado!',
        '(Used ticket number format)' => '(Formato de Chamado utilizado)',
        'Fulltext' => 'Texto Completo',
        'Incident' => 'Incidente',
        'All Agent variables.' => 'Todas as vari�veis do Atendente',
        ' (work units)' => ' (unidades de trabalho)',
        'All Customer variables like defined in config option CustomerUser.' => 'Todas as vari�veis do cliente como foram definidas nas op��es de configura��o de "usu�rio"',
        'accept license' => 'aceitar licen�a',
        'for agent lastname' => 'Sobrenome do Atendente',
        'Reminder messages' => 'Mensagens com lembretes',
        'A message should have a subject!' => 'Uma mensagem deve conter um assunto!',
        'Don\'t forget to add a new user to groups!' => 'N�o esque�a de adicionar um novo usu�rio nos grupos!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Voc� precisa de um endere�o de email (exemplo: cliente@exemplo.com.br) no To:!',
        'You need to account time!' => 'Voc� deve contabilizar o tempo!',
        'System Settings' => 'Configura��es Sistema',
        'WebWatcher' => 'Visitante',
        'Finished' => 'Finalizado',
        'Split' => 'Dividir',
        'D' => '',
        'All messages' => 'Todas as mensagens',
        'Artefact' => 'Artefato',
        'A article should have a title!' => 'O Artigo dever� ter um T�tulo!',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
        'don\'t accept license' => 'n�o acentiar a licen�a',
        'A web mail client' => 'Webmail Cliente',
        'WebMail' => '',
        'Name is required!' => 'O Nome � requerido',
        'kill all sessions' => 'Finalizar todas as sess�es',
        'to get the from line of the email' => 'para obter a linha "From" do email',
        'Solution' => 'Solu��o',
        'QueueView' => 'Fila',
        'Options of the ticket data (e. g. OTRS_TICKET_TicketNumber, OTRS_TICKET_ID, OTRS_TICKET_Queue, OTRS_TICKET_State)' => 'Op��es de dados do chamado (ex.: OTRS_TICKET_TicketNumber, OTRS_TICKET_ID, OTRS_TICKET_Queue, OTRS_TICKET_State)',
        'Select Box' => 'Caixa de Sele��o',
        'Welcome to OTRS' => 'Bem-vindo ao OTRS',
        'modified' => 'modificado',
        'Escalation in' => 'Escalado em',
        'sort downward' => 'ordem decrescente',
        'You need to use a ticket number!' => 'Voc� deve utilizar um n�mero de chamado!',
        'A web file manager' => 'Adm Arquivo Web',
        'Have a lot of fun!' => 'Divirta-se!',
        'send' => 'enviar',
        'Note Text' => 'Nota',
        'POP3 Account Management' => 'Gerenciamento de Contas POP3',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
        'System State Management' => 'Gerenciamento de Estados do Sistema',
        'PhoneView' => 'Chamada',
        'maximal period form' => 'formul�rio de per�odo m�ximo',
        'TicketID' => 'Id.do Chamado',
        'Modified' => 'Modificado',
        'Ticket selected for bulk action!' => 'Chamado selecionado para execu��o de a��o!',

        'Link Object: %s' => '',
        'Unlink Object: %s' => '',
        'Linked as' => '',
        'Can not create link with %s!' => '',
        'Can not delete link with %s!' => '',
        'Object already linked as %s.' => '',
        'Priority Management' => '',
        'Add a new Priority.' => '',
        'Add Priority' => '',
        'Ticket Type is required!' => '',
        'Module documentation' => '',
        'Added!' => '',
        'Updated!' => '',
    };
    # $$STOP$$
    return;
}

1;
