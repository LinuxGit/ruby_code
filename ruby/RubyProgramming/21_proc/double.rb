double = Proc.new do |*args|
  args.map { |i| i * 2 }
end

p double.call(2, 3, 4)
p double[2, 3, 4]
