class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
obj.instance_eval do
  self
  @v
end

v = 9
obj.instance_eval { @v = v }
p obj.instance_eval { @v }
