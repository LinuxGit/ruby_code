f = File.open("/etc/passwd")
f.each.with_index do |line, index|
  puts ":-) Line #{index}: #{line}"
end
f.close


