# Class: logstash::user
#
# logstash_homeroot must be passed.
class logstash::user (
  $logstash_homeroot = undef
) {
  require logstash::params

  User {
    ensure     => present,
    managehome => true,
    shell      => '/bin/false',
    system     => true
  }

  Group {
    ensure  => present,
    require => User[$logstash::params::user]
  }

  @user { $logstash::params::user:
    comment => 'logstash system account',
    tag     => 'logstash',
    uid     => '3300',
    home    => "${logstash_homeroot}/logstash";
  }

  @group { $logstash::params::group:
    gid => '3300',
    tag => 'logstash';
  }
}
