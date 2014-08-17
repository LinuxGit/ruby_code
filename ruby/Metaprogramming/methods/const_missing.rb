def Object.const_missing(name)
  name.to_s.downcase
end

p MY_CONSTANT
