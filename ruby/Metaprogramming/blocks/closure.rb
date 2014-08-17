def my_method
  x = "Google"
  yield("cruel")
end

x = "ruby"
p my_method { |y| "#{x}, #{y} world" }
