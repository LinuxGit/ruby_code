def fizzbuzz(n)
  if n >= 1
    arr = [*1..n]
    arr.map! do |e|
      e = 'FizzBuzz' if e % 3 == 0 && e % 5 == 0
      e = 'Fizz' if e % 3 == 0
      e = 'Buzz' if e % 5 == 0
      e
    end
  end
  return arr
end

p fizzbuzz(15)

#Best Practices
def fizzbuzz(n)
  (1..n).map do |x|
    y = ''
    y += 'Fizz' if x % 3 == 0
    y += 'Buzz' if x % 5 == 0
    y == '' ? x : y
  end
end

p fizzbuzz(15)
