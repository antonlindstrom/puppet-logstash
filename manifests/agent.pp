# Class: logstash::agent
class logstash::agent {
  require logstash::params
  include logstash::common

  logstash::initscript { 'logstash-agent': ensure => present; }
}
