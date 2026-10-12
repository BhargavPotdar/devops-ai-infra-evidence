#!/bin/bash

LOGFILE="/tmp/service_health.log"

services=("ssh" "cron" "systemd-journald")

log () {
	echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

check_service() {
	local service=$1
	if systemctl is-active --quiet "$service"; then
		echo "$service is active"
		log "$service OK"
	else
		echo "$service is not active"
		log "$service DOWN"
	fi
}

for svc in "${services[@]}"; do
	check_service "$svc"
done

