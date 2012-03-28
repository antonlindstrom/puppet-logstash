# Class logstash::common
#
# Common class for logstash.
#
# Do not include this class directly in your manifests.
class logstash::common (
  $logstash_version = '1.1.0',
  $logstash_basedir = '/opt'
) {
  require logstash::params

  File {
    owner => $logstash::params::user,
    group => $logstash::params::group,
    mode  => '0444'
  }

  class { 'logstash::user': logstash_homeroot => $logstash_basedir }

  User  <| tag == 'logstash' |>
  Group <| tag == 'logstash' |>

  file {
    "${logstash_basedir}/logstash":
      ensure  => directory,
      require => User[$logstash::params::user];
    "${logstash_basedir}/logstash/config":
      ensure  => directory,
      require => File["${logstash_basedir}/logstash"];
    "${logstash_basedir}/logstash/logs":
      ensure  => directory,
      require => File["${logstash_basedir}/logstash"];
  }

  exec {
    'download logstash jar':
      command => "wget http://semicomplete.com/files/logstash/logstash-${logstash_version}-monolithic.jar",
      path    => ['/usr/bin'],
      cwd     => "${logstash_basedir}/logstash",
      require => File["${logstash_basedir}/logstash"],
      creates => "${logstash_basedir}/logstash/logstash-${logstash_version}-monolithic.jar";
  }
}
