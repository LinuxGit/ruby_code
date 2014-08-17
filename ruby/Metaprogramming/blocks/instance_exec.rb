class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
p obj.instance_exec(9) { |x| @v + x }
