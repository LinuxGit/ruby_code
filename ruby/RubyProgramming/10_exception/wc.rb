l_total, w_total, c_total = 0, 0, 0
ARGV.each do |file|
  begin
    input = File.open(file)
    l, w, c = 0, 0, 0
    input.each do |line|
      l += 1
      c += line.size
      line.sub!(/^\s+/, "")
      w += line.split(/\s+/).size
    end
    input.close
    printf("%8d %8d %8d %s\n", l, w, c, file)
    l_total += l
    w_total += w
    c_total += c
  rescue => ex
    print ex.message, "\n"
  end
end

printf("%8d %8d %8d %s\n", l_total, w_total, c_total, "total")
