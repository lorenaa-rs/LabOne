#!/bin/bash
host=$1 
function pingcheck
{
	ping=`ping -c 1 $host | grep bytes | wc -l`
	if [ "$ping" -gt 1 ]; then
		echo "HOST IS UP"
	else 
		echo "HOST IS DOWN"
		exit
	fi
}

"pingcheck" >>log.txt