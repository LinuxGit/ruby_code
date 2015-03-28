class MyClass
  define_method :my_method do |arg|
    arg * 2
  end
end

obj = MyClass.new
p obj.my_method(5)
