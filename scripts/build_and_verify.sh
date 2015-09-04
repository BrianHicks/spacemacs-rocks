#!/usr/bin/env bash
set -e

rm -rf build || true
hugo -v

# TODO: make sure that generated output files (which is a separate TODO) are valid
