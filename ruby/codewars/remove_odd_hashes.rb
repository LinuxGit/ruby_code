def remove_odd_hashes(arr, a, b)
  arr.reject { |e| (e[a] + e[b]).odd? }
end

arr = [ {a: 5, b: 5}, {a: 3, b: 4}, {a: 2, b: 0}, {a: 2, b: 1} ]
p remove_odd_hashes(arr, :a, :b)

#Best Practices
def remove_odd_hashes(arr)
  arr.select { |a| a.values.inject(:+).even? }
end
