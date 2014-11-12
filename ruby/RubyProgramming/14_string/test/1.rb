str = "Ruby is an object oriented programming language"
ary = str.split
p ary.sort

p ary.sort_by { |i| i.downcase }

p ary.map(&:capitalize).join(' ')
