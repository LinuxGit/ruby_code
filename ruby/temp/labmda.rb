a = -> { 2 + 3 }
p a.call

b = ->(arg) { arg + 3 }
p b.call(6)
