File.open("/etc/passwd") do |file|
  file.each_char.with_index do |c, i|
    print c, " "
    break if i > 10
  end
end
