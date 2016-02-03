#!/usr/bin/env bash
cd "$(dirname "$0")"
cd /home/popkit/melpa
git pull
cp recipes/* /home/popkit/popkit-elpa/recipes
cd /home/popkit/popkit-elpa
git add -A .
git commit -am "sync melpa.org recipes"
git push
