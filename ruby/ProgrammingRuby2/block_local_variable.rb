square = "some shape"
sum = 0

(1..4).each do |value; square|
  square = value * value
  sum += square
end

puts sum
puts square
