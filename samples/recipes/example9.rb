class Book
  attr_accessor :title, :author, :pages
end

book1 = Book.new()
book1.title = 'lord of the rings'
book1.author = 'tolkins'
book1.pages = 400

puts book1.title
puts book1.author
puts book1.pages

puts "#{book1.title} is written by #{book1.author} and has #{book1.pages} pages"

class Novel
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

  def info
    "#{@title} is written by #{@author} and has #{@pages} pages"
  end
end

novel1 = Novel.new('harry potter', 'jk rowlings', 300)
puts novel1.info
