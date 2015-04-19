module MyModule
  def my_method
    "ruby china"
  end
end

obj = Object.new
obj.extend MyModule
p obj.my_method
