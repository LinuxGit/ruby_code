def show_match(string, pattern)
  m = pattern.match(string)
  if m
    "#{m.pre_match}->#{m[0]}<-#{m.post_match}"
  else
    "no match"
  end
end

puts show_match("I love ruby. :-)", /ruby/)
puts show_match("yes | no", /\|/)
puts show_match("yes(no)", /\(no\)/)
puts show_match("I love ruby\n :-)", /ruby$/)
puts show_match("This is ruby.", /\bis/)
puts show_match("This is ruby.", /\Bis/)
puts show_match("Price $9.9", /[$]/)
