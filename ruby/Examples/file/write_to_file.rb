File.open('b.txt', 'w') do |f|
  f.puts "curl command example:"
  f.write "curl -I music.baidu.com\n"
  f << "python\n"
  f << "%-10s, %s\n" % ["Ruby", "Python"]
end
