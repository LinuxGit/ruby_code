9.downto(1).each do |i|
  1.upto(i).each do |j|
    printf("%d*%d=%d\t", i, j, i *j)
  end
  printf("\n")
end
