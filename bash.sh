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


watch -n 1 "(date '+TIME:%H:%M:%S'; echo 'Server1' ; pingcheck 192.168.0.21; echo '' ;echo 'Server2' ; pingcheck 192.168.0.22 ; echo '') >> log.tx
