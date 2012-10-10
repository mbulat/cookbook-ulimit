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
