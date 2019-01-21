#
# Cookbook:: lcd_web
# Recipe:: default
#
# Copyright:: 2019, John Doe, All Rights Reserved.

package 'httpd' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end

