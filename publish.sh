#!/usr/bin/env bash
set -e
if [[ "$(git status --porcelain)" != "" ]]; then
    echo publish should only be run on a clean working directory
    exit 1
fi

TEMP=$(mktemp -d -t spacemacs-rocks)
git submodule update
hugo -d $TEMP
MESSAGE="$(git show --abbrev-commit --oneline --no-patch) (update from master content)"

# move to gh-pages to place content
git co gh-pages
git pull

# remove all the content to let the rendered replace it
git ls-files | grep -v -e README.md -e .gitignore -e CNAME | xargs rm -rf
find * -empty -type d -delete

mv ${TEMP}/* .
rmdir $TEMP

git add .
git ci -m "$MESSAGE"
# git push origin gh-pages

# restore to master
git co master
