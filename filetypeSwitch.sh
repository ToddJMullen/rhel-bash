#!/bin/bash

#script checks to see if a file exists

#make sure the user entered soething

if [ "$#" -eq 0 ]; then
 echo -e "\nYou didn't give a fielname."
 echo -e "Usage: $(basename $0) <filename>\n"
 exit 1 #they make booboo
fi

filename="$1"
check=$(file $1 | cut -d " " -f2)

echo -e "\n'$filename' does exist!\n (in this dir or in the PATH)"
echo -e "...and"

case $check in #switch($check)
	"ASCII")#case: $check == "ASCII" =>text files
	 echo -e "'$filename' is a plain text file"
	;;#break
	"Bourne-Again")#scripts
	 echo -e "'$filename' is a script file"
	;;
	"ELF")#executable
	 echo -e "'$filename' is an executable file"
	;;
	*)#default
	echo -e "'$filename' is an unknown type -- do not eat it!"
	;;
esac
 
