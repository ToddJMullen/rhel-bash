#!/bin/bash

#a while loop

counter=3

echo "Prepare for warp speed!"

while [ $counter -gt 0 ] ; do
	if [ "$1" = "jump" ] ;
	 then #jump through the countdown loop
		echo "Delay override, we go now!"
		let counter=$counter-1
		continue
	fi
	echo $counter
	sleep 1
done


str=">>>"
breakPoint=2
distance=5

echo -e "Engage! xD\n$str"

until [ $counter -ge $distance ] ; do
	str=$str$str
	echo $str
	let counter=$counter+1
	if [ $counter -ge $breakPoint ] ;
	 then
		echo "We're running out of dilithium crystals! =/"
		sleep 1
		if [ $counter -le 3 ] ;
		 then
			echo "We found more gas! =)"
			if [ $2 -ge 0 ];
			 then
				breakPoint=$breakPoint+$2
				shift
			fi
			sleep 1
			continue #go for another round in the loop
		fi
		echo "We didn't made it! =("
		break #exit the loop
	fi
	sleep 1
	echo "We made it! xD"
done

