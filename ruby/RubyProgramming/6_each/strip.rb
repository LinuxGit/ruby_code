filename = ARGV[0]
file = File.open(filename)
file.each_line do |line|
  next if /^\s*$/ =~ line
  next if /^#/ =~ line
  print line
end
file.close
