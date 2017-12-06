#!/bin/bash

#creating a simple menu


options="Item1 Item2 Option3"

echo -e "Pick an option or else!\n"

PS3="Enter your choice: "

select choice in $options; do
#choice splits the values in the var we give it and listens for user input
#it stores the user response in $REPLY and uses the value to map it to the list
	echo "REPLY: $REPLY"
	echo "choice: $choice"
	
	case $choice in
		"Item1")
			echo -e "You chose Item1!\n"
break
		;;
		"Item2")
			echo -e "You chose #2\n"
break
		;;
		"Option3")
			echo -e "That is #3\n"
break
		;;
	esac
done;
