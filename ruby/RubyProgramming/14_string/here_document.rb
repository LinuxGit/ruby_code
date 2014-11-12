str = <<-EOB
Hello
Hello
Ruby
EOB

puts str

3.times do |i|
  print(<<-EOB)
    i: #{i}
    Ruby
    Git
  EOB
end

