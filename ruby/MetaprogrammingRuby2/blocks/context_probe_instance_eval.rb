class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
obj.instance_eval do
  p self
  p @v
end

v = 9
obj.instance_eval do
  @v = v
  p @v
end
