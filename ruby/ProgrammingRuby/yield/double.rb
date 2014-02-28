def double(p1)
  yield(p1*2)
end

double(3) { |var| puts "I got #{var}." }
