def my_method(a, *b, **c)
  c
end

p my_method(1, 2, 3, a: 1, b: 2)

