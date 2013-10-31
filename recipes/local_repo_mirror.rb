# Cookbook Name:: http_caching_proxy
# Recipe:: local-apt-repos

cookbook_file '/etc/apt/sources.list' do
  source 'sources.list'
  mode 0755
  owner 'root'
  group 'root'
end

include_recipe 'apt::default'
