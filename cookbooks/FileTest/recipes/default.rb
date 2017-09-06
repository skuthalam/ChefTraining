#
# Cookbook:: FileTest
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file '/var/log/MyLogFile' do
	content "This is the First Message\n"
	action :nothing
end
execute 'TestHosts' do
	command 'echo "127.0.0.1 localhost loghost" >> /tmp/HOSTS'
	only_if 'grep "127.0.0.1" /etc/hosts'
end
