def my_method(a, b)
  a + yield(a, b)
end

p my_method(1, 2) { |x, y| (x + y) * 3 }
