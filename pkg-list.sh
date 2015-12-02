#!/usr/bin/env bash

PKG_LIST=`ls -x recipes`
for item in $PKG_LIST; do
echo $item
done

