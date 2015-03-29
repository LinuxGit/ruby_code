def a_method(a, b)
  return a + yield(a, b) if block_given?
  'no block'
end

p a_method(1, 2) { |x, y| (x + y) * 3 }
p a_method(1, 2)
