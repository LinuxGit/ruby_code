module MyModule
  def my_method
    99
  end
end

unbound = MyModule.instance_method(:my_method)
p unbound.class

String.class_eval do
  define_method :another_method, unbound
end

p "abc".another_method
