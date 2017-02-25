#!/bin/bash - 
#===============================================================================
#
#          FILE: compress.sh
# 
#         USAGE: ./compress.sh 
# 
#   DESCRIPTION: compresses filtered data into a zip file using the `zip` program
#				 compressed filename should be in the form MOCK_DATA_FILTER_YYYY_MM_DD_HH:MM.zip
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Team Electron
#  ORGANIZATION: 
#       CREATED: 02/14/2017 15:26
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error
ts=`date +%Y_%m_%d_%H:%M`


#need to know which file to zip
if [[ $# -ne 1 ]]
then
	exit 1
fi

#zip newley created data file 
zip -r $1/MOCK_DATA_FILTER_$ts.zip $1/MOCK_DATA_FILTER.csv

exit 0

