class Pry
  attr_accessor :memory_size, :quiet, :input

  class << self
    def memory_size
      99
    end

    def quiet
      true
    end

    def input
      "Ruby China"
    end
  end

  def refresh(options={})
    defaults = {}
    attributes = [:memory_size, :quiet, :input]
    attributes.each do |attribute|
      defaults[attribute] = Pry.send attribute
    end

    defaults.merge!(options).each do |key, value|
      send("#{key}=", value) if respond_to?("#{key}=")
    end
  end
end

obj = Pry.new
obj.refresh(memory_size: 88, quiet: false)
p obj
