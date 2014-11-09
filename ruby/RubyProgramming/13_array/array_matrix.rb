ary = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p ary[1][0]
ary[1][1] = 0
p ary

ary2 = Array.new(3) do
  [0, 0, 0]
end
p ary2
ary2[1][0] = 9
p ary2
