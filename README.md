# About

Create a Vagrant machine using VirtualBox to run i-want-a-shot without friction.

# Requirements

Install these requirements

* VirtualBox >= 6.1 (https://www.virtualbox.org)
* Vagrant >= 2.2.7 (https://www.vagrantup.com)


# Usage
```bash
cd
git clone git@github.com:stephaneerard/i-want-a-shot-vagrant.git
cd i-want-a-shot-vagrant
vagrant up
vagrant ssh
```

Now that you are ssh'ing into the virtual machine, you can run i-want-a-shot

```bash
cd /vagrant # shared folder
take-a-shot.ts shot "your search"
```
