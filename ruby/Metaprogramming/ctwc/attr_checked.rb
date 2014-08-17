module CheckedAttributes
  def attr_checked(*args, &block)
    if block
      args.each do |arg|
        attr_accessor :arg
      end
    else
      raise Exception
    end
  end
end

class Person
  class << self
    include CheckedAttributes
  end

  attr_checked :age do |v|
    v > 18
  end
end

me = Person.new
me.age = 24
me.age = 16

