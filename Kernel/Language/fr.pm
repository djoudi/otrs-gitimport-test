# --
# Kernel/Language/fr.pm - provides fr language translation
# Copyright (C) 2002 Bernard Choppy <choppy at imaginet.fr>
# Copyright (C) 2002 Nicolas Goralski <ngoralski at oceanet-technology.com>
# --
# $Id: fr.pm,v 1.6 2003-01-03 19:54:46 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::fr;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.6 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*\$/$1/;
# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Fri Jan  3 20:40:04 2003 by 

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
      'all' => 'tout',
      'All' => 'Tout',
      'Attention' => 'Attention',
      'Bug Report' => 'Rapport d\'anomalie',
      'Cancel' => '',
      'Change' => 'Modifier',
      'change' => 'modifier',
      'change!' => 'modifier&nbsp;!',
      'click here' => '',
      'Comment' => 'Commentaire',
      'Customer' => 'Client',
      'Customer info' => 'Information client',
      'day' => 'jour',
      'days' => 'jours',
      'Description' => 'Description',
      'description' => 'description',
      'Don\'t work with UserID 1 (System account)! Create new users!' => '',
      'Done' => 'Fait',
      'end' => 'fin',
      'Error' => 'Erreur',
      'Example' => 'Exemple',
      'Examples' => 'Exemples',
      'Facility' => '',
      'Feature not acitv!' => '',
      'go' => '',
      'go!' => 'c\'est parti&nbsp;!',
      'Group' => 'Groupe',
      'Hit' => 'Hit',
      'Hits' => 'Hits',
      'hour' => 'heure',
      'hours' => 'heures',
      'Ignore' => 'Ignorer',
      'invalid' => '',
      'Invalid SessionID!' => '',
      'Language' => 'Langue',
      'Languages' => 'Langues',
      'Line' => 'Ligne',
      'Lite' => '',
      'Login failed! Your username or password was entered incorrectly.' => '',
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
      'no' => 'aucun',
      'No suggestions' => 'Pas de suggestions',
      'none' => 'aucun',
      'none - answered' => 'aucun - r�pondu',
      'none!' => 'aucun&nbsp;!',
      'off' => '�teint',
      'Off' => '�teint',
      'On' => 'Allum�',
      'on' => 'allum�',
      'Password' => 'Mot de Passe',
      'Pending till' => '',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Il faut r�pondre � ce(s) ticket(s) pour revenir � la vue normale de la file.',
      'Please contact your admin' => '',
      'please do not edit!' => 'Ne pas modifier&nbsp;!',
      'possible' => '',
      'QueueView' => 'Vue file',
      'reject' => '',
      'replace with' => 'remplacer par',
      'Reset' => 'Remise � z�ro',
      'Salutation' => 'Salutation',
      'Signature' => 'Signature',
      'Sorry' => 'D�sol�',
      'Stats' => 'Statistiques',
      'Subfunction' => 'sous-fonction',
      'submit' => 'soumettre',
      'submit!' => 'soumettre&nbsp;!',
      'Text' => 'Texte',
      'The recommended charset for your language is %s!' => 'Les jeux de charact�res pour votre langue est %s!',
      'Theme' => 'Th�me',
      'There is no account with that login name.' => '',
      'Timeover' => '',
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
      'You got new message!' => '',
      'You have %s new message(s)!' => '',
      'You have %s reminder ticket(s)!' => '',

    # Template: AAAMonth
      'Apr' => '',
      'Aug' => '',
      'Dec' => '',
      'Feb' => '',
      'Jan' => '',
      'Jul' => '',
      'Jun' => '',
      'Mar' => '',
      'May' => '',
      'Nov' => '',
      'Oct' => '',
      'Sep' => '',

    # Template: AAAPreferences
      'Custom Queue' => 'File d\'attente personnelle',
      'Follow up notification' => 'Notification de suivi',
      'Frontend' => 'Frontal',
      'Mail Management' => 'Gestion des Emails',
      'Move notification' => 'Notification de mouvement',
      'New ticket notification' => 'Notification de nouveau ticket',
      'Other Options' => 'Autres options',
      'Preferences updated successfully!' => 'Les pr�f�rences ont bien �t� mises � jours',
      'QueueView refresh time' => 'Temps de rafra�chissement de la vue des files',
      'Select your frontend Charset.' => 'Choix du jeu de caract�res du frontal',
      'Select your frontend language.' => 'Choix de la langue du frontal',
      'Select your frontend QueueView.' => 'Choisissez votre frontal de vue des files',
      'Select your frontend Theme.' => 'Choix du th�me du frontal',
      'Select your QueueView refresh time.' => 'Choix du d�lai de rafra�chissement de la vue des files',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Me pr�venir si un client envoie un suivi (follow-up) et que je suis le propri�taire du ticket.',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Me pr�venir si un ticket est d�plac� dans une file personnalis�',
      'Send me a notification if a ticket is unlocked by the system.' => 'Me pr�venir si un ticket est d�v�rouill� par le syst�me',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Me pr�venir si un nouveau ticket appara�t dans mes files personnelles.',
      'Ticket lock timeout notification' => 'Pr�venir du d�passement du d�lai d\'un verrou ',

    # Template: AAATicket
      '1 very low' => '',
      '2 low' => '',
      '3 normal' => '',
      '4 high' => '',
      '5 very high' => '',
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
      'high' => 'bloque tout un poste',
      'History' => 'Historique',
      'If it is not displayed correctly,' => 'Si il n\'est pas affich� correctement',
      'Lock' => 'Verrouiller',
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
      'pending auto close+' => '',
      'pending auto close-' => '',
      'pending reminder' => '',
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
      'This message was written in a character set other than your own.' => '',
      'Ticket' => 'Ticket',
      'To' => '� ',
      'to open it in a new window.' => 'Pour l\'ouvrir dans une nouvelle fen�tre',
      'Unlock' => 'D�verrouiller',
      'very high' => 'bloque un service entier',
      'very low' => 'confort intellectuel',
      'View' => 'Vue',
      'webrequest' => 'Requete par le web',
      'Zoom' => 'D�tail',

    # Template: AAAWeekDay
      'Fri' => '',
      'Mon' => '',
      'Sat' => '',
      'Sun' => '',
      'Thu' => '',
      'Tue' => '',
      'Wed' => '',

    # Template: AdminAttachmentForm
      'Add attachment' => '',
      'Attachment Management' => '',
      'Change attachment settings' => '',

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
      'to get the from line of the email' => '',
      'to get the realname of the sender (if given)' => '',
      'to get the ticket number of the ticket' => '',
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
      'Customer user will be needed to to login via customer panels.' => '',

    # Template: AdminCustomerUserGeneric

    # Template: AdminCustomerUserPreferencesGeneric

    # Template: AdminEmail
      'Admin-Email' => 'Email de l\'administrateur',
      'Body' => 'Corps',
      'OTRS-Admin Info!' => 'Information de l\'administrateur OTRS',
      'Recipents' => 'R�cipients',

    # Template: AdminEmailSent
      'Message sent to' => 'Message envoy� �',

    # Template: AdminGroupForm
      'Add group' => 'Ajouter un groupe',
      'Change group settings' => 'Changer les param�tres d\'un groupe',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'De nouveaux groupes permettront de g�rer les droits d\'acc�s pour les diff�rents groupes d\'un agent (exemple&nbsp;: achats, comptabilit�, support, ventes...).',
      'Group Management' => 'Administration des groupes',
      'It\'s useful for ASP solutions.' => 'C\'est utile pour les fournisseurs d\'applications.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Le groupe admin permet d\'acc�der � la zone d\'administration et le groupe stats � la zone de statistiques.',

    # Template: AdminLanguageForm
      'Add language' => 'Ajouter une langue',
      'Change system language setting' => 'Modification des parm�tres de langue du syst�me',
      'System Language Management' => 'Gestion des langues du syst�me',

    # Template: AdminLog
      'System Log' => '',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Email de l\'administrateur.',
      'AgentFrontend' => 'Frontal d\'agent',
      'Auto Response <-> Queue' => 'R�ponse Automatique <-> Files',
      'Auto Responses' => 'R�ponses automatiques',
      'Charsets' => 'Jeu de Charact�re',
      'Customer User' => 'Client Utilisateur',
      'Email Addresses' => 'Adresses courriel',
      'Groups' => 'Groupes',
      'Logout' => 'D�connexion',
      'Misc' => '',
      'POP3 Account' => '',
      'Responses' => 'R�ponses',
      'Responses <-> Queue' => 'R�ponses <-> Files',
      'Select Box' => 'Choisissez une bo�te',
      'Session Management' => 'Gestion des sessions',
      'Status defs' => '',
      'System' => '',
      'User <-> Groups' => 'Utilisateur <-> Groupes',

    # Template: AdminPOP3Form
      'Add POP3 Account' => '',
      'All incoming emails with one account will be dispatched in the selected queue!' => '',
      'Change POP3 Account setting' => '',
      'Host' => '',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => '',
      'Login' => 'Login',
      'POP3 Account Management' => '',
      'Trusted' => '',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Gestion des files <-> r�ponses automatiques',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = pas d\'escalade',
      '0 = no unlock' => '0 = pas de v�rouillage',
      'Add queue' => 'Ajouter une file',
      'Change queue settings' => 'Modifier les param�tres des files',
      'Escalation time' => 'D�lai d\'escalade',
      'Follow up Option' => 'Option des suivis',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => '',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => '',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => '',
      'Key' => 'Clef',
      'Queue Management' => 'Gestion des files',
      'Systemaddress' => '',
      'The salutation for email answers.' => '',
      'The signature for email answers.' => '',
      'Ticket lock after a follow up' => '',
      'Unlock timeout' => 'D�verrouiller la temporisation',
      'Will be the sender address of this queue for email answers.' => '',

    # Template: AdminQueueResponsesChangeForm
      'Change %s settings' => '',
      'Std. Responses <-> Queue Management' => 'Gestion des r�ponses standard <-> files',

    # Template: AdminQueueResponsesForm
      'Answer' => '',
      'Change answer <-> queue settings' => 'Modifier les param�tres de r�ponses <-> files',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => '',

    # Template: AdminResponseAttachmentForm
      'Change Response <-> Attachment settings' => '',

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
      'Salutation Management' => 'Gestion des salutations',

    # Template: AdminSelectBoxForm
      'Max Rows' => 'Nombre de lignes maximal',

    # Template: AdminSelectBoxResult
      'Limit' => '',
      'Select Box Result' => '',
      'SQL' => '',

    # Template: AdminSession
      'kill all sessions' => 'Terminer toutes les sessions',

    # Template: AdminSessionTable
      'kill session' => 'Terminer une session',
      'SessionID' => '',

    # Template: AdminSignatureForm
      'Add signature' => 'Ajouter une signature',
      'Change signature settings' => 'Modification des param�tres de signatures',
      'for agent firstname' => 'pour le pr�nom de l\'agent',
      'for agent lastname' => 'pour le nom de l\'agent',
      'Signature Management' => 'Gestion des signatures',

    # Template: AdminStateForm
      'Add state' => 'Ajouter un �tat',
      'Change system state setting' => 'Modification des param�tres d\'�tats du syst�me',
      'System State Management' => 'Gestion des �tats du syst�me',

    # Template: AdminSystemAddressForm
      'Add system address' => 'Ajouter une adresse courriel du syst�me',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Tous les courriels avec cette adresse en destinataire (�&nbsp;:) seront plac�s dans la file choisie..',
      'Change system address setting' => 'Modification des param�tres des adresses courriel du syst�me',
      'Email' => 'Courriel',
      'Realname' => '',
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
      'Change  settings' => '',
      'User <-> Group Management' => 'Gestion utilisateurs <-> groupes',

    # Template: AdminUserGroupForm
      'Change user <-> group settings' => 'Modifier les param�tres utilisateurs <-> groupes',

    # Template: AdminUserPreferencesGeneric

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Un message doit avoir un destinataire (�&nbsp;:)!',
      'Bounce ticket' => '',
      'Bounce to' => '',
      'Inform sender' => '',
      'Next ticket state' => 'Prochain �tat du ticket',
      'Send mail!' => 'Envoyer le courriel&nbsp;!',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Il faut une adresse courriel (ecemple&nbsp;: client@exemple.fr)&nbsp;!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further inforamtions.' => '',

    # Template: AgentClose
      ' (work units)' => '',
      'Close ticket' => '',
      'Close type' => '',
      'Close!' => '',
      'Note Text' => '',
      'Note type' => 'Type de note',
      'store' => 'stocker',
      'Time units' => '',

    # Template: AgentCompose
      'A message should have a subject!' => 'Un message doit avoir un sujet&nbsp;!',
      'Attach' => '',
      'Compose answer for ticket' => 'Composer une r�ponse pour le ticket',
      'for pending* states' => '',
      'Is the ticket answered' => '',
      'Options' => '',
      'Pending Date' => '',
      'Spell Check' => '',

    # Template: AgentCustomer
      'Back' => 'retour',
      'Change customer of ticket' => '',
      'Set customer id of a ticket' => 'D�finir le num�ro de client d\'un ticket',

    # Template: AgentCustomerHistory
      'Customer history' => '',

    # Template: AgentCustomerHistoryTable

    # Template: AgentCustomerView
      'Customer Data' => '',

    # Template: AgentForward
      'Article type' => 'Type d\'article',
      'Date' => '',
      'End forwarded message' => '',
      'Forward article of ticket' => 'Transmettre l\'article du ticket',
      'Forwarded message from' => '',
      'Reply-To' => '',

    # Template: AgentHistoryForm
      'History of' => '',

    # Template: AgentMailboxNavBar
      'All messages' => '',
      'CustomerID' => 'Num�ro de client#',
      'down' => '',
      'Mailbox' => '',
      'New' => '',
      'New messages' => '',
      'Open' => '',
      'Open messages' => '',
      'Order' => '',
      'Pending messages' => '',
      'Reminder' => '',
      'Reminder messages' => '',
      'Sort by' => '',
      'Tickets' => '',
      'up' => '',

    # Template: AgentMailboxTicket
      'Add Note' => 'Ajouter note',

    # Template: AgentNavigationBar
      'FAQ' => '',
      'Locked tickets' => 'Tickets verrouill�s',
      'new message' => 'Nouveau message',
      'PhoneView' => 'Vue t�l�phone',
      'Preferences' => 'Pr�f�rences',
      'Utilities' => 'Utilitaires',

    # Template: AgentNote
      'Add note to ticket' => 'Ajouter une note au ticket',
      'Note!' => '',

    # Template: AgentOwner
      'Change owner of ticket' => '',
      'Message for new Owner' => '',
      'New user' => '',

    # Template: AgentPending
      'Pending date' => '',
      'Pending type' => '',
      'Set Pending' => '',

    # Template: AgentPhone
      'Customer called' => '',
      'Phone call' => 'Appel t�l�phonique',
      'Phone call at %s' => '',

    # Template: AgentPhoneNew
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
      'New state' => '',

    # Template: AgentSpelling
      'Apply these changes' => '',
      'Discard all changes and return to the compose screen' => '',
      'Return to the compose screen' => '',
      'Spell Checker' => '',
      'spelling error(s)' => '',
      'The message being composed has been closed.  Exiting.' => '',
      'This window must be called from compose window' => '',

    # Template: AgentStatusView
      'D' => '',
      'sort downward' => '',
      'sort upward' => '',
      'Ticket limit:' => '',
      'Ticket Status' => '',
      'U' => '',

    # Template: AgentStatusViewTable

    # Template: AgentStatusViewTableNotAnswerd

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket verrouill�&nbsp;!',
      'unlock' => 'd�verrouiller',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => '',
      'Customer history search (e. g. "ID342425").' => '',
      'No * possible!' => '',

    # Template: AgentUtilSearchByText
      'Article free text' => '',
      'Fulltext search' => '',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Recherche en texte int�gral (exemple&nbsp;: "Mar*in" ou "Constru*" ou "martin+bonjour")',
      'Search in' => '',
      'Ticket free text' => '',

    # Template: AgentUtilSearchByTicketNumber
      'search' => '',
      'search (e. g. 10*5155 or 105658*)' => '',

    # Template: AgentUtilSearchNavBar
      'Results' => '',
      'Site' => '',
      'Total hits' => 'Total des hits',

    # Template: AgentUtilSearchResult

    # Template: AgentUtilTicketStatus
      'All open tickets' => '',
      'open tickets' => '',
      'Provides an overview of all' => '',
      'So you see what is going on in your system.' => '',

    # Template: CustomerCreateAccount
      'Create' => '',
      'Create Account' => '',

    # Template: CustomerError
      'Backend' => '',
      'BackendMessage' => '',
      'Click here to report a bug!' => 'Cliquer ici pour signaler une anomalie',
      'Handle' => '',

    # Template: CustomerFooter
      'Powered by' => '',

    # Template: CustomerHeader
      'Contact' => '',
      'Home' => '',
      'Online-Support' => '',
      'Products' => '',
      'Support' => '',

    # Template: CustomerLogin

    # Template: CustomerLostPassword
      'Lost your password?' => '',
      'Request new password' => '',

    # Template: CustomerMessage
      'Follow up' => '',

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'Create new Ticket' => '',
      'My Tickets' => '',
      'New Ticket' => 'nouveau ticket',
      'Ticket-Overview' => '',
      'Welcome %s' => '',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView
      'of' => '',

    # Template: CustomerStatusViewTable

    # Template: CustomerTicketZoom
      'Accounted time' => '',

    # Template: CustomerWarning

    # Template: Error

    # Template: Footer

    # Template: Header

    # Template: InstallerStart
      'next step' => '',

    # Template: InstallerSystem
      '(Email of the system admin)' => '',
      '(Full qualified domain name of your system)' => '',
      '(Logfile just needed for File-LogModule!)' => '',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '',
      '(Used default language)' => '',
      '(Used log backend)' => '',
      '(Used ticket number format)' => '',
      'Default Charset' => '',
      'Default Language' => '',
      'Logfile' => '',
      'LogModule' => '',
      'Organization' => '',
      'System FQDN' => '',
      'SystemID' => '',
      'Ticket Hook' => '',
      'Ticket Number Generator' => '',
      'Webfrontend' => '',

    # Template: Login

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Pas d\'autorisation',

    # Template: Notify
      'Info' => '',

    # Template: QueueView
      'All tickets' => 'tous les tickets',
      'Queues' => 'Files',
      'Show all' => 'Tout montrer',
      'Ticket available' => 'Tickets disponibles',
      'tickets' => 'Tickets',
      'Tickets shown' => 'Tickets affich�s',

    # Template: SystemStats
      'Graphs' => 'Graphiques',

    # Template: Test
      'OTRS Test Page' => '',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Escalade du ticket',

    # Template: TicketView
      'Change queue' => 'Changer de file',
      'Compose Answer' => 'Composer une r�ponse',
      'Contact customer' => 'Contacter le client',
      'Escalation in' => '',
      'phone call' => '',

    # Template: TicketViewLite

    # Template: TicketZoom

    # Template: TicketZoomNote

    # Template: TicketZoomSystem

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
      'A message should have a From: recipient!' => '',
      'New ticket via call.' => '',
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
      'You have to be in the admin group!' => 'Il est n�cessaire d\'�tre dans le groupe d\'administration&nbsp;!',
      'You have to be in the stats group!' => 'Il est n�cessaire d\'�tre dans le groupe des statistiques&nbsp;!',
      'You need a email address (e. g. customer@example.com) in From:!' => '',
      'auto responses set' => 'R�ponse automatique positionn�e',
    );

    # $$STOP$$

    $Self->{Translation} = \%Hash;

}
# --
1;
