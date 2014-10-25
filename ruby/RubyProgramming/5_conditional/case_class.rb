array = [1, "foo", nil]

array.each do |item|
  case item
  when Numeric
    puts "#{item} is a Numeric."
  when String
    puts "#{item} is a String."
  else
    puts "#{item.inspect} is something."
  end
end
