langs = %w[Perl Python Ruby Java]
puts "break example:"
i = 0
langs.each do |lang|
  i += 1
  if i == 3
    break
  end
  p [i, lang]
end

puts
puts "next example:"
i = 0
langs.each do |lang|
  i += 1
  if i == 3
    next
  end
  p [i, lang]
end

puts
puts "redo example:"
i = 0
langs.each do |lang|
  i += 1
  if i == 3
    redo
  end
  p [i, lang]
end
