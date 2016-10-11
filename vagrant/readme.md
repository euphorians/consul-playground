# Running Consul in a Vagrant environment

This directory contains the Vagrant environment required to run
the example Consulcluster.

## Starting the Consul cluster

1. Running `vagrant status` should list serveral VM in 
   status `not created (virtualbox)`.
2. Running `vagrant up` will start all VM. This takes some
   time.

## Using the Web UI of Consul

1. Open your favorite browser and open `http://localhost:8500/ui/`

## Connecting to the VM

You can login at each machine via `vagrant ssh machinename`. Don't
forget to replace `machinename` by the name of VM given as 
the output of `vagrant status`.

