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

template "/etc/pam.d/su" do
  mode "0644"
  owner "root"
  group "root"
  source "su.erb"
end
