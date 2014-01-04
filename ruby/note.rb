#1.convert "1 2 3 4" to [1, 2, 3, 4]
"1 2 3 4".split.map(&:to_i)

require 'scanf'
"1 2 3 4".scanf("%d%d%d%d")

