class T
  def ==(other)
    other == "value"
  end

  def !=(other)
    other != "value"
  end
end

t = T.new
puts (t == "ruby")
puts (t == "value")

puts (t != "ruby")
