# --
# French.pm - provides french languag translation
# Copyright (C) 2002 Bernard Choppy <choppy@imaginet.fr>
# --
# $Id: French.pm,v 1.4 2002-10-25 00:08:55 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::French;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.4 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # --
    # some common words
    # --
    $Self->{Lock} = 'Verrouiller';
    $Self->{Unlock} = 'D�verrouiller';
    $Self->{unlock} = 'd�verrouiller';
    $Self->{Zoom} = 'D�tail';
    $Self->{History} = 'Historique';
    $Self->{'Add Note'} = 'Ajouter note';
    $Self->{Bounce} = 'Renvoyer';
    $Self->{Age} = 'Vieillir';
    $Self->{Priority} = 'Priorit�';
    $Self->{State} = '�tat';
    $Self->{From} = 'De ';
    $Self->{To} = '� ';
    $Self->{Cc} = 'Copie ';
    $Self->{Subject} = 'Sujet';
    $Self->{Move} = 'D�placer';
    $Self->{Queues} = 'Files';
    $Self->{Close} = 'Fermer';
    $Self->{Compose} = 'Composer';
    $Self->{Pending} = 'En attente';
    $Self->{end} = 'fin';
    $Self->{top} = 'd�but';
    $Self->{day} = 'jour';
    $Self->{days} = 'jours';
    $Self->{hour} = 'heure';
    $Self->{hours} = 'heures';
    $Self->{minute} = 'minute';
    $Self->{minutes} = 'minutes';
    $Self->{Owner} = 'Propri�taire';
    $Self->{Sender} = '�metteur';
    $Self->{Article} = 'Article';
    $Self->{Ticket} = 'Ticket';
    $Self->{Createtime} = 'Cr�ation du ';
    $Self->{Created} = 'Cr�� ';
    $Self->{View} = 'Vue';
    $Self->{plain} = 'tel quel';
    $Self->{Plain} = 'Tel quel';
    $Self->{Action} = 'Action';
    $Self->{Attachment} = 'Pi�ce jointe';
    $Self->{User} = 'Utilisateur';
    $Self->{Back} = 'retour';
    $Self->{store} = 'stocker';
    $Self->{phone} = 't�l�phone';
    $Self->{Phone} = 'T�l�phone';
    $Self->{email} = 'courriel';
    $Self->{Email} = 'Courriel';
    $Self->{'Language'} = 'Langue';
    $Self->{'Languages'} = 'Langues';
    $Self->{'Salutation'} = 'Salutation';
    $Self->{'Signature'} = 'Signature';
    $Self->{currently} = 'actuellement';
    $Self->{Customer} = 'Client';
    $Self->{'Customer info'} = 'Information client';
    $Self->{'Set customer id of a ticket'} = 'D�finir le num�ro de client d\'un ticket';
    $Self->{'All tickets of this customer'} = 'Tous les tickets de ce client';
    $Self->{'New CustomerID'} = 'Nouveau num�ro de client';
    $Self->{'for ticket'} = 'pour le ticket';
    $Self->{'new ticket'} = 'nouveau ticket';
    $Self->{'New Ticket'} = 'nouveau ticket';
    $Self->{'Start work'} = 'D�but de travail';
    $Self->{'Stop work'} = 'Arr�t de travail';
    $Self->{'CustomerID'} = 'Num�ro de client#';
    $Self->{'Compose Answer'} = 'Composer une r�ponse';
    $Self->{'Contact customer'} = 'Contacter le client';
    $Self->{'Change queue'} = 'Changer de file';
    $Self->{'go!'} = 'c\'est parti&nbsp;!';
    $Self->{'all'} = 'tout';
    $Self->{'All'} = 'Tout';
    $Self->{'Sorry'} = 'D�sol�';
    $Self->{'No'} = 'Non';
    $Self->{'no'} = 'aucun';
    $Self->{'Yes'} = 'Oui';
    $Self->{'yes'} = 'oui';
    $Self->{'Off'} = '�teint';
    $Self->{'off'} = '�teint';
    $Self->{'On'} = 'Allum�';
    $Self->{'on'} = 'allum�';
    $Self->{'update!'} = 'actualiser&nbsp;!';
    $Self->{'submit!'} = 'soumettre&nbsp;!';
    $Self->{'change!'} = 'modifier&nbsp;!';
    $Self->{'change'} = 'modifier';
    $Self->{'Change'} = 'Modifier';
    $Self->{'settings'} = 'param�tres';
    $Self->{'Settings'} = 'Param�tres';
    $Self->{'Comment'} = 'Commentaire';
    $Self->{'Valid'} = 'Valide';
    $Self->{'Forward'} = 'Transmettre';
    $Self->{'Name'} = 'Nom';
    $Self->{'Group'} = 'Groupe';
    $Self->{'Response'} = 'R�ponse';
    $Self->{'Preferences'} = 'Pr�f�rences';
    $Self->{'Description'} = 'Description';
    $Self->{'description'} = 'description';
    $Self->{'Key'} = 'Clef';
    $Self->{'top'} = 'haut';
    $Self->{'Line'} = 'Ligne';
    $Self->{'Subfunction'} = 'sous-fonction';
    $Self->{'Module'} = 'Module';
    $Self->{'Modulefile'} = 'Fichier de module';
    $Self->{'No Permission'} = 'Pas d\'autorisation';
    $Self->{'You have to be in the admin group!'} = 'Il est n�cessaire d\'�tre dans le groupe d\'administration&nbsp;!';
    $Self->{'You have to be in the stats group!'} = 'Il est n�cessaire d\'�tre dans le groupe des statistiques&nbsp;!';
    $Self->{'Message'} = 'Message';
    $Self->{'Error'} = 'Erreur';
    $Self->{'Bug Report'} = 'Rapport d\'anomalie';
    $Self->{'Click here to report a bug!'} = 'Cliquer ici pour signaler une anomalie';
    $Self->{'This is a HTML email. Click here to show it.'} = 'Ceci est un message au format HTML&nbsp;; cliquer ici pour l\'afficher.';
    $Self->{'AgentFrontend'} = 'Frontal d\'agent';
    $Self->{'Attention'} = 'Attention';
    $Self->{'Time till escalation'} = 'Dur�e avant escalade';
    $Self->{'Groups'} = 'Groupes';
    $Self->{'User'} = 'Utilisateur';
    $Self->{'none!'} = 'aucun&nbsp;!';
    $Self->{'none'} = 'aucun';
    $Self->{'none - answered'} = 'aucun - r�pondu';
    $Self->{'German'} = 'Allemand';
    $Self->{'English'} = 'Anglais';
    $Self->{'French'} = 'Fran�ais';
    $Self->{'French'} = 'Fran�ais';
    $Self->{'Chinese'} = 'Chinois';
    $Self->{'Czech'} = 'Tch�que';
    $Self->{'Danish'} = 'Danois';
    $Self->{'Spanish'} = 'Espagnol';
    $Self->{'Greek'} = 'Grec';
    $Self->{'Italian'} = 'Italien';
    $Self->{'Korean'} = 'Kor�en';
    $Self->{'Dutch'} = 'Hollandais';
    $Self->{'Polish'} = 'Polonais';
    $Self->{'Brazilian'} = 'Br�silien';
    $Self->{'Russian'} = 'Russe';
    $Self->{'Swedish'} = 'Su�dois';
    $Self->{'Lite'} = 'All�g�';
    # --
    # admin interface
    # --
    # common adminwords
    $Self->{'Useable options'} = 'Options accessibles';
    $Self->{'Example'} = 'Exemple';
    $Self->{'Examples'} = 'Exemples';
    # nav bar
    $Self->{'Admin Area'} = 'Zone d\'administration';
    $Self->{'Auto Responses'} = 'R�ponses automatiques'; 
    $Self->{'Responses'} = 'R�ponses';
    $Self->{'Responses <-> Queue'} = 'R�ponses <-> Files';
    $Self->{'Queue <-> Auto Response'} = 'Files <-> R�ponses automatiques';
    $Self->{'Session Management'} = 'Administration des sessions';
    $Self->{'Email Addresses'} = 'Adresses courriel';
    # user
    $Self->{'User Management'} = 'Administration des utilisateurs';
    $Self->{'Change user settings'} = 'Modification des param�tres utilisateurs';
    $Self->{'Add user'} = 'Ajouter un utilisateur';
    $Self->{'Update user'} = 'Actualiser un utilisateur';
    $Self->{'Firstname'} = 'Pr�nom';
    $Self->{'Lastname'} = 'Nom';
    $Self->{'(Click here to add a user)'} = '(cliquer ici pour ajouter un utilisateur)';
    $Self->{'User will be needed to handle tickets.'} = 'Un utilisateur sera n�cessaire pour g�rer les tickets.';
    $Self->{'Don\'t forget to add a new user to groups!'} = 'Ne pas oublier d\'ajouter un nouvel utilisateur aux groupes&nbsp;!';
    # group
    $Self->{'Group Management'} = 'Administration des groupes';
    $Self->{'Change group settings'} = 'Changer les param�tres d\'un groupe';
    $Self->{'Add group'} = 'Ajouter un groupe';
    $Self->{'Update group'} = 'Actualiser un groupe';
    $Self->{'(Click here to add a group)'} = '(cliquer ici pour ajouter un groupe)';
    $Self->{'The admin group is to get in the admin area and the stats group to get stats area.'} =
     'Le groupe admin permet d\'acc�der � la zone d\'administration et le groupe stats � la zone de statistiques.';
    $Self->{'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).'} =
     'De nouveaux groupes permettront de g�rer les droits d\'acc�s pour les diff�rents groupes d\'un agent (exemple&nbsp;: achats, comptabilit�, support, ventes...).';
    $Self->{'It\'s useful for ASP solutions.'} = 'C\'est utile pour les fournisseurs d\'applications.';
    # user <-> group
    $Self->{'User <-> Group Management'} = 'Gestion utilisateurs <-> groupes';
    $Self->{'Change user <-> group settings'} = 'Modifier les param�tres utilisateurs <-> groupes';
    # queue
    $Self->{'Queue Management'} = 'Gestion des files';
    $Self->{'Add queue'} = 'Ajouter une file';
    $Self->{'Change queue settings'} = 'Modifier les param�tres des files';
    $Self->{'Update queue'} = 'Actualiser une file';
    $Self->{'(Click here to add a queue)'} = '(cliquer ici pour ajouter une file)';
    $Self->{'Unlock timeout'} = 'D�verrouiller la temporisation';
    $Self->{'Escalation time'} = 'D�lai d\'escalade';
    # Response
    $Self->{'Response Management'} = 'Gestion des r�ponses';
    $Self->{'Add response'} = 'Ajouter une r�ponse';
    $Self->{'Change response settings'} = 'Modifier les param�tres des r�ponses';
    $Self->{'Update response'} = 'Actualiser une r�ponse';
    $Self->{'(Click here to add a response)'} = '(cliquer ici pour ajouter une r�ponse)'; 
    $Self->{'A response is default text to write faster answer (with default text) to customers.'} =
     'Une r�ponse est un texte par d�faut destin� � r�diger plus rapidement des r�ponses standard aux clients.';
    $Self->{'Don\'t forget to add a new response a queue!'} = 'Ne pas oublier d\'ajouter une file � une nouvelle r�ponse&nbsp;!';
    # Responses <-> Queue
    $Self->{'Std. Responses <-> Queue Management'} = 'Gestion des r�ponses standard <-> files';
    $Self->{'Standart Responses'} = 'R�ponses standard';
    $Self->{'Change answer <-> queue settings'} = 'Modifier les param�tres de r�ponses <-> files';
    # auto responses
    $Self->{'Auto Response Management'} = 'Gestion des r�ponses automatiques';
    $Self->{'Change auto response settings'} = 'Modifier les param�tres de r�ponses automatiques';
    $Self->{'Add auto response'} = 'Ajouter une r�ponse automatique';
    $Self->{'Update auto response'} = 'Actualiser une r�ponse automatique';
    $Self->{'(Click here to add an auto response)'} = '(cliquer ici pour ajouter une r�ponse automatique)';
    # salutation
    $Self->{'Salutation Management'} = 'Gestion des salutations';
    $Self->{'Add salutation'} = 'Ajouter une salutation';
    $Self->{'Update salutation'} = 'Actualiser une salutation';
    $Self->{'Change salutation settings'} = 'Modification des param�tres de salutations';
    $Self->{'(Click here to add a salutation)'} = '(cliquer ici pour ajouter une salutation)';
    $Self->{'customer realname'} = 'nom r�el du client';
    # signature
    $Self->{'Signature Management'} = 'Gestion des signatures';
    $Self->{'Add signature'} = 'Ajouter une signature';
    $Self->{'Update signature'} = 'Actualiser une signature';
    $Self->{'Change signature settings'} = 'Modification des param�tres de signatures';
    $Self->{'(Click here to add a signature)'} = '(cliquer ici pour ajouter une signature)';
    $Self->{'for agent firstname'} = 'pour le pr�nom de l\'agent';
    $Self->{'for agent lastname'} = 'pour le nom de l\'agent';
    # queue <-> auto response
    $Self->{'Queue <-> Auto Response Management'} = 'Gestion des files <-> r�ponses automatiques';
    $Self->{'auto responses set'} = 'R�ponse automatique positionn�e';
    # system email addesses
    $Self->{'System Email Addresses Management'} = 'Gestion des adresses courriel du syst�me';
    $Self->{'Change system address setting'} = 'Modification des param�tres des adresses courriel du syst�me';
    $Self->{'Add system address'} = 'Ajouter une adresse courriel du syst�me';
    $Self->{'Update system address'} = 'Actualiser les adresses courriel du syst�me';
    $Self->{'(Click here to add a system email address)'} = '(cliquer ici pour ajouter une adresse courriel du syst�me)';
    $Self->{'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!'} = 'Tous les courriels avec cette adresse en destinataire (�&nbsp;:) seront plac�s dans la file choisie..';
    # charsets
    $Self->{'System Charset Management'} = 'Gestion du jeu de caract�res syst�me';
    $Self->{'Change system charset setting'} = 'Modification des param�tres du jeu de caract�res syst�me';
    $Self->{'Add charset'} = 'Ajouter un jeu de caract�res syst�me';
    $Self->{'Update charset'} = 'Actualiser un jeu de caract�res syst�me';
    $Self->{'(Click here to add charset)'} = '(cliquer ici pour ajouter un jeu de caract�res syst�me';
    # states
    $Self->{'System State Management'} = 'Gestion des �tats du syst�me';
    $Self->{'Change system state setting'} = 'Modification des param�tres d\'�tats du syst�me';
    $Self->{'Add state'} = 'Ajouter un �tat';
    $Self->{'Update state'} = 'Actualiser un �tat';
    $Self->{'(Click here to add state)'} = '(cliquer ici pour ajouter un �tat)';
    # language
    $Self->{'System Language Management'} = 'Gestion des langues du syst�me';
    $Self->{'Change system language setting'} = 'Modification des parm�tres de langue du syst�me';
    $Self->{'Add language'} = 'Ajouter une langue';
    $Self->{'Update language'} = 'Actualiser une langue';
    $Self->{'(Click here to add language)'} = '(cliquer ici pour ajouter une langue)';
    # session
    $Self->{'Session Management'} = 'Gestion des sessions';
    $Self->{'kill all sessions'} = 'Terminer toutes les sessions';
    $Self->{'kill session'} = 'Terminer une session';
    # select box
    $Self->{'Max Rows'} = 'Nombre de lignes maximal';

    # --
    # agent interface
    # --
    # nav bar
    $Self->{Logout} = 'D�connexion';
    $Self->{QueueView} = 'Vue file';
    $Self->{PhoneView} = 'Vue t�l�phone';
    $Self->{Utilities} = 'Utilitaires';
    $Self->{AdminArea} = 'Zone d\'administration';
    $Self->{Preferences} = 'Pr�f�rences';
    $Self->{'Locked tickets'} = 'Tickets verrouill�s';
    $Self->{'new message'} = 'Nouveau message';
    # ticket history
    $Self->{'History of Ticket'} = 'Historique du ticket';
    # ticket note
    $Self->{'Add note to ticket'} = 'Ajouter une note au ticket';
    $Self->{'Note type'} = 'Type de note';
    # queue view
    $Self->{'Tickets shown'} = 'Tickets affich�s';
    $Self->{'Ticket available'} = 'Tickets disponibles';
    $Self->{'Show all'} = 'Tout montrer';
    $Self->{'tickets'} = 'Tickets';
    $Self->{'All tickets'} = 'tous les tickets';
    $Self->{'Ticket escalation!'} = 'Escalade du ticket';
    $Self->{'Please answer this ticket(s) to get back to the normal queue view!'} = 
     'Il faut r�pondre � ce(s) ticket(s) pour revenir � la vue normale de la file.';
    # locked tickets
    $Self->{'All locked Tickets'} = 'Tous les tickets verrouill�s';
    $Self->{'New message'} = 'Nouveau message';
    $Self->{'New message!'} = 'Nouveau message&nbsp;!';
    # util
    $Self->{'Hit'} = 'Hit';
    $Self->{'Total hits'} = 'Total des hits';
    $Self->{'Search again'} = 'Chercher � nouveau';
    $Self->{'max viewable hits'} = 'nombre de hits affichables';
    $Self->{'Utilities/Search'} = 'Utilitaires/recherche';
    $Self->{'Ticket# search (e. g. 10*5155 or 105658*)'} = 'Recherche par num�ro de ticket (exemple&nbsp;: 10*5155 ou 105658*)';
    $Self->{'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")'} = 'Recherche en texte int�gral (exemple&nbsp;: "Mar*in" ou "Constru*" ou "martin+bonjour")';
    # compose
    $Self->{'Compose message'} = 'Composer un message';
    $Self->{'please do not edit!'} = 'Ne pas modifier&nbsp;!';
    $Self->{'Send mail!'} = 'Envoyer le courriel&nbsp;!';
    $Self->{'wrote'} = '�crit';
    $Self->{'Compose answer for ticket'} = 'Composer une r�ponse pour le ticket';
    $Self->{'Ticket locked!'} = 'Ticket verrouill�&nbsp;!';
    $Self->{'A message should have a To: recipient!'} = 'Un message doit avoir un destinataire (�&nbsp;:)!';
    $Self->{'A message should have a subject!'} = 'Un message doit avoir un sujet&nbsp;!';
    $Self->{'You need a email address (e. g. customer@example.com) in To:!'} = 'Il faut une adresse courriel (ecemple&nbsp;: client@exemple.fr)&nbsp;!';
    # forward
    $Self->{'Forward article of ticket'} = 'Transmettre l\'article du ticket';
    $Self->{'Article type'} = 'Type d\'article';
    $Self->{'Next ticket state'} = 'Prochain �tat du ticket';

    # preferences
    $Self->{'User Preferences'} = 'Pr�f�rences utilisateur';
    $Self->{'Change Password'} = 'Modification du mot de passe';
    $Self->{'New password'} = 'Nouveau mot de passe';
    $Self->{'New password again'} = 'Nouveau mot de passe (confirmation)';
    $Self->{'Select your custom queues'} = 'Choix des files personnelles';
    $Self->{'Select your QueueView refresh time.'} = 'Choix du d�lai de rafra�chissement de la vue des files';
    $Self->{'Select your frontend language.'} = 'Choix de la langue du frontal';
    $Self->{'Frontend Charset'} = 'Caract�res du frontal';
    $Self->{'Select your frontend Charset.'} = 'Choix du jeu de caract�res du frontal';
    $Self->{'Frontend Theme'} = 'Th�me du frontal';
    $Self->{'Select your frontend Theme.'} = 'Choix du th�me du frontal';
    $Self->{'Send follow up notification'} = 'Envoyer une notification de suivi (follow-up)';
    $Self->{'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.'} = 'Me pr�venir si un client envoie un suivi (follow-up) et que je suis le propri�taire du ticket.';
    $Self->{'Send new ticket notification'} = 'Envoyer une notification de nouveau ticket';
    $Self->{'Send me a notification if there is a new ticket in my custom queues.'} = 'Me pr�venir si un nouveau ticket appara�t dans mes files personnelles.';
  
    $Self->{'Frontend Language'} = 'Langue du frontal';
    $Self->{' 2 minutes'} = ' 2 minutes';
    $Self->{' 5 minutes'} = ' 5 minutes';
    $Self->{' 7 minutes'} = ' 7 minutes';
    $Self->{'10 minutes'} = '10 minutes';
    $Self->{'15 minutes'} = '15 minutes';
    # change priority
    $Self->{'Change priority of ticket'} = 'Modification de la priorit� du ticket';
    # some other words ...
    $Self->{AddLink} = 'Ajouter un lien';
#    $Self->{} = '';
#    $Self->{} = '';
#    $Self->{} = '';

    # stats
    $Self->{'Stats'} = 'Statistiques';
    $Self->{'Status'} = '�tat';
    $Self->{'Graph'} = 'Graphique';
    $Self->{'Graphs'} = 'Graphiques';

    # phone view
    $Self->{'Phone call'} = 'Appel t�l�phonique';
    $Self->{'Phone call at'} = 'Appel t�l�phonique �';

    # states
    $Self->{'new'} = 'nouveau';
    $Self->{'open'} = 'ouvrir';
    $Self->{'closed succsessful'} = 'cl�ture r�ussie';
    $Self->{'closed unsuccsessful'} = 'cl�ture manqu�e';
    $Self->{'removed'} = 'supprim�';
    # article types
    $Self->{'email-external'} = 'message externe';
    $Self->{'email-internal'} = 'message interne';
    $Self->{'note-internal'} = 'Note interne';
    $Self->{'note-external'} = 'Note externe';
    $Self->{'note-report'} = 'Note rapport';

    # priority
    $Self->{'very low'} = 'confort intellectuel';
    $Self->{'low'} = 'confort de fonctionnement';
    $Self->{'normal'} = 'bloque une fonction';
    $Self->{'high'} = 'bloque tout un poste';
    $Self->{'very high'} = 'bloque un service entier';

    return;
}
# --

1;

