#!/bin/sh -e
if [ ! -d "packages" ]; then
    mkdir packages
fi

if [ ! -d "working" ]; then
    mkdir working
fi

#curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
brew install cask
cask install ecukes

sudo apt-get install runit

#sudo apt-get install mercurial  #linux
brew install hg   # mac
