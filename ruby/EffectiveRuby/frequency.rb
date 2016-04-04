ary = %w[ruby python ruby php python ruby]

def frequency(array)
  array.reduce(Hash.new(0)) do |hash, element|
    hash[element] += 1
    hash
  end
end

p frequency(ary)
