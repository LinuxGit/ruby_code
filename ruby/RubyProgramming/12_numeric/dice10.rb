def dice
  rand(6) + 1
end

def dice10
  result = 0
  1.upto(10) do
    ret = dice
    puts ret
    result += ret
  end
  puts result
end

dice10
