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


# prompt for help
echo "For help on how to enter parameters type:"
echo "bash <filename.sh> --help"
echo

# Function if exit process is not correct or = 0
usage()
{
	echo "Try:"
	echo "[-y year] [-e email] [-u user] [-p passwd]"
	echo " required   required  optional  optional"
	exit 1
}
#check for the --help option for first param was entered
if [[ $1 == "--help" ]]
then
	usage
fi

#variable to store file into
# this will change as the files are created, it should be a piped file and 
#	not the $1 for input
if [[ $1 != --help ]]
then
	while getopts ":y:e:u:p:" opt
	do
		case $opt in
			y) 
				y=${optarg}
				;;
			e)  
				e=${optarg}
				;;
			u)  
				u=${optarg}
				;;
			p) 
				p=${optarg}
				;;
			*) #send to usage function for how to enter
				usage
				;;
		esac
	done
fi

#verify the file is correct and not empty in $2, $4
# $2 must have 2015 or 2016 and $4 must have an email entered
# verify these conditions are true and print messeage if correct.
if [[ ! -z "$2" && ! -z "$4" ]]
then
	if [[ $2 =~ 2015 || $2 =~ 2016  ]]
	then
		if [[ $? -eq 0 ]]
		then
			echo "$2 is an accepted file name"
		fi
	fi
fi

# verify that the required options are entered
if [[ $1 != -y || -z $2 || $3 != -e || -z $4 ]] #need to add the $5 and $7
then
	echo
	echo "Missing arguments or incorrectly entered!"
	echo
	#if not entered then send to --help 
	usage
fi

exit 0
