str = "Wow, impossible."
def str.title?
  self.upcase == self
end

puts str.title?
p str.methods.grep(:title?)
p str.singleton_methods
