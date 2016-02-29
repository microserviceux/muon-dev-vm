# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "box-cutter/ubuntu1504-docker"

  # RabbitMQ
  config.vm.network "forwarded_port", guest: 5672, host: 5672
  # Molecule
  config.vm.network "forwarded_port", guest: 7274, host: 7274
   
  config.vm.provision "file", source: "menv", destination: "./bin/menv"
   config.vm.provision "shell", inline: <<-SHELL
     ./bin/menv init
   SHELL
end
