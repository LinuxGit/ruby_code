triangular_numbers = Enumerator.new do |y|
  number, count = 0, 1
  loop do
    number += count
    count += 1
    y << number
  end
end.lazy

#p triangular_numbers.first(10) 
p triangular_numbers.select { |i| i % 5 == 0 }.first(5)
