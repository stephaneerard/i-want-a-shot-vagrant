#!/usr/bin/env bash

cd $1
git clean --force
git reset --hard HEAD
git pull
npm update
