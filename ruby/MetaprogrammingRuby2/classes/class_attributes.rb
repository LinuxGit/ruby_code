class MyClass
  class << self
    attr_accessor :c
  end
end

MyClass.c = "ruby"
p MyClass.c
