#1.convert "1 2 3 4" to [1, 2, 3, 4]
"1 2 3 4".split.map(&:to_i)

require 'scanf'
"1 2 3 4".scanf("%d%d%d%d")

#2 array insert
a = [ 1, 2, 3 ]
a[1, 0] = 5
#=> [ 1, 5, 2 ,3]

#3 array FIFO
a = Array.new
a.push "red"
a.push "blue"
a.shift

#4 inject
a = [1, 3, 5, 7]
a.inject(:+)
a.inject(:*)

#5 range interval
('a'..'m') === 'g'
(1..9) === 3.14
