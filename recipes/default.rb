#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'nginx'

service 'nginx' do
  action [ :enable, :start ]
end

include_recipe "nodejs"
nodejs_npm 'pm2'
