# Kernel/Language/fr.pm - provides fr language translation
# Copyright (C) 2002 Bernard Choppy <choppy at imaginet.fr>
# Copyright (C) 2002 Nicolas Goralski <ngoralski at oceanet-technology.com>
# Copyright (C) 2004 Yann Richard <ze at nbox.org>
# Copyright (C) 2004 Igor Genibel <igor.genibel at eds-opensource.com>
# --
# $Id: fr.pm,v 1.38.2.1 2004-09-21 19:01:46 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::fr;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.38.2.1 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;
# --
sub Data {
    my $Self = shift;
    my %Param = @_;
    my %Hash = ();

    # $$START$$
    # Last translation Tue Aug 24 10:08:55 2004 by 

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
      '(Click here to add)' => '(Cliquez i�i pour ajouter)',
      '...Back' => 'Revenir en arri�re',
      '10 minutes' => '10 minutes',
      '15 minutes' => '15 minutes',
      'Added User "%s"' => 'Ajout de l\'utilisateur "%s"',
      'AddLink' => 'Ajouter un lien',
      'Admin-Area' => 'Zone d\'administration',
      'agent' => 'technicien',
      'Agent-Area' => 'Interface du technicien',
      'all' => 'tout',
      'All' => 'Tout',
      'Attention' => 'Attention',
      'Back' => 'retour',
      'before' => 'avant',
      'Bug Report' => 'Rapport d\'anomalie',
      'Calendar' => '',
      'Cancel' => 'Annuler',
      'change' => 'modifier',
      'Change' => 'Modifier',
      'change!' => 'modifier !',
      'click here' => 'Cliquer ici',
      'Comment' => 'Commentaire',
      'Contract' => '',
      'Crypt' => '',
      'Crypted' => '',
      'Customer' => 'Client',
      'customer' => 'client',
      'Customer Info' => 'Information client',
      'day' => 'jour',
      'day(s)' => 'jour(s)',
      'days' => 'jours',
      'description' => 'description',
      'Description' => 'Description',
      'Directory' => 'R�pertoire',
      'Dispatching by email To: field.' => 'R�partition par le champs \'�:\' du courriel',
      'Dispatching by selected Queue.' => 'R�partition selon la file s�lectionn�e',
      'Don\'t show closed Tickets' => 'Ne pas montrer les tickets ferm�s',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Cela ne fonctionne pas avec l\'identfifiant utilisateur 1 (Compte Syst�me)! Veuillez cr�er un nouvel utilisateur!',
      'Done' => 'Fait',
      'end' => 'fin',
      'Error' => 'Erreur',
      'Example' => 'Exemple',
      'Examples' => 'Exemples',
      'Facility' => 'Service',
      'FAQ-Area' => 'Foire Aux Questions',
      'Feature not active!' => 'Cette fonctionnalit� n\'est pas activ�e !',
      'go' => 'aller',
      'go!' => 'c\'est parti !',
      'Group' => 'Groupe',
      'History::AddNote' => 'Ajout d\'une note (%s)',
      'History::Bounce' => 'Redirig� vers "%s".',
      'History::CustomerUpdate' => 'Mise � jour: %s',
      'History::EmailAgent' => 'Email envoy� au client.',
      'History::EmailCustomer' => 'Ajout d\'une adresse email. %s',
      'History::FollowUp' => 'Un suivie du ticket [%s]. %s',
      'History::Forward' => 'Transf�r� vers "%s".',
      'History::Lock' => 'Ticket v�rouill�.',
      'History::LoopProtection' => 'Protection anti-boucle! Pas d\'auto r�ponse envoy� � "%s".',
      'History::Misc' => '%s',
      'History::Move' => 'Le ticket a �t� d�plac� dans la file "%s" (%s) - Ancienne file: "%s" (%s).',
      'History::NewTicket' => 'Un nouveau ticket a �t� cr�e: [%s] created (Q=%s;P=%s;S=%s).',
      'History::OwnerUpdate' => 'Le nouveau propri�taire est "%s" (ID=%s).',
      'History::PhoneCallAgent' => 'Agent a appell� le client.',
      'History::PhoneCallCustomer' => 'Le client nous a appell�.',
      'History::PriorityUpdate' => 'Changement de priorit� de "%s" (%s) pour "%s" (%s).',
      'History::Remove' => '%s',
      'History::SendAgentNotification' => '"%s"-notification envoy� � "%s".',
      'History::SendAnswer' => 'Email envoy� � "%s".',
      'History::SendAutoFollowUp' => 'Suivie automatique envoy� � "%s".',
      'History::SendAutoReject' => 'Rejet automatique envoy� � "%s".',
      'History::SendAutoReply' => 'R�ponse automatique envoy� � "%s".',
      'History::SendCustomerNotification' => 'Notification envoy� � "%s".',
      'History::SetPendingTime' => 'Mise � jour: %s',
      'History::StateUpdate' => 'Avant: "%s" Apr�s: "%s"',
      'History::TicketFreeTextUpdate' => 'Mise � jour: %s=%s;%s=%s;',
      'History::TicketLinkAdd' => 'Added link to ticket "%s".',
      'History::TicketLinkDelete' => 'Deleted link to ticket "%s".',
      'History::TimeAccounting' => 'Temps pass� sur l\'action: %s . Total du temps pass� pour ce ticket: %s unit�(s).',
      'History::Unlock' => 'Ticket d�v�rouill�.',
      'History::WebRequestCustomer' => 'Requ�te du client via le web.',
      'Hit' => 'Hit',
      'Hits' => 'Hits',
      'hour' => 'heure',
      'hours' => 'heures',
      'Ignore' => 'Ignorer',
      'invalid' => 'invalide',
      'Invalid SessionID!' => 'ID de Session Invalide !',
      'Language' => 'Langue',
      'Languages' => 'Langues',
      'last' => 'dernier',
      'Line' => 'Ligne',
      'Lite' => 'all�g�e',
      'Login failed! Your username or password was entered incorrectly.' => 'La connection a �chou� ! Votre nom d\'utilisateur ou votre mot de passe sont erron�s.',
      'Logout successful. Thank you for using OTRS!' => 'D�connexion r�ussie. Merci d\'avoir utilis� OTRS!',
      'Message' => 'Message',
      'minute' => 'minute',
      'minutes' => 'minutes',
      'Module' => 'Module',
      'Modulefile' => 'Fichier de module',
      'month(s)' => 'mois',
      'Name' => 'Nom',
      'New Article' => 'Nouvel Article',
      'New message' => 'Nouveau message',
      'New message!' => 'Nouveau message !',
      'Next' => '',
      'Next...' => '',
      'No' => 'Non',
      'no' => 'non',
      'No entry found!' => 'Aucun r�sultat n\'a �t� trouv� !',
      'No Permission!' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => '',
      'No suggestions' => 'Pas de suggestions',
      'none' => 'aucun',
      'none - answered' => 'aucun - r�pondu',
      'none!' => 'aucun !',
      'Normal' => 'normal',
      'off' => '�teint',
      'Off' => '�teint',
      'On' => 'Allum�',
      'on' => 'allum�',
      'Online Agent: %s' => '',
      'Online Customer: %s' => '',
      'Password' => 'Mot de Passe',
      'Passwords dosn\'t match! Please try it again!' => '',
      'Pending till' => 'En attendant jusqu\'�',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Il faut r�pondre � ce(s) ticket(s) pour revenir � une vue normale de la file !',
      'Please contact your admin' => 'Veuillez contacter votre admnistrateur',
      'please do not edit!' => 'Ne pas modifier !',
      'possible' => 'possible',
      'Preview' => 'Aper�u',
      'QueueView' => 'Vue file',
      'reject' => 'rejet�',
      'replace with' => 'remplacer par',
      'Reset' => 'Remise � z�ro',
      'Salutation' => 'Salutation',
      'Session has timed out. Please log in again.' => 'Le d�lai de votre session est d�pass�, veuillez vous r�-authentifier.',
      'Show closed Tickets' => 'Voir les tickets ferm�s',
      'Sign' => 'Signer',
      'Signature' => 'Signature',
      'Signed' => 'Sign�',
      'Size' => 'Taille',
      'Sorry' => 'D�sol�',
      'Stats' => 'Statistiques',
      'Subfunction' => 'sous-fonction',
      'submit' => 'soumettre',
      'submit!' => 'soumettre !',
      'system' => 'syst�me',
      'Take this Customer' => 'Choisir ce client',
      'Take this User' => 'Choisir cet utilisateur',
      'Text' => 'Texte',
      'The recommended charset for your language is %s!' => 'Le jeu de caract�re correspondant � votre langue est %s!',
      'Theme' => 'Th�me',
      'There is no account with that login name.' => 'Il n\'y a aucun compte avec ce nom de connexion',
      'Ticket Number' => 'Num�ro de ticket',
      'Timeover' => 'Temp �coul�',
      'To: (%s) replaced with database email!' => 'Le champ \'�:\' (%s) a �t� remplac� avec la valeur de la base de donn�es des des adresses de courriel !',
      'top' => 'haut',
      'Type' => 'Type',
      'update' => 'mettre � jour',
      'Update' => 'Mettre � jour',
      'update!' => 'mettre � jour !',
      'Upload' => 'Uploader',
      'User' => 'Utilisateur',
      'Username' => 'Nom d\'utilisateur',
      'Valid' => 'Valide',
      'Warning' => 'Attention',
      'week(s)' => 'semaine(s)',
      'Welcome to OTRS' => 'Bienvenue dans OTRS',
      'Word' => 'Mot',
      'wrote' => '�crit',
      'year(s)' => 'ann�e(s)',
      'Yes' => 'Oui',
      'yes' => 'oui',
      'You got new message!' => 'Vous avez un nouveau message !',
      'You have %s new message(s)!' => 'Vous avez %s nouveau(x) message(s) !',
      'You have %s reminder ticket(s)!' => 'Vous avez %s rappel(s) de ticket(s) !',

    # Template: AAAMonth
      'Apr' => 'Avr',
      'Aug' => 'A�u',
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
      'Closed Tickets' => 'Tickets ferm�s',
      'CreateTicket' => 'Cr�er Ticket',
      'Custom Queue' => 'File d\'attente personnalis�',
      'Follow up notification' => 'Notification de suivi',
      'Frontend' => 'Interface',
      'Mail Management' => 'Gestion des e-mails',
      'Max. shown Tickets a page in Overview.' => 'Nombre de tickets maximum sur la page d\'aper�u des tickets',
      'Max. shown Tickets a page in QueueView.' => 'Nombre de tickets maximum sur la page de la vue d\'une file',
      'Move notification' => 'Notification de mouvement',
      'New ticket notification' => 'Notification de nouveau ticket',
      'Other Options' => 'Autres options',
      'PhoneView' => 'Vue t�l�phone',
      'Preferences updated successfully!' => 'Les pr�f�rences ont bien �t� mises � jours !',
      'QueueView refresh time' => 'Temps de rafra�chissement de la vue des files',
      'Screen after new ticket' => '�cran apr�s un nouveau ticket',
      'Select your default spelling dictionary.' => 'S�lectionnez votre correcteur orthographique par d�faut',
      'Select your frontend Charset.' => 'Choix du jeu de caract�res de l\'interface',
      'Select your frontend language.' => 'Choix de la langue de l\'interface',
      'Select your frontend QueueView.' => 'Choisissez votre interface de vue des files',
      'Select your frontend Theme.' => 'Choix du th�me de l\'interface',
      'Select your QueueView refresh time.' => 'Choix du d�lai de rafra�chissement de la vue des files',
      'Select your screen after creating a new ticket.' => 'S�lectionnez l\'�cran qui sera affich� apr�s avoir cr�� un nouveau ticket.',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Me pr�venir si un client envoie un suivi (follow-up) et que je suis le propri�taire du ticket.',
      'Send me a notification if a ticket is moved into one of "My Queues".' => 'Me pr�venir si un ticket est d�plac� dans une de "Mes files".',
      'Send me a notification if a ticket is unlocked by the system.' => 'Me pr�venir si un ticket est d�v�rouill� par le syst�me',
      'Send me a notification if there is a new ticket in "My Queues".' => 'Me pr�venir si il y a un nouveau ticket dans une de "Mes files".',
      'Show closed tickets.' => 'Voir les tickets ferm�s',
      'Spelling Dictionary' => 'Correcteur orthographique',
      'Ticket lock timeout notification' => 'Pr�venir du d�passement du d�lai d\'un verrou',
      'TicketZoom' => 'Vue en d�tails',

    # Template: AAATicket
      '1 very low' => '1 tr�s bas',
      '2 low' => '2 bas',
      '3 normal' => '3 normal',
      '4 high' => '4 important',
      '5 very high' => '5 tr�s important',
      'Action' => 'Action',
      'Age' => '�ge',
      'Article' => 'Article',
      'Attachment' => 'Pi�ce jointe',
      'Attachments' => 'Pi�ces jointes',
      'Bcc' => 'Copie Invisible',
      'Bounce' => 'Renvoyer',
      'Cc' => 'Copie ',
      'Close' => 'Fermer',
      'closed' => '',
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
      'high' => 'important',
      'History' => 'Historique',
      'If it is not displayed correctly,' => 'S\'il n\'est pas affich� correctement',
      'lock' => 'v�rrouiller',
      'Lock' => 'V�rrouiller',
      'low' => 'confort de fonctionnement',
      'Move' => 'D�placer',
      'new' => 'nouveau',
      'normal' => 'normal',
      'note-external' => 'Note externe',
      'note-internal' => 'Note interne',
      'note-report' => 'Note rapport',
      'open' => 'ouvrir',
      'Owner' => 'Propri�taire',
      'Pending' => 'En attente',
      'pending auto close+' => 'Attente de la fermeture automatique(+)',
      'pending auto close-' => 'Attente de la fermeture automatique(-)',
      'pending reminder' => 'Attente du rappel',
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
      'This is a HTML email. Click here to show it.' => 'Ceci est un message au format HTML ; cliquer ici pour l\'afficher.',
      'This message was written in a character set other than your own.' => 'Ce message a �t� �crit dans un jeu de caract�res diff�rent du v�tre.',
      'Ticket' => 'Ticket',
      'Ticket "%s" created!' => 'Le ticket %s a �t� cr�� !',
      'To' => '�',
      'to open it in a new window.' => 'L\'ouvrir dans une nouvelle fen�tre',
      'Unlock' => 'D�verrouiller',
      'unlock' => 'd�verrouiller',
      'very high' => 'tr�s haut',
      'very low' => 'tr�s basse',
      'View' => 'Vue',
      'webrequest' => 'Requ�te par le web',
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
      'Add' => 'Ajouter',
      'Attachment Management' => 'Gestion des attachements',

    # Template: AdminAutoResponseForm
      'Auto Response From' => 'R�ponse automatique de ',
      'Auto Response Management' => 'Gestion des r�ponses automatiques',
      'Note' => 'Note',
      'Response' => 'R�ponse',
      'to get the first 20 character of the subject' => 'pour avoir les 20 premiers caract�res du sujet ',
      'to get the first 5 lines of the email' => 'pour avoir les 5 premi�res ligne du mail',
      'to get the from line of the email' => 'pour avoir les lignes \'De\' du courriel',
      'to get the realname of the sender (if given)' => 'pour avoir le nom r�el de l\'utilisateur (s\il est donn�)',
      'to get the ticket id of the ticket' => 'pour avoir l\'identifiant du ticket',
      'to get the ticket number of the ticket' => 'pour avoir le num�ro du ticket',
      'Useable options' => 'Options accessibles',

    # Template: AdminCustomerUserForm
      'Customer User Management' => 'Gestion des clients utilisateurs',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => 'Les clients utilisateurs seront invit�s � se connecter par la page client.',
      'Result' => 'R�sultat',
      'Search' => 'Chercher',
      'Search for' => 'Chercher �',
      'Select Source (for add)' => 'S�lectionnez une source (pour ajout)',
      'Source' => 'Source',
      'The message being composed has been closed.  Exiting.' => 'Le message en cours de r�daction a �t� cl�tur�. Sortie.',
      'This values are read only.' => 'Ces valeurs sont en lecture seule.',
      'This values are required.' => 'Ces valeurs sont obligatoires.',
      'This window must be called from compose window' => 'Cette fen�tre doit �tre appel�e de la fen�tre depuis la fen�tre de r�daction',

    # Template: AdminCustomerUserGroupChangeForm
      'Change %s settings' => 'Changer les param&ecirc;tres de %s',
      'Customer User <-> Group Management' => 'Client <-> Groupes',
      'Full read and write access to the tickets in this group/queue.' => 'Acc�s complet en lecture et �criture aux tickets dans cette file/groupe.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Si rien n\'est s�lectionn�, il n\'y aura pas de droits dans ce groupe (Les tickets ne seront plus disponible pour l\'utilisateur).',
      'Permission' => 'Droits',
      'Read only access to the ticket in this group/queue.' => 'Acc�s en lecture seulement aux tickets de cette file/groupe.',
      'ro' => 'lecture seule',
      'rw' => 'lecture/�criture',
      'Select the user:group permissions.' => 'S�lectionnez les permissions pour l\'utilisateur:groupe.',

    # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Modifier les param�tres utilisateurs <-> groupes',

    # Template: AdminEmail
      'Admin-Email' => 'Email de l\'administrateur',
      'Body' => 'Corps',
      'OTRS-Admin Info!' => 'Information de l\'administrateur OTRS !',
      'Recipents' => 'R�cipients',
      'send' => 'envoyer',

    # Template: AdminEmailSent
      'Message sent to' => 'Message envoy� �',

    # Template: AdminGenericAgent
      '(e. g. 10*5155 or 105658*)' => '(ex: 10*5155 or 105658*)',
      '(e. g. 234321)' => '(ex: 234321)',
      '(e. g. U5150)' => '(ex: U5150)',
      '-' => '-',
      'Add Note' => 'Ajouter une note',
      'Agent' => 'Technicien',
      'and' => 'et le',
      'CMD' => '',
      'Customer User Login' => 'Nom de connexion du client',
      'CustomerID' => 'Num�ro de client',
      'CustomerUser' => '',
      'Days' => 'Jours',
      'Delete' => 'Effacer',
      'Delete tickets' => 'Effacer les tickets',
      'Edit' => '�diter',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Recherche sur le texte d\'un article (ex: "Mar*in" or "Baue*")',
      'GenericAgent' => '',
      'Hours' => 'Heures',
      'Job-List' => '',
      'Jobs' => '',
      'Last run' => '',
      'Minutes' => 'Minutes',
      'Modules' => '',
      'New Agent' => 'Nouvel Agent',
      'New Customer' => 'Nouveau Client',
      'New Owner' => 'Nouveau Propri�taire',
      'New Priority' => 'Nouvelle Priorit�',
      'New Queue' => 'Nouvelle File',
      'New State' => 'Nouvel �tat',
      'New Ticket Lock' => 'Nouveau Verrou',
      'No time settings.' => 'Pas de param�tre de temps',
      'Param 1' => 'Param�tre 1',
      'Param 2' => 'Param�tre 2',
      'Param 3' => 'Param�tre 3',
      'Param 4' => 'Param�tre 4',
      'Param 5' => 'Param�tre 5',
      'Param 6' => 'Param�tre 6',
      'Save' => 'Sauver',
      'Save Job as?' => '',
      'Schedule' => '',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Cette commande sera ex�cut�. ARG[0] sera le num�ro du ticket et ARG[1] son identifiant.',
      'Ticket created' => 'Ticket cr��',
      'Ticket created between' => 'Ticket cr�� entre le',
      'Ticket Lock' => 'Ticket v�rouill�',
      'TicketFreeText' => 'Texte Libre du Ticket',
      'Times' => 'Fois',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Attention, ces tickets seront �ffac�s de la base de donn�e ! Ils seront d�finitivement perdu !',

    # Template: AdminGroupForm
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Cr�er de nouveaux groupes permettra de g�rer les droits d\'acc�s pour les diff�rents groupes du technicien (exemple: achats, comptabilit�, support, ventes...).',
      'Group Management' => 'Administration des groupes',
      'It\'s useful for ASP solutions.' => 'C\'est utile pour les fournisseurs d\'applications.',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Le groupe admin permet d\'acc�der � la zone d\'administration et le groupe stats � la zone de statistiques.',

    # Template: AdminLog
      'System Log' => 'Journaux du Syst�me',
      'Time' => 'Date et heure',

    # Template: AdminNavigationBar
      'AdminEmail' => 'Courriel de l\'administrateur.',
      'Attachment <-> Response' => 'Pi�ce jointe <-> R�ponse',
      'Auto Response <-> Queue' => 'R�ponse Automatique <-> Files',
      'Auto Responses' => 'R�ponses automatiques',
      'Customer User' => 'Client Utilisateur',
      'Customer User <-> Groups' => 'Client <-> Groupes',
      'Email Addresses' => 'Adresses �lectroniques',
      'Groups' => 'Groupes',
      'Logout' => 'D�connexion',
      'Misc' => 'Divers',
      'Notifications' => 'Notifications',
      'PGP Keys' => 'Cl�s PGP',
      'PostMaster Filter' => 'Filtre PostMaster',
      'PostMaster POP3 Account' => 'Compte POP3 PostMaster',
      'Responses' => 'R�ponses',
      'Responses <-> Queue' => 'R�ponses <-> Files',
      'Role' => '',
      'Role <-> Group' => '',
      'Role <-> User' => '',
      'Roles' => '',
      'Select Box' => 'Requ�te SQL libre.',
      'Session Management' => 'Gestion des sessions',
      'SMIME Certificates' => 'Certificats SMIME',
      'Status' => '�tat',
      'System' => 'Syst�me',
      'User <-> Groups' => 'Utilisateur <-> Groupes',

    # Template: AdminNotificationForm
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Options de configuration (ex: &lt;OTRS_CONFIG_HttpType&gt;)',
      'Notification Management' => 'Gestion des notifications',
      'Notifications are sent to an agent or a customer.' => 'Des notifications sont envoy�es � un technicien ou � un client.',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Options concernant les donn�es du client actuel (ex: &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Options concernant l\'utilisateur actuel ayant effectu� cet action (ex: &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Options du propri�taire d\'un ticket (ex: &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',

    # Template: AdminPGPForm
      'Bit' => '',
      'Expires' => 'Expiration',
      'File' => 'Fichier',
      'Fingerprint' => 'Empreinte',
      'FIXME: WHAT IS PGP?' => 'FIXEZ MOI: Qu\'est ce que PGP',
      'Identifier' => 'Identifier',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Dans ce cas vous pouvez directement �diter le trousseau de cl� dans Kernel/Config.pm',
      'Key' => 'Cl�',
      'PGP Key Management' => 'Gestion de Cl� PGP',

    # Template: AdminPOP3Form
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Tous les courriels entrants avec un compte seront r�partis dans la file s�lectionn�e !',
      'Dispatching' => 'R�partition',
      'Host' => 'H�te',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Si votre compte est v�rifi�, les ent&ecirc;tes x-otrs (pour les priorit�s,...) seront utilis�s !',
      'POP3 Account Management' => 'Gestion du compte POP3',
      'Trusted' => 'V�rifi�',

    # Template: AdminPostMasterFilter
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'dispatcher ou filtrer les courriels entrant bas� sur les en-t�tes (X-*)! L\'utilisationd\'expression r�guli�re est aussi possible.',
      'Filtername' => 'Nom du filtre',
      'Header' => 'En-t�te',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => '',
      'Match' => 'Correspond',
      'PostMaster Filter Management' => 'Gestion des filtres PostMaster',
      'Set' => 'Assigner',
      'Value' => 'Valeur',

    # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Response Management' => 'Gestion des files <-> r�ponses automatiques',

    # Template: AdminQueueAutoResponseTable

    # Template: AdminQueueForm
      '0 = no escalation' => '0 = pas de remont� du ticket',
      '0 = no unlock' => '0 = pas de v�rouillage',
      'Customer Move Notify' => 'Notification lors d\'un changement de file',
      'Customer Owner Notify' => 'Notification lors d\'un changement de propri�taire',
      'Customer State Notify' => 'Notification lors d\'un changement d\'�tat',
      'Escalation time' => 'D�lai de remont� du ticket',
      'Follow up Option' => 'Option des suivis',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Si un ticket est clotur� et que le client envoie une note, le ticket sera verrouill� pour l\'ancien propri�taire',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Si un ticket n\'est pas r�pondu dans le temps imparti, ce ticket sera seulement affich�',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Si un technicien verrouille un ticket et qu\'il/elle n\'envoie pas une r�ponse dans le temps imparti, le ticket sera d�verrouill� automatiquement. Le ticket sera alors visible de tous les autres techniciens',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS envoit un courriel au client ilorsque le ticket change de file.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS envoit un courriel au client lorsque le ticket change de propri�taire.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS envoit un courriel au client lorsque le ticket change d\'�tat.',
      'Queue Management' => 'Gestion des files',
      'Sub-Queue of' => 'Sous-file',
      'Systemaddress' => 'Adresse du Syst�me',
      'The salutation for email answers.' => 'La formule de politesse pour les r�ponses par mail',
      'The signature for email answers.' => 'La signature pour les r�ponses par courriel',
      'Ticket lock after a follow up' => 'Ticket verrouill� apr�s un suivi',
      'Unlock timeout' => 'D�lai du d�verrouillage',
      'Will be the sender address of this queue for email answers.' => 'Sera l\'adresse d\'exp�dition pour les r�ponses par courriel.',

    # Template: AdminQueueResponsesChangeForm
      'Std. Responses <-> Queue Management' => 'R�ponses standard <-> Files',

    # Template: AdminQueueResponsesForm
      'Answer' => 'R�ponse',

    # Template: AdminResponseAttachmentChangeForm
      'Std. Responses <-> Std. Attachment Management' => 'R�ponses Standard <-> Gestion des attachements standard',

    # Template: AdminResponseAttachmentForm

    # Template: AdminResponseForm
      'A response is default text to write faster answer (with default text) to customers.' => 'Une r�ponse est un texte par d�faut destin� � r�diger plus rapidement des r�ponses standard aux clients.',
      'All Customer variables like defined in config option CustomerUser.' => '',
      'Don\'t forget to add a new response a queue!' => 'Ne pas oublier d\'ajouter une file � une nouvelle r�ponse !',
      'Next state' => '�tat suivant',
      'Response Management' => 'Gestion des r�ponses',
      'The current ticket state is' => 'L\'�tat actuel du ticket est',
      'Your email address is new' => 'Votre adresse �lectronique est nouvelle',

    # Template: AdminRoleForm
      'Create a role and put groups in it. Then add the role to the users.' => '',
      'It\'s useful for a lot of users and groups.' => '',
      'Role Management' => '',

    # Template: AdminRoleGroupChangeForm
      'create' => 'cr�er',
      'move_into' => 'd�placer dans',
      'owner' => 'propri�taire',
      'Permissions to change the ticket owner in this group/queue.' => 'Permission de changer le propri�taire d\'un ticket dans cette file/groupe.',
      'Permissions to change the ticket priority in this group/queue.' => 'Permission de changer la priorit� d\'un ticket dans cette file/groupe.',
      'Permissions to create tickets in this group/queue.' => 'Permission de cr�er un ticket dans cette file/groupe.',
      'Permissions to move tickets into this group/queue.' => 'Permission de d�placer un ticket dans cette file/groupe.',
      'priority' => 'priorit�',
      'Role <-> Group Management' => '',

    # Template: AdminRoleGroupForm
      'Change role <-> group settings' => '',

    # Template: AdminRoleUserChangeForm
      'Active' => '',
      'Role <-> User Management' => '',
      'Select the role:user relations.' => '',

    # Template: AdminRoleUserForm
      'Change user <-> role settings' => '',

    # Template: AdminSMIMEForm
      'Add Certificate' => '',
      'Add Private Key' => '',
      'FIXME: WHAT IS SMIME?' => '',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => '',
      'Secret' => '',
      'SMIME Certificate Management' => '',

    # Template: AdminSalutationForm
      'customer realname' => 'nom r�el du client',
      'for agent firstname' => 'pour le pr�nom du technicien',
      'for agent lastname' => 'pour le nom du technicien',
      'for agent login' => 'pour le nom de connexion (login) du technicien',
      'for agent user id' => 'pour l\'identifiant du technicien',
      'Salutation Management' => 'Pr�fixes des messages',

    # Template: AdminSelectBoxForm
      'Limit' => 'Limite',
      'SQL' => 'SQL',

    # Template: AdminSelectBoxResult
      'Select Box Result' => 'Choisissez le r�sultat',

    # Template: AdminSession
      'kill all sessions' => 'Terminer toutes les sessions',
      'kill session' => 'Terminer une session',
      'Overview' => 'Aper�u',
      'Session' => '',
      'Sessions' => 'Session',
      'Uniq' => 'Unique',

    # Template: AdminSignatureForm
      'Signature Management' => 'Gestion des signatures',

    # Template: AdminStateForm
      'See also' => 'Voir aussi',
      'State Type' => 'Type d\'�tat',
      'System State Management' => 'Gestion des �tats du syst�me',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Prennez garde de bien mettre � jour les �tats par d�faut dans votre Kernel/Config.pm !',

    # Template: AdminSystemAddressForm
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Tous les courriels avec cette adresse en destinataire (�:) seront r�partis dans la file s�lectionn�e !',
      'Email' => 'Courrier �lectronique',
      'Realname' => 'V�ritable Nom',
      'System Email Addresses Management' => 'Gestion des adresses courriel du syst�me',

    # Template: AdminUserForm
      'Don\'t forget to add a new user to groups!' => 'Ne pas oublier d\'ajouter un nouvel utilisateur aux groupes !',
      'Firstname' => 'Pr�nom',
      'Lastname' => 'Nom',
      'User Management' => 'Administration des utilisateurs',
      'User will be needed to handle tickets.' => 'Un utilisateur sera n�cessaire pour g�rer les tickets.',

    # Template: AdminUserGroupChangeForm
      'User <-> Group Management' => 'Gestion utilisateurs <-> groupes',

    # Template: AdminUserGroupForm

    # Template: AgentBook
      'Address Book' => 'Carnet d\'adresses',
      'Discard all changes and return to the compose screen' => 'Annuler tous les changements et retourner � l\'�cran de saisie',
      'Return to the compose screen' => 'Retourner � l\'�cran de saisie',

    # Template: AgentBounce
      'A message should have a To: recipient!' => 'Un message doit avoir un destinataire (�:)!',
      'Bounce ticket' => 'Renvoyer le ticket',
      'Bounce to' => 'Renvoyer �',
      'Inform sender' => 'Informer l\'emetteur',
      'Next ticket state' => 'Prochain �tat du ticket',
      'Send mail!' => 'Envoyer le courriel !',
      'You need a email address (e. g. customer@example.com) in To:!' => 'Il faut une adresse courriel (ex&nbsp;: client@exemple.fr)&nbsp;!',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'Votre message concernant le ticket num�ro "<OTRS_TICKET> est r��mis � "<OTRS_BOUNCE_TO>". Contactez cette adresse pour de plus amples renseignements',

    # Template: AgentBulk
      '$Text{"Note!' => '',
      'A message should have a subject!' => 'Un message doit avoir un sujet !',
      'Note type' => 'Type de note',
      'Note!' => 'Note !',
      'Options' => 'Options',
      'Spell Check' => 'V�rification orthographique',
      'Ticket Bulk Action' => '',

    # Template: AgentClose
      ' (work units)' => ' Unit� de travail',
      'A message should have a body!' => 'Un message doit avoir un corp !',
      'Close ticket' => 'Ticket clos',
      'Close type' => 'Type de cl�ture',
      'Close!' => 'Cl�ture!',
      'Note Text' => 'Note',
      'Time units' => 'Unit� de temps',
      'You need to account time!' => 'Vous devez avoir un compte de temps&nbsp;!',

    # Template: AgentCompose
      'A message must be spell checked!' => 'L\'orthographe d\'un message doit �tre v�rifi�&nbsp;!',
      'Attach' => 'Attach�',
      'Compose answer for ticket' => 'R�diger une r�ponse pour le ticket',
      'for pending* states' => 'pour tous les �tats d\'attente',
      'Is the ticket answered' => 'Est-ce qu\'il y a eu une r�ponse concernant le ticket',
      'Pending Date' => 'En attendant la date',

    # Template: AgentCrypt

    # Template: AgentCustomer
      'Change customer of ticket' => 'Changer le client du ticket',
      'Search Customer' => 'Recherche de client',
      'Set customer user and customer id of a ticket' => 'Assigner un utilisateur client et un identifiant client pour le ticket.',

    # Template: AgentCustomerHistory
      'All customer tickets.' => 'Tout les tickets du client',
      'Customer history' => 'Historique du client',

    # Template: AgentCustomerMessage
      'Follow up' => 'Note',

    # Template: AgentCustomerView
      'Customer Data' => 'Donn�es client',

    # Template: AgentEmailNew
      'All Agents' => 'Tous les techniciens',
      'Clear To' => 'Effacer la zone de saisie "De:"',
      'Compose Email' => '�crire un courriel',
      'new ticket' => 'nouveau ticket',

    # Template: AgentForward
      'Article type' => 'Type d\'article',
      'Date' => 'Date',
      'End forwarded message' => 'Fin du message retransmi',
      'Forward article of ticket' => 'Transmettre l\'article du ticket',
      'Forwarded message from' => 'Message renvoy� par',
      'Reply-To' => 'R�pondre �',

    # Template: AgentFreeText
      'Change free text of ticket' => 'Changer le texte libre du ticket',

    # Template: AgentHistoryForm
      'History of' => 'Historique de',

    # Template: AgentHistoryRow

    # Template: AgentInfo
      'Info' => 'Information',

    # Template: AgentLookup
      'Lookup' => 'Consulter',

    # Template: AgentMailboxNavBar
      'All messages' => 'Tous les messages',
      'down' => 'vers le bas',
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
      'Tickets' => 'Tickets',
      'up' => 'vers le haut',

    # Template: AgentMailboxTicket
      '"}' => '"}',
      '"}","14' => '"}","14',
      'Add a note to this ticket!' => 'Ajouter une note au ticket!',
      'Change the ticket customer!' => 'Changer le client du ticket!',
      'Change the ticket owner!' => 'Changer le propri�taire du ticket!',
      'Change the ticket priority!' => 'Changer la priorit� du ticket!',
      'Close this ticket!' => 'Fermer ce ticket!',
      'Shows the detail view of this ticket!' => 'Voir la vue d�taill� de ce ticket!',
      'Unlock this ticket!' => 'D�verrouiller ce ticket!',

    # Template: AgentMove
      'Move Ticket' => 'Changer la file du ticket',
      'Previous Owner' => 'Propri�taire Pr�c�dent',
      'Queue ID' => 'Identifiant de la File',

    # Template: AgentNavigationBar
      'Agent Preferences' => '',
      'Bulk Action' => '',
      'Bulk Actions on Tickets' => '',
      'Create new Email Ticket' => '',
      'Create new Phone Ticket' => '',
      'Email-Ticket' => '',
      'Locked tickets' => 'Tickets verrouill�s',
      'new message' => 'Nouveau message',
      'Overview of all open Tickets' => '',
      'Phone-Ticket' => '',
      'Preferences' => 'Pr�f�rences',
      'Search Tickets' => '',
      'Ticket selected for bulk action!' => '',
      'You need min. one selected Ticket!' => '',

    # Template: AgentNote
      'Add note to ticket' => 'Ajouter une note au ticket',

    # Template: AgentOwner
      'Change owner of ticket' => 'Changer le propri�taire du ticket',
      'Message for new Owner' => 'Message pour le nouveau propri�taire',

    # Template: AgentPending
      'Pending date' => 'D�lais d\'attente',
      'Pending type' => 'Type d\'attente',
      'Set Pending' => 'D�finir l\'attente',

    # Template: AgentPhone
      'Phone call' => 'Appel t�l�phonique',

    # Template: AgentPhoneNew
      'Clear From' => 'Vider le formulaire',

    # Template: AgentPlain
      'ArticleID' => 'Identifiant de l\'Article',
      'Download' => '',
      'Plain' => 'Tel quel',
      'TicketID' => 'Identifiant du Ticket',

    # Template: AgentPreferencesCustomQueue
      'My Queues' => '',
      'You also get notified about this queues via email if enabled.' => '',
      'Your queue selection of your favorite queues.' => '',

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
      'D' => 'A-Z',
      'of' => 'de',
      'Site' => 'Site',
      'sort downward' => 'Tri d�croissant',
      'sort upward' => 'Tri croissant',
      'Ticket Status' => 'Status du Ticket',
      'U' => 'Z-A',

    # Template: AgentTicketLink
      'Delete Link' => 'Effacer le lien',
      'Link' => 'Lien',
      'Link to' => 'Lien vers',

    # Template: AgentTicketLocked
      'Ticket locked!' => 'Ticket verrouill� !',
      'Ticket unlock!' => 'Rendre le ticket !',

    # Template: AgentTicketPrint

    # Template: AgentTicketPrintHeader
      'Accounted time' => 'Temp pass�',
      'Escalation in' => 'Remont�e dans',

    # Template: AgentUtilSearch
      'Profile' => 'Profil',
      'Result Form' => 'Format du r�sultat',
      'Save Search-Profile as Template?' => 'Sauver le profil de recherche ?',
      'Search-Template' => 'Profil de recherche',
      'Select' => 'S�lectionner',
      'Ticket Search' => 'Recherche de ticket',
      'Yes, save it with name' => 'Oui, le sauver avec le nom',

    # Template: AgentUtilSearchByCustomerID
      'Customer history search' => 'Recherche dans l\'historique client',
      'Customer history search (e. g. "ID342425").' => 'Recherche dans l\'historique client (ex: "ID342425")',
      'No * possible!' => 'Pas de * possible !',

    # Template: AgentUtilSearchResult
      'Change search options' => 'Changer les options de recherche',
      'Results' => 'R�sultat',
      'Search Result' => 'R�sultat de la recherche',
      'Total hits' => 'Total des hits',

    # Template: AgentUtilSearchResultPrint

    # Template: AgentUtilSearchResultShort

    # Template: AgentUtilTicketStatus
      'All closed tickets' => 'Tous les tickets ferm�s',
      'All open tickets' => 'Tous les tickets ouverts',
      'closed tickets' => 'tickets ferm�s',
      'open tickets' => 'tickets ouverts',
      'or' => 'ou',
      'Provides an overview of all' => 'Fourni un aper�u de tous',
      'So you see what is going on in your system.' => 'Donc vous voyez ce qui se passe sur votre syst&egrave;me',

    # Template: AgentZoomAgentIsCustomer
      'Compose Follow up' => 'Fermer le suivi',
      'Your own Ticket' => 'Votre propre ticket',

    # Template: AgentZoomAnswer
      'Compose Answer' => 'R�diger une r�ponse',
      'Contact customer' => 'Contacter le client',
      'phone call' => 'Appel t�l�phonique',

    # Template: AgentZoomArticle
      'Split' => 'Scinder',

    # Template: AgentZoomBody
      'Change queue' => 'Changer de file',

    # Template: AgentZoomHead
      'Change the ticket free fields!' => 'Changer les champs libres du ticket!',
      'Free Fields' => 'Champs libre',
      'Link this ticket to an other one!' => 'Lier ce ticket � un autre!',
      'Lock it to work on it!' => 'V�rouiller ce ticket pour travailler dessus!',
      'Print' => 'Imprimer',
      'Print this ticket!' => 'Imprimer ce ticket!',
      'Set this ticket to pending!' => 'Mettre ce ticket en attente!',
      'Shows the ticket history!' => 'Voir l\'historique du ticket!',

    # Template: AgentZoomStatus
      '"}","18' => '"}","18',
      'Locked' => 'V�rrouill�',
      'SLA Age' => '',

    # Template: Copyright
      'printed by' => 'Imprim� par :',

    # Template: CustomerAccept

    # Template: CustomerCreateAccount
      'Create Account' => 'Cr�er un compte',
      'Login' => 'S\'authentifier',

    # Template: CustomerError
      'Traceback' => 'Trace du retour d\'erreur',

    # Template: CustomerFAQArticleHistory
      'FAQ History' => 'Historique de la FAQ',

    # Template: CustomerFAQArticlePrint
      'Category' => 'Cat�gorie',
      'Keywords' => 'Mots cl�s',
      'Last update' => 'Derni�re mise � jour',
      'Problem' => 'Probl�me',
      'Solution' => 'Solution',
      'Symptom' => 'Sympt�me',

    # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => 'Historique syst�me de la FAQ',

    # Template: CustomerFAQArticleView
      'FAQ Article' => 'Article de la FAQ',
      'Modified' => 'Modifi�',

    # Template: CustomerFAQOverview
      'FAQ Overview' => 'Vue d\'ensemble de la FAQ',

    # Template: CustomerFAQSearch
      'FAQ Search' => 'Chercher dans la FAQ',
      'Fulltext' => 'Texte Complet',
      'Keyword' => 'Mot cl�',

    # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'R�sultat de la recherche dans la FAQ',

    # Template: CustomerFooter
      'Powered by' => 'Fonction assur�e par',

    # Template: CustomerLostPassword
      'Lost your password?' => 'Mot de passe perdu ?',
      'Request new password' => 'Demande de nouveau mot de passe',

    # Template: CustomerMessage

    # Template: CustomerMessageNew

    # Template: CustomerNavigationBar
      'CompanyTickets' => '',
      'Create new Ticket' => 'Cr�ation d\'un nouveau Ticket',
      'FAQ' => 'FAQ',
      'MyTickets' => 'Mes tickets',
      'New Ticket' => 'Nouveau Ticket',
      'Welcome %s' => 'Bienvenue %s',

    # Template: CustomerPreferencesForm

    # Template: CustomerPreferencesGeneric

    # Template: CustomerPreferencesPassword

    # Template: CustomerStatusView

    # Template: CustomerTicketSearch

    # Template: CustomerTicketSearchResultPrint

    # Template: CustomerTicketSearchResultShort

    # Template: CustomerTicketZoom

    # Template: CustomerWarning

    # Template: Error
      'Click here to report a bug!' => 'Cliquer ici pour signaler une anomalie !',

    # Template: FAQArticleDelete
      'FAQ Delete' => 'Effacer la FAQ',
      'You really want to delete this article?' => 'Voulez vous vraiment effacer cet article ?',

    # Template: FAQArticleForm
      'A article should have a title!' => '',
      'Comment (internal)' => 'Commentaire interne',
      'Filename' => 'Nom de fichier',
      'Title' => '',

    # Template: FAQArticleHistory

    # Template: FAQArticlePrint

    # Template: FAQArticleSystemHistory

    # Template: FAQArticleView

    # Template: FAQArticleViewSmall

    # Template: FAQCategoryForm
      'FAQ Category' => 'Cat�gorie dans la FAQ',
      'Name is required!' => 'Un nom est requis!',

    # Template: FAQLanguageForm
      'FAQ Language' => 'Langue dans la FAQ',

    # Template: FAQNavigationBar

    # Template: FAQOverview

    # Template: FAQSearch

    # Template: FAQSearchResult

    # Template: Footer
      'Top of Page' => 'Haut de page',

    # Template: FooterSmall

    # Template: InstallerBody
      'Create Database' => 'Cr�er la base de donn�es',
      'Drop Database' => 'Effacer la base de donn�es',
      'Finished' => 'Fini',
      'System Settings' => 'Param�tres Syst�me',
      'Web-Installer' => 'Installeur Web',

    # Template: InstallerFinish
      'Admin-User' => 'Administrateur',
      'After doing so your OTRS is up and running.' => 'Apr�s avoir fait ceci votre OTRS est en service',
      'Have a lot of fun!' => 'Amusez vous bien !',
      'Restart your webserver' => 'Red�marrer votre serveur web',
      'Start page' => 'Page de d�marrage',
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Pour pouvoir utiliser OTRS, vous devez entrer les commandes suivantes dans votre terminal en tant que root.',
      'Your OTRS Team' => 'Votre �quipe OTRS',

    # Template: InstallerLicense
      'accept license' => 'Accepter la licence',
      'don\'t accept license' => 'Ne pas accepter la licence',
      'License' => 'Licence',

    # Template: InstallerStart
      'Create new database' => 'Cr�er une nouvelle base de donn�es',
      'DB Admin Password' => 'Mot de passe administrateur base de donn�es',
      'DB Admin User' => 'nom de connexion de l\'administrateur base de donn�e',
      'DB Host' => 'Nom d\'h�te de la base',
      'DB Type' => 'Type de SGBD',
      'default \'hot\'' => 'h�te par d�faut',
      'Delete old database' => 'Effacer l\'ancienne base de donn�es',
      'next step' => '�tape suivante',
      'OTRS DB connect host' => 'H�te de la base OTRS',
      'OTRS DB Name' => 'Nom de la base OTRS',
      'OTRS DB Password' => 'Mot de passe de la base OTRS',
      'OTRS DB User' => 'Utilisateur de la base OTRS',
      'your MySQL DB should have a root password! Default is empty!' => 'Votre base MySQL doit avoir un mot de passe root ! Par d�faut cela est vide !',

    # Template: InstallerSystem
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Verifie les enregistrements MX des adresses �lectroniques utilis�es lors de la r�daction d\'une r�ponse. N\'utilisez pas la "V�rification des enregistrements MX" si votre serveur OTRS est derri�re une ligne modem $!',
      '(Email of the system admin)' => '(Adresse de l\'administrateur syst�me)',
      '(Full qualified domain name of your system)' => '(Nom de domaine complet de votre machine)',
      '(Logfile just needed for File-LogModule!)' => '(fichier de log n�cessaire pour le Module File-Log !)',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(L\'identit� du syst�me. Chaque num�ro de ticket et chaque id de session http commence avec ce nombre)',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identifiiant des tickets. Certaines personnes veulent le configurer avec par ex: \'Ticket#\', \'Appel#\' ou \'MonTicket#\')',
      '(Used default language)' => '(Langage par d�faut utilis�)',
      '(Used log backend)' => '(Backend de log utilis�)',
      '(Used ticket number format)' => '(Format num�rique utilis� pour les tickets)',
      'CheckMXRecord' => 'V�rifier les enregistrements MX',
      'Default Charset' => 'Charset par d�faut',
      'Default Language' => 'Langage par d�faut ',
      'Logfile' => 'fichier de log',
      'LogModule' => 'Module de log',
      'Organization' => 'Soci�t�',
      'System FQDN' => 'Nom de Domaine complet du syst�me',
      'SystemID' => 'ID Syst�me',
      'Ticket Hook' => '',
      'Ticket Number Generator' => 'G�n�rateur de num�ro pour les tickets',
      'Use utf-8 it your database supports it!' => 'Utilisez UTF-8 si votre base de donn�e le supporte !',
      'Webfrontend' => 'Frontal web',

    # Template: LostPassword

    # Template: NoPermission
      'No Permission' => 'Pas d\'autorisation',

    # Template: Notify

    # Template: PrintFooter
      'URL' => 'URL',

    # Template: QueueView
      'All tickets' => 'tous les tickets',
      'Page' => 'Page',
      'Queues' => 'Files',
      'Tickets available' => 'Tickets disponibles',
      'Tickets shown' => 'Tickets affich�s',

    # Template: SystemStats

    # Template: Test
      'OTRS Test Page' => 'Page de test d\'OTRS',

    # Template: TicketEscalation
      'Ticket escalation!' => 'Remont�e du ticket !',

    # Template: TicketView

    # Template: TicketViewLite

    # Template: Warning

    # Template: css
      'Home' => 'Accueil',

    # Template: customer-css
      'Contact' => 'Contact',
      'Online-Support' => 'Support en ligne',
      'Products' => 'Produits',
      'Support' => 'Support',

    # Misc
      'AgentFrontend' => 'Interface du technicien',
      'Article free text' => 'Texte dans l\'article',
      'Charset' => 'Jeu de caract�re',
      'Charsets' => 'Jeux de caract�res',
      'Create' => 'Cr�er',
      'Customer called' => 'Client appel�',
      'Customer user will be needed to to login via customer panels.' => 'Les clients utilisateurs seront invit� � se connecter par la page client.',
      'FAQ State' => '�tat de la FAQ',
      'Feature not activ!' => 'Fonctionalit� non activ�e !',
      'Fulltext search' => 'Recherche int�grale de texte',
      'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")' => 'Recherche int�gral de texte (ex: "Mar*in" ou "Constru*" ou "martin+bonjour")',
      'Graphs' => 'Graphiques',
      'If your account is trusted, the x-otrs header (for priority, ...) will be used!' => 'Si votre compte est v�rifi�, les en-t&ecirc;tes x-otrs (pour les priorit�s,...) seront utilis�s !',
      'Lock Ticket' => 'Verrouiller le Ticket',
      'Max Rows' => 'Nombre de lignes maximales',
      'My Tickets' => 'Mes tickets',
      'New state' => 'Nouvel �tat',
      'New ticket via call.' => 'Nouveau ticket par t�l�phone',
      'New user' => 'Nouvel utilisateur',
      'Pending!' => 'En attente !',
      'Phone call at %s' => 'Appel t�l�phonique � %s',
      'Please go away!' => 'Passez votre chemin !',
      'PostMasterFilter Management' => 'Gestion des filtres PostMaster',
      'Search in' => 'Recherche dans',
      'Select source:' => 'S�lectionnez la source',
      'Select your custom queues' => 'Choix des files personnelles',
      'Select your screen after creating a new ticket via PhoneView.' => 'Choisissez l\'�cran qui sera affich� apr�s avoir cr�� un ticket via la vue t�l�phone',
      'Send me a notification if a ticket is moved into a custom queue.' => 'Me pr�venir si un ticket est d�plac� dans une de mes files personnelles',
      'Send me a notification if there is a new ticket in my custom queues.' => 'Me pr�venir si un nouveau ticket appara�t dans mes files personnelles.',
      'SessionID' => 'Identifiant de session',
      'Set customer id of a ticket' => 'D�finir le num�ro de client d\'un ticket',
      'Short Description' => 'Description Courte',
      'Show all' => 'Tout montrer',
      'Status defs' => 'D�finitions des �tats',
      'System Charset Management' => 'Gestion du jeu de caract�res du syst�me',
      'System Language Management' => 'Gestion des langues du syst�me',
      'Ticket free text' => 'Texte du ticket',
      'Ticket limit:' => 'Limitation du Ticket',
      'Ticket-Overview' => 'Aper�u des Tickets',
      'Time till escalation' => 'Dur�e avant la remont�e du ticket',
      'Users' => 'Utilisateurs',
      'Utilities' => 'Utilitaires',
      'With State' => 'Avec l\'�tat',
      'You have to be in the admin group!' => 'Il est n�cessaire d\'�tre dans le groupe d\'administration !',
      'You have to be in the stats group!' => 'Il est n�cessaire d\'�tre dans le groupe des statistiques !',
      'You need a email address (e. g. customer@example.com) in From:!' => 'Vous devez avoir une adresse �lectronique dans le De:! (ex: client@example.com)',
      'auto responses set' => 'R�ponse automatique positionn�e',
      'by' => 'par',
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
