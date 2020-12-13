#!/bin/bash
pingcheck 192.168.0.21 >>logNew.txt
function pingcheck()
{
	ping=`ping -c 1 $1 | grep bytes | wc -l`
	if [ "$ping" -gt 1 ]; then
		echo "HOST IS UP"
	else 
		echo "HOST IS DOWN"
		exit
	fi
}

