class HelloWorld
  Version = "1.0"
  @@count = 0

  attr_accessor :name

  def initialize(name="Ruby")
    @name = name
  end

  def hello
    @@count += 1
    puts "Hello, world. I'm #{@name}."
  end

  def self.hello(name)
    puts "#{name} said hello."
  end

  def self.count
    @@count
  end
end

class << HelloWorld
  def welcome
    puts "Welcome to ruby world."
  end
end


ruby = HelloWorld.new
bob  = HelloWorld.new("Bob")

ruby.hello
bob.hello
p bob.name
HelloWorld.hello("Daniel")
HelloWorld.welcome
p HelloWorld::Version
p HelloWorld.count
