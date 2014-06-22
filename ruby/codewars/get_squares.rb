def get_squares(array)
  array.select do |e|
    f = Math.sqrt(e).to_s
    f =~ /\d{1,}\.0$/
  end.sort.uniq
end

p get_squares([4,1,16,1,10,35,22])
p get_squares(1..100)

#Best Practices
def get_squares(array)
  array.select { |x| x % (Math.sqrt x) == 0 }.sort.uniq
end

p get_squares(1..100)
