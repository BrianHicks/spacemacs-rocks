#!/usr/bin/env bash
set -e

rm -rf build || true
scripts/hugo.sh

# TODO: make sure that generated output files (which is a separate TODO) are valid
