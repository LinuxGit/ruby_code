def linux(first, *rest)
  "Fisrt is #{first}, Rest is #{rest.inspect}."
end

puts linux("redhat", "debian", "ubuntu")
