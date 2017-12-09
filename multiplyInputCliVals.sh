#/bin/bash

#using user input to multiply numbers

echo #inject line
echo "This will prompt inputs & multiply them"
echo 

read -p "Gimme a number: " num1
#the read command will accept n user inputs (separated by spaces)
#and store them into the var name(s) given at the end of the read
#command.  If none is given, the input goes into $REPLY
#If more are given by the user than declared, the extras are all assigned to the last
read -p "and another number: " num2
echo 
#read -p "Press anything to get the answer!"
#When read ^^^^^ is used with no flags it waits for \r as the "finished" marker
#To make it continue after "any" character, limit it to one char
#using the -n flag with a value 1 => -n1
read -s -n1 -p "Press anything to get the answer!"
#read -n1 -p will write the pressed char though, so we add the -s flag for 'silent' mode (although I think it should be "suppressed" mode)
#we can also merge the -s and -n1 into -sn1
#the read prompt automatically stores the typed response in $REPLY by default
let product=$num1*$num2
echo
echo "Your product is: $product"
echo "You just typed: $REPLY"
