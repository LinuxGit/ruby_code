def two_oldest_ages(ary)
  ary.sort.drop(ary.size - 2)
end

age = [1, 3, 10, 0]
p two_oldest_ages(age) #> [3, 10]

#Best practice
def two_oldest_ages(ages)
  ages.sort.last(2)
end
