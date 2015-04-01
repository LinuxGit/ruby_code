require 'highline'

hl = HighLine.new
name = hl.ask("Name?", lambda { |s| s.capitalize })
puts "Hello, #{name}."
friends = hl.ask("Friends?", lambda { |s| s.split(',') })
puts "You're friends with #{friends.inspect}."
