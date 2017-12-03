#!/bin/bash

#for loops

if [ "$#" -eq 0 ] ;
 then #if there are 0 positional params
	echo -e "Error, you forgot to tell me a filename!"
	echo -e "Usage: $(basename $0) <filename> <filename> <filename>\n"
	# $0 => current file name ^^^ (path)
	exit 1 #non-zero for error
fi

echo "Count down sequence"
sleep 2
# if no var or list is given to for, it will fallback to user input args 
for i in 6 5 4 3 2 1 "Time's up. Beginning reality check." ; do
	echo -e "$i\n"
	sleep 1
done

echo "All Bitcoin have been erased by EMP!"


