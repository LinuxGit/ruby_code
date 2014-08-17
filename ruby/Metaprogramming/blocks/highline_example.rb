require 'highline'

h1 = HighLine.new
languages = h1.ask("Languages: ", lambda { |s| s.split(',') } )
puts "You're learning: #{languages.inspect}."

name = h1.ask("Names: ", lambda { |s| s.capitalize } )
puts "Hello, #{name}."
