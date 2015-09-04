#!/usr/bin/env bash
mkdir -p ${HOME}/cache || true
hugo -v --cacheDir=${HOME}/cache $@
