# Vagrant Setup

## Installation
1. Install Virtualbox 
   1. `brew install virtualbox` or [download](https://www.virtualbox.org/wiki/Downloads)
2. Provision the virtual machine with `vagrant up` in this directory
3. SSH into vagrant box `vagrant ssh`
> Since Minikube was provisioned as root, for now all `kubectl` commands need to be executed with `sudo` or `root`  user. Until updates made to provision with non-priviledged user

## Vagrant Helpful Commands
- `vagrant reload` to restart the VM
- `vagrant destroy` to destroy the VM

## Structure
In the `Vagrantfile` the scripts folder is mount at `/scripts` inside the virtual machine.

## Resources
- CLI commands `vagrant -h` for available command line options
- [Vagrant Documentation](https://developer.hashicorp.com/vagrant/docs) for other configurations
