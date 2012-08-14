# Class logstash::common
#
# Common class for logstash.
#
# Do not include this class directly in your manifests.
class logstash::common (
  $logstash_version = '1.1.1',
) {
  require logstash::params

  $bin_file = "${logstash::params::bin_dir}/logstash-${logstash_version}-monolithic.jar"
  $source   = "http://semicomplete.com/files/logstash/logstash-${logstash_version}-monolithic.jar"

  package { 'openjdk-7-jre-headless':
    ensure => present,
  }

  file {
    $logstash::params::bin_dir: ensure => directory;
    $logstash::params::etc_dir: ensure => directory;
  }

  exec { 'download logstash jar':
    command => "wget ${source}",
    path    => ['/usr/bin'],
    cwd     => $logstash::params::bin_dir,
    require => File["${logstash::params::bin_dir}"],
    creates => $bin_file,
  }

}
