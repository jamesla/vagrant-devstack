require 'spec_helper'

describe command('cd /home/vagrant/devstack-repo && ./run_tests.sh') do
  its(:exit_status) { should be eq 0 }
end

describe command('openstack service list') do
  its(:stdout) { should contain ('nova') }
  its(:stdout) { should contain ('neutron') }
  its(:stdout) { should contain ('cinder') }
  its(:stdout) { should contain ('nova') }
end

describe port('80') do
  it {should be_listening.with('tcp') }
end

describe command('curl http://localhost:80') do
  its(:stdout) { should contain ('dashboard') }
end
