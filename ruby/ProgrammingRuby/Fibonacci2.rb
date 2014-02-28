fib = Enumerator.new do |y|
  a = b = 1
  loop do
    #y.yield a
    y << a
  	a, b = b, a + b
  end
end

p fib.first(10)
