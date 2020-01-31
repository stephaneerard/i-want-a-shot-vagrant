# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = false

  config.vm.network "private_network", ip: "192.168.50.4"


  config.vm.synced_folder "./", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
     vb.cpus = 2
  end
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    apt-get update
    apt-get install curl git-core -y
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
    source  ~/.nvm/nvm.sh
    nvm install 12.13.0
    npm install -g i-want-a-shot
  SHELL
end
