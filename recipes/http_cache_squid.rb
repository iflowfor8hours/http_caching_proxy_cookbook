# Cookbook Name:: http_caching_proxy
# Recipe:: http_cache_squid
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# Create cache path on attribute
directory node.http_caching_proxy.cache_path do
  owner node.nginx.user
  group node.nginx.user
  action :create
end

template 'http_proxy' do
  path "#{node.nginx.dir}/sites-available/http-proxy.conf"
  source 'http-proxy.erb'
end

link "#{node.nginx.dir}/sites-enabled/http-proxy" do
  to "#{node.nginx.dir}/sites-available/http-proxy.conf" 
end

#restart nginx
