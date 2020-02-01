# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-buster64"
  config.vm.box_check_update = false

  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.synced_folder "./", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
     vb.cpus = 2
  end
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y curl git-core \
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
    source  ~/.nvm/nvm.sh
    nvm install 12.13.0
    npm i -g pnpm
    git clone https://github.com/stephaneerard/node-i-want-a-shot-list.git
    cd node-i-want-a-shot-list
    pnpm install
    npm link
    cd
    git clone https://github.com/stephaneerard/node-i-want-a-shot.git
    cd node-i-want-a-shot
    pnpm install
    npm link
    git clone https://github.com/stephaneerard/node-i-want-a-shot-everyday.git
    cd node-i-want-a-shot-everyday
    pnpm install
    npm link
    sudo sysctl -w kernel.unprivileged_userns_clone=1
    echo "cd /vagrant/test" >> $HOME/.bashrc
    mkdir /vagrant/test
    echo "You can now run `vagrant ssh` to log into this machine and run some fancy things."
  SHELL
end
