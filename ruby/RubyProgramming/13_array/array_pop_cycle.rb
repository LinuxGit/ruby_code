ary = (1..5).to_a
sum = 0

while item = ary.pop
  p item
  sum += item
end

p sum
p ary
