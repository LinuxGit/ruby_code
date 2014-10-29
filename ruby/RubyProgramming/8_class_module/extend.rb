module Edition
  def edition(n)
    "#{self} 第#{n}版"
  end
end

str = "Programming Ruby"

str.extend(Edition)
p str.edition(4)
