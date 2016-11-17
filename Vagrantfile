# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |v|
    v.name = "muon-dev-vm"
  end

  config.vm.synced_folder '.', '/vagrant', disabled: true
  
  # RabbitMQ
  config.vm.network "forwarded_port", guest: 5672, host: 5672
  config.vm.network "forwarded_port", guest: 15672, host: 15672
  
  # Molecule
  config.vm.network "forwarded_port", guest: 3420, host: 3420
  # Menv endpoint
  config.vm.network "forwarded_port", guest: 7274, host: 7274

  config.vm.network "forwarded_port", guest: 3000, host: 3000 

  config.vm.provision "file", source: "menv", destination: "./bin/menv"

   config.vm.provision "shell", inline: <<-SHELL
     ./bin/menv init
   SHELL
end
