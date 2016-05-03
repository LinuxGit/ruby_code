def remove_smallest(numbers)
  return [] if numbers.empty?
  numbers.delete_at(numbers.index(numbers.min))
  return numbers
end
