class Person
end

module ThingsWithNames
  def name
  end
end

class Customer < Person
  def self.where_am_i?
  end

  include ThingsWithNames
end

puts Customer.singleton_class.superclass

puts Customer.singleton_class.instance_methods(false)

customer = Customer.new
p Customer.ancestors
p Customer.included_modules
