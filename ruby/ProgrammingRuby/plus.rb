class Fixnum
  alias old_plus +

  def +(other)
    old_plus(other).succ
  end
end

a = 2
puts a + 1
puts a += 2
puts a + a + a
