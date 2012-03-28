# puppet-logstash

WARNING: This module is still in development mode!

A puppet module for managing logstash indexers and shippers

logstash::indexer and logstash::shipper is *not yet* tested on the following distributions:

* CentOS 6.2
* Debian 5.0
* Ubuntu 10.04
* Ubuntu 11.10

## Usage

### Logstash indexer

To install the logstash indexer on a node, add the following to your node manifest:

    node 'node01.example.org' {
      class { 'logstash::indexer': }
    }

With parameters:

    node 'node01.example.org' {
      class { 'logstash::indexer':
        $logstash_version = '1.0.10',
        $logstash_basedir = '/usr/local';
      }
    }

This install the following components

* Logstash
* ElasticSearch
* RabbitMQ

If you already have ElasticSearch or RabbitMQ (or or any other AMQP broker you
might use) you can disable installation of them with the following parameters:

    node 'node01.example.org' {
      class { 'logstash::indexer':
        $include_elasticsearch = false,
        $include_rabbitmq = false;
      }
    }

### Logstash shipper

To install the logstash shipper on a node, add the following to your node manifest:

    node 'node01.example.org' {
      class { 'logstash::shipper': }
    }

With parameters:

    node 'node01.example.org' {
      class { 'logstash::shipper':
        $logstash_version = '1.0.10',
        $logstash_basedir = '/usr/local';
      }
    }

This install the following components

* Logstash
