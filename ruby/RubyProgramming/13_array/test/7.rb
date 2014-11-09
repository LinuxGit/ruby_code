def sum_array(a1, a2)
  result = Array.new
  a1.zip(a2) { |a, b| result << a + b }
  result
end

ary1 = [1, 2, 3]
ary2 = [4, 6, 8]
p sum_array(ary1, ary2)
