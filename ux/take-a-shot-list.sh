#!/usr/bin/env bash

args="$@"
vagrant ssh -c "take-a-shot-list.ts shot ${args}"
