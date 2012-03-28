# Class: logstash::agent
class logstash::agent {
  require logstash::params
  include logstash::common
}
