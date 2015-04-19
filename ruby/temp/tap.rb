class User
  attr_accessor :a, :b, :c
end

def my_method
  User.new.tap do |o|
    o.a = 1
    o.b = 2
    o.c = 3
  end
end

p my_method
