module MyModule
  def my_method
    "ruby china"
  end
end

obj = Object.new

class << obj
  include MyModule
end

p obj.my_method
