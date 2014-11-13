h1 = Hash.new(1)
h1["a"] = 9
p h1["a"]
p h1["b"]

h2 = Hash.new do |hash, key|
  hash[key] = key.upcase
end
h2["a"] = 9
p h2["a"]
p h2["b"]

h3 = Hash.new do |hash, key|
  hash[key] = key.upcase
end
p h3.fetch("a", "(undef)")
