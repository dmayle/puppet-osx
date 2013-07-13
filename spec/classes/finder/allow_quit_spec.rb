require 'spec_helper'

describe 'osx::finder::allow_quit' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  describe 'enabled' do
    let(:params) { {:enabled => true} }
    it 'should set the value to "true"' do
      should contain_boxen__osx_defaults('Toggle the Ability to Quit Finder').with({
        :key    => 'QuitMenuItem',
        :domain => 'com.apple.finder',
        :value  => true,
        :notify => 'Exec[killall Finder]',
        :user   => facts[:boxen_user]
      })
    end
  end

end