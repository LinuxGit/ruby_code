File.open("a.txt").grep(/sh$/) do |line|
  puts line
end
