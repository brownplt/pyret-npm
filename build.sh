#!/bin/bash

git clone --single-branch -b anchor https://github.com/brownplt/pyret-lang.git

pushd pyret-lang
npm install
pyret -c src/arr/compiler/pyret.arr -o build/phaseA/pyret.jarr
popd

