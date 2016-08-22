#
# Puppet Manifest for the timestamp service II
#

class { 'consul':
  bindIp      => '192.168.60.30',
}

class { 'timeservice':
  nodeID      => 'ts3'
}

include networking
include consul
include timeservice


Class[networking] -> Class[consul]
                  -> Class[timeservice]

