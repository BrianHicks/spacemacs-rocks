#!/usr/bin/env bash
set -e
if [[ "$(git status --porcelain)" != "" ]]; then
    echo publish should only be run on a clean working directory
    exit 1
fi

TEMP=$(mktemp -d -t spacemacs-rocks.XXXX)
git submodule update
scripts/hugo.sh -d $TEMP
MESSAGE="$(git show --abbrev-commit --oneline --no-patch) (update from master content)"

# move to gh-pages to place content
git checkout gh-pages

# remove all the content to let the rendered replace it
git ls-files | grep -v -e README.md -e .gitignore -e CNAME | xargs rm -rf
find * -empty -type d -delete

mv ${TEMP}/* .
rmdir $TEMP

git add -A .
git commit -m "$MESSAGE" || exit 2

# restore to master
git checkout master
