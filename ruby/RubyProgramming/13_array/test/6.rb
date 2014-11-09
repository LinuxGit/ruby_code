ary = (1..100).to_a
result = []
10.times do |i|
  result << ary[i * 10, 10]
end
p result
