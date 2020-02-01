#!/usr/bin/env bash
source ~/.nvm/nvm.sh

cd /vagrant/test

take-a-shot.ts shot "mere et fils"
take-a-shot-list.ts shot --query "mere et fils" --query "ligue du lol"
take-a-shot-everyday.ts shot "*/5 * * * *" --query "mere et fils" --query "ligue du lol"
