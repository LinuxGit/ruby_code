class Linux
  def name=(value)
    @name = value
  end

  def name
    @name
  end
end

a = Linux.new
a.name = "Ubuntu"
p a.name
