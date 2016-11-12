# Muon Developer VM Environment

This vagrant based VM provides a developer support environment while developing Muon ecosystem based services.

It provides a set of services out of the box that give developer support and provide a basis for rapid development.

* Photon
* Molecule

This is a VM wrapper around the support environment at https://github.com/muoncore/muon-starter

## Getting Started

This is a standard Vagrant environment. You will need vagrant and virtual box installed as per the normal vagrant instructions. 

This has been tested against Vagrant 1.7.2 and Virtual Box 5. 

To get started, clone this repository and execute 

```
vagrant up
```

This will initialise the environment. It will take a few minutes to download the base box and initialise the container system and base services.

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

