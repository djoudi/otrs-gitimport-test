# --
# Kernel/Language/Bulgarian.pm - provides Bulgarian languag translation
# Copyright (C) 2001-2002 Martin Edenhofe <martin+code@otrs.org>
# Translation made by: Vladimir Gerdjikov <gerdjikov@gerdjikovs.net>
# --
# $Id: Bulgarian.pm,v 1.1 2002-11-14 13:46:19 stefan Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::Bulgarian;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.1 $';
$VERSION =~ s/^.*:\s(\d+\.\d+)\s.*$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # --
    # some common words
    # --
    $Self->{Lock} = '�������';
    $Self->{Unlock} = '�������';
    $Self->{unlock} = '�������';
    $Self->{Zoom} = '��������';
    $Self->{History} = '�������';
    $Self->{'Add Note'} = '�������� �� �������';
    $Self->{Bounce} = '����������';
    $Self->{Age} = '�������';
    $Self->{Priority} = '���������';
    $Self->{State} = '������';
    $Self->{From} = '��';
    $Self->{To} = '��';
    $Self->{Cc} = '����� ��';
    $Self->{Subject} = '�������';
    $Self->{Move} = '�����������';
    $Self->{Queues} = '������';
    $Self->{Close} = '���������';
    $Self->{Compose} = '���������';
    $Self->{Pending} = '� ��������';
    $Self->{end} = '����';
    $Self->{top} = '��� ��������';
    $Self->{day} = '���';
    $Self->{days} = '���';
    $Self->{hour} = '���';
    $Self->{hours} = '������';
    $Self->{minute} = '������';
    $Self->{minutes} = '������';
    $Self->{Owner} = '����������';
    $Self->{Sender} = '��������';
    $Self->{Article} = '������';
    $Self->{Ticket} = '�����';
    $Self->{Createtime} = '����� �� ���������';
    $Self->{Created} = '��������';
    $Self->{View} = '������';
    $Self->{plain} = '���������';
    $Self->{Plain} = '���������';
    $Self->{Action} = '��������';
    $Self->{Attachment} = '�������� ����';
    $Self->{User} = '����������';
    $Self->{Username} = '������������� ���';
    $Self->{Password} = '������';
    $Self->{Back} = '�����';
    $Self->{store} = '����������';
    $Self->{phone} = '�������';
    $Self->{Phone} = '�������';
    $Self->{email} = '�����';
    $Self->{Email} = '�����';
    $Self->{'Language'} = '����';
    $Self->{'Languages'} = '�����';
    $Self->{'Salutation'} = '���������';
    $Self->{'Signature'} = '������';
    $Self->{currently} = '�����������';
    $Self->{Customer} = '����������';
    $Self->{'Customer info'} = '������������� �����';
    $Self->{'Set customer id of a ticket'} = '�������� �� ������������� ��������� �� ������';
    $Self->{'All tickets of this customer'} = '������ ������ �� ����� ����������';
    $Self->{'New CustomerID'} = '��� ������������� ���������';
    $Self->{'for ticket'} = '�� �����';
    $Self->{'new ticket'} = '��� �����';
    $Self->{'New Ticket'} = '��� �����';
    $Self->{'Start work'} = '������ �� ��������';
    $Self->{'Stop work'} = '���� �� ��������';
    $Self->{'CustomerID'} = '������������� ���������';
    $Self->{'Compose Answer'} = '��������� �� �������';
    $Self->{'Contact customer'} = '������� � �������';
    $Self->{'Change queue'} = '������� �� ��������';
    $Self->{'go!'} = '��!';
    $Self->{'go'} = '��';
    $Self->{'all'} = '������';
    $Self->{'All'} = '������';
    $Self->{'Sorry'} = '����������';
    $Self->{'No'} = '��';
    $Self->{'no'} = '��';
    $Self->{'Yes'} = '��';
    $Self->{'yes'} = '��';
    $Self->{'Off'} = '���������';
    $Self->{'off'} = '���������';
    $Self->{'On'} = '��������';
    $Self->{'on'} = '��������';
    $Self->{'update!'} = '����������!';
    $Self->{'update'} = '����������';
    $Self->{'submit!'} = '���������!';
    $Self->{'change!'} = '���������!';
    $Self->{'change'} = '���������';
    $Self->{'Change'} = '�������';
    $Self->{'click here'} = '��������� ���';
    $Self->{'settings'} = '���������';
    $Self->{'Settings'} = '���������';
    $Self->{'Comment'} = '��������';
    $Self->{'Valid'} = '�������';
    $Self->{'Forward'} = '����������';
    $Self->{'Name'} = '���';
    $Self->{'Group'} = '�����';
    $Self->{'Response'} = '�������';
    $Self->{'Preferences'} = '�������������';
    $Self->{'Description'} = '��������';
    $Self->{'description'} = '��������';
    $Self->{'Key'} = '����';
    $Self->{'top'} = '��� ��������';
    $Self->{'Line'} = '�����';
    $Self->{'Subfunction'} = '����������';
    $Self->{'Module'} = '�����';
    $Self->{'Modulefile'} = '����-�����';
    $Self->{'No Permission'} = '������ ����������';
    $Self->{'You have to be in the admin group!'} = '������ �� ��� ���� �� admin �������!';
    $Self->{'You have to be in the stats group!'} = '������ �� ��� ���� �� stat �������!';
    $Self->{'Message'} = '���������';
    $Self->{'Error'} = '������';
    $Self->{'Bug Report'} = '����� �� ������';
    $Self->{'Click here to report a bug!'} = '��������� ���, �� �� ��������� ����� �� ��������!';
    $Self->{'This is a HTML email. Click here to show it.'} = '���� � ���� � HTML ������. ��������� ���, �� �� �� �������� ��������';
    $Self->{'AgentFrontend'} = '����-����������';
    $Self->{'Attention'} = '��������';
    $Self->{'Time till escalation'} = '����� �� ���������';
    $Self->{'Groups'} = '�����';
    $Self->{'User'} = '����������';
    $Self->{'none!'} = '����!';
    $Self->{'none'} = '����';
    $Self->{'none - answered'} = '���� - ���������';
    $Self->{'German'} = '���������';
    $Self->{'English'} = '���������';
    $Self->{'French'} = '�������';
    $Self->{'French'} = '�������';
    $Self->{'Chinese'} = '��������';
    $Self->{'Czech'} = '������';
    $Self->{'Danish'} = '������';
    $Self->{'Spanish'} = '��������';
    $Self->{'Greek'} = '������';
    $Self->{'Italian'} = '����������';
    $Self->{'Korean'} = '��������';
    $Self->{'Dutch'} = '���������';
    $Self->{'Polish'} = '������';
    $Self->{'Brazilian'} = '���������';
    $Self->{'Russian'} = '�����';
    $Self->{'Swedish'} = '�������';
    $Self->{'Lite'} = '���������';
    $Self->{'This message was written in a character set other than your own.'} = 
     '���� ����� � �������� � �������� �������� �������� �� ����, ����� �����.';
    $Self->{'If it is not displayed correctly,'} = '��� �� �� ����� ��������,';
    $Self->{'This is a'} = '���� �';
    $Self->{'to open it in a new window.'} = '�� �� �������� � ��� ��������';
    # --
    # admin interface
    # --
    # common adminwords
    $Self->{'Useable options'} = '����������� �����';
    $Self->{'Example'} = '������';
    $Self->{'Examples'} = '�������';
    # nav bar
    $Self->{'Admin Area'} = '����-�������������';
    $Self->{'Auto Responses'} = '����������� �������'; 
    $Self->{'Responses'} = '��������';
    $Self->{'Responses <-> Queue'} = '�������� <-> ������';
    $Self->{'User <-> Groups'} = '���������� <-> �����';
    $Self->{'Queue <-> Auto Response'} = '������ <-> ����������� �������';
    $Self->{'Auto Response <-> Queue'} = '����������� ������� <-> ������';
    $Self->{'Session Management'} = '���������� �� �����';
    $Self->{'Email Addresses'} = '����� ������';
    # user
    $Self->{'User Management'} = '���������� �� �����������';
    $Self->{'Change user settings'} = '������� �� ��������������� ���������';
    $Self->{'Add user'} = '�������� �� ����������';
    $Self->{'Update user'} = '���������� �� ����������';
    $Self->{'Firstname'} = '���';
    $Self->{'Lastname'} = '�������';
    $Self->{'(Click here to add a user)'} = '(��������� ���, �� �� �������� ��� ����������)';
    $Self->{'User will be needed to handle tickets.'} = '�� � ��������� ����������, �� �� ���� ������� �� �� ��������';
    $Self->{'Don\'t forget to add a new user to groups!'} = '�� ���������� �� �������� ������ ���������� � ������� �����!';
    # group
    $Self->{'Group Management'} = '���������� �� �����';
    $Self->{'Change group settings'} = '������� �� ��������� ���������';
    $Self->{'Add group'} = '�������� �� �����';
    $Self->{'Update group'} = '���������� �� �����';
    $Self->{'(Click here to add a group)'} = '(��������� ���, �� �� �������� ���� �����)';
    $Self->{'The admin group is to get in the admin area and the stats group to get stats area.'} =
     '������� admin �������� admin ������, � stat ������� �������� stat ������';
    $Self->{'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).'} =
     '��������� ���� ����� �� �� ����������� ������������ �� ���������� ����� �� ������ (�������� ����� �� ����� "��������", ����� "���������" � �.�.)';
    $Self->{'It\'s useful for ASP solutions.'} = '���� � ��������� �� ������� � ASP.';
    # user <-> group
    $Self->{'User <-> Group Management'} = '���������� <-> ���������� �� �����';
    $Self->{'Change user <-> group settings'} = '������� �� ���������� <-> ��������� �� �����';
    # queue
    $Self->{'Queue Management'} = '���������� �� ������';
    $Self->{'Add queue'} = '�������� �� ������';
    $Self->{'Change queue settings'} = '������� �� ����������� �� ��������';
    $Self->{'Update queue'} = '���������� �� ������';
    $Self->{'(Click here to add a queue)'} = '(��������� ���, �� �� �������� ���� ������)';
    $Self->{'Unlock timeout'} = '����� �� ����������';
    $Self->{'Escalation time'} = '����� �� ��������� (����������� �� �����������)';
    # Response
    $Self->{'Response Management'} = '���������� �� ���������';
    $Self->{'Add response'} = '�������� �� �������';
    $Self->{'Change response settings'} = '������� �� ���������� �� ���������';
    $Self->{'Update response'} = '���������� �� ���������';
    $Self->{'(Click here to add a response)'} = '(��������� ���, �� �� �������� ��� �������)'; 
    $Self->{'A response is default text to write faster answer (with default text) to customers.'} =
     '��������� � ����� �� ������������, �������� �������������, � ��� ��-���� ������� ��� �������';
    $Self->{'Don\'t forget to add a new response a queue!'} = '�� �� ��������� �� �������� ������ ������� ��� ������ ������!';
    # Responses <-> Queue
    $Self->{'Std. Responses <-> Queue Management'} = '���������� �������� <-> ���������� �� ��������';
    $Self->{'Standart Responses'} = '���������� ��������';
    $Self->{'Change answer <-> queue settings'} = '������� �� ��������� <-> ��������� �� ��������';
    # auto responses
    $Self->{'Auto Response Management'} = '���������� �� ������������� �������';
    $Self->{'Change auto response settings'} = '������� �� ����������� �� ������������� �������';
    $Self->{'Add auto response'} = '�������� �� ����������� �������';
    $Self->{'Update auto response'} = '���������� �� ������������� �������';
    $Self->{'(Click here to add an auto response)'} = '(��������� ���, �� �� �������� ��� ����������� �������)';
    # salutation
    $Self->{'Salutation Management'} = '���������� �� �����������';
    $Self->{'Add salutation'} = '�������� �� ���������';
    $Self->{'Update salutation'} = '���������� �� ���������';
    $Self->{'Change salutation settings'} = '������� �� ����������� �� �����������';
    $Self->{'(Click here to add a salutation)'} = '(��������� ���, �� �� �������� ���� ���������)';
    $Self->{'customer realname'} = '��� �� �����������';
    # signature
    $Self->{'Signature Management'} = '���������� �� ��������';
    $Self->{'Add signature'} = '�������� �� ������';
    $Self->{'Update signature'} = '���������� �� ������';
    $Self->{'Change signature settings'} = '������� �� ����������� �� ��������';
    $Self->{'(Click here to add a signature)'} = '(��������� ���, �� �� �������� ��� ������)';
    $Self->{'for agent firstname'} = '�� ������ - ���';
    $Self->{'for agent lastname'} = '�� ������ - �������';
    # queue <-> auto response
    $Self->{'Queue <-> Auto Response Management'} = '������ <-> ���������� �� ������������� �������';
    $Self->{'auto responses set'} = '����� ����������� ��������';
    # system email addesses
    $Self->{'System Email Addresses Management'} = '���������� �� ��������� ����� �����';
    $Self->{'Change system address setting'} = '������� �� ����������� �� ���������� �����';
    $Self->{'Add system address'} = '�������� �� ��� �������� �����';
    $Self->{'Update system address'} = '���������� �� ���������� �����';
    $Self->{'(Click here to add a system email address)'} = '(��������� ���, �� �� �������� ��� �������� �����)';
    $Self->{'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!'} = '������ ������� ������ �� ���� ����� (��:) �� �� ����������� � ��������� ������';
    # charsets
    $Self->{'System Charset Management'} = '���������� �� ���������� �����';
    $Self->{'Change system charset setting'} = '������� �� ���������� �������� �����';
    $Self->{'Add charset'} = '�������� �� �������� �����';
    $Self->{'Update charset'} = '���������� �� �������� �����';
    $Self->{'(Click here to add charset)'} = '(��������� ���, �� �� �������� ��� �������� �����)';
    # states
    $Self->{'System State Management'} = '���������� �� �������� ���������';
    $Self->{'Change system state setting'} = '������� �� ����������� �� �������� ���������';
    $Self->{'Add state'} = '�������� �� ���������';
    $Self->{'Update state'} = '���������� �� ���������';
    $Self->{'(Click here to add state)'} = '(��������� ���, �� �� �������� ���� �������� ��������� )';
    # language
    $Self->{'System Language Management'} = '���������� �� ��������� ���������';
    $Self->{'Change system language setting'} = '������� �� ����������� �� ���������� ����';
    $Self->{'Add language'} = '�������� �� ����';
    $Self->{'Update language'} = '���������� �� ����';
    $Self->{'(Click here to add language)'} = '(��������� ���, �� �� �������� ��� ����)';
    # session
    $Self->{'Session Management'} = '���������� �� ������';
    $Self->{'kill all sessions'} = '��������� �� ������ ������ �����';
    $Self->{'kill session'} = '��������� �� �������� �����';
    # select box
    $Self->{'Max Rows'} = '���������� ���� ������';

    # --
    # agent interface
    # --
    # nav bar
    $Self->{Logout} = '�����';
    $Self->{QueueView} = '������� �� ��������';
    $Self->{PhoneView} = '������� �� ����������';
    $Self->{Utilities} = '������� ��������';
    $Self->{AdminArea} = '����-�������������';
    $Self->{Preferences} = '�������������';
    $Self->{'Locked tickets'} = '��������� ������';
    $Self->{'new message'} = '���� ���������';
    $Self->{'You got new message!'} = '��� ��������� ���� ���������!';
    # ticket history
    $Self->{'History of Ticket'} = '������� �� ������';
    # ticket note
    $Self->{'Add note to ticket'} = '�������� �� ������� ��� ������';
    $Self->{'Note type'} = '��������� � �� ���';
    # queue view
    $Self->{'Tickets shown'} = '�������� ������';
    $Self->{'Ticket available'} = '������� ������';
    $Self->{'Show all'} = '��������� �� ������';
    $Self->{'tickets'} = '������';
    $Self->{'All tickets'} = '������ ������';
    $Self->{'Ticket escalation!'} = '��������� (����������� �� ����������) �� ������!';
    $Self->{'Please answer this ticket(s) to get back to the normal queue view!'} = 
     '����, ���������� �� ���� �����(�) �� �� �� ������� � ��������� ������ �� ��������!';
    # locked tickets
    $Self->{'All locked Tickets'} = '������ ��������� ������';
    $Self->{'New message'} = '���� ���������';
    $Self->{'New message!'} = '���� ���������!';
    # util
    $Self->{'Hit'} = '���������';
    $Self->{'Total hits'} = '��� ���� ���������';
    $Self->{'search'} = '�������';
    $Self->{'Search again'} = '�������� �������';
    $Self->{'max viewable hits'} = '���������� ���� ���������';
    $Self->{'Utilities/Search'} = '������� �������� / �������';
    $Self->{'search (e. g. 10*5155 or 105658*)'} = '������� (�������� 10*5155 ��� 105658*)';
    $Self->{'Fulltext search (e. g. "Mar*in" or "Baue*" or "martin+hallo")'} = '�������� ������� (�������� "Mar*in" ��� "Baue*" ��� "martin+hallo")';
    $Self->{'Customer history search'} = '������� � ��������� �� �������';
    $Self->{'No * possible!'} = '�� � �������� ���������� �� ������ *!';
    $Self->{'Fulltext search'} = '�������� �������';
    $Self->{'Customer history search (e. g. "ID342425").'} = '������� � ��������� �� ������� (�������� "ID342425").';
    # compose
    $Self->{'Compose message'} = '��������� �� ���������';
    $Self->{'please do not edit!'} = '����, �� ������������!';
    $Self->{'Send mail!'} = '��������� �����!';
    $Self->{'wrote'} = '��������';
    $Self->{'Compose answer for ticket'} = '��������� �� ������� �� ���� �����';
    $Self->{'Ticket locked!'} = '������� � ��������!';
    $Self->{'A message should have a To: recipient!'} = '����������� ������ �� ��� ��: �.�. ��������!';
    $Self->{'A message should have a subject!'} = '����������� ������ �� ��� ����� � ���� "�������"!';
    $Self->{'You need a email address (e. g. customer@example.com) in To:!'} = '������ �� ��� ������� ����� � ������ ��: (�������� support@hebros.bg)!';
    # forward
    $Self->{'Forward article of ticket'} = '�������� �������� �� ���� �����';
    $Self->{'Article type'} = '������ ���';
    $Self->{'Next ticket state'} = '�������� ��������� �� �������';

    # preferences
    $Self->{'User Preferences'} = '������������� �������������';
    $Self->{'Change Password'} = '������� �� ������';
    $Self->{'New password'} = '���� ������';
    $Self->{'New password again'} = '�������� ������ ��������';
    $Self->{'Select your custom queues'} = '�������� ������ ������������� ������';
    $Self->{'Select your QueueView refresh time.'} = '�������� ������ ����� �� ���������� �� ������� �� ��������.';
    $Self->{'Select your frontend language.'} = '�������� ������ ����.';
    $Self->{'Select your frontend Charset.'} = '�������� ������ �������� �����.';
    $Self->{'Select your frontend Theme.'} = 'Anzeigeschema auswдhlen.';
    $Self->{'Follow up notification'} = '�������� �� ��������� �� ������� �� ���������';
    $Self->{'Send follow up notification'} = '��������� �������� �� ������� �� ���������';
    $Self->{'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.'} = '��������� �� ��������, ��� �������� ������� ������ �� ������� �� �������� � �� ��� ���������� �� ������';
    $Self->{'New ticket notification'} = '��������� �� ��� �����';
    $Self->{'Send new ticket notification'} = '��������� �������� �� ��������� �� ��� �����';
    $Self->{'Send me a notification if there is a new ticket in my custom queues.'} = '��������� �� ��������, ��� ��� ���(�) ����� � ����� ������������� ������.';
    $Self->{'Ticket lock timeout notification'} = '�������� �� ����������������� �� ���������� �� �������';
    $Self->{'Send ticket lock timeout notification'} = '��������� �������� �� ����������������� �� ���������� �� �������';
    $Self->{'Send me a notification if a ticket is unlocked by the system.'} = '��������� �� ��������, ��� ������� � �������� �� ���������.';
  
    $Self->{'Frontend Language'} = '����';
    $Self->{' 2 minutes'} = ' 2 ������';
    $Self->{' 5 minutes'} = ' 5 ������';
    $Self->{' 7 minutes'} = ' 7 ������';
    $Self->{'10 minutes'} = '10 ������';
    $Self->{'15 minutes'} = '15 ������';
    $Self->{'Move notification'} = '�������� �� �����������';
    $Self->{'Send me a notification if a ticket is moved into a custom queue.'} = '��������� �� ��������, ��� ������� � ��������� � ������� ������������� ������.';  
    $Self->{'Select your frontend QueueView.'} = '�������� ���� �� ������������ ������������ �� ��������.';
    # change priority
    $Self->{'Change priority of ticket'} = '������� �� ���������� �� ������';
    # some other words ...
    $Self->{'AddLink'} = '�������� �� ������';
    $Self->{'Logout successful. Thank you for using OTRS!'} = '������� � �������. ���������� ��, �� ����������� ���������.';
#    $Self->{} = '';
#    $Self->{} = '';

    # stats
    $Self->{'Stats'} = '����������';
    $Self->{'Status'} = '���������';
    $Self->{'Graph'} = '�������';
    $Self->{'Graphs'} = '�������';

    # phone view
    $Self->{'Phone call'} = '��������� ��������';
    $Self->{'phone call'} = '��������� ��������';
    $Self->{'Phone call at'} = '����, ������� �� �� �� ��������';
    $Self->{'A message should have a From: recipient!'} = '����������� ������ �� ��� ��������� ���� ��:';
    $Self->{'You need a email address (e. g. customer@example.com) in From:!'} = '������ �� ����� ����� ����� (�������� customer@example.com) � ���� ��:';

    # states
    $Self->{'new'} = '���';
    $Self->{'open'} = '�������';
    $Self->{'closed succsessful'} = '������� ��������';
    $Self->{'closed unsuccsessful'} = '��������� ��������';
    $Self->{'removed'} = '���������';
    # article types
    $Self->{'email-external'} = '������ �����';
    $Self->{'email-internal'} = '�������� �����';
    $Self->{'note-internal'} = '�������� �������';
    $Self->{'note-external'} = '������ �������';
    $Self->{'note-report'} = '������� �����';

    # priority
    $Self->{'very low'} = '����� �����';
    $Self->{'low'} = '�����';
    $Self->{'normal'} = '��������';
    $Self->{'high'} = '�����';
    $Self->{'very high'} = '����� �����';

    # --
    # customer panel
    # --
    $Self->{'My Tickets'} = '����� ������';
    $Self->{'Welcome'} = '����� �����';

    return;
}
# --

1;

