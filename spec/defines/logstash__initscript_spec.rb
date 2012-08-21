require 'spec_helper'

describe 'logstash::initscript', :type => :define do
  let(:title)  { 'logstash-indexer' }
  let(:params) { { :config => '/etc/logstash/indexer.conf' } }

  it { should contain_file('logstash-indexer')}
end
