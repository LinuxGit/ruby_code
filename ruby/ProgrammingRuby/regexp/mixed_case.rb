def mixed_case(name)
  name.downcase.gsub(/\b\w/, &:upcase)
end

puts mixed_case("daniel liu")
