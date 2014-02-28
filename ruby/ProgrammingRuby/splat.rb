def five(a, b, c, d, e)
  puts "I was passed #{a} #{b} #{c} #{d} #{e}"
end

five(*(1..5))
five(9, *[1, 2, 3], 6)
