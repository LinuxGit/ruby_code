outcome = {"门票" => 200, "午餐" => 80, "住宿" => 220}
sum = 0
outcome.each do |pair|
  sum += pair[1]
end

puts "total: #{sum}"
