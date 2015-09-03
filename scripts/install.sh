#!/usr/bin/env bash
set -ex
VERSION="0.14"
SUFFIX="linux_amd64"

if [[ ! -d hugo ]]; then
    mkdir hugo && pushd hugo
    wget https://github.com/spf13/hugo/releases/download/v${VERSION}/hugo_${VERSION}_${SUFFIX}.tar.gz
    tar -xzvf hugo*.tar.gz
    mv hugo_${VERSION}_${SUFFIX}/hugo_${VERSION}_${SUFFIX} hugo
    popd
fi

export PATH=hugo:$PATH
