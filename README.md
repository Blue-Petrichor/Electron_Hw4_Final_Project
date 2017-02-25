# Electron Hw4 Final Project
Homework 4 Team Electron

1. wrapper.sh
  * The wrapper file used to control all subscripts. 
  * Usage: ./wrapper.sh -y \<Year (2015 or 2016)\> -e \<email\> -u \<user\> -p \<password\>
2. wget.sh
  * wget.sh downloads a file off a remote server using the year from the wrapper to determine which file to download and stores the file in a temp directory. Currently only the years 2015 and 2016 have data. 
  * USAGE: ./wget \<year(2015 or 2016)\>
3. expand.sh
  * Takes an input file and expands the file into a temp directory. 
  * Usage: ./expand.sh -f \<file to expand\>
4. filterData.sh
  * Takes the extracted data from expand.sh and filters the data to remove all non Female Candians. Removes extra header files and ensures all data entries have an email. If no email is provided in the data file then a dummy file is supplied by this script. 
  * USAGE: ./filterData.sh \<path to directory with mock files\>
5. compress.sh
  * Compresses filtered data into a new zip file named with the following convention: MOCK_DATA_FILTER_YYYY_MM_DD_HH:MM.zip. 
  * USAGE: ./compress.sh \<path to file to compress\>
6. 	ftpAccess.sh
  * uploads our new mock data zip file to a remote ftp server with the supplied username and password. If no password was supplied then it signs in anonymously.
  * USAGE: ./ftpAccess.sh \<fileToUpload\> \<username\> \<password\>
7. cleanup.sh
  * Cleans up all temporary files and directories.
#Crontab_log.sh file to call and execute crontab script
	* Added crontab.txt - holds the crontab execute command for Monday-Friday 8-5 every six hours.
	* Added email_subject.txt file, for confirmation of succesful FTP upload to the server. Mail will attach file with message of confirmation to user inputed email address.

