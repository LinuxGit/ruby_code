var  = "Linux"
name = var || "Ruby"
p name

ary  = %w[a b c]
name = ary && ary[2]
p name

var = nil
var ||= 1
p var

a, b = 1, 2
v = a > b ? a : b
p v
