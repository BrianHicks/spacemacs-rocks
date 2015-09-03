#!/usr/bin/env bash
set -e
chmod 600 ~/.ssh/id_rsa
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
git remote add deploy git@github.com:BrianHicks/spacemacs-rocks.git
git fetch deploy gh-pages

scripts/publish.sh && STATUS=0 || STATUS=$?

if [[ $STATUS == 0 ]]; then
    git push deploy gh-pages
    git remote remove deploy
fi

# 1 is the error status from publish, so leave it

if [[ $STATUS == 2 ]]; then
    echo "no changes made to push"
fi
