# Muon Developer VM Environment

This vagrant based VM provides a developer support environment while developing Muon ecosystem based services.

It provides a set of services out of the box that give developer support and provide a basis for rapid development.

* Photon
* Molecule

This is a VM wrapper around the support environment at https://github.com/muoncore/muon-starter

If you already have Docker Compose running in your dev environment, you can consider using that directly, instead of this VM.

## Getting Started

The easiest way to use this VM is to use the prebuilt boxes.

These take no time to build, but do require downloading a larger base box. You will not need to download this repository

On your dev machine, outside of this repository.

```
vagrant box add "https://s3-eu-west-1.amazonaws.com/muon-dev-vm/1.0.box"
```

Then, when you want a new muon dev environment

```
mkdir muon-dev-vm
vagrant init muon-dev-vm
vagrant up
```

## Building This Box

You can use this box directly from source if you wish. This will take approximately 10-15 minutes to fully build.

This is a standard Vagrant environment. You will need vagrant and virtual box installed as per the normal vagrant instructions. 

This has been tested against Vagrant 1.7.2 and Virtual Box 5. 

To get started, clone this repository and execute 

```
vagrant up
```

This will initialise the environment. It will take a few minutes to download the underlying base box, initialise the container system and software and download and create the base services.

Once finished, you will see the message

```
Dev Environment Ready
```

You can now begin to develop using the environment.

Try to ssh into the VM to use the 'menv' command line tool.

```vagrant ssh```

```menv list```

If you ssh into the VM, the muon cli is installed.

```muon discover```

