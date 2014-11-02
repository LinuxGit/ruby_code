hello = Proc.new do |name|
  puts "Hello, #{name}."
end

hello.call("Ruby")
