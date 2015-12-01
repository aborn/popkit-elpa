#!/bin/sh -e
if [ ! -d "packages" ]; then
    mkdir packages/
fi

if [ ! -d "working" ]; then
    mkdir working
fi

cask install ecukes

sudo apt-get install mercurial  #linux
brew install hg   # mac
