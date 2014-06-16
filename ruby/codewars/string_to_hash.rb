def str_to_hash(str)
  h = {}
  str.split(/, /).each do |x|
    arr = x.split('=')
    h[arr[0].to_sym] = arr[1].to_i
  end
  return h
end

p str_to_hash("a=1, b=2, c=3, d=4")

#Best Practice
def str_to_hash(str)
  Hash[str.scan(/(\w)=(\d)/).map { |k, v| [k.to_sym, v.to_i] }]
end
