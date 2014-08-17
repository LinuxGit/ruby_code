module Printable
  def print
    puts 'printable.'
  end

  def prepare_cover
    puts "prepare cover."
  end
end

module Document
  def print_to_screen
    prepare_cover
    print_for_screen
    print
  end

  def print_for_screen
    puts "print for screen."
  end

  def print
    puts 'document.'
  end
end

class Book
  include Printable
  include Document
end

p Book.ancestors

b = Book.new
b.print_to_screen
