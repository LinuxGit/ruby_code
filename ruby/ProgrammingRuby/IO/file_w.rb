File.open("output.txt", "w") do |file|
  file.puts "Hello ruby."
  file.puts "1 + 1 = #{ 1 + 1 }"
end
