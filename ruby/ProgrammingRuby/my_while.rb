def my_while(cond, &body)
  while cond.call
    body.call
  end
end

a = 0

my_while -> { a < 15 } do
  puts a
  a += 3
end

