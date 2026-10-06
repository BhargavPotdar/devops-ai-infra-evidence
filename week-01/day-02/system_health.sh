#!/bin/bash

LOGFILE="/tmp/system_health.log"

check_disk(){
         df -h /
}

check_memory(){
         free -m
}

echo "system health"

check_disk >> "$LOGFILE"
check_memory >> "$LOGFILE"
