require 'delegate'

str = "Hello Ruby"
d = SimpleDelegator.new(str)
puts d.length
puts d.upcase
