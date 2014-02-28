class Linux
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
  	"#{@name}"
  end

  def <=>(other)
		self.name.size <=> other.name.size
  end
end

l1 = Linux.new("RedHatt")
l2 = Linux.new("Ubuntu")
l3 = Linux.new("CentOS")

#puts "#{l1.name}'s name < #{l2.name}'s name" if l1 < l2 
puts "#{l1.name}'s name size > #{l2.name}'s name size" if l1 > l2 

puts "Sorted list:"
puts [l1, l2, l3].sort
