class MyClass
  def my_method
    'hello'
  end
  alias :m :my_method
end

obj = MyClass.new
p obj.m

