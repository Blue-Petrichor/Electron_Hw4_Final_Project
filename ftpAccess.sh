#!/bin/bash - 
#===============================================================================
#
#          FILE: ftpAccess.sh
# 
#         USAGE: ./ftpAccess.sh 
# 
#   DESCRIPTION: takes a user and password as input and uploads our compressed file to the ftp server
#				 if not username and password are submitted use anonymous instead
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Team Electron
#  ORGANIZATION: 
#       CREATED: 02/14/2017 15:27
#      REVISION:  ---
#===============================================================================

#set -o nounset # Treat unset variables as an error


nameOfFile=$1
user=$2
pass=$3

#echo [$user]
#echo [$pass]

present=$PWD

cd temp/

if [[ $user == "anonymous" ]]
then
	ftp -n 137.190.19.90 << END_SCRIPT
	user $user $pass
	cd /MockData/
	put $nameOfFile
	bye
END_SCRIPT
else
	ftp -n 137.190.19.90 << END_SCRIPT
	user $user $pass
	put $nameOfFile
	bye
END_SCRIPT
fi


cd $present
exit 0

