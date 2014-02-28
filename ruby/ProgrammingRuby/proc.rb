proc1 = -> arg { puts "in proc1 with #{arg}" }
proc2 = -> arg1, arg2 { puts "in proc2 with #{arg1} and #{arg2}" }
proc3 = ->(arg1, arg2) { puts "in proc3 with #{arg1} and #{arg2}" }

proc1.call "elk"
proc2.call "cat", "dog"
proc3.call "horse", "donkey"
