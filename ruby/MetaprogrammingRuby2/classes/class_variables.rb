class C
  @@v = 9
end

class D < C
  def my_method
    @@v
  end
end

p D.new.my_method
