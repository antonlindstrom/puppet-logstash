class logstash::config {

  file { '/etc/logstash':
    ensure => directory,
  }

  file { '/etc/logstash/shipper.conf':
    ensure  => present,
    source  => 'puppet:///modules/logstash/shipper.conf',
    require => File['/etc/logstash'],
  }

  file { '/etc/logstash/indexer.conf':
    ensure  => present,
    source  => 'puppet:///modules/logstash/indexer.conf',
    require => File['/etc/logstash'],
  }

}
