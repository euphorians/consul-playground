#
# Puppet Manifest for the Consul server
#

class { 'consul':
  serverMode  => true,
  bindIp      => '192.168.60.100'
}

include consul
include networking

Class[networking] -> Class[consul]


