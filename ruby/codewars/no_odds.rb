def no_odds( values )
  values.select &:even?
end

p no_odds([1, 2, 3, 4, 5])
