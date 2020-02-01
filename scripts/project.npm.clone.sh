#!/usr/bin/env bash

source ~/.nvm/nvm.sh

cd ~
git clone $1
cd $2
npm install --force
npm link
