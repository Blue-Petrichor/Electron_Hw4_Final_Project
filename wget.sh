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


if [[ ! -d temp ]]
then 
	mkdir temp
fi

present=$PWD

cd temp

if [[ $fileIn == 2015 || $fileIn == 2016 ]]
then
	for i in `seq $fileIn -1 2015`
	do 
		wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$i.tar.gz
	done
	cd $present

else
	echo "No such file exists."
	exit 1
fi


exit 0

