class BookInStore
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

  def price_in_cents
    Integer(@price * 100 + 0.5)
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

b1 = BookInStore.new("isbn1", 39.80)

puts "ISBN = #{b1.isbn}"
puts "Price = #{b1.price}"
puts "Price in cents = #{b1.price_in_cents}"

b1.price_in_cents = 1234
puts "Price = #{b1.price}"
puts "Price in cents = #{b1.price_in_cents}"
