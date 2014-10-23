this_year  = 2013
birth_year = gets.to_i

if birth_year > 2013
  puts "Are you kidding?"
  exit
elsif birth_year <= 0
  puts "The year of your birth can't be smaller than 0 or equal 0"
  exit
else
  puts "You were born in #{birth_year}"
end

generation = case  birth_year
             when  1980..1989 then "80's"
             when  1990..1999 then "90's"
             when  2000..2013 then "00's"
             else  "the old."
             end

age = this_year - birth_year + 1
puts "You are #{generation} and #{age} years old."
