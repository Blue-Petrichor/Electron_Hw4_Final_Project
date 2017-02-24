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



#wget for 2015 file
if [[ $fileIn == 2015 ]]
then
	wget -r http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_2015.tar.gz
fi

if [[ $fileIn == 2016 ]]
then
	wget -r http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_2016.tar.gz
fi

exit 0

