#!/usr/bin/env bash

args="$@"
vagrant ssh -c "take-a-shot.ts shot ${args}"
git.add.commit.sh "${args}"
