# Muon Developer VM Environment

This vagrant based VM provides a rich developer support environment while developing Muon ecosystem based services.

It provides a set of services out of the box that give developer support and provide a basis for rapid development.

* Photon
* Molecule
* MuonJS Gateway

Integrated into Molecule is a Docker compose based environment switcher. This gives appstore style access to a variety of different environments, addons and community provided services. These can be downloaded with a click and then managed from within Molecule

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

Try visiting the Molecule UI, which will be available on your local machine on port 7274 - http://localhost:7274
