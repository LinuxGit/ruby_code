File.foreach("a.txt") do |line|
  next if line =~ /^#/
  puts line unless line =~ /^$/
end
