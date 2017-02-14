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

#verify the file is correct with either 2015 or 2016 filewhile read line; do
if [[ $1 =~ 2015 || $1 =~ 2016  ]]  
then 
	echo "$wgetFile is a verified file name. "
else
	echo "$wgetFile is not a valid file name."
fi

exit 0
