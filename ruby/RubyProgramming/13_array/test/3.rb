ary = (1..100).to_a

a3 = ary.select { |i| i % 3 == 0 }
p a3

ary.reject! { |i| i % 3 != 0 }
p ary
