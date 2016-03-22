nil.to_s
#=> ""
nil.to_i
#=> 0
nil.to_f
#=> 0.0
['ruby', 'china', nil].compact
#=> ["ruby", "china"]

def fix_tile(title)
  title.to_s.capitalize
end
