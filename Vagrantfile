# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "public_network", bridge: "enp0s3"
  config.vm.provider "virtualbox" do |vb|
	 vb.name = "test"
	 vb.cpus = 2
	 vb.memory = 4096
  end

  config.vm.hostname = "test"
  config.vm.define "gitlab"
  config.vm.provision "shell", path: "script.sh"

end
