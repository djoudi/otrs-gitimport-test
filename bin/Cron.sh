#!/bin/sh
# --
# Cron.sh - start|stop OTRS Cronjobs
# Copyright (C) 2002 Martin Edenhofer <martin+code@otrs.org>
# --
# $Id: Cron.sh,v 1.6 2002-11-21 20:18:32 martin Exp $
# --
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
# --

CURRENTUSER=`whoami`
OTRS_HOME=$HOME
#CRON_USER=" -u $RUNASUSER ";
CRON_USER=""

if test $CURRENTUSER = root; then
  echo "Run this script just as OTRS user! Or use 'Cron.sh {start|stop|restart} OTRS_USER'!"
  exit 5
fi

# find otrs root
#OTRS_ROOT=/opt/OpenTRS
if test -e $OTRS_HOME/var/cron; then 
    OTRS_ROOT=$OTRS_HOME
else 
    echo "No cronjobs in $OTRS_HOME/var/cron found!";
    echo " * Check the \$HOME (/etc/passwd) of the OTRS user. It must be the root dir of your OTRS system (e. g. /opt/otrs). ";
    exit 5;
fi

CRON_DIR=$OTRS_ROOT/var/cron
CRON_TMP_FILE=$OTRS_ROOT/var/tmp/otrs-cron-tmp.$$

echo "Cron.sh - start/stop OTRS cronjobs - <\$Revision: 1.6 $> "
echo "Copyright (c) 2002 Martin Edenhofer <martin@otrs.org>"

# 
# main part
# 
case "$1" in
    # ------------------------------------------------------
    # start
    # ------------------------------------------------------
    start)
      if mkdir -p $CRON_DIR; cat $CRON_DIR/* > $CRON_TMP_FILE && crontab $CRON_USER $CRON_TMP_FILE; then
        rm -rf $CRON_TMP_FILE
        echo "(using $OTRS_ROOT) done";
        exit 0;
      else
        echo "failed";
        exit 1;
      fi
    ;;
    # ------------------------------------------------------
    # stop
    # ------------------------------------------------------
    stop)
      if crontab $CRON_USER -r ; then
        echo "done";
        exit 0;
      else
        echo "failed";
        exit 1;
      fi
    ;;
    # ------------------------------------------------------
    # restart
    # ------------------------------------------------------
    restart)
      $0 stop
      $0 start
    ;;
    # ------------------------------------------------------
    # Usage
    # ------------------------------------------------------
    *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
esac


