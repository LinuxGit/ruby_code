class Money
  def initialize(m)
    @m = m
  end

  def to_s
    @m.to_i
  end
end

class Numeric
  def to_money
    Money.new(self * 100)
  end
end

puts 9.to_money
