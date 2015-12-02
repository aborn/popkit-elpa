#!/usr/bin/env bash

#nohup ./run-travis-ci.sh > log/ci.txt 2>&1&
nohup ./pkg-build-all.sh > log/ci.txt 2>&1&
echo $! > run.pid
