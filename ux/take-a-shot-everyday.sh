#!/usr/bin/env bash

args="$@"
vagrant ssh -c "take-a-shot-everyday.ts shot ${args}"