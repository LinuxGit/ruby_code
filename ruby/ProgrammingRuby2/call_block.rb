def call_block
  puts "Start of method."
  yield
  yield
  puts "End of method."
end

call_block { puts "I'm block." }

def who_say_what
  yield('Louis', 'Hello')
  yield('Dave', 'Goodbye')
end

who_say_what { |person, phrase| puts "#{person} say #{phrase}." }
