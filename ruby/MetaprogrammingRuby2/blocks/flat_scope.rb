my_var = "Hello world"

MyClass = Class.new do
    "#{my_var} in the class definition."
  define_method :my_method do
    "#{my_var} in the method definition."
  end
end

p MyClass.new.my_method
