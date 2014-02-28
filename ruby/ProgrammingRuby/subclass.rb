class Parent
  def say_hello
  	puts "How was your holiday?"
    puts "Hello from #{self}."
  end
end

class Child < Parent
end

p = Parent.new
p.say_hello

c = Child.new
c.say_hello

puts Child.superclass
puts Parent.superclass

class Person
  def initialize(name)
		@name = name
  end

  def to_s
    "My name is #{@name}."
  end
  
  def inspect
    "I'm #{@name}."
  end
end

student = Person.new("Daniel") 
p student
puts student
