#
# Cookbook:: lcd_web
# Recipe:: default
#
# Copyright:: 2019, John Doe, All Rights Reserved.

['net-tools','httpd'].each do |pkg|
  package pkg do
    action :install
    end
end

service 'httpd' do
  action [:enable, :start]
end

