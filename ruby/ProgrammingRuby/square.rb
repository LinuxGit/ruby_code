class Square
  def initialize(num)
    @num = num
  end

  def meth_three
		120.times do |i|
			square = i*i
    	return i, square if square > @num
    end 
  end
end

s = Square.new(10000)
p s.meth_three

