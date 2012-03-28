# Class: logstash::indexer
class logstash::indexer {
  require logstash::params
  include logstash::common

  logstash::initscript { 'logstash-indexer': ensure => present; }
}
