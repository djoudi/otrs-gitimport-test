# --
# Kernel/Language/French.pm - provides french language translations
# Copyright (C) 2002 Martin Scherbaum <maddin@exsuse.de>
# --
# $Id: French.pm,v 1.2 2002-07-18 23:30:58 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::French;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.2 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # some common words
    $Self->{Lock} = 'Tirer';
    $Self->{Unlock} = 'Rendre';
    $Self->{unlock} = 'rendre';
    $Self->{Zoom} = 'Contenu';
    $Self->{History} = 'Histoire';
    $Self->{'Add Note'} = 'Ajouter commentaire';
    $Self->{Bounce} = 'Bounce';
    $Self->{Age} = 'Age';
    $Self->{Priority} = 'Priorit�';
    $Self->{State} = 'Status';
    $Self->{From} = 'De';
    $Self->{To} = 'Pour';
    $Self->{Cc} = 'Cc';
    $Self->{Subject} = 'Sujet';
    $Self->{Move} = 'Mouvoir';
    $Self->{Queues} = 'Queues';
    $Self->{Close} = 'Fermer';
    $Self->{Compose} = 'Creer';
    $Self->{Pending} = 'Attendre';
    $Self->{end} = 'Fin';
    $Self->{top} = 'D�but';
    $Self->{day} = 'jour';
    $Self->{days} = 'jours';
    $Self->{hour} = 'heure';
    $Self->{hours} = 'heures';
    $Self->{minute} = 'minute';
    $Self->{minutes} = 'minutes';
    $Self->{Owner} = 'Propri�taire';
    $Self->{Sender} = 'Envoyeur';
    $Self->{Article} = 'Article';
    $Self->{Ticket} = 'Ticket';
    $Self->{Createtime} = 'Cr�� le';
    $Self->{Created} = 'Cr��';
    $Self->{View} = 'Vue';
    $Self->{Action} = 'Action';
    $Self->{User} = 'Utilisateur';
    $Self->{Back} = 'retourner';
    $Self->{store} = 'sauvegarder';
    $Self->{currently} = 'courrant';
    $Self->{Customer} = 'Client';
    $Self->{'Customer info'} = 'Info client';
    $Self->{'Set customer id of a ticket'} = 'Assigner ID client pour un ticket';
    $Self->{'All tickets of this customer'} = 'Tous tickets de ce client';
    $Self->{'New CustomerID'} = 'ID client nouveau';
    $Self->{'for ticket'} = 'pour ticket';
    $Self->{'Start work'} = 'D�but de travail';
    $Self->{'Stop work'} = 'Fin de travail';
    $Self->{'CustomerID'} = 'ID client';
    $Self->{'Compose Answer'} = 'Composer une r�ponse';
    $Self->{'Change queue'} = 'Changer de queue';
    $Self->{'go!'} = 'allez!';
    $Self->{'update!'} = 'actualiser!';
    $Self->{'submit!'} = 'envoyer!';
    $Self->{'change!'} = 'changer!';
    $Self->{'change'} = 'changer';
    $Self->{'Comment'} = 'Commentaire';
    $Self->{'Valid'} = 'Valid';
    $Self->{'Forward'} = 'Rediriger';
    $Self->{'Name'} = 'Nom';
    $Self->{'Group'} = 'Equipe';
    $Self->{'Response'} = 'R�ponse';
    $Self->{'none!'} = 'aucun!';
    $Self->{'German'} = 'Allemand';
    $Self->{'English'} = 'Anglais';
    $Self->{'French'} = 'Fran�ais';
    $Self->{'Lite'} = 'Simple';
    # admin area
    $Self->{'Firstname'} = 'Pr�nom';
    $Self->{'Lastname'} = 'Nom';
    $Self->{'Add User'} = 'Ajouter utilisateur';
    $Self->{'Languages'} = 'Langues';
    $Self->{'Language'} = 'Langue';
    $Self->{'Salutation'} = 'Salutation';
    $Self->{'Signature'} = 'Signature';
    $Self->{'Standart Responses'} = 'R�ponse standard';
    $Self->{'System Addresses'} = 'Adresses du syst�me';
    $Self->{'Admin Area'} = 'Administration';
    $Self->{'Preferences'} = 'Pr�f�rences';
    $Self->{'top'} = 'haut';
    $Self->{'AgentFrontend'} = 'SurfaceAgent';
    $Self->{'Groups'} = 'Equipes';
    $Self->{'User'} = 'Utilisateur';
    $Self->{'User <-> Groups'} = 'Utilisateur <-> Equipes';
    $Self->{'Std. Responses <-> Queue'} = 'R�ponses standards <-> Queue';
    $Self->{'Add Group'} = 'Ajouter �quipe';
    $Self->{'Change Group settings'} = 'Modifier �quipe';
    $Self->{'Add Queue'} = 'Ajouter queue';
    $Self->{'Systemaddress'} = 'Adresse du syst�me';
    $Self->{'Change Queue settings'} = 'Modifier une queue';
    $Self->{'Add Response'} = 'Ajouter une r�ponse';
    $Self->{'Change Response settings'} = 'Modifier une r�ponse';
    $Self->{'Add Salutation'} = 'Ajouter une adresse';
    $Self->{'Change Salutation settings'} = 'Modifier une adresse';
    # nav bar
    $Self->{Logout} = 'Quitter';
    $Self->{QueueView} = 'Vue queue';
    $Self->{PhoneView} = 'Vue t�l�phone';
    $Self->{Utilities} = 'Utilitaire';
    $Self->{AdminArea} = 'Administration';
    $Self->{Preferences} = 'Pr�f�rences';
    $Self->{'Locked tickets'} = 'Mes tickets';
    $Self->{'new message'} = 'Message nouveau';
    # ticket history
    $Self->{'History of Ticket'} = 'Histoire de ticket';
    # ticket note
    $Self->{'Add note to ticket'} = 'Ajouter un commentaire au ticket';
    $Self->{'Note type'} = 'type de commentaire';
    # queue view
    $Self->{'Tickets shown'} = 'Tickets montr�s';
    $Self->{'Ticket available'} = 'Ticket disponibles';
    $Self->{'Show all'} = 'Tous montr�s';
    $Self->{'tickets'} = 'Tickets';
    $Self->{'All tickets'} = 'Tous tickets';
    # locked tickets
    $Self->{'All locked Tickets'} = 'Mes tickets';
    $Self->{'New message'} = 'Message nouveau';
    $Self->{'New message!'} = 'Message nouveau!';
    # util
    $Self->{'Hit'} = 'Resultat';
    $Self->{'Total hits'} = 'Resultat totale';
    $Self->{'Search again'} = 'Recherche';
    $Self->{'max viewable hits'} = 'max. resultats visibles';
    $Self->{'Utilities/Search'} = 'Utilitaires/recherche';
    $Self->{'Ticket# search (e. g. 10*5155 or 105658*)'} = 'Ticket# Suche (z. B. 10*5155 or 105658*)';
    $Self->{'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")'} = 'Volltextsuche (z. B. "Mar*in" ode "Baue*" oder "martin+hallo")';
    # compose
    $Self->{'Compose message'} = 'Composer un message';
    $Self->{'please do not edit!'} = 'Ne pas modifier!';
    $Self->{'Send mail!'} = 'Envoyer message!';
    $Self->{'wrote'} = '�crit';
    $Self->{'Compose answer for ticket'} = 'Composer r�ponse pour';
    $Self->{'Ticket locked!'} = 'Ticket bloqu�!';
    # forward
    $Self->{'Forward article of ticket'} = 'Acheminer l\'article du ticket';
    $Self->{'Article type'} = 'Type d\'article';
    $Self->{'Next ticket state'} = 'Status prochain du ticket';

    # preferences
    $Self->{'User Preferences'} = 'Pr�f�rences utilisateur';
    $Self->{'Change Password'} = 'Changer mot de pass';
    $Self->{'New password'} = 'Mot de pass nouveau';
    $Self->{'New password again'} = 'R�p�ter nouveau mot de pass';
    $Self->{'Select your custom queues'} = 'Selection de queues pr�f�r�es';
    $Self->{'Select your frontend language'} = 'Selection de la langue du surface';
    $Self->{'Select your frontend Charset'} = 'Selection de police de charact�re';
    $Self->{'Select your frontend theme'} = 'Selection du schema de visualisation';
    $Self->{'Frontend language'} = 'Selection de la langue du surface';
    # change priority
    $Self->{'Change priority of ticket'} = 'Changer la priorit� de ticket';
    # some other words ...
    $Self->{AddLink} = 'Ajouter lien';
#    $Self->{} = '';
#    $Self->{} = '';
#    $Self->{} = '';

    # states
    $Self->{'new'} = 'nouveau';
    $Self->{'open'} = 'ouvert';
    $Self->{'closed succsessful'} = 'ferm� avec succ�s';
    $Self->{'closed unsuccsessful'} = 'ferm� avec succ�s';
    $Self->{'removed'} = 'effac�';
    # article types
    $Self->{'email-external'} = 'Message � externe';
    $Self->{'email-internal'} = 'Message � interne';
    $Self->{'note-internal'} = 'Commentaire pour interne';
    $Self->{'note-external'} = 'Commentaire pour externe';
    $Self->{'note-report'} = 'Commentaire pour reports';

#    $Self->{''} = '';
#    $Self->{''} = '';

    # priority
    $Self->{'very low'} = 'tr�s bas';
    $Self->{'low'} = 'bas';
    $Self->{'normal'} = 'normale';
    $Self->{'high'} = 'haut';
    $Self->{'very high'} = 'tr�s haut';

    return;
}
# --

1;

