#
# Puppet Manifest for the HAProxy instance
#

class { 'consul':
  bindIp      => '192.168.60.210'
}

class { 'consul-template':
  templates => {
    template1 => {
      source      => '/etc/consul-template.d/haproxy.cfg.ctmpl',
      destination => '/etc/haproxy/haproxy.cfg',
      command     => 'sudo service haproxy reload'
    }
  },
}

include consul
include haproxy
include consul-template
include networking

Class[networking] -> Class[consul]
                  -> Class[haproxy]
                  -> Class[consul-template]


