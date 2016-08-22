#
# Puppet Manifest for the Consul Web UI
#

class { 'consul':
  serverMode  => false,
  servUI      => true,
  bindIp      => '192.168.60.250'
}

include networking
include consul

Class[networking] -> Class[consul]
