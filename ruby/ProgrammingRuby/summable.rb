module Summable
	def sum
		inject(:+)
  end
end

class Array
	include Summable
end

class Range
	include Summable
end

require_relative 'vowel_finder'
class VowelFinder
	include Summable
end

puts [1, 2, 3, 4, 5].sum
puts (1..5).sum
vl = VowelFinder.new("I love ruby.")
puts vl.sum
