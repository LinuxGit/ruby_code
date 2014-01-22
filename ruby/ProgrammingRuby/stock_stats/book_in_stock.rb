class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

=begin
  def to_s
    "ISBN: #{@isbn}, Price: #{@price}"
  end

  def price_in_cents
    Integer(price*100 + 0.5)
  end
=end
end

#a = BookInStock.new('a_isbn', '49.9')
#p a
#puts a.price_in_cents

#b = BookInStock.new('b_isbn', '30')
#puts b
#b.price = b.price * 0.75
#puts "Book: b, ISBN: #{b.isbn}, Price: #{b.price}"
