def two_times
  yield
  yield
end

two_times  do
  puts "ruby ruby"
  puts ":-)"
end
