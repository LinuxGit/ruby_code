c = Class.new(Array) do
  def my_method
    "Hello."
  end
end

MyClass = c

p MyClass.new.my_method
