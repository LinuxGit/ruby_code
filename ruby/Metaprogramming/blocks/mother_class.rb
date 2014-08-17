class Mother
  def self.inherited(subclass)
    p subclass
  end
end


class Foo < Mother

end

class Bar < Mother

end
