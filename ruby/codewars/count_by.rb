def count_by(x, n)
  (1..n).map { |i| i*x }
end

p count_by(1, 10)
p count_by(2, 5)
