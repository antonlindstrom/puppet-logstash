require 'spec_helper'

describe 'logstash::common', :type => :class do
  let(:facts) { {:fqdn => 'test.example.com' } }

  it { should contain_package('openjdk-7-jre-headless').with_ensure('present') }
  it { should contain_file('/usr/local/bin').with_ensure('directory') }
  it { should contain_exec('download logstash jar') }

end
