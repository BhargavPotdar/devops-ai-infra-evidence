#!/bin/bash

LOGFILE="/tmp/system_health.log"

check_disk(){
	 if ! df -h /; then
	 	echo "ERROR: Disk check failed"
		return 1
	 fi
}

check_memory(){
         free -m
}

echo "System Health Check"

if !  check_disk >> "$LOGFILE"; then
	echo "ERROR: Disk Check Failed"
	exit 1
fi
check_memory >> "$LOGFILE"
