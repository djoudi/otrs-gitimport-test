# Kernel/Language/fr.pm - provides fr language translation
# Copyright (C) 2002 Bernard Choppy <choppy at imaginet.fr>
# Copyright (C) 2002 Nicolas Goralski <ngoralski at oceanet-technology.com>
# --
# $Id: fr.pm,v 1.25 2004-01-26 00:27:19 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::fr;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.25 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;
# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Mon Jan 26 01:14:08 2004 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y';
    $Self->{DateInputFormatLong} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 minutes',
      ' 5 minutes' => ' 5 minutes',
      ' 7 minutes' => ' 7 minutes',
      '(Click here to add)' => '',
      '10 minutes' => '10 minutes',
      '15 minutes' => '15 minutes',
      'AddLink' => 'Ajouter un lien',
      'Admin-Area' => 'Zone d\'administration',
      'agent' => '',
      'Agent-Area' => '',
      'all' => 'tout',
      'All' => 'Tout',
      'Attention' => 'Attention',
      'before' => '',
      'Bug Report' => 'Rapport d\'anomalie',
      'Cancel' => 'Annuler',
      'change' => 'modifier',
      'Change' => 'Modifier',
      'change!' => 'modifier&nbsp;!',
      'click here' => 'Cliquer l�',
      'Comment' => 'Commentaire',
      'Customer' => 'Client',
      'customer' => '',
      'Customer Info' => 'Information client',
      'day' => 'jour',
      'day(s)' => '',
      'days' => 'jours',
      'description' => 'description',
      'Description' => 'Description',
      'Dispatching by email To: field.' => 'R�partition par le champs \'�\' de l\'email',
      'Dispatching by selected Queue.' => 'R�partition par la file s�lectionn�e',
      'Don\'t show closed Tickets' => '',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Cela ne fonctionne pas avec l\'ID utilisateur 1 (Compte Syst�me)! Veuillez cr�er un nouvel utilisateur!',
      'Done' => 'Fait',
      'end' => 'fin',
      'Error' => 'Erreur',
      'Example' => 'Exemple',
      'Examples' => 'Exemples',
      'Facility' => 'Facilit�',
      'FAQ-Area' => '',
      'Feature not active!' => '',
      'go' => 'Go',
      'go!' => 'c\'est parti&nbsp;!',
      'Group' => 'Groupe',
      'Hit' => 'Hit',
      'Hits' => 'Hits',
      'hour' => 'heure',
      'hours' => 'heures',
      'Ignore' => 'Ignorer',
      'invalid' => 'invalide',
      'Invalid SessionID!' => 'ID de Session Invalide',
      'Language' => 'Langue',
      'Languages' => 'Langues',
      'last' => '',
      'Line' => 'Ligne',
      'Lite' => 'all�g�e',
      'Login failed! Your username or password was entered incorrectly.' => 'La connection a �chou� ! Votre nom d\'utilisateur ou votre mot de passe a �t� saisie incorrectement',
      'Logout successful. Thank you for using OTRS!' => 'D�connection r�ussie. Merci d\'avoir utilis� OTRS!',
      'Message' => 'Message',
      'minute' => 'minute',
      'minutes' => 'minutes',
      'Module' => 'Module',
      'Modulefile' => 'Fichier de module',
      'month(s)' => '',
      'Name' => 'Nom',
      'New Article' => '',
      'New message' => 'Nouveau message',
      'New message!' => 'Nouveau message&nbsp;!',
      'No' => 'Non',
      'no' => 'aucune',
      'No entry found!' => '',
      'No suggestions' => 'Pas de suggestions',
      'none' => 'aucun',
      'none - answered' => 'aucun - r�pondu',
      'none!' => 'aucun&nbsp;!',
      'Normal' => '',
      'Off' => '�teint',
      'off' => '�teint',
      'On' => 'Allum�',
      'on' => 'allum�',
      'Password' => 'Mot de Passe',
      'Pending till' => 'En attendant jusqu\'�',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Il faut r�pondre � ce(s) ticket(s) pour revenir � la vue normale de la file.',
      'Please contact your admin' => 'Veuillez contacter votre admnistrateur',
      'please do not edit!' => 'Ne pas modifier&nbsp;!',
      'Please go away!' => '',
      'possible' => 'possible',
      'Preview' => '',
      'QueueView' => 'Vue file',
      'reject' => 'rejet�',
      'replace with' => 'remplacer par',
      'Reset' => 'Remise � z�ro',
      'Salutation' => 'Salutation',
      'Session has timed out. Please log in again.' => '',
      'Show closed Tickets' => '',
      'Signature' => 'Signature',
      'Sorry' => 'D�sol�',
      'Stats' => 'Statistiques',
      'Subfunction' => 'sous-fonction',
      'submit' => 'soumettre',
      'submit!' => 'soumettre&nbsp;!',
      'system' => '',
      'Take this User' => '',
      'Text' => 'Texte',
      'The recommended charset for your language is %s!' => 'Les jeux de charact�res pour votre langue est %s!',
      'Theme' => 'Th�me',
      'There is no account with that login name.' => 'Il n\'y a aucun compte avec ce login',
      'Timeover' => 'Temp �coul�',
      'To: (%s) replaced with database email!' => '',
      'top' => 'haut',
      'update' => 'Mise � jour',
      'Update' => '',
      'update!' => 'actualiser&nbsp;!',
      'User' => 'Utilisateur',
      'Username' => 'Nom d\'utilisateur',
      'Valid' => 'Valide',
      'Warning' => 'Attention',
      'week(s)' => '',
      'Welcome to OTRS' => 'Bienvenue � OTRS',
      'Word' => 'Mot',
      'wrote' => '�crit',
      'year(s)' => '',
      'yes' => 'oui',
      'Yes' => 'Oui',
      'You got new message!' => 'Vous avez un nouveau message',
      'You have %s new message(s)!' => 'Vous avez %s nouveau(x) message(s)',
      'You have %s reminder ticket(s)!' => 'Vous avez %s rappel(s) de ticket(s)',

    # Template: AAAMonth
      'Apr' => 'Avr',
      'Aug' => 'Aou',
      'Dec' => 'D�c',
      'Feb' => 'F�v',
      'Jan' => 'Jan',
      'Jul' => 'Juil',
      'Jun' => 'Juin',
      'Mar' => 'Mar',
      'May' => 'Mai',
      'Nov' => 'Nov',
      'Oct' => 'Oct',
      'Sep' => 'Sep',

    # Template: AAAPreferences
      'Closed Tickets' => '',
      'Custom Queue' => 'File d\'attente personnelle',
      'Follow up notification' => 'Notification de suivi',
      'Frontend' => 'Interface',
      'Mail Management' => 'Gestion des Emails',
      'Max. shown Tickets a page in Overview.' => '',
      'Max. shown Tickets a page in QueueView.' => '',
      'Move notification' => 'Notification de mouvement',
      'New ticket notification' => 'Notification de nouveau ticket',
      'Other Options' => 'Autres options',
      'PhoneView' => 'Vue t�l�phone',
      'Preferences updated successfully!' => 'Les pr�f�rences ont bien �t� mises � jours',
      'QueueView refresh time' => 'Temps de rafra�chissement de la vue des files',
      'Screen after new phone ticket' => '',
      'Select your default spelling dictionary.' => '',
      'Select your frontend Charset.' => 'Choix du jeu de caract�res de l\'interface',
      'Select your frontend language.' => 'Choix de la langue de l\'interface',
      'Select your frontend QueueView.' => 'Choisissez votre interface de vue des files',
      'Select your frontend Theme.' => 'Choix du th�me de l\'interface',
      'Select your QueueView refresh time.' => 'Choix du d�lai de rafra�chissement de la vue des files',
      'Select your screen after creating a new ticket via PhoneView.' => '',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Me pr�venir si un client envoie un suivi (follow-up) et que je suis le propri�taire du ticket.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Me pr�venir si un ticket est d�plac� dans une file personnallis�',
      'Send me a notification if a ticket is unlocked by the system.' => 'Me pr�venir si un ticket est d�v�rouill� par le syst�me',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Me pr�venir si un nouveau ticket appara�t dans mes files personnelles.',
      'Show closed tickets.' => '',
      'Spelling Dictionary' => '',
      'Ticket lock timeout notification' => 'Pr�venir du d�passement du d�lai d\'un verrou ',
      'TicketZoom' => '',

    # Template: AAATicket
      '1 very low' => '1 tr�s bas',
      '2 low' => '2 bas',
      '3 normal' => '3 normal',
      '4 high' => '4 important',
      '5 very high' => '5 tr�s important',
      'Action' => 'Action',
      'Age' => 'Vieillir',
      'Article' => 'Article',
      'Attachment' => 'Pi�ce jointe',
      'Attachments' => 'Pi�ces jointes',
      'Bcc' => 'Copie Invisible',
      'Bounce' => 'Renvoyer',
      'Cc' => 'Copie ',
      'Close' => 'Fermer',
      'closed successful' => 'cl�ture r�ussie',
      'closed unsuccessful' => 'cl�ture manqu�e',
      'Compose' => 'Composer',
      'Created' => 'Cr�� ',
      'Createtime' => 'Cr�ation du ',
      'email' => 'courriel',
      'eMail' => 'courriel',
      'email-external' => 'message externe',
      'email-internal' => 'message interne',
      'Forward' => 'Transmettre',
      'From' => 'De ',
      'high' => 'Important',
      'History' => 'Historique',
      'If it is not displayed correctly,' => 'S\'il n\'est pas affich� correctement',
      'lock' => '',
      'Lock' => 'V�rrouiller',
      'low' => 'confort de fonctionnement',
      'Move' => 'D�placer',
      'new' => 'nouveau',
      'normal' => 'bloque une fonction',
      'note-external' => 'Note externe',
      'note-internal' => 'Note interne',
      'note-report' => 'Note rapport',
      'open' => 'ouvrir',
      'Owner' => 'Propri�taire',
      'Pending' => 'En attente',
      'pending auto close+' => 'En attendant la fermeture automatique(+)',
      'pending auto close-' => 'En attendant la fermeture automatique(-)',
      'pending reminder' => 'En attendant le rappel',
      'phone' => 't�l�phone',
      'plain' => 'tel quel',
      'Priority' => 'Priorit�',
      'Queue' => 'File',
      'removed' => 'supprim�',
      'Sender' => '�metteur',
      'sms' => 'sms',
      'State' => '�tat',
      'Subject' => 'Sujet',
      'This is a' => 'Ceci est un',
      'This is a HTML email. Click here to show it.' => 'Ceci est un message au format HTML&nbsp;; cliquer ici pour l\'afficher.',
      'This message was written in a character set other than your own.' => 'Ce message a �t� &eaute;crit dans un type de charact� autre que le v&ociric;tre',
      'Ticket' => 'Ticket',
      'Ticket "%s" created!' => '',
      'To' => '� ',
      'to open it in a new window.' => 'Pour l\'ouvrir dans une nouvelle fen�tre',
      'unlock' => 'd�verrouiller',
      'Unlock' => 'D�verrouiller',
      'very high' => 'bloque un service entier',
      'very low' => 'confort intellectuel',
      'View' => 'Vue',
      'webrequest' => 'Requete par le web',
      'Zoom' => 'D�tails',

    # Template: AAAWeekDay
      'Fri' => 'Ven',
      'Mon' => 'Lun',
      'Sat' => 'Sam',
      'Sun' => 'Dim',
      'Thu' => 'Jeu',
      'Tue' => 'Mar',
      'Wed' => 'Mer',

    # Template: AdminAttachmentForm
      'Add' => '',
      'Attachment Management' => 'Gestion des attachements',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'Ajouter une r�ponse automatique',
      'Auto Response From' => 'R�ponse automatique de ',
      'Auto Response Management' => 'Gestion des r�ponses automatiques',
      'Change auto response settings' => 'Modifier les param�tres de r�ponses automatiques',
      'Note' => 'Note',
      'Response' => 'R�ponse',
      'to get the first 20 character of the subject' => 'pour avoir les 20 premiers charact�res du sujet ',
      'to get the first 5 lines of the email' => 'pour avoir les 5 premi�res ligne du mail',
      'to get the from line of the email' => 'pour avoir les lignes \'From\' du mail',
      'to get the realname of the sender (if given)' => 'pour avoir le nom r�el de l\'utilisateur (s\il est donn�)',
      'to get the ticket id of the ticket' => '',
      'to get the ticket number of the ticket' => 'pour avoir le num�ro du ticket',
      'Type' => 'Type',
      'Useable options' => 'Options accessibles',

    # Template: AdminCharsetForm
      'Charset' => 'Jeu de charact�re',
      'System Charset Management' => 'Gestion du jeu de caract�res syst�me',

    # Template: AdminCustomerUserForm
      'Customer User Management' => 'Gestion des clients utilisateurs',
      'Customer user will be needed to to login via customer panels.' => 'Les clients utilisateurs seront invit� � se connecter par la page client.',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserGroupChangeForm
      'Change %s settings' => 'Changer les param&ecirc;tres de %s',
      'Customer User <-> Group Management' => '',
      'Full read and write access to the tickets in this group/queue.' => '',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => '',
      'Permission' => '',
      'Read only access to the ticket in this group/queue.' => '',
      'ro' => '',
      'rw' => '',
      'Select the user:group permissions.' => '',

    # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Modifier les param�tres utilisateurs <-> groupes',

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Email de l\'administrateur',
      'Body' => 'Corps',
      'OTRS-Admin Info!' => 'Information de l\'administrateur OTRS',
      'Recipents' => 'R�cipients',
      'send' => '',

    # Template: AdminEmailSent
      'Message sent to' => 'Message envoy� �',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'De nouveaux groupes permettront de g�rer les droits d\'acc�s pour les diff�rents groupes d\'un agent (exemple&nbsp;: achats, comptabilit�, support, ventes...).',
      'Group Management' => 'Administration des groupes',
      'It\'s useful for ASP solutions.' => 'C\'est utile pour les fournisseurs d\'applications.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Le groupe admin permet d\'acc�der � la zone d\'administration et le groupe stats � la zone de statistiques.',

    # Template: AdminLog
      'System Log' => 'Logs du Syst�me',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Email de l\'administrateur.',
      'Attachment <-> Response' => '',
      'Auto Response <-> Queue' => 'R�ponse Automatique <-> Files',
      'Auto Responses' => 'R�ponses automatiques',
      'Customer User' => 'Client Utilisateur',
      'Customer User <-> Groups' => '',
      'Email Addresses' => 'Adresses �lectroniques',
      'Groups' => 'Groupes',
      'Logout' => 'D�connexion',
      'Misc' => 'Divers',
      'Notifications' => '',
      'PostMaster Filter' => '',
      'PostMaster POP3 Account' => 'PostMaster Compte POP3',
      'Responses' => 'R�ponses',
      'Responses <-> Queue' => 'R�ponses <-> Files',
      'Select Box' => 'Requ�te SQL libre.',
      'Session Management' => 'Gestion des sessions',
      'Status' => '',
      'System' => 'Syst�me',
      'User <-> Groups' => 'Utilisateur <-> Groupes',

    # Template: AdminNotificationForm
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => '',
      'Notification Management' => '',
      'Notifications are sent to an agent or a customer.' => '',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => '',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => '',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => '',

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Tout les mails entrants avec un compte seront r�partis dans la file s�lectionn�',
      'Dispatching' => 'R�partition',
      'Host' => 'H�te',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Si votre compte est v�rifi�, les en-t&ecirc;tes x-otrs (pour les priorit�s,...) seront utilis�s',
      'Login' => 'Nom d\'utilisateur',
      'POP3 Account Management' => 'Gestion du compte POP3',
      'Trusted' => 'V�rifi�',

    # Template: AdminPostMasterFilterForm
      'Match' => '',
      'PostMasterFilter Management' => '',
      'Set' => '',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Gestion des files <-> r�ponses automatiques',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = pas d\'escalade',
      '0 = no unlock' => '0 = pas de v�rouillage',
      'Customer Move Notify' => '',
      'Customer Owner Notify' => '',
      'Customer State Notify' => '',
      'Escalation time' => 'D�lai d\'escalade',
      'Follow up Option' => 'Option des suivis',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Si un ticket est clotur� et que le client envoie une note, le ticket pour l\'ancien propri�taire',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Si un ticket n\'est pas r�pondu dans le temps impartit, alors juste ce ticket sera affich�',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Si un agent v�rouille un ticket et qu\'il/elle n\'envoie pas une r�ponse dans le temps impartit, le ticket sera d�v�rouill� automatiquement.',
      'Key' => 'Clef',
      'OTRS sends an notification email to the customer if the ticket is moved.' => '',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => '',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => '',
      'Queue Management' => 'Gestion des files',
      'Sub-Queue of' => '',
      'Systemaddress' => 'Adresse du Syst�me',
      'The salutation for email answers.' => 'La formule de politesse pour les r�ponses par mail',
      'The signature for email answers.' => 'La signature pour les r�ponses par email',
      'Ticket lock after a follow up' => 'Ticket bloqu� apr�s un suivi',
      'Unlock timeout' => 'Temporisation du d�verrouillage',
      'Will be the sender address of this queue for email answers.' => 'Sera l\'adresse d\'exp�p�dition pour les r�ponses par courrier �lectronique',

    # Template: AdminQueueResponsesChangeForm
      'Std. Responses <-> Queue Management' => 'Gestion des r�ponses standard <-> files',

    # Template: AdminQueueResponsesForm
      'Answer' => 'R�ponse',
      'Change answer <-> queue settings' => 'Modifier les param�tres de r�ponses <-> files',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'R�ponses Std <-> Gestion des attachements Std',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => 'Para�m&ecirc;tre des attachements',

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Une r�ponse est un texte par d�faut destin� � r�diger plus rapidement des r�ponses standard aux clients.',
      'Don\'t forget to add a new response a queue!' => 'Ne pas oublier d\'ajouter une file � une nouvelle r�ponse&nbsp;!',
      'Next state' => '',
      'Response Management' => 'Gestion des r�ponses',
      'The current ticket state is' => '',

    # Template: AdminSalutationForm
      'customer realname' => 'nom r�el du client',
      'for agent firstname' => 'pour le pr�nom de l\'agent',
      'for agent lastname' => 'pour le nom de l\'agent',
      'for agent login' => '',
      'for agent user id' => '',
      'Salutation Management' => 'Gestion des salutations',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Nombre de lignes maximales',

    # Template: AdminSelectBoxResult
      'Limit' => 'Limite',
      'Select Box Result' => 'Choisissez le r�sultat',
      'SQL' => '',

    # Template: AdminSession
      'Agent' => '',
      'kill all sessions' => 'Terminer toutes les sessions',
      'Overview' => '',
      'Sessions' => '',
      'Uniq' => '',

    # Template: AdminSessionTable
      'kill session' => 'Terminer une session',
      'SessionID' => '',

    # Template: AdminSignatureForm
      'Signature Management' => 'Gestion des signatures',

    # Template: AdminStateForm
      'See also' => '',
      'State Type' => '',
      'System State Management' => 'Gestion des �tats du syst�me',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => '',

    # Template: AdminSystemAddressForm
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Tous les courriels avec cette adresse en destinataire (�&nbsp;:) seront plac�s dans la file choisie..',
      'Email' => 'Courrier �lectronique',
      'Realname' => 'V�ritable Nom',
      'System Email Addresses Management' => 'Gestion des adresses courriel du syst�me',

    # Template: AdminUserForm
      'Don\'t forget to add a new user to groups!' => 'Ne pas oublier d\'ajouter un nouvel utilisateur aux groupes&nbsp;!',
      'Firstname' => 'Pr�nom',
      'Lastname' => 'Nom',
      'User Management' => 'Administration des utilisateurs',
      'User will be needed to handle tickets.' => 'Un utilisateur sera n�cessaire pour g�rer les tickets.',

    # Template: AdminUserGroupChangeForm
      'create' => '',
      'move_into' => '',
      'owner' => '',
      'Permissions to change the ticket owner in this group/queue.' => '',
      'Permissions to change the ticket priority in this group/queue.' => '',
      'Permissions to create tickets in this group/queue.' => '',
      'Permissions to move tickets into this group/queue.' => '',
      'priority' => '',
      'User <-> Group Management' => 'Gestion utilisateurs <-> groupes',

    # Template: AdminUserGroupForm

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBook
      'Address Book' => '',
      'Discard all changes and return to the compose screen' => 'Annuler tout les changements et retourner � l\'�cran de saisie',
      'Return to the compose screen' => 'Retourner � l\'�cran de saisie',
      'Search' => '',
      'The message being composed has been closed.  Exiting.' => 'Le message en cours de composition a �t� cl�tur�. Sortie.',
      'This window must be called from compose window' => 'Cette fene&ecirc;tre doit &ecirc;tre appel� de la fen&ecirc;tre de composition',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Un message doit avoir un destinataire (�&nbsp;:)!',
      'Bounce ticket' => 'Renvoyer le ticket',
      'Bounce to' => 'Renvoyer �',
      'Inform sender' => 'Informer l\'emetteur',
      'Next ticket state' => 'Prochain �tat du ticket',
      'Send mail!' => 'Envoyer le courriel&nbsp;!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Il faut une adresse courriel (ecemple&nbsp;: client@exemple.fr)&nbsp;!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Votre email avec le ticket num�ro "<OTRS_TICKET> est renvoyer � "<OTRS_BOUNCE_TO>". Contactez cette adresse pour de plus amples renseignements',

    # Template: AgentClose
      ' (work units)' => ' Unit� de travail',
      'A message should have a body!' => '',
      'A message should have a subject!' => 'Un message doit avoir un sujet&nbsp;!',
      'Close ticket' => 'Ticket clos',
      'Close type' => 'Type de cloture',
      'Close!' => 'Cl�ture!',
      'Note Text' => 'Note',
      'Note type' => 'Type de note',
      'Options' => '',
      'Spell Check' => 'V�rification orthographique',
      'Time units' => 'Unit� de temps',
      'You need to account time!' => '',

    # Template: AgentCompose
      'A message must be spell checked!' => '',
      'Attach' => 'Attach�',
      'Compose answer for ticket' => 'Composer une r�ponse pour le ticket',
      'for pending* states' => 'pour les �tats d\'attente',
      'Is the ticket answered' => 'Est-ce que le ticket est r�pondu',
      'Pending Date' => 'En attendant la date',

    # Template: AgentCustomer
      'Back' => 'retour',
      'Change customer of ticket' => 'Changer le num�ro de client du ticket',
      'CustomerID' => 'Num�ro de client#',
      'Search Customer' => 'Recherche de client',
      'Set customer user and customer id of a ticket' => '',

    # Template: AgentCustomerHistory
      'All customer tickets.' => '',
      'Customer history' => 'Historique du client',

    # Template: AgentCustomerMessage
      'Follow up' => 'Note',

    # Template: AgentCustomerView
      'Customer Data' => 'Donn�es client',

    # Template: AgentForward
      'Article type' => 'Type d\'article',
      'Date' => '',
      'End forwarded message' => 'Fin du message retransmit',
      'Forward article of ticket' => 'Transmettre l\'article du ticket',
      'Forwarded message from' => 'Message renvoy� par',
      'Reply-To' => 'R�pondre �',

    # Template: AgentFreeText
      'Change free text of ticket' => '',
      'Value' => '',

    # Template: AgentHistoryForm
      'History of' => 'Historique de',

    # Template: AgentMailboxNavBar
      'All messages' => 'Tout les messages',
      'down' => 'bas',
      'Mailbox' => 'Bo&icirc;te aux lettres',
      'New' => 'Nouveau',
      'New messages' => 'Nouveaux messages',
      'Open' => 'Ouvrir',
      'Open messages' => 'Ouvrir des messages',
      'Order' => 'Ordre',
      'Pending messages' => 'Message en attente',
      'Reminder' => 'Rappel',
      'Reminder messages' => 'Message de rappel',
      'Sort by' => 'Trier par',
      'Tickets' => '',
      'up' => 'haut',

    # Template: AgentMailboxTicket
      '"}' => '',
      '"}","14' => '',

    # Template: AgentMove
      'All Agents' => '',
      'Move Ticket' => '',
      'New Owner' => '',
      'New Queue' => '',
      'Previous Owner' => '',
      'Queue ID' => '',

    # Template: AgentNavigationBar
      'Locked tickets' => 'Tickets verrouill�s',
      'new message' => 'Nouveau message',
      'Preferences' => 'Pr�f�rences',
      'Utilities' => 'Utilitaires',

    # Template: AgentNote
      'Add note to ticket' => 'Ajouter une note au ticket',
      'Note!' => '',

    # Template: AgentOwner
      'Change owner of ticket' => 'Changer le propri�taire du ticket',
      'Message for new Owner' => 'Message pour le nouveau Propri�taire',

    # Template: AgentPending
      'Pending date' => 'Date d\'attente',
      'Pending type' => 'Type d\'attente',
      'Pending!' => '',
      'Set Pending' => 'D�finir l\'attente',

    # Template: AgentPhone
      'Customer called' => 'Client appel�',
      'Phone call' => 'Appel t�l�phonique',
      'Phone call at %s' => 'Appel t�l�phonique � %s',

    # Template: AgentPhoneNew
      'Clear From' => '',
      'Lock Ticket' => '',
      'new ticket' => 'nouveau ticket',

    # Template: AgentPlain
      'ArticleID' => '',
      'Plain' => 'Tel quel',
      'TicketID' => '',

    # Template: AgentPreferencesCustomQueue
      'Select your custom queues' => 'Choix des files personnelles',

    # Template: AgentPreferencesForm

    # Template: AgentPreferencesGeneric

    # Template: AgentPreferencesPassword
      'Change Password' => 'Modification du mot de passe',
      'New password' => 'Nouveau mot de passe',
      'New password again' => 'Nouveau mot de passe (confirmation)',

    # Template: AgentPriority
      'Change priority of ticket' => 'Modification de la priorit� du ticket',

    # Template: AgentSpelling
      'Apply these changes' => 'Appliquer ces changements',
      'Spell Checker' => 'V�rificateur orthographique',
      'spelling error(s)' => 'erreurs d\'orthographe',

    # Template: AgentStatusView
      'D' => '',
      'of' => 'de',
      'Site' => '',
      'sort downward' => 'Tri d�croissant',
      'sort upward' => 'Tri croissant',
      'Ticket Status' => 'Status du Ticket',
      'U' => '',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket verrouill�&nbsp;!',
      'Ticket unlock!' => '',

    # Template: AgentTicketPrint
      'by' => 'par',

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Temp pass�',
      'Escalation in' => 'Escalade dans',

    # Template: AgentUtilSearch
      '(e. g. 10*5155 or 105658*)' => '',
      '(e. g. 234321)' => '',
      '(e. g. U5150)' => '',
      'and' => '',
      'Customer User Login' => '',
      'Delete' => '',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => '',
      'No time settings.' => '',
      'Profile' => '',
      'Result Form' => '',
      'Save Search-Profile as Template?' => '',
      'Search-Template' => '',
      'Select' => '',
      'Ticket created' => '',
      'Ticket created between' => '',
      'Ticket Search' => '',
      'TicketFreeText' => '',
      'Times' => '',
      'Yes, save it with name' => '',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'recherche dans l\'historique client',
      'Customer history search (e. g. "ID342425").' => 'recherche dans l\'historique client (ex: "ID342425")',
      'No * possible!' => 'Pas de * possible',

    # Template: AgentUtilSearchNavBar
      'Change search options' => '',
      'Results' => 'R�sultat',
      'Search Result' => '',
      'Total hits' => 'Total des hits',

    # Template: AgentUtilSearchResult
      '"}","15' => '',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultPrintTable
      '"}","30' => '',

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilSearchResultShortTable

    # Template: AgentUtilSearchResultShortTableNotAnswered

    # Template: AgentUtilTicketStatus
      'All closed tickets' => '',
      'All open tickets' => 'Tous les tickets ouverts',
      'closed tickets' => '',
      'open tickets' => 'tickets ouverts',
      'or' => '',
      'Provides an overview of all' => 'Propose un aper�u de tous',
      'So you see what is going on in your system.' => 'Donc vous voyez ce qui se passe sur votre syst&egrave;me',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => '',
      'Your own Ticket' => '',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'Composer une r�ponse',
      'Contact customer' => 'Contacter le client',
      'phone call' => 'Appel t�l�phonique',

    # Template: AgentZoomArticle
      'Split' => '',

    # Template: AgentZoomBody
      'Change queue' => 'Changer de file',

    # Template: AgentZoomHead
      'Free Fields' => '',
      'Print' => 'Imprimer',

    # Template: AgentZoomStatus
      '"}","18' => '',

    # Template: CustomerCreateAccount
      'Create Account' => 'Cr�er un compte',

    # Template: CustomerError
      'Traceback' => '',

    # Template: CustomerFAQArticleHistory
      'Edit' => '',
      'FAQ History' => '',

    # Template: CustomerFAQArticlePrint
      'Category' => '',
      'Keywords' => '',
      'Last update' => '',
      'Problem' => '',
      'Solution' => '',
      'Symptom' => '',

    # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => '',

    # Template: CustomerFAQArticleView
      'FAQ Article' => '',
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
      'Powered by' => '',

    # Template: CustomerHeader
      'Contact' => '',
      'Home' => 'Accueil',
      'Online-Support' => 'Support en ligne',
      'Products' => 'Produits',
      'Support' => '',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => 'Mot de passe perdu ?',
      'Request new password' => 'Demande de nouveau mot de passe',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => 'Cr�tion d\'un nouveau Ticket',
      'FAQ' => '',
      'New Ticket' => 'Nouveau Ticket',
      'Ticket-Overview' => 'Aper�u des Tickets',
      'Welcome %s' => 'Bienvenue %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView
      'My Tickets' => 'Mes tickets',

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Cliquer ici pour signaler une anomalie',

    # Template: FAQArticleDelete
      'FAQ Delete' => '',
      'You really want to delete this article?' => '',

    # Template: FAQArticleForm
      'Comment (internal)' => '',
      'Filename' => '',
      'Short Description' => '',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQCategoryForm
      'FAQ Category' => '',

    # Template: FAQLanguageForm
      'FAQ Language' => '',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: FAQStateForm
      'FAQ State' => '',

    # Template: Footer
      'Top of Page' => '',

    # Template: Header

    # Template: InstallerBody
      'Create Database' => '',
      'Drop Database' => '',
      'Finished' => '',
      'System Settings' => '',
      'Web-Installer' => '',

    # Template: InstallerFinish
      'Admin-User' => '',
      'After doing so your OTRS is up and running.' => '',
      'Have a lot of fun!' => '',
      'Restart your webserver' => '',
      'Start page' => '',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => '',
      'Your OTRS Team' => '',

    # Template: InstallerLicense
      'accept license' => '',
      'don\'t accept license' => '',
      'License' => '',

    # Template: InstallerStart
      'Create new database' => '',
      'DB Admin Password' => '',
      'DB Admin User' => '',
      'DB Host' => '',
      'DB Type' => '',
      'default \'hot\'' => '',
      'Delete old database' => '',
      'next step' => '�tape suivante',
      'OTRS DB connect host' => '',
      'OTRS DB Name' => '',
      'OTRS DB Password' => '',
      'OTRS DB User' => '',
      'your MySQL DB should have a root password! Default is empty!' => '',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '',
      '(Email of the system admin)' => 'Email de l\'administrateur syst�',
      '(Full qualified domain name of your system)' => 'Nom de domaine complet de votre machine',
      '(Logfile just needed for File-LogModule!)' => 'fichier de log n�cessaire pour le Module File-Log',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(L\'identit� du syst�me. Chaque num�ro de ticket et chaque id de session http d� avec ce nombre)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identificateur des tickets. Certaines personnes veulent le configurer avec par ex: \'Ticket#\', \'Appel#\' ou \'MonTicket#\')',
      '(Used default language)' => 'Langage par d�faut utilis�',
      '(Used log backend)' => 'Backend de log utilis�',
      '(Used ticket number format)' => 'format num�rique utilis� pour les tickets',
      'CheckMXRecord' => '',
      'Default Charset' => 'Charset par d�faut',
      'Default Language' => 'Langage par d�faut ',
      'Logfile' => 'fichier de log',
      'LogModule' => 'Module de log',
      'Organization' => 'Soci�t�',
      'System FQDN' => 'Nom de Domaine Compl�tement Renseign� du syst�me',
      'SystemID' => 'ID Syst�me',
      'Ticket Hook' => '',
      'Ticket Number Generator' => 'G�n�rateur de num�ro pour les tickets',
      'Use utf-8 it your database supports it!' => '',
      'Webfrontend' => 'Frontal web',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Pas d\'autorisation',

    # Template: Notify
      'Info' => '',

    # Template: PrintFooter
      'URL' => '',

    # Template: PrintHeader
      'printed by' => 'Imprim� par :',

    # Template: QueueView
      'All tickets' => 'tous les tickets',
      'Page' => '',
      'Queues' => 'Files',
      'Tickets available' => 'Tickets disponibles',
      'Tickets shown' => 'Tickets affich�s',

    # Template: SystemStats
      'Graphs' => 'Graphiques',

    # Template: Test
      'OTRS Test Page' => 'Page de test d\'OTRS',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Escalade du ticket',

    # Template: TicketView

    # Template: TicketViewLite
      'Add Note' => 'Ajouter une note',

    # Template: Warning

    # Misc
      'A message should have a From: recipient!' => 'Un message devrait avoir un champ From:',
      'AgentFrontend' => 'Interface de l\'agent',
      'Article free text' => 'Texte dans l\'article',
      'Charsets' => 'Jeu de Charact�re',
      'Create' => 'Cr�er',
      'Feature not activ!' => 'Fonction non activ�',
      'Fulltext search' => 'Recherche in�grale de texte',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Recherche int�gral de texte (ex: "Mar*in" ou "Constru*" ou "martin+bonjour")',
      'New state' => 'Nouvel �tat',
      'New ticket via call.' => 'Nouveau ticket par t�l�phone',
      'New user' => 'Nouvel utilisateur',
      'Search in' => 'Recherche dans',
      'Set customer id of a ticket' => 'D�finir le num�ro de client d\'un ticket',
      'Show all' => 'Tout montrer',
      'Status defs' => 'D�finitions des Status',
      'System Language Management' => 'Gestion des langues du syst�me',
      'Ticket free text' => 'Texte du ticket',
      'Ticket limit:' => 'limitation des Ticket',
      'Time till escalation' => 'Dur�e avant escalade',
      'Users' => 'Utilisateurs',
      'With State' => 'Avec l\'�tat',
      'You have to be in the admin group!' => 'Il est n�cessaire d\'�tre dans le groupe d\'administration&nbsp;!',
      'You have to be in the stats group!' => 'Il est n�cessaire d\'�tre dans le groupe des statistiques&nbsp;!',
      'You need a email address (e. g. customer@example.com) in From:!' => 'Vous devez avoir une adresse email dans le From:! (ex: client@example.com) ',
      'auto responses set' => 'R�ponse automatique positionn�e',
      'search' => 'Recherche',
      'search (e. g. 10*5155 or 105658*)' => 'Recherche (ex: 10*5155 ou 105658*)',
      'store' => 'stocker',
      'tickets' => 'Tickets',
    );

    # $$STOP$$

    $Self->{Translation} = \%Hash;

}
# --
1;
