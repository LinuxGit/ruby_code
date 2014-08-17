def explore_array(method)
  code = "['a', 'b', 'c'].#{method}"
  puts "Evaluating #{code}."
  eval code
end

loop { explore_array(gets()) }
