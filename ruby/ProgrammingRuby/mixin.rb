module Debug
  def who_am_i?
  	puts "#{self.class.name} (id: #{self.object_id}) : #{self.name}"
  end
end

class Linux
  include Debug
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Unix
	include Debug
	attr_reader :name
  def initialize(name)
		@name = name
  end
end

l = Linux.new("RedHat")
u = Unix.new("FreeBSD")

l.who_am_i?
u.who_am_i?


