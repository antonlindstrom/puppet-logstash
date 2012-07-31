# Class: logstash::shipper
class logstash::shipper {
  require logstash::params
  require logstash::config
  require logstash::common

  logstash::initscript { 'logstash-shipper':
    ensure => present,
    config => '/etc/logstash/shipper.conf',
  }

  logstash::service { 'logstash-shipper':
    ensure => running,
  }

}
