def call_each(ary, &block)
  ary.each(&block)
end

call_each [1, 2, 3] do |item|
  puts item
end
