print "(t)ime or (p)lus, please input t or p :"
operator = gets
print "number :"
num = Integer(gets)

if operator =~ /^t/
  puts (1..10).map { |n| n * num }.join(',' )
else
  puts (1..10).map { |n| n + num }.join(',' )
end


