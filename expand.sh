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
if [[ !-d temp ]]
then
	mkdir temp
fi

#tar -zxvf file.tar.gz 
#expand the 2015 file
if [[ $fileIn == 2015 ]]
then
	gunzip MOCK_DATA_2015.tar.gz
	tar -xvf MOCK_DATA_2015.tar
fi

#expand the 2016 file
if [[ $fileIn == 2016 ]]
then

	gunzip MOCK_DATA_2016.tar.gz
	tar -xvf MOCK_DATA_2016.tar
fi

if [[ $? -eq 0 ]]
then
	echo "Processed correctly"
else
	echo "Did not process crrectly"
fi


exit 0

