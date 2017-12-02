#!/bin/bash
# is the comment symbol except for the shabang interpreter line above
# the very first line must declare the interpreter & it's location
# here is bash, located at /bin/bash which can be checked using
# $which bash 
# ^^^^ on the CLI, which will output where bash exists and is usually at /bin/bash
# although RHEL has a symlink that redirects /bin/bash to /usr/bin/bash
echo "I wrote some comments in this file!"
#if I want to execute scripts by invoking the on the command line like this:
# $ bash ./myScript.sh
# then I don't need the shabang at the head of the file
#i.e. I don't have to declare the script interpreter because
#the invocation does it explicitly at the same time the script is given as an input to the interpreter
#AND running scripts this way don't require permissions.
echo "This is a test $myVar"
#The variable above will not have a value usually
#I can declare some value for myVar like thie
#$ myVar="Some value"
#And it will have that value, but running
#$ ./simple_script.sh
#Will not find that variable, because the execution of the script will happen in its own context
#However, I CAN cause the script to be run in the current context like this
#$ . ./simple_script.sh
#The . before the ./simple_script.sh tells bash to execute it in the context of the current shell
#This is called "sourcing" the script
echo
echo -e "Hello $USER\n
"
