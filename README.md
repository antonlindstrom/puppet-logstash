# puppet-logstash

A puppet module for managing logstash indexers and shippers

Adding a better way to change configuration should be added.

Tested on Ubuntu 12.04 Precise Penguin.

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
      }
    }

This install the following components

* Logstash

### Logstash shipper

To install the logstash shipper on a node, add the following to your node manifest:

    node 'node01.example.org' {
      class { 'logstash::shipper': }
    }

With parameters:

    node 'node01.example.org' {
      class { 'logstash::shipper':
        $logstash_version = '1.0.10',
      }
    }

This install the following components

* Logstash

## Other components

Components such as elasticsearch, grok or redis should be installed with their own
modules.
