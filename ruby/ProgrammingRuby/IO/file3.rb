File.open("/etc/passwd") do |file|
  file.each_line { |line| puts "Got: #{line.dump}" }
end
