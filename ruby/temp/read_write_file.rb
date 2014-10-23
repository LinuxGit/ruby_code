#Ruby read/write file
File.open('/home/diglike/dic.txt', 'r') do |f1|
  while line = f1.gets
    puts line
  end
end

File.open('b.txt', 'w') do |f2|
  f2.puts "Ruby read file.\nRuby write file."
end
