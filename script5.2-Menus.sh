#!/bin/bash

#creating a simple menu

promptUser()
{
trap "" 1 2 3 18 #trap interrupts so user can't exit

while [ "$answer" != "Option3" ]; do
	read -p "That wasn't an Option!" answer
	if [ "$answer" = "Option3" ] ; then
		tput clear
		echo "Yay!"
		answer=
		return
	else
		echo "wrong..."
	fi
done
}


options="Item1 Item2 Option3"

echo -e "Pick an option or else!\n"

PS3="Enter your choice: "

select choice in $options; do
#choice splits the values in the var we give it and listens for user input
#it stores the user response in $REPLY and uses the value to map it to the list
	echo -e "\nREPLY: $REPLY"
	echo -e "\nchoice var: $choice"
	
	case $choice in
		"Item1")
			#echo -e "\nYou chose Item1!"
			promptUser
		break
		;;
		"Item2")
#			echo -e "\nYou chose #2"
			promptUser
		break
		;;
		"Option3")
			echo -e "\nThat is #3"
			
		break
		;;
	esac
done;
