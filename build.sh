#!/bin/bash
set -e

git clone --single-branch -b horizon https://github.com/brownplt/pyret-lang.git

pushd pyret-lang
npm install
make phaseA libA
touch .npmignore
popd

