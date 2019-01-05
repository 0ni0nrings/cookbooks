file "#{ENV['TEMP']}/stone.txt" do
  content 'Written in stone'
end

file "#{ENV['TEMP']}/stone.txt" do
  action :delete
end
