print "(t)ime or (p)lus : "
operator = gets
print "number : "
number = Integer(gets)

if operator =~ /^t/
  calc = lambda { |n| n * number }
else
  calc = lambda { |n| n + number }
end

puts (1..10).map(&calc).join(", ")
