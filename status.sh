#!/usr/bin/env bash

# nohup ./status.sh > log/status.txt 2>&1& echo $! > status.pid
while :
do
    cat log/ci.txt |egrep ";;;|2015" |grep -v popkit
    sleep 60
done



