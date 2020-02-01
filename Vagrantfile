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
  config.vm.provision "shell", name: "system.install", privileged: false, path: "./scripts/system.install.sh"
  config.vm.provision "shell", name: "projects.clone", privileged: false, path: "./scripts/projects.clone.sh"
end
