# Define: logstash::initscript
#
# Simple wrapper to generate initscripts for logstash-services
define logstash::initscript ($ensure = undef) {
  case $ensure {
    'absent': {
      file { $name: ensure => $ensure; }
    }

    default: {
      file { $name:
        path    => "/etc/init.d/${name}",
        owner   => 'root',
        group   => 'root',
        mode    => '0555',
        content => template('logstash/initscript/logstash-init.erb');
      }
    }
  }
}
