#
# Cookbook Name:: ulimit
# Recipe:: default
#
# Copyright 2012, Jeff Eklund <jeff.eklund@gmail.com>
#

template "/etc/security/limits.conf" do
  mode "0644"
  owner "root"
  group "root"
  source "limits.conf.erb"
  variables(:limits => node[:ulimit][:limits])
end

ruby_block "insert_line" do
  block do
    file = Chef::Util::FileEdit.new("/etc/pam.d/su")
    file.insert_line_if_no_match("/session required pam_limits.so/", "session required pam_limits.so")
    file.write_file
  end
end
