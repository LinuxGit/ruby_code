def search(a)
  a.each do |i|
    if yield(i)
      puts i
      break
    else
      nil
    end
  end
end

a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
search(a1)  { |i| i*i >  50 }

