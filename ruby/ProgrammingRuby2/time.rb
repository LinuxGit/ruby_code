today = Time.now
puts "Hello, it's now #{today}."

if today.saturday?
  puts "Get up late."
elsif today.sunday?
  puts "Relax."
else
  puts "Go to work."
end

puts "#{today.wday}"
