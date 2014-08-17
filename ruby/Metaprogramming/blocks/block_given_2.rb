def my_method
  block_given? ? yield : "Here's a block."
end

p my_method
p my_method { "wow." }
