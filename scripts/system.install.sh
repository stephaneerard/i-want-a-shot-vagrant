#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y \
  curl \
  git-core \
  gconf-service \
  libasound2 \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libc6 \
  libcairo2 \
  libcups2 \
  libdbus-1-3 \
  libexpat1 \
  libfontconfig1 \
  libgcc1 \
  libgconf-2-4 \
  libgdk-pixbuf2.0-0 \
  libglib2.0-0 \
  libgtk-3-0 \
  libnspr4 \
  libpango-1.0-0 \
  libpangocairo-1.0-0 \
  libstdc++6 \
  libx11-6 \
  libx11-xcb1 \
  libxcb1 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxext6 \
  libxfixes3 \
  libxi6 \
  libxrandr2 \
  libxrender1 \
  libxss1 \
  libxtst6 \
  ca-certificates \
  fonts-liberation \
  libappindicator1 \
  libnss3 \
  lsb-release \
  xdg-utils \
  wget
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 12.13.0
source ~/.nvm/nvm.sh
npm i -g pnpm
sudo sysctl -w kernel.unprivileged_userns_clone=1
echo "cd /vagrant/test" >>$HOME/.bashrc
(test ! -d /vagrant/test && mkdir /vagrant/test) || true
sudo cp /vagrant/files/nvm.load.sh /etc/profile.d/nvm.load.sh
