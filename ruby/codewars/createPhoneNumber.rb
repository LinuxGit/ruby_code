def createPhoneNumber(numbers)
  "(#{numbers.first(3).join}) #{numbers[3, 3].join}-#{numbers.last(4).join}"
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

#Best Practices
def createPhoneNumber(numbers)
  '(%d%d%d) %d%d%d-%d%d%d%d' % numbers
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

def createPhoneNumber(numbers)
  numbers.join.gsub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3'
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

#reference
#http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-sprintf
#http://ruby-doc.org/core-2.1.1/String.html#M000785
