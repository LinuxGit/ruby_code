str = "abracatabra"

p str.scan(/.a/)

str.scan(/(.)(a)/) do |matched|
  p matched
end

str.scan(/(.)(a)/) do |a, b|
  p a + "-" + b
end
