#!/bin/bash - 
#===============================================================================
#
#          FILE: wrapper.sh
# 
#         USAGE: ./wrapper.sh 
# 
#   DESCRIPTION: Wrapper to run all scripts
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Electron Group
#  ORGANIZATION: 
#       CREATED: 02/14/2017 20:21
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


#variable to store file into
# this will change as the files are created, it should be a piped file and 
#	not the $1 for input
wgetFile="$1"


# Check if file has been entered
if [[ -z $1  ]]
then
	echo "No file has been entered!!!"
	echo
else
	echo "Verifying file is correct..."
	echo
fi

#verify the file is correct with either 2015 or 2016 filewhile read line
# verify the process has been done correctly
#	The wgetFile variable will change when the files are updated
if [[ $1 =~ 2015 || $1 =~ 2016  ]]  
then
	if [[ $? -eq 0 ]]
	then
		echo "$wgetFile is an accepted file name"
		echo "Files have been correctly processed."
		#Need to change the input/output file when the others are made
		echo "output file is named $wgetFile"
	fi
else
	echo "Not a correct file entered!!!"
fi



exit 0
