#!/bin/bash

node build.js

pushd pyret-lang
npm install
make phaseA libA
popd

