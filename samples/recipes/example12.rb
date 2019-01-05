['bacon', 'egg', 'sausage'].each do |type|
  file "C:\\Users\\vagrant\\AppData\\Local\\Temp\\1\\#{type}.txt" do
    content "#{type} is delicious"
  end
end
