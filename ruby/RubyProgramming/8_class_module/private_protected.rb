class Point
  attr_accessor :x, :y
  protected :x=, :y=

  def initialize(x=0.0, y=0.0)
    @x, @y = x, y
  end

  def swap(other)
    tmp_x, tmp_y = @x, @y
    @x, @y = other.x, other.y
    other.x, other.y = tmp_x, tmp_y
    return self
  end

  def welcome
    info
  end

  private

  def info
    "Hello ruby."
  end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)

p0.swap(p1)

p [p0.x, p0.y]
#p0.x = 2.0
p p0.welcome
