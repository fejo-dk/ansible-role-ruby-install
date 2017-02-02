control "ansible-role-ruby-install" do
  title "ansible-role-ruby-install role check"

  describe file('/etc/bash_aliases') do
      it { should exist }
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_readable.by_user('root') }
      its('content') { should match(%r{alias test-alias='test-command'}) }
    end
end
