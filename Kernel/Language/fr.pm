# Kernel/Language/fr.pm - provides fr language translation
# Copyright (C) 2002 Bernard Choppy <choppy at imaginet.fr>
# Copyright (C) 2002 Nicolas Goralski <ngoralski at oceanet-technology.com>
# --
# $Id: fr.pm,v 1.20 2003-04-12 22:36:35 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::fr;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.20 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;
# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Sun Apr 13 00:30:52 2003 by 

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D.%M.%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %T %Y';
    $Self->{DateInputFormat} = '%D.%M.%Y - %T';

    %Hash = (
    # Template: AAABase
      ' 2 minutes' => ' 2 minutes',
      ' 5 minutes' => ' 5 minutes',
      ' 7 minutes' => ' 7 minutes',
      '10 minutes' => '10 minutes',
      '15 minutes' => '15 minutes',
      'AddLink' => 'Ajouter un lien',
      'AdminArea' => 'Zone d\'administration',
      'agent' => '',
      'all' => 'tout',
      'All' => 'Tout',
      'Attention' => 'Attention',
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
      'days' => 'jours',
      'description' => 'description',
      'Description' => 'Description',
      'Dispatching by email To: field.' => 'R�partition par le champs \'�\' de l\'email',
      'Dispatching by selected Queue.' => 'R�partition par la file s�lectionn�e',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Cela ne fonctionne pas avec l\'ID utilisateur 1 (Compte Syst�me)! Veuillez cr�er un nouvel utilisateur!',
      'Done' => 'Fait',
      'end' => 'fin',
      'Error' => 'Erreur',
      'Example' => 'Exemple',
      'Examples' => 'Exemples',
      'Facility' => 'Facilit�',
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
      'Line' => 'Ligne',
      'Lite' => 'all�g�e',
      'Login failed! Your username or password was entered incorrectly.' => 'La connection a �chou� ! Votre nom d\'utilisateur ou votre mot de passe a �t� saisie incorrectement',
      'Logout successful. Thank you for using OTRS!' => 'D�connection r�ussie. Merci d\'avoir utilis� OTRS!',
      'Message' => 'Message',
      'minute' => 'minute',
      'minutes' => 'minutes',
      'Module' => 'Module',
      'Modulefile' => 'Fichier de module',
      'Name' => 'Nom',
      'New message' => 'Nouveau message',
      'New message!' => 'Nouveau message&nbsp;!',
      'No' => 'Non',
      'no' => 'aucune',
      'No entry found!' => '',
      'No suggestions' => 'Pas de suggestions',
      'none' => 'aucun',
      'none - answered' => 'aucun - r�pondu',
      'none!' => 'aucun&nbsp;!',
      'Off' => '�teint',
      'off' => '�teint',
      'On' => 'Allum�',
      'on' => 'allum�',
      'Password' => 'Mot de Passe',
      'Pending till' => 'En attendant jusqu\'�',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Il faut r�pondre � ce(s) ticket(s) pour revenir � la vue normale de la file.',
      'Please contact your admin' => 'Veuillez contacter votre admnistrateur',
      'please do not edit!' => 'Ne pas modifier&nbsp;!',
      'possible' => 'possible',
      'QueueView' => 'Vue file',
      'reject' => 'rejet�',
      'replace with' => 'remplacer par',
      'Reset' => 'Remise � z�ro',
      'Salutation' => 'Salutation',
      'Session has timed out. Please log in again.' => '',
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
      'top' => 'haut',
      'update' => 'Mise � jour',
      'update!' => 'actualiser&nbsp;!',
      'User' => 'Utilisateur',
      'Username' => 'Nom d\'utilisateur',
      'Valid' => 'Valide',
      'Warning' => 'Attention',
      'Welcome to OTRS' => 'Bienvenue � OTRS',
      'Word' => 'Mot',
      'wrote' => '�crit',
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
      'Move notification' => 'Notification de mouvement',
      'New ticket notification' => 'Notification de nouveau ticket',
      'Other Options' => 'Autres options',
      'Preferences updated successfully!' => 'Les pr�f�rences ont bien �t� mises � jours',
      'QueueView refresh time' => 'Temps de rafra�chissement de la vue des files',
      'Select your default spelling dictionary.' => '',
      'Select your frontend Charset.' => 'Choix du jeu de caract�res de l\'interface',
      'Select your frontend language.' => 'Choix de la langue de l\'interface',
      'Select your frontend QueueView.' => 'Choisissez votre interface de vue des files',
      'Select your frontend Theme.' => 'Choix du th�me de l\'interface',
      'Select your QueueView refresh time.' => 'Choix du d�lai de rafra�chissement de la vue des files',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Me pr�venir si un client envoie un suivi (follow-up) et que je suis le propri�taire du ticket.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Me pr�venir si un ticket est d�plac� dans une file personnallis�',
      'Send me a notification if a ticket is unlocked by the system.' => 'Me pr�venir si un ticket est d�v�rouill� par le syst�me',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Me pr�venir si un nouveau ticket appara�t dans mes files personnelles.',
      'Show closed tickets.' => '',
      'Spelling Dictionary' => '',
      'Ticket lock timeout notification' => 'Pr�venir du d�passement du d�lai d\'un verrou ',

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
      'Thu' => 'Mar',
      'Tue' => 'Jeu',
      'Wed' => 'Mer',

    # Template: AdminAttachmentForm
      'Add attachment' => 'Ajouter une pi�ce',
      'Attachment Management' => 'Gestion des attachements',
      'Change attachment settings' => 'Changer les param&ecirc;etres d\'attachement',

    # Template: AdminAutoResponseForm
      'Add auto response' => 'Ajouter une r�ponse automatique',
      'Auto Response From' => 'R�ponse automatique de ',
      'Auto Response Management' => 'Gestion des r�ponses automatiques',
      'Change auto response settings' => 'Modifier les param�tres de r�ponses automatiques',
      'Charset' => 'Jeu de charact�re',
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
      'Add charset' => 'Ajouter un jeu de caract�res syst�me',
      'Change system charset setting' => 'Modification des param�tres du jeu de caract�res syst�me',
      'System Charset Management' => 'Gestion du jeu de caract�res syst�me',

    # Template: AdminCustomerUserForm
      'Add customer user' => 'Ajouter un utilisateur client',
      'Change customer user settings' => 'Changer les pr�f�rences utilisateurs du client',
      'Customer User Management' => 'Gestion des clients utilisateurs',
      'Customer user will be needed to to login via customer panels.' => 'Les clients utilisateurs seront invit� � se connecter par la page client.',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Email de l\'administrateur',
      'Body' => 'Corps',
      'OTRS-Admin Info!' => 'Information de l\'administrateur OTRS',
      'Permission' => '',
      'Recipents' => 'R�cipients',
      'send' => '',

    # Template: AdminEmailSent
      'Message sent to' => 'Message envoy� �',

    # Template: AdminGroupForm
      'Add group' => 'Ajouter un groupe',
      'Change group settings' => 'Changer les param�tres d\'un groupe',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'De nouveaux groupes permettront de g�rer les droits d\'acc�s pour les diff�rents groupes d\'un agent (exemple&nbsp;: achats, comptabilit�, support, ventes...).',
      'Group Management' => 'Administration des groupes',
      'It\'s useful for ASP solutions.' => 'C\'est utile pour les fournisseurs d\'applications.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Le groupe admin permet d\'acc�der � la zone d\'administration et le groupe stats � la zone de statistiques.',

    # Template: AdminLog
      'System Log' => 'Logs du Syst�me',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Email de l\'administrateur.',
      'AgentFrontend' => 'Interface de l\'agent',
      'Attachment <-> Response' => '',
      'Auto Response <-> Queue' => 'R�ponse Automatique <-> Files',
      'Auto Responses' => 'R�ponses automatiques',
      'Charsets' => 'Jeu de Charact�re',
      'Customer User' => 'Client Utilisateur',
      'Email Addresses' => 'Adresses �lectroniques',
      'Groups' => 'Groupes',
      'Logout' => 'D�connexion',
      'Misc' => 'Divers',
      'POP3 Account' => 'Compte POP3',
      'Responses' => 'R�ponses',
      'Responses <-> Queue' => 'R�ponses <-> Files',
      'Select Box' => 'Requ�te SQL libre.',
      'Session Management' => 'Gestion des sessions',
      'Status' => '',
      'System' => 'Syst�me',
      'User <-> Groups' => 'Utilisateur <-> Groupes',

    # Template: AdminPOP3Form
      'Add POP3 Account' => 'Ajouter un compte POP3',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Tout les mails entrants avec un compte seront r�partis dans la file s�lectionn�',
      'Change POP3 Account setting' => 'Changer les param&ecirc;tres du compte POP3',
      'Dispatching' => 'R�partition',
      'Host' => 'H�te',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Si votre compte est v�rifi�, les en-t&ecirc;tes x-otrs (pour les priorit�s,...) seront utilis�s',
      'Login' => 'Nom d\'utilisateur',
      'POP3 Account Management' => 'Gestion du compte POP3',
      'Trusted' => 'V�rifi�',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Gestion des files <-> r�ponses automatiques',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = pas d\'escalade',
      '0 = no unlock' => '0 = pas de v�rouillage',
      'Add queue' => 'Ajouter une file',
      'Change queue settings' => 'Modifier les param�tres des files',
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
      'Change %s settings' => 'Changer les param&ecirc;tres de %s',
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
      'Add response' => 'Ajouter une r�ponse',
      'Change response settings' => 'Modifier les param�tres des r�ponses',
      'Don\'t forget to add a new response a queue!' => 'Ne pas oublier d\'ajouter une file � une nouvelle r�ponse&nbsp;!',
      'Response Management' => 'Gestion des r�ponses',

    # Template: AdminSalutationForm
      'Add salutation' => 'Ajouter une salutation',
      'Change salutation settings' => 'Modification des param�tres de salutations',
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
      'kill all sessions' => 'Terminer toutes les sessions',

    # Template: AdminSessionTable
      'kill session' => 'Terminer une session',
      'SessionID' => '',

    # Template: AdminSignatureForm
      'Add signature' => 'Ajouter une signature',
      'Change signature settings' => 'Modification des param�tres de signatures',
      'Signature Management' => 'Gestion des signatures',

    # Template: AdminStateForm
      'Add state' => 'Ajouter un �tat',
      'Change system state setting' => 'Modification des param�tres d\'�tats du syst�me',
      'State Type' => '',
      'System State Management' => 'Gestion des �tats du syst�me',

    # Template: AdminSystemAddressForm
      'Add system address' => 'Ajouter une adresse �lectronique du syst�me',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Tous les courriels avec cette adresse en destinataire (�&nbsp;:) seront plac�s dans la file choisie..',
      'Change system address setting' => 'Modification des param�tres des adresses courriel du syst�me',
      'Email' => 'Courrier �lectronique',
      'Realname' => 'V�ritable Nom',
      'System Email Addresses Management' => 'Gestion des adresses courriel du syst�me',

    # Template: AdminUserForm
      'Add user' => 'Ajouter un utilisateur',
      'Change user settings' => 'Modification des param�tres utilisateurs',
      'Don\'t forget to add a new user to groups!' => 'Ne pas oublier d\'ajouter un nouvel utilisateur aux groupes&nbsp;!',
      'Firstname' => 'Pr�nom',
      'Lastname' => 'Nom',
      'User Management' => 'Administration des utilisateurs',
      'User will be needed to handle tickets.' => 'Un utilisateur sera n�cessaire pour g�rer les tickets.',

    # Template: AdminUserGroupChangeForm
      'Change  settings' => 'Changer les param&ecirc;tres',
      'User <-> Group Management' => 'Gestion utilisateurs <-> groupes',

    # Template: AdminUserGroupForm
      'Change user <-> group settings' => 'Modifier les param�tres utilisateurs <-> groupes',

    # Template: AdminUserPreferencesGeneric

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
      'Customer history' => 'Historique du client',

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerMessage
      'Follow up' => 'Note',
      'Next state' => '',

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

    # Template: AgentMove
      'Move Ticket' => '',
      'New Queue' => '',
      'New user' => 'Nouvel utilisateur',

    # Template: AgentNavigationBar
      'Locked tickets' => 'Tickets verrouill�s',
      'new message' => 'Nouveau message',
      'PhoneView' => 'Vue t�l�phone',
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
      'create' => '',
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
      'New state' => 'Nouvel �tat',

    # Template: AgentSpelling
      'Apply these changes' => 'Appliquer ces changements',
      'Discard all changes and return to the compose screen' => 'Annuler tout les changements et retourner � l\'�cran de saisie',
      'Return to the compose screen' => 'Retourner � l\'�cran de saisie',
      'Spell Checker' => 'V�rificateur orthographique',
      'spelling error(s)' => 'erreurs d\'orthographe',
      'The message being composed has been closed.  Exiting.' => 'Le message en cours de composition a �t� cl�tur�. Sortie.',
      'This window must be called from compose window' => 'Cette fene&ecirc;tre doit &ecirc;tre appel� de la fen&ecirc;tre de composition',

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
      'printed by' => 'Imprim� par :',

    # Template: AgentUtilSearch
      'Article free text' => 'Texte dans l\'article',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Recherche int�gral de texte (ex: "Mar*in" ou "Constru*" ou "martin+bonjour")',
      'search' => 'Recherche',
      'search (e. g. 10*5155 or 105658*)' => 'Recherche (ex: 10*5155 ou 105658*)',
      'Ticket free text' => 'Texte du ticket',
      'Ticket Search' => '',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'recherche dans l\'historique client',
      'Customer history search (e. g. "ID342425").' => 'recherche dans l\'historique client (ex: "ID342425")',
      'No * possible!' => 'Pas de * possible',

    # Template: AgentUtilSearchNavBar
      'Results' => 'R�sultat',
      'Total hits' => 'Total des hits',

    # Template: AgentUtilSearchResult

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

    # Template: CustomerCreateAccount
      'Create Account' => 'Cr�er un compte',

    # Template: CustomerError
      'Traceback' => '',

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
      'My Tickets' => 'Mes tickets',
      'New Ticket' => 'Nouveau Ticket',
      'Ticket-Overview' => 'Aper�u des Tickets',
      'Welcome %s' => 'Bienvenue %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Cliquer ici pour signaler une anomalie',

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
      'next step' => '�tape suivante',

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

    # Template: QueueView
      'All tickets' => 'tous les tickets',
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
      '(Click here to add a group)' => '(cliquer ici pour ajouter un groupe)',
      '(Click here to add a queue)' => '(cliquer ici pour ajouter une file)',
      '(Click here to add a response)' => '(cliquer ici pour ajouter une r�ponse)',
      '(Click here to add a salutation)' => '(cliquer ici pour ajouter une salutation)',
      '(Click here to add a signature)' => '(cliquer ici pour ajouter une signature)',
      '(Click here to add a system email address)' => '(cliquer ici pour ajouter une adresse courriel du syst�me)',
      '(Click here to add a user)' => '(cliquer ici pour ajouter un utilisateur)',
      '(Click here to add an auto response)' => '(cliquer ici pour ajouter une r�ponse automatique)',
      '(Click here to add charset)' => '(cliquer ici pour ajouter un jeu de caract�res syst�me',
      '(Click here to add language)' => '(cliquer ici pour ajouter une langue)',
      '(Click here to add state)' => '(cliquer ici pour ajouter un �tat)',
      'A message should have a From: recipient!' => 'Un message devrait avoir un champ From:',
      'Add language' => 'Ajouter une langue',
      'Backend' => '',
      'BackendMessage' => 'Message du Backend',
      'Change system language setting' => 'Modification des parm�tres de langue du syst�me',
      'Create' => 'Cr�er',
      'FAQ' => '',
      'Feature not activ!' => 'Fonction non activ�',
      'Fulltext search' => 'Recherche in�grale de texte',
      'Handle' => '',
      'New ticket via call.' => 'Nouveau ticket par t�l�phone',
      'Search in' => 'Recherche dans',
      'Set customer id of a ticket' => 'D�finir le num�ro de client d\'un ticket',
      'Show all' => 'Tout montrer',
      'Status defs' => 'D�finitions des Status',
      'System Language Management' => 'Gestion des langues du syst�me',
      'Ticket limit:' => 'limitation des Ticket',
      'Time till escalation' => 'Dur�e avant escalade',
      'Update auto response' => 'Actualiser une r�ponse automatique',
      'Update charset' => 'Actualiser un jeu de caract�res syst�me',
      'Update group' => 'Actualiser un groupe',
      'Update language' => 'Actualiser une langue',
      'Update queue' => 'Actualiser une file',
      'Update response' => 'Actualiser une r�ponse',
      'Update salutation' => 'Actualiser une salutation',
      'Update signature' => 'Actualiser une signature',
      'Update state' => 'Actualiser un �tat',
      'Update system address' => 'Actualiser les adresses courriel du syst�me',
      'Update user' => 'Actualiser un utilisateur',
      'Users' => 'Utilisateurs',
      'With State' => 'Avec l\'�tat',
      'You have to be in the admin group!' => 'Il est n�cessaire d\'�tre dans le groupe d\'administration&nbsp;!',
      'You have to be in the stats group!' => 'Il est n�cessaire d\'�tre dans le groupe des statistiques&nbsp;!',
      'You need a email address (e. g. customer@example.com) in From:!' => 'Vous devez avoir une adresse email dans le From:! (ex: client@example.com) ',
      'auto responses set' => 'R�ponse automatique positionn�e',
      'store' => 'stocker',
      'tickets' => 'Tickets',
    );

    # $$STOP$$

    $Self->{Translation} = \%Hash;

}
# --
1;
