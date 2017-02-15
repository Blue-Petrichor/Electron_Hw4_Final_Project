#!/bin/bash - 
#===============================================================================
#
#          FILE: filterData.sh
# 
#         USAGE: ./filterData.sh 
# 
#   DESCRIPTION: filters data by only canadian female and email address
#			     if no address supplied then a dummy one is created by the script
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Team Electron
#  ORGANIZATION: 
#       CREATED: 02/14/2017 15:24
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error
outFile="MOCK_DATA_FILTER.csv"
inDirectory=$1

#if no directory where the mock data is stored was supplied
if [[ $# -ne 1 ]]
then 
	exit 1
fi

#awk file to select and filter data, sed file to fill in empty strings
awk -f filterData.awk $1/MOCK_DATA*.csv | sed -f filterData.sed > $outFile


exit 0
