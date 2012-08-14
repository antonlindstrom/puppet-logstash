# Class: logstash::indexer
class logstash::indexer {
  require logstash::params
  require logstash::common

  file { '/etc/logstash/indexer.conf':
    ensure  => present,
    source  => 'puppet:///modules/logstash/indexer/indexer.conf',
    require => File[$logstash::params::etc_dir];
  }

  logstash::initscript { 'logstash-indexer':
    ensure => present,
    config => '/etc/logstash/indexer.conf',
  }

  logstash::service { 'logstash-indexer':
    ensure => running,
  }
}
