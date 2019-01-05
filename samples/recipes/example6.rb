=begin
class awesome_level
  attr_accessor :awesome_level
  def initialize(awesome_level)
    @awesome_level = awesome_level
  end
end
=end

class Person
  def initialize(age, name)
    @age = age
    @name = name
  end
end

Jordan = Person.new(31, 'Jordan')
puts Jordan.inspect
