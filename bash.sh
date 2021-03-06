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
watch -n 1 "(date '+TIME:%H:%M:%S'; echo 'Server1' ; pingcheck 192.168.0.33; echo '' ;echo 'Server2' ; pingcheck 192.168.0.35 ; echo '') >> log.txt"
