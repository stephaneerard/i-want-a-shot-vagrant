#!/usr/bin/env bash

source ~/.nvm/nvm.sh
/vagrant/scripts/project.npm.update.sh $HOME/node-i-want-a-shot
/vagrant/scripts/project.npm.update.sh $HOME/node-i-want-a-shot-list
cd $HOME/node-i-want-a-shot-list && npm link i-want-a-shot
/vagrant/scripts/project.npm.update.sh $HOME/node-i-want-a-shot-everyday
cd $HOME/node-i-want-a-shot-everyday && npm link i-want-a-shot-list
