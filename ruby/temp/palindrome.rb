class Word < String
  def palindrome?
    self == self.reverse
  end
end

s = Word.new('level')
s.palindrome?
