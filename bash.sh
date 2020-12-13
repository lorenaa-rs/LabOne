#!/bin/bash
function pingcheck()
{
	ping=`ping -c 1 $1 | grep bytes | wc -l`
	if [ "$ping" -gt 1 ]; then
		echo "HOST IS UP $1"
	else 
		echo "HOST IS DOWN $1"
		exit
	fi
}
pingcheck 192.168.0.22 >>logNew.txt
