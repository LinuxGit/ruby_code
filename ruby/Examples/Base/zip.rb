a = [1, 2, 3]
b = [4, 5, 6]
a.zip(b) do |x, y|
  printf "[%s, %s]\n", x, y
end
