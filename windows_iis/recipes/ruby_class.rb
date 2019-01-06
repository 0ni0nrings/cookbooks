class House
  attr_accessor :windows, :door, :roof
end

house1 = House.new()
house1.windows = 'dark'
house1.door = 'swinging'
house1.roof = 'slant'

puts "This house has #{house1.windows} windows and has a #{house1.door} door and the roof has a #{house1.roof}"

class Home
  def initialize(big, beautiful, owner)
    @big = big
    @beautiful = beautiful
    @owner = owner
  end

  def info
    "this #{@big} house is #{@beautiful} house and is owned by #{@owner}"
  end
end

home1 = Home.new('massive', 'victorian', 'victoria')
puts home1.info
