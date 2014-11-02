hash = {a: 1, b: 2, c: 3}
hash.each_with_index do |(key, value), index|
  p [key, value, index]
end
