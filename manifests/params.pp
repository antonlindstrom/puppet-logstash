# Class: logstash::params
#
# Sets internal variables and defaults for the logstash module.
# This class is automatically loaded into classes that uses values set here.
class logstash::params {
  $bin_dir = '/usr/local/bin'
  $etc_dir = '/etc/logstash'
  $group   = 'logstash'
  $log_dir = '/var/log'
  $pid_dir = '/var/run'
  $user    = 'logstash'
}
