def happy_new_year
  puts "Time flies."
  yield
  yield
  puts "Over."
end

def who_say_what
  yield("Daniel", "Merry Christmas.")
  yield("Angelo", "Happy New Year.")
end

happy_new_year { puts ":-)" }
who_say_what { |person, phrase| puts "#{person} said #{phrase}" }


