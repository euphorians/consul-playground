#
# Puppet Manifest for the timestamp service I
#

class { 'consul':
  bindIp      => '192.168.60.10',
}

class {'timeservice' :
  nodeID => 'ts1'
}


include consul
include networking
include timeservice


Class[networking] -> Class[consul]
                  -> Class[timeservice]
