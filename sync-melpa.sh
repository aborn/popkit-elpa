#!/usr/bin/env bash
cd "$(dirname "$0")"
echo `date +%Y-%m-%d-%H:%M.%S`
cd /home/popkit/melpa
git pull
cp recipes/* /home/popkit/popkit-elpa/recipes
cd /home/popkit/popkit-elpa
git add -A .
git commit -am "sync melpa.org recipes date +%Y-%m-%d-%H:%M.%S"
git push
