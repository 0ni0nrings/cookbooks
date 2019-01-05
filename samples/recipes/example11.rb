puts 'enter your age:'
age = gets.chomp.to_i # chomp.to_i changes variable to integer, a simple chomp is for string only

case age
when 0..12
  puts "Minor League"
when 13..18
  puts "Developing"
when 19..30
  puts "Prime"
when 30..40
  puts "Decline"
else
  puts "Retire"
end
