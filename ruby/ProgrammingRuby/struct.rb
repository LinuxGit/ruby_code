Customer = Struct.new(:name, :address) do
  def greeting
    puts "Hello #{name}."
  end
end

daniel = Customer.new("Daniel", "Beijing")

puts daniel.class
puts daniel.class.superclass
puts Struct.superclass
puts daniel.name
daniel.greeting
p daniel

