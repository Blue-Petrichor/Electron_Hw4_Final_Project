#!/bin/bash - 
#===============================================================================
#
#          FILE: cleanup.sh
# 
#         USAGE: ./cleanup.sh 
# 
#   DESCRIPTION: cleans up all temporary files created by the wrapped script
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Team Electron
#  ORGANIZATION: 
#       CREATED: 02/14/2017 15:29
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


#Clean up you mess. Delete the temp folder with all the files
if [[ -d temp ]]
then
	rm -r temp/
fi

exit 0

