hello1 = Proc.new do |name|
  puts "Hello, #{name}."
end

hello1.call("Daniel")

hello2 = proc do |name|
  puts "Wow, #{name}."
end

hello2.call("Daniel")
