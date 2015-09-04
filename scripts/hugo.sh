#!/usr/bin/env bash
mkdir -p ${HOME}/cache || true
hugo --cacheDir=${HOME}/cache $@
