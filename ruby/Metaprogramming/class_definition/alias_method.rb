class MyClass
  def my_method
    'hello'
  end
  alias_method :m, :my_method
end

obj = MyClass.new
p obj.m
