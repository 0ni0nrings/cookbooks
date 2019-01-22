#
# Cookbook:: windows_iis
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
=begin
# Default way to Install IIS but this uses DISM instead of PowerShell
# DISM / Get-WindowsOptionalFeature
%w{Web-Server Web-WebServer}.each do |feature|
  windows_feature feature do
    action :install
  end
end

service 'w3svc' do
  action [:start, :enable]
end
=end

# PowerShell way to do Install IIS
# $Features | ForEach-Object {Add-WindowsFeature $_}
powershell_script 'Install IIS' do
  code <<-EOH
  $Features = @('Web-Server', 'Web-WebServer')
  ForEach-Object -InputObject $Features | Add-WindowsFeature $_
  EOH
  guard_interpreter :powershell_script
  not_if "(ForEach-Object -InputObject ($Features) {(Get-WindowsFeature $_).Installed})"
end

service 'w3svc' do
  action [:start, :enable]
end
