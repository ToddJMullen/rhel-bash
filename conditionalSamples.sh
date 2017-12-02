#!/bin/bash

if [[ $# -eq 0 ]] ;# "$#" is the special var for the number of args assed
	#so this is "saying" if the num args equals 0
then
 echo "\nThere were no arguments passed into the script.\n"
 echo "\nUsage: $(basename $0) <arg1> <arg2> ... <argn>"
 # $0 refers to the script name
 exit 1 #anything non-zero is considered an error bt convention
else
 echo "\nYou typed in: $@\n Or, '$*'"
 # "$@" is the special var to list all the positional params entered
 # "$*" holds all the input positional vars as a single value
 # Eg $* => "arg1 arg2 arg3" $@ => "arg1" "arg2" "arg3"
fi
