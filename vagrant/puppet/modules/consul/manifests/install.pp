class consul::install {
  user { 'consul' : # creates also a group for Consul
      ensure => present,
      groups => ['root', 'sudo']
  } ->

  exec { 'Installation of Consul':
   command => '/bin/cp -n /exchange/consul /usr/local/sbin',
  } ->

  exec { 'Make Consul executable':
   command => '/bin/chmod 755 /usr/local/sbin/consul'
  } ->

  file { '/usr/local/share/consul/':
   ensure  => directory,
  } ->

  file { '/usr/local/share/consul/ui/':
   ensure        => directory,
   sourceselect  => all,
   recurse       => true,
   source        => 'puppet:///modules/consul/0.6.4'
  } ->


  file { ['/var/consul', '/var/run/consul/']:
    ensure  => 'directory',
    owner   => 'consul',
    group   => 'consul',
    mode    => '775',
  } ->

  file { '/etc/consul.d':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => '755',
  } ->

  file { '/etc/consul.conf':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '755',
    content => template('consul/etc/consul.conf'),
  } ->

  file { '/etc/init/consul.conf':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '644',
    content => template('consul/etc/init/consul.conf'),
  }


}
