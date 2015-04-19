c = Class.new(Array) do
  def my_method
    "Hello World."
  end
end

MyClass = c
p c.name
obj = MyClass.new(["a", "b"])
p obj.my_method
