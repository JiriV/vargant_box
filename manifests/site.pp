#  exec { 'Update apg-get':
#    command => '/usr/bin/apt-get update',
#  }

#    package {'wget':
#      ensure => present,
#    }
#    package {'python-software-properties':
#      ensure => present,
#    }
#    package {'tzdata':
#	ensure => present,
#	}

#    package {'ca-certificates-java':
#	ensure => present,
#	}
#    package {'tzdata-java':
#      ensure => present,
#    }
#    package {'java-common':
#      ensure => present,
#    }
#    package {'libcups2':
#      ensure => present,
#    }
#    package {'liblcms2-2':
#      ensure => present,
#    }
#    package {'libjpeg8':
#      ensure => present,
#    }
#    package {'libnss3-1d':
#      ensure => present,
#    }
#    package {'libpcsclite1':
#      ensure => present,
#    }

#     package {'libfontconfig1':
#      ensure => present,
#    }
#   package {'java7-runtime-headless':
#      ensure => present,
#    }
  exec { 'Install java7-runtime-headless':
    command => '/usr/bin/apt-get install java7-runtime-headless',
  }

  exec { 'Install elasticsearch':
    command => '/usr/bin/dpkg -i /tmp/puppet/elasticsearch-1.2.1.deb',
  }
  exec { 'Install logstash':
    command => '/usr/bin/dpkg -i /tmp/puppet/logstash_1.4.2-1-2c0f5a1_all.deb',
  }
  exec { 'Install all':
    command => '/usr/bin/apt-get -y -f install',
  }



#  exec { 'Getting GPG key for repository elacticsearch':
#    command => '/usr/bin/wget -O /tmp/GPG-KEY-elasticsearch http://packages.elasticsearch.org/GPG-KEY-elasticsearch',
#  }
#  exec { 'Add GPG key for elacticsearch':
#    command => '/usr/bin/apt-key add /tmp/GPG-KEY-elasticsearch',
#  }
#  exec { 'Add repository for elasticsearch 1.0':
#    command => '/usr/bin/add-apt-repository "deb http://packages.elasticsearch.org/elasticsearch/1.0/debian stable main"',
#  }

#  exec { 'Add repository for logstash 1.3':
#    command => '/usr/bin/add-apt-repository "deb http://packages.elasticsearch.org/logstash/1.3/debian stable main"',
#  }

#  exec { 'Update apg-get second time':
#    command => '/usr/bin/apt-get update',
#  }

#    package {'elasticsearch':
#      ensure => present,
#    }
#    package {'logstash':
#      ensure => present,
#    }
#    package {'Kibana':
#      ensure => present,
#    }




#import 'classes/*.pp'

#import 'nodes/*.pp'
