File.open("/etc/passwd") do |f|
  f.each do |line|
    puts line if line =~ /diglike/ .. line =~ /mysql/
  end
end
