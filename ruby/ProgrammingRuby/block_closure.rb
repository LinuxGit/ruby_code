def n_times(thing)
  lambda { |n| thing * 3 }
end

p1 = n_times(23)
p2 = n_times("ruby ")

p p1.call(3)
p p2.call(3)
