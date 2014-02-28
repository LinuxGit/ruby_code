def surround(word, pad_width=word.length/2)
  puts "(" * pad_width + word + ")" * pad_width
end

surround("linux")
surround("ruby", 3)
