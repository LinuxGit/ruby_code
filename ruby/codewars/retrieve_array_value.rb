def solution(items, index, default_value)
  if index >=0 && index <= items.size - 1
    items[index]
  elsif index < 0 && index.abs <= items.size
    items[index]
  else
    default_value
  end
end

#Best Practices
def solution(items, index, default_value)
  items.fetch(index, default_value)
end
