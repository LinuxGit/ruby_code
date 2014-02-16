class Bowdlerize
  def initialize(string)
    @value = string.gsub(/[aeiou]/, '*')
  end

  def to_s
    @value
  end

  def +(other)
    Bowdlerize.new(self.to_s + other.to_s)
  end

end

a = Bowdlerize.new("ruby")
puts a += " wow"
