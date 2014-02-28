f = File.open("num.txt")
n = 0
while line = f.gets
  n += 1
	n1, n2 = line.split
  puts "Num #{n} : #{Integer(n1) + Integer(n2)}"
end
f.close

