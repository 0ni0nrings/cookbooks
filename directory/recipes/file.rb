#
# Cookbook:: directory
# Recipe:: file
#
# Copyright:: 2018, The Authors, All Rights Reserved.

file 'C:\\Users\\public\\desktop\\hello.txt' do
  content 'hello this is bootstrap testing'
  action :create
  not_if { ::File.exists?('C:\\Users\\public\\desktop\\hello.txt') } 
end
