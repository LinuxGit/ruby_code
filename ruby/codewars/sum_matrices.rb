def matrixAddition(a, b)
  a.each_with_index do |e, i|
    e.each_with_index do |ee, ii|
      e[ii] += b[i][ii]
    end
  end
  return a
end

p matrixAddition([[1, 2], [5, 5]], [[2, 3], [2, 3]])

def matrixAddition2(a, b)
  a.zip(b).map do |e|
    e.transpose.map { |x| x.reduce(:+) }
  end
end


p matrixAddition([[1, 2], [5, 5]], [[2, 3], [2, 3]])
