# Class: logstash::shipper
class logstash::shipper {
  require logstash::params
  require logstash::common

  file { '/etc/logstash/shipper.conf':
    ensure  => present,
    source  => 'puppet:///modules/logstash/shipper/shipper.conf',
    require => File[$logstash::params::etc_dir];
  }

  logstash::initscript { 'logstash-shipper':
    ensure => present,
    config => '/etc/logstash/shipper.conf',
  }

  logstash::service { 'logstash-shipper':
    ensure => running,
  }

}
