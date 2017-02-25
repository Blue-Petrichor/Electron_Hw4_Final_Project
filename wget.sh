#!/bin/bash - 
#===============================================================================
#
#          FILE: wget.sh
# 
#         USAGE: ./wget.sh 
# 
#   DESCRIPTION: uses wget to download a remote file
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Team Electron
#  ORGANIZATION: 
#       CREATED: 02/14/2017 13:36
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

fileIn=$1

if [[ $fileIn == 2015 || $fileIn == 2016 ]]
then
	wget -r http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$fileIn.tar.gz
else
	echo "No such file exists."
	exit 1
fi


exit 0

