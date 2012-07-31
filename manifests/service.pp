define logstash::service($ensure='running') {

  service { $name:
    ensure    => $ensure,
    subscribe => [
      Class['logstash::config'],
      Class['logstash::common'],
      Logstash::Initscript[$name],
    ],
  }

}
