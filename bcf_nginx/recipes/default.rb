package "epel-release" do
  action :install
end 

package "nginx" do
  action :install
end

service "nginx" do
  action [:enable, :start]
 #subscribes :reload, 'file[/etc/nginx/example.conf]'
end

file "/usr/share/nginx/html/index.html" do
  content "<h1>Hello, World!</h1>"
  action :create
  not_if { ::File.exists?("/usr/share/nginx/html/index.html") }
end

#file '/etc/nginx/example.conf' do
 # content 'example content updated'
 # notifies :reload, 'service[nginx]', :before
#end

