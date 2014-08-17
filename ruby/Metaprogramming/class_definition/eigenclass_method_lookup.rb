class Object
  def eigenclass
    class << self; self; end
  end
end

class C
  def a_method
    'C#a_method'
  end

  class << self
    def a_class_method
      'C.a_class_method()'
    end
  end
end

class D < C
end

obj = D.new

class << obj
  def a_singleton_method
    'obj#a_singleton_method'
  end
end

p obj.eigenclass
p obj.eigenclass.superclass
p D.eigenclass
p D.eigenclass.superclass
p C.eigenclass
p C.eigenclass.superclass
p D.a_class_method
