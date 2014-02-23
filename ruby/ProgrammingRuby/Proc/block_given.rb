def try
  if block_given?
    yield
  else
    "No block."
  end
end

puts try
puts try { "Hello, ruby." }

