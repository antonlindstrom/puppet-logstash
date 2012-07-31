# Class: logstash::params
#
# Sets internal variables and defaults for the logstash module.
# This class is automatically loaded into classes that uses values set here.
class logstash::params {
  $user       = 'logstash'
  $group      = 'logstash'
  $log_dir    = '/var/log'
  $bin_dir    = '/usr/local/bin'
  $pid_dir    = '/var/run'
}
