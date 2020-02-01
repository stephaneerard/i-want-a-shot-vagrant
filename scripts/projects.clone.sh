#!/usr/bin/env bash

source ~/.nvm/nvm.sh

/vagrant/scripts/project.npm.clone.sh https://github.com/stephaneerard/node-i-want-a-shot.git $HOME/node-i-want-a-shot
/vagrant/scripts/project.npm.clone.sh https://github.com/stephaneerard/node-i-want-a-shot-list.git $HOME/node-i-want-a-shot-list
cd $HOME/node-i-want-a-shot-list && npm link i-want-a-shot
/vagrant/scripts/project.npm.clone.sh https://github.com/stephaneerard/node-i-want-a-shot-everyday.git $HOME/node-i-want-a-shot-everyday
cd $HOME/node-i-want-a-shot-everyday && npm link i-want-a-shot-list
