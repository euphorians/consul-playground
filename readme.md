# Consul Example Cluster

This project allows you to setup a Vagrant based Consul
cluster on your local machine and to explore how
Consul works.

## Requirements

To setup this example project you need the following
tools on you machine:

- [Packer](https://www.packer.io/)
- [Vagrant](http://vagrantup.com/)
- [curl](https://curl.haxx.se/)

**Packer** is used to create a specialised Vagrant box
to speed up the provisioning of the virtual machines.  
**Vagrant** is used to run the virtual machines the Consul
cluster consists of.  
**curl** is used to fetch all required Consul artifacts
from the Internet.  

## Compatiblity

The setup of the Consul cluster has been tested only
on Apple OS X.

## Setup of the example cluster

1. Package Ubuntu 14.04.1 for Vagrant as descripted
   in the [`readme.md` of the directory packaging](./packaging/).
