free_memory = node['memory']['total']
file 'C:\\Users\\vagrant\\AppData\\Local\\Temp\\1\\free_memory.txt' do
  content "#{free_memory} bytes free on #{Time.now}"
end
