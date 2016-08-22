class networking {
  host { 'haproxy':
    ip           => '192.168.60.210',
    host_aliases => ['haproxy'],
  }

  host { 'timeservice1':
    ip           => '192.168.60.10',
    host_aliases => ['t1'],
  }

  host { 'timeservice2':
    ip           => '192.168.60.20',
    host_aliases => ['t2'],
  }

  host { 'timeservice3':
    ip           => '192.168.60.30',
    host_aliases => ['t3'],
  }

  host { 'consul-a':
    ip           => '192.168.60.120',
    host_aliases => ['consul-a'],
  }

  host { 'consul-b' :
      ip => '192.168.60.110',
      host_aliases => ['consul-b'],
  }

  host { 'consul-c' :
      ip => '192.168.60.100',
      host_aliases => ['consul-c'],
  }

  host { 'webui' :
      ip => '192.168.60.220',
      host_aliases => ['ui'],
  }

}
