str = "abracatabra"

nstr = str.sub(/.a/) do |matched|
  "<#{matched.upcase}>"
end
p nstr

nstr = str.gsub(/.a/) do |matched|
  "<#{matched.upcase}>"
end
p nstr
