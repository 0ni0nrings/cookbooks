package "vim" do
  action :install
end

cookbook_file "/etc/vimrc" do
  source "default/vimrc"
end

