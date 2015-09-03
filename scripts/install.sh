#!/usr/bin/env bash
set -ex
VERSION="0.14"
SUFFIX="linux_amd64"

BASE="hugo_${VERSION}_${SUFFIX}"
FNAME="${BASE}.tar.gz"
DIRNAME="${BASE}"
BINNAME="${BASE}"

if [[ ! -f ~/bin/hugo ]]; then
    mkdir ~/hugo
    pushd ~/hugo
    wget https://github.com/spf13/hugo/releases/download/v${VERSION}/${FNAME}
    tar -xzvf ${FNAME}

    mkdir ~/bin || true
    mv ${DIRNAME}/${BINNAME} ~/bin/hugo
    popd
fi

