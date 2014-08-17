def math(a, b)
  yield(a, b)
end

def tech_math(a, b, &operation)
  puts "Let's do the math:"
  puts math(a, b, &operation)
end

tech_math(2, 3) { |x, y| x * y }
