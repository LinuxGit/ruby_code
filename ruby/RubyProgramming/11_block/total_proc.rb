def total(from, to, &block)
  result = 0
  from.upto(to).each do |num|
    if block
      result += block.call(num)
    else
      result += num
    end
  end

  result
end

p total(1, 10)
p total(1, 10) { |num| num ** 2 }
