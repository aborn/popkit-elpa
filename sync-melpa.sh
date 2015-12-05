
git remote add upstream https://github.com/milkypostman/melpa

git fetch upstream

git checkout master

git rebase upstream/master

cp recipes/* ../popkit-elpa/recipes
