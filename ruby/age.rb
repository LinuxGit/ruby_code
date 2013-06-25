birthdate = 1990

generation = case  birthdate
when  1980..1989 then "80's"
when  1990..1999 then "90's"
when  2000..2013 then "00's"
else  "The old."
end

age = 2013 - birthdate + 1
puts "Yo are #{generation} and #{age} years old."
