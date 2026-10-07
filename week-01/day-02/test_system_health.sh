#!/bin/bash

./system_health.sh
status=$?

if [ "$status" -eq 0 ]; then
	echo "TEST PASSED"
	exit 0
else
	echo "TEST FAILED"
	exit 1
fi
