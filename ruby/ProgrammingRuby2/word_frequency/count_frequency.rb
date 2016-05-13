def count_frequency(word_list)
  counts = Hash.new(0)
  word_list.each do |w|
    counts[w] += 1
  end
  counts
end
