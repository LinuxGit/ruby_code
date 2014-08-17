class MyOpenStruct
  def initialize
    @attributes = {}
  end

  def method_missing(name, *args)
    attribute = name.to_s
    if attribute =~ /=$/
      return @attributes[attribute.chop] = args[0]
    else
      return @attributes[attribute]
    end
  end
end

icecream = MyOpenStruct.new
icecream.flavor = "vinilla"
p icecream.flavor
