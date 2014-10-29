class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

ary = RingArray["a", "b", "c", "d", "e", "f", "g"]
p ary[2]
p ary[9]
p ary[-1]
