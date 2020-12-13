#!/bin/bash

function pingcheck()
{
        arg1=$1 
	ping=`ping -c 1 $arg1 | grep bytes | wc -l`
	if [ "$ping" -gt 1 ]; then
		echo "HOST IS UP"
	else 
		echo "HOST IS DOWN"
		exit
	fi
}
watch -n 1 "(echo 'Server1')">> log.tx

