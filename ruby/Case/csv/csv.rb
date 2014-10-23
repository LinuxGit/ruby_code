require 'csv'
CSV.foreach("csvfile") do |row|
  qty = row[0].to_i
  price = row[2].to_f
  #print "#{row[1]} : #{qty*price}\n"
  printf "%20s: %5.2f, %s\n", row[1], qty*price, row[3] || "..."
end

