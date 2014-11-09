ary = (1..100).to_a

a2 = ary.map { |i| i * 100 }
p a2

ary.map! { |i| i * 100 }
p ary
