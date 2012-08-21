require 'spec_helper'

describe 'logstash::service', :type => :define do
  let(:title) { 'logstash-indexer' }

  it { should contain_service('logstash-indexer') }
end
