def my_method(&my_proc)
  my_proc
end

p = my_method { |name| "Hello, #{name}!" }
puts p.class
