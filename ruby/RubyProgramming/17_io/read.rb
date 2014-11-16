File.open("tty.rb") do |file|
  while line = file.gets
    printf("%3d %s", file.lineno, line)
  end
end
