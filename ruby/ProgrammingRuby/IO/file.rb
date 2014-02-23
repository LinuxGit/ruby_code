File.open("/etc/passwd") do |file|
  while line = file.gets
    puts line
  end
end
