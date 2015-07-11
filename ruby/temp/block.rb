def wrap(&b)
  print "Louis says: "
  3.times(&b)
  print "\n"
end

wrap { print "Yo." }
