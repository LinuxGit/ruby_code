def cap_me arr
  arr.map { |e| e.capitalize }
end

#Best Practices
def cap_me arr
  arr.map &:capitalize
end

cap_me(['jo', 'nelson', 'jurie']) # returns ['Jo', 'Nelson', 'Jurie']
cap_me(['KARLY', 'DANIEL', 'KELSEY']) # returns ['Karly', 'Daniel', 'Kelsey']
