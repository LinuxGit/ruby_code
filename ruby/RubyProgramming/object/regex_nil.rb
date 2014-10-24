a = %w[aa bb ac dd]

a.each do |n|
  if /a/ =~ n
    puts n
  end
end
