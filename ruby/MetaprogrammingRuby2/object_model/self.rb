class MyClass
  def test_self
    @var = 10
    my_method
    self
  end

  def my_method
    @var += 1
  end
end

obj = MyClass.new
obj.test_self
p obj
