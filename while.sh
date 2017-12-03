#!/bin/bash

#a while loop

countdown=7

echo "Prepare for warp speed!"

while [ $countdown -gt 0 ] ; do
	echo $countdown
	let countdown=$countdown-1
	sleep 1
done

echo "Engage! >>>>>>>>>>>>>> xD"

