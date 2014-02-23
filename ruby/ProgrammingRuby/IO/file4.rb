File.open("/etc/passwd", "r") do |file|
  file.each_line("bin") { |line| puts "Got: #{line.dump}" }
end

