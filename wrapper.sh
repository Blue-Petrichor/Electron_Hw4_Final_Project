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


# Optional function if entered wrong
optional_function()
{
	echo 
	echo "If optional params are not entered use this example below."
	echo "[-y year] [-e email]"
	echo " required   required"
	exit 1
}
# Function if exit process is not correct or = 0
usage()
{
	echo "Try:"
	echo "[-y year] [-e email] [-u user] [-p passwd]"
	echo " required   required  optional  optional"
	optional_function
	echo " " 
	exit 1
}
# Function if email is not valid
email_usage()
{
	echo "ex: john_doe@something.com"
	echo " "
	exit 1
}

#check for the --help option for first param was entered
if [[ $1 == "--help" ]]
then
	usage
fi

# This will change as the files are created, it should be a piped file and 
#	not the $1 for input
if [[ $1 != --help ]]
then
	while getopts ":y:e:u:p:" opt
	do
		case $opt in
			y) 
				y=${optarg}
				#verify the file is correct and not empty in $2, $4
				# $2 must have 2015 or 2016 and $4 must have an email entered
				# verify these conditions are true and print messeage if correct.
				if [[ ! -z "$2" && ! -z "$4" ]]
				then
					if [[ $2 =~ 2015 || $2 =~ 2016 ]]
					then
						if [[ $? -eq 0 ]]
						then
							echo "$2 is an accepted year for process:"
						else
							usage
						fi
					fi
				fi
				;;
			e)  
				e=${optarg}
				if [[ $4 =~ @ && $4 =~ .com ]]
				then
					echo "$4 is an accepted email address:"
					else
						echo " "
						echo "$4 is partial or missing see help below:"
						email_usage
				fi
				;;
			u)  
				u=${optarg}
				if [[ ! -z $6  ]]
				then 
					echo "Welcome $6!"
				fi
				;;
			p) 
				p=${optarg}
				if [[ -z $8 ]]
				then 
					#add default password
					echo "Password accepted, Thanks you!"
					echo ""
				fi
				;;
			*) #send to usage function for how to enter
				usage
				;;
		esac
	done
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

echo ""
if [[ $5 != -u || -z $6 || $7 != -p || -z $8 ]]
then 
	echo 
	echo "Missing arguments or incorrectly entered!"
	echo "If trying to pass in user name and password, and are seeing this error message."
	echo "See example below:"
	echo
	# help functions
	usage
fi

# The file ouput after files are processed displayed to the user
#  echo "The file output name is <add file output to user here>"



exit 0
