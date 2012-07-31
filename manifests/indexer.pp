# Class: logstash::indexer
class logstash::indexer {
  require logstash::params
  require logstash::config
  require logstash::common

  logstash::initscript { 'logstash-indexer':
    ensure => present,
    config => '/etc/logstash/indexer.conf',
  }

  logstash::service { 'logstash-indexer':
    ensure => running,
  }
}
