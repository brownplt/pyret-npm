#!/bin/bash

git clone --single-branch -b server-dev https://github.com/brownplt/pyret-lang.git

pushd pyret-lang
node lib/jglr/rnglr.js
npm install
make phaseA libA
popd
npm-install-all pyret.js
npm-install-all client-lib.js

