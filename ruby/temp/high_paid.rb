def high_paid(salary)
  threshold = 15000
  salary.select { |e| e > threshold }
end

wages = [20000, 12000, 10000, 25000]
p high_paid(wages)
