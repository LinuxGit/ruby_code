class Sequence

  def initialize(from, to, by)
    @from, @to, @by = from, to, by
  end

  def each
    x = @from
    while x <= @to
      yield x
      x += @by
    end
  end

  def length
    return 0 if @from > @to
    Integer((@to - @from)/@by) + 1
  end

  alias size length

  def [](index)
    return nil if index < 0
    v = @from + index * @by
    v <= @to ? v : nil
  end

  def *(factor)
    Sequence.new(@from*factor, @to*factor, @by*factor)
  end

  def +(offset)
    Sequence.new(@from+offset, @to+offset, @by+offset)
  end

end

s = Sequence.new(1, 10, 2)
s.each { |x| print x }
print "\n"
puts s.length
puts s.size
puts s[3]
s2 = (s+1)*2
s2.each { |x| print x }
