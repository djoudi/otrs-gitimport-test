# --
# RPM spec file for SuSE Linux of the OTRS package
# Copyright (C) 2002 Martin Edenhofer <bugs+rpm@otrs.org>
# --
# $Id: suse-otrs-7.3.spec,v 1.7 2002-09-23 14:45:52 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see 
# the enclosed file COPYING for license information (GPL). If you 
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
#
# please send bugfixes or comments to bugs+rpm@otrs.org
#
# --
Summary:      The Open Ticket Request System. 
Name:         otrs-7.3
Version:      0.5
Copyright:    GNU GENERAL PUBLIC LICENSE Version 2, June 1991
Group:        Applications/Mail
Provides:     otrs 
Requires:     perl perl-DBI perl-Date-Calc perl-GD perl-MIME-Base64 perl-MailTools perl-MIME-Lite perl-MIME-tools perl-Net-DNS perl-Digest-MD5 apache mod_perl mysql mysql-client perl-Msql-Mysql-modules mysql-shared fetchmail procmail
Autoreqprov:  on
Release:      BETA7
Source0:      otrs-%{version}-%{release}.tar.bz2
BuildRoot:    %{_tmppath}/%{name}-%{version}-build

%description
The Open Ticket Request System (http://otrs.org/) is a web based ticket system.

Feedback: feedback@otrs.org


Authors:
--------
    Carsten Gross <carsten@siski.de>
    Franz Breu <breu.franz@bogen.net>
    Stefan Wintermeyer <stefan@wintermeyer.de>
    Martin Edenhofer <martin+rpm@otrs.org>

  Feature list:
  - Agent web interface for viewing and working on all customer requests.
  - Admin web interface for changing system things.
  - Customer web interface for viewing and sending infos to the agents.
  - Central database which contains all configuration, customer information.
  - Custom queue view.
  - Ticket locking.
  - Ticket autoreplies (standard responses)
  - Ticket history, evolution of ticket status and actions taken on ticket
  - Abaility to add notes (with different note types) to a ticket.
  - Ticket zoom feature
  - Tickets can be bounced or forwarded to other email addresses.
  - Ticket can be moved to a different queue (this is helpful if emails are
     for a specific subject)
  - Fulltext search.
  - Ticket priority.
  - Creation and configuration of user accounts, and groups
  - Creation of standard responses
  - Signature and Salutation configuration
  - Multi language support.
  - Email-notification of administrators.
  - Email-notification sent to problem reporter (by create, locked, deleted,
     moved and closed)
  - Submitting update-info (via email or webinterface).
  - Deadlines for trouble tickets.
  - Different levels of permissions/access-rights.


SuSE series: ap


%prep
%setup -n OpenTRS

%build
# nothing

%install
# delete old RPM_BUILD_ROOT
rm -rf $RPM_BUILD_ROOT
# set DESTROOT
export DESTROOT="/opt/OpenTRS/"
# create RPM_BUILD_ROOT DESTROOT
mkdir -p $RPM_BUILD_ROOT/$DESTROOT/
# copy files
cp -R . $RPM_BUILD_ROOT/$DESTROOT
# Install init-Script and rc.config entry
install -d -m 755 $RPM_BUILD_ROOT/etc/init.d
install -d -m 755 $RPM_BUILD_ROOT/usr/sbin
install -d -m 755 $RPM_BUILD_ROOT/etc/rc.config.d
install -d -m 744 $RPM_BUILD_ROOT/var/adm/fillup-templates

# check suse release
install -m 644 scripts/suse-fillup-template-rc.config.otrs $RPM_BUILD_ROOT/var/adm/fillup-templates/rc.config.otrs
install -m 644 scripts/suse-rcotrs-config $RPM_BUILD_ROOT/etc/rc.config.d/otrs

install -m 755 scripts/suse-rcotrs $RPM_BUILD_ROOT/etc/init.d/otrs
rm -f $RPM_BUILD_ROOT/sbin/otrs
ln -s ../../etc/init.d/otrs $RPM_BUILD_ROOT/usr/sbin/rcotrs


%post
# useradd
export OTRSUSER=otrs
echo -n "Check OTRS user (/etc/passwd)... " 
if cat /etc/passwd | grep $OTRSUSER > /dev/null ; then 
    echo "$OTRSUSER exists."
else
    useradd $OTRSUSER -d /opt/OpenTRS/ -s /bin/false -G nogroup -c 'OTRS User' && echo "$OTRSUSER added."
fi

# set permission
/opt/OpenTRS/bin/SetPermissions.sh /opt/OpenTRS $OTRSUSER wwwrun
# set Config.pm permission to be writable for the webserver 
chown wwwrun /opt/OpenTRS/Kernel/Config.pm

# rc.config
%{fillup_and_insserv -s otrs START_OTRS}

# add suse-httpd.include.conf to apache.rc.config
APACHERC=/etc/rc.config.d/apache.rc.config

OTRSINCLUDE=/opt/OpenTRS/scripts/suse-httpd.include.conf
sed 's+^HTTPD_CONF_INCLUDE_FILES=.*$+HTTPD_CONF_INCLUDE_FILES='$OTRSINCLUDE'+' \
$APACHERC > /tmp/apache.rc.config.tmp && mv /tmp/apache.rc.config.tmp $APACHERC 

# note
echo ""
echo "Next steps: "
echo ""
echo "[SuSEconfig]"
echo " Execute 'SuSEconfig' to configure the webserver."
echo ""
echo "[start Apache and MySQL]"
echo " Execute 'rcapache start' and 'rcmysql start' in case they don't run."
echo ""
echo "[install the OTRS database]"
echo " Use a webbrowser and open this link:"
echo " http://localhost/otrs/installer.pl"
echo ""
echo "[OTRS services]"
echo " Start OTRS 'rcotrs start-force' (rcotrs {start|stop|status|restart|start-force|stop-force})."
echo ""
echo "Have fun!"
echo ""
echo " Your OTRS Team"
echo " http://otrs.org/"
echo ""

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%config(noreplace) /opt/OpenTRS/Kernel/Config.pm
%config(noreplace) /opt/OpenTRS/Kernel/Config/*.pm
%config(noreplace) /opt/OpenTRS/var/log/TicketCounter.log
%config(noreplace) /opt/OpenTRS/.procmailrc
%config(noreplace) /opt/OpenTRS/.fetchmailrc
%config(noreplace) /opt/OpenTRS/Kernel/Output/HTML/Standard/*.dtl
%config(noreplace) /opt/OpenTRS/Kernel/Output/HTML/Lite/*.dtl
%config(noreplace) /opt/OpenTRS/Kernel/Language/*.pm
%config(noreplace) /opt/OpenTRS/var/cron/*
%config(noreplace) /etc/rc.config.d/otrs

/etc/init.d/otrs
/usr/sbin/rcotrs

/opt/OpenTRS/RELEASE
/opt/OpenTRS/Kernel/Language.pm
/opt/OpenTRS/Kernel/Modules/*
/opt/OpenTRS/Kernel/Output/HTML/*.pm
/opt/OpenTRS/Kernel/System/*
/opt/OpenTRS/bin/*
/opt/OpenTRS/scripts/*
/opt/OpenTRS/var/article/
/opt/OpenTRS/var/httpd/
/opt/OpenTRS/var/sessions/
/opt/OpenTRS/var/spool/
/opt/OpenTRS/var/tmp/

/var/adm/fillup-templates/rc.config.otrs

%doc INSTALL TODO COPYING READM* doc/* install*


%changelog
* Sun Sep 22 2002 - martin+rpm@otrs.org
- added /etc/rc.config.d/otrs for rc script (Thanks to Lars M�ller)
* Fri Sep 06 2002 - martin+rpm@otrs.org
- added Kernel/Config/*.pm
* Sat Jun 16 2002 - martin+rpm@otrs.org
- added new modules for 0.5 BETA6
* Thu Jun 04 2002 - martin+rpm@otrs.org
- added .fetchmailrc
* Mon May 20 2002 - martin+rpm@otrs.org
- moved all .dlt and all Kernel::Language::*.pm to %config(noreplace) 
* Sat May 05 2002 - martin+rpm@otrs.org
- added Kernel/Output/HTML/Standard/Motd.dtl as config file 
* Thu Apr 16 2002 - martin+rpm@otrs.org
- moved to SuSE 8.0 support
* Sun Feb 03 2002 - martin+rpm@otrs.org
- added SuSE-Apache support
* Wed Jan 30 2002 - martin+rpm@otrs.org
- added to useradd bash=/bin/false
* Sat Jan 12 2002 - martin+rpm@otrs.org
- added SuSE like rc scripts
* Tue Jan 10 2002 - martin+rpm@otrs.org 
- new package created

