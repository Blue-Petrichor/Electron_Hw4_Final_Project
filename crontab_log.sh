#!/bin/bash - 
#===============================================================================
#
#          FILE: crontab_log.sh
# 
#         USAGE: ./crontab_log.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Electron Group
#  ORGANIZATION: 
#       CREATED: 02/25/2017 17:03
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


RUNDIR='/home/hvalle/cs3030/Electron_Hw4_Final_Progject'
#Get Date fields
MM=`date +%m`
DATE=`date +%m%d`
#Program to run
DEV=crontab_log.sh
#Set/Check for directory structure
LOGDIR=$RUNDIR/log/$MM
if [[ ! -d $LOGDIR ]]
then
	mkdir -p $LOGDIR
fi
#Change to run dir
cd $RUNDIR
LOG=$LOGDIR/crontab_log_$DATE.log # log file location/name
echo >> $LOG
echo "******Starting ***** `date`" >> $LOG
$RUNDIR/$DEV/ >> $LOG
#Check exit status
RC=$?
if [[ $RC -ne 0 ]]
then
	echo "`date`: $0 has a problem" >> $LOG
	echo "*****Ending with ERROR**** `date`" >> $LOG
	exit 1
fi
echo "*******Ending****** `date`" >> $LOG


exit 0

