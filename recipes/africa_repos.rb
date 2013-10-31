#
# Cookbook Name:: http_caching_proxy
# Recipe:: africa-repos
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

cookbook_file '/etc/apt/sources.list' do
  source 'sources.list'
  mode 0755
  owner 'root'
  group 'root'
end

include_recipe 'apt::default'
