def Integer.all
  Enumerator.new do |y, n: 0|
		loop { y << n += 1 }
  end.lazy
end

#def palindrome?(n)
#  n = n.to_s
#  n == n.reverse
#end

#p Integer.all
#         .select { |i| (i % 3).zero? }
#	 			 .select { |i| palindrome? i }
#         .first(10)

multiple_of_three = -> n { (n % 3).zero? }
palindrome        = -> n { n = n.to_s; n == n.reverse }

p Integer
		.all
    .select(&multiple_of_three)
    .select(&palindrome)
    .first(10)

