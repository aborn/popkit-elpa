#!/bin/sh -e

exec 2>&1
cd "$(dirname "$0")"
echo `date +%Y-%m-%d-%H:%M.%S`

ECUKES_EMACS=${EMACS:-$(which emacs)}

echo "*** Emacs version ***"
echo "ECUKES_EMACS = $ECUKES_EMACS"
"$ECUKES_EMACS" --version
echo

"$ECUKES_EMACS" --batch --eval "(unless (ignore-errors (require 'cl-lib)) (package-refresh-contents) (package-install 'cl-lib))"

echo "start cask!!!!"
cask exec ecukes
echo "end cask!!!!"

if [ -n "$TRAVIS_COMMIT_RANGE" ]; then
    echo "Building recipes touched in commits $TRAVIS_COMMIT_RANGE"
    changed_recipes=$(git show --pretty=format: --name-only "$TRAVIS_COMMIT_RANGE" |grep -e '^recipes/[a-z0-9]'|sed 's/^recipes\///'|uniq)
    for recipe_name in $changed_recipes; do
        if [ -f "./recipes/$recipe_name" ]; then
            echo "----------------------------------------------------"
            echo "Building new/modified recipe: $recipe_name"
            #"$ECUKES_EMACS" --batch --eval "(progn (load-file \"package-build.el\")(package-build-archive '$recipe_name))"
        fi
    done
fi

## "$ECUKES_EMACS" --batch --eval "(progn (load-file \"package-build.el\")(package-build-archive 'erlang))"

ALL_PKG_LIST=`ls -x recipes`
test_recipes="vagrant 2048-game ztree helm-ack"
echo "test_recipes = ${test_recipes}"
for recItem in $ALL_PKG_LIST; do
    if [ -f "./recipes/$recItem" ]; then
        "$ECUKES_EMACS" --batch --eval "(progn (load-file \"package-build.el\")(package-build-archive '$recItem))"
    fi
done

echo `date +%Y-%m-%d-%H:%M.%S`
make packages/archive-contents
echo "Build successful"
