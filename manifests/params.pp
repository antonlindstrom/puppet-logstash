# Class: logstash::params
#
# Sets internal variables and defaults for the logstash module.
# This class is automatically loaded into classes that uses values set here.
class logstash::params {
  $bin_dir = '/usr/local/bin'
  $etc_dir = '/etc/logstash'
  $log_dir = '/var/log/logstash'
  $pid_dir = '/var/run/logstash'
  $user    = 'logstash'
  $group   = 'logstash'
}
