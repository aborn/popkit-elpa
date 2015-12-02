#!/usr/bin/env bash

# nohup ./status.sh > log/status.txt 2>&1& echo $! > status.pid
# nohup ./status.sh 2>&1& echo $! > status.pid
while :
do
    cat log/ci.txt |egrep ";;;|2015-12" |grep -v popkit > log/status.txt
    sleep 60
done



