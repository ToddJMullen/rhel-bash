#!/bin/bash

#a while loop

countdown=3

echo "Prepare for warp speed!"

while [ $countdown -gt 0 ] ; do
	echo $countdown
	let countdown=$countdown-1
	sleep 1
done


str=">>>"

echo -e "Engage! xD\n$str"

until [ $countdown -ge 5 ] ; do
	str=$str$str
	echo $str
	let countdown=$countdown+1
	sleep 1
done

