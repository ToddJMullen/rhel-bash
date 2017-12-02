#!/bin/bash

#script checks to see if a file exists

#make sure the user entered soething

if [ "$#" -eq 0 ]; then
 echo -e "\nYou didn't give a fielname."
 echo -e "Usage: $(basename $0) <filename>\n"
 exit 1 #they make booboo
fi

filename="$1"
#note that the conditional must be in []s, not ()s
#Also, there must be interior whitespace in the [  ]s
#i.e. if [ -e "$filename" ] IS ok
#     if [-e "$filename"]   is NOT

if [ -e "$filename" ]; then
 #the -e flag above is a command to check the existence of a file
 #other flags checks are:
# -e exists, -b Block device files, -c Char device files, -f Regular files
# -d Directories, -r Read access, -w Write access, -x Execute permission, -s Same as -x ...and others
 echo -e "\n'$filename' does exist!\n (in this dir or in the PATH)"
 echo -e "...and"
 #-e here ^^^ is a flag input to echo, not bash
 if [ -f "$filename" ]; then
	echo -e "\t'$filename' is a regular file\n"

 elif [ -b "$filename" ]; then
	echo -e "\t'$filename' is a block file\n"

 elif [ -c "$filename" ]; then
	echo -e "\t'$filename' is a char file\n"

 elif [ -d "$filename" ]; then
	echo -e "\t'$filename' is a directory\n"

 elif [ -w "$filename" ]; then
	echo -e "\t'$filename' is writable file (???for $USER???)\n"

 elif [ -x "$filename" ]; then
	echo -e "\t'$filename' is an executable file (???for $USER???)\n"
 else
	echo -e "\t'$filename' is a magical mystery file of unknown origins. Proceed with caution!\n"
 fi

else 
 echo -e "'$filename' does not exist in the PATH or current dir!"

fi
