node.default['iis']['home']        = "#{ENV['WINDIR']}\\System32\\inetsrv"
node.default['iis']['conf_dir']    = "#{ENV['WINDIR']}\\System32\\inetsrv\\config"
node.default['iis']['pubroot']     = "D:\\inetpub"
node.default['iis']['docroot']     = "D:\\inetpub\\wwwroot"
node.default['iis']['cache_dir']   = "D:\\inetpub\\temp"
node.default['iis']['log_dir']     = "D:\\inetpub\\logs\\LogFiles"
#default['iis']['components']  = ['Web-Common-Http', 'Web-Static-Content', 'Web-Default-Doc', 'Web-Dir-Browsing', 'Web-Http-Errors', 'Web-Http-Redirect', 'Web-App-Dev', 'Web-ASP-Net45', 'Web-Net-Ext45', 'Web-ASP', 'Web-CGI', 'Web-ISAPI-Ext']
node.default['iis']['components']  = %w[IIS-WebServerRole IIS-WebServer IIS-CommonHttpFeatures IIS-Security IIS-RequestFiltering
IIS-StaticContent IIS-DefaultDocument IIS-DirectoryBrowsing IIS-HttpErrors IIS-HttpRedirect IIS-ApplicationDevelopment
IIS-NetFxExtensibility IIS-NetFxExtensibility45 IIS-ISAPIExtensions IIS-ISAPIFilter IIS-ASPNET IIS-ASPNET45 IIS-ASP
IIS-CGI IIS-ServerSideIncludes IIS-HealthAndDiagnostics IIS-HttpLogging IIS-RequestMonitor IIS-WindowsAuthentication
IIS-URLAuthorization IIS-Performance IIS-HttpCompressionStatic IIS-WebServerManagementTools IIS-ManagementConsole
IIS-LegacySnapIn IIS-ManagementScriptingTools IIS-ManagementService IIS-IIS6ManagementCompatibility IIS-Metabase IIS-WMICompatibility IIS-LegacyScripts]

node.default['iis']['source'] = nil

node.default['iis']['recycle']['log_events'] = 'Time, Requests, Schedule, Memory, IsapiUnhealthy, OnDemand, ConfigChange, PrivateMemory'
