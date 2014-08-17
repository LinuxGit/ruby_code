class String
  alias :real_length :length
  def length
    real_length > 5 ? 'long' : 'short'
  end
end

p "ruby on rails".length
p "ruby on rails".real_length
