#!/usr/bin/env bash
if [[ "$(git status --porcelain)" != "" ]]; then
    echo publish should only be run on a clean working directory
    exit 1
fi

./build.sh

MESSAGE="update from content: $(git show --abbrev-commit --oneline --no-patch)"

# save in the git stash to move to the gh-pages branch
git add -f public
git stash save rendered
git rm -rf public

git co gh-pages
git stash pop # rendered

# remove all the content to let public overwrite it
git ls-files | grep -v -e README.md -e .gitignore | xargs rm -rf
find * -empty -type d -delete

mv public/* .
rmdir public

git add .
git ci -m "$MESSAGE"
git push origin gh-pages

# restore the git index to how it was before the script ran
git co master
