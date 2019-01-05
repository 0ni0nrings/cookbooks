# This is example of class equality check, Integer VS Integer
foo = 1
bar = 2
if foo.class.equal?(bar.class)
  puts "#{foo} is equal to #{bar}"
else
  puts "#{foo} is not equal to #{bar}"
end

# This is example of class equality check, String VS Integer
foo = 'Chef Rocks!'
bar = 2
if foo.class.equal?(bar.class)
  puts "#{foo} is equal to #{bar}"
else
  puts "#{foo} is not equal to #{bar}"
end
