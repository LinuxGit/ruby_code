require 'csv'
total_cost = 0
CSV.foreach("csvfile2", headers: true, converters: :numeric) do |row|
  total_cost += row["Count"] * row["Price"]
end
puts "The total cost is #{total_cost}"

