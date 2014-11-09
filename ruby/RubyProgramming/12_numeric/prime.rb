def prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    return false if num % i == 0
  end
  return true
end

p prime?(99)
