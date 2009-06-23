# --
# Kernel/Language/fr.pm - provides fr language translation
# Copyright (C) 2002 Bernard Choppy <choppy at imaginet.fr>
# Copyright (C) 2002 Nicolas Goralski <ngoralski at oceanet-technology.com>
# Copyright (C) 2004 Igor Genibel <igor.genibel at eds-opensource.com>
# Copyright (C) 2007 Remi Seguy <remi.seguy at laposte.net>
# Copyright (C) 2007 Massimiliano Franco <max-lists at ycom.ch>
# Copyright (C) 2004-2008 Yann Richard <ze at nbox.org>
# --
# $Id: fr.pm,v 1.110 2009-06-23 00:26:31 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::fr;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.110 $) [1];

sub Data {
    my $Self = shift;

    # $$START$$
    # Last translation file sync: Tue Jun 23 02:22:27 2009

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
        'Yes' => 'Oui',
        'No' => 'Non',
        'yes' => 'oui',
        'no' => 'non',
        'Off' => 'D�sactiv�',
        'off' => 'd�sactiv�',
        'On' => 'Activ�',
        'on' => 'activ�',
        'top' => 'haut',
        'end' => 'fin',
        'Done' => 'Fait',
        'Cancel' => 'Annuler',
        'Reset' => 'Remise � z�ro',
        'last' => 'dernier',
        'before' => 'avant',
        'day' => 'jour',
        'days' => 'jours',
        'day(s)' => 'jour(s)',
        'hour' => 'heure',
        'hours' => 'heures',
        'hour(s)' => 'heure(s)',
        'minute' => 'minute',
        'minutes' => 'minutes',
        'minute(s)' => 'minute(s)',
        'month' => 'mois',
        'months' => 'mois',
        'month(s)' => 'mois',
        'week' => 'semaine',
        'week(s)' => 'semaine(s)',
        'year' => 'ann�e',
        'years' => 'ann�es',
        'year(s)' => 'ann�e(s)',
        'second(s)' => 'seconde(s)',
        'seconds' => 'secondes',
        'second' => 'seconde',
        'wrote' => 'a �crit',
        'Message' => 'Message',
        'Error' => 'Erreur',
        'Bug Report' => 'Rapport d\'anomalie',
        'Attention' => 'Attention',
        'Warning' => 'Attention',
        'Module' => 'Module',
        'Modulefile' => 'Fichier de module',
        'Subfunction' => 'sous-fonction',
        'Line' => 'Ligne',
        'Setting' => '',
        'Settings' => '',
        'Example' => 'Exemple',
        'Examples' => 'Exemples',
        'valid' => 'valide',
        'invalid' => 'invalide',
        '* invalid' => '* invalide',
        'invalid-temporarily' => 'temporairement invalide',
        ' 2 minutes' => ' 2 minutes',
        ' 5 minutes' => ' 5 minutes',
        ' 7 minutes' => ' 7 minutes',
        '10 minutes' => '10 minutes',
        '15 minutes' => '15 minutes',
        'Mr.' => 'M.',
        'Mrs.' => 'Mme',
        'Next' => 'Suivant',
        'Back' => 'Retour',
        'Next...' => 'Suivant...',
        '...Back' => '...Retour',
        '-none-' => '-aucun-',
        'none' => 'aucun',
        'none!' => 'aucun !',
        'none - answered' => 'aucun - r�ponse faite',
        'please do not edit!' => 'Ne pas modifier !',
        'AddLink' => 'Ajouter un lien',
        'Link' => 'Lier',
        'Unlink' => 'D�lier',
        'Linked' => 'Li�e',
        'Link (Normal)' => 'Lien (Normal)',
        'Link (Parent)' => 'Lien (Parent)',
        'Link (Child)' => 'Lien (Enfant)',
        'Normal' => 'Normal',
        'Parent' => 'Parent',
        'Child' => 'Enfant',
        'Hit' => '',
        'Hits' => '',
        'Text' => 'Texte',
        'Lite' => 'all�g�e',
        'User' => 'Utilisateur',
        'Username' => 'Nom d\'utilisateur',
        'Language' => 'Langue',
        'Languages' => 'Langues',
        'Password' => 'Mot de Passe',
        'Salutation' => 'En-t�te',
        'Signature' => 'Signature',
        'Customer' => 'Client',
        'CustomerID' => 'Num�ro de client',
        'CustomerIDs' => 'Num�ro de client (Groupe)',
        'customer' => 'client',
        'agent' => 'technicien',
        'system' => 'syst�me',
        'Customer Info' => 'Information client',
        'Customer Company' => 'Entreprise du client',
        'Company' => 'Entreprise',
        'go!' => 'c\'est parti !',
        'go' => 'aller',
        'All' => 'Tout',
        'all' => 'tout',
        'Sorry' => 'D�sol�',
        'update!' => 'mettre � jour !',
        'update' => 'mettre � jour',
        'Update' => 'Mettre � jour',
        'Updated!' => '',
        'submit!' => 'soumettre !',
        'submit' => 'soumettre',
        'Submit' => 'Soumettre',
        'change!' => 'modifier !',
        'Change' => 'Modifier',
        'change' => 'modifier',
        'click here' => 'Cliquer ici',
        'Comment' => 'Commentaire',
        'Valid' => 'Valide',
        'Invalid Option!' => 'Option invalide !',
        'Invalid time!' => 'Temps invalide !',
        'Invalid date!' => 'Date invalide !',
        'Name' => 'Nom',
        'Group' => 'Groupe',
        'Description' => 'Description',
        'description' => 'description',
        'Theme' => 'Th�me',
        'Created' => 'Cr��',
        'Created by' => 'Cr�� par',
        'Changed' => 'Chang�',
        'Changed by' => 'Chang� par',
        'Search' => 'Chercher',
        'and' => 'et le',
        'between' => 'entre',
        'Fulltext Search' => 'Recherche sur tout le texte',
        'Data' => 'Donn�es',
        'Options' => 'Options',
        'Title' => 'Titre',
        'Item' => '�l�ment',
        'Delete' => 'Effacer',
        'Edit' => '�diter',
        'View' => 'Vue',
        'Number' => 'Nombre',
        'System' => 'Syst�me',
        'Contact' => 'Contact',
        'Contacts' => 'Contacts',
        'Export' => 'Exporter',
        'Up' => 'Haut',
        'Down' => 'Bas',
        'Add' => 'Ajouter',
        'Added!' => '',
        'Category' => 'Cat�gorie',
        'Viewer' => 'Visionneuse',
        'Expand' => '',
        'New message' => 'Nouveau message',
        'New message!' => 'Nouveau message !',
        'Please answer this ticket(s) to get back to the normal queue view!' => 'Veuillez r�pondre � ce(s) ticket(s) pour revenir � une vue normale de la file !',
        'You got new message!' => 'Vous avez un nouveau message !',
        'You have %s new message(s)!' => 'Vous avez %s nouveau(x) message(s) !',
        'You have %s reminder ticket(s)!' => 'Vous avez %s rappel(s) de ticket(s) !',
        'The recommended charset for your language is %s!' => 'Le jeu de caract�re correspondant � votre langue est %s!',
        'Passwords doesn\'t match! Please try it again!' => 'Les mots de passes diff�rent! Essayez de nouveau svp!',
        'Password is already in use! Please use an other password!' => 'Mot de passe d�j� utilis�! Essayez en un autre svp!',
        'Password is already used! Please use an other password!' => 'Ce mot de passe a d�j� �t� utilis�! Essayez en un autre svp!',
        'You need to activate %s first to use it!' => 'Vous devez dabord activer %s pour l\'utiliser !',
        'No suggestions' => 'Pas de suggestions',
        'Word' => 'Mot',
        'Ignore' => 'Ignorer',
        'replace with' => 'remplacer par',
        'There is no account with that login name.' => 'Il n\'y a aucun compte avec ce nom de connexion',
        'Login failed! Your username or password was entered incorrectly.' => 'La connection a �chou� ! Votre nom d\'utilisateur ou votre mot de passe sont erron�s.',
        'Please contact your admin' => 'Veuillez contacter votre admnistrateur',
        'Logout successful. Thank you for using OTRS!' => 'D�connexion r�ussie. Merci d\'avoir utilis� OTRS!',
        'Invalid SessionID!' => 'ID de Session Invalide !',
        'Feature not active!' => 'Cette fonctionnalit� n\'est pas activ�e !',
        'Login is needed!' => 'Authentification requise !',
        'Password is needed!' => 'Le mot de passe est requis !',
        'License' => 'Licence',
        'Take this Customer' => 'Choisir ce client',
        'Take this User' => 'Choisir cet utilisateur',
        'possible' => 'possible',
        'reject' => 'rejet�',
        'reverse' => 'inverse',
        'Facility' => 'Service',
        'Timeover' => 'Temp �coul�',
        'Pending till' => 'En attendant jusqu\'�',
        'Don\'t work with UserID 1 (System account)! Create new users!' => 'Cela ne fonctionne pas avec l\'identfifiant utilisateur 1 (Compte Syst�me)! Veuillez cr�er un nouvel utilisateur!',
        'Dispatching by email To: field.' => 'R�partition par le champs \'�:\' du courriel',
        'Dispatching by selected Queue.' => 'R�partition selon la file s�lectionn�e',
        'No entry found!' => 'Aucun r�sultat n\'a �t� trouv� !',
        'Session has timed out. Please log in again.' => 'Le d�lai de votre session est d�pass�, veuillez vous r�-authentifier.',
        'No Permission!' => 'Pas de permission!',
        'To: (%s) replaced with database email!' => 'Le champ \'�:\' (%s) a �t� remplac� avec la valeur de la base de donn�es des des adresses de courriel !',
        'Cc: (%s) added database email!' => 'Cc: (%s) a �t� ajout� � la base de donn�e d\'e-mail',
        '(Click here to add)' => '(Cliquez i�i pour ajouter)',
        'Preview' => 'Aper�u',
        'Package not correctly deployed! You should reinstall the Package again!' => 'Le paquet n\'a pas �t� correctement d�ploy� ! Vous devez le r�installer � nouveau !',
        'Added User "%s"' => 'Ajout de l\'utilisateur "%s"',
        'Contract' => 'Contrat',
        'Online Customer: %s' => 'Clients en ligne: %s',
        'Online Agent: %s' => 'Techniciens en ligne: %s',
        'Calendar' => 'Calendrier',
        'File' => 'Fichier',
        'Filename' => 'Nom de fichier',
        'Type' => 'Type',
        'Size' => 'Taille',
        'Upload' => 'Uploader',
        'Directory' => 'R�pertoire',
        'Signed' => 'Sign�',
        'Sign' => 'Signer',
        'Crypted' => 'Crypt�',
        'Crypt' => 'Crypter',
        'Office' => 'Bureau',
        'Phone' => 'T�l�phone',
        'Fax' => 'Fax',
        'Mobile' => 'T�l�phone portable',
        'Zip' => 'Code postal',
        'City' => 'Ville',
        'Street' => 'Rue',
        'Country' => 'Pays',
        'Location' => 'Plan',
        'installed' => 'install�',
        'uninstalled' => 'd�sinstall�',
        'Security Note: You should activate %s because application is already running!' => 'Note de S�curit�: Vous devriez activer %s parce que l\'application est d�j� lanc�e !',
        'Unable to parse Online Repository index document!' => 'Impossible d\'analyser l\'index du d�p�t en ligne',
        'No Packages for requested Framework in this Online Repository, but Packages for other Frameworks!' => 'Aucun paquet pour le Framework s�lectionn� dans ce d�pot en ligne, mais des paquets pour d\'autres Frameworks !',
        'No Packages or no new Packages in selected Online Repository!' => 'Pas de paquets ou de nouveau paquets dans le d�pot en ligne s�lectionn� !',
        'printed at' => 'imprim� �',
        'Dear Mr. %s,' => 'Cher M. %s',
        'Dear Mrs. %s,' => 'Cher Mme %s',
        'Dear %s,' => 'Cher %s',
        'Hello %s,' => 'Bonjour %s',
        'This account exists.' => 'Ce compte existe d�j�.',
        'New account created. Sent Login-Account to %s.' => 'Nouveau compte cr�e. Identifiant envoy� � %s',
        'Please press Back and try again.' => 'SVP, reculer d\'une page et r��ssayez.',
        'Sent password token to: %s' => 'Envoit du jeton �: %s',
        'Sent new password to: %s' => 'Envoit du nouveau mot de passe �: %s',
        'Upcoming Events' => '',
        'Event' => '�v�nement',
        'Events' => '',
        'Invalid Token!' => 'Jeton invalide !',
        'more' => '',
        'For more info see:' => '',
        'Package verification failed!' => '',
        'Collapse' => '',
        'News' => '',
        'Product News' => '',
        'Bold' => '',
        'Italic' => '',
        'Underline' => '',
        'Font Color' => '',
        'Background Color' => '',
        'Remove Formatting' => '',
        'Show/Hide Hidden Elements' => '',
        'Align Left' => '',
        'Align Center' => '',
        'Align Right' => '',
        'Justify' => '',
        'Header' => 'En-t�te',
        'Indent' => '',
        'Outdent' => '',
        'Create an Unordered List' => '',
        'Create an Ordered List' => '',
        'HTML Link' => '',
        'Insert Image' => '',
        'CTRL' => '',
        'SHIFT' => '',
        'Undo' => '',
        'Redo' => '',

        # Template: AAAMonth
        'Jan' => 'Jan',
        'Feb' => 'F�v',
        'Mar' => 'Mar',
        'Apr' => 'Avr',
        'May' => 'Mai',
        'Jun' => 'Juin',
        'Jul' => 'Juil',
        'Aug' => 'Ao�',
        'Sep' => 'Sep',
        'Oct' => 'Oct',
        'Nov' => 'Nov',
        'Dec' => 'D�c',
        'January' => 'Janvier',
        'February' => 'F�vrier',
        'March' => 'Mars',
        'April' => 'Avril',
        'June' => 'Juin',
        'July' => 'Juillet',
        'August' => 'Ao�t',
        'September' => 'Septembre',
        'October' => 'Octobre',
        'November' => 'Novembre',
        'December' => 'D�cembre',

        # Template: AAANavBar
        'Admin-Area' => 'Zone d\'administration',
        'Agent-Area' => 'Interface du technicien',
        'Ticket-Area' => 'Tickets',
        'Logout' => 'D�connexion',
        'Agent Preferences' => 'Pr�f�rences du technicien',
        'Preferences' => 'Pr�f�rences',
        'Agent Mailbox' => 'Boite e-mail du technicien',
        'Stats' => 'Statistiques',
        'Stats-Area' => 'Statistiques',
        'Admin' => 'Administrateur',
        'Customer Users' => 'Clients',
        'Customer Users <-> Groups' => 'Clients <-> Groupes',
        'Users <-> Groups' => 'Agent <-> Groupes',
        'Roles' => 'R�les',
        'Roles <-> Users' => 'R�les <-> Agents',
        'Roles <-> Groups' => 'R�les <-> Groupes',
        'Salutations' => 'En-t�tes',
        'Signatures' => 'Signatures',
        'Email Addresses' => 'Adresses �lectroniques',
        'Notifications' => 'Notifications',
        'Category Tree' => 'Liste des cat�gories',
        'Admin Notification' => 'Notification des administrateurs',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Les pr�f�rences ont bien �t� mises � jours !',
        'Mail Management' => 'Gestion des e-mails',
        'Frontend' => 'Interface',
        'Other Options' => 'Autres options',
        'Change Password' => 'Changer de mot de passe',
        'New password' => 'Nouveau mot de passe',
        'New password again' => 'Nouveau mot de passe (encore)',
        'Select your QueueView refresh time.' => 'Choix du d�lai de rafra�chissement de la vue des files',
        'Select your frontend language.' => 'Choix de la langue de l\'interface',
        'Select your frontend Charset.' => 'Choix du jeu de caract�res de l\'interface',
        'Select your frontend Theme.' => 'Choix du th�me de l\'interface',
        'Select your frontend QueueView.' => 'Choisissez votre interface de vue des files',
        'Spelling Dictionary' => 'Correcteur orthographique',
        'Select your default spelling dictionary.' => 'S�lectionnez votre correcteur orthographique par d�faut',
        'Max. shown Tickets a page in Overview.' => 'Nombre de tickets maximum sur la page d\'aper�u des tickets',
        'Can\'t update password, passwords doesn\'t match! Please try it again!' => 'Mise � jour du mot de passe impossible, les mots de passe diff�rent! Essayez � nouveau svp!',
        'Can\'t update password, invalid characters!' => 'Mise � jour du mot de passe impossible, caract�res invalides!',
        'Can\'t update password, need min. 8 characters!' => 'Mise � jour du mot de passe impossible, Le mot de passe doit avoir au moins 8 caract�res!',
        'Can\'t update password, need 2 lower and 2 upper characters!' => 'Mise � jour du mot de passe impossible, Le mot de passe doit comporter 2 majuscules et 2 minuscules!',
        'Can\'t update password, need min. 1 digit!' => 'Mise � jour du mot de passe impossible, Le mot de passe doit comporter un chiffre minimum!',
        'Can\'t update password, need min. 2 characters!' => 'Mise � jour du mot de passe impossible, Le mot de passe doit comporter 2 caract�res minimum!',

        # Template: AAAStats
        'Stat' => 'Stat',
        'Please fill out the required fields!' => 'Remplissez les champs obligatoires svp !',
        'Please select a file!' => 'S�lectionnez un fichier svp !',
        'Please select an object!' => 'S�lectionnez un objet svp !',
        'Please select a graph size!' => 'S�lectionnez un graphique svp !',
        'Please select one element for the X-axis!' => 'S�lectionnez un �l�ment pour l\'axe des X svp !',
        'Please select only one element or turn off the button \'Fixed\' where the select field is marked!' => 'Veuillez s�lectionner un seul �l�ment ou d�sactivez le bouton \'Fixe\' l� o� le champ s�lectionn� est en surbrillance! ',
        'If you use a checkbox you have to select some attributes of the select field!' => 'Si vous cochez une case, vous devez indiquer des attributs du champ s�lectionn�',
        'Please insert a value in the selected input field or turn off the \'Fixed\' checkbox!' => 'Veuillez donner une valeur pour le champ s�lectionn� ou d�sactivez la case',
        'The selected end time is before the start time!' => 'La date de fin est anterieure � la date de d�but',
        'You have to select one or more attributes from the select field!' => 'Vous devez s�lectionner un ou plusieurs attributs du champ s�lectionn�',
        'The selected Date isn\'t valid!' => 'La date s�lectionn�e n\'est pas valide !',
        'Please select only one or two elements via the checkbox!' => 'S�lectionnez uniquement un ou deux �l�ments via les cases � cocher!',
        'If you use a time scale element you can only select one element!' => 'Si vous employez un �l�ment d\'�chelle de temps vous pouvez seulement choisir un �l�ment',
        'You have an error in your time selection!' => 'Vous avez une erreur dans le choix de la date',
        'Your reporting time interval is too small, please use a larger time scale!' => 'La p�riode choisie pour le rapport est trop courte, veuillez indiquer une plage plus grande',
        'The selected start time is before the allowed start time!' => 'La date de d�but choisie est ant�rieure � la date de d�but autoris�e',
        'The selected end time is after the allowed end time!' => 'La date de fin choisie esst posterieure � la date de fin autoris�e',
        'The selected time period is larger than the allowed time period!' => 'La plage de temps choisie est sup�rieure � la date de temps autoris�e',
        'Common Specification' => 'Caract�ristiques Communes',
        'Xaxis' => 'Axe X',
        'Value Series' => 'S�ries de valeurs',
        'Restrictions' => 'Restrictions',
        'graph-lines' => '',
        'graph-bars' => '',
        'graph-hbars' => '',
        'graph-points' => '',
        'graph-lines-points' => '',
        'graph-area' => '',
        'graph-pie' => '',
        'extended' => '�tendu',
        'Agent/Owner' => 'Technicien/Propri�taire',
        'Created by Agent/Owner' => 'Cr�� par le Technicien/Propri�taire',
        'Created Priority' => 'Priorit� cr��e',
        'Created State' => '�tat cr��',
        'Create Time' => 'Date de cr�ation',
        'CustomerUserLogin' => 'Identifiant Client',
        'Close Time' => 'Date de fermeture',
        'TicketAccumulation' => '',
        'Attributes to be printed' => '',
        'Sort sequence' => '',
        'Order by' => '',
        'Limit' => 'Limite',
        'Ticketlist' => '',
        'ascending' => '',
        'descending' => '',
        'First Lock' => '',
        'Evaluation by' => '',
        'Total Time' => '',
        'Ticket Average' => '',
        'Ticket Min Time' => '',
        'Ticket Max Time' => '',
        'Number of Tickets' => '',
        'Article Average' => '',
        'Article Min Time' => '',
        'Article Max Time' => '',
        'Number of Articles' => '',
        'Accounted time by Agent' => '',
        'Ticket/Article Accounted Time' => '',
        'TicketAccountedTime' => '',
        'Ticket Create Time' => '',
        'Ticket Close Time' => '',

        # Template: AAATicket
        'Lock' => 'Verrouiller',
        'Unlock' => 'D�verrouiller',
        'History' => 'Historique',
        'Zoom' => 'D�tails',
        'Age' => '�ge',
        'Bounce' => 'Renvoyer',
        'Forward' => 'Transmettre',
        'From' => 'De',
        'To' => '�',
        'Cc' => 'Copie ',
        'Bcc' => 'Copie Invisible',
        'Subject' => 'Sujet',
        'Move' => 'D�placer',
        'Queue' => 'File',
        'Priority' => 'Priorit�',
        'Priority Update' => 'Mise � jour de la priorit�',
        'State' => '�tat',
        'Compose' => 'Composer',
        'Pending' => 'En attente',
        'Owner' => 'Propri�taire',
        'Owner Update' => 'Mise � jour du propri�taire',
        'Responsible' => 'Responsable',
        'Responsible Update' => 'Mise � jour du responsable',
        'Sender' => '�metteur',
        'Article' => 'Article',
        'Ticket' => 'Ticket',
        'Createtime' => 'Cr�ation du',
        'plain' => 'tel quel',
        'Email' => 'Courrier �lectronique',
        'email' => 'courriel',
        'Close' => 'Fermer',
        'Action' => 'Action',
        'Attachment' => 'Pi�ce jointe',
        'Attachments' => 'Pi�ces jointes',
        'This message was written in a character set other than your own.' => 'Ce message a �t� �crit dans un jeu de caract�res diff�rent du v�tre.',
        'If it is not displayed correctly,' => 'S\'il n\'est pas affich� correctement',
        'This is a' => 'Ceci est un',
        'to open it in a new window.' => 'L\'ouvrir dans une nouvelle fen�tre',
        'This is a HTML email. Click here to show it.' => 'Ceci est un message au format HTML ; cliquer ici pour l\'afficher.',
        'Free Fields' => 'Champs libres',
        'Merge' => 'Fusionner',
        'merged' => 'Fusionn�',
        'closed successful' => 'cl�ture r�ussie',
        'closed unsuccessful' => 'cl�ture manqu�e',
        'new' => 'nouveau',
        'open' => 'ouvrir',
        'Open' => '',
        'closed' => 'ferm�',
        'Closed' => '',
        'removed' => 'supprim�',
        'pending reminder' => 'Attente du rappel',
        'pending auto' => 'En attente auto',
        'pending auto close+' => 'En attente de la fermeture automatique(+)',
        'pending auto close-' => 'En attente de la fermeture automatique(-)',
        'email-external' => 'message externe',
        'email-internal' => 'message interne',
        'note-external' => 'Note externe',
        'note-internal' => 'Note interne',
        'note-report' => 'Note rapport',
        'phone' => 't�l�phone',
        'sms' => 'SMS',
        'webrequest' => 'Requ�te par le web',
        'lock' => 'verrouiller',
        'unlock' => 'd�verrouiller',
        'very low' => 'tr�s basse',
        'low' => 'confort de fonctionnement',
        'normal' => 'normal',
        'high' => 'important',
        'very high' => 'tr�s haut',
        '1 very low' => '1 tr�s bas',
        '2 low' => '2 bas',
        '3 normal' => '3 normal',
        '4 high' => '4 important',
        '5 very high' => '5 tr�s important',
        'Ticket "%s" created!' => 'Le ticket %s a �t� cr�� !',
        'Ticket Number' => 'Num�ro de ticket',
        'Ticket Object' => 'Objet ticket',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Pas de num�ro de ticket "%s"! Je ne peut pas le lier',
        'Don\'t show closed Tickets' => 'Ne pas montrer les tickets clotur�s',
        'Show closed Tickets' => 'Voir les tickets clotur�s',
        'New Article' => 'Nouvel Article',
        'Email-Ticket' => '�crire un e-mail',
        'Create new Email Ticket' => 'Cr�er un nouveau ticket en envoyant un e-mail',
        'Phone-Ticket' => 'Vue t�l�phone',
        'Search Tickets' => 'Recherche de tickets',
        'Edit Customer Users' => 'Editer clients',
        'Edit Customer Company' => '�diter l\'entreprise cliente',
        'Bulk Action' => 'Action group�e',
        'Bulk Actions on Tickets' => 'Action group�es sur les tickets',
        'Send Email and create a new Ticket' => 'Envoyer un courriel et cr�er un nouveau Ticket',
        'Create new Email Ticket and send this out (Outbound)' => 'Cr�er un ticket Email et l\'envoyer (Sortant)',
        'Create new Phone Ticket (Inbound)' => 'Cr�er un ticket T�l�phone (Entrant)',
        'Overview of all open Tickets' => 'Vue de tous les Tickets',
        'Locked Tickets' => 'Tickets verrouill�s',
        'Watched Tickets' => 'Tickets surveill�s',
        'Watched' => 'Surveill�',
        'Subscribe' => 'S\'abonner',
        'Unsubscribe' => 'Se d�sabonner',
        'Lock it to work on it!' => 'Verrouillez le pour travailler dessus!',
        'Unlock to give it back to the queue!' => 'D�verrouillez pour qu\'il retourne dans sa file!',
        'Shows the ticket history!' => 'Voir l\'historique du ticket!',
        'Print this ticket!' => 'Imprimer ce ticket!',
        'Change the ticket priority!' => 'Changer la priorit� du ticket',
        'Change the ticket free fields!' => 'Changer les champs libres du ticket',
        'Link this ticket to an other objects!' => 'Lier ce ticket � un autre objet!',
        'Change the ticket owner!' => 'Changer le propri�taire du ticket!',
        'Change the ticket customer!' => 'Changer le client du ticket!',
        'Add a note to this ticket!' => 'Ajouter une note au ticket!',
        'Merge this ticket!' => 'Fusionner ce ticket!',
        'Set this ticket to pending!' => 'Mettre le ticket en attente!',
        'Close this ticket!' => 'Fermer ce ticket!',
        'Look into a ticket!' => 'Voir le d�tail du ticket!',
        'Delete this ticket!' => 'Effacer ce ticket!',
        'Mark as Spam!' => 'Marquer comme Spam!',
        'My Queues' => 'Mes files',
        'Shown Tickets' => 'Tickets affich�s',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => 'Votre ticket num�ro "<OTRS_TICKET>" a �t� fusionn� avec le ticket num�ro "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Ticket %s: le temps imparti pour la premi�re r�ponse est d�pass� (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Ticket %s: le temps imparti pour la premi�re r�ponse sera d�pass� dans %s!',
        'Ticket %s: update time is over (%s)!' => 'Ticket %s: le temps imparti pour la r�vision est d�pass� (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Ticket %s: le temps imparti pour la r�vision sera d�pass� dans %s!',
        'Ticket %s: solution time is over (%s)!' => 'Ticket %s: le temps imparti pour fournir une solution est d�pass� (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Ticket %s: le temps imparti pour fournir une solution sera d�pass� dans %s!',
        'There are more escalated tickets!' => 'Il y a d\'autres tickets en escalade',
        'New ticket notification' => 'Notification de nouveau ticket',
        'Send me a notification if there is a new ticket in "My Queues".' => 'Me pr�venir si il y a un nouveau ticket dans une de "Mes files".',
        'Follow up notification' => 'Notification de suivi',
        'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Me pr�venir si un client envoie un suivi (follow-up) sur un ticket dont je suis propri�taire.',
        'Ticket lock timeout notification' => 'Pr�venir du d�passement du d�lai d\'un verrou',
        'Send me a notification if a ticket is unlocked by the system.' => 'Me pr�venir si un ticket est d�verrouill� par le syst�me',
        'Move notification' => 'Notification de mouvement',
        'Send me a notification if a ticket is moved into one of "My Queues".' => 'Me pr�venir si un ticket est d�plac� dans une de "Mes files".',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' => 'Votre s�lection des files pr�f�r�es. Vous recevrez une information par email si disponible',
        'Custom Queue' => 'File d\'attente personnalis�e',
        'QueueView refresh time' => 'Temps de rafra�chissement de la vue des files',
        'Screen after new ticket' => '�cran apr�s un nouveau ticket',
        'Select your screen after creating a new ticket.' => 'S�lectionnez l\'�cran qui sera affich� apr�s avoir cr�� un nouveau ticket.',
        'Closed Tickets' => 'Tickets ferm�s',
        'Show closed tickets.' => 'Voir les tickets ferm�s',
        'Max. shown Tickets a page in QueueView.' => 'Nombre de tickets maximum sur la page de la vue d\'une file',
        'Watch notification' => '',
        'Send me a notification of an watched ticket like an owner of an ticket.' => '',
        'Out Of Office' => '',
        'Select your out of office time.' => '',
        'CompanyTickets' => 'Tickets de l\'entreprise cliente',
        'MyTickets' => 'Mes tickets',
        'New Ticket' => 'Nouveau ticket',
        'Create new Ticket' => 'Cr�ation d\'un nouveau ticket',
        'Customer called' => 'Client appell�',
        'phone call' => 'Appel t�l�phonique',
        'Reminder Reached' => '',
        'Reminder Tickets' => '',
        'Escalated Tickets' => '',
        'New Tickets' => '',
        'Open Tickets / Need to be answered' => '',
        'Tickets which need to be answered!' => '',
        'All new tickets!' => '',
        'All tickets which are escalated!' => '',
        'All tickets where the reminder date has reached!' => '',
        'Responses' => 'R�ponses',
        'Responses <-> Queue' => 'R�ponses <-> Files',
        'Auto Responses' => 'R�ponses automatiques',
        'Auto Responses <-> Queue' => 'R�ponses automatiques <-> Files',
        'Attachments <-> Responses' => 'Pi�ces jointes <-> R�ponses',
        'History::Move' => 'Le ticket a �t� d�plac� dans la file "%s" (%s) - Ancienne file: "%s" (%s).',
        'History::TypeUpdate' => 'Type positionn� � %s (ID=%s).',
        'History::ServiceUpdate' => 'Service positionn� � %s (ID=%s).',
        'History::SLAUpdate' => 'SLA positionn� � %s (ID=%s).',
        'History::NewTicket' => 'Un nouveau ticket a �t� cr�e: [%s] created (Q=%s;P=%s;S=%s).',
        'History::FollowUp' => 'Un suivie du ticket [%s]. %s',
        'History::SendAutoReject' => 'Rejet automatique envoy� � "%s".',
        'History::SendAutoReply' => 'R�ponse automatique envoy� � "%s".',
        'History::SendAutoFollowUp' => 'Suivie automatique envoy� � "%s".',
        'History::Forward' => 'Transf�r� vers "%s".',
        'History::Bounce' => 'Redirig� vers "%s".',
        'History::SendAnswer' => 'Email envoy� � "%s".',
        'History::SendAgentNotification' => '"%s"-notification envoy� � "%s".',
        'History::SendCustomerNotification' => 'Notification envoy� � "%s".',
        'History::EmailAgent' => 'Email envoy� au client.',
        'History::EmailCustomer' => 'Ajout d\'une adresse email. %s',
        'History::PhoneCallAgent' => 'Le technicien a appell� le client.',
        'History::PhoneCallCustomer' => 'Le client nous a appell�.',
        'History::AddNote' => 'Ajout d\'une note (%s)',
        'History::Lock' => 'Ticket verrouill�.',
        'History::Unlock' => 'Ticket d�verrouill�.',
        'History::TimeAccounting' => 'Temps pass� sur l\'action: %s . Total du temps pass� pour ce ticket: %s unit�(s).',
        'History::Remove' => '%s',
        'History::CustomerUpdate' => 'Mise � jour: %s',
        'History::PriorityUpdate' => 'Changement de priorit� de "%s" (%s) pour "%s" (%s).',
        'History::OwnerUpdate' => 'Le nouveau propri�taire est "%s" (ID=%s).',
        'History::LoopProtection' => 'Protection anti-boucle! Pas d\'auto r�ponse envoy� � "%s".',
        'History::Misc' => '%s',
        'History::SetPendingTime' => 'Mise � jour: %s',
        'History::StateUpdate' => 'Avant: "%s" Apr�s: "%s"',
        'History::TicketFreeTextUpdate' => 'Mise � jour: %s=%s;%s=%s;',
        'History::WebRequestCustomer' => 'Requ�te du client via le web.',
        'History::TicketLinkAdd' => 'Added link to ticket "%s".',
        'History::TicketLinkDelete' => 'Deleted link to ticket "%s".',
        'History::Subscribe' => 'Added subscription for user "%s".',
        'History::Unsubscribe' => 'Removed subscription for user "%s".',

        # Template: AAAWeekDay
        'Sun' => 'Dim',
        'Mon' => 'Lun',
        'Tue' => 'Mar',
        'Wed' => 'Mer',
        'Thu' => 'Jeu',
        'Fri' => 'Ven',
        'Sat' => 'Sam',

        # Template: AdminAttachmentForm
        'Attachment Management' => 'Gestion des pi�ces jointes',

        # Template: AdminAutoResponseForm
        'Auto Response Management' => 'Gestion des r�ponses automatiques',
        'Response' => 'R�ponse',
        'Auto Response From' => 'R�ponse automatique de ',
        'Note' => 'Note',
        'Useable options' => 'Options accessibles',
        'To get the first 20 character of the subject.' => 'Pour avoir les 20 premiers caract�res',
        'To get the first 5 lines of the email.' => 'Pour avoir les 5 premi�res lignes',
        'To get the realname of the sender (if given).' => 'Pour avoir le nom de l\'exp�diteur s\'il est fourni.',
        'To get the article attribute (e. g. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> and <OTRS_CUSTOMER_Body>).' => 'pour avoir les attributs de l\'article (par ex. (<OTRS_CUSTOMER_From>, <OTRS_CUSTOMER_To>, <OTRS_CUSTOMER_Cc>, <OTRS_CUSTOMER_Subject> et <OTRS_CUSTOMER_Body>)',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>).' => 'Propri�t�s des donn�es personnelles du client',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>).' => 'Propri�t�s du propri�taire du ticket',
        'Ticket responsible options (e. g. <OTRS_RESPONSIBLE_UserFirstname>).' => 'Propri�t�s du responsable du ticket',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>).' => 'Propri�t�s du client qui a demand� cette action',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>).' => 'Propri�t�s du ticket',
        'Config options (e. g. <OTRS_CONFIG_HttpType>).' => 'Propri�t�s de la configuration',

        # Template: AdminCustomerCompanyForm
        'Customer Company Management' => 'Gestion des services clients',
        'Search for' => 'Chercher �',
        'Add Customer Company' => 'Ajouter un client au service',
        'Add a new Customer Company.' => 'Ajouter un nouveau service',
        'List' => 'Lister',
        'This values are required.' => 'Ces valeurs sont obligatoires.',
        'This values are read only.' => 'Ces valeurs sont en lecture seule.',

        # Template: AdminCustomerUserForm
        'The message being composed has been closed.  Exiting.' => 'Le message en cours de r�daction a �t� cl�tur�. Sortie.',
        'This window must be called from compose window' => 'Cette fen�tre doit �tre appel�e de la fen�tre depuis la fen�tre de r�daction',
        'Customer User Management' => 'Gestion des clients utilisateurs',
        'Add Customer User' => 'Ajouter un client utilisateur',
        'Source' => 'Source',
        'Create' => 'Cr�ation',
        'Customer user will be needed to have a customer history and to login via customer panel.' => 'Les clients utilisateurs seront invit�s � se connecter par la page client.',

        # Template: AdminCustomerUserGroupChangeForm
        'Customer Users <-> Groups Management' => 'Clients <-> Gestion des groupes',
        'Change %s settings' => 'Changer les param&ecirc;tres de %s',
        'Select the user:group permissions.' => 'S�lectionnez les permissions pour l\'utilisateur:groupe.',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Si rien n\'est s�lectionn�, il n\'y aura pas de droits dans ce groupe (Les tickets ne seront plus disponible pour l\'utilisateur).',
        'Permission' => 'Droits',
        'ro' => 'lecture seule',
        'Read only access to the ticket in this group/queue.' => 'Acc�s en lecture seulement aux tickets de cette file/groupe.',
        'rw' => 'lecture/�criture',
        'Full read and write access to the tickets in this group/queue.' => 'Acc�s complet en lecture et �criture aux tickets dans cette file/groupe.',

        # Template: AdminCustomerUserGroupForm

        # Template: AdminCustomerUserService
        'Customer Users <-> Services Management' => 'Client utilisateur <-> Gestion des Services',
        'CustomerUser' => 'Client utilisateur',
        'Service' => 'Service',
        'Edit default services.' => '�diter le Service par d�faut',
        'Search Result' => 'R�sultat de la recherche',
        'Allocate services to CustomerUser' => '',
        'Active' => 'Actif',
        'Allocate CustomerUser to service' => '',

        # Template: AdminEmail
        'Message sent to' => 'Message envoy� �',
        'Recipents' => 'R�cipients',
        'Body' => 'Corps',
        'Send' => 'Envoyer',

        # Template: AdminGenericAgent
        'GenericAgent' => 'Automate g�n�rique',
        'Job-List' => 'Liste de t�ches',
        'Last run' => 'Dernier lancement',
        'Run Now!' => 'Lancer maintenant!',
        'x' => 'x',
        'Save Job as?' => 'Sauver la t�che en tant que?',
        'Is Job Valid?' => 'Cette t�che est-elle valide?',
        'Is Job Valid' => 'Cette t�che est-elle valide',
        'Schedule' => 'Planifier',
        'Currently this generic agent job will not run automatically.' => '',
        'To enable automatic execution select at least one value from minutes, hours and days!' => '',
        'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Recherche sur le texte d\'un article (ex: "Mar*in" or "Baue*")',
        '(e. g. 10*5155 or 105658*)' => '(ex: 10*5155 or 105658*)',
        '(e. g. 234321)' => '(ex: 234321)',
        'Customer User Login' => 'Nom de connexion du client',
        '(e. g. U5150)' => '(ex: U5150)',
        'SLA' => 'SLA',
        'Agent' => 'Technicien',
        'Ticket Lock' => 'Ticket verrouill�',
        'TicketFreeFields' => 'Champs libres du ticket',
        'Create Times' => 'Dates de cr�ation',
        'No create time settings.' => 'Pas de crit�re de date de cr�ation',
        'Ticket created' => 'Ticket cr��',
        'Ticket created between' => 'Ticket cr�� entre le',
        'Close Times' => 'Temps de fermeture',
        'No close time settings.' => 'Pas de param�tre de temps de fermeture',
        'Ticket closed' => 'Ticket ferm�',
        'Ticket closed between' => 'Ticket ferm� entre',
        'Pending Times' => 'Dates d\'�ch�ance',
        'No pending time settings.' => 'pas de crit�re de date d\'�ch�ance',
        'Ticket pending time reached' => 'Date d\'�ch�ance atteinte le',
        'Ticket pending time reached between' => 'Date d\'�ch�ance atteinte entre le',
        'Escalation Times' => '',
        'No escalation time settings.' => '',
        'Ticket escalation time reached' => '',
        'Ticket escalation time reached between' => '',
        'Escalation - First Response Time' => 'R�mont�e du ticket - Premier temps de r�ponse',
        'Ticket first response time reached' => '',
        'Ticket first response time reached between' => '',
        'Escalation - Update Time' => 'Escalade - �ch�ance pour le suivi',
        'Ticket update time reached' => '',
        'Ticket update time reached between' => '',
        'Escalation - Solution Time' => 'Escalade - �ch�ance pour la solution',
        'Ticket solution time reached' => '',
        'Ticket solution time reached between' => '',
        'New Service' => 'Nouveau Service',
        'New SLA' => 'Nouveau SLA',
        'New Priority' => 'Nouvelle Priorit�',
        'New Queue' => 'Nouvelle File',
        'New State' => 'Nouvel �tat',
        'New Agent' => 'Nouveau Technicien',
        'New Owner' => 'Nouveau Propri�taire',
        'New Customer' => 'Nouveau Client',
        'New Ticket Lock' => 'Nouveau Verrou',
        'New Type' => 'Nouveau Type',
        'New Title' => 'Nouveau Titre',
        'New TicketFreeFields' => 'Nouveau champs libres',
        'Add Note' => 'Ajouter une note',
        'Time units' => 'Unit� de temps',
        'CMD' => 'CMD',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Cette commande sera ex�cut�. ARG[0] sera le num�ro du ticket et ARG[1] son identifiant.',
        'Delete tickets' => 'Effacer les tickets',
        'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Attention, ces tickets seront �ffac�s de la base de donn�e ! Ils seront d�finitivement perdus !',
        'Send Notification' => 'Envoyer une notification',
        'Param 1' => 'Param�tre 1',
        'Param 2' => 'Param�tre 2',
        'Param 3' => 'Param�tre 3',
        'Param 4' => 'Param�tre 4',
        'Param 5' => 'Param�tre 5',
        'Param 6' => 'Param�tre 6',
        'Send agent/customer notifications on changes' => '',
        'Save' => 'Sauver',
        '%s Tickets affected! Do you really want to use this job?' => '%s tickets affect�s! Voulez vous vraiment utiliser cette commande ?',

        # Template: AdminGroupForm
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' => '',
        'Group Management' => 'Administration des groupes',
        'Add Group' => 'Ajouter un groupe',
        'Add a new Group.' => 'Ajouter un nouveau groupe',
        'The admin group is to get in the admin area and the stats group to get stats area.' => 'Le groupe admin permet d\'acc�der � la zone d\'administration et le groupe stats � la zone de statistiques.',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Cr�er de nouveaux groupes permettra de g�rer les droits d\'acc�s pour les diff�rents groupes du technicien (exemple: achats, comptabilit�, support, ventes...).',
        'It\'s useful for ASP solutions.' => 'C\'est utile pour les fournisseurs d\'applications.',

        # Template: AdminLog
        'System Log' => 'Journaux du Syst�me',
        'Time' => 'Date et heure',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Gestion du compte de messagerie',
        'Host' => 'H�te',
        'Trusted' => 'V�rifi�',
        'Dispatching' => 'R�partition',
        'All incoming emails with one account will be dispatched in the selected queue!' => 'Tous les courriels entrants avec un compte seront r�partis dans la file s�lectionn�e !',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Si votre compte est v�rifi�, les ent&ecirc;tes X-OTRS (pour les priorit�s,...) seront utilis�s !',

        # Template: AdminNavigationBar
        'Users' => 'Utilisateurs',
        'Groups' => 'Groupes',
        'Misc' => 'Divers',

        # Template: AdminNotificationEventForm
        'Notification Management' => 'Gestion des notifications',
        'Add Notification' => '',
        'Add a new Notification.' => '',
        'Name is required!' => 'Un nom est requis!',
        'Event is required!' => '',
        'A message should have a subject!' => 'Un message doit avoir un sujet !',
        'A message should have a body!' => 'Un message doit avoir un corps !',
        'Recipient' => '',
        'Group based' => '',
        'Agent based' => '',
        'Email based' => '',
        'Article Type' => '',
        'Only for ArticleCreate Event.' => '',
        'Subject match' => '',
        'Body match' => '',
        'Notifications are sent to an agent or a customer.' => 'Des notifications sont envoy�es � un technicien ou � un client.',
        'To get the first 20 character of the subject (of the latest agent article).' => '',
        'To get the first 5 lines of the body (of the latest agent article).' => '',
        'To get the article attribute (e. g. (<OTRS_AGENT_From>, <OTRS_AGENT_To>, <OTRS_AGENT_Cc>, <OTRS_AGENT_Subject> and <OTRS_AGENT_Body>).' => '',
        'To get the first 20 character of the subject (of the latest customer article).' => '',
        'To get the first 5 lines of the body (of the latest customer article).' => '',

        # Template: AdminNotificationForm
        'Notification' => 'Notification',

        # Template: AdminPackageManager
        'Package Manager' => 'Gestionnaire de paquet',
        'Uninstall' => 'D�installation',
        'Version' => 'Version',
        'Do you really want to uninstall this package?' => 'Voulez-vous vraiment d�installer ce paquet ?',
        'Reinstall' => 'R�-installation',
        'Do you really want to reinstall this package (all manual changes get lost)?' => 'Voulez-vous vraiment r�installer ce paquet (Tous les changements manuels seront perdus) ?',
        'Continue' => 'Continuer',
        'Install' => 'Installation',
        'Package' => 'Paquet',
        'Online Repository' => 'D�pot en ligne',
        'Vendor' => 'Vendeur',
        'Module documentation' => '',
        'Upgrade' => 'Mise � jour',
        'Local Repository' => 'D�p�t local',
        'Status' => '�tat',
        'Overview' => 'Aper�u',
        'Download' => 'T�l�chargement',
        'Rebuild' => 'Re-construction',
        'ChangeLog' => 'Enregistrement des changements',
        'Date' => 'Date',
        'Filelist' => 'Liste des fichiers',
        'Download file from package!' => 'T�l�charger le fichier depuis le paquet',
        'Required' => 'Obligatoire',
        'PrimaryKey' => 'Cl� primaire',
        'AutoIncrement' => 'Auto incr�mentation',
        'SQL' => 'SQL',
        'Diff' => 'Diff',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Enregistrement des indicateurs de performance',
        'This feature is enabled!' => 'Cette fonctionnalit� est activ�e',
        'Just use this feature if you want to log each request.' => 'N\'employer cette fonction que si vous voulez enregitrer chaque requ�te',
        'Activating this feature might affect your system performance!' => '',
        'Disable it here!' => 'D�sactivez l� ici',
        'This feature is disabled!' => 'Cette fonctionnalit� est d�sactiv�e',
        'Enable it here!' => 'Activez l� ici',
        'Logfile too large!' => 'Fichier de log trop grand !',
        'Logfile too large, you need to reset it!' => 'Fichier de log trop grand, une remise � z�ro est n�cessaire !',
        'Range' => 'Plage',
        'Interface' => 'Interface',
        'Requests' => 'Requ�tes',
        'Min Response' => 'Temps de r�ponse minimum',
        'Max Response' => 'Temps de r�ponse maximun',
        'Average Response' => 'Temps de r�ponse moyen',
        'Period' => 'P�riode',
        'Min' => 'Min',
        'Max' => 'Max',
        'Average' => 'Moyenne',

        # Template: AdminPGPForm
        'PGP Management' => 'Gestion de PGP',
        'Result' => 'R�sultat',
        'Identifier' => 'Identifiant',
        'Bit' => 'Bit',
        'Key' => 'Cl�',
        'Fingerprint' => 'Empreinte',
        'Expires' => 'Expiration',
        'In this way you can directly edit the keyring configured in SysConfig.' => 'Dans ce cas vous pouvez directement �diter le trousseau configur� dans SysConfig.',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Gestion des filtres PostMaster',
        'Filtername' => 'Nom du filtre',
        'Stop after match' => '',
        'Match' => 'Correspond',
        'Value' => 'Valeur',
        'Set' => 'Assigner',
        'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'dispatcher ou filtrer les courriels entrants en se basant sur les en-t�tes (X-*)! L\'utilisationd\'expression r�guli�re est aussi possible.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' => 'Si vous voulez tester uniquement l\'email, utiliser EMAILADDRESS:info@example.com dans From, To ou Cc.',
        'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Si vous utilisez RegExp, vous pouvez aussi tester la valeur entre () comme [***] dans \'Set\'.',

        # Template: AdminPriority
        'Priority Management' => 'Gestion de la priorit�',
        'Add Priority' => 'Ajouter la priorit�',
        'Add a new Priority.' => 'Ajouter une nouvelle priorit�',

        # Template: AdminQueueAutoResponseForm
        'Queue <-> Auto Responses Management' => 'Files <-> Gestion des r�ponses automatiques',
        'settings' => '',

        # Template: AdminQueueForm
        'Queue Management' => 'Gestion des files',
        'Sub-Queue of' => 'Sous-file',
        'Unlock timeout' => 'D�lai du d�verrouillage',
        '0 = no unlock' => '0 = pas de verrouillage',
        'Only business hours are counted.' => 'Seuls les plages horaires de bureau sont compt�s',
        '0 = no escalation' => '0 = pas de remont�e du ticket',
        'Notify by' => 'Notification par',
        'Follow up Option' => 'Option des suivis',
        'Ticket lock after a follow up' => 'Ticket verrouill� apr�s un suivi',
        'Systemaddress' => 'Adresse du Syst�me',
        'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Si un technicien verrouille un ticket et qu\'il/elle n\'envoie pas une r�ponse dans le temps imparti, le ticket sera d�verrouill� automatiquement. Le ticket sera alors visible de tous les autres techniciens',
        'Escalation time' => 'D�lai de remont�e du ticket',
        'If a ticket will not be answered in this time, just only this ticket will be shown.' => 'Si une r�ponse n\'est pas apport�e au ticket dans le temps imparti, seul ce ticket sera affich�',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Si un ticket est cl�tur� et que le client envoie une note, le ticket sera verrouill� pour l\'ancien propri�taire',
        'Will be the sender address of this queue for email answers.' => 'Sera l\'adresse d\'exp�dition pour les r�ponses par courriel pour cette file.',
        'The salutation for email answers.' => 'La formule de politesse pour les r�ponses par mail',
        'The signature for email answers.' => 'La signature pour les r�ponses par courriel',
        'Customer Move Notify' => 'Notification lors d\'un changement de file',
        'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS envoi un courriel au client lorsque le ticket change de file.',
        'Customer State Notify' => 'Notification lors d\'un changement d\'�tat',
        'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS envoi un courriel au client lorsque le ticket change d\'�tat.',
        'Customer Owner Notify' => 'Notification lors d\'un changement de propri�taire',
        'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS envoi un courriel au client lorsque le ticket change de propri�taire.',

        # Template: AdminQueueResponsesChangeForm
        'Responses <-> Queue Management' => 'R�ponses <-> Gestion des files',

        # Template: AdminQueueResponsesForm
        'Answer' => 'R�ponse',

        # Template: AdminResponseAttachmentChangeForm
        'Responses <-> Attachments Management' => 'R�ponses <-> Gestion des pi�ces jointes',

        # Template: AdminResponseAttachmentForm

        # Template: AdminResponseForm
        'Response Management' => 'Gestion des r�ponses',
        'A response is default text to write faster answer (with default text) to customers.' => 'Une r�ponse est un texte par d�faut destin� � r�diger plus rapidement des r�ponses standards aux clients.',
        'Don\'t forget to add a new response a queue!' => 'Ne pas oublier d\'ajouter une file � une nouvelle r�ponse !',
        'The current ticket state is' => 'L\'�tat actuel du ticket est',
        'Your email address is new' => 'Votre adresse �lectronique est nouvelle',

        # Template: AdminRoleForm
        'Role Management' => 'Gestion des R�les',
        'Add Role' => 'Ajouter un r�le',
        'Add a new Role.' => 'Ajoute un nouveau r�le.',
        'Create a role and put groups in it. Then add the role to the users.' => 'Cr�e un r�le et y ajoute des groupes. Ajoute alors le r�le aux utilisateurs.',
        'It\'s useful for a lot of users and groups.' => 'Pratique lorsqu\'on a beaucoup d\'utilisateurs et de groupes',

        # Template: AdminRoleGroupChangeForm
        'Roles <-> Groups Management' => 'R�les <-> Gestion des groupes',
        'move_into' => 'd�placer dans',
        'Permissions to move tickets into this group/queue.' => 'Permission de d�placer un ticket dans cette file/groupe.',
        'create' => 'cr�er',
        'Permissions to create tickets in this group/queue.' => 'Permission de cr�er un ticket dans cette file/groupe.',
        'owner' => 'propri�taire',
        'Permissions to change the ticket owner in this group/queue.' => 'Permission de changer le propri�taire d\'un ticket dans cette file/groupe.',
        'priority' => 'priorit�',
        'Permissions to change the ticket priority in this group/queue.' => 'Permission de changer la priorit� d\'un ticket dans cette file/groupe.',

        # Template: AdminRoleGroupForm
        'Role' => 'R�les',

        # Template: AdminRoleUserChangeForm
        'Roles <-> Users Management' => 'R�les <-> Gestion des utilisateurs',
        'Select the role:user relations.' => 'S�lection des relations role/utilisateur',

        # Template: AdminRoleUserForm

        # Template: AdminSalutationForm
        'Salutation Management' => 'Pr�fixes des messages',
        'Add Salutation' => 'Ajouter une en-t�te',
        'Add a new Salutation.' => 'Ajoute une nouvelle en-t�te.',

        # Template: AdminSecureMode
        'Secure Mode need to be enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' => '',
        'Secure mode must be disabled in order to reinstall using the web-installer.' => '',
        'If Secure Mode is not activated, activate it via SysConfig because your application is already running.' => '',

        # Template: AdminSelectBoxForm
        'SQL Box' => 'Req�tes SQL',
        'Go' => 'Valider',
        'Select Box Result' => 'Choisissez le r�sultat',

        # Template: AdminService
        'Service Management' => 'Gestion des Services',
        'Add Service' => 'Ajouter un Service',
        'Add a new Service.' => 'Ajoute un nouveau Service.',
        'Sub-Service of' => 'Sous-service de',

        # Template: AdminSession
        'Session Management' => 'Gestion des sessions',
        'Sessions' => 'Sessions',
        'Uniq' => 'Unique',
        'Kill all sessions' => 'Supprimer toutes les sessions',
        'Session' => 'Session',
        'Content' => 'Contenu',
        'kill session' => 'Supprimer la session',

        # Template: AdminSignatureForm
        'Signature Management' => 'Gestion des signatures',
        'Add Signature' => 'Ajouter une signature',
        'Add a new Signature.' => 'Ajouter une nouvelle signature.',

        # Template: AdminSLA
        'SLA Management' => 'Gestion des Accords sur la qualit� de service (Service Level Agreement)',
        'Add SLA' => 'Ajouter un SLA',
        'Add a new SLA.' => 'Ajouter un nouveau SLA',

        # Template: AdminSMIMEForm
        'S/MIME Management' => 'Gestion S/MIME',
        'Add Certificate' => 'Ajouter un certificat',
        'Add Private Key' => 'Ajouter une cl� priv�e',
        'Secret' => 'Secret',
        'Hash' => 'Hashage',
        'In this way you can directly edit the certification and private keys in file system.' => 'Dans ce cas vous pouvez directement �diter le certificat et la cl� priv�e dans le syst�me de fichier',

        # Template: AdminStateForm
        'State Management' => 'Gestion des �tats',
        'Add State' => 'Ajouter un �tat',
        'Add a new State.' => 'Ajoute un nouvel �tat.',
        'State Type' => 'Type d\'�tat',
        'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Prenez garde de bien mettre � jour les �tats par d�faut dans votre Kernel/Config.pm !',
        'See also' => 'Voir aussi',

        # Template: AdminSysConfig
        'SysConfig' => 'Configuration Syst�me',
        'Group selection' => 'S�lection du groupe',
        'Show' => 'Voir',
        'Download Settings' => 'Param�tres de t�l�chargement',
        'Download all system config changes.' => 'T�l�charger tous les changements de la configuration syst�me.',
        'Load Settings' => 'Charger les param�tres',
        'Subgroup' => 'Sous-groupe',
        'Elements' => '�l�ments',

        # Template: AdminSysConfigEdit
        'Config Options' => 'Options de configuration',
        'Default' => 'D�faut',
        'New' => 'Nouveau',
        'New Group' => 'Nouveau groupe',
        'Group Ro' => 'Groupe lecture seule',
        'New Group Ro' => 'Nouveau groupe (lecture seule)',
        'NavBarName' => 'Nom de la barre de navigation',
        'NavBar' => 'Barre de navigation',
        'Image' => 'Image',
        'Prio' => 'Priorit�',
        'Block' => 'Bloc',
        'AccessKey' => 'Acc�s clavier',

        # Template: AdminSystemAddressForm
        'System Email Addresses Management' => 'Gestion des adresses courriel du syst�me',
        'Add System Address' => 'Ajouter une adresse syst�me',
        'Add a new System Address.' => 'Ajoute une nouvelle adresse syst�me',
        'Realname' => 'V�ritable Nom',
        'All email addresses get excluded on replaying on composing an email.' => '',
        'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Tous les courriels avec cette adresse en destinataire (�:) seront r�partis dans la file s�lectionn�e !',

        # Template: AdminTypeForm
        'Type Management' => 'Gestion des Types',
        'Add Type' => 'Ajouter un Type',
        'Add a new Type.' => 'Ajoute un nouveau Type.',

        # Template: AdminUserForm
        'User Management' => 'Administration des utilisateurs',
        'Add User' => 'Ajouter un utilisateur',
        'Add a new Agent.' => 'Ajoute un nouvel agent.',
        'Login as' => 'Connect� en tant que',
        'Firstname' => 'Pr�nom',
        'Lastname' => 'Nom',
        'Start' => 'D�marrer',
        'End' => '',
        'User will be needed to handle tickets.' => 'Un utilisateur sera n�cessaire pour g�rer les tickets.',
        'Don\'t forget to add a new user to groups and/or roles!' => 'N\'oubliez pas d\'ajouter un nouvel utilisateur � des groupes et/ou des r�les !',

        # Template: AdminUserGroupChangeForm
        'Users <-> Groups Management' => 'Utilisateurs <-> Gestion des groupes',

        # Template: AdminUserGroupForm

        # Template: AgentBook
        'Address Book' => 'Carnet d\'adresses',
        'Return to the compose screen' => 'Retourner � l\'�cran de saisie',
        'Discard all changes and return to the compose screen' => 'Annuler tous les changements et retourner � l\'�cran de saisie',

        # Template: AgentCalendarSmall

        # Template: AgentCalendarSmallIcon

        # Template: AgentCustomerSearch

        # Template: AgentCustomerTableView

        # Template: AgentDashboard
        'Dashboard' => '',
        'more' => '',
        'Collapse' => '',

        # Template: AgentDashboardCalendarOverview
        'in' => '',

        # Template: AgentDashboardImage

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '',
        'Please update now.' => '',
        'Release Note' => '',
        'Level' => '',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '',

        # Template: AgentDashboardTicketOverview

        # Template: AgentDashboardTicketStats

        # Template: AgentInfo
        'Info' => 'Information',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Lier l\'Objet: %s',
        'Object' => 'Objet',
        'Link Object' => 'Lier l\'objet',
        'with' => '',
        'Select' => 'S�lectionner',
        'Unlink Object: %s' => 'D�lier l\'objet: %s',

        # Template: AgentLookup
        'Lookup' => 'Consulter',

        # Template: AgentNavigationBar

        # Template: AgentPreferencesForm

        # Template: AgentSpelling
        'Spell Checker' => 'V�rificateur orthographique',
        'spelling error(s)' => 'erreurs d\'orthographe',
        'or' => 'ou',
        'Apply these changes' => 'Appliquer ces changements',

        # Template: AgentStatsDelete
        'Do you really want to delete this Object?' => 'Voulez vous vraiment effacer cet objet ?',

        # Template: AgentStatsEditRestrictions
        'Select the restrictions to characterise the stat' => 'S�lectionnez les restrictions pour affiner les statistiques',
        'Fixed' => 'Fix�',
        'Please select only one element or turn off the button \'Fixed\'.' => 'S�lectionnez un seul �l�ment ou d�sactivez le bouton \'Fix�\'',
        'Absolut Period' => 'P�riode absolue',
        'Between' => 'Entre',
        'Relative Period' => 'P�riode relative',
        'The last' => 'Le dernier',
        'Finish' => 'Terminer',
        'Here you can make restrictions to your stat.' => 'Vous pouvez ici appliquer des restrictions � vos statistiques.',
        'If you remove the hook in the "Fixed" checkbox, the agent generating the stat can change the attributes of the corresponding element.' => 'Si vous enlevez la coche dans la case, le technicien generant les statistiques peut changer les attributs de l\�lement correspondant',

        # Template: AgentStatsEditSpecification
        'Insert of the common specifications' => 'Insertion des caract�ristiques communes',
        'Permissions' => 'Permissions',
        'Format' => 'Format',
        'Graphsize' => 'Taille du graphique',
        'Sum rows' => 'Ligne de somme',
        'Sum columns' => 'Colonnes de somme',
        'Cache' => 'Cache',
        'Required Field' => 'Champ requis',
        'Selection needed' => 'S�lection requise',
        'Explanation' => 'Explication',
        'In this form you can select the basic specifications.' => 'Dans ce formulaire, vous pouvez choisir les caract�ristiques de base',
        'Attribute' => 'Attributs',
        'Title of the stat.' => 'Titre des statistiques',
        'Here you can insert a description of the stat.' => 'Vous pouvez ins�rer ici une description des statistiques.',
        'Dynamic-Object' => 'Objet dynamique',
        'Here you can select the dynamic object you want to use.' => 'Ici vous pouvez s�lectionner l\'objet dynamique que vous voulez utiliser',
        '(Note: It depends on your installation how many dynamic objects you can use)' => 'Note: Le nombre d\'objets dynamiques que vous pouvez utiliser d�pend de votre configuration technique',
        'Static-File' => 'Fichier statique',
        'For very complex stats it is possible to include a hardcoded file.' => 'Pour des statistiques tr�s complexes, il est possible d\'inclure un fichier d�j� encod�',
        'If a new hardcoded file is available this attribute will be shown and you can select one.' => 'Si un nouveau fichier encod� est disponible, cet attribut sera visible et vous pourrez le s�lectionner',
        'Permission settings. You can select one or more groups to make the configurated stat visible for different agents.' => 'Permissions. Vous pouvez s�lectionner un ou plusieurs groupes pour autoriser la consultation des statistiques pour diff�rents techniciens.',
        'Multiple selection of the output format.' => 'Selection multiple du format de sortie',
        'If you use a graph as output format you have to select at least one graph size.' => 'Si vous choisissez Graphe comme format de sortie, vous devez choisir la taille',
        'If you need the sum of every row select yes' => 'Si vous avez besoin de la somme pour chaque ligne, choisissez Oui',
        'If you need the sum of every column select yes.' => 'Si vous avez besoin de la somme pour chaque colonne, choisissez Oui',
        'Most of the stats can be cached. This will speed up the presentation of this stat.' => 'La plus grande part des stats peuvent �tre mise en cache. Cela acc�lere leur pr�sentation',
        '(Note: Useful for big databases and low performance server)' => 'Note: utile pour les bases de donn�es volumineuses et les serveurs peu performants',
        'With an invalid stat it isn\'t feasible to generate a stat.' => 'Il est impossible de produire des statistiques avec des donn�es invalides.',
        'This is useful if you want that no one can get the result of the stat or the stat isn\'t ready configurated.' => 'Ceci est utilie si vous voulez que personne n\'obtienne les statistiques ou si elles ne sont pas encore configur�es',

        # Template: AgentStatsEditValueSeries
        'Select the elements for the value series' => 'S�lectionnez les �l�ments de la s�rie de donn�es',
        'Scale' => '�chelle',
        'minimal' => 'minimale',
        'Please remember, that the scale for value series has to be larger than the scale for the X-axis (e.g. X-Axis => Month, ValueSeries => Year).' => 'SVP, rappelez vous que la plage pour la s�rie de donn�es doit �tre plus grande que l\'echelle de l\'axe des X (ex. axe des X => Mois, S�rie => Ann�e',
        'Here you can define the value series. You have the possibility to select one or two elements. Then you can select the attributes of elements. Each attribute will be shown as single value series. If you don\'t select any attribute all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsEditXaxis
        'Select the element, which will be used at the X-axis' => 'S�lectionnez l\'�l�ment qui sera utilis� pour l\'axe des X',
        'maximal period' => 'p�riode minimale',
        'minimal scale' => '�chelle minimale',
        'Here you can define the x-axis. You can select one element via the radio button. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',

        # Template: AgentStatsImport
        'Import' => 'Importer',
        'File is not a Stats config' => 'Ce n\'est pas un fichier de configuration de statistiques',
        'No File selected' => 'Aucun fichier s�lectionn�',

        # Template: AgentStatsOverview
        'Results' => 'R�sultat',
        'Total hits' => 'Nombre de r�sultats trouv�s',
        'Page' => 'Page',

        # Template: AgentStatsPrint
        'Print' => 'Imprimer',
        'No Element selected.' => 'Aucun �l�ment s�lectionn�.',

        # Template: AgentStatsView
        'Export Config' => 'Exporter la configuration',
        'Information about the Stat' => 'Informations � propos de la statistique',
        'Exchange Axis' => '�changez les axes',
        'Configurable params of static stat' => 'Param�tres modifiables des statistiques',
        'No element selected.' => 'Aucun �l�ment s�lectionn�.',
        'maximal period from' => 'P�riode maximale de',
        'to' => 'vers',
        'With the input and select fields you can configurate the stat at your needs. Which elements of a stat you can edit depends on your stats administrator who configurated the stat.' => '',

        # Template: AgentTicketBounce
        'A message should have a To: recipient!' => 'Un message doit avoir un destinataire (�:)!',
        'You need a email address (e. g. customer@example.com) in To:!' => 'Il faut une adresse courriel (ex&nbsp;: client@exemple.fr)&nbsp;!',
        'Bounce ticket' => 'Renvoyer le ticket',
        'Ticket locked!' => 'Ticket verrouill� !',
        'Ticket unlock!' => 'Rendre le ticket !',
        'Bounce to' => 'Renvoyer �',
        'Next ticket state' => 'Prochain �tat du ticket',
        'Inform sender' => 'Informer l\'emetteur',
        'Send mail!' => 'Envoyer le courriel !',

        # Template: AgentTicketBulk
        'You need to account time!' => 'Vous devez comptabiliser le temps;!',
        'Ticket Bulk Action' => 'Ticket en action group�e',
        'Spell Check' => 'V�rification orthographique',
        'Note type' => 'Type de note',
        'Next state' => '�tat suivant',
        'Pending date' => 'D�lais d\'attente',
        'Merge to' => 'Fusionner avec',
        'Merge to oldest' => '',
        'Link together' => '',
        'Link to Parent' => '',
        'Unlock Tickets' => 'D�verrouiller les Tickets',

        # Template: AgentTicketClose
        'Ticket Type is required!' => '',
        'A required field is:' => '',
        'Close ticket' => 'Ticket clos',
        'Previous Owner' => 'Propri�taire Pr�c�dent',
        'Inform Agent' => 'Informer l\'agent',
        'Optional' => 'Optionnel',
        'Inform involved Agents' => 'Informer les agents impliqu�s',
        'Attach' => 'Attacher',

        # Template: AgentTicketCompose
        'A message must be spell checked!' => 'L\'orthographe d\'un message doit �tre v�rifi�e!',
        'Compose answer for ticket' => 'R�diger une r�ponse pour le ticket',
        'Pending Date' => 'En attendant la date',
        'for pending* states' => 'pour tous les �tats de mise en attente',

        # Template: AgentTicketCustomer
        'Change customer of ticket' => 'Changer le client du ticket',
        'Set customer user and customer id of a ticket' => 'Assigner un utilisateur client et un identifiant client pour le ticket.',
        'Customer User' => 'Client Utilisateur',
        'Search Customer' => 'Recherche de client',
        'Customer Data' => 'Donn�es client',
        'Customer history' => 'Historique du client',
        'All customer tickets.' => 'Tous les tickets du client',

        # Template: AgentTicketEmail
        'Compose Email' => '�crire un courriel',
        'new ticket' => 'nouveau ticket',
        'Refresh' => 'Rafra�chir',
        'Clear To' => 'Effacer la zone de saisie "De:"',
        'All Agents' => 'Tous les techniciens',

        # Template: AgentTicketEscalation

        # Template: AgentTicketForward
        'Article type' => 'Type d\'article',

        # Template: AgentTicketFreeText
        'Change free text of ticket' => 'Changer le texte libre du ticket',

        # Template: AgentTicketHistory
        'History of' => 'Historique de',

        # Template: AgentTicketLocked

        # Template: AgentTicketMerge
        'You need to use a ticket number!' => 'Vous devez utiliser un num�ro de ticket!',
        'Ticket Merge' => 'Fusion de Ticket',

        # Template: AgentTicketMove
        'Move Ticket' => 'Changer la file du ticket',

        # Template: AgentTicketNote
        'Add note to ticket' => 'Ajouter une note au ticket',

        # Template: AgentTicketOverviewMedium
        'First Response Time' => 'Temps pour fournir la premi�re r�ponse (prise en compte)',
        'Service Time' => '',
        'Update Time' => 'Temps pour fournir un point d\'avancement',
        'Solution Time' => 'Temps pour fournir la r�ponse',

        # Template: AgentTicketOverviewMediumMeta
        'You need min. one selected Ticket!' => 'Vous devez nommer au moins un Ticket!',

        # Template: AgentTicketOverviewNavBar
        'Filter' => 'Filtre',
        'Change search options' => 'Changer les options de recherche',
        'Tickets' => 'Ticket',
        'of' => 'de',

        # Template: AgentTicketOverviewNavBarSmall

        # Template: AgentTicketOverviewPreview
        'Compose Answer' => 'R�diger une r�ponse',
        'Contact customer' => 'Contacter le client',
        'Change queue' => 'Changer de file',

        # Template: AgentTicketOverviewPreviewMeta

        # Template: AgentTicketOverviewSmall
        'sort upward' => 'Tri croissant',
        'up' => 'vers le haut',
        'sort downward' => 'Tri d�croissant',
        'down' => 'vers le bas',
        'Escalation in' => 'Remont�e dans',
        'Locked' => 'Verrouill�',

        # Template: AgentTicketOwner
        'Change owner of ticket' => 'Changer le propri�taire du ticket',

        # Template: AgentTicketPending
        'Set Pending' => 'D�finir la mise en attente',

        # Template: AgentTicketPhone
        'Phone call' => 'Appel t�l�phonique',
        'Clear From' => 'Vider le formulaire',

        # Template: AgentTicketPhoneOutbound

        # Template: AgentTicketPlain
        'Plain' => 'Tel quel',

        # Template: AgentTicketPrint
        'Ticket-Info' => 'Information du Ticket',
        'Accounted time' => 'Temp pass�',
        'Linked-Object' => 'Objet li�',
        'by' => 'par',

        # Template: AgentTicketPriority
        'Change priority of ticket' => 'Modification de la priorit� du ticket',

        # Template: AgentTicketQueue
        'Tickets shown' => 'Tickets affich�s',
        'Tickets available' => 'Tickets disponibles',
        'All tickets' => 'tous les tickets',
        'Queues' => 'Files',
        'Ticket escalation!' => 'Remont�e du ticket !',

        # Template: AgentTicketResponsible
        'Change responsible of ticket' => 'Changer le responsable du ticket',

        # Template: AgentTicketSearch
        'Ticket Search' => 'Recherche de ticket',
        'Profile' => 'Profil',
        'Search-Template' => 'Profil de recherche',
        'TicketFreeText' => 'Texte Libre du Ticket',
        'Created in Queue' => 'Cr�� dans la file',
        'Article Create Times' => '',
        'Article created' => '',
        'Article created between' => '',
        'Change Times' => '',
        'No change time settings.' => '',
        'Ticket changed' => '',
        'Ticket changed between' => '',
        'Result Form' => 'Format du r�sultat',
        'Save Search-Profile as Template?' => 'Sauver le profil de recherche ?',
        'Yes, save it with name' => 'Oui, le sauver avec le nom',

        # Template: AgentTicketSearchOpenSearchDescriptionFulltext
        'Fulltext' => 'Texte Complet',

        # Template: AgentTicketSearchOpenSearchDescriptionTicketNumber

        # Template: AgentTicketSearchResultPrint

        # Template: AgentTicketZoom
        'Expand View' => 'Afficher plus',
        'Collapse View' => 'R�duire',
        'Split' => 'Scinder',

        # Template: AgentTicketZoomArticleFilterDialog
        'Article filter settings' => '',
        'Save filter settings as default' => '',

        # Template: AgentWindowTab

        # Template: AJAX

        # Template: Copyright

        # Template: CustomerAccept

        # Template: CustomerCalendarSmallIcon

        # Template: CustomerError
        'Traceback' => 'Trace du retour d\'erreur',

        # Template: CustomerFooter
        'Powered by' => 'Fonction assur�e par',

        # Template: CustomerFooterSmall

        # Template: CustomerHeader

        # Template: CustomerHeaderSmall

        # Template: CustomerLogin
        'Login' => 'S\'authentifier',
        'Lost your password?' => 'Mot de passe oubli� ?',
        'Request new password' => 'Demande de nouveau mot de passe',
        'Create Account' => 'Cr�er un compte',

        # Template: CustomerNavigationBar
        'Welcome %s' => 'Bienvenue %s',

        # Template: CustomerPreferencesForm

        # Template: CustomerStatusView

        # Template: CustomerTicketMessage

        # Template: CustomerTicketPrint

        # Template: CustomerTicketSearch
        'Times' => 'Fois',
        'No time settings.' => 'Pas de param�tre de temps',

        # Template: CustomerTicketSearchOpenSearchDescription

        # Template: CustomerTicketSearchResultCSV

        # Template: CustomerTicketSearchResultPrint

        # Template: CustomerTicketSearchResultShort

        # Template: CustomerTicketZoom

        # Template: CustomerWarning

        # Template: Error
        'Click here to report a bug!' => 'Cliquer ici pour signaler une anomalie!',

        # Template: Footer
        'Top of Page' => 'Haut de page',

        # Template: FooterSmall

        # Template: Header
        'Home' => 'Accueil',

        # Template: HeaderSmall

        # Template: Installer
        'Web-Installer' => 'Installeur Web',
        'Welcome to %s' => 'Bienvenue dans %s',
        'Accept license' => 'Accepter la licence',
        'Don\'t accept license' => 'Ne pas accepter la licence',
        'Admin-User' => 'Administrateur',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty. For security reasons we do recommend setting a root password. For more information please refer to your database documentation.' => '',
        'Admin-Password' => 'Mot de passe de l\'administrateur',
        'Database-User' => 'Nom de l\'utilisateur de la base de donn�e',
        'default \'hot\'' => 'h�te par d�faut',
        'DB connect host' => 'Nom d\'h�te de la base de donn�e',
        'Database' => 'Base de donn�e',
        'Default Charset' => 'Charset par d�faut',
        'utf8' => 'UTF-8',
        'false' => 'faux',
        'SystemID' => 'ID Syst�me',
        '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(L\'identit� du syst�me. Chaque num�ro de ticket et chaque id de session http commence avec ce nombre)',
        'System FQDN' => 'Nom de Domaine complet du syst�me',
        '(Full qualified domain name of your system)' => '(Nom de domaine complet de votre machine)',
        'AdminEmail' => 'Courriel de l\'administrateur.',
        '(Email of the system admin)' => '(Adresse de l\'administrateur syst�me)',
        'Organization' => 'Soci�t�',
        'Log' => 'Log',
        'LogModule' => 'Module de log',
        '(Used log backend)' => '(Backend de log utilis�)',
        'Logfile' => 'fichier de log',
        '(Logfile just needed for File-LogModule!)' => '(fichier de log n�cessaire pour le Module File-Log !)',
        'Webfrontend' => 'Frontal web',
        'Use utf-8 it your database supports it!' => 'Utilisez UTF-8 si votre base de donn�e le supporte !',
        'Default Language' => 'Langage par d�faut ',
        '(Used default language)' => '(Langage par d�faut utilis�)',
        'CheckMXRecord' => 'V�rifier les enregistrements MX',
        '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Verifie les enregistrements MX des adresses �lectroniques utilis�es lors de la r�daction d\'une r�ponse. N\'utilisez pas la "V�rification des enregistrements MX" si votre serveur OTRS est derri�re une ligne modem $!',
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Pour pouvoir utiliser OTRS, vous devez entrer les commandes suivantes dans votre terminal en tant que root.',
        'Restart your webserver' => 'Red�marrer votre serveur web',
        'After doing so your OTRS is up and running.' => 'Apr�s avoir fait ceci votre OTRS est en service',
        'Start page' => 'Page de d�marrage',
        'Your OTRS Team' => 'Votre �quipe OTRS',

        # Template: LinkObject

        # Template: Login

        # Template: Motd

        # Template: NoPermission
        'No Permission' => 'Pas d\'autorisation',

        # Template: Notify
        'Important' => 'Important',

        # Template: PrintFooter
        'URL' => 'URL',

        # Template: PrintHeader
        'printed by' => 'Imprim� par :',

        # Template: PublicDefault

        # Template: Redirect

        # Template: Test
        'OTRS Test Page' => 'Page de test d\'OTRS',
        'Counter' => 'Compteur',

        # Template: Warning

        # Template: YUI

        # Misc
        'Edit Article' => '�diter l\'article',
        'Create Database' => 'Cr�er la base de donn�es',
        'DB Host' => 'Nom d\'h�te de la base',
        'Change roles <-> groups settings' => 'Changer les r�les <-> param�tres des groupes',
        'Ticket Number Generator' => 'G�n�rateur de num�ro pour les tickets',
        '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Identifiant des tickets. Certaines personnes veulent le configurer avec par ex: \'Ticket#\', \'Appel#\' ou \'MonTicket#\')',
        'Create new Phone Ticket' => 'Saisie d\'une demande t�l�phonique',
        'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'Dans ce cas vous pouvez directement �diter le trousseau de cl� dans Kernel/Config.pm',
        'Symptom' => 'Sympt�me',
        'U' => 'A-Z',
        'Site' => 'Site',
        'Customer history search (e. g. "ID342425").' => 'Recherche dans l\'historique client (ex: "ID342425")',
        'Can not delete link with %s!' => 'Impossible d\'effacer le lien avec %s !',
        'for agent firstname' => 'pour le pr�nom du technicien',
        'Close!' => 'Cl�ture!',
        'No means, send agent and customer notifications on changes.' => 'Non signifie : Envoyer un mail au technicien et au client sur changement.',
        'A web calendar' => 'Un calendrier Web',
        'to get the realname of the sender (if given)' => 'pour avoir le nom r�el de l\'utilisateur (s\il est donn�)',
        'FAQ Search Result' => 'R�sultat de la recherche dans la FAQ',
        'OTRS DB Name' => 'Nom de la base OTRS',
        'Notification (Customer)' => 'Notification (Client)',
        'FAQ Category' => 'Cat�gorie dans la FAQ',
        'Select Source (for add)' => 'S�lectionnez une source (pour ajout)',
        'Options of the ticket data (e. g. &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => 'Options des donn�es du ticket (ex: &lt;OTRS_TICKET_Number&gt;, &lt;OTRS_TICKET_ID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)',
        'Child-Object' => 'Objet Enfant',
        'New FAQ Article' => '(FAQ) Nouvel article',
        'Days' => 'Jours',
        'Queue ID' => 'Identifiant de la File',
        'Config options (e. g. <OTRS_CONFIG_HttpType>)' => 'Options de configuration (ex: <OTRS_CONFIG_HttpType>)',
        'System History' => 'Historique du syst�me',
        'FAQ System History' => 'Historique syst�me de la FAQ',
        'customer realname' => 'nom r�el du client',
        'Pending messages' => 'Message en attente',
        'Modules' => 'Modules',
        'for agent login' => 'pour le nom de connexion (login) du technicien',
        'Keyword' => 'Mot cl�',
        'Close type' => 'Type de cl�ture',
        'FAQ-Article' => '(FAQ) Article',
        'DB Admin User' => 'nom de connexion de l\'administrateur base de donn�e',
        'for agent user id' => 'pour l\'identifiant du technicien',
        'Change user <-> group settings' => 'Modifier les param�tres utilisateurs <-> groupes',
        'FAQ-Area' => 'Foire Aux Questions',
        'Problem' => 'Probl�me',
        'Escalation' => 'Remont�e',
        '"}' => '"}',
        'Order' => 'Ordre',
        'next step' => '�tape suivante',
        'Follow up' => 'Note',
        'Customer history search' => 'Recherche dans l\'historique client',
        'Admin-Email' => 'Email de l\'administrateur',
        'Stat#' => '',
        'Create new database' => 'Cr�er une nouvelle base de donn�es',
        'FAQ Language' => 'Langue dans la FAQ',
        'ArticleID' => 'Identifiant de l\'Article',
        'Keywords' => 'Mots cl�s',
        'Ticket Escalation View' => 'Vue des remont�es du ticket',
        'Today' => 'Aujourd\'hui',
        'No * possible!' => 'Pas de * possible !',
        'Options ' => 'Options',
        'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Options ',
        'Message for new Owner' => 'Message pour le nouveau propri�taire',
        'to get the first 5 lines of the email' => 'pour avoir les 5 premi�res lignes du mail',
        'Sort by' => 'Trier par',
        'OTRS DB Password' => 'Mot de passe de la base OTRS',
        'Last update' => 'Derni�re mise � jour',
        'Tomorrow' => 'Demain',
        'to get the first 20 character of the subject' => 'pour avoir les 20 premiers caract�res du sujet ',
        'Select the customeruser:service relations.' => '',
        'DB Admin Password' => 'Mot de passe administrateur base de donn�es',
        'Advisory' => 'Avertissement',
        'Drop Database' => 'Effacer la base de donn�es',
        'Here you can define the x-axis. You can select one element via the radio button. Then you you have to select two or more attributes of the element. If you make no selection all attributes of the element will be used if you generate a stat. As well a new attribute is added since the last configuration.' => '',
        'FileManager' => 'Gestionnaire de fichiers',
        'Options of the current customer user data (e. g. <OTRS_CUSTOMER_DATA_UserFirstname>)' => 'Options concernant les donn�es du client actuel (ex: <OTRS_CUSTOMER_DATA_UserFirstname>)',
        'Pending type' => 'Type d\'attente',
        'Comment (internal)' => 'Commentaire interne',
        'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Options du propri�taire du ticket (ex: &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
        'FAQ-Search' => '(FAQ) Rechercher',
        'Options of the ticket data (e. g. <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Options des donn�es du ticket (ex: <OTRS_TICKET_Number>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        '(Used ticket number format)' => '(Format num�rique utilis� pour les tickets)',
        'Reminder' => 'Rappel',
        'OTRS DB connect host' => 'H�te de la base OTRS',
        ' (work units)' => ' Unit� de travail',
        'Next Week' => 'La semaine prochaine',
        'All Customer variables like defined in config option CustomerUser.' => 'Toutes les variables client tels que d�finies dans les options "Client utilisateur"',
        'accept license' => 'Accepter la licence',
        'for agent lastname' => 'pour le nom du technicien',
        'Options of the current user who requested this action (e. g. <OTRS_CURRENT_UserFirstname>)' => 'Options concernant l\'utilisateur actuel ayant effectu� cet action (ex: <OTRS_CURRENT_UserFirstname>)',
        'Reminder messages' => 'Message de rappel',
        'Change users <-> roles settings' => 'Changement d\'utilisateur <-> parram�ttres des r�les',
        'Parent-Object' => 'Objet Parent',
        'Of couse this feature will take some system performance it self!' => 'Bien �videmment, cette fonction consomme des ressources syst�me',
        'Your own Ticket' => 'Votre propre ticket',
        'Detail' => 'D�tail',
        'TicketZoom' => 'Vue en d�tails',
        'Open Tickets' => 'Tickets ouverts',
        'Don\'t forget to add a new user to groups!' => 'Ne pas oublier d\'ajouter un nouvel utilisateur aux groupes !',
        'CreateTicket' => 'Cr�er Ticket',
        'You have to select two or more attributes from the select field!' => 'Vous avez s�lectionn� deux attributs ou plus !',
        'System Settings' => 'Param�tres Syst�me',
        'WebWatcher' => 'WebWatcher',
        'Hours' => 'Heures',
        'Finished' => 'Fini',
        'Account Type' => 'Type de compte',
        'D' => 'Z-A',
        'System Status' => '�tat du syst�me',
        'All messages' => 'Tous les messages',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Options des donn�es du ticket (ex: <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_ID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Object already linked as %s.' => 'Objet d�j� li� en tant que %s',
        'A article should have a title!' => 'Un article doit avoir un titre',
        'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Options de configuration (ex: &lt;OTRS_CONFIG_HttpType&gt;)',
        'FAQ Overview' => 'Vue d\'ensemble de la FAQ',
        'don\'t accept license' => 'Ne pas accepter la licence',
        'All email addresses get excluded on replaying on composing and email.' => '',
        'A web mail client' => 'Un logiciel de messagerie via le web',
        'Compose Follow up' => 'Fermer le suivi',
        'FAQ-State' => '�tat FAQ',
        'WebMail' => 'Webmail',
        'Options of the ticket data (e. g. <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)' => 'Options des donn�es du ticket (ex:  <OTRS_TICKET_TicketNumber>, <OTRS_TICKET_TicketID>, <OTRS_TICKET_Queue>, <OTRS_TICKET_State>)',
        'Ticket owner options (e. g. <OTRS_OWNER_UserFirstname>)' => 'Options du propri�taire d\'un ticket (ex: <OTRS_OWNER_UserFirstname>)',
        'FAQ Search' => 'Chercher dans la FAQ',
        'DB Type' => 'Type de SGBD',
        'Termin1' => 'Termin1',
        'kill all sessions' => 'Terminer toutes les sessions',
        'to get the from line of the email' => 'pour avoir les lignes \'De\' du courriel',
        'Solution' => 'Solution',
        'QueueView' => 'Vue file',
        'Select Box' => 'Requ�te SQL libre.',
        'New messages' => 'Nouveaux messages',
        'Can not create link with %s!' => 'Impossible de cr�er un lien avec %s !',
        'Linked as' => 'Li�e en tant que',
        'Welcome to OTRS' => 'Bienvenue dans OTRS',
        'modified' => 'modifi�',
        'Delete old database' => 'Effacer l\'ancienne base de donn�es',
        'A web file manager' => 'Un gestionnaire de fichier via le web',
        'Have a lot of fun!' => 'Amusez vous bien !',
        'send' => 'envoyer',
        'Send no notifications' => 'Ne pas envoyer de notifications',
        'Note Text' => 'Note',
        'POP3 Account Management' => 'Gestion du compte POP3',
        'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Options des donn�es du client actuel (ex:  &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',
        'System State Management' => 'Gestion des �tats du syst�me',
        'OTRS DB User' => 'Utilisateur de la base OTRS',
        'Mailbox' => 'Boite aux lettres',
        'PhoneView' => 'Vue t�l�phone',
        'maximal period form' => '',
        'TicketID' => 'Identifiant du Ticket',
        'Escaladed Tickets' => '',
        'Yes means, send no agent and customer notifications on changes.' => 'Oui signifie : ne rien envoyer sur changement au technicien et au client.',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' => 'Votre message concernant le ticket num�ro "<OTRS_TICKET> est r��mis � "<OTRS_BOUNCE_TO>". Contactez cette adresse pour de plus amples renseignements',
        'FAQ History' => 'Historique de la FAQ',
        'Ticket Status View' => 'Vue de l\'�tat du ticket',
        'Modified' => 'Modifi�',
        'Ticket selected for bulk action!' => 'Ticket s�lectionn� pour une action group�e!',
    };
    # $$STOP$$
    return;
}

1;
