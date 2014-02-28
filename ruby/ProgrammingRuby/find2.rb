a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
def search(a)
  a.each do |i|
		yield(i) ? puts(i) : nil
  end
end

search(a1)  { |i| i*i >  50 }

