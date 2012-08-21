# Class logstash::common
#
# Common class for logstash.
#
# Do not include this class directly in your manifests.
class logstash::common (
  $logstash_version = '1.1.1',
) {
  require logstash::params

  $jar_file = "logstash-${logstash_version}-monolithic.jar"
  $bin_file = "${logstash::params::bin_dir}/${jar_file}"
  $source   = "http://semicomplete.com/files/logstash/${jar_file}"

  package { 'openjdk-7-jre-headless':
    ensure => present,
  }

  file {
    $logstash::params::bin_dir: ensure => directory;
    $logstash::params::etc_dir: ensure => directory;
    $logstash::params::log_dir: ensure => directory;
    $logstash::params::run_dir: ensure => directory;
  }

  exec { 'download logstash jar':
    command => "wget ${source}",
    path    => ['/usr/bin'],
    cwd     => $logstash::params::bin_dir,
    require => File[$logstash::params::bin_dir],
    creates => $bin_file,
  }

}
