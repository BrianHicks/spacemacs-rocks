#!/usr/bin/env bash
set -x
git pull

scripts/publish.sh
STATUS=$?
set -e

if [[ $STATUS == 0 ]]; then
    eval $(ssh-agent -s)
    chmod 600 ~/.ssh/id_rsa
    ssh-add ~/.ssh/id_rsa
    git remote add deploy git@github.com:BrianHicks/spacemacs-rocks.git
    git push deploy gh-pages
    git remote remove deploy
fi
