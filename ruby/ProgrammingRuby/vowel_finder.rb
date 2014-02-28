class VowelFinder
  include Enumerable

	def initialize(string)
		@string = string
	end

  def each
		@string.scan(/[aeiou]/) do |vowel|
			yield vowel
    end
  end
end

#vf = VowelFinder.new("I love ruby.")
#puts vf.inject(:+)

