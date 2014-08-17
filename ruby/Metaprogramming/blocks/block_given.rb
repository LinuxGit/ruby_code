def my_method
  return yield if block_given?
  "no block"
end

p my_method
p my_method { "Here's a block." }
