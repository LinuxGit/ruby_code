# $ ruby BinarySearch.rb tinyW.txt tinyT.txt
# $ ruby BinarySearch.rb largeW.txt largeT.txt | wc -l

class BinarySearch
  def self.index_of(ary, key)
    lo = 0
    hi = ary.size - 1
    while lo <= hi
      mid = lo + (hi - lo) / 2
      if key < ary[mid]
        hi = mid - 1
      elsif ary[mid] < key
        lo = mid + 1
      else
        return mid
      end
    end
    return -1
  end

end

whitelist = []

File.foreach(ARGV[0]) do |line|
  # String#to_i. It handles newlines just fine, so strip or chomp is unnecessary.
  whitelist << line.to_i
  
end

whitelist.sort!

File.foreach(ARGV[1]).each do |line|
  key = line.to_i
  puts key if BinarySearch.index_of(whitelist, key) == -1
end
