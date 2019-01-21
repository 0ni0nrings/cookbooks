#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

search("users", "id:Alice OR id:Bob OR id:Eve").each do |user_data|
  user user_data["id"] do
    comment user_data["comment"]
    uid user_data["uid"]
    gid user_data["gid"]
    home user_data["home"]
    shell user_data["shell"]
  end
end

