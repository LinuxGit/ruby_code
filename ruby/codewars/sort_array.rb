def sortme( courses )
  courses.sort do |x, y|
    c = x[-4..-1] <=> y[-4..-1]
    if c == 0
      y[0..-6].length <=> x[0..-6].length
    else
      x[-4..-1] <=> y[-4..-1]
    end
  end
end

p sortme(["web-1305", "site-1305", "web-1304", "site-1304"])

#Best Practices
def sortme( courses )
  courses.sort_by{ |a| a.split('-').reverse }
end
