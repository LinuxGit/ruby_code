def header(name, level: 1, upper: false)
  name = name.upcase if upper
  "<h#{level}>#{name}</h#{level}>"
end

p header("Introduction")
p header("DigLike", level: 2, upper: true)
