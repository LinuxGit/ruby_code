module MyModule
  def my_method
    "ruby china"
  end
end

class MyClass
  class << self
    include MyModule
  end
end

p MyClass.my_method
