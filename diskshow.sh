#!/usr/bin/env bash

# nohup ./diskshow.sh >> log/disk.txt 2>&1&

while :
do
	echo "--------------------------------------------"
	echo `date +%Y-%m-%d-%H:%M.%S`
	df -h
	sleep 300
done
