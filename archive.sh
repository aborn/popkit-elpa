#!/bin/sh -e

exec 2>&1
echo `date +%Y-%m-%d-%H:%M.%S`

echo "*** Emacs version ***"
echo "ECUKES_EMACS = $ECUKES_EMACS"
"$ECUKES_EMACS" --version
echo

"$ECUKES_EMACS" --batch --eval "(unless (ignore-errors (require 'cl-lib)) (package-refresh-contents) (package-install 'cl-lib))"

echo "start cask!!!!"
cask exec ecukes
echo "end cask!!!!"

"$ECUKES_EMACS" --batch --eval "(progn (load-file \"package-build.el\")(package-build-all))"

echo `date +%Y-%m-%d-%H:%M.%S`
make packages/archive-contents
echo "Build successful"

