my_var = "Ruby"

MyClass = Class.new do
  puts "#{my_var} in the class definition."

  define_method :my_method do
    puts "#{my_var} in the method definition."
  end
end

MyClass.new.my_method
