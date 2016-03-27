Customer = Struct.new(:name, :age) do
  def greeting
    "Hello, #{name}!"
  end
end

customer = Customer.new('Louis', 27)
puts customer.greeting
