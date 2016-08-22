class consul-template::install {
  exec { 'Installation of Consul Template':
    command => '/bin/cp -n /exchange/consul-template /usr/local/sbin',
  } ->

  exec { 'Make Consul Template executable':
    command => '/bin/chmod 755 /usr/local/sbin/consul-template'
  } ->


  file { '/etc/consul-template.d':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => '755',
  } ->

  file { '/etc/consul-template.conf':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '755',
    content => template('consul-template/etc/consul-template.conf'),
  } ->

  file { '/etc/init/consul-template.conf':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '644',
    content => template('consul-template/etc/init/consul-template.conf'),
  }

}
