#!/usr/bin/env bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
args="$@"
vagrant ssh -c "take-a-shot-everyday.ts shot ${args}"
$dir/git.add.commit.sh "${args}"
