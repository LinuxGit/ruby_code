str = "blue 蓝色 white 白色\nred 红色"
def str2hash(str)
  words = str.split(/\s+/)
  hash = Hash.new
  while key = words.shift
    value = words.shift
    hash[key] = value
  end
  hash
end

p str2hash(str)
