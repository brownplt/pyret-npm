#!/bin/bash

git clone --single-branch -b server-dev https://github.com/brownplt/pyret-lang.git

pushd pyret-lang
npm install
make phaseA libA
popd

