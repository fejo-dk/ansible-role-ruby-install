control "ansible-role-ruby-install" do
  title "ansible-role-ruby-install role check"

  describe directory('/usr/local/share/doc/ruby-install-0.6.0') do
      it { should exist }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_readable.by_user('root') }
  end

  describe file('/tmp/ruby-install-0.6.0.tar.gz') do
      it { should_not exist }
  end

  describe directory('/tmp/ruby-install-0.6.0') do
      it { should_not exist }
  end

  describe file('/usr/local/bin/ruby-install') do
      it { should exist }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_readable.by_user('root') }
      its('mode') { should cmp '0755' }
  end
end
