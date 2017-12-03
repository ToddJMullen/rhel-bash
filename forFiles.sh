#!/bin/bash

#for loops

if [ "$#" -eq 0 ] ;
 then #if there are 0 positional params
	echo -e "Error, you forgot to tell me a filename!"
	echo -e "Usage: $(basename $0) <filename> <filename> <filename>\n"
	# $0 => current file name ^^^ (path)
	exit 1 #non-zero for error
fi

echo "File check sequence for:  $*"

for i; do
 type=$(file $1 | cut -d " " -f2) #explode the file description of file (name held in $1 user input) on space & assign the 2nd fragment to $type
 filename="$1"
	
 case $type in #switch($type)
	"ASCII")#case: $type == "ASCII" =>text files
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

shift #after the loop, throw the first user input away
# This will advance the sequence to the next user input
# (while still referencing the same positional var $1)

done

echo "All Bitcoin have been erased by EMP!"


