ary = [1, 2, 3, 2, 4, nil, 5]
ary.compact!
p ary

ary.delete(5)
p ary

ary.delete_at(0)
p ary

ary.reject! { |i| i == 4 }
p ary

ary.delete_if { |i| i == 3 }
p ary

ary.uniq!
p ary

ary = [1, 2, 3, 2, 4, nil, 5]
p ary.slice!(1, 2)
p ary
