# Packaging Ubuntu 14.04.1 for Vagrant

This directory contains the needed configuration for 
[Packer](https://packer.io/) to create a container image
for the Vagrantbox used in this example.

To created the Vagrantbox image type the following 
on the commandline:

    $ cd packaging
    $ rm -r -f output-virtualbox-iso target
    $ packer build server.json
    $ vagrant box add consul-example-box target/ubuntu-14.04.4-amd64.box
    
    
## Possible Problems

- If changes done to the created Vagrant base box does not
  apply to the running box started via `vagrant up` 
  please check the following:
    * Check if the also created VirtualBox appliance in the
      folder `output-virtualbox-iso` contains them.
    * If the changes have been applied to the Virtualbox
      appliance please clean the `~/.vagrant.d` 
      and `<project root>/vagrant/.vagrant`. There might
      be a cached copy of the created Vagrant base box.
      
