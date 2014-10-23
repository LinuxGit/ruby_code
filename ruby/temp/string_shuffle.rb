def string_shuffle(s)
	s.split('').shuffle.join
end

puts string_shuffle("ubuntu")

#add shuffle to String Class
class String
	def shuffle
	  self.split('').shuffle.join
	end
end
