require 'spec_helper'

describe 'tomcat::install::package', :type => :define do
  let :pre_condition do
    'class { "tomcat": }'
  end
  let :title do
    'tomcat'
  end
  context 'private class fails' do
    let :facts do
      {
        :osfamily => 'Debian'
      }
    end
    it do
      expect {
        should compile
      }.to raise_error(Puppet::Error, /Use of private class/)
    end
  end
end