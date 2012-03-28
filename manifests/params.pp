# Class: logstash::params
#
# Sets internal variables and defaults for the logstash module.
# This class is automatically loaded into classes that uses values set here.
class logstash::params {
  $user  = 'logstash'
  $group = 'logstash'
}
