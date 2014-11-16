filename = ARGV[0]
count = Hash.new(0)

File.open(filename) do |file|
  file.each_line do |line|
    count[:line] += 1
    count[:char] += line.size
    count[:word] += line.split.size
  end
  puts "Lines:      #{count[:line]}"
  puts "Words:      #{count[:word]}"
  puts "Characters: #{count[:char]}"
end
