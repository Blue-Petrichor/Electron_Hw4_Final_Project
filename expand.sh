#!/bin/bash - 
#===============================================================================
#
#          FILE: expand.sh
# 
#         USAGE: ./expand.sh 
# 
#   DESCRIPTION: expands input file into temp directory
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Team Electron
#  ORGANIZATION: 
#       CREATED: 02/14/2017 15:23
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


#Create temp folder to store expanded tar.gz files.
#if [[ ! -d temp ]]
#then
#	mkdir temp
#fi
fileIn=$1
present=$PWD
#tar -zxvf file.tar.gz 
#expand the 2015 file
for i in `seq $fileIn -1 2015`
do
	gunzip temp/MOCK_DATA_$i.tar.gz 
	tar -xvf temp/MOCK_DATA_$i.tar -C temp/
done

exit 0
