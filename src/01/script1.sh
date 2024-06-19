#!/bin/bash

if [ "$#" == 1 ]; then
	if [[ $1 == ?(-)+([0-9]) ]]; then
		echo "Wrong! $1 is an integer!"
	else
        	echo "$1 is an string"
    	fi
else
	echo "Wrong input!"
fi
