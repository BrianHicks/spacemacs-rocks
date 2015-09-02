#!/usr/bin/env bash
set -ex
rm -rf public || true
git submodule update
hugo
