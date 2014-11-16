File.open("tty.rb") do |file|
  file.each_line do |line|
    printf("%3d %s", file.lineno, line)
  end
end
